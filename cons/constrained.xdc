############### clock define##################

#set_property PACKAGE_PIN N18     [get_ports PL_CLK_50M]
#set_property IOSTANDARD LVCMOS33 [get_ports PL_CLK_50M]

############### key define ##################
# set_property PACKAGE_PIN P16 [get_ports PL_KEY1]
# set_property PACKAGE_PIN T12 [get_ports PL_KEY2]

# set_property IOSTANDARD LVCMOS33 [get_ports PL_KEY1]
# set_property IOSTANDARD LVCMOS33 [get_ports PL_KEY2]
############### LED define ##################
#set_property PACKAGE_PIN P15 [get_ports DOUT_VLD_0]
# set_property PACKAGE_PIN U12 [get_ports PL_LED2]

#set_property IOSTANDARD LVCMOS33 [get_ports DOUT_VLD_0]
# set_property IOSTANDARD LVCMOS33 [get_ports PL_LED2]

############## CAN ##################
set_property PACKAGE_PIN L17 [get_ports CAN1_PHY_RX_0]
set_property IOSTANDARD LVCMOS33 [get_ports CAN1_PHY_RX_0]

set_property PACKAGE_PIN L16 [get_ports CAN1_PHY_TX_0]
set_property IOSTANDARD LVCMOS33 [get_ports CAN1_PHY_TX_0]

############## AU ##################
set_property PACKAGE_PIN H15 [get_ports {AU[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {AU[0]}]

############## TEAM ##################
set_property PACKAGE_PIN G15 [get_ports {TEAM[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {TEAM[0]}]


#########################################
############## LIDAR ####################
#########################################

############## LIDAR_1 ##################
set_property PACKAGE_PIN F16 [get_ports PL_UART0_RX]
set_property IOSTANDARD LVCMOS33 [get_ports PL_UART0_RX]
set_property PACKAGE_PIN E19 [get_ports PL_UART0_TX]
set_property IOSTANDARD LVCMOS33 [get_ports PL_UART0_TX]

############## LIDAR_2 ##################
# set_property PACKAGE_PIN Y19 [get_ports RX_LIDAR_2]
# set_property IOSTANDARD LVCMOS33 [get_ports RX_LIDAR_2]
# set_property PACKAGE_PIN Y18 [get_ports TX_LIDAR_2]
# set_property IOSTANDARD LVCMOS33 [get_ports TX_LIDAR_2]

############## LIDAR_3 ##################
# set_property PACKAGE_PIN B19 [get_ports TX_LIDAR_3]
# set_property IOSTANDARD LVCMOS33 [get_ports TX_LIDAR_3]
# set_property PACKAGE_PIN B19 [get_ports led_out]
# set_property IOSTANDARD LVCMOS33 [get_ports led_out]

############## TIRETTE ##################
set_property PACKAGE_PIN F17 [get_ports {TIRETTE[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {TIRETTE[0]}]

############## I2C ##################
# set_property PACKAGE_PIN J18 [get_ports I2C_SDA]
# set_property IOSTANDARD LVCMOS33 [get_ports I2C_SDA]
# set_property PACKAGE_PIN G20 [get_ports I2C_SCL]
# set_property IOSTANDARD LVCMOS33 [get_ports I2C_SCL]

############## SERVO ##################
#set_property PACKAGE_PIN P18 [get_ports SERVO[0]]
#set_property IOSTANDARD LVCMOS33 [get_ports SERVO[0]]
#set_property PACKAGE_PIN N17 [get_ports SERVO[1]]
#set_property IOSTANDARD LVCMOS33 [get_ports SERVO[1]]
#set_property PACKAGE_PIN R17 [get_ports SERVO[2]]
#set_property IOSTANDARD LVCMOS33 [get_ports SERVO[2]]
#set_property PACKAGE_PIN R16 [get_ports SERVO[3]]
#set_property IOSTANDARD LVCMOS33 [get_ports SERVO[3]]
#set_property PACKAGE_PIN T16 [get_ports SERVO[4]]
#set_property IOSTANDARD LVCMOS33 [get_ports SERVO[4]]
#set_property PACKAGE_PIN U17 [get_ports SERVO[5]]
#set_property IOSTANDARD LVCMOS33 [get_ports SERVO[5]]
#set_property PACKAGE_PIN W18 [get_ports SERVO[6]]
#set_property IOSTANDARD LVCMOS33 [get_ports SERVO[6]]
#set_property PACKAGE_PIN W19 [get_ports SERVO[7]]
#set_property IOSTANDARD LVCMOS33 [get_ports SERVO[7]]

#set_property PACKAGE_PIN H20 [get_ports pump_1]
#set_property IOSTANDARD LVCMOS33 [get_ports pump_1]
#set_property PACKAGE_PIN J20 [get_ports pump_2]
#set_property IOSTANDARD LVCMOS33 [get_ports pump_2]
#set_property PACKAGE_PIN M19 [get_ports pump_3]
#set_property IOSTANDARD LVCMOS33 [get_ports pump_3]
#set_property PACKAGE_PIN F20 [get_ports pump_4]
#set_property IOSTANDARD LVCMOS33 [get_ports pump_4]

#set_property PACKAGE_PIN G17 [get_ports o_valve_1_0]
#set_property IOSTANDARD LVCMOS33 [get_ports o_valve_1_0]
#set_property PACKAGE_PIN G18 [get_ports o_valve_2_0]
#set_property IOSTANDARD LVCMOS33 [get_ports o_valve_2_0]
#set_property PACKAGE_PIN K16 [get_ports o_valve_3_0]
#set_property IOSTANDARD LVCMOS33 [get_ports o_valve_3_0]
#set_property PACKAGE_PIN H18 [get_ports o_valve_4_0]
#set_property IOSTANDARD LVCMOS33 [get_ports o_valve_4_0]

############## QEI ##################
#set_property PACKAGE_PIN B20 [get_ports QEI_1_A]
#set_property IOSTANDARD LVCMOS33 [get_ports QEI_1_A]
#set_property PACKAGE_PIN C20 [get_ports QEI_1_B]
#set_property IOSTANDARD LVCMOS33 [get_ports QEI_1_B]
# set_property PACKAGE_PIN J16 [get_ports QEI_1_X]
# set_property IOSTANDARD LVCMOS33 [get_ports QEI_1_X]

#set_property PACKAGE_PIN F19 [get_ports QEI_2_A]
#set_property IOSTANDARD LVCMOS33 [get_ports QEI_2_A]
#set_property PACKAGE_PIN L20 [get_ports QEI_2_B]
#set_property IOSTANDARD LVCMOS33 [get_ports QEI_2_B]
# set_property PACKAGE_PIN L19 [get_ports QEI_2_X]
# set_property IOSTANDARD LVCMOS33 [get_ports QEI_2_X]

# set_property PACKAGE_PIN K19 [get_ports QEI_3_A]
# set_property IOSTANDARD LVCMOS33 [get_ports QEI_3_A]
# set_property PACKAGE_PIN J19 [get_ports QEI_3_B]
# set_property IOSTANDARD LVCMOS33 [get_ports QEI_3_B]
# set_property PACKAGE_PIN M20 [get_ports QEI_3_X]
# set_property IOSTANDARD LVCMOS33 [get_ports QEI_3_X]


############## SPARE_1 ##################
# set_property PACKAGE_PIN H17 [get_ports SPARE1_1]
# set_property IOSTANDARD LVCMOS33 [get_ports SPARE1_1]
set_property PACKAGE_PIN H17 [get_ports SPI0_SCLK_O_0]
set_property IOSTANDARD LVCMOS33 [get_ports SPI0_SCLK_O_0]

# set_property PACKAGE_PIN D18 [get_ports SPARE1_2]
# set_property IOSTANDARD LVCMOS33 [get_ports SPARE1_2]
set_property PACKAGE_PIN D18 [get_ports SPI0_MOSI_O_0]
set_property IOSTANDARD LVCMOS33 [get_ports SPI0_MOSI_O_0]

# set_property PACKAGE_PIN E17 [get_ports SPARE1_3]
# set_property IOSTANDARD LVCMOS33 [get_ports SPARE1_3]
set_property PACKAGE_PIN E17 [get_ports SPI0_MISO_I_0]
set_property IOSTANDARD LVCMOS33 [get_ports SPI0_MISO_I_0]

# set_property PACKAGE_PIN D19 [get_ports SPARE1_4]
# set_property IOSTANDARD LVCMOS33 [get_ports SPARE1_4]
set_property PACKAGE_PIN D19 [get_ports {SPI_CS[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {SPI_CS[0]}]

# set_property PACKAGE_PIN H16 [get_ports SPARE1_5]
# set_property IOSTANDARD LVCMOS33 [get_ports SPARE1_5]
set_property PACKAGE_PIN H16 [get_ports {SPI_INT[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {SPI_INT[0]}]

# set_property PACKAGE_PIN A20 [get_ports SPARE1_6]
# set_property IOSTANDARD LVCMOS33 [get_ports SPARE1_6]
set_property PACKAGE_PIN A20 [get_ports {SPI_RST[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {SPI_RST[0]}]

# set_property PACKAGE_PIN G19 [get_ports SPARE1_7]
# set_property IOSTANDARD LVCMOS33 [get_ports SPARE1_7]
set_property PACKAGE_PIN G19 [get_ports {SPI_WAKE[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {SPI_WAKE[0]}]

# set_property PACKAGE_PIN H17 [get_ports uart_rx_in_0]
# set_property IOSTANDARD LVCMOS33 [get_ports uart_rx_in_0]
# set_property PACKAGE_PIN D18 [get_ports SPARE1_2]
# set_property IOSTANDARD LVCMOS33 [get_ports SPARE1_2]
# set_property PACKAGE_PIN E17 [get_ports SPARE1_3]
# set_property IOSTANDARD LVCMOS33 [get_ports SPARE1_3]
# set_property PACKAGE_PIN D19 [get_ports SPARE1_4]
# set_property IOSTANDARD LVCMOS33 [get_ports SPARE1_4]
# set_property PACKAGE_PIN H16 [get_ports SPARE1_5]
# set_property IOSTANDARD LVCMOS33 [get_ports SPARE1_5]
# set_property PACKAGE_PIN A20 [get_ports SPARE1_6]
# set_property IOSTANDARD LVCMOS33 [get_ports SPARE1_6]
# set_property PACKAGE_PIN G19 [get_ports SPARE1_7]
# set_property IOSTANDARD LVCMOS33 [get_ports SPARE1_7]
# set_property PACKAGE_PIN E18 [get_ports SPARE1_8]
# set_property IOSTANDARD LVCMOS33 [get_ports SPARE1_8]

############## SPARE_2 ##################
# set_property PACKAGE_PIN Y14 [get_ports SPARE2_1]
# set_property IOSTANDARD LVCMOS33 [get_ports SPARE2_1]
# set_property PACKAGE_PIN V18 [get_ports SPARE2_2]
# set_property IOSTANDARD LVCMOS33 [get_ports SPARE2_2]
# set_property PACKAGE_PIN W14 [get_ports SPARE2_3]
# set_property IOSTANDARD LVCMOS33 [get_ports SPARE2_3]
# set_property PACKAGE_PIN V17 [get_ports SPARE2_4]
# set_property IOSTANDARD LVCMOS33 [get_ports SPARE2_4]
# set_property PACKAGE_PIN V16 [get_ports SPARE2_5]
# set_property IOSTANDARD LVCMOS33 [get_ports SPARE2_5]
# set_property PACKAGE_PIN Y17 [get_ports SPARE2_6]
# set_property IOSTANDARD LVCMOS33 [get_ports SPARE2_6]
# set_property PACKAGE_PIN W16 [get_ports SPARE2_7]
# set_property IOSTANDARD LVCMOS33 [get_ports SPARE2_7]
# set_property PACKAGE_PIN Y16 [get_ports SPARE2_8]
# set_property IOSTANDARD LVCMOS33 [get_ports SPARE2_8]

############## IO ##################
set_property PACKAGE_PIN T11 [get_ports IO_1]
set_property IOSTANDARD LVCMOS33 [get_ports IO_1]
set_property PACKAGE_PIN T15 [get_ports IO_2]
set_property IOSTANDARD LVCMOS33 [get_ports IO_2]
set_property PACKAGE_PIN T14 [get_ports IO_3]
set_property IOSTANDARD LVCMOS33 [get_ports IO_3]
# set_property PACKAGE_PIN W13 [get_ports IO_4]
# set_property IOSTANDARD LVCMOS33 [get_ports IO_4]

#IO_5
#set_property PACKAGE_PIN V12 [get_ports high_switch_elevator] 
#set_property IOSTANDARD LVCMOS33 [get_ports high_switch_elevator] 
#IO_6
#set_property PACKAGE_PIN R18 [get_ports low_switch_elevator] 
#set_property IOSTANDARD LVCMOS33 [get_ports low_switch_elevator]
#IO_7
set_property PACKAGE_PIN T17 [get_ports led_out_0] 
set_property IOSTANDARD LVCMOS33 [get_ports led_out_0]

############## STEPPER ##################
#set_property PACKAGE_PIN T10 [get_ports DIR_1]
#set_property IOSTANDARD LVCMOS33 [get_ports DIR_1]
#set_property PACKAGE_PIN W15 [get_ports STEP_1]
#set_property IOSTANDARD LVCMOS33 [get_ports STEP_1]
#set_property PACKAGE_PIN V15 [get_ports ENA_1]
#set_property IOSTANDARD LVCMOS33 [get_ports ENA_1]

# set_property PACKAGE_PIN R14 [get_ports DIR2]
# set_property IOSTANDARD LVCMOS33 [get_ports DIR2]
# set_property PACKAGE_PIN P14 [get_ports STP2]
# set_property IOSTANDARD LVCMOS33 [get_ports STP2]
# set_property PACKAGE_PIN U15 [get_ports EN_DRIVER_2]
# set_property IOSTANDARD LVCMOS33 [get_ports EN_DRIVER_2]

#set_property PACKAGE_PIN U14 [get_ports MS1]
#set_property IOSTANDARD LVCMOS33 [get_ports MS1]
#set_property PACKAGE_PIN U13 [get_ports MS2]
#set_property IOSTANDARD LVCMOS33 [get_ports MS2]
#set_property PACKAGE_PIN T12 [get_ports MS3]
#set_property IOSTANDARD LVCMOS33 [get_ports MS3]

############## AX ##################
set_property PACKAGE_PIN V13 [get_ports UART_IO]
set_property IOSTANDARD LVCMOS33 [get_ports UART_IO]

set_property PACKAGE_PIN U12 [get_ports DIR_o_0]
set_property IOSTANDARD LVCMOS33 [get_ports DIR_o_0]


##################### HDMI ########################

#set_property PACKAGE_PIN U19 [get_ports HDMI1_CLK_N]
#set_property PACKAGE_PIN U18 [get_ports HDMI1_CLK_P]
#set_property PACKAGE_PIN W20 [get_ports HDMI1_D0_N]
#set_property PACKAGE_PIN V20 [get_ports HDMI1_D0_P]
#set_property PACKAGE_PIN U20 [get_ports HDMI1_D1_N]
#set_property PACKAGE_PIN T20 [get_ports HDMI1_D1_P]
#set_property PACKAGE_PIN P20 [get_ports HDMI1_D2_N]
#set_property PACKAGE_PIN N20 [get_ports HDMI1_D2_P]
#set_property PACKAGE_PIN P19 [get_ports HDMI1_HPD]
#set_property PACKAGE_PIN R19 [get_ports HDMI1_I2C_SCL]
#set_property PACKAGE_PIN T19 [get_ports HDMI1_I2C_SDA]


#set_property IOSTANDARD TMDS_33 [get_ports HDMI1_CLK_N]
#set_property IOSTANDARD TMDS_33 [get_ports HDMI1_CLK_P]
#set_property IOSTANDARD TMDS_33 [get_ports HDMI1_D0_N]
#set_property IOSTANDARD TMDS_33 [get_ports HDMI1_D0_P]
#set_property IOSTANDARD TMDS_33 [get_ports HDMI1_D1_N]
#set_property IOSTANDARD TMDS_33 [get_ports HDMI1_D1_P]
#set_property IOSTANDARD TMDS_33 [get_ports HDMI1_D2_N]
#set_property IOSTANDARD TMDS_33 [get_ports HDMI1_D2_P]
#set_property IOSTANDARD LVCMOS33 [get_ports HDMI1_HPD]
#set_property IOSTANDARD LVCMOS33 [get_ports HDMI1_I2C_SCL]
#set_property IOSTANDARD LVCMOS33 [get_ports HDMI1_I2C_SDA]

#####################ethernet port 0#############################
#set_property PACKAGE_PIN M17 [get_ports ENET0_GMII_RXD_0[3]]
#set_property PACKAGE_PIN M18 [get_ports ENET0_GMII_RXD_0[2]]
#set_property PACKAGE_PIN K14 [get_ports ENET0_GMII_RXD_0[1]]
#set_property PACKAGE_PIN J14 [get_ports ENET0_GMII_RXD_0[0]]
#set_property PACKAGE_PIN K17 [get_ports ENET0_GMII_TX_CLK_0]
#set_property PACKAGE_PIN K18 [get_ports ENET0_GMII_RX_DV_0]
#set_property PACKAGE_PIN N15 [get_ports ENET0_GMII_TXD_0[3]]
#set_property PACKAGE_PIN M15 [get_ports ENET0_GMII_TXD_0[2]]
#set_property PACKAGE_PIN L15 [get_ports ENET0_GMII_TXD_0[1]]
#set_property PACKAGE_PIN M14 [get_ports ENET0_GMII_TXD_0[0]]
#set_property PACKAGE_PIN L14 [get_ports ENET0_GMII_RX_CLK_0]
#set_property PACKAGE_PIN N16 [get_ports ENET0_GMII_TX_EN_0]
#set_property PACKAGE_PIN H20 [get_ports ETH_RESET]
#set_property PACKAGE_PIN G14 [get_ports MDIO_ETHERNET_0_0_mdc]
#set_property PACKAGE_PIN J15 [get_ports MDIO_ETHERNET_0_0_mdio_io]

#set_property IOSTANDARD LVCMOS33 [get_ports ENET0_GMII_RXD_0[3]]
#set_property IOSTANDARD LVCMOS33 [get_ports ENET0_GMII_RXD_0[2]]
#set_property IOSTANDARD LVCMOS33 [get_ports ENET0_GMII_RXD_0[1]]
#set_property IOSTANDARD LVCMOS33 [get_ports ENET0_GMII_RXD_0[0]]
#set_property IOSTANDARD LVCMOS33 [get_ports ENET0_GMII_TXD_0[3]]
#set_property IOSTANDARD LVCMOS33 [get_ports ENET0_GMII_TXD_0[2]]
#set_property IOSTANDARD LVCMOS33 [get_ports ENET0_GMII_TXD_0[1]]
#set_property IOSTANDARD LVCMOS33 [get_ports ENET0_GMII_TXD_0[0]]
#set_property IOSTANDARD LVCMOS33 [get_ports ENET0_GMII_TX_EN_0]
#set_property IOSTANDARD LVCMOS33 [get_ports ETH_RESET]
#set_property IOSTANDARD LVCMOS33 [get_ports ENET0_GMII_TX_CLK_0]
#set_property IOSTANDARD LVCMOS33 [get_ports ENET0_GMII_RX_CLK_0]
#set_property IOSTANDARD LVCMOS33 [get_ports ENET0_GMII_RX_DV_0]
#set_property IOSTANDARD LVCMOS33 [get_ports MDIO_ETHERNET_0_0_mdc]
#set_property IOSTANDARD LVCMOS33 [get_ports MDIO_ETHERNET_0_0_mdio_io]

set_property PACKAGE_PIN G14 [get_ports MDIO_ETHERNET_0_0_mdc]
set_property IOSTANDARD LVCMOS33 [get_ports MDIO_ETHERNET_0_0_mdc]

set_property PACKAGE_PIN J15 [get_ports MDIO_ETHERNET_0_0_mdio_io]
set_property IOSTANDARD LVCMOS33 [get_ports MDIO_ETHERNET_0_0_mdio_io]


# Horloges et validation MII
set_property PACKAGE_PIN L14 [get_ports ENET0_GMII_TX_CLK_0]
set_property IOSTANDARD LVCMOS33 [get_ports ENET0_GMII_TX_CLK_0]
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets ENET0_GMII_TX_CLK_0_IBUF]

set_property PACKAGE_PIN K17 [get_ports ENET0_GMII_RX_CLK_0]
set_property IOSTANDARD LVCMOS33 [get_ports ENET0_GMII_RX_CLK_0]

set_property PACKAGE_PIN N16 [get_ports ENET0_GMII_TX_EN_0]
set_property IOSTANDARD LVCMOS33 [get_ports ENET0_GMII_TX_EN_0]

set_property PACKAGE_PIN K18 [get_ports ENET0_GMII_RX_DV_0]
set_property IOSTANDARD LVCMOS33 [get_ports ENET0_GMII_RX_DV_0]


# Données TX (Bits 0 à 3)
set_property PACKAGE_PIN M14 [get_ports {enet0_gmii_txd[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {enet0_gmii_txd[0]}]

set_property PACKAGE_PIN L15 [get_ports {enet0_gmii_txd[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {enet0_gmii_txd[1]}]

set_property PACKAGE_PIN M15 [get_ports {enet0_gmii_txd[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {enet0_gmii_txd[2]}]

set_property PACKAGE_PIN N15 [get_ports {enet0_gmii_txd[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {enet0_gmii_txd[3]}]


# Données RX (Bits 0 à 3)
set_property PACKAGE_PIN J14 [get_ports {enet0_gmii_rxd[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {enet0_gmii_rxd[0]}]

set_property PACKAGE_PIN K14 [get_ports {enet0_gmii_rxd[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {enet0_gmii_rxd[1]}]

set_property PACKAGE_PIN M18 [get_ports {enet0_gmii_rxd[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {enet0_gmii_rxd[2]}]

set_property PACKAGE_PIN M17 [get_ports {enet0_gmii_rxd[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {enet0_gmii_rxd[3]}]


