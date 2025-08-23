library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity lidar_filter_regs is
  port (
    clk      : in  std_logic;
    rst      : in  std_logic; -- actif bas (rst = '0' -> reset)

    s_axi_awaddr  : in  std_logic_vector(31 downto 0);
    s_axi_awvalid : in  std_logic;
    s_axi_awready : out std_logic;

    s_axi_wdata   : in  std_logic_vector(31 downto 0);
    s_axi_wvalid  : in  std_logic;
    s_axi_wready  : out std_logic;

    s_axi_bresp   : out std_logic_vector(1 downto 0);
    s_axi_bvalid  : out std_logic;
    s_axi_bready  : in  std_logic;

    s_axi_araddr  : in  std_logic_vector(31 downto 0);
    s_axi_arvalid : in  std_logic;
    s_axi_arready : out std_logic;

    s_axi_rdata   : out std_logic_vector(31 downto 0);
    s_axi_rresp   : out std_logic_vector(1 downto 0);
    s_axi_rvalid  : out std_logic;
    s_axi_rready  : in  std_logic;

    cfg_dist_min     : out unsigned(31 downto 0);
    cfg_dist_max     : out unsigned(31 downto 0);
    cfg_angle_min    : out unsigned(31 downto 0);
    cfg_angle_max    : out unsigned(31 downto 0);
    cfg_intensity_min: out unsigned(31 downto 0);
    cfg_ctrl         : out std_logic_vector(31 downto 0);

    inc_frame        : in  std_logic;
    inc_error        : in  std_logic;

    frame_count_out  : out unsigned(31 downto 0);
    error_count_out  : out unsigned(31 downto 0)
  );
end entity;

architecture rtl of lidar_filter_regs is

  -- addresses as word indices (compare on addr(31 downto 2))
  constant ADDR_DIST_MIN_IDX      : unsigned(29 downto 0) := to_unsigned(0, 30);
  constant ADDR_DIST_MAX_IDX      : unsigned(29 downto 0) := to_unsigned(1, 30);
  constant ADDR_ANGLE_MIN_IDX     : unsigned(29 downto 0) := to_unsigned(2, 30);
  constant ADDR_ANGLE_MAX_IDX     : unsigned(29 downto 0) := to_unsigned(3, 30);
  constant ADDR_INTENSITY_MIN_IDX : unsigned(29 downto 0) := to_unsigned(4, 30);
  constant ADDR_CTRL_IDX          : unsigned(29 downto 0) := to_unsigned(5, 30);
  constant ADDR_FRAME_COUNT_IDX   : unsigned(29 downto 0) := to_unsigned(6, 30);
  constant ADDR_ERROR_COUNT_IDX   : unsigned(29 downto 0) := to_unsigned(7, 30);

  -- internal register storage
  signal reg_dist_min      : unsigned(31 downto 0) := to_unsigned(0, 32);
  signal reg_dist_max      : unsigned(31 downto 0) := to_unsigned(65535, 32);
  signal reg_angle_min     : unsigned(31 downto 0) := to_unsigned(0, 32);
  signal reg_angle_max     : unsigned(31 downto 0) := to_unsigned(65535, 32);
  signal reg_intensity_min : unsigned(31 downto 0) := to_unsigned(255, 32);
  signal reg_ctrl          : std_logic_vector(31 downto 0) := (others => '0');

  signal reg_frame_count   : unsigned(31 downto 0) := (others => '0');
  signal reg_error_count   : unsigned(31 downto 0) := (others => '0');

  -- AXI handshakes / flags
  signal aw_done    : std_logic := '0'; -- AW received and latched
  signal w_done     : std_logic := '0'; -- W received and processed
  signal ar_pending : std_logic := '0'; -- AR received and not yet responded

  signal awaddr_reg : std_logic_vector(31 downto 0) := (others => '0');
  signal araddr_reg : std_logic_vector(31 downto 0) := (others => '0');

  -- internal ready/valid signals (registered)
  signal axi_awready : std_logic := '0';
  signal axi_wready  : std_logic := '0';
  signal axi_bvalid  : std_logic := '0';
  signal axi_arready : std_logic := '0';
  signal axi_rvalid  : std_logic := '0';
  signal axi_rdata   : std_logic_vector(31 downto 0) := (others => '0');

begin

  ----------------------------------------------------------------------------
  -- AW channel (AWREADY / latch AW)
  -- AWREADY asserted when no AW in flight (aw_done = '0') and no BVALID outstanding
  ----------------------------------------------------------------------------
  process(clk)
  begin
    if rising_edge(clk) then
      if rst = '0' then
        axi_awready <= '0';
        aw_done     <= '0';
        awaddr_reg  <= (others => '0');
      else
        -- AWREADY: available if no AW already latched and no pending write response
        if aw_done = '0' and axi_bvalid = '0' then
          axi_awready <= '1';
        else
          axi_awready <= '0';
        end if;

        -- AW handshake: latch address when AWVALID & AWREADY
        if s_axi_awvalid = '1' and axi_awready = '1' then
          aw_done    <= '1';
          awaddr_reg <= s_axi_awaddr;
        end if;

        -- aw_done will be cleared when B response consumed (see response logic)
      end if;
    end if;
  end process;

  ----------------------------------------------------------------------------
  -- W channel (WREADY / perform write)
  -- WREADY asserted when no W in flight and no pending write response
  ----------------------------------------------------------------------------
  process(clk)
    variable addr_idx : unsigned(29 downto 0);
  begin
    if rising_edge(clk) then
      if rst = '0' then
        axi_wready <= '0';
        w_done     <= '0';
      else
        -- WREADY: accept W if we haven't already accepted W for current write (w_done = '0')
        -- and there is an AW latched (we require AW first or simultaneous AW)
        if w_done = '0' and aw_done = '0' then
          -- no AW latched yet, but we still accept W if AW can be simultaneous.
          -- To keep it simple we allow W to be accepted anytime w_done='0' and no B pending.
          if axi_bvalid = '0' then
            axi_wready <= '1';
          else
            axi_wready <= '0';
          end if;
        elsif w_done = '0' and aw_done = '1' then
          -- AW latched, accept W to complete write
          if axi_bvalid = '0' then
            axi_wready <= '1';
          else
            axi_wready <= '0';
          end if;
        else
          axi_wready <= '0';
        end if;

        -- W handshake: when WVALID & WREADY, perform write using latched AW address
        if s_axi_wvalid = '1' and axi_wready = '1' then
          w_done <= '1';
          -- determine address index from awaddr_reg (word-aligned)
          addr_idx := unsigned(awaddr_reg(31 downto 2));

          if addr_idx = ADDR_DIST_MIN_IDX then
            reg_dist_min <= unsigned(s_axi_wdata);
          elsif addr_idx = ADDR_DIST_MAX_IDX then
            reg_dist_max <= unsigned(s_axi_wdata);
          elsif addr_idx = ADDR_ANGLE_MIN_IDX then
            reg_angle_min <= unsigned(s_axi_wdata);
          elsif addr_idx = ADDR_ANGLE_MAX_IDX then
            reg_angle_max <= unsigned(s_axi_wdata);
          elsif addr_idx = ADDR_INTENSITY_MIN_IDX then
            reg_intensity_min <= unsigned(s_axi_wdata);
          elsif addr_idx = ADDR_CTRL_IDX then
            reg_ctrl <= s_axi_wdata;
          else
            -- writes to RO/reserved: ignored
            null;
          end if;
        end if;

        -- w_done will be cleared when B response consumed (see response logic)

      end if;
    end if;
  end process;

  ----------------------------------------------------------------------------
  -- Write response channel (BVALID / BREADY handling)
  -- BVALID asserted when both AW and W have been done and we haven't responded yet.
  ----------------------------------------------------------------------------
  process(clk)
  begin
    if rising_edge(clk) then
      if rst = '0' then
        axi_bvalid <= '0';
        s_axi_bresp <= "00";
      else
        -- if both AW and W have been seen, and no B yet, assert BVALID
        if aw_done = '1' and w_done = '1' and axi_bvalid = '0' then
          axi_bvalid <= '1';
          s_axi_bresp <= "00"; -- OKAY
        elsif axi_bvalid = '1' and s_axi_bready = '1' then
          -- response accepted: clear transaction flags
          axi_bvalid <= '0';
          aw_done <= '0';
          w_done  <= '0';
        end if;
      end if;
    end if;
  end process;

  ----------------------------------------------------------------------------
  -- AR channel (ARREADY / latch AR)
  -- ARREADY asserted only if no read pending (axi_rvalid = '0' and ar_pending = '0')
  ----------------------------------------------------------------------------
  process(clk)
  begin
    if rising_edge(clk) then
      if rst = '0' then
        axi_arready <= '0';
        ar_pending  <= '0';
        araddr_reg  <= (others => '0');
      else
        if ar_pending = '0' and axi_rvalid = '0' then
          axi_arready <= '1';
        else
          axi_arready <= '0';
        end if;

        if s_axi_arvalid = '1' and axi_arready = '1' then
          ar_pending <= '1';
          araddr_reg <= s_axi_araddr;
        end if;
        -- ar_pending cleared when R is accepted (see R channel)
      end if;
    end if;
  end process;

  ----------------------------------------------------------------------------
  -- Read data mux and R channel
  ----------------------------------------------------------------------------
  process(clk)
    variable addr_idx : unsigned(29 downto 0);
    variable rdata_v  : std_logic_vector(31 downto 0);
  begin
    if rising_edge(clk) then
      if rst = '0' then
        axi_rvalid <= '0';
        axi_rdata  <= (others => '0');
        s_axi_rresp <= "00";
      else
        if ar_pending = '1' and axi_rvalid = '0' then
          -- build read data immediately using variable to avoid signal update hazard
          addr_idx := unsigned(araddr_reg(31 downto 2));
          if addr_idx = ADDR_DIST_MIN_IDX then
            rdata_v := std_logic_vector(reg_dist_min);
          elsif addr_idx = ADDR_DIST_MAX_IDX then
            rdata_v := std_logic_vector(reg_dist_max);
          elsif addr_idx = ADDR_ANGLE_MIN_IDX then
            rdata_v := std_logic_vector(reg_angle_min);
          elsif addr_idx = ADDR_ANGLE_MAX_IDX then
            rdata_v := std_logic_vector(reg_angle_max);
          elsif addr_idx = ADDR_INTENSITY_MIN_IDX then
            rdata_v := std_logic_vector(reg_intensity_min);
          elsif addr_idx = ADDR_CTRL_IDX then
            rdata_v := reg_ctrl;
          elsif addr_idx = ADDR_FRAME_COUNT_IDX then
            rdata_v := std_logic_vector(reg_frame_count);
          elsif addr_idx = ADDR_ERROR_COUNT_IDX then
            rdata_v := std_logic_vector(reg_error_count);
          else
            rdata_v := (others => '0');
          end if;

          axi_rdata <= rdata_v;
          s_axi_rresp <= "00";
          axi_rvalid <= '1';
        elsif axi_rvalid = '1' and s_axi_rready = '1' then
          -- master accepted read; clear pending flags
          axi_rvalid <= '0';
          ar_pending <= '0';
        end if;
      end if;
    end if;
  end process;

  ----------------------------------------------------------------------------
  -- Counters (increment by pulses)
  ----------------------------------------------------------------------------
  process(clk)
  begin
    if rising_edge(clk) then
      if rst = '0' then
        reg_frame_count <= (others => '0');
        reg_error_count <= (others => '0');
      else
        if inc_frame = '1' then
          reg_frame_count <= reg_frame_count + 1;
        end if;
        if inc_error = '1' then
          reg_error_count <= reg_error_count + 1;
        end if;
      end if;
    end if;
  end process;

  ----------------------------------------------------------------------------
  -- Outputs mapping
  ----------------------------------------------------------------------------
  cfg_dist_min      <= reg_dist_min;
  cfg_dist_max      <= reg_dist_max;
  cfg_angle_min     <= reg_angle_min;
  cfg_angle_max     <= reg_angle_max;
  cfg_intensity_min <= reg_intensity_min;
  cfg_ctrl          <= reg_ctrl;

  frame_count_out   <= reg_frame_count;
  error_count_out   <= reg_error_count;

  -- expose AXI signals
  s_axi_awready <= axi_awready;
  s_axi_wready  <= axi_wready;
  s_axi_bvalid  <= axi_bvalid;
  s_axi_arready <= axi_arready;
  s_axi_rvalid  <= axi_rvalid;
  s_axi_rdata   <= axi_rdata;

end architecture;
