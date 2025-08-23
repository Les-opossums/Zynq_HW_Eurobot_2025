library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity lidar_filter is
  port (
    clk   : in  std_logic;
    rst   : in  std_logic;

    -- Entrée AXI-Stream (slave)
    s_axis_tdata  : in  std_logic_vector(31 downto 0);
    s_axis_tvalid : in  std_logic;
    s_axis_tready : out std_logic;

    -- Sortie AXI-Stream (master)
    m_axis_tdata  : out std_logic_vector(31 downto 0);
    m_axis_tvalid : out std_logic;
    m_axis_tready : in  std_logic;

    -- signaux de configuration
    cfg_dist_min      : in  unsigned(31 downto 0);
    cfg_dist_max      : in  unsigned(31 downto 0);
    cfg_angle_min     : in  unsigned(31 downto 0);
    cfg_angle_max     : in  unsigned(31 downto 0);
    cfg_intensity_min : in  unsigned(31 downto 0);
    cfg_ctrl          : in  std_logic_vector(31 downto 0)
  );
end entity;

architecture rtl_seq of lidar_filter is

  signal sample_reg   : std_logic_vector(31 downto 0) := (others => '0');
  signal sample_valid : std_logic := '0';

  signal m_tvalid_i   : std_logic := '0';
  signal m_tdata_i    : std_logic_vector(31 downto 0) := (others => '0');

  signal axis_tready  : std_logic := '1';

  type state_type is (IDLE, FILTER_DATA, SEND_DATA);
  signal state        : state_type := IDLE;

begin

  seq_proc: process(clk)
    -- Variables typées en unsigned pour éviter les conversions inutiles
    variable tmp_dist    : unsigned(15 downto 0);
    variable tmp_angle_r : unsigned(7 downto 0);
    variable tmp_intens  : unsigned(7 downto 0);

    variable cfg_min_d   : unsigned(31 downto 0);
    variable cfg_max_d   : unsigned(31 downto 0);
    variable cfg_min_a   : unsigned(31 downto 0);
    variable cfg_max_a   : unsigned(31 downto 0);
    variable cfg_int_min : unsigned(31 downto 0);
  begin
    if rising_edge(clk) then
      if rst = '0' then
        sample_reg       <= (others => '0');
        sample_valid     <= '0';
        m_tvalid_i       <= '0';
        m_tdata_i        <= (others => '0');
        axis_tready      <= '1';
        state            <= IDLE;

      else
        case state is
          when IDLE =>
            if s_axis_tvalid = '1' then
                sample_reg   <= s_axis_tdata;
                sample_valid <= '1';
                axis_tready  <= '0';
                state        <= FILTER_DATA;
            else
                axis_tready <= '1';
            end if;

          when FILTER_DATA =>
            -- Extraction des champs
            tmp_dist    := unsigned(sample_reg(31 downto 16));
            tmp_angle_r := unsigned(sample_reg(15 downto 8));
            tmp_intens  := unsigned(sample_reg(7 downto 0));

            -- Lecture des configs
            cfg_min_d   := cfg_dist_min;
            cfg_max_d   := cfg_dist_max;
            cfg_min_a   := cfg_angle_min;
            cfg_max_a   := cfg_angle_max;
            cfg_int_min := cfg_intensity_min;

            -- Application du filtre si activé
            if cfg_ctrl(0) = '1' then
              if (tmp_dist < cfg_min_d(15 downto 0)) or (tmp_dist > cfg_max_d(15 downto 0)) then
                tmp_dist := (others => '0');
              elsif (tmp_angle_r < cfg_min_a(7 downto 0)) or (tmp_angle_r > cfg_max_a(7 downto 0)) then
                tmp_dist := (others => '0');
              elsif (tmp_intens < cfg_int_min(7 downto 0)) then
                tmp_dist := (others => '0');
              end if;
            end if;

            -- Réécriture dans le registre
            sample_reg(31 downto 16) <= std_logic_vector(tmp_dist);
            sample_reg(15 downto 8)  <= std_logic_vector(tmp_angle_r);
            sample_reg(7 downto 0)   <= std_logic_vector(tmp_intens);

            state <= SEND_DATA;

          when SEND_DATA =>
            m_tdata_i  <= sample_reg;
            m_tvalid_i <= '1';

            -- Attendre que le récepteur soit prêt avant de passer à IDLE
            if m_axis_tready = '1' then
                m_tvalid_i  <= '0';
                axis_tready <= '1'; -- prêt à recevoir un nouvel échantillon
                state       <= IDLE;
            else
                axis_tready <= '0'; -- on garde l'entrée bloquée tant qu'on n'a pas envoyé
            end if;

          when others =>
            state <= IDLE; -- État de sécurité
        end case;
      end if;
    end if;
  end process;

  m_axis_tdata  <= m_tdata_i;
  m_axis_tvalid <= m_tvalid_i;
  s_axis_tready <= axis_tready;

end architecture;
