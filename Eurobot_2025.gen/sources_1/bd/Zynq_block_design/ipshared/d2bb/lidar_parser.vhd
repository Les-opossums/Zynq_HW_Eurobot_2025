library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity lidar_parser_ld06 is
  generic (
    CLOCK_FREQ_HZ       : integer := 100_000_000;  --! clock frequency
    BYTE_TIMEOUT_US     : integer := 10000;       --! byte timout in reception
    POINTS_PER_PKT      : integer := 12          --! byte number in LD19 frame
  );
  port (
    clk                 : in  std_logic; --! clock input
    rst                 : in  std_logic; --! reset input

    -- Entrée octets
    byte_in             : in  std_logic_vector(7 downto 0); --! uart rx byte from ld19
    byte_in_valid       : in  std_logic; --! uart rx byte valid signal

    -- Sortie points en AXI-Stream
    m_axis_tdata        : out std_logic_vector(31 downto 0); --! AXI-Stream data output
    m_axis_tvalid       : out std_logic; --! AXI-Stream valid output
    m_axis_tready       : in  std_logic; --! AXI-Stream ready input

    -- Compteurs d'état
    frame_count         : out unsigned(31 downto 0); --! frame count
    error_count         : out unsigned(31 downto 0)  --! error count
  );
end entity;

architecture rtl of lidar_parser_ld06 is

  --------------------------------------------------------------------------
  -- Types et constantes
  --------------------------------------------------------------------------
  type state_t is (
    S_IDLE,
    S_VERLEN,
    S_SPEED_L,
    S_SPEED_H,
    S_START_ANG_L,
    S_START_ANG_H,
    S_POINTS,
    S_END_ANG_L,
    S_END_ANG_H,
    S_TS_L,
    S_TS_H,
    S_CRC,
    S_EMIT
  );

  constant BYTE_TIMEOUT_CYCLES : integer := (CLOCK_FREQ_HZ / 1000000) * BYTE_TIMEOUT_US;

  subtype byte_t is std_logic_vector(7 downto 0);

  --------------------------------------------------------------------------
  -- Signaux internes
  --------------------------------------------------------------------------
  signal state            : state_t := S_IDLE;
  signal timeout_cnt      : integer range 0 to BYTE_TIMEOUT_CYCLES := 0;

  signal verlen_s         : byte_t := (others => '0');
  signal expected_points  : integer := 0; 
  signal speed_s          : unsigned(15 downto 0) := (others => '0');
  signal start_ang_s      : unsigned(15 downto 0) := (others => '0');
  signal end_ang_s        : unsigned(15 downto 0) := (others => '0');

  type point_buf_t is array(0 to (POINTS_PER_PKT*3)-1) of byte_t;
  signal points_buf       : point_buf_t := (others => (others => '0'));
  signal points_received  : integer range 0 to POINTS_PER_PKT*3 := 0;

  signal payload_index    : integer range 0 to POINTS_PER_PKT*3 := 0;
  signal crc_s            : byte_t := (others => '0');

  signal frame_count_s    : unsigned(31 downto 0) := (others => '0');
  signal error_count_s    : unsigned(31 downto 0) := (others => '0');

  -- Sortie point en AXI-Stream
  signal tdata_s          : std_logic_vector(31 downto 0) := (others => '0');
  signal tvalid_s         : std_logic := '0';

  -- Interpolation incrémentale de l’angle
  signal ang_start     : unsigned(15 downto 0) := (others => '0');
  signal ang_end       : unsigned(15 downto 0) := (others => '0');
  signal ang_delta     : unsigned(15 downto 0) := (others => '0'); -- end - start (mod 16 bits)
  signal ang_den       : unsigned(8 downto 0)  := (others => '0'); -- expected_points-1 (max 255 -> 9 bits)
  signal ang_acc       : unsigned(8 downto 0)  := (others => '0'); -- accumulateur d’erreur [0..den-1]
  signal ang_out       : unsigned(15 downto 0) := (others => '0'); -- angle courant
  signal pts_left      : unsigned(8 downto 0)  := (others => '0'); -- points restants à émettre

  -- CRC-8 polynomial: x^8 + x^2 + x + 1 (0x07)
  function crc8_update(
      current : std_logic_vector(7 downto 0);
      b       : std_logic_vector(7 downto 0)
  ) return std_logic_vector is
      variable crc    : unsigned(7 downto 0);
      variable inputb : unsigned(7 downto 0);
      constant poly   : unsigned(7 downto 0) := x"4D"; -- polynôme
  begin
      -- Initial XOR avec le nouveau byte
      crc    := unsigned(current) xor unsigned(b);
      
      -- Traitement bit par bit
      for i in 0 to 7 loop
          if crc(7) = '1' then
              crc := (crc(6 downto 0) & '0') xor poly;
          else
              crc := (crc(6 downto 0) & '0');
          end if;
      end loop;

      return std_logic_vector(crc);
  end function;

begin

  --------------------------------------------------------------------------
  -- Process principal de parsing
  --------------------------------------------------------------------------
  UART_LD19_PARSING : process(clk)
    variable angle_i      : integer range 0 to 255; -- angle index for interpolation
    variable step_i       : integer range 0 to 255; -- step index for interpolation
  begin
    if rising_edge(clk) then
      if rst = '0' then
        state           <= S_IDLE;
        timeout_cnt     <= 0;
        frame_count_s   <= (others => '0');
        error_count_s   <= (others => '0');
        points_received <= 0;
        payload_index   <= 0;
        crc_s           <= (others => '0');
        tvalid_s        <= '0';
      else
        -- Timeout réception
        if state = S_IDLE then
          timeout_cnt <= 0;
        else
          -- if timeout_cnt < BYTE_TIMEOUT_CYCLES then
          --   timeout_cnt <= timeout_cnt + 1;
          -- else
          --   state         <= S_IDLE;
          --   error_count_s <= error_count_s + 1;
          -- end if;
        end if;

        -- Avancement parsing
        if byte_in_valid = '1' then
          timeout_cnt <= 0;

          case state is

            when S_IDLE =>
              if byte_in = x"54" then
                state  <= S_VERLEN;
                crc_s           <= crc8_update(crc_s, byte_in);
              end if;

            when S_VERLEN =>
              verlen_s        <= byte_in;
              expected_points <= to_integer(unsigned(byte_in and x"1F"));
              crc_s           <= crc8_update(crc_s, byte_in);
              state           <= S_SPEED_L;

            when S_SPEED_L =>
              speed_s(7 downto 0) <= unsigned(byte_in);
              crc_s               <= crc8_update(crc_s, byte_in);
              state               <= S_SPEED_H;

            when S_SPEED_H =>
              speed_s(15 downto 8) <= unsigned(byte_in);
              crc_s                <= crc8_update(crc_s, byte_in);
              state                <= S_START_ANG_L;

            when S_START_ANG_L =>
              start_ang_s(7 downto 0) <= unsigned(byte_in);
              crc_s                   <= crc8_update(crc_s, byte_in);
              state                   <= S_START_ANG_H;

            when S_START_ANG_H =>
              start_ang_s(15 downto 8) <= unsigned(byte_in);
              crc_s                    <= crc8_update(crc_s, byte_in);
              payload_index            <= 0;
              state                    <= S_POINTS;

            when S_POINTS =>
              points_buf(payload_index) <= byte_in;
              crc_s                     <= crc8_update(crc_s, byte_in);
              payload_index             <= payload_index + 1;
              if payload_index = (expected_points*3)-1 then
                state <= S_END_ANG_L;
              end if;

            when S_END_ANG_L =>
              end_ang_s(7 downto 0) <= unsigned(byte_in);
              crc_s                 <= crc8_update(crc_s, byte_in);
              state                 <= S_END_ANG_H;

            when S_END_ANG_H =>
              end_ang_s(15 downto 8) <= unsigned(byte_in);
              crc_s                  <= crc8_update(crc_s, byte_in);
              state                  <= S_TS_L;

            when S_TS_L =>
              crc_s  <= crc8_update(crc_s, byte_in);
              state  <= S_TS_H;

            when S_TS_H =>
              crc_s  <= crc8_update(crc_s, byte_in);
              state  <= S_CRC;
              
            when S_CRC =>
              if byte_in = crc_s then
                -- Prépare l’interpolation
                ang_start <= start_ang_s;
                ang_end   <= end_ang_s;
                ang_delta <= unsigned(end_ang_s) - unsigned(start_ang_s); -- wrap naturel 16b
                if expected_points > 1 then
                  ang_den   <= to_unsigned(expected_points - 1, ang_den'length);
                else
                  ang_den   <= (others => '0');
                end if;
                ang_acc   <= (others => '0');
                ang_out   <= start_ang_s;
                pts_left  <= to_unsigned(expected_points, pts_left'length);
              
                state           <= S_EMIT;
                points_received <= 0;
                frame_count_s   <= frame_count_s + 1;
              else
                state         <= S_IDLE;
                error_count_s <= error_count_s + 1;
              end if;
              crc_s <= (others => '0');

            when others =>
              state <= S_IDLE;
          end case;
        end if;


        if state = S_EMIT then
          -- Protocole AXI-Stream : on retient la donnée tant que ready=0
          if tvalid_s = '0' then
            if pts_left /= 0 then
              -- Sortie du point courant
              -- distance = points_buf[i*3+1] & points_buf[i*3]
              tdata_s(31 downto 16) <= points_buf((points_received)*3+1) &
                                      points_buf((points_received)*3);
              tdata_s(7 downto 0)   <= points_buf((points_received)*3+2);

              -- angle sur 8 bits = ang_out[7:0]
              tdata_s(15 downto 8)  <= std_logic_vector(ang_out(7 downto 0));

              tvalid_s              <= '1';

              -- Prépare l’étape suivante (calcul léger, pas de division)
              -- Bresenham-like : on répartit ang_delta sur (expected_points-1) pas
              if ang_den /= 0 then
                -- accumulateur d’erreur
                if (ang_acc + unsigned(resize(ang_delta(7 downto 0), ang_acc'length))) >= ang_den then
                  -- on dépasse le dénominateur : on "avance" l’angle d’un cran
                  ang_out <= (unsigned(ang_out) + 1);
                  ang_acc <= (ang_acc + unsigned(resize(ang_delta(7 downto 0), ang_acc'length))) - ang_den;
                else
                  ang_acc <= ang_acc + unsigned(resize(ang_delta(7 downto 0), ang_acc'length));
                end if;
              else
                -- paquet à 1 point : angle constant = start
                ang_out <= ang_out;
              end if;

              points_received <= points_received + 1;
              pts_left        <= pts_left - 1;
            else
              state    <= S_IDLE;
              tvalid_s <= '0';
            end if;

          elsif m_axis_tready = '1' then
            -- Consommateur a pris le mot, on libère valid
            tvalid_s <= '0';
          end if;
        end if;
      end if;
    end if;
  end process;

  --------------------------------------------------------------------------
  -- Sorties
  --------------------------------------------------------------------------
  m_axis_tdata  <= tdata_s;
  m_axis_tvalid <= tvalid_s;
  frame_count   <= frame_count_s;
  error_count   <= error_count_s;

end architecture;
