library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity uart_rx is
    generic (
        CLK_FREQ  : integer := 100_000_000;  -- Fréquence d'horloge en Hz
        BAUD_RATE : integer := 230_400       -- Vitesse en bits/s
    );
    port (
        clk       : in  std_logic;
        rst       : in  std_logic;
        rx        : in  std_logic;
        data_out  : out std_logic_vector(7 downto 0);
        data_valid: out std_logic
    );
end entity;

architecture rtl of uart_rx is

    -- Paramètres
    constant OVERSAMPLE       : integer := 16;
    constant SAMPLE_TICK_CNT  : integer := integer(CLK_FREQ / (BAUD_RATE * OVERSAMPLE));

    -- États
    type state_type is (IDLE, START, DATA, STOP);
    signal state        : state_type := IDLE;

    -- Signaux internes
    signal tick_counter : integer range 0 to SAMPLE_TICK_CNT-1 := 0;
    signal sample_tick  : std_logic := '0';
    signal bit_index    : integer range 0 to 7 := 0;
    signal sample_count : integer range 0 to OVERSAMPLE-1 := 0;
    signal rx_sync      : std_logic_vector(1 downto 0) := (others => '1');
    signal rx_reg       : std_logic := '1';
    signal data_reg     : std_logic_vector(7 downto 0) := (others => '0');
    signal data_ready   : std_logic := '0';

begin

    -- Synchronisation RX (évite les metastabilités)
    process(clk)
    begin
        if rising_edge(clk) then
            rx_sync <= rx_sync(0) & rx;
            rx_reg  <= rx_sync(1);
        end if;
    end process;

    -- Générateur de tick pour oversampling
    process(clk)
    begin
        if rising_edge(clk) then
            if tick_counter = SAMPLE_TICK_CNT-1 then
                tick_counter <= 0;
                sample_tick  <= '1';
            else
                tick_counter <= tick_counter + 1;
                sample_tick  <= '0';
            end if;
        end if;
    end process;

    -- FSM de réception UART
    process(clk)
    begin
        if rising_edge(clk) then
            if rst = '0' then
                state        <= IDLE;
                bit_index    <= 0;
                sample_count <= 0;
                data_reg     <= (others => '0');
                data_ready   <= '0';
            else
                data_ready <= '0'; -- Par défaut

                if sample_tick = '1' then
                    case state is
                        when IDLE =>
                            if rx_reg = '0' then -- Début du start bit
                                state        <= START;
                                sample_count <= 0;
                            end if;

                        when START =>
                            if sample_count = (OVERSAMPLE/2) then
                                if rx_reg = '0' then
                                    sample_count <= 0;
                                    bit_index    <= 0;
                                    state        <= DATA;
                                else
                                    state <= IDLE; -- Faux départ
                                end if;
                            else
                                sample_count <= sample_count + 1;
                            end if;

                        when DATA =>
                            if sample_count = OVERSAMPLE-1 then
                                sample_count <= 0;
                                data_reg(bit_index) <= rx_reg;
                                if bit_index = 7 then
                                    state <= STOP;
                                else
                                    bit_index <= bit_index + 1;
                                end if;
                            else
                                sample_count <= sample_count + 1;
                            end if;

                        when STOP =>
                            if sample_count = OVERSAMPLE-1 then
                                state      <= IDLE;
                                data_ready <= '1';
                            else
                                sample_count <= sample_count + 1;
                            end if;
                    end case;
                end if;
            end if;
        end if;
    end process;

    -- Sorties
    data_out   <= data_reg;
    data_valid <= data_ready;

end architecture;