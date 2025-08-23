--Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
--Date        : Tue Aug 19 19:28:07 2025
--Host        : martinH running 64-bit major release  (build 9200)
--Command     : generate_target Zynq_block_design_wrapper.bd
--Design      : Zynq_block_design_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Zynq_block_design_wrapper is
  port (
    AU : in STD_LOGIC_VECTOR ( 0 to 0 );
    CAN1_PHY_RX_0 : in STD_LOGIC;
    CAN1_PHY_TX_0 : out STD_LOGIC;
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_cas_n : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    ENET0_GMII_RX_CLK_0 : in STD_LOGIC;
    ENET0_GMII_RX_DV_0 : in STD_LOGIC;
    ENET0_GMII_TXD_0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ENET0_GMII_TX_CLK_0 : in STD_LOGIC;
    ENET0_GMII_TX_EN_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    ETH_RESET : out STD_LOGIC;
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    IO_1 : in STD_LOGIC;
    IO_2 : in STD_LOGIC;
    IO_3 : in STD_LOGIC;
    MDIO_ETHERNET_0_0_mdc : out STD_LOGIC;
    MDIO_ETHERNET_0_0_mdio_io : inout STD_LOGIC;
    PL_UART0_RX : in STD_LOGIC;
    PL_UART0_TX : out STD_LOGIC;
    TEAM : in STD_LOGIC_VECTOR ( 0 to 0 );
    TIRETTE : in STD_LOGIC_VECTOR ( 0 to 0 );
    uart_rx_in_0 : in STD_LOGIC
  );
end Zynq_block_design_wrapper;

architecture STRUCTURE of Zynq_block_design_wrapper is
  component Zynq_block_design is
  port (
    CAN1_PHY_TX_0 : out STD_LOGIC;
    CAN1_PHY_RX_0 : in STD_LOGIC;
    AU : in STD_LOGIC_VECTOR ( 0 to 0 );
    TEAM : in STD_LOGIC_VECTOR ( 0 to 0 );
    TIRETTE : in STD_LOGIC_VECTOR ( 0 to 0 );
    IO_1 : in STD_LOGIC;
    IO_2 : in STD_LOGIC;
    IO_3 : in STD_LOGIC;
    PL_UART0_RX : in STD_LOGIC;
    PL_UART0_TX : out STD_LOGIC;
    uart_rx_in_0 : in STD_LOGIC;
    DDR_cas_n : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    ENET0_GMII_TX_EN_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    ENET0_GMII_TXD_0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ENET0_GMII_RX_CLK_0 : in STD_LOGIC;
    ENET0_GMII_RX_DV_0 : in STD_LOGIC;
    ENET0_GMII_TX_CLK_0 : in STD_LOGIC;
    MDIO_ETHERNET_0_0_mdc : out STD_LOGIC;
    MDIO_ETHERNET_0_0_mdio_o : out STD_LOGIC;
    MDIO_ETHERNET_0_0_mdio_t : out STD_LOGIC;
    MDIO_ETHERNET_0_0_mdio_i : in STD_LOGIC;
    ETH_RESET : out STD_LOGIC
  );
  end component Zynq_block_design;
  component IOBUF is
  port (
    I : in STD_LOGIC;
    O : out STD_LOGIC;
    T : in STD_LOGIC;
    IO : inout STD_LOGIC
  );
  end component IOBUF;
  signal MDIO_ETHERNET_0_0_mdio_i : STD_LOGIC;
  signal MDIO_ETHERNET_0_0_mdio_o : STD_LOGIC;
  signal MDIO_ETHERNET_0_0_mdio_t : STD_LOGIC;
begin
MDIO_ETHERNET_0_0_mdio_iobuf: component IOBUF
     port map (
      I => MDIO_ETHERNET_0_0_mdio_o,
      IO => MDIO_ETHERNET_0_0_mdio_io,
      O => MDIO_ETHERNET_0_0_mdio_i,
      T => MDIO_ETHERNET_0_0_mdio_t
    );
Zynq_block_design_i: component Zynq_block_design
     port map (
      AU(0) => AU(0),
      CAN1_PHY_RX_0 => CAN1_PHY_RX_0,
      CAN1_PHY_TX_0 => CAN1_PHY_TX_0,
      DDR_addr(14 downto 0) => DDR_addr(14 downto 0),
      DDR_ba(2 downto 0) => DDR_ba(2 downto 0),
      DDR_cas_n => DDR_cas_n,
      DDR_ck_n => DDR_ck_n,
      DDR_ck_p => DDR_ck_p,
      DDR_cke => DDR_cke,
      DDR_cs_n => DDR_cs_n,
      DDR_dm(3 downto 0) => DDR_dm(3 downto 0),
      DDR_dq(31 downto 0) => DDR_dq(31 downto 0),
      DDR_dqs_n(3 downto 0) => DDR_dqs_n(3 downto 0),
      DDR_dqs_p(3 downto 0) => DDR_dqs_p(3 downto 0),
      DDR_odt => DDR_odt,
      DDR_ras_n => DDR_ras_n,
      DDR_reset_n => DDR_reset_n,
      DDR_we_n => DDR_we_n,
      ENET0_GMII_RX_CLK_0 => ENET0_GMII_RX_CLK_0,
      ENET0_GMII_RX_DV_0 => ENET0_GMII_RX_DV_0,
      ENET0_GMII_TXD_0(7 downto 0) => ENET0_GMII_TXD_0(7 downto 0),
      ENET0_GMII_TX_CLK_0 => ENET0_GMII_TX_CLK_0,
      ENET0_GMII_TX_EN_0(0) => ENET0_GMII_TX_EN_0(0),
      ETH_RESET => ETH_RESET,
      FIXED_IO_ddr_vrn => FIXED_IO_ddr_vrn,
      FIXED_IO_ddr_vrp => FIXED_IO_ddr_vrp,
      FIXED_IO_mio(53 downto 0) => FIXED_IO_mio(53 downto 0),
      FIXED_IO_ps_clk => FIXED_IO_ps_clk,
      FIXED_IO_ps_porb => FIXED_IO_ps_porb,
      FIXED_IO_ps_srstb => FIXED_IO_ps_srstb,
      IO_1 => IO_1,
      IO_2 => IO_2,
      IO_3 => IO_3,
      MDIO_ETHERNET_0_0_mdc => MDIO_ETHERNET_0_0_mdc,
      MDIO_ETHERNET_0_0_mdio_i => MDIO_ETHERNET_0_0_mdio_i,
      MDIO_ETHERNET_0_0_mdio_o => MDIO_ETHERNET_0_0_mdio_o,
      MDIO_ETHERNET_0_0_mdio_t => MDIO_ETHERNET_0_0_mdio_t,
      PL_UART0_RX => PL_UART0_RX,
      PL_UART0_TX => PL_UART0_TX,
      TEAM(0) => TEAM(0),
      TIRETTE(0) => TIRETTE(0),
      uart_rx_in_0 => uart_rx_in_0
    );
end STRUCTURE;
