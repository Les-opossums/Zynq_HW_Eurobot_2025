library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity lidar_top_for_dma is
  generic (
    CLOCK_FREQ_HZ    : integer := 100_000_000;
    BAUD_RATE        : integer := 230400;
    BYTE_TIMEOUT_US  : integer := 1000;
    POINTS_PER_PKT   : integer := 12
  );
  port (
    -- global
    clk    : in  std_logic;
    rst    : in  std_logic;

    -- UART RX ligne série
    uart_rx_in : in  std_logic;

    -- AXI-Stream master (to AXI-DMA)
    m_axis_tdata  : out std_logic_vector(31 downto 0);
    m_axis_tvalid : out std_logic;
    m_axis_tready : in  std_logic;
    m_axis_tlast  : out std_logic;
    m_axis_tkeep  : out std_logic_vector(3 downto 0)
  );
end entity;

architecture rtl of lidar_top_for_dma is

  -- UART RX -> Parser
  signal byte_in       : std_logic_vector(7 downto 0);
  signal byte_in_valid : std_logic;

  -- parser -> filter AXIS
  signal p_tdata   : std_logic_vector(31 downto 0);
  signal p_tvalid  : std_logic;
  signal p_tready  : std_logic;

  -- filter -> dma AXIS
  signal f_tdata   : std_logic_vector(31 downto 0);
  signal f_tvalid  : std_logic;
  signal f_tready  : std_logic;

  -- TLAST generation / counters
  signal beat_counter     : integer range 0 to POINTS_PER_PKT := 0;
  signal tlast_reg        : std_logic := '0';
  signal inc_frame_pulse  : std_logic := '0';

  -- regs outputs
  signal cfg_dist_min       : unsigned(31 downto 0) := (others => '0');
  signal cfg_dist_max       : unsigned(31 downto 0) := (others => '1');
  signal cfg_angle_min      : unsigned(31 downto 0) := (others => '0');
  signal cfg_angle_max      : unsigned(31 downto 0) := (others => '1');
  signal cfg_intensity_min  : unsigned(31 downto 0) := (others => '1');
  signal cfg_ctrl           : std_logic_vector(31 downto 0) := (others => '1');

  -- parser status
  signal frame_cnt_sig : unsigned(31 downto 0);
  signal err_cnt_sig   : unsigned(31 downto 0);

begin

  ----------------------------------------------------------------------------
  -- UART RX instantiation
  ----------------------------------------------------------------------------
  u_uart_rx : entity work.uart_rx
    generic map (
      CLK_FREQ   => CLOCK_FREQ_HZ,
      BAUD_RATE  => BAUD_RATE
    )
    port map (
      clk        => clk,
      rst        => rst,
      rx         => uart_rx_in,
      data_out   => byte_in,
      data_valid => byte_in_valid
    );

  ----------------------------------------------------------------------------
  -- Parser LD06
  ----------------------------------------------------------------------------
  u_parser : entity work.lidar_parser_ld06
    generic map (
      CLOCK_FREQ_HZ   => CLOCK_FREQ_HZ,
      BYTE_TIMEOUT_US => BYTE_TIMEOUT_US,
      POINTS_PER_PKT  => POINTS_PER_PKT
    )
    port map (
      clk           => clk,
      rst           => rst,
      byte_in       => byte_in,
      byte_in_valid => byte_in_valid,
      m_axis_tdata  => p_tdata,
      m_axis_tvalid => p_tvalid,
      m_axis_tready => p_tready,
      frame_count   => frame_cnt_sig,
      error_count   => err_cnt_sig
    );

  ----------------------------------------------------------------------------
  -- Filter
  ----------------------------------------------------------------------------
  u_filter : entity work.lidar_filter
    port map (
      clk   => clk,
      rst   => rst,

      s_axis_tdata  => p_tdata,
      s_axis_tvalid => p_tvalid,
      s_axis_tready => p_tready,

      m_axis_tdata  => f_tdata,
      m_axis_tvalid => f_tvalid,
      m_axis_tready => f_tready,

      cfg_dist_min      => cfg_dist_min,
      cfg_dist_max      => cfg_dist_max,
      cfg_angle_min     => cfg_angle_min,
      cfg_angle_max     => cfg_angle_max,
      cfg_intensity_min => cfg_intensity_min,
      cfg_ctrl          => cfg_ctrl
    );

  ----------------------------------------------------------------------------
  -- Output to DMA
  ----------------------------------------------------------------------------
  m_axis_tdata  <= f_tdata;
  m_axis_tvalid <= f_tvalid;
  f_tready      <= m_axis_tready;
  m_axis_tkeep  <= "1111";
  m_axis_tlast  <= tlast_reg;

  ----------------------------------------------------------------------------
  -- TLAST generation
  ----------------------------------------------------------------------------
tlast_proc : process(clk)
begin
    if rising_edge(clk) then
        if rst = '0' then
            beat_counter <= 0;
            tlast_reg    <= '0';
        else
            tlast_reg <= '0';  -- par défaut TLAST = 0 chaque cycle

            if (f_tvalid = '1') and (m_axis_tready = '1') then
                if beat_counter = POINTS_PER_PKT - 1 then
                    tlast_reg    <= '1';  -- dernier beat du paquet
                    beat_counter <= 0;
                else
                    beat_counter <= beat_counter + 1;
                end if;
            end if;
        end if;
    end if;
end process;

end architecture;
