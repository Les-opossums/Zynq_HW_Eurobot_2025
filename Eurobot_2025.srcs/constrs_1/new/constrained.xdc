############### clock define##################

#set_property PACKAGE_PIN N18     [get_ports PL_CLK_50M]
#set_property IOSTANDARD LVCMOS33 [get_ports PL_CLK_50M]

############### key define ##################
# set_property PACKAGE_PIN P16 [get_ports PL_KEY1]
# set_property PACKAGE_PIN T12 [get_ports PL_KEY2]

# set_property IOSTANDARD LVCMOS33 [get_ports PL_KEY1]
# set_property IOSTANDARD LVCMOS33 [get_ports PL_KEY2]
############### LED define ##################
# set_property PACKAGE_PIN P15 [get_ports PL_LED1]
# set_property PACKAGE_PIN U12 [get_ports PL_LED2]

# set_property IOSTANDARD LVCMOS33 [get_ports PL_LED1]
# set_property IOSTANDARD LVCMOS33 [get_ports PL_LED2]

############## CAN ##################
set_property PACKAGE_PIN L16 [get_ports CAN1_PHY_RX_0]
set_property IOSTANDARD LVCMOS33 [get_ports CAN1_PHY_RX_0]

set_property PACKAGE_PIN L17 [get_ports CAN1_PHY_TX_0]
set_property IOSTANDARD LVCMOS33 [get_ports CAN1_PHY_TX_0]

############## AU ##################
set_property PACKAGE_PIN H15 [get_ports AU]
set_property IOSTANDARD LVCMOS33 [get_ports AU]

############## TEAM ##################
set_property PACKAGE_PIN G15 [get_ports TEAM]
set_property IOSTANDARD LVCMOS33 [get_ports TEAM]


#########################################
############## LIDAR ####################
#########################################

############## LIDAR_1 ##################
set_property PACKAGE_PIN F16 [get_ports RX_LIDAR_1]
set_property IOSTANDARD LVCMOS33 [get_ports RX_LIDAR_1]
set_property PACKAGE_PIN E19 [get_ports TX_LIDAR_1]
set_property IOSTANDARD LVCMOS33 [get_ports TX_LIDAR_1]

############## LIDAR_2 ##################
# set_property PACKAGE_PIN Y19 [get_ports RX_LIDAR_2]
# set_property IOSTANDARD LVCMOS33 [get_ports RX_LIDAR_2]
# set_property PACKAGE_PIN Y18 [get_ports TX_LIDAR_2]
# set_property IOSTANDARD LVCMOS33 [get_ports TX_LIDAR_2]

############## LIDAR_3 ##################
# set_property PACKAGE_PIN D20 [get_ports RX_LIDAR_3]
# set_property IOSTANDARD LVCMOS33 [get_ports RX_LIDAR_3]
# set_property PACKAGE_PIN B19 [get_ports TX_LIDAR_3]
# set_property IOSTANDARD LVCMOS33 [get_ports TX_LIDAR_3]

############## TIRETTE ##################
set_property PACKAGE_PIN F17 [get_ports TIRETTE]
set_property IOSTANDARD LVCMOS33 [get_ports TIRETTE]

############## I2C ##################
# set_property PACKAGE_PIN J18 [get_ports I2C_SDA]
# set_property IOSTANDARD LVCMOS33 [get_ports I2C_SDA]
# set_property PACKAGE_PIN G20 [get_ports I2C_SCL]
# set_property IOSTANDARD LVCMOS33 [get_ports I2C_SCL]

############## SERVO ##################
set_property PACKAGE_PIN P18 [get_ports SERVO_1]
set_property IOSTANDARD LVCMOS33 [get_ports SERVO_1]
set_property PACKAGE_PIN N17 [get_ports SERVO_2]
set_property IOSTANDARD LVCMOS33 [get_ports SERVO_2]
set_property PACKAGE_PIN R17 [get_ports SERVO_3]
set_property IOSTANDARD LVCMOS33 [get_ports SERVO_3]
set_property PACKAGE_PIN R16 [get_ports SERVO_4]
set_property IOSTANDARD LVCMOS33 [get_ports SERVO_4]
set_property PACKAGE_PIN T16 [get_ports SERVO_5]
set_property IOSTANDARD LVCMOS33 [get_ports SERVO_5]
set_property PACKAGE_PIN U17 [get_ports SERVO_6]
set_property IOSTANDARD LVCMOS33 [get_ports SERVO_6]
set_property PACKAGE_PIN W18 [get_ports SERVO_7]
set_property IOSTANDARD LVCMOS33 [get_ports SERVO_7]
set_property PACKAGE_PIN W19 [get_ports SERVO_8]
set_property IOSTANDARD LVCMOS33 [get_ports SERVO_8]
set_property PACKAGE_PIN H20 [get_ports SERVO_9]
set_property IOSTANDARD LVCMOS33 [get_ports SERVO_9]
set_property PACKAGE_PIN J20 [get_ports SERVO_10]
set_property IOSTANDARD LVCMOS33 [get_ports SERVO_10]
set_property PACKAGE_PIN M19 [get_ports SERVO_11]
set_property IOSTANDARD LVCMOS33 [get_ports SERVO_11]
set_property PACKAGE_PIN F20 [get_ports SERVO_12]
set_property IOSTANDARD LVCMOS33 [get_ports SERVO_12]
set_property PACKAGE_PIN G17 [get_ports SERVO_13]
set_property IOSTANDARD LVCMOS33 [get_ports SERVO_13]
set_property PACKAGE_PIN G18 [get_ports SERVO_14]
set_property IOSTANDARD LVCMOS33 [get_ports SERVO_14]
set_property PACKAGE_PIN K16 [get_ports SERVO_15]
set_property IOSTANDARD LVCMOS33 [get_ports SERVO_15]
set_property PACKAGE_PIN H18 [get_ports SERVO_16]
set_property IOSTANDARD LVCMOS33 [get_ports SERVO_16]

############## QEI ##################
set_property PACKAGE_PIN B20 [get_ports QEI_1_A]
set_property IOSTANDARD LVCMOS33 [get_ports QEI_1_A]
set_property PACKAGE_PIN C20 [get_ports QEI_1_B]
set_property IOSTANDARD LVCMOS33 [get_ports QEI_1_B]
# set_property PACKAGE_PIN J16 [get_ports QEI_1_X]
# set_property IOSTANDARD LVCMOS33 [get_ports QEI_1_X]

set_property PACKAGE_PIN F19 [get_ports QEI_2_A]
set_property IOSTANDARD LVCMOS33 [get_ports QEI_2_A]
set_property PACKAGE_PIN L20 [get_ports QEI_2_B]
set_property IOSTANDARD LVCMOS33 [get_ports QEI_2_B]
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
# set_property PACKAGE_PIN T11 [get_ports IO_1]
# set_property IOSTANDARD LVCMOS33 [get_ports IO_1]
# set_property PACKAGE_PIN T15 [get_ports IO_2]
# set_property IOSTANDARD LVCMOS33 [get_ports IO_2]
# set_property PACKAGE_PIN T14 [get_ports IO_3]
# set_property IOSTANDARD LVCMOS33 [get_ports IO_3]
# set_property PACKAGE_PIN W13 [get_ports IO_4]
# set_property IOSTANDARD LVCMOS33 [get_ports IO_4]
# set_property PACKAGE_PIN V12 [get_ports IO_5]
# set_property IOSTANDARD LVCMOS33 [get_ports IO_5]
# set_property PACKAGE_PIN R18 [get_ports IO_6]
# set_property IOSTANDARD LVCMOS33 [get_ports IO_6]
# set_property PACKAGE_PIN T17 [get_ports IO_7]
# set_property IOSTANDARD LVCMOS33 [get_ports IO_7]

############## STEPPER ##################
# set_property PACKAGE_PIN T10 [get_ports DIR1]
# set_property IOSTANDARD LVCMOS33 [get_ports DIR1]
# set_property PACKAGE_PIN W15 [get_ports STP1]
# set_property IOSTANDARD LVCMOS33 [get_ports STP1]
# set_property PACKAGE_PIN V15 [get_ports EN_DRIVER_1]
# set_property IOSTANDARD LVCMOS33 [get_ports EN_DRIVER_1]

# set_property PACKAGE_PIN R14 [get_ports DIR2]
# set_property IOSTANDARD LVCMOS33 [get_ports DIR2]
# set_property PACKAGE_PIN P14 [get_ports STP2]
# set_property IOSTANDARD LVCMOS33 [get_ports STP2]
# set_property PACKAGE_PIN U15 [get_ports EN_DRIVER_2]
# set_property IOSTANDARD LVCMOS33 [get_ports EN_DRIVER_2]

# set_property PACKAGE_PIN U14 [get_ports MS1]
# set_property IOSTANDARD LVCMOS33 [get_ports MS1]
# set_property PACKAGE_PIN U13 [get_ports MS2]
# set_property IOSTANDARD LVCMOS33 [get_ports MS2]
# set_property PACKAGE_PIN T12 [get_ports MS3]
# set_property IOSTANDARD LVCMOS33 [get_ports MS3]

############## AX ##################
# set_property PACKAGE_PIN V13 [get_ports AX_DATA]
# set_property IOSTANDARD LVCMOS33 [get_ports AX_DATA]

# set_property PACKAGE_PIN U12 [get_ports AX_DIR]
# set_property IOSTANDARD LVCMOS33 [get_ports AX_DIR]




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
#set_property PACKAGE_PIN M17 [get_ports ETH_RXD3]
#set_property PACKAGE_PIN M18 [get_ports ETH_RXD2]
#set_property PACKAGE_PIN K14 [get_ports ETH_RXD1]
#set_property PACKAGE_PIN J14 [get_ports ETH_RXD0]
#set_property PACKAGE_PIN K17 [get_ports ETH_RXCK]
#set_property PACKAGE_PIN K18 [get_ports ETH_RXDV]
#set_property PACKAGE_PIN N15 [get_ports ETH_TXD3]
#set_property PACKAGE_PIN M15 [get_ports ETH_TXD2]
#set_property PACKAGE_PIN L15 [get_ports ETH_TXD1]
#set_property PACKAGE_PIN M14 [get_ports ETH_TXD0]
#set_property PACKAGE_PIN L14 [get_ports ETH_TXCK]
#set_property PACKAGE_PIN N16 [get_ports ETH_TXCTL]
#set_property PACKAGE_PIN H20 [get_ports ETH_nRST]
#set_property PACKAGE_PIN G14 [get_ports ETH_MDC]
#set_property PACKAGE_PIN J15 [get_ports ETH_MDIO]

#set_property IOSTANDARD LVCMOS33 [get_ports ETH_RXD3]
#set_property IOSTANDARD LVCMOS33 [get_ports ETH_RXD2]
#set_property IOSTANDARD LVCMOS33 [get_ports ETH_RXD1]
#set_property IOSTANDARD LVCMOS33 [get_ports ETH_RXD0]
#set_property IOSTANDARD LVCMOS33 [get_ports ETH_TXD3]
#set_property IOSTANDARD LVCMOS33 [get_ports ETH_TXD2]
#set_property IOSTANDARD LVCMOS33 [get_ports ETH_TXD1]
#set_property IOSTANDARD LVCMOS33 [get_ports ETH_TXD0]
#set_property IOSTANDARD LVCMOS33 [get_ports ETH_TXCTL]
#set_property IOSTANDARD LVCMOS33 [get_ports ETH_nRST]
#set_property IOSTANDARD LVCMOS33 [get_ports ETH_RXCK]
#set_property IOSTANDARD LVCMOS33 [get_ports ETH_TXCK]
#set_property IOSTANDARD LVCMOS33 [get_ports ETH_RXDV]
#set_property IOSTANDARD LVCMOS33 [get_ports ETH_MDC]
#set_property IOSTANDARD LVCMOS33 [get_ports ETH_MDIO]
 

