// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sat Aug 16 09:36:09 2025
// Host        : martinH running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top Zynq_block_design_Opossum_lidar_0_1 -prefix
//               Zynq_block_design_Opossum_lidar_0_1_ Zynq_block_design_Opossum_lidar_0_1_sim_netlist.v
// Design      : Zynq_block_design_Opossum_lidar_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Zynq_block_design_Opossum_lidar_0_1,lidar_top_for_dma,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "package_project" *) 
(* x_core_info = "lidar_top_for_dma,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module Zynq_block_design_Opossum_lidar_0_1
   (clk,
    rst,
    uart_rx_in,
    m_axis_tdata,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tlast,
    m_axis_tkeep);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF m_axis, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN Zynq_block_design_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
  input uart_rx_in;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TDATA" *) (* x_interface_parameter = "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN Zynq_block_design_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) output [31:0]m_axis_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TVALID" *) output m_axis_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TREADY" *) input m_axis_tready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TLAST" *) output m_axis_tlast;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TKEEP" *) output [3:0]m_axis_tkeep;

  wire \<const1> ;
  wire clk;
  wire [31:0]m_axis_tdata;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire rst;
  wire uart_rx_in;

  assign m_axis_tkeep[3] = \<const1> ;
  assign m_axis_tkeep[2] = \<const1> ;
  assign m_axis_tkeep[1] = \<const1> ;
  assign m_axis_tkeep[0] = \<const1> ;
  Zynq_block_design_Opossum_lidar_0_1_lidar_top_for_dma U0
       (.clk(clk),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(m_axis_tready),
        .m_axis_tvalid(m_axis_tvalid),
        .rst(rst),
        .uart_rx_in(uart_rx_in));
  VCC VCC
       (.P(\<const1> ));
endmodule

module Zynq_block_design_Opossum_lidar_0_1_lidar_filter
   (m_axis_tvalid,
    rst_0,
    p_tready,
    tlast_reg1_out,
    E,
    m_axis_tdata,
    clk,
    rst,
    m_axis_tready,
    Q,
    p_tvalid,
    in2);
  output m_axis_tvalid;
  output rst_0;
  output p_tready;
  output tlast_reg1_out;
  output [0:0]E;
  output [31:0]m_axis_tdata;
  input clk;
  input rst;
  input m_axis_tready;
  input [3:0]Q;
  input p_tvalid;
  input [31:0]in2;

  wire [0:0]E;
  wire \FSM_onehot_state[0]_i_1_n_0 ;
  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_1_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[1] ;
  wire [3:0]Q;
  wire axis_tready_i_1_n_0;
  wire clk;
  wire [31:0]in2;
  wire [31:0]m_axis_tdata;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire m_tvalid_i;
  wire m_tvalid_i_i_1_n_0;
  wire [7:0]p_1_in;
  wire p_tready;
  wire p_tvalid;
  wire rst;
  wire rst_0;
  wire \sample_reg[0]_i_1_n_0 ;
  wire \sample_reg[10]_i_1_n_0 ;
  wire \sample_reg[11]_i_1_n_0 ;
  wire \sample_reg[12]_i_1_n_0 ;
  wire \sample_reg[13]_i_1_n_0 ;
  wire \sample_reg[14]_i_1_n_0 ;
  wire \sample_reg[15]_i_1_n_0 ;
  wire \sample_reg[15]_i_2_n_0 ;
  wire \sample_reg[16]_i_1_n_0 ;
  wire \sample_reg[17]_i_1_n_0 ;
  wire \sample_reg[18]_i_1_n_0 ;
  wire \sample_reg[19]_i_1_n_0 ;
  wire \sample_reg[1]_i_1_n_0 ;
  wire \sample_reg[20]_i_1_n_0 ;
  wire \sample_reg[21]_i_1_n_0 ;
  wire \sample_reg[22]_i_1_n_0 ;
  wire \sample_reg[23]_i_1_n_0 ;
  wire \sample_reg[24]_i_1_n_0 ;
  wire \sample_reg[25]_i_1_n_0 ;
  wire \sample_reg[26]_i_1_n_0 ;
  wire \sample_reg[27]_i_1_n_0 ;
  wire \sample_reg[28]_i_1_n_0 ;
  wire \sample_reg[29]_i_1_n_0 ;
  wire \sample_reg[2]_i_1_n_0 ;
  wire \sample_reg[30]_i_1_n_0 ;
  wire \sample_reg[31]_i_1_n_0 ;
  wire \sample_reg[31]_i_2_n_0 ;
  wire \sample_reg[31]_i_3_n_0 ;
  wire \sample_reg[31]_i_4_n_0 ;
  wire \sample_reg[3]_i_1_n_0 ;
  wire \sample_reg[4]_i_1_n_0 ;
  wire \sample_reg[5]_i_1_n_0 ;
  wire \sample_reg[6]_i_1_n_0 ;
  wire \sample_reg[7]_i_1_n_0 ;
  wire \sample_reg[8]_i_1_n_0 ;
  wire \sample_reg[9]_i_1_n_0 ;
  wire \sample_reg_reg_n_0_[0] ;
  wire \sample_reg_reg_n_0_[16] ;
  wire \sample_reg_reg_n_0_[17] ;
  wire \sample_reg_reg_n_0_[18] ;
  wire \sample_reg_reg_n_0_[19] ;
  wire \sample_reg_reg_n_0_[1] ;
  wire \sample_reg_reg_n_0_[20] ;
  wire \sample_reg_reg_n_0_[21] ;
  wire \sample_reg_reg_n_0_[22] ;
  wire \sample_reg_reg_n_0_[23] ;
  wire \sample_reg_reg_n_0_[24] ;
  wire \sample_reg_reg_n_0_[25] ;
  wire \sample_reg_reg_n_0_[26] ;
  wire \sample_reg_reg_n_0_[27] ;
  wire \sample_reg_reg_n_0_[28] ;
  wire \sample_reg_reg_n_0_[29] ;
  wire \sample_reg_reg_n_0_[2] ;
  wire \sample_reg_reg_n_0_[30] ;
  wire \sample_reg_reg_n_0_[31] ;
  wire \sample_reg_reg_n_0_[3] ;
  wire \sample_reg_reg_n_0_[4] ;
  wire \sample_reg_reg_n_0_[5] ;
  wire \sample_reg_reg_n_0_[6] ;
  wire \sample_reg_reg_n_0_[7] ;
  wire tlast_reg1_out;

  LUT5 #(
    .INIT(32'hF0F0F4C4)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(p_tvalid),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(m_tvalid_i),
        .I3(m_axis_tready),
        .I4(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\FSM_onehot_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hCCCCC888)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(p_tvalid),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(m_tvalid_i),
        .I3(m_axis_tready),
        .I4(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFF0070)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(p_tvalid),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(m_tvalid_i),
        .I3(m_axis_tready),
        .I4(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\FSM_onehot_state[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "idle:001,filter_data:010,send_data:100," *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_state[0]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .S(rst_0));
  (* FSM_ENCODED_STATES = "idle:001,filter_data:010,send_data:100," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_state[1]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[1] ),
        .R(rst_0));
  (* FSM_ENCODED_STATES = "idle:001,filter_data:010,send_data:100," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_state[2]_i_1_n_0 ),
        .Q(m_tvalid_i),
        .R(rst_0));
  LUT6 #(
    .INIT(64'hFDF5FCFFFDF5FC00)) 
    axis_tready_i_1
       (.I0(p_tvalid),
        .I1(m_axis_tready),
        .I2(\FSM_onehot_state_reg_n_0_[1] ),
        .I3(m_tvalid_i),
        .I4(\FSM_onehot_state_reg_n_0_[0] ),
        .I5(p_tready),
        .O(axis_tready_i_1_n_0));
  FDSE #(
    .INIT(1'b1)) 
    axis_tready_reg
       (.C(clk),
        .CE(1'b1),
        .D(axis_tready_i_1_n_0),
        .Q(p_tready),
        .S(rst_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \beat_counter[3]_i_1 
       (.I0(m_axis_tready),
        .I1(m_axis_tvalid),
        .O(E));
  LUT1 #(
    .INIT(2'h1)) 
    \m_tdata_i[31]_i_1 
       (.I0(rst),
        .O(rst_0));
  FDRE #(
    .INIT(1'b0)) 
    \m_tdata_i_reg[0] 
       (.C(clk),
        .CE(m_tvalid_i),
        .D(\sample_reg_reg_n_0_[0] ),
        .Q(m_axis_tdata[0]),
        .R(rst_0));
  FDRE #(
    .INIT(1'b0)) 
    \m_tdata_i_reg[10] 
       (.C(clk),
        .CE(m_tvalid_i),
        .D(p_1_in[2]),
        .Q(m_axis_tdata[10]),
        .R(rst_0));
  FDRE #(
    .INIT(1'b0)) 
    \m_tdata_i_reg[11] 
       (.C(clk),
        .CE(m_tvalid_i),
        .D(p_1_in[3]),
        .Q(m_axis_tdata[11]),
        .R(rst_0));
  FDRE #(
    .INIT(1'b0)) 
    \m_tdata_i_reg[12] 
       (.C(clk),
        .CE(m_tvalid_i),
        .D(p_1_in[4]),
        .Q(m_axis_tdata[12]),
        .R(rst_0));
  FDRE #(
    .INIT(1'b0)) 
    \m_tdata_i_reg[13] 
       (.C(clk),
        .CE(m_tvalid_i),
        .D(p_1_in[5]),
        .Q(m_axis_tdata[13]),
        .R(rst_0));
  FDRE #(
    .INIT(1'b0)) 
    \m_tdata_i_reg[14] 
       (.C(clk),
        .CE(m_tvalid_i),
        .D(p_1_in[6]),
        .Q(m_axis_tdata[14]),
        .R(rst_0));
  FDRE #(
    .INIT(1'b0)) 
    \m_tdata_i_reg[15] 
       (.C(clk),
        .CE(m_tvalid_i),
        .D(p_1_in[7]),
        .Q(m_axis_tdata[15]),
        .R(rst_0));
  FDRE #(
    .INIT(1'b0)) 
    \m_tdata_i_reg[16] 
       (.C(clk),
        .CE(m_tvalid_i),
        .D(\sample_reg_reg_n_0_[16] ),
        .Q(m_axis_tdata[16]),
        .R(rst_0));
  FDRE #(
    .INIT(1'b0)) 
    \m_tdata_i_reg[17] 
       (.C(clk),
        .CE(m_tvalid_i),
        .D(\sample_reg_reg_n_0_[17] ),
        .Q(m_axis_tdata[17]),
        .R(rst_0));
  FDRE #(
    .INIT(1'b0)) 
    \m_tdata_i_reg[18] 
       (.C(clk),
        .CE(m_tvalid_i),
        .D(\sample_reg_reg_n_0_[18] ),
        .Q(m_axis_tdata[18]),
        .R(rst_0));
  FDRE #(
    .INIT(1'b0)) 
    \m_tdata_i_reg[19] 
       (.C(clk),
        .CE(m_tvalid_i),
        .D(\sample_reg_reg_n_0_[19] ),
        .Q(m_axis_tdata[19]),
        .R(rst_0));
  FDRE #(
    .INIT(1'b0)) 
    \m_tdata_i_reg[1] 
       (.C(clk),
        .CE(m_tvalid_i),
        .D(\sample_reg_reg_n_0_[1] ),
        .Q(m_axis_tdata[1]),
        .R(rst_0));
  FDRE #(
    .INIT(1'b0)) 
    \m_tdata_i_reg[20] 
       (.C(clk),
        .CE(m_tvalid_i),
        .D(\sample_reg_reg_n_0_[20] ),
        .Q(m_axis_tdata[20]),
        .R(rst_0));
  FDRE #(
    .INIT(1'b0)) 
    \m_tdata_i_reg[21] 
       (.C(clk),
        .CE(m_tvalid_i),
        .D(\sample_reg_reg_n_0_[21] ),
        .Q(m_axis_tdata[21]),
        .R(rst_0));
  FDRE #(
    .INIT(1'b0)) 
    \m_tdata_i_reg[22] 
       (.C(clk),
        .CE(m_tvalid_i),
        .D(\sample_reg_reg_n_0_[22] ),
        .Q(m_axis_tdata[22]),
        .R(rst_0));
  FDRE #(
    .INIT(1'b0)) 
    \m_tdata_i_reg[23] 
       (.C(clk),
        .CE(m_tvalid_i),
        .D(\sample_reg_reg_n_0_[23] ),
        .Q(m_axis_tdata[23]),
        .R(rst_0));
  FDRE #(
    .INIT(1'b0)) 
    \m_tdata_i_reg[24] 
       (.C(clk),
        .CE(m_tvalid_i),
        .D(\sample_reg_reg_n_0_[24] ),
        .Q(m_axis_tdata[24]),
        .R(rst_0));
  FDRE #(
    .INIT(1'b0)) 
    \m_tdata_i_reg[25] 
       (.C(clk),
        .CE(m_tvalid_i),
        .D(\sample_reg_reg_n_0_[25] ),
        .Q(m_axis_tdata[25]),
        .R(rst_0));
  FDRE #(
    .INIT(1'b0)) 
    \m_tdata_i_reg[26] 
       (.C(clk),
        .CE(m_tvalid_i),
        .D(\sample_reg_reg_n_0_[26] ),
        .Q(m_axis_tdata[26]),
        .R(rst_0));
  FDRE #(
    .INIT(1'b0)) 
    \m_tdata_i_reg[27] 
       (.C(clk),
        .CE(m_tvalid_i),
        .D(\sample_reg_reg_n_0_[27] ),
        .Q(m_axis_tdata[27]),
        .R(rst_0));
  FDRE #(
    .INIT(1'b0)) 
    \m_tdata_i_reg[28] 
       (.C(clk),
        .CE(m_tvalid_i),
        .D(\sample_reg_reg_n_0_[28] ),
        .Q(m_axis_tdata[28]),
        .R(rst_0));
  FDRE #(
    .INIT(1'b0)) 
    \m_tdata_i_reg[29] 
       (.C(clk),
        .CE(m_tvalid_i),
        .D(\sample_reg_reg_n_0_[29] ),
        .Q(m_axis_tdata[29]),
        .R(rst_0));
  FDRE #(
    .INIT(1'b0)) 
    \m_tdata_i_reg[2] 
       (.C(clk),
        .CE(m_tvalid_i),
        .D(\sample_reg_reg_n_0_[2] ),
        .Q(m_axis_tdata[2]),
        .R(rst_0));
  FDRE #(
    .INIT(1'b0)) 
    \m_tdata_i_reg[30] 
       (.C(clk),
        .CE(m_tvalid_i),
        .D(\sample_reg_reg_n_0_[30] ),
        .Q(m_axis_tdata[30]),
        .R(rst_0));
  FDRE #(
    .INIT(1'b0)) 
    \m_tdata_i_reg[31] 
       (.C(clk),
        .CE(m_tvalid_i),
        .D(\sample_reg_reg_n_0_[31] ),
        .Q(m_axis_tdata[31]),
        .R(rst_0));
  FDRE #(
    .INIT(1'b0)) 
    \m_tdata_i_reg[3] 
       (.C(clk),
        .CE(m_tvalid_i),
        .D(\sample_reg_reg_n_0_[3] ),
        .Q(m_axis_tdata[3]),
        .R(rst_0));
  FDRE #(
    .INIT(1'b0)) 
    \m_tdata_i_reg[4] 
       (.C(clk),
        .CE(m_tvalid_i),
        .D(\sample_reg_reg_n_0_[4] ),
        .Q(m_axis_tdata[4]),
        .R(rst_0));
  FDRE #(
    .INIT(1'b0)) 
    \m_tdata_i_reg[5] 
       (.C(clk),
        .CE(m_tvalid_i),
        .D(\sample_reg_reg_n_0_[5] ),
        .Q(m_axis_tdata[5]),
        .R(rst_0));
  FDRE #(
    .INIT(1'b0)) 
    \m_tdata_i_reg[6] 
       (.C(clk),
        .CE(m_tvalid_i),
        .D(\sample_reg_reg_n_0_[6] ),
        .Q(m_axis_tdata[6]),
        .R(rst_0));
  FDRE #(
    .INIT(1'b0)) 
    \m_tdata_i_reg[7] 
       (.C(clk),
        .CE(m_tvalid_i),
        .D(\sample_reg_reg_n_0_[7] ),
        .Q(m_axis_tdata[7]),
        .R(rst_0));
  FDRE #(
    .INIT(1'b0)) 
    \m_tdata_i_reg[8] 
       (.C(clk),
        .CE(m_tvalid_i),
        .D(p_1_in[0]),
        .Q(m_axis_tdata[8]),
        .R(rst_0));
  FDRE #(
    .INIT(1'b0)) 
    \m_tdata_i_reg[9] 
       (.C(clk),
        .CE(m_tvalid_i),
        .D(p_1_in[1]),
        .Q(m_axis_tdata[9]),
        .R(rst_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT1 #(
    .INIT(2'h1)) 
    m_tvalid_i_i_1
       (.I0(m_axis_tready),
        .O(m_tvalid_i_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    m_tvalid_i_reg
       (.C(clk),
        .CE(m_tvalid_i),
        .D(m_tvalid_i_i_1_n_0),
        .Q(m_axis_tvalid),
        .R(rst_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \sample_reg[0]_i_1 
       (.I0(\sample_reg_reg_n_0_[0] ),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(in2[0]),
        .O(\sample_reg[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \sample_reg[10]_i_1 
       (.I0(p_1_in[2]),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(in2[10]),
        .O(\sample_reg[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \sample_reg[11]_i_1 
       (.I0(p_1_in[3]),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(in2[11]),
        .O(\sample_reg[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \sample_reg[12]_i_1 
       (.I0(p_1_in[4]),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(in2[12]),
        .O(\sample_reg[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \sample_reg[13]_i_1 
       (.I0(p_1_in[5]),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(in2[13]),
        .O(\sample_reg[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \sample_reg[14]_i_1 
       (.I0(p_1_in[6]),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(in2[14]),
        .O(\sample_reg[14]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \sample_reg[15]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(p_tvalid),
        .O(\sample_reg[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \sample_reg[15]_i_2 
       (.I0(p_1_in[7]),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(in2[15]),
        .O(\sample_reg[15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sample_reg[16]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(in2[16]),
        .O(\sample_reg[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sample_reg[17]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(in2[17]),
        .O(\sample_reg[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sample_reg[18]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(in2[18]),
        .O(\sample_reg[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sample_reg[19]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(in2[19]),
        .O(\sample_reg[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \sample_reg[1]_i_1 
       (.I0(\sample_reg_reg_n_0_[1] ),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(in2[1]),
        .O(\sample_reg[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sample_reg[20]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(in2[20]),
        .O(\sample_reg[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sample_reg[21]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(in2[21]),
        .O(\sample_reg[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sample_reg[22]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(in2[22]),
        .O(\sample_reg[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sample_reg[23]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(in2[23]),
        .O(\sample_reg[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sample_reg[24]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(in2[24]),
        .O(\sample_reg[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sample_reg[25]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(in2[25]),
        .O(\sample_reg[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sample_reg[26]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(in2[26]),
        .O(\sample_reg[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sample_reg[27]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(in2[27]),
        .O(\sample_reg[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sample_reg[28]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(in2[28]),
        .O(\sample_reg[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sample_reg[29]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(in2[29]),
        .O(\sample_reg[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \sample_reg[2]_i_1 
       (.I0(\sample_reg_reg_n_0_[2] ),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(in2[2]),
        .O(\sample_reg[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sample_reg[30]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(in2[30]),
        .O(\sample_reg[30]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFD0D0D0)) 
    \sample_reg[31]_i_1 
       (.I0(\sample_reg[31]_i_3_n_0 ),
        .I1(\sample_reg[31]_i_4_n_0 ),
        .I2(\FSM_onehot_state_reg_n_0_[1] ),
        .I3(p_tvalid),
        .I4(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\sample_reg[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sample_reg[31]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(in2[31]),
        .O(\sample_reg[31]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \sample_reg[31]_i_3 
       (.I0(\sample_reg_reg_n_0_[6] ),
        .I1(\sample_reg_reg_n_0_[7] ),
        .I2(\sample_reg_reg_n_0_[0] ),
        .I3(\sample_reg_reg_n_0_[5] ),
        .O(\sample_reg[31]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \sample_reg[31]_i_4 
       (.I0(\sample_reg_reg_n_0_[3] ),
        .I1(\sample_reg_reg_n_0_[4] ),
        .I2(\sample_reg_reg_n_0_[1] ),
        .I3(\sample_reg_reg_n_0_[2] ),
        .O(\sample_reg[31]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \sample_reg[3]_i_1 
       (.I0(\sample_reg_reg_n_0_[3] ),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(in2[3]),
        .O(\sample_reg[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \sample_reg[4]_i_1 
       (.I0(\sample_reg_reg_n_0_[4] ),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(in2[4]),
        .O(\sample_reg[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \sample_reg[5]_i_1 
       (.I0(\sample_reg_reg_n_0_[5] ),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(in2[5]),
        .O(\sample_reg[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \sample_reg[6]_i_1 
       (.I0(\sample_reg_reg_n_0_[6] ),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(in2[6]),
        .O(\sample_reg[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \sample_reg[7]_i_1 
       (.I0(\sample_reg_reg_n_0_[7] ),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(in2[7]),
        .O(\sample_reg[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \sample_reg[8]_i_1 
       (.I0(p_1_in[0]),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(in2[8]),
        .O(\sample_reg[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \sample_reg[9]_i_1 
       (.I0(p_1_in[1]),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(in2[9]),
        .O(\sample_reg[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sample_reg_reg[0] 
       (.C(clk),
        .CE(\sample_reg[15]_i_1_n_0 ),
        .D(\sample_reg[0]_i_1_n_0 ),
        .Q(\sample_reg_reg_n_0_[0] ),
        .R(rst_0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_reg_reg[10] 
       (.C(clk),
        .CE(\sample_reg[15]_i_1_n_0 ),
        .D(\sample_reg[10]_i_1_n_0 ),
        .Q(p_1_in[2]),
        .R(rst_0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_reg_reg[11] 
       (.C(clk),
        .CE(\sample_reg[15]_i_1_n_0 ),
        .D(\sample_reg[11]_i_1_n_0 ),
        .Q(p_1_in[3]),
        .R(rst_0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_reg_reg[12] 
       (.C(clk),
        .CE(\sample_reg[15]_i_1_n_0 ),
        .D(\sample_reg[12]_i_1_n_0 ),
        .Q(p_1_in[4]),
        .R(rst_0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_reg_reg[13] 
       (.C(clk),
        .CE(\sample_reg[15]_i_1_n_0 ),
        .D(\sample_reg[13]_i_1_n_0 ),
        .Q(p_1_in[5]),
        .R(rst_0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_reg_reg[14] 
       (.C(clk),
        .CE(\sample_reg[15]_i_1_n_0 ),
        .D(\sample_reg[14]_i_1_n_0 ),
        .Q(p_1_in[6]),
        .R(rst_0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_reg_reg[15] 
       (.C(clk),
        .CE(\sample_reg[15]_i_1_n_0 ),
        .D(\sample_reg[15]_i_2_n_0 ),
        .Q(p_1_in[7]),
        .R(rst_0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_reg_reg[16] 
       (.C(clk),
        .CE(\sample_reg[31]_i_1_n_0 ),
        .D(\sample_reg[16]_i_1_n_0 ),
        .Q(\sample_reg_reg_n_0_[16] ),
        .R(rst_0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_reg_reg[17] 
       (.C(clk),
        .CE(\sample_reg[31]_i_1_n_0 ),
        .D(\sample_reg[17]_i_1_n_0 ),
        .Q(\sample_reg_reg_n_0_[17] ),
        .R(rst_0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_reg_reg[18] 
       (.C(clk),
        .CE(\sample_reg[31]_i_1_n_0 ),
        .D(\sample_reg[18]_i_1_n_0 ),
        .Q(\sample_reg_reg_n_0_[18] ),
        .R(rst_0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_reg_reg[19] 
       (.C(clk),
        .CE(\sample_reg[31]_i_1_n_0 ),
        .D(\sample_reg[19]_i_1_n_0 ),
        .Q(\sample_reg_reg_n_0_[19] ),
        .R(rst_0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_reg_reg[1] 
       (.C(clk),
        .CE(\sample_reg[15]_i_1_n_0 ),
        .D(\sample_reg[1]_i_1_n_0 ),
        .Q(\sample_reg_reg_n_0_[1] ),
        .R(rst_0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_reg_reg[20] 
       (.C(clk),
        .CE(\sample_reg[31]_i_1_n_0 ),
        .D(\sample_reg[20]_i_1_n_0 ),
        .Q(\sample_reg_reg_n_0_[20] ),
        .R(rst_0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_reg_reg[21] 
       (.C(clk),
        .CE(\sample_reg[31]_i_1_n_0 ),
        .D(\sample_reg[21]_i_1_n_0 ),
        .Q(\sample_reg_reg_n_0_[21] ),
        .R(rst_0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_reg_reg[22] 
       (.C(clk),
        .CE(\sample_reg[31]_i_1_n_0 ),
        .D(\sample_reg[22]_i_1_n_0 ),
        .Q(\sample_reg_reg_n_0_[22] ),
        .R(rst_0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_reg_reg[23] 
       (.C(clk),
        .CE(\sample_reg[31]_i_1_n_0 ),
        .D(\sample_reg[23]_i_1_n_0 ),
        .Q(\sample_reg_reg_n_0_[23] ),
        .R(rst_0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_reg_reg[24] 
       (.C(clk),
        .CE(\sample_reg[31]_i_1_n_0 ),
        .D(\sample_reg[24]_i_1_n_0 ),
        .Q(\sample_reg_reg_n_0_[24] ),
        .R(rst_0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_reg_reg[25] 
       (.C(clk),
        .CE(\sample_reg[31]_i_1_n_0 ),
        .D(\sample_reg[25]_i_1_n_0 ),
        .Q(\sample_reg_reg_n_0_[25] ),
        .R(rst_0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_reg_reg[26] 
       (.C(clk),
        .CE(\sample_reg[31]_i_1_n_0 ),
        .D(\sample_reg[26]_i_1_n_0 ),
        .Q(\sample_reg_reg_n_0_[26] ),
        .R(rst_0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_reg_reg[27] 
       (.C(clk),
        .CE(\sample_reg[31]_i_1_n_0 ),
        .D(\sample_reg[27]_i_1_n_0 ),
        .Q(\sample_reg_reg_n_0_[27] ),
        .R(rst_0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_reg_reg[28] 
       (.C(clk),
        .CE(\sample_reg[31]_i_1_n_0 ),
        .D(\sample_reg[28]_i_1_n_0 ),
        .Q(\sample_reg_reg_n_0_[28] ),
        .R(rst_0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_reg_reg[29] 
       (.C(clk),
        .CE(\sample_reg[31]_i_1_n_0 ),
        .D(\sample_reg[29]_i_1_n_0 ),
        .Q(\sample_reg_reg_n_0_[29] ),
        .R(rst_0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_reg_reg[2] 
       (.C(clk),
        .CE(\sample_reg[15]_i_1_n_0 ),
        .D(\sample_reg[2]_i_1_n_0 ),
        .Q(\sample_reg_reg_n_0_[2] ),
        .R(rst_0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_reg_reg[30] 
       (.C(clk),
        .CE(\sample_reg[31]_i_1_n_0 ),
        .D(\sample_reg[30]_i_1_n_0 ),
        .Q(\sample_reg_reg_n_0_[30] ),
        .R(rst_0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_reg_reg[31] 
       (.C(clk),
        .CE(\sample_reg[31]_i_1_n_0 ),
        .D(\sample_reg[31]_i_2_n_0 ),
        .Q(\sample_reg_reg_n_0_[31] ),
        .R(rst_0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_reg_reg[3] 
       (.C(clk),
        .CE(\sample_reg[15]_i_1_n_0 ),
        .D(\sample_reg[3]_i_1_n_0 ),
        .Q(\sample_reg_reg_n_0_[3] ),
        .R(rst_0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_reg_reg[4] 
       (.C(clk),
        .CE(\sample_reg[15]_i_1_n_0 ),
        .D(\sample_reg[4]_i_1_n_0 ),
        .Q(\sample_reg_reg_n_0_[4] ),
        .R(rst_0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_reg_reg[5] 
       (.C(clk),
        .CE(\sample_reg[15]_i_1_n_0 ),
        .D(\sample_reg[5]_i_1_n_0 ),
        .Q(\sample_reg_reg_n_0_[5] ),
        .R(rst_0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_reg_reg[6] 
       (.C(clk),
        .CE(\sample_reg[15]_i_1_n_0 ),
        .D(\sample_reg[6]_i_1_n_0 ),
        .Q(\sample_reg_reg_n_0_[6] ),
        .R(rst_0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_reg_reg[7] 
       (.C(clk),
        .CE(\sample_reg[15]_i_1_n_0 ),
        .D(\sample_reg[7]_i_1_n_0 ),
        .Q(\sample_reg_reg_n_0_[7] ),
        .R(rst_0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_reg_reg[8] 
       (.C(clk),
        .CE(\sample_reg[15]_i_1_n_0 ),
        .D(\sample_reg[8]_i_1_n_0 ),
        .Q(p_1_in[0]),
        .R(rst_0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_reg_reg[9] 
       (.C(clk),
        .CE(\sample_reg[15]_i_1_n_0 ),
        .D(\sample_reg[9]_i_1_n_0 ),
        .Q(p_1_in[1]),
        .R(rst_0));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    tlast_reg_i_1
       (.I0(m_axis_tvalid),
        .I1(m_axis_tready),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(tlast_reg1_out));
endmodule

module Zynq_block_design_Opossum_lidar_0_1_lidar_parser_ld06
   (p_tvalid,
    Q,
    \state_reg[1]_0 ,
    \crc_s_reg[7]_0 ,
    \crc_s_reg[6]_0 ,
    in2,
    SR,
    clk,
    rst,
    \state_reg[3]_0 ,
    byte_in_valid,
    byte_in,
    \ang_out_reg[0]_0 ,
    E,
    \crc_s_reg[0]_0 ,
    \crc_s_reg[7]_1 ,
    p_tready);
  output p_tvalid;
  output [0:0]Q;
  output \state_reg[1]_0 ;
  output [7:0]\crc_s_reg[7]_0 ;
  output \crc_s_reg[6]_0 ;
  output [31:0]in2;
  input [0:0]SR;
  input clk;
  input rst;
  input \state_reg[3]_0 ;
  input byte_in_valid;
  input [7:0]byte_in;
  input \ang_out_reg[0]_0 ;
  input [0:0]E;
  input \crc_s_reg[0]_0 ;
  input \crc_s_reg[7]_1 ;
  input p_tready;

  wire [5:0]A;
  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]SR;
  wire \_inferred__0/i__carry_n_1 ;
  wire \_inferred__0/i__carry_n_2 ;
  wire \_inferred__0/i__carry_n_3 ;
  wire \_inferred__10/i__carry__0_n_3 ;
  wire \_inferred__10/i__carry_n_0 ;
  wire \_inferred__10/i__carry_n_1 ;
  wire \_inferred__10/i__carry_n_2 ;
  wire \_inferred__10/i__carry_n_3 ;
  wire \_inferred__6/i__carry__0_n_1 ;
  wire \_inferred__6/i__carry__0_n_2 ;
  wire \_inferred__6/i__carry__0_n_3 ;
  wire \_inferred__6/i__carry__0_n_4 ;
  wire \_inferred__6/i__carry__0_n_5 ;
  wire \_inferred__6/i__carry__0_n_6 ;
  wire \_inferred__6/i__carry__0_n_7 ;
  wire \_inferred__6/i__carry_n_0 ;
  wire \_inferred__6/i__carry_n_1 ;
  wire \_inferred__6/i__carry_n_2 ;
  wire \_inferred__6/i__carry_n_3 ;
  wire \_inferred__6/i__carry_n_4 ;
  wire \_inferred__6/i__carry_n_5 ;
  wire \_inferred__6/i__carry_n_6 ;
  wire \_inferred__6/i__carry_n_7 ;
  wire \_inferred__8/i__carry__0_n_0 ;
  wire \_inferred__8/i__carry__0_n_1 ;
  wire \_inferred__8/i__carry__0_n_2 ;
  wire \_inferred__8/i__carry__0_n_3 ;
  wire \_inferred__8/i__carry__0_n_4 ;
  wire \_inferred__8/i__carry__0_n_5 ;
  wire \_inferred__8/i__carry__0_n_6 ;
  wire \_inferred__8/i__carry__0_n_7 ;
  wire \_inferred__8/i__carry__1_n_7 ;
  wire \_inferred__8/i__carry_n_0 ;
  wire \_inferred__8/i__carry_n_1 ;
  wire \_inferred__8/i__carry_n_2 ;
  wire \_inferred__8/i__carry_n_3 ;
  wire \_inferred__8/i__carry_n_4 ;
  wire \_inferred__8/i__carry_n_5 ;
  wire \_inferred__8/i__carry_n_6 ;
  wire \_inferred__8/i__carry_n_7 ;
  wire [8:0]ang_acc;
  wire \ang_acc[0]_i_1_n_0 ;
  wire \ang_acc[1]_i_1_n_0 ;
  wire \ang_acc[2]_i_1_n_0 ;
  wire \ang_acc[3]_i_1_n_0 ;
  wire \ang_acc[4]_i_1_n_0 ;
  wire \ang_acc[5]_i_1_n_0 ;
  wire \ang_acc[6]_i_1_n_0 ;
  wire \ang_acc[7]_i_1_n_0 ;
  wire \ang_acc[8]_i_1_n_0 ;
  wire \ang_acc[8]_i_3_n_0 ;
  wire \ang_acc[8]_i_4_n_0 ;
  wire ang_acc_0;
  wire \ang_acc_reg[8]_i_5_n_7 ;
  wire [7:0]ang_delta;
  wire [8:0]ang_den;
  wire \ang_den[0]_i_1_n_0 ;
  wire \ang_den[1]_i_1_n_0 ;
  wire \ang_den[2]_i_1_n_0 ;
  wire \ang_den[3]_i_1_n_0 ;
  wire \ang_den[4]_i_1_n_0 ;
  wire \ang_den[8]_i_2_n_0 ;
  wire ang_out;
  wire \ang_out[0]_i_1_n_0 ;
  wire \ang_out[1]_i_1_n_0 ;
  wire \ang_out[2]_i_1_n_0 ;
  wire \ang_out[3]_i_1_n_0 ;
  wire \ang_out[4]_i_1_n_0 ;
  wire \ang_out[5]_i_1_n_0 ;
  wire \ang_out[6]_i_1_n_0 ;
  wire \ang_out[7]_i_2_n_0 ;
  wire \ang_out_reg[0]_0 ;
  wire \ang_out_reg_n_0_[0] ;
  wire \ang_out_reg_n_0_[1] ;
  wire \ang_out_reg_n_0_[2] ;
  wire \ang_out_reg_n_0_[3] ;
  wire \ang_out_reg_n_0_[4] ;
  wire \ang_out_reg_n_0_[5] ;
  wire \ang_out_reg_n_0_[6] ;
  wire \ang_out_reg_n_0_[7] ;
  wire [7:0]byte_in;
  wire byte_in_valid;
  wire clk;
  wire crc_s;
  wire \crc_s[0]_i_1_n_0 ;
  wire \crc_s[1]_i_1_n_0 ;
  wire \crc_s[2]_i_1_n_0 ;
  wire \crc_s[2]_i_2_n_0 ;
  wire \crc_s[3]_i_1_n_0 ;
  wire \crc_s[4]_i_1_n_0 ;
  wire \crc_s[5]_i_1_n_0 ;
  wire \crc_s[5]_i_2_n_0 ;
  wire \crc_s[5]_i_3_n_0 ;
  wire \crc_s[6]_i_1_n_0 ;
  wire \crc_s[6]_i_2_n_0 ;
  wire \crc_s[6]_i_3_n_0 ;
  wire \crc_s[7]_i_2_n_0 ;
  wire \crc_s[7]_i_5_n_0 ;
  wire \crc_s_reg[0]_0 ;
  wire \crc_s_reg[6]_0 ;
  wire [7:0]\crc_s_reg[7]_0 ;
  wire \crc_s_reg[7]_1 ;
  wire [7:7]end_ang_s;
  wire \end_ang_s_reg_n_0_[0] ;
  wire \end_ang_s_reg_n_0_[1] ;
  wire \end_ang_s_reg_n_0_[2] ;
  wire \end_ang_s_reg_n_0_[3] ;
  wire \end_ang_s_reg_n_0_[4] ;
  wire \end_ang_s_reg_n_0_[5] ;
  wire \end_ang_s_reg_n_0_[6] ;
  wire \end_ang_s_reg_n_0_[7] ;
  wire [4:0]expected_points;
  wire expected_points_1;
  wire i__carry__0_i_1__0_n_0;
  wire i__carry__0_i_1__1_n_0;
  wire i__carry__0_i_1__1_n_1;
  wire i__carry__0_i_1__1_n_2;
  wire i__carry__0_i_1__1_n_3;
  wire i__carry__0_i_1__1_n_4;
  wire i__carry__0_i_1__1_n_5;
  wire i__carry__0_i_1__1_n_6;
  wire i__carry__0_i_1__1_n_7;
  wire i__carry__0_i_1__2_n_0;
  wire i__carry__0_i_1_n_0;
  wire i__carry__0_i_2__0_n_0;
  wire i__carry__0_i_2__1_n_0;
  wire i__carry__0_i_2__2_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry__0_i_3__0_n_0;
  wire i__carry__0_i_3__1_n_0;
  wire i__carry__0_i_3_n_0;
  wire i__carry__0_i_4__0_n_0;
  wire i__carry__0_i_4__1_n_0;
  wire i__carry__0_i_4_n_0;
  wire i__carry__0_i_5_n_0;
  wire i__carry__0_i_6_n_0;
  wire i__carry__0_i_7_n_0;
  wire i__carry__0_i_8_n_0;
  wire i__carry__0_i_9_n_0;
  wire i__carry__1_i_1__0_n_0;
  wire i__carry__1_i_1_n_0;
  wire i__carry__1_i_2_n_0;
  wire i__carry__1_i_3_n_0;
  wire i__carry__1_i_4_n_0;
  wire i__carry__2_i_1_n_0;
  wire i__carry__2_i_2_n_0;
  wire i__carry__2_i_3_n_0;
  wire i__carry__2_i_4_n_0;
  wire i__carry__3_i_1_n_0;
  wire i__carry__3_i_2_n_0;
  wire i__carry__3_i_3_n_0;
  wire i__carry__3_i_4_n_0;
  wire i__carry__4_i_1_n_0;
  wire i__carry__4_i_2_n_0;
  wire i__carry__4_i_3_n_0;
  wire i__carry__4_i_4_n_0;
  wire i__carry__5_i_1_n_0;
  wire i__carry__5_i_2_n_0;
  wire i__carry__5_i_3_n_0;
  wire i__carry__5_i_4_n_0;
  wire i__carry__6_i_2_n_0;
  wire i__carry_i_1__0_n_0;
  wire i__carry_i_1__1_n_0;
  wire i__carry_i_1__1_n_1;
  wire i__carry_i_1__1_n_2;
  wire i__carry_i_1__1_n_3;
  wire i__carry_i_1__1_n_4;
  wire i__carry_i_1__1_n_5;
  wire i__carry_i_1__1_n_6;
  wire i__carry_i_1__1_n_7;
  wire i__carry_i_1__2_n_0;
  wire i__carry_i_1__3_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2__0_n_0;
  wire i__carry_i_2__1_n_0;
  wire i__carry_i_2__2_n_0;
  wire i__carry_i_2__3_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3__0_n_0;
  wire i__carry_i_3__1_n_0;
  wire i__carry_i_3__2_n_0;
  wire i__carry_i_3__3_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4__0_n_0;
  wire i__carry_i_4__1_n_0;
  wire i__carry_i_4__2_n_0;
  wire i__carry_i_4__3_n_0;
  wire i__carry_i_4_n_0;
  wire i__carry_i_5__0_n_0;
  wire i__carry_i_5_n_0;
  wire i__carry_i_6__0_n_0;
  wire i__carry_i_6_n_0;
  wire i__carry_i_7__0_n_0;
  wire i__carry_i_7_n_0;
  wire i__carry_i_8__0_n_0;
  wire i__carry_i_8_n_0;
  wire i__carry_i_9_n_0;
  wire [31:0]in2;
  wire [3:0]p_0_out;
  wire [5:1]p_2_in;
  wire [7:0]p_2_out;
  wire p_3_in_carry__0_i_1_n_0;
  wire p_3_in_carry__0_i_2_n_0;
  wire p_3_in_carry__0_n_3;
  wire p_3_in_carry__0_n_6;
  wire p_3_in_carry__0_n_7;
  wire p_3_in_carry_i_1_n_0;
  wire p_3_in_carry_i_2_n_0;
  wire p_3_in_carry_i_3_n_0;
  wire p_3_in_carry_n_0;
  wire p_3_in_carry_n_1;
  wire p_3_in_carry_n_2;
  wire p_3_in_carry_n_3;
  wire p_3_in_carry_n_4;
  wire p_3_in_carry_n_5;
  wire p_3_in_carry_n_6;
  wire p_3_in_carry_n_7;
  wire [7:0]p_4_out;
  wire [7:0]p_6_out;
  wire p_tready;
  wire p_tvalid;
  wire [5:0]payload_index;
  wire \payload_index[0]_i_1_n_0 ;
  wire \payload_index[1]_i_1_n_0 ;
  wire \payload_index[2]_i_1_n_0 ;
  wire \payload_index[3]_i_1_n_0 ;
  wire \payload_index[4]_i_1_n_0 ;
  wire \payload_index[5]_i_2_n_0 ;
  wire \payload_index[5]_i_3_n_0 ;
  wire payload_index__0;
  wire [7:1]plusOp;
  wire plusOp_carry__0_n_2;
  wire plusOp_carry__0_n_3;
  wire plusOp_carry_n_0;
  wire plusOp_carry_n_1;
  wire plusOp_carry_n_2;
  wire plusOp_carry_n_3;
  wire points_buf;
  wire points_buf_reg_r2_0_63_0_2_i_1_n_0;
  wire points_buf_reg_r2_0_63_0_2_i_2_n_0;
  wire points_buf_reg_r2_0_63_0_2_i_3_n_0;
  wire points_buf_reg_r2_0_63_0_2_i_4_n_0;
  wire points_buf_reg_r2_0_63_0_2_i_5_n_0;
  wire points_buf_reg_r2_0_63_0_2_i_6_n_0;
  wire [5:0]points_received;
  wire \points_received[5]_i_1_n_0 ;
  wire \points_received[5]_i_3_n_0 ;
  wire [7:0]pts_left;
  wire \pts_left[0]_i_1_n_0 ;
  wire \pts_left[1]_i_1_n_0 ;
  wire \pts_left[2]_i_1_n_0 ;
  wire \pts_left[3]_i_1_n_0 ;
  wire \pts_left[4]_i_1_n_0 ;
  wire \pts_left[5]_i_1_n_0 ;
  wire \pts_left[6]_i_1_n_0 ;
  wire \pts_left[6]_i_2_n_0 ;
  wire \pts_left[7]_i_1_n_0 ;
  wire \pts_left[7]_i_2_n_0 ;
  wire \pts_left[7]_i_3_n_0 ;
  wire \pts_left[7]_i_4_n_0 ;
  wire rst;
  wire [7:7]start_ang_s;
  wire \start_ang_s_reg_n_0_[0] ;
  wire \start_ang_s_reg_n_0_[1] ;
  wire \start_ang_s_reg_n_0_[2] ;
  wire \start_ang_s_reg_n_0_[3] ;
  wire \start_ang_s_reg_n_0_[4] ;
  wire \start_ang_s_reg_n_0_[5] ;
  wire \start_ang_s_reg_n_0_[6] ;
  wire \start_ang_s_reg_n_0_[7] ;
  wire state0_carry__0_i_1_n_0;
  wire state0_carry__0_i_2_n_0;
  wire state0_carry__0_i_3_n_0;
  wire state0_carry__0_i_4_n_0;
  wire state0_carry__0_n_0;
  wire state0_carry__0_n_1;
  wire state0_carry__0_n_2;
  wire state0_carry__0_n_3;
  wire state0_carry__1_i_1_n_0;
  wire state0_carry__1_i_2_n_0;
  wire state0_carry__1_i_3_n_0;
  wire state0_carry__1_n_1;
  wire state0_carry__1_n_2;
  wire state0_carry__1_n_3;
  wire state0_carry_i_1_n_0;
  wire state0_carry_i_2_n_0;
  wire state0_carry_i_3_n_0;
  wire state0_carry_i_4_n_0;
  wire state0_carry_n_0;
  wire state0_carry_n_1;
  wire state0_carry_n_2;
  wire state0_carry_n_3;
  wire [31:1]state1;
  wire \state1_inferred__1/i__carry__0_n_0 ;
  wire \state1_inferred__1/i__carry__0_n_1 ;
  wire \state1_inferred__1/i__carry__0_n_2 ;
  wire \state1_inferred__1/i__carry__0_n_3 ;
  wire \state1_inferred__1/i__carry__1_n_0 ;
  wire \state1_inferred__1/i__carry__1_n_1 ;
  wire \state1_inferred__1/i__carry__1_n_2 ;
  wire \state1_inferred__1/i__carry__1_n_3 ;
  wire \state1_inferred__1/i__carry__2_n_0 ;
  wire \state1_inferred__1/i__carry__2_n_1 ;
  wire \state1_inferred__1/i__carry__2_n_2 ;
  wire \state1_inferred__1/i__carry__2_n_3 ;
  wire \state1_inferred__1/i__carry__3_n_0 ;
  wire \state1_inferred__1/i__carry__3_n_1 ;
  wire \state1_inferred__1/i__carry__3_n_2 ;
  wire \state1_inferred__1/i__carry__3_n_3 ;
  wire \state1_inferred__1/i__carry__4_n_0 ;
  wire \state1_inferred__1/i__carry__4_n_1 ;
  wire \state1_inferred__1/i__carry__4_n_2 ;
  wire \state1_inferred__1/i__carry__4_n_3 ;
  wire \state1_inferred__1/i__carry__5_n_0 ;
  wire \state1_inferred__1/i__carry__5_n_1 ;
  wire \state1_inferred__1/i__carry__5_n_2 ;
  wire \state1_inferred__1/i__carry__5_n_3 ;
  wire \state1_inferred__1/i__carry__6_n_2 ;
  wire \state1_inferred__1/i__carry__6_n_3 ;
  wire \state1_inferred__1/i__carry_n_0 ;
  wire \state1_inferred__1/i__carry_n_1 ;
  wire \state1_inferred__1/i__carry_n_2 ;
  wire \state1_inferred__1/i__carry_n_3 ;
  wire [31:0]state2;
  wire state2_carry__0_i_1_n_0;
  wire state2_carry__0_i_2_n_0;
  wire state2_carry__0_i_3_n_0;
  wire state2_carry__0_n_0;
  wire state2_carry__0_n_2;
  wire state2_carry__0_n_3;
  wire state2_carry_i_1_n_0;
  wire state2_carry_i_2_n_0;
  wire state2_carry_i_3_n_0;
  wire state2_carry_n_0;
  wire state2_carry_n_1;
  wire state2_carry_n_2;
  wire state2_carry_n_3;
  wire \state[3]_i_1_n_0 ;
  wire \state[3]_i_3_n_0 ;
  wire \state[3]_i_4_n_0 ;
  wire \state[3]_i_5_n_0 ;
  wire \state_reg[1]_0 ;
  wire \state_reg[3]_0 ;
  wire \state_reg_n_0_[0] ;
  wire \state_reg_n_0_[1] ;
  wire \state_reg_n_0_[3] ;
  wire \tdata_s[23]_i_1_n_0 ;
  wire tvalid_s_i_1_n_0;
  wire tvalid_s_i_2_n_0;
  wire [3:3]\NLW__inferred__0/i__carry_CO_UNCONNECTED ;
  wire [3:0]\NLW__inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW__inferred__10/i__carry_O_UNCONNECTED ;
  wire [3:1]\NLW__inferred__10/i__carry__0_CO_UNCONNECTED ;
  wire [3:0]\NLW__inferred__10/i__carry__0_O_UNCONNECTED ;
  wire [3:3]\NLW__inferred__6/i__carry__0_CO_UNCONNECTED ;
  wire [3:0]\NLW__inferred__8/i__carry__1_CO_UNCONNECTED ;
  wire [3:1]\NLW__inferred__8/i__carry__1_O_UNCONNECTED ;
  wire [3:0]\NLW_ang_acc_reg[8]_i_5_CO_UNCONNECTED ;
  wire [3:1]\NLW_ang_acc_reg[8]_i_5_O_UNCONNECTED ;
  wire [3:1]NLW_p_3_in_carry__0_CO_UNCONNECTED;
  wire [3:2]NLW_p_3_in_carry__0_O_UNCONNECTED;
  wire [3:2]NLW_plusOp_carry__0_CO_UNCONNECTED;
  wire [3:3]NLW_plusOp_carry__0_O_UNCONNECTED;
  wire NLW_points_buf_reg_r1_0_63_0_2_DOD_UNCONNECTED;
  wire NLW_points_buf_reg_r1_0_63_3_5_DOD_UNCONNECTED;
  wire NLW_points_buf_reg_r1_0_63_6_6_SPO_UNCONNECTED;
  wire NLW_points_buf_reg_r1_0_63_7_7_SPO_UNCONNECTED;
  wire NLW_points_buf_reg_r2_0_63_0_2_DOD_UNCONNECTED;
  wire NLW_points_buf_reg_r2_0_63_3_5_DOD_UNCONNECTED;
  wire NLW_points_buf_reg_r2_0_63_6_6_SPO_UNCONNECTED;
  wire NLW_points_buf_reg_r2_0_63_7_7_SPO_UNCONNECTED;
  wire NLW_points_buf_reg_r3_0_63_0_2_DOD_UNCONNECTED;
  wire NLW_points_buf_reg_r3_0_63_3_5_DOD_UNCONNECTED;
  wire NLW_points_buf_reg_r3_0_63_6_6_SPO_UNCONNECTED;
  wire NLW_points_buf_reg_r3_0_63_7_7_SPO_UNCONNECTED;
  wire [3:0]NLW_state0_carry_O_UNCONNECTED;
  wire [3:0]NLW_state0_carry__0_O_UNCONNECTED;
  wire [3:3]NLW_state0_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_state0_carry__1_O_UNCONNECTED;
  wire [3:2]\NLW_state1_inferred__1/i__carry__6_CO_UNCONNECTED ;
  wire [3:3]\NLW_state1_inferred__1/i__carry__6_O_UNCONNECTED ;
  wire [2:2]NLW_state2_carry__0_CO_UNCONNECTED;
  wire [3:3]NLW_state2_carry__0_O_UNCONNECTED;

  CARRY4 \_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\NLW__inferred__0/i__carry_CO_UNCONNECTED [3],\_inferred__0/i__carry_n_1 ,\_inferred__0/i__carry_n_2 ,\_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,expected_points[4],i__carry_i_1__0_n_0,expected_points[1]}),
        .O(\NLW__inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({1'b0,i__carry_i_2__1_n_0,i__carry_i_3__0_n_0,i__carry_i_4__0_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \_inferred__10/i__carry 
       (.CI(1'b0),
        .CO({\_inferred__10/i__carry_n_0 ,\_inferred__10/i__carry_n_1 ,\_inferred__10/i__carry_n_2 ,\_inferred__10/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({i__carry_i_1__2_n_0,i__carry_i_2__0_n_0,i__carry_i_3__1_n_0,i__carry_i_4__1_n_0}),
        .O(\NLW__inferred__10/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_5_n_0,i__carry_i_6_n_0,i__carry_i_7_n_0,i__carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \_inferred__10/i__carry__0 
       (.CI(\_inferred__10/i__carry_n_0 ),
        .CO({\NLW__inferred__10/i__carry__0_CO_UNCONNECTED [3:1],\_inferred__10/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,i__carry__0_i_1_n_0}),
        .O(\NLW__inferred__10/i__carry__0_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,i__carry__0_i_2__0_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \_inferred__6/i__carry 
       (.CI(1'b0),
        .CO({\_inferred__6/i__carry_n_0 ,\_inferred__6/i__carry_n_1 ,\_inferred__6/i__carry_n_2 ,\_inferred__6/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({\end_ang_s_reg_n_0_[3] ,\end_ang_s_reg_n_0_[2] ,\end_ang_s_reg_n_0_[1] ,\end_ang_s_reg_n_0_[0] }),
        .O({\_inferred__6/i__carry_n_4 ,\_inferred__6/i__carry_n_5 ,\_inferred__6/i__carry_n_6 ,\_inferred__6/i__carry_n_7 }),
        .S({i__carry_i_1__3_n_0,i__carry_i_2__3_n_0,i__carry_i_3__3_n_0,i__carry_i_4__3_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \_inferred__6/i__carry__0 
       (.CI(\_inferred__6/i__carry_n_0 ),
        .CO({\NLW__inferred__6/i__carry__0_CO_UNCONNECTED [3],\_inferred__6/i__carry__0_n_1 ,\_inferred__6/i__carry__0_n_2 ,\_inferred__6/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\end_ang_s_reg_n_0_[6] ,\end_ang_s_reg_n_0_[5] ,\end_ang_s_reg_n_0_[4] }),
        .O({\_inferred__6/i__carry__0_n_4 ,\_inferred__6/i__carry__0_n_5 ,\_inferred__6/i__carry__0_n_6 ,\_inferred__6/i__carry__0_n_7 }),
        .S({i__carry__0_i_1__2_n_0,i__carry__0_i_2__2_n_0,i__carry__0_i_3__1_n_0,i__carry__0_i_4__1_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \_inferred__8/i__carry 
       (.CI(1'b0),
        .CO({\_inferred__8/i__carry_n_0 ,\_inferred__8/i__carry_n_1 ,\_inferred__8/i__carry_n_2 ,\_inferred__8/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({i__carry_i_1__1_n_4,i__carry_i_1__1_n_5,i__carry_i_1__1_n_6,i__carry_i_1__1_n_7}),
        .O({\_inferred__8/i__carry_n_4 ,\_inferred__8/i__carry_n_5 ,\_inferred__8/i__carry_n_6 ,\_inferred__8/i__carry_n_7 }),
        .S({i__carry_i_2__2_n_0,i__carry_i_3__2_n_0,i__carry_i_4__2_n_0,i__carry_i_5__0_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \_inferred__8/i__carry__0 
       (.CI(\_inferred__8/i__carry_n_0 ),
        .CO({\_inferred__8/i__carry__0_n_0 ,\_inferred__8/i__carry__0_n_1 ,\_inferred__8/i__carry__0_n_2 ,\_inferred__8/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__0_i_1__1_n_4,i__carry__0_i_1__1_n_5,i__carry__0_i_1__1_n_6,i__carry__0_i_1__1_n_7}),
        .O({\_inferred__8/i__carry__0_n_4 ,\_inferred__8/i__carry__0_n_5 ,\_inferred__8/i__carry__0_n_6 ,\_inferred__8/i__carry__0_n_7 }),
        .S({i__carry__0_i_2__1_n_0,i__carry__0_i_3__0_n_0,i__carry__0_i_4__0_n_0,i__carry__0_i_5_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \_inferred__8/i__carry__1 
       (.CI(\_inferred__8/i__carry__0_n_0 ),
        .CO(\NLW__inferred__8/i__carry__1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW__inferred__8/i__carry__1_O_UNCONNECTED [3:1],\_inferred__8/i__carry__1_n_7 }),
        .S({1'b0,1'b0,1'b0,i__carry__1_i_1__0_n_0}));
  LUT3 #(
    .INIT(8'hB8)) 
    \ang_acc[0]_i_1 
       (.I0(\_inferred__8/i__carry_n_7 ),
        .I1(\_inferred__10/i__carry__0_n_3 ),
        .I2(i__carry_i_1__1_n_7),
        .O(\ang_acc[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ang_acc[1]_i_1 
       (.I0(\_inferred__8/i__carry_n_6 ),
        .I1(\_inferred__10/i__carry__0_n_3 ),
        .I2(i__carry_i_1__1_n_6),
        .O(\ang_acc[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ang_acc[2]_i_1 
       (.I0(\_inferred__8/i__carry_n_5 ),
        .I1(\_inferred__10/i__carry__0_n_3 ),
        .I2(i__carry_i_1__1_n_5),
        .O(\ang_acc[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ang_acc[3]_i_1 
       (.I0(\_inferred__8/i__carry_n_4 ),
        .I1(\_inferred__10/i__carry__0_n_3 ),
        .I2(i__carry_i_1__1_n_4),
        .O(\ang_acc[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ang_acc[4]_i_1 
       (.I0(\_inferred__8/i__carry__0_n_7 ),
        .I1(\_inferred__10/i__carry__0_n_3 ),
        .I2(i__carry__0_i_1__1_n_7),
        .O(\ang_acc[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ang_acc[5]_i_1 
       (.I0(\_inferred__8/i__carry__0_n_6 ),
        .I1(\_inferred__10/i__carry__0_n_3 ),
        .I2(i__carry__0_i_1__1_n_6),
        .O(\ang_acc[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ang_acc[6]_i_1 
       (.I0(\_inferred__8/i__carry__0_n_5 ),
        .I1(\_inferred__10/i__carry__0_n_3 ),
        .I2(i__carry__0_i_1__1_n_5),
        .O(\ang_acc[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ang_acc[7]_i_1 
       (.I0(\_inferred__8/i__carry__0_n_4 ),
        .I1(\_inferred__10/i__carry__0_n_3 ),
        .I2(i__carry__0_i_1__1_n_4),
        .O(\ang_acc[7]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h70)) 
    \ang_acc[8]_i_1 
       (.I0(\ang_acc[8]_i_4_n_0 ),
        .I1(\pts_left[7]_i_3_n_0 ),
        .I2(E),
        .O(\ang_acc[8]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hEAAA)) 
    \ang_acc[8]_i_2 
       (.I0(E),
        .I1(\pts_left[7]_i_3_n_0 ),
        .I2(\ang_acc[8]_i_4_n_0 ),
        .I3(rst),
        .O(ang_acc_0));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ang_acc[8]_i_3 
       (.I0(\_inferred__8/i__carry__1_n_7 ),
        .I1(\_inferred__10/i__carry__0_n_3 ),
        .I2(\ang_acc_reg[8]_i_5_n_7 ),
        .O(\ang_acc[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \ang_acc[8]_i_4 
       (.I0(ang_den[0]),
        .I1(ang_den[4]),
        .I2(ang_den[1]),
        .I3(ang_den[2]),
        .I4(ang_den[8]),
        .I5(ang_den[3]),
        .O(\ang_acc[8]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ang_acc_reg[0] 
       (.C(clk),
        .CE(ang_acc_0),
        .D(\ang_acc[0]_i_1_n_0 ),
        .Q(ang_acc[0]),
        .R(\ang_acc[8]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ang_acc_reg[1] 
       (.C(clk),
        .CE(ang_acc_0),
        .D(\ang_acc[1]_i_1_n_0 ),
        .Q(ang_acc[1]),
        .R(\ang_acc[8]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ang_acc_reg[2] 
       (.C(clk),
        .CE(ang_acc_0),
        .D(\ang_acc[2]_i_1_n_0 ),
        .Q(ang_acc[2]),
        .R(\ang_acc[8]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ang_acc_reg[3] 
       (.C(clk),
        .CE(ang_acc_0),
        .D(\ang_acc[3]_i_1_n_0 ),
        .Q(ang_acc[3]),
        .R(\ang_acc[8]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ang_acc_reg[4] 
       (.C(clk),
        .CE(ang_acc_0),
        .D(\ang_acc[4]_i_1_n_0 ),
        .Q(ang_acc[4]),
        .R(\ang_acc[8]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ang_acc_reg[5] 
       (.C(clk),
        .CE(ang_acc_0),
        .D(\ang_acc[5]_i_1_n_0 ),
        .Q(ang_acc[5]),
        .R(\ang_acc[8]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ang_acc_reg[6] 
       (.C(clk),
        .CE(ang_acc_0),
        .D(\ang_acc[6]_i_1_n_0 ),
        .Q(ang_acc[6]),
        .R(\ang_acc[8]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ang_acc_reg[7] 
       (.C(clk),
        .CE(ang_acc_0),
        .D(\ang_acc[7]_i_1_n_0 ),
        .Q(ang_acc[7]),
        .R(\ang_acc[8]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ang_acc_reg[8] 
       (.C(clk),
        .CE(ang_acc_0),
        .D(\ang_acc[8]_i_3_n_0 ),
        .Q(ang_acc[8]),
        .R(\ang_acc[8]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \ang_acc_reg[8]_i_5 
       (.CI(i__carry__0_i_1__1_n_0),
        .CO(\NLW_ang_acc_reg[8]_i_5_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_ang_acc_reg[8]_i_5_O_UNCONNECTED [3:1],\ang_acc_reg[8]_i_5_n_7 }),
        .S({1'b0,1'b0,1'b0,ang_acc[8]}));
  FDRE #(
    .INIT(1'b0)) 
    \ang_delta_reg[0] 
       (.C(clk),
        .CE(E),
        .D(\_inferred__6/i__carry_n_7 ),
        .Q(ang_delta[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ang_delta_reg[1] 
       (.C(clk),
        .CE(E),
        .D(\_inferred__6/i__carry_n_6 ),
        .Q(ang_delta[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ang_delta_reg[2] 
       (.C(clk),
        .CE(E),
        .D(\_inferred__6/i__carry_n_5 ),
        .Q(ang_delta[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ang_delta_reg[3] 
       (.C(clk),
        .CE(E),
        .D(\_inferred__6/i__carry_n_4 ),
        .Q(ang_delta[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ang_delta_reg[4] 
       (.C(clk),
        .CE(E),
        .D(\_inferred__6/i__carry__0_n_7 ),
        .Q(ang_delta[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ang_delta_reg[5] 
       (.C(clk),
        .CE(E),
        .D(\_inferred__6/i__carry__0_n_6 ),
        .Q(ang_delta[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ang_delta_reg[6] 
       (.C(clk),
        .CE(E),
        .D(\_inferred__6/i__carry__0_n_5 ),
        .Q(ang_delta[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ang_delta_reg[7] 
       (.C(clk),
        .CE(E),
        .D(\_inferred__6/i__carry__0_n_4 ),
        .Q(ang_delta[7]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ang_den[0]_i_1 
       (.I0(\_inferred__0/i__carry_n_1 ),
        .I1(expected_points[0]),
        .O(\ang_den[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \ang_den[1]_i_1 
       (.I0(\_inferred__0/i__carry_n_1 ),
        .I1(expected_points[0]),
        .I2(expected_points[1]),
        .O(\ang_den[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h8882)) 
    \ang_den[2]_i_1 
       (.I0(\_inferred__0/i__carry_n_1 ),
        .I1(expected_points[2]),
        .I2(expected_points[1]),
        .I3(expected_points[0]),
        .O(\ang_den[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h88888882)) 
    \ang_den[3]_i_1 
       (.I0(\_inferred__0/i__carry_n_1 ),
        .I1(expected_points[3]),
        .I2(expected_points[0]),
        .I3(expected_points[1]),
        .I4(expected_points[2]),
        .O(\ang_den[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8888888888888882)) 
    \ang_den[4]_i_1 
       (.I0(\_inferred__0/i__carry_n_1 ),
        .I1(expected_points[4]),
        .I2(expected_points[0]),
        .I3(expected_points[1]),
        .I4(expected_points[2]),
        .I5(expected_points[3]),
        .O(\ang_den[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \ang_den[8]_i_2 
       (.I0(expected_points[4]),
        .I1(expected_points[3]),
        .I2(expected_points[2]),
        .I3(expected_points[1]),
        .I4(expected_points[0]),
        .I5(\_inferred__0/i__carry_n_1 ),
        .O(\ang_den[8]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ang_den_reg[0] 
       (.C(clk),
        .CE(E),
        .D(\ang_den[0]_i_1_n_0 ),
        .Q(ang_den[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ang_den_reg[1] 
       (.C(clk),
        .CE(E),
        .D(\ang_den[1]_i_1_n_0 ),
        .Q(ang_den[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ang_den_reg[2] 
       (.C(clk),
        .CE(E),
        .D(\ang_den[2]_i_1_n_0 ),
        .Q(ang_den[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ang_den_reg[3] 
       (.C(clk),
        .CE(E),
        .D(\ang_den[3]_i_1_n_0 ),
        .Q(ang_den[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ang_den_reg[4] 
       (.C(clk),
        .CE(E),
        .D(\ang_den[4]_i_1_n_0 ),
        .Q(ang_den[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ang_den_reg[8] 
       (.C(clk),
        .CE(E),
        .D(\ang_den[8]_i_2_n_0 ),
        .Q(ang_den[8]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h2AEA)) 
    \ang_out[0]_i_1 
       (.I0(\start_ang_s_reg_n_0_[0] ),
        .I1(\_inferred__10/i__carry__0_n_3 ),
        .I2(\pts_left[7]_i_3_n_0 ),
        .I3(\ang_out_reg_n_0_[0] ),
        .O(\ang_out[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hEA2A)) 
    \ang_out[1]_i_1 
       (.I0(\start_ang_s_reg_n_0_[1] ),
        .I1(\_inferred__10/i__carry__0_n_3 ),
        .I2(\pts_left[7]_i_3_n_0 ),
        .I3(plusOp[1]),
        .O(\ang_out[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hEA2A)) 
    \ang_out[2]_i_1 
       (.I0(\start_ang_s_reg_n_0_[2] ),
        .I1(\_inferred__10/i__carry__0_n_3 ),
        .I2(\pts_left[7]_i_3_n_0 ),
        .I3(plusOp[2]),
        .O(\ang_out[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hEA2A)) 
    \ang_out[3]_i_1 
       (.I0(\start_ang_s_reg_n_0_[3] ),
        .I1(\_inferred__10/i__carry__0_n_3 ),
        .I2(\pts_left[7]_i_3_n_0 ),
        .I3(plusOp[3]),
        .O(\ang_out[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hEA2A)) 
    \ang_out[4]_i_1 
       (.I0(\start_ang_s_reg_n_0_[4] ),
        .I1(\_inferred__10/i__carry__0_n_3 ),
        .I2(\pts_left[7]_i_3_n_0 ),
        .I3(plusOp[4]),
        .O(\ang_out[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hEA2A)) 
    \ang_out[5]_i_1 
       (.I0(\start_ang_s_reg_n_0_[5] ),
        .I1(\_inferred__10/i__carry__0_n_3 ),
        .I2(\pts_left[7]_i_3_n_0 ),
        .I3(plusOp[5]),
        .O(\ang_out[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hEA2A)) 
    \ang_out[6]_i_1 
       (.I0(\start_ang_s_reg_n_0_[6] ),
        .I1(\_inferred__10/i__carry__0_n_3 ),
        .I2(\pts_left[7]_i_3_n_0 ),
        .I3(plusOp[6]),
        .O(\ang_out[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hE0C000C0)) 
    \ang_out[7]_i_1 
       (.I0(\_inferred__10/i__carry__0_n_3 ),
        .I1(\ang_out_reg[0]_0 ),
        .I2(rst),
        .I3(\pts_left[7]_i_3_n_0 ),
        .I4(\ang_acc[8]_i_4_n_0 ),
        .O(ang_out));
  LUT4 #(
    .INIT(16'hEA2A)) 
    \ang_out[7]_i_2 
       (.I0(\start_ang_s_reg_n_0_[7] ),
        .I1(\_inferred__10/i__carry__0_n_3 ),
        .I2(\pts_left[7]_i_3_n_0 ),
        .I3(plusOp[7]),
        .O(\ang_out[7]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ang_out_reg[0] 
       (.C(clk),
        .CE(ang_out),
        .D(\ang_out[0]_i_1_n_0 ),
        .Q(\ang_out_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ang_out_reg[1] 
       (.C(clk),
        .CE(ang_out),
        .D(\ang_out[1]_i_1_n_0 ),
        .Q(\ang_out_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ang_out_reg[2] 
       (.C(clk),
        .CE(ang_out),
        .D(\ang_out[2]_i_1_n_0 ),
        .Q(\ang_out_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ang_out_reg[3] 
       (.C(clk),
        .CE(ang_out),
        .D(\ang_out[3]_i_1_n_0 ),
        .Q(\ang_out_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ang_out_reg[4] 
       (.C(clk),
        .CE(ang_out),
        .D(\ang_out[4]_i_1_n_0 ),
        .Q(\ang_out_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ang_out_reg[5] 
       (.C(clk),
        .CE(ang_out),
        .D(\ang_out[5]_i_1_n_0 ),
        .Q(\ang_out_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ang_out_reg[6] 
       (.C(clk),
        .CE(ang_out),
        .D(\ang_out[6]_i_1_n_0 ),
        .Q(\ang_out_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ang_out_reg[7] 
       (.C(clk),
        .CE(ang_out),
        .D(\ang_out[7]_i_2_n_0 ),
        .Q(\ang_out_reg_n_0_[7] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h2AAA)) 
    \crc_s[0]_i_1 
       (.I0(\crc_s[6]_i_3_n_0 ),
        .I1(\state_reg_n_0_[3] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[1] ),
        .O(\crc_s[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h007F)) 
    \crc_s[1]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\crc_s_reg[7]_1 ),
        .O(\crc_s[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9669699600000000)) 
    \crc_s[2]_i_1 
       (.I0(\crc_s_reg[7]_0 [6]),
        .I1(byte_in[6]),
        .I2(\crc_s_reg[7]_0 [0]),
        .I3(byte_in[0]),
        .I4(\crc_s[2]_i_2_n_0 ),
        .I5(\state_reg[1]_0 ),
        .O(\crc_s[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \crc_s[2]_i_2 
       (.I0(\crc_s_reg[7]_0 [7]),
        .I1(byte_in[7]),
        .I2(\crc_s_reg[7]_0 [5]),
        .I3(byte_in[5]),
        .O(\crc_s[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'h7F00007F)) 
    \crc_s[3]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\crc_s[6]_i_3_n_0 ),
        .I4(\crc_s_reg[6]_0 ),
        .O(\crc_s[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    \crc_s[3]_i_2 
       (.I0(\crc_s_reg[7]_0 [6]),
        .I1(byte_in[6]),
        .I2(byte_in[7]),
        .I3(\crc_s_reg[7]_0 [7]),
        .I4(byte_in[1]),
        .I5(\crc_s_reg[7]_0 [1]),
        .O(\crc_s_reg[6]_0 ));
  LUT6 #(
    .INIT(64'h2882822882282882)) 
    \crc_s[4]_i_1 
       (.I0(\state_reg[1]_0 ),
        .I1(\crc_s_reg[7]_0 [2]),
        .I2(byte_in[2]),
        .I3(\crc_s_reg[7]_0 [7]),
        .I4(byte_in[7]),
        .I5(\crc_s_reg[7]_1 ),
        .O(\crc_s[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0096969696969696)) 
    \crc_s[5]_i_1 
       (.I0(\crc_s[5]_i_2_n_0 ),
        .I1(byte_in[3]),
        .I2(\crc_s_reg[7]_0 [3]),
        .I3(\state_reg_n_0_[3] ),
        .I4(\state_reg_n_0_[0] ),
        .I5(\state_reg_n_0_[1] ),
        .O(\crc_s[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \crc_s[5]_i_2 
       (.I0(byte_in[6]),
        .I1(\crc_s_reg[7]_0 [6]),
        .I2(byte_in[4]),
        .I3(\crc_s_reg[7]_0 [4]),
        .I4(\crc_s[5]_i_3_n_0 ),
        .O(\crc_s[5]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \crc_s[5]_i_3 
       (.I0(\crc_s_reg[7]_0 [2]),
        .I1(byte_in[2]),
        .I2(\crc_s_reg[7]_0 [7]),
        .I3(byte_in[7]),
        .O(\crc_s[5]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h69960000)) 
    \crc_s[6]_i_1 
       (.I0(\crc_s_reg[7]_0 [4]),
        .I1(byte_in[4]),
        .I2(\crc_s[6]_i_2_n_0 ),
        .I3(\crc_s[6]_i_3_n_0 ),
        .I4(\state_reg[1]_0 ),
        .O(\crc_s[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \crc_s[6]_i_2 
       (.I0(\crc_s_reg[7]_0 [3]),
        .I1(byte_in[3]),
        .I2(byte_in[5]),
        .I3(\crc_s_reg[7]_0 [5]),
        .I4(byte_in[7]),
        .I5(\crc_s_reg[7]_0 [7]),
        .O(\crc_s[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \crc_s[6]_i_3 
       (.I0(\crc_s_reg[7]_0 [6]),
        .I1(byte_in[6]),
        .I2(\crc_s_reg[7]_0 [0]),
        .I3(byte_in[0]),
        .I4(\crc_s[2]_i_2_n_0 ),
        .I5(\crc_s[5]_i_2_n_0 ),
        .O(\crc_s[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00EFFFEF00000000)) 
    \crc_s[7]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\crc_s_reg[0]_0 ),
        .I3(\state_reg_n_0_[3] ),
        .I4(Q),
        .I5(byte_in_valid),
        .O(crc_s));
  LUT5 #(
    .INIT(32'h82282882)) 
    \crc_s[7]_i_2 
       (.I0(\state_reg[1]_0 ),
        .I1(\crc_s_reg[7]_0 [5]),
        .I2(byte_in[5]),
        .I3(\crc_s[7]_i_5_n_0 ),
        .I4(\crc_s_reg[7]_1 ),
        .O(\crc_s[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \crc_s[7]_i_4 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[3] ),
        .O(\state_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \crc_s[7]_i_5 
       (.I0(\crc_s_reg[7]_0 [4]),
        .I1(byte_in[4]),
        .I2(\crc_s_reg[7]_0 [6]),
        .I3(byte_in[6]),
        .O(\crc_s[7]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \crc_s_reg[0] 
       (.C(clk),
        .CE(crc_s),
        .D(\crc_s[0]_i_1_n_0 ),
        .Q(\crc_s_reg[7]_0 [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \crc_s_reg[1] 
       (.C(clk),
        .CE(crc_s),
        .D(\crc_s[1]_i_1_n_0 ),
        .Q(\crc_s_reg[7]_0 [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \crc_s_reg[2] 
       (.C(clk),
        .CE(crc_s),
        .D(\crc_s[2]_i_1_n_0 ),
        .Q(\crc_s_reg[7]_0 [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \crc_s_reg[3] 
       (.C(clk),
        .CE(crc_s),
        .D(\crc_s[3]_i_1_n_0 ),
        .Q(\crc_s_reg[7]_0 [3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \crc_s_reg[4] 
       (.C(clk),
        .CE(crc_s),
        .D(\crc_s[4]_i_1_n_0 ),
        .Q(\crc_s_reg[7]_0 [4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \crc_s_reg[5] 
       (.C(clk),
        .CE(crc_s),
        .D(\crc_s[5]_i_1_n_0 ),
        .Q(\crc_s_reg[7]_0 [5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \crc_s_reg[6] 
       (.C(clk),
        .CE(crc_s),
        .D(\crc_s[6]_i_1_n_0 ),
        .Q(\crc_s_reg[7]_0 [6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \crc_s_reg[7] 
       (.C(clk),
        .CE(crc_s),
        .D(\crc_s[7]_i_2_n_0 ),
        .Q(\crc_s_reg[7]_0 [7]),
        .R(SR));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \end_ang_s[7]_i_1 
       (.I0(byte_in_valid),
        .I1(rst),
        .I2(\state_reg_n_0_[3] ),
        .I3(Q),
        .I4(\state_reg_n_0_[0] ),
        .I5(\state_reg_n_0_[1] ),
        .O(end_ang_s));
  FDRE #(
    .INIT(1'b0)) 
    \end_ang_s_reg[0] 
       (.C(clk),
        .CE(end_ang_s),
        .D(byte_in[0]),
        .Q(\end_ang_s_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \end_ang_s_reg[1] 
       (.C(clk),
        .CE(end_ang_s),
        .D(byte_in[1]),
        .Q(\end_ang_s_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \end_ang_s_reg[2] 
       (.C(clk),
        .CE(end_ang_s),
        .D(byte_in[2]),
        .Q(\end_ang_s_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \end_ang_s_reg[3] 
       (.C(clk),
        .CE(end_ang_s),
        .D(byte_in[3]),
        .Q(\end_ang_s_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \end_ang_s_reg[4] 
       (.C(clk),
        .CE(end_ang_s),
        .D(byte_in[4]),
        .Q(\end_ang_s_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \end_ang_s_reg[5] 
       (.C(clk),
        .CE(end_ang_s),
        .D(byte_in[5]),
        .Q(\end_ang_s_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \end_ang_s_reg[6] 
       (.C(clk),
        .CE(end_ang_s),
        .D(byte_in[6]),
        .Q(\end_ang_s_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \end_ang_s_reg[7] 
       (.C(clk),
        .CE(end_ang_s),
        .D(byte_in[7]),
        .Q(\end_ang_s_reg_n_0_[7] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000004000000)) 
    \expected_points[4]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(Q),
        .I3(byte_in_valid),
        .I4(rst),
        .I5(\state_reg_n_0_[3] ),
        .O(expected_points_1));
  FDRE #(
    .INIT(1'b0)) 
    \expected_points_reg[0] 
       (.C(clk),
        .CE(expected_points_1),
        .D(byte_in[0]),
        .Q(expected_points[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \expected_points_reg[1] 
       (.C(clk),
        .CE(expected_points_1),
        .D(byte_in[1]),
        .Q(expected_points[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \expected_points_reg[2] 
       (.C(clk),
        .CE(expected_points_1),
        .D(byte_in[2]),
        .Q(expected_points[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \expected_points_reg[3] 
       (.C(clk),
        .CE(expected_points_1),
        .D(byte_in[3]),
        .Q(expected_points[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \expected_points_reg[4] 
       (.C(clk),
        .CE(expected_points_1),
        .D(byte_in[4]),
        .Q(expected_points[4]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry__0_i_1
       (.I0(\ang_acc_reg[8]_i_5_n_7 ),
        .I1(ang_den[8]),
        .O(i__carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_1__0
       (.I0(state2_carry__0_n_0),
        .O(i__carry__0_i_1__0_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 i__carry__0_i_1__1
       (.CI(i__carry_i_1__1_n_0),
        .CO({i__carry__0_i_1__1_n_0,i__carry__0_i_1__1_n_1,i__carry__0_i_1__1_n_2,i__carry__0_i_1__1_n_3}),
        .CYINIT(1'b0),
        .DI(ang_acc[7:4]),
        .O({i__carry__0_i_1__1_n_4,i__carry__0_i_1__1_n_5,i__carry__0_i_1__1_n_6,i__carry__0_i_1__1_n_7}),
        .S({i__carry__0_i_6_n_0,i__carry__0_i_7_n_0,i__carry__0_i_8_n_0,i__carry__0_i_9_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_1__2
       (.I0(\end_ang_s_reg_n_0_[7] ),
        .I1(\start_ang_s_reg_n_0_[7] ),
        .O(i__carry__0_i_1__2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_2
       (.I0(state2_carry__0_n_0),
        .O(i__carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_2__0
       (.I0(ang_den[8]),
        .I1(\ang_acc_reg[8]_i_5_n_7 ),
        .O(i__carry__0_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_2__1
       (.I0(i__carry__0_i_1__1_n_4),
        .I1(ang_den[8]),
        .O(i__carry__0_i_2__1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_2__2
       (.I0(\end_ang_s_reg_n_0_[6] ),
        .I1(\start_ang_s_reg_n_0_[6] ),
        .O(i__carry__0_i_2__2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_3
       (.I0(state2[6]),
        .O(i__carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_3__0
       (.I0(i__carry__0_i_1__1_n_5),
        .I1(ang_den[8]),
        .O(i__carry__0_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_3__1
       (.I0(\end_ang_s_reg_n_0_[5] ),
        .I1(\start_ang_s_reg_n_0_[5] ),
        .O(i__carry__0_i_3__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_4
       (.I0(state2[5]),
        .O(i__carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_4__0
       (.I0(ang_den[8]),
        .I1(i__carry__0_i_1__1_n_6),
        .O(i__carry__0_i_4__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_4__1
       (.I0(\end_ang_s_reg_n_0_[4] ),
        .I1(\start_ang_s_reg_n_0_[4] ),
        .O(i__carry__0_i_4__1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_5
       (.I0(ang_den[4]),
        .I1(i__carry__0_i_1__1_n_7),
        .O(i__carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__0_i_6
       (.I0(ang_acc[7]),
        .I1(ang_delta[7]),
        .O(i__carry__0_i_6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__0_i_7
       (.I0(ang_acc[6]),
        .I1(ang_delta[6]),
        .O(i__carry__0_i_7_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__0_i_8
       (.I0(ang_acc[5]),
        .I1(ang_delta[5]),
        .O(i__carry__0_i_8_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__0_i_9
       (.I0(ang_acc[4]),
        .I1(ang_delta[4]),
        .O(i__carry__0_i_9_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_1
       (.I0(state2_carry__0_n_0),
        .O(i__carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__1_i_1__0
       (.I0(\ang_acc_reg[8]_i_5_n_7 ),
        .I1(ang_den[8]),
        .O(i__carry__1_i_1__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_2
       (.I0(state2_carry__0_n_0),
        .O(i__carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_3
       (.I0(state2_carry__0_n_0),
        .O(i__carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_4
       (.I0(state2_carry__0_n_0),
        .O(i__carry__1_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__2_i_1
       (.I0(state2_carry__0_n_0),
        .O(i__carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__2_i_2
       (.I0(state2_carry__0_n_0),
        .O(i__carry__2_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__2_i_3
       (.I0(state2_carry__0_n_0),
        .O(i__carry__2_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__2_i_4
       (.I0(state2_carry__0_n_0),
        .O(i__carry__2_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__3_i_1
       (.I0(state2_carry__0_n_0),
        .O(i__carry__3_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__3_i_2
       (.I0(state2_carry__0_n_0),
        .O(i__carry__3_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__3_i_3
       (.I0(state2_carry__0_n_0),
        .O(i__carry__3_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__3_i_4
       (.I0(state2_carry__0_n_0),
        .O(i__carry__3_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__4_i_1
       (.I0(state2_carry__0_n_0),
        .O(i__carry__4_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__4_i_2
       (.I0(state2_carry__0_n_0),
        .O(i__carry__4_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__4_i_3
       (.I0(state2_carry__0_n_0),
        .O(i__carry__4_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__4_i_4
       (.I0(state2_carry__0_n_0),
        .O(i__carry__4_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__5_i_1
       (.I0(state2_carry__0_n_0),
        .O(i__carry__5_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__5_i_2
       (.I0(state2_carry__0_n_0),
        .O(i__carry__5_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__5_i_3
       (.I0(state2_carry__0_n_0),
        .O(i__carry__5_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__5_i_4
       (.I0(state2_carry__0_n_0),
        .O(i__carry__5_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__6_i_1
       (.I0(state2_carry__0_n_0),
        .O(state2[31]));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__6_i_2
       (.I0(state2_carry__0_n_0),
        .O(i__carry__6_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_1
       (.I0(state2[4]),
        .O(i__carry_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry_i_1__0
       (.I0(expected_points[3]),
        .I1(expected_points[2]),
        .O(i__carry_i_1__0_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 i__carry_i_1__1
       (.CI(1'b0),
        .CO({i__carry_i_1__1_n_0,i__carry_i_1__1_n_1,i__carry_i_1__1_n_2,i__carry_i_1__1_n_3}),
        .CYINIT(1'b0),
        .DI(ang_acc[3:0]),
        .O({i__carry_i_1__1_n_4,i__carry_i_1__1_n_5,i__carry_i_1__1_n_6,i__carry_i_1__1_n_7}),
        .S({i__carry_i_6__0_n_0,i__carry_i_7__0_n_0,i__carry_i_8__0_n_0,i__carry_i_9_n_0}));
  LUT3 #(
    .INIT(8'h54)) 
    i__carry_i_1__2
       (.I0(ang_den[8]),
        .I1(i__carry__0_i_1__1_n_4),
        .I2(i__carry__0_i_1__1_n_5),
        .O(i__carry_i_1__2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_1__3
       (.I0(\end_ang_s_reg_n_0_[3] ),
        .I1(\start_ang_s_reg_n_0_[3] ),
        .O(i__carry_i_1__3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_2
       (.I0(state2[3]),
        .O(i__carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry_i_2__0
       (.I0(i__carry__0_i_1__1_n_6),
        .I1(ang_den[8]),
        .I2(i__carry__0_i_1__1_n_7),
        .I3(ang_den[4]),
        .O(i__carry_i_2__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_2__1
       (.I0(expected_points[4]),
        .O(i__carry_i_2__1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_2__2
       (.I0(ang_den[3]),
        .I1(i__carry_i_1__1_n_4),
        .O(i__carry_i_2__2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_2__3
       (.I0(\end_ang_s_reg_n_0_[2] ),
        .I1(\start_ang_s_reg_n_0_[2] ),
        .O(i__carry_i_2__3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_3
       (.I0(state2[2]),
        .O(i__carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_3__0
       (.I0(expected_points[2]),
        .I1(expected_points[3]),
        .O(i__carry_i_3__0_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry_i_3__1
       (.I0(i__carry_i_1__1_n_4),
        .I1(ang_den[3]),
        .I2(i__carry_i_1__1_n_5),
        .I3(ang_den[2]),
        .O(i__carry_i_3__1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_3__2
       (.I0(ang_den[2]),
        .I1(i__carry_i_1__1_n_5),
        .O(i__carry_i_3__2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_3__3
       (.I0(\end_ang_s_reg_n_0_[1] ),
        .I1(\start_ang_s_reg_n_0_[1] ),
        .O(i__carry_i_3__3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_4
       (.I0(state2[1]),
        .O(i__carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry_i_4__0
       (.I0(expected_points[0]),
        .I1(expected_points[1]),
        .O(i__carry_i_4__0_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry_i_4__1
       (.I0(i__carry_i_1__1_n_6),
        .I1(ang_den[1]),
        .I2(i__carry_i_1__1_n_7),
        .I3(ang_den[0]),
        .O(i__carry_i_4__1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_4__2
       (.I0(ang_den[1]),
        .I1(i__carry_i_1__1_n_6),
        .O(i__carry_i_4__2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_4__3
       (.I0(\end_ang_s_reg_n_0_[0] ),
        .I1(\start_ang_s_reg_n_0_[0] ),
        .O(i__carry_i_4__3_n_0));
  LUT3 #(
    .INIT(8'h81)) 
    i__carry_i_5
       (.I0(i__carry__0_i_1__1_n_4),
        .I1(i__carry__0_i_1__1_n_5),
        .I2(ang_den[8]),
        .O(i__carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_5__0
       (.I0(ang_den[0]),
        .I1(i__carry_i_1__1_n_7),
        .O(i__carry_i_5__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_6
       (.I0(ang_den[8]),
        .I1(i__carry__0_i_1__1_n_6),
        .I2(ang_den[4]),
        .I3(i__carry__0_i_1__1_n_7),
        .O(i__carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_6__0
       (.I0(ang_acc[3]),
        .I1(ang_delta[3]),
        .O(i__carry_i_6__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_7
       (.I0(ang_den[3]),
        .I1(i__carry_i_1__1_n_4),
        .I2(ang_den[2]),
        .I3(i__carry_i_1__1_n_5),
        .O(i__carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_7__0
       (.I0(ang_acc[2]),
        .I1(ang_delta[2]),
        .O(i__carry_i_7__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_8
       (.I0(ang_den[1]),
        .I1(i__carry_i_1__1_n_6),
        .I2(ang_den[0]),
        .I3(i__carry_i_1__1_n_7),
        .O(i__carry_i_8_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_8__0
       (.I0(ang_acc[1]),
        .I1(ang_delta[1]),
        .O(i__carry_i_8__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_9
       (.I0(ang_acc[0]),
        .I1(ang_delta[0]),
        .O(i__carry_i_9_n_0));
  CARRY4 p_3_in_carry
       (.CI(1'b0),
        .CO({p_3_in_carry_n_0,p_3_in_carry_n_1,p_3_in_carry_n_2,p_3_in_carry_n_3}),
        .CYINIT(1'b0),
        .DI({points_received[1:0],1'b0,1'b1}),
        .O({p_3_in_carry_n_4,p_3_in_carry_n_5,p_3_in_carry_n_6,p_3_in_carry_n_7}),
        .S({p_3_in_carry_i_1_n_0,p_3_in_carry_i_2_n_0,p_3_in_carry_i_3_n_0,points_received[0]}));
  CARRY4 p_3_in_carry__0
       (.CI(p_3_in_carry_n_0),
        .CO({NLW_p_3_in_carry__0_CO_UNCONNECTED[3:1],p_3_in_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,points_received[2]}),
        .O({NLW_p_3_in_carry__0_O_UNCONNECTED[3:2],p_3_in_carry__0_n_6,p_3_in_carry__0_n_7}),
        .S({1'b0,1'b0,p_3_in_carry__0_i_1_n_0,p_3_in_carry__0_i_2_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    p_3_in_carry__0_i_1
       (.I0(points_received[3]),
        .I1(points_received[5]),
        .O(p_3_in_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_3_in_carry__0_i_2
       (.I0(points_received[2]),
        .I1(points_received[4]),
        .O(p_3_in_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_3_in_carry_i_1
       (.I0(points_received[1]),
        .I1(points_received[3]),
        .O(p_3_in_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_3_in_carry_i_2
       (.I0(points_received[0]),
        .I1(points_received[2]),
        .O(p_3_in_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    p_3_in_carry_i_3
       (.I0(points_received[1]),
        .O(p_3_in_carry_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \payload_index[0]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(payload_index[0]),
        .O(\payload_index[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \payload_index[1]_i_1 
       (.I0(payload_index[1]),
        .I1(payload_index[0]),
        .I2(\state_reg_n_0_[1] ),
        .O(\payload_index[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \payload_index[2]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(payload_index[0]),
        .I2(payload_index[1]),
        .I3(payload_index[2]),
        .O(\payload_index[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \payload_index[3]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(payload_index[1]),
        .I2(payload_index[0]),
        .I3(payload_index[2]),
        .I4(payload_index[3]),
        .O(\payload_index[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \payload_index[4]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(payload_index[3]),
        .I2(payload_index[2]),
        .I3(payload_index[0]),
        .I4(payload_index[1]),
        .I5(payload_index[4]),
        .O(\payload_index[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00600000)) 
    \payload_index[5]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(Q),
        .I3(\state_reg_n_0_[3] ),
        .I4(byte_in_valid),
        .O(payload_index__0));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h7800)) 
    \payload_index[5]_i_2 
       (.I0(\payload_index[5]_i_3_n_0 ),
        .I1(payload_index[4]),
        .I2(payload_index[5]),
        .I3(\state_reg_n_0_[1] ),
        .O(\payload_index[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \payload_index[5]_i_3 
       (.I0(payload_index[3]),
        .I1(payload_index[2]),
        .I2(payload_index[0]),
        .I3(payload_index[1]),
        .O(\payload_index[5]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \payload_index_reg[0] 
       (.C(clk),
        .CE(payload_index__0),
        .D(\payload_index[0]_i_1_n_0 ),
        .Q(payload_index[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \payload_index_reg[1] 
       (.C(clk),
        .CE(payload_index__0),
        .D(\payload_index[1]_i_1_n_0 ),
        .Q(payload_index[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \payload_index_reg[2] 
       (.C(clk),
        .CE(payload_index__0),
        .D(\payload_index[2]_i_1_n_0 ),
        .Q(payload_index[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \payload_index_reg[3] 
       (.C(clk),
        .CE(payload_index__0),
        .D(\payload_index[3]_i_1_n_0 ),
        .Q(payload_index[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \payload_index_reg[4] 
       (.C(clk),
        .CE(payload_index__0),
        .D(\payload_index[4]_i_1_n_0 ),
        .Q(payload_index[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \payload_index_reg[5] 
       (.C(clk),
        .CE(payload_index__0),
        .D(\payload_index[5]_i_2_n_0 ),
        .Q(payload_index[5]),
        .R(SR));
  CARRY4 plusOp_carry
       (.CI(1'b0),
        .CO({plusOp_carry_n_0,plusOp_carry_n_1,plusOp_carry_n_2,plusOp_carry_n_3}),
        .CYINIT(\ang_out_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[4:1]),
        .S({\ang_out_reg_n_0_[4] ,\ang_out_reg_n_0_[3] ,\ang_out_reg_n_0_[2] ,\ang_out_reg_n_0_[1] }));
  CARRY4 plusOp_carry__0
       (.CI(plusOp_carry_n_0),
        .CO({NLW_plusOp_carry__0_CO_UNCONNECTED[3:2],plusOp_carry__0_n_2,plusOp_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_plusOp_carry__0_O_UNCONNECTED[3],plusOp[7:5]}),
        .S({1'b0,\ang_out_reg_n_0_[7] ,\ang_out_reg_n_0_[6] ,\ang_out_reg_n_0_[5] }));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "288" *) 
  (* RTL_RAM_NAME = "U0/u_parser/points_buf" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "35" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    points_buf_reg_r1_0_63_0_2
       (.ADDRA({p_2_in,p_3_in_carry_n_7}),
        .ADDRB({p_2_in,p_3_in_carry_n_7}),
        .ADDRC({p_2_in,p_3_in_carry_n_7}),
        .ADDRD(payload_index),
        .DIA(byte_in[0]),
        .DIB(byte_in[1]),
        .DIC(byte_in[2]),
        .DID(1'b0),
        .DOA(p_6_out[0]),
        .DOB(p_6_out[1]),
        .DOC(p_6_out[2]),
        .DOD(NLW_points_buf_reg_r1_0_63_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(points_buf));
  LUT6 #(
    .INIT(64'h0000200000000000)) 
    points_buf_reg_r1_0_63_0_2_i_1
       (.I0(Q),
        .I1(\state_reg_n_0_[3] ),
        .I2(byte_in_valid),
        .I3(rst),
        .I4(\state_reg_n_0_[0] ),
        .I5(\state_reg_n_0_[1] ),
        .O(points_buf));
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    points_buf_reg_r1_0_63_0_2_i_2
       (.I0(p_3_in_carry__0_n_6),
        .I1(p_3_in_carry_n_5),
        .I2(p_3_in_carry_n_6),
        .I3(p_3_in_carry_n_4),
        .I4(p_3_in_carry__0_n_7),
        .O(p_2_in[5]));
  LUT4 #(
    .INIT(16'h7F80)) 
    points_buf_reg_r1_0_63_0_2_i_3
       (.I0(p_3_in_carry_n_5),
        .I1(p_3_in_carry_n_6),
        .I2(p_3_in_carry_n_4),
        .I3(p_3_in_carry__0_n_7),
        .O(p_2_in[4]));
  LUT3 #(
    .INIT(8'h6A)) 
    points_buf_reg_r1_0_63_0_2_i_4
       (.I0(p_3_in_carry_n_4),
        .I1(p_3_in_carry_n_6),
        .I2(p_3_in_carry_n_5),
        .O(p_2_in[3]));
  LUT2 #(
    .INIT(4'h6)) 
    points_buf_reg_r1_0_63_0_2_i_5
       (.I0(p_3_in_carry_n_6),
        .I1(p_3_in_carry_n_5),
        .O(p_2_in[2]));
  LUT1 #(
    .INIT(2'h1)) 
    points_buf_reg_r1_0_63_0_2_i_6
       (.I0(p_3_in_carry_n_6),
        .O(p_2_in[1]));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "288" *) 
  (* RTL_RAM_NAME = "U0/u_parser/points_buf" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "35" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    points_buf_reg_r1_0_63_3_5
       (.ADDRA({p_2_in,p_3_in_carry_n_7}),
        .ADDRB({p_2_in,p_3_in_carry_n_7}),
        .ADDRC({p_2_in,p_3_in_carry_n_7}),
        .ADDRD(payload_index),
        .DIA(byte_in[3]),
        .DIB(byte_in[4]),
        .DIC(byte_in[5]),
        .DID(1'b0),
        .DOA(p_6_out[3]),
        .DOB(p_6_out[4]),
        .DOC(p_6_out[5]),
        .DOD(NLW_points_buf_reg_r1_0_63_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(points_buf));
  (* RTL_RAM_BITS = "288" *) 
  (* RTL_RAM_NAME = "U0/u_parser/points_buf" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "35" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM64X1D #(
    .INIT(64'h0000000000000000)) 
    points_buf_reg_r1_0_63_6_6
       (.A0(payload_index[0]),
        .A1(payload_index[1]),
        .A2(payload_index[2]),
        .A3(payload_index[3]),
        .A4(payload_index[4]),
        .A5(payload_index[5]),
        .D(byte_in[6]),
        .DPO(p_6_out[6]),
        .DPRA0(p_3_in_carry_n_7),
        .DPRA1(p_2_in[1]),
        .DPRA2(p_2_in[2]),
        .DPRA3(p_2_in[3]),
        .DPRA4(p_2_in[4]),
        .DPRA5(p_2_in[5]),
        .SPO(NLW_points_buf_reg_r1_0_63_6_6_SPO_UNCONNECTED),
        .WCLK(clk),
        .WE(points_buf));
  (* RTL_RAM_BITS = "288" *) 
  (* RTL_RAM_NAME = "U0/u_parser/points_buf" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "35" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "7" *) 
  (* ram_slice_end = "7" *) 
  RAM64X1D #(
    .INIT(64'h0000000000000000)) 
    points_buf_reg_r1_0_63_7_7
       (.A0(payload_index[0]),
        .A1(payload_index[1]),
        .A2(payload_index[2]),
        .A3(payload_index[3]),
        .A4(payload_index[4]),
        .A5(payload_index[5]),
        .D(byte_in[7]),
        .DPO(p_6_out[7]),
        .DPRA0(p_3_in_carry_n_7),
        .DPRA1(p_2_in[1]),
        .DPRA2(p_2_in[2]),
        .DPRA3(p_2_in[3]),
        .DPRA4(p_2_in[4]),
        .DPRA5(p_2_in[5]),
        .SPO(NLW_points_buf_reg_r1_0_63_7_7_SPO_UNCONNECTED),
        .WCLK(clk),
        .WE(points_buf));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "288" *) 
  (* RTL_RAM_NAME = "U0/u_parser/points_buf" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "35" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    points_buf_reg_r2_0_63_0_2
       (.ADDRA({points_buf_reg_r2_0_63_0_2_i_1_n_0,points_buf_reg_r2_0_63_0_2_i_2_n_0,points_buf_reg_r2_0_63_0_2_i_3_n_0,points_buf_reg_r2_0_63_0_2_i_4_n_0,points_buf_reg_r2_0_63_0_2_i_5_n_0,points_buf_reg_r2_0_63_0_2_i_6_n_0}),
        .ADDRB({points_buf_reg_r2_0_63_0_2_i_1_n_0,points_buf_reg_r2_0_63_0_2_i_2_n_0,points_buf_reg_r2_0_63_0_2_i_3_n_0,points_buf_reg_r2_0_63_0_2_i_4_n_0,points_buf_reg_r2_0_63_0_2_i_5_n_0,points_buf_reg_r2_0_63_0_2_i_6_n_0}),
        .ADDRC({points_buf_reg_r2_0_63_0_2_i_1_n_0,points_buf_reg_r2_0_63_0_2_i_2_n_0,points_buf_reg_r2_0_63_0_2_i_3_n_0,points_buf_reg_r2_0_63_0_2_i_4_n_0,points_buf_reg_r2_0_63_0_2_i_5_n_0,points_buf_reg_r2_0_63_0_2_i_6_n_0}),
        .ADDRD(payload_index),
        .DIA(byte_in[0]),
        .DIB(byte_in[1]),
        .DIC(byte_in[2]),
        .DID(1'b0),
        .DOA(p_2_out[0]),
        .DOB(p_2_out[1]),
        .DOC(p_2_out[2]),
        .DOD(NLW_points_buf_reg_r2_0_63_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(points_buf));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    points_buf_reg_r2_0_63_0_2_i_1
       (.I0(p_3_in_carry__0_n_6),
        .I1(p_3_in_carry_n_7),
        .I2(p_3_in_carry_n_4),
        .I3(p_3_in_carry_n_6),
        .I4(p_3_in_carry_n_5),
        .I5(p_3_in_carry__0_n_7),
        .O(points_buf_reg_r2_0_63_0_2_i_1_n_0));
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    points_buf_reg_r2_0_63_0_2_i_2
       (.I0(p_3_in_carry__0_n_7),
        .I1(p_3_in_carry_n_5),
        .I2(p_3_in_carry_n_6),
        .I3(p_3_in_carry_n_4),
        .I4(p_3_in_carry_n_7),
        .O(points_buf_reg_r2_0_63_0_2_i_2_n_0));
  LUT4 #(
    .INIT(16'h6AAA)) 
    points_buf_reg_r2_0_63_0_2_i_3
       (.I0(p_3_in_carry_n_4),
        .I1(p_3_in_carry_n_6),
        .I2(p_3_in_carry_n_5),
        .I3(p_3_in_carry_n_7),
        .O(points_buf_reg_r2_0_63_0_2_i_3_n_0));
  LUT3 #(
    .INIT(8'h6A)) 
    points_buf_reg_r2_0_63_0_2_i_4
       (.I0(p_3_in_carry_n_5),
        .I1(p_3_in_carry_n_6),
        .I2(p_3_in_carry_n_7),
        .O(points_buf_reg_r2_0_63_0_2_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    points_buf_reg_r2_0_63_0_2_i_5
       (.I0(p_3_in_carry_n_7),
        .I1(p_3_in_carry_n_6),
        .O(points_buf_reg_r2_0_63_0_2_i_5_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    points_buf_reg_r2_0_63_0_2_i_6
       (.I0(p_3_in_carry_n_7),
        .O(points_buf_reg_r2_0_63_0_2_i_6_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "288" *) 
  (* RTL_RAM_NAME = "U0/u_parser/points_buf" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "35" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    points_buf_reg_r2_0_63_3_5
       (.ADDRA({points_buf_reg_r2_0_63_0_2_i_1_n_0,points_buf_reg_r2_0_63_0_2_i_2_n_0,points_buf_reg_r2_0_63_0_2_i_3_n_0,points_buf_reg_r2_0_63_0_2_i_4_n_0,points_buf_reg_r2_0_63_0_2_i_5_n_0,points_buf_reg_r2_0_63_0_2_i_6_n_0}),
        .ADDRB({points_buf_reg_r2_0_63_0_2_i_1_n_0,points_buf_reg_r2_0_63_0_2_i_2_n_0,points_buf_reg_r2_0_63_0_2_i_3_n_0,points_buf_reg_r2_0_63_0_2_i_4_n_0,points_buf_reg_r2_0_63_0_2_i_5_n_0,points_buf_reg_r2_0_63_0_2_i_6_n_0}),
        .ADDRC({points_buf_reg_r2_0_63_0_2_i_1_n_0,points_buf_reg_r2_0_63_0_2_i_2_n_0,points_buf_reg_r2_0_63_0_2_i_3_n_0,points_buf_reg_r2_0_63_0_2_i_4_n_0,points_buf_reg_r2_0_63_0_2_i_5_n_0,points_buf_reg_r2_0_63_0_2_i_6_n_0}),
        .ADDRD(payload_index),
        .DIA(byte_in[3]),
        .DIB(byte_in[4]),
        .DIC(byte_in[5]),
        .DID(1'b0),
        .DOA(p_2_out[3]),
        .DOB(p_2_out[4]),
        .DOC(p_2_out[5]),
        .DOD(NLW_points_buf_reg_r2_0_63_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(points_buf));
  (* RTL_RAM_BITS = "288" *) 
  (* RTL_RAM_NAME = "U0/u_parser/points_buf" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "35" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM64X1D #(
    .INIT(64'h0000000000000000)) 
    points_buf_reg_r2_0_63_6_6
       (.A0(payload_index[0]),
        .A1(payload_index[1]),
        .A2(payload_index[2]),
        .A3(payload_index[3]),
        .A4(payload_index[4]),
        .A5(payload_index[5]),
        .D(byte_in[6]),
        .DPO(p_2_out[6]),
        .DPRA0(points_buf_reg_r2_0_63_0_2_i_6_n_0),
        .DPRA1(points_buf_reg_r2_0_63_0_2_i_5_n_0),
        .DPRA2(points_buf_reg_r2_0_63_0_2_i_4_n_0),
        .DPRA3(points_buf_reg_r2_0_63_0_2_i_3_n_0),
        .DPRA4(points_buf_reg_r2_0_63_0_2_i_2_n_0),
        .DPRA5(points_buf_reg_r2_0_63_0_2_i_1_n_0),
        .SPO(NLW_points_buf_reg_r2_0_63_6_6_SPO_UNCONNECTED),
        .WCLK(clk),
        .WE(points_buf));
  (* RTL_RAM_BITS = "288" *) 
  (* RTL_RAM_NAME = "U0/u_parser/points_buf" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "35" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "7" *) 
  (* ram_slice_end = "7" *) 
  RAM64X1D #(
    .INIT(64'h0000000000000000)) 
    points_buf_reg_r2_0_63_7_7
       (.A0(payload_index[0]),
        .A1(payload_index[1]),
        .A2(payload_index[2]),
        .A3(payload_index[3]),
        .A4(payload_index[4]),
        .A5(payload_index[5]),
        .D(byte_in[7]),
        .DPO(p_2_out[7]),
        .DPRA0(points_buf_reg_r2_0_63_0_2_i_6_n_0),
        .DPRA1(points_buf_reg_r2_0_63_0_2_i_5_n_0),
        .DPRA2(points_buf_reg_r2_0_63_0_2_i_4_n_0),
        .DPRA3(points_buf_reg_r2_0_63_0_2_i_3_n_0),
        .DPRA4(points_buf_reg_r2_0_63_0_2_i_2_n_0),
        .DPRA5(points_buf_reg_r2_0_63_0_2_i_1_n_0),
        .SPO(NLW_points_buf_reg_r2_0_63_7_7_SPO_UNCONNECTED),
        .WCLK(clk),
        .WE(points_buf));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "288" *) 
  (* RTL_RAM_NAME = "U0/u_parser/points_buf" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "35" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    points_buf_reg_r3_0_63_0_2
       (.ADDRA({p_3_in_carry__0_n_6,p_3_in_carry__0_n_7,p_3_in_carry_n_4,p_3_in_carry_n_5,p_3_in_carry_n_6,p_3_in_carry_n_7}),
        .ADDRB({p_3_in_carry__0_n_6,p_3_in_carry__0_n_7,p_3_in_carry_n_4,p_3_in_carry_n_5,p_3_in_carry_n_6,p_3_in_carry_n_7}),
        .ADDRC({p_3_in_carry__0_n_6,p_3_in_carry__0_n_7,p_3_in_carry_n_4,p_3_in_carry_n_5,p_3_in_carry_n_6,p_3_in_carry_n_7}),
        .ADDRD(payload_index),
        .DIA(byte_in[0]),
        .DIB(byte_in[1]),
        .DIC(byte_in[2]),
        .DID(1'b0),
        .DOA(p_4_out[0]),
        .DOB(p_4_out[1]),
        .DOC(p_4_out[2]),
        .DOD(NLW_points_buf_reg_r3_0_63_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(points_buf));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "288" *) 
  (* RTL_RAM_NAME = "U0/u_parser/points_buf" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "35" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    points_buf_reg_r3_0_63_3_5
       (.ADDRA({p_3_in_carry__0_n_6,p_3_in_carry__0_n_7,p_3_in_carry_n_4,p_3_in_carry_n_5,p_3_in_carry_n_6,p_3_in_carry_n_7}),
        .ADDRB({p_3_in_carry__0_n_6,p_3_in_carry__0_n_7,p_3_in_carry_n_4,p_3_in_carry_n_5,p_3_in_carry_n_6,p_3_in_carry_n_7}),
        .ADDRC({p_3_in_carry__0_n_6,p_3_in_carry__0_n_7,p_3_in_carry_n_4,p_3_in_carry_n_5,p_3_in_carry_n_6,p_3_in_carry_n_7}),
        .ADDRD(payload_index),
        .DIA(byte_in[3]),
        .DIB(byte_in[4]),
        .DIC(byte_in[5]),
        .DID(1'b0),
        .DOA(p_4_out[3]),
        .DOB(p_4_out[4]),
        .DOC(p_4_out[5]),
        .DOD(NLW_points_buf_reg_r3_0_63_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(points_buf));
  (* RTL_RAM_BITS = "288" *) 
  (* RTL_RAM_NAME = "U0/u_parser/points_buf" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "35" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM64X1D #(
    .INIT(64'h0000000000000000)) 
    points_buf_reg_r3_0_63_6_6
       (.A0(payload_index[0]),
        .A1(payload_index[1]),
        .A2(payload_index[2]),
        .A3(payload_index[3]),
        .A4(payload_index[4]),
        .A5(payload_index[5]),
        .D(byte_in[6]),
        .DPO(p_4_out[6]),
        .DPRA0(p_3_in_carry_n_7),
        .DPRA1(p_3_in_carry_n_6),
        .DPRA2(p_3_in_carry_n_5),
        .DPRA3(p_3_in_carry_n_4),
        .DPRA4(p_3_in_carry__0_n_7),
        .DPRA5(p_3_in_carry__0_n_6),
        .SPO(NLW_points_buf_reg_r3_0_63_6_6_SPO_UNCONNECTED),
        .WCLK(clk),
        .WE(points_buf));
  (* RTL_RAM_BITS = "288" *) 
  (* RTL_RAM_NAME = "U0/u_parser/points_buf" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "35" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "7" *) 
  (* ram_slice_end = "7" *) 
  RAM64X1D #(
    .INIT(64'h0000000000000000)) 
    points_buf_reg_r3_0_63_7_7
       (.A0(payload_index[0]),
        .A1(payload_index[1]),
        .A2(payload_index[2]),
        .A3(payload_index[3]),
        .A4(payload_index[4]),
        .A5(payload_index[5]),
        .D(byte_in[7]),
        .DPO(p_4_out[7]),
        .DPRA0(p_3_in_carry_n_7),
        .DPRA1(p_3_in_carry_n_6),
        .DPRA2(p_3_in_carry_n_5),
        .DPRA3(p_3_in_carry_n_4),
        .DPRA4(p_3_in_carry__0_n_7),
        .DPRA5(p_3_in_carry__0_n_6),
        .SPO(NLW_points_buf_reg_r3_0_63_7_7_SPO_UNCONNECTED),
        .WCLK(clk),
        .WE(points_buf));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \points_received[0]_i_1 
       (.I0(\pts_left[7]_i_3_n_0 ),
        .I1(points_received[0]),
        .O(A[0]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \points_received[1]_i_1 
       (.I0(\pts_left[7]_i_3_n_0 ),
        .I1(points_received[0]),
        .I2(points_received[1]),
        .O(A[1]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \points_received[2]_i_1 
       (.I0(\pts_left[7]_i_3_n_0 ),
        .I1(points_received[1]),
        .I2(points_received[0]),
        .I3(points_received[2]),
        .O(A[2]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \points_received[3]_i_1 
       (.I0(\pts_left[7]_i_3_n_0 ),
        .I1(points_received[0]),
        .I2(points_received[1]),
        .I3(points_received[2]),
        .I4(points_received[3]),
        .O(A[3]));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \points_received[4]_i_1 
       (.I0(\pts_left[7]_i_3_n_0 ),
        .I1(points_received[3]),
        .I2(points_received[2]),
        .I3(points_received[1]),
        .I4(points_received[0]),
        .I5(points_received[4]),
        .O(A[4]));
  LUT5 #(
    .INIT(32'hAABAAAAA)) 
    \points_received[5]_i_1 
       (.I0(\pts_left[7]_i_3_n_0 ),
        .I1(\state_reg[1]_0 ),
        .I2(byte_in_valid),
        .I3(Q),
        .I4(\state_reg[3]_0 ),
        .O(\points_received[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \points_received[5]_i_2 
       (.I0(\pts_left[7]_i_3_n_0 ),
        .I1(points_received[4]),
        .I2(\points_received[5]_i_3_n_0 ),
        .I3(points_received[5]),
        .O(A[5]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \points_received[5]_i_3 
       (.I0(points_received[3]),
        .I1(points_received[2]),
        .I2(points_received[1]),
        .I3(points_received[0]),
        .O(\points_received[5]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \points_received_reg[0] 
       (.C(clk),
        .CE(\points_received[5]_i_1_n_0 ),
        .D(A[0]),
        .Q(points_received[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \points_received_reg[1] 
       (.C(clk),
        .CE(\points_received[5]_i_1_n_0 ),
        .D(A[1]),
        .Q(points_received[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \points_received_reg[2] 
       (.C(clk),
        .CE(\points_received[5]_i_1_n_0 ),
        .D(A[2]),
        .Q(points_received[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \points_received_reg[3] 
       (.C(clk),
        .CE(\points_received[5]_i_1_n_0 ),
        .D(A[3]),
        .Q(points_received[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \points_received_reg[4] 
       (.C(clk),
        .CE(\points_received[5]_i_1_n_0 ),
        .D(A[4]),
        .Q(points_received[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \points_received_reg[5] 
       (.C(clk),
        .CE(\points_received[5]_i_1_n_0 ),
        .D(A[5]),
        .Q(points_received[5]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h74)) 
    \pts_left[0]_i_1 
       (.I0(pts_left[0]),
        .I1(\pts_left[7]_i_3_n_0 ),
        .I2(expected_points[0]),
        .O(\pts_left[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h9F90)) 
    \pts_left[1]_i_1 
       (.I0(pts_left[0]),
        .I1(pts_left[1]),
        .I2(\pts_left[7]_i_3_n_0 ),
        .I3(expected_points[1]),
        .O(\pts_left[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'hE1FFE100)) 
    \pts_left[2]_i_1 
       (.I0(pts_left[0]),
        .I1(pts_left[1]),
        .I2(pts_left[2]),
        .I3(\pts_left[7]_i_3_n_0 ),
        .I4(expected_points[2]),
        .O(\pts_left[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAA9FFFFAAA90000)) 
    \pts_left[3]_i_1 
       (.I0(pts_left[3]),
        .I1(pts_left[0]),
        .I2(pts_left[1]),
        .I3(pts_left[2]),
        .I4(\pts_left[7]_i_3_n_0 ),
        .I5(expected_points[3]),
        .O(\pts_left[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h9AFF9A00)) 
    \pts_left[4]_i_1 
       (.I0(pts_left[4]),
        .I1(pts_left[3]),
        .I2(\pts_left[6]_i_2_n_0 ),
        .I3(\pts_left[7]_i_3_n_0 ),
        .I4(expected_points[4]),
        .O(\pts_left[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hA8AA0200)) 
    \pts_left[5]_i_1 
       (.I0(\pts_left[7]_i_3_n_0 ),
        .I1(pts_left[4]),
        .I2(pts_left[3]),
        .I3(\pts_left[6]_i_2_n_0 ),
        .I4(pts_left[5]),
        .O(\pts_left[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAA8A00000020)) 
    \pts_left[6]_i_1 
       (.I0(\pts_left[7]_i_3_n_0 ),
        .I1(pts_left[5]),
        .I2(\pts_left[6]_i_2_n_0 ),
        .I3(pts_left[3]),
        .I4(pts_left[4]),
        .I5(pts_left[6]),
        .O(\pts_left[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \pts_left[6]_i_2 
       (.I0(pts_left[2]),
        .I1(pts_left[1]),
        .I2(pts_left[0]),
        .O(\pts_left[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF002000000000)) 
    \pts_left[7]_i_1 
       (.I0(\state_reg[3]_0 ),
        .I1(Q),
        .I2(byte_in_valid),
        .I3(\state_reg[1]_0 ),
        .I4(\pts_left[7]_i_3_n_0 ),
        .I5(rst),
        .O(\pts_left[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAA80002)) 
    \pts_left[7]_i_2 
       (.I0(\pts_left[7]_i_3_n_0 ),
        .I1(pts_left[6]),
        .I2(\pts_left[7]_i_4_n_0 ),
        .I3(pts_left[5]),
        .I4(pts_left[7]),
        .O(\pts_left[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    \pts_left[7]_i_3 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(Q),
        .I3(\state_reg_n_0_[3] ),
        .I4(p_tvalid),
        .I5(\state[3]_i_5_n_0 ),
        .O(\pts_left[7]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \pts_left[7]_i_4 
       (.I0(pts_left[4]),
        .I1(pts_left[3]),
        .I2(pts_left[0]),
        .I3(pts_left[1]),
        .I4(pts_left[2]),
        .O(\pts_left[7]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pts_left_reg[0] 
       (.C(clk),
        .CE(\pts_left[7]_i_1_n_0 ),
        .D(\pts_left[0]_i_1_n_0 ),
        .Q(pts_left[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pts_left_reg[1] 
       (.C(clk),
        .CE(\pts_left[7]_i_1_n_0 ),
        .D(\pts_left[1]_i_1_n_0 ),
        .Q(pts_left[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pts_left_reg[2] 
       (.C(clk),
        .CE(\pts_left[7]_i_1_n_0 ),
        .D(\pts_left[2]_i_1_n_0 ),
        .Q(pts_left[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pts_left_reg[3] 
       (.C(clk),
        .CE(\pts_left[7]_i_1_n_0 ),
        .D(\pts_left[3]_i_1_n_0 ),
        .Q(pts_left[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pts_left_reg[4] 
       (.C(clk),
        .CE(\pts_left[7]_i_1_n_0 ),
        .D(\pts_left[4]_i_1_n_0 ),
        .Q(pts_left[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pts_left_reg[5] 
       (.C(clk),
        .CE(\pts_left[7]_i_1_n_0 ),
        .D(\pts_left[5]_i_1_n_0 ),
        .Q(pts_left[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pts_left_reg[6] 
       (.C(clk),
        .CE(\pts_left[7]_i_1_n_0 ),
        .D(\pts_left[6]_i_1_n_0 ),
        .Q(pts_left[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pts_left_reg[7] 
       (.C(clk),
        .CE(\pts_left[7]_i_1_n_0 ),
        .D(\pts_left[7]_i_2_n_0 ),
        .Q(pts_left[7]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000004000)) 
    \start_ang_s[7]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(rst),
        .I2(byte_in_valid),
        .I3(Q),
        .I4(\state_reg_n_0_[1] ),
        .I5(\state_reg_n_0_[0] ),
        .O(start_ang_s));
  FDRE #(
    .INIT(1'b0)) 
    \start_ang_s_reg[0] 
       (.C(clk),
        .CE(start_ang_s),
        .D(byte_in[0]),
        .Q(\start_ang_s_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \start_ang_s_reg[1] 
       (.C(clk),
        .CE(start_ang_s),
        .D(byte_in[1]),
        .Q(\start_ang_s_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \start_ang_s_reg[2] 
       (.C(clk),
        .CE(start_ang_s),
        .D(byte_in[2]),
        .Q(\start_ang_s_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \start_ang_s_reg[3] 
       (.C(clk),
        .CE(start_ang_s),
        .D(byte_in[3]),
        .Q(\start_ang_s_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \start_ang_s_reg[4] 
       (.C(clk),
        .CE(start_ang_s),
        .D(byte_in[4]),
        .Q(\start_ang_s_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \start_ang_s_reg[5] 
       (.C(clk),
        .CE(start_ang_s),
        .D(byte_in[5]),
        .Q(\start_ang_s_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \start_ang_s_reg[6] 
       (.C(clk),
        .CE(start_ang_s),
        .D(byte_in[6]),
        .Q(\start_ang_s_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \start_ang_s_reg[7] 
       (.C(clk),
        .CE(start_ang_s),
        .D(byte_in[7]),
        .Q(\start_ang_s_reg_n_0_[7] ),
        .R(1'b0));
  CARRY4 state0_carry
       (.CI(1'b0),
        .CO({state0_carry_n_0,state0_carry_n_1,state0_carry_n_2,state0_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_state0_carry_O_UNCONNECTED[3:0]),
        .S({state0_carry_i_1_n_0,state0_carry_i_2_n_0,state0_carry_i_3_n_0,state0_carry_i_4_n_0}));
  CARRY4 state0_carry__0
       (.CI(state0_carry_n_0),
        .CO({state0_carry__0_n_0,state0_carry__0_n_1,state0_carry__0_n_2,state0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_state0_carry__0_O_UNCONNECTED[3:0]),
        .S({state0_carry__0_i_1_n_0,state0_carry__0_i_2_n_0,state0_carry__0_i_3_n_0,state0_carry__0_i_4_n_0}));
  LUT3 #(
    .INIT(8'h01)) 
    state0_carry__0_i_1
       (.I0(state1[22]),
        .I1(state1[21]),
        .I2(state1[23]),
        .O(state0_carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    state0_carry__0_i_2
       (.I0(state1[19]),
        .I1(state1[18]),
        .I2(state1[20]),
        .O(state0_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    state0_carry__0_i_3
       (.I0(state1[16]),
        .I1(state1[15]),
        .I2(state1[17]),
        .O(state0_carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    state0_carry__0_i_4
       (.I0(state1[13]),
        .I1(state1[12]),
        .I2(state1[14]),
        .O(state0_carry__0_i_4_n_0));
  CARRY4 state0_carry__1
       (.CI(state0_carry__0_n_0),
        .CO({NLW_state0_carry__1_CO_UNCONNECTED[3],state0_carry__1_n_1,state0_carry__1_n_2,state0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_state0_carry__1_O_UNCONNECTED[3:0]),
        .S({1'b0,state0_carry__1_i_1_n_0,state0_carry__1_i_2_n_0,state0_carry__1_i_3_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    state0_carry__1_i_1
       (.I0(state1[30]),
        .I1(state1[31]),
        .O(state0_carry__1_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    state0_carry__1_i_2
       (.I0(state1[28]),
        .I1(state1[27]),
        .I2(state1[29]),
        .O(state0_carry__1_i_2_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    state0_carry__1_i_3
       (.I0(state1[25]),
        .I1(state1[24]),
        .I2(state1[26]),
        .O(state0_carry__1_i_3_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    state0_carry_i_1
       (.I0(state1[10]),
        .I1(state1[9]),
        .I2(state1[11]),
        .O(state0_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    state0_carry_i_2
       (.I0(state1[7]),
        .I1(state1[6]),
        .I2(state1[8]),
        .O(state0_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    state0_carry_i_3
       (.I0(state1[4]),
        .I1(payload_index[4]),
        .I2(payload_index[5]),
        .I3(state1[5]),
        .I4(payload_index[3]),
        .I5(state1[3]),
        .O(state0_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h6006000000006006)) 
    state0_carry_i_4
       (.I0(state2[0]),
        .I1(payload_index[0]),
        .I2(payload_index[2]),
        .I3(state1[2]),
        .I4(payload_index[1]),
        .I5(state1[1]),
        .O(state0_carry_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \state1_inferred__1/i__carry 
       (.CI(1'b0),
        .CO({\state1_inferred__1/i__carry_n_0 ,\state1_inferred__1/i__carry_n_1 ,\state1_inferred__1/i__carry_n_2 ,\state1_inferred__1/i__carry_n_3 }),
        .CYINIT(state2[0]),
        .DI(state2[4:1]),
        .O(state1[4:1]),
        .S({i__carry_i_1_n_0,i__carry_i_2_n_0,i__carry_i_3_n_0,i__carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \state1_inferred__1/i__carry__0 
       (.CI(\state1_inferred__1/i__carry_n_0 ),
        .CO({\state1_inferred__1/i__carry__0_n_0 ,\state1_inferred__1/i__carry__0_n_1 ,\state1_inferred__1/i__carry__0_n_2 ,\state1_inferred__1/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__0_i_1__0_n_0,i__carry__0_i_2_n_0,state2[6:5]}),
        .O(state1[8:5]),
        .S({state2_carry__0_n_0,state2_carry__0_n_0,i__carry__0_i_3_n_0,i__carry__0_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \state1_inferred__1/i__carry__1 
       (.CI(\state1_inferred__1/i__carry__0_n_0 ),
        .CO({\state1_inferred__1/i__carry__1_n_0 ,\state1_inferred__1/i__carry__1_n_1 ,\state1_inferred__1/i__carry__1_n_2 ,\state1_inferred__1/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__1_i_1_n_0,i__carry__1_i_2_n_0,i__carry__1_i_3_n_0,i__carry__1_i_4_n_0}),
        .O(state1[12:9]),
        .S({state2_carry__0_n_0,state2_carry__0_n_0,state2_carry__0_n_0,state2_carry__0_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \state1_inferred__1/i__carry__2 
       (.CI(\state1_inferred__1/i__carry__1_n_0 ),
        .CO({\state1_inferred__1/i__carry__2_n_0 ,\state1_inferred__1/i__carry__2_n_1 ,\state1_inferred__1/i__carry__2_n_2 ,\state1_inferred__1/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__2_i_1_n_0,i__carry__2_i_2_n_0,i__carry__2_i_3_n_0,i__carry__2_i_4_n_0}),
        .O(state1[16:13]),
        .S({state2_carry__0_n_0,state2_carry__0_n_0,state2_carry__0_n_0,state2_carry__0_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \state1_inferred__1/i__carry__3 
       (.CI(\state1_inferred__1/i__carry__2_n_0 ),
        .CO({\state1_inferred__1/i__carry__3_n_0 ,\state1_inferred__1/i__carry__3_n_1 ,\state1_inferred__1/i__carry__3_n_2 ,\state1_inferred__1/i__carry__3_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__3_i_1_n_0,i__carry__3_i_2_n_0,i__carry__3_i_3_n_0,i__carry__3_i_4_n_0}),
        .O(state1[20:17]),
        .S({state2_carry__0_n_0,state2_carry__0_n_0,state2_carry__0_n_0,state2_carry__0_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \state1_inferred__1/i__carry__4 
       (.CI(\state1_inferred__1/i__carry__3_n_0 ),
        .CO({\state1_inferred__1/i__carry__4_n_0 ,\state1_inferred__1/i__carry__4_n_1 ,\state1_inferred__1/i__carry__4_n_2 ,\state1_inferred__1/i__carry__4_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__4_i_1_n_0,i__carry__4_i_2_n_0,i__carry__4_i_3_n_0,i__carry__4_i_4_n_0}),
        .O(state1[24:21]),
        .S({state2_carry__0_n_0,state2_carry__0_n_0,state2_carry__0_n_0,state2_carry__0_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \state1_inferred__1/i__carry__5 
       (.CI(\state1_inferred__1/i__carry__4_n_0 ),
        .CO({\state1_inferred__1/i__carry__5_n_0 ,\state1_inferred__1/i__carry__5_n_1 ,\state1_inferred__1/i__carry__5_n_2 ,\state1_inferred__1/i__carry__5_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__5_i_1_n_0,i__carry__5_i_2_n_0,i__carry__5_i_3_n_0,i__carry__5_i_4_n_0}),
        .O(state1[28:25]),
        .S({state2_carry__0_n_0,state2_carry__0_n_0,state2_carry__0_n_0,state2_carry__0_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \state1_inferred__1/i__carry__6 
       (.CI(\state1_inferred__1/i__carry__5_n_0 ),
        .CO({\NLW_state1_inferred__1/i__carry__6_CO_UNCONNECTED [3:2],\state1_inferred__1/i__carry__6_n_2 ,\state1_inferred__1/i__carry__6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,state2[31],i__carry__6_i_2_n_0}),
        .O({\NLW_state1_inferred__1/i__carry__6_O_UNCONNECTED [3],state1[31:29]}),
        .S({1'b0,state2_carry__0_n_0,state2_carry__0_n_0,state2_carry__0_n_0}));
  CARRY4 state2_carry
       (.CI(1'b0),
        .CO({state2_carry_n_0,state2_carry_n_1,state2_carry_n_2,state2_carry_n_3}),
        .CYINIT(1'b0),
        .DI({expected_points[1:0],1'b0,1'b1}),
        .O(state2[3:0]),
        .S({state2_carry_i_1_n_0,state2_carry_i_2_n_0,state2_carry_i_3_n_0,expected_points[0]}));
  CARRY4 state2_carry__0
       (.CI(state2_carry_n_0),
        .CO({state2_carry__0_n_0,NLW_state2_carry__0_CO_UNCONNECTED[2],state2_carry__0_n_2,state2_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,expected_points[4:2]}),
        .O({NLW_state2_carry__0_O_UNCONNECTED[3],state2[6:4]}),
        .S({1'b1,state2_carry__0_i_1_n_0,state2_carry__0_i_2_n_0,state2_carry__0_i_3_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    state2_carry__0_i_1
       (.I0(expected_points[4]),
        .O(state2_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    state2_carry__0_i_2
       (.I0(expected_points[3]),
        .O(state2_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    state2_carry__0_i_3
       (.I0(expected_points[2]),
        .I1(expected_points[4]),
        .O(state2_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    state2_carry_i_1
       (.I0(expected_points[1]),
        .I1(expected_points[3]),
        .O(state2_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    state2_carry_i_2
       (.I0(expected_points[0]),
        .I1(expected_points[2]),
        .O(state2_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    state2_carry_i_3
       (.I0(expected_points[1]),
        .O(state2_carry_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'h07)) 
    \state[0]_i_1 
       (.I0(Q),
        .I1(\state_reg_n_0_[3] ),
        .I2(\state_reg_n_0_[0] ),
        .O(p_0_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h0770)) 
    \state[1]_i_1 
       (.I0(Q),
        .I1(\state_reg_n_0_[3] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[0] ),
        .O(p_0_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h08007878)) 
    \state[2]_i_1 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(Q),
        .I3(\state_reg[3]_0 ),
        .I4(\state_reg_n_0_[3] ),
        .O(p_0_out[2]));
  LUT4 #(
    .INIT(16'hF444)) 
    \state[3]_i_1 
       (.I0(\state[3]_i_3_n_0 ),
        .I1(byte_in_valid),
        .I2(\state[3]_i_4_n_0 ),
        .I3(\state[3]_i_5_n_0 ),
        .O(\state[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h4040AA2A)) 
    \state[3]_i_2 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg[3]_0 ),
        .I4(Q),
        .O(p_0_out[3]));
  LUT6 #(
    .INIT(64'h0000000000002E22)) 
    \state[3]_i_3 
       (.I0(\crc_s_reg[0]_0 ),
        .I1(\state_reg_n_0_[1] ),
        .I2(state0_carry__1_n_1),
        .I3(Q),
        .I4(\state_reg_n_0_[0] ),
        .I5(\state_reg_n_0_[3] ),
        .O(\state[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h00000040)) 
    \state[3]_i_4 
       (.I0(p_tvalid),
        .I1(\state_reg_n_0_[3] ),
        .I2(Q),
        .I3(\state_reg_n_0_[0] ),
        .I4(\state_reg_n_0_[1] ),
        .O(\state[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \state[3]_i_5 
       (.I0(\pts_left[6]_i_2_n_0 ),
        .I1(pts_left[3]),
        .I2(pts_left[4]),
        .I3(pts_left[5]),
        .I4(pts_left[6]),
        .I5(pts_left[7]),
        .O(\state[3]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[0] 
       (.C(clk),
        .CE(\state[3]_i_1_n_0 ),
        .D(p_0_out[0]),
        .Q(\state_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(clk),
        .CE(\state[3]_i_1_n_0 ),
        .D(p_0_out[1]),
        .Q(\state_reg_n_0_[1] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[2] 
       (.C(clk),
        .CE(\state[3]_i_1_n_0 ),
        .D(p_0_out[2]),
        .Q(Q),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[3] 
       (.C(clk),
        .CE(\state[3]_i_1_n_0 ),
        .D(p_0_out[3]),
        .Q(\state_reg_n_0_[3] ),
        .R(SR));
  LUT2 #(
    .INIT(4'h8)) 
    \tdata_s[23]_i_1 
       (.I0(\pts_left[7]_i_3_n_0 ),
        .I1(rst),
        .O(\tdata_s[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tdata_s_reg[0] 
       (.C(clk),
        .CE(\tdata_s[23]_i_1_n_0 ),
        .D(p_6_out[0]),
        .Q(in2[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdata_s_reg[10] 
       (.C(clk),
        .CE(\tdata_s[23]_i_1_n_0 ),
        .D(\ang_out_reg_n_0_[2] ),
        .Q(in2[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdata_s_reg[11] 
       (.C(clk),
        .CE(\tdata_s[23]_i_1_n_0 ),
        .D(\ang_out_reg_n_0_[3] ),
        .Q(in2[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdata_s_reg[12] 
       (.C(clk),
        .CE(\tdata_s[23]_i_1_n_0 ),
        .D(\ang_out_reg_n_0_[4] ),
        .Q(in2[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdata_s_reg[13] 
       (.C(clk),
        .CE(\tdata_s[23]_i_1_n_0 ),
        .D(\ang_out_reg_n_0_[5] ),
        .Q(in2[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdata_s_reg[14] 
       (.C(clk),
        .CE(\tdata_s[23]_i_1_n_0 ),
        .D(\ang_out_reg_n_0_[6] ),
        .Q(in2[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdata_s_reg[15] 
       (.C(clk),
        .CE(\tdata_s[23]_i_1_n_0 ),
        .D(\ang_out_reg_n_0_[7] ),
        .Q(in2[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdata_s_reg[16] 
       (.C(clk),
        .CE(\tdata_s[23]_i_1_n_0 ),
        .D(p_4_out[0]),
        .Q(in2[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdata_s_reg[17] 
       (.C(clk),
        .CE(\tdata_s[23]_i_1_n_0 ),
        .D(p_4_out[1]),
        .Q(in2[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdata_s_reg[18] 
       (.C(clk),
        .CE(\tdata_s[23]_i_1_n_0 ),
        .D(p_4_out[2]),
        .Q(in2[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdata_s_reg[19] 
       (.C(clk),
        .CE(\tdata_s[23]_i_1_n_0 ),
        .D(p_4_out[3]),
        .Q(in2[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdata_s_reg[1] 
       (.C(clk),
        .CE(\tdata_s[23]_i_1_n_0 ),
        .D(p_6_out[1]),
        .Q(in2[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdata_s_reg[20] 
       (.C(clk),
        .CE(\tdata_s[23]_i_1_n_0 ),
        .D(p_4_out[4]),
        .Q(in2[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdata_s_reg[21] 
       (.C(clk),
        .CE(\tdata_s[23]_i_1_n_0 ),
        .D(p_4_out[5]),
        .Q(in2[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdata_s_reg[22] 
       (.C(clk),
        .CE(\tdata_s[23]_i_1_n_0 ),
        .D(p_4_out[6]),
        .Q(in2[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdata_s_reg[23] 
       (.C(clk),
        .CE(\tdata_s[23]_i_1_n_0 ),
        .D(p_4_out[7]),
        .Q(in2[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdata_s_reg[24] 
       (.C(clk),
        .CE(\tdata_s[23]_i_1_n_0 ),
        .D(p_2_out[0]),
        .Q(in2[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdata_s_reg[25] 
       (.C(clk),
        .CE(\tdata_s[23]_i_1_n_0 ),
        .D(p_2_out[1]),
        .Q(in2[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdata_s_reg[26] 
       (.C(clk),
        .CE(\tdata_s[23]_i_1_n_0 ),
        .D(p_2_out[2]),
        .Q(in2[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdata_s_reg[27] 
       (.C(clk),
        .CE(\tdata_s[23]_i_1_n_0 ),
        .D(p_2_out[3]),
        .Q(in2[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdata_s_reg[28] 
       (.C(clk),
        .CE(\tdata_s[23]_i_1_n_0 ),
        .D(p_2_out[4]),
        .Q(in2[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdata_s_reg[29] 
       (.C(clk),
        .CE(\tdata_s[23]_i_1_n_0 ),
        .D(p_2_out[5]),
        .Q(in2[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdata_s_reg[2] 
       (.C(clk),
        .CE(\tdata_s[23]_i_1_n_0 ),
        .D(p_6_out[2]),
        .Q(in2[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdata_s_reg[30] 
       (.C(clk),
        .CE(\tdata_s[23]_i_1_n_0 ),
        .D(p_2_out[6]),
        .Q(in2[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdata_s_reg[31] 
       (.C(clk),
        .CE(\tdata_s[23]_i_1_n_0 ),
        .D(p_2_out[7]),
        .Q(in2[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdata_s_reg[3] 
       (.C(clk),
        .CE(\tdata_s[23]_i_1_n_0 ),
        .D(p_6_out[3]),
        .Q(in2[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdata_s_reg[4] 
       (.C(clk),
        .CE(\tdata_s[23]_i_1_n_0 ),
        .D(p_6_out[4]),
        .Q(in2[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdata_s_reg[5] 
       (.C(clk),
        .CE(\tdata_s[23]_i_1_n_0 ),
        .D(p_6_out[5]),
        .Q(in2[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdata_s_reg[6] 
       (.C(clk),
        .CE(\tdata_s[23]_i_1_n_0 ),
        .D(p_6_out[6]),
        .Q(in2[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdata_s_reg[7] 
       (.C(clk),
        .CE(\tdata_s[23]_i_1_n_0 ),
        .D(p_6_out[7]),
        .Q(in2[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdata_s_reg[8] 
       (.C(clk),
        .CE(\tdata_s[23]_i_1_n_0 ),
        .D(\ang_out_reg_n_0_[0] ),
        .Q(in2[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdata_s_reg[9] 
       (.C(clk),
        .CE(\tdata_s[23]_i_1_n_0 ),
        .D(\ang_out_reg_n_0_[1] ),
        .Q(in2[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hCCCCCCC1CCCCCCCD)) 
    tvalid_s_i_1
       (.I0(\state[3]_i_5_n_0 ),
        .I1(p_tvalid),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(tvalid_s_i_2_n_0),
        .I5(p_tready),
        .O(tvalid_s_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h7)) 
    tvalid_s_i_2
       (.I0(\state_reg_n_0_[3] ),
        .I1(Q),
        .O(tvalid_s_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    tvalid_s_reg
       (.C(clk),
        .CE(1'b1),
        .D(tvalid_s_i_1_n_0),
        .Q(p_tvalid),
        .R(SR));
endmodule

module Zynq_block_design_Opossum_lidar_0_1_lidar_top_for_dma
   (m_axis_tdata,
    m_axis_tvalid,
    m_axis_tlast,
    rst,
    clk,
    m_axis_tready,
    uart_rx_in);
  output [31:0]m_axis_tdata;
  output m_axis_tvalid;
  output m_axis_tlast;
  input rst;
  input clk;
  input m_axis_tready;
  input uart_rx_in;

  wire [3:0]beat_counter;
  wire beat_counter0;
  wire \beat_counter[0]_i_1_n_0 ;
  wire \beat_counter[1]_i_1_n_0 ;
  wire \beat_counter[2]_i_1_n_0 ;
  wire \beat_counter[3]_i_2_n_0 ;
  wire [7:0]byte_in;
  wire byte_in_valid;
  wire clk;
  wire [31:0]in2;
  wire [31:0]m_axis_tdata;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire p_tready;
  wire p_tvalid;
  wire rst;
  wire tlast_reg1_out;
  wire u_filter_n_1;
  wire u_parser_n_1;
  wire u_parser_n_10;
  wire u_parser_n_11;
  wire u_parser_n_2;
  wire u_parser_n_3;
  wire u_parser_n_4;
  wire u_parser_n_5;
  wire u_parser_n_6;
  wire u_parser_n_7;
  wire u_parser_n_8;
  wire u_parser_n_9;
  wire u_uart_rx_n_1;
  wire u_uart_rx_n_10;
  wire u_uart_rx_n_11;
  wire u_uart_rx_n_12;
  wire u_uart_rx_n_13;
  wire uart_rx_in;

  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \beat_counter[0]_i_1 
       (.I0(beat_counter[0]),
        .O(\beat_counter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \beat_counter[1]_i_1 
       (.I0(beat_counter[1]),
        .I1(beat_counter[0]),
        .O(\beat_counter[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'h3F40)) 
    \beat_counter[2]_i_1 
       (.I0(beat_counter[3]),
        .I1(beat_counter[1]),
        .I2(beat_counter[0]),
        .I3(beat_counter[2]),
        .O(\beat_counter[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'h7780)) 
    \beat_counter[3]_i_2 
       (.I0(beat_counter[1]),
        .I1(beat_counter[0]),
        .I2(beat_counter[2]),
        .I3(beat_counter[3]),
        .O(\beat_counter[3]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \beat_counter_reg[0] 
       (.C(clk),
        .CE(beat_counter0),
        .D(\beat_counter[0]_i_1_n_0 ),
        .Q(beat_counter[0]),
        .R(u_filter_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \beat_counter_reg[1] 
       (.C(clk),
        .CE(beat_counter0),
        .D(\beat_counter[1]_i_1_n_0 ),
        .Q(beat_counter[1]),
        .R(u_filter_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \beat_counter_reg[2] 
       (.C(clk),
        .CE(beat_counter0),
        .D(\beat_counter[2]_i_1_n_0 ),
        .Q(beat_counter[2]),
        .R(u_filter_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \beat_counter_reg[3] 
       (.C(clk),
        .CE(beat_counter0),
        .D(\beat_counter[3]_i_2_n_0 ),
        .Q(beat_counter[3]),
        .R(u_filter_n_1));
  FDRE #(
    .INIT(1'b0)) 
    tlast_reg_reg
       (.C(clk),
        .CE(1'b1),
        .D(tlast_reg1_out),
        .Q(m_axis_tlast),
        .R(u_filter_n_1));
  Zynq_block_design_Opossum_lidar_0_1_lidar_filter u_filter
       (.E(beat_counter0),
        .Q(beat_counter),
        .clk(clk),
        .in2(in2),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tready(m_axis_tready),
        .m_axis_tvalid(m_axis_tvalid),
        .p_tready(p_tready),
        .p_tvalid(p_tvalid),
        .rst(rst),
        .rst_0(u_filter_n_1),
        .tlast_reg1_out(tlast_reg1_out));
  Zynq_block_design_Opossum_lidar_0_1_lidar_parser_ld06 u_parser
       (.E(u_uart_rx_n_10),
        .Q(u_parser_n_1),
        .SR(u_filter_n_1),
        .\ang_out_reg[0]_0 (u_uart_rx_n_11),
        .byte_in(byte_in),
        .byte_in_valid(byte_in_valid),
        .clk(clk),
        .\crc_s_reg[0]_0 (u_uart_rx_n_1),
        .\crc_s_reg[6]_0 (u_parser_n_11),
        .\crc_s_reg[7]_0 ({u_parser_n_3,u_parser_n_4,u_parser_n_5,u_parser_n_6,u_parser_n_7,u_parser_n_8,u_parser_n_9,u_parser_n_10}),
        .\crc_s_reg[7]_1 (u_uart_rx_n_13),
        .in2(in2),
        .p_tready(p_tready),
        .p_tvalid(p_tvalid),
        .rst(rst),
        .\state_reg[1]_0 (u_parser_n_2),
        .\state_reg[3]_0 (u_uart_rx_n_12));
  Zynq_block_design_Opossum_lidar_0_1_uart_rx u_uart_rx
       (.E(u_uart_rx_n_10),
        .Q(u_parser_n_1),
        .\ang_den_reg[0] (u_parser_n_2),
        .\bit_index_reg[0]_0 (u_filter_n_1),
        .byte_in(byte_in),
        .byte_in_valid(byte_in_valid),
        .clk(clk),
        .\crc_s_reg[0] (u_uart_rx_n_12),
        .\crc_s_reg[5] (u_uart_rx_n_13),
        .\crc_s_reg[7] (u_parser_n_11),
        .rst(rst),
        .\state[3]_i_6_0 ({u_parser_n_3,u_parser_n_4,u_parser_n_5,u_parser_n_6,u_parser_n_7,u_parser_n_8,u_parser_n_9,u_parser_n_10}),
        .\state_reg[2] (u_uart_rx_n_1),
        .\state_reg[2]_0 (u_uart_rx_n_11),
        .uart_rx_in(uart_rx_in));
endmodule

module Zynq_block_design_Opossum_lidar_0_1_uart_rx
   (byte_in_valid,
    \state_reg[2] ,
    byte_in,
    E,
    \state_reg[2]_0 ,
    \crc_s_reg[0] ,
    \crc_s_reg[5] ,
    clk,
    Q,
    \ang_den_reg[0] ,
    rst,
    \state[3]_i_6_0 ,
    \crc_s_reg[7] ,
    \bit_index_reg[0]_0 ,
    uart_rx_in);
  output byte_in_valid;
  output \state_reg[2] ;
  output [7:0]byte_in;
  output [0:0]E;
  output \state_reg[2]_0 ;
  output \crc_s_reg[0] ;
  output \crc_s_reg[5] ;
  input clk;
  input [0:0]Q;
  input \ang_den_reg[0] ;
  input rst;
  input [7:0]\state[3]_i_6_0 ;
  input \crc_s_reg[7] ;
  input \bit_index_reg[0]_0 ;
  input uart_rx_in;

  wire [0:0]E;
  wire \FSM_sequential_state[0]_i_1_n_0 ;
  wire \FSM_sequential_state[1]_i_1_n_0 ;
  wire \FSM_sequential_state[1]_i_2_n_0 ;
  wire \FSM_sequential_state[1]_i_3_n_0 ;
  wire [0:0]Q;
  wire \ang_den[8]_i_3_n_0 ;
  wire \ang_den[8]_i_4_n_0 ;
  wire \ang_den[8]_i_5_n_0 ;
  wire \ang_den[8]_i_6_n_0 ;
  wire \ang_den_reg[0] ;
  wire \bit_index[0]_i_1_n_0 ;
  wire \bit_index[1]_i_1_n_0 ;
  wire \bit_index[2]_i_1_n_0 ;
  wire \bit_index[2]_i_2_n_0 ;
  wire \bit_index[2]_i_3_n_0 ;
  wire \bit_index[2]_i_4_n_0 ;
  wire \bit_index_reg[0]_0 ;
  wire \bit_index_reg_n_0_[0] ;
  wire \bit_index_reg_n_0_[1] ;
  wire \bit_index_reg_n_0_[2] ;
  wire [7:0]byte_in;
  wire byte_in_valid;
  wire clk;
  wire \crc_s[7]_i_7_n_0 ;
  wire \crc_s[7]_i_8_n_0 ;
  wire \crc_s_reg[0] ;
  wire \crc_s_reg[5] ;
  wire \crc_s_reg[7] ;
  wire data_ready_i_1_n_0;
  wire \data_reg[0]_i_1_n_0 ;
  wire \data_reg[1]_i_1_n_0 ;
  wire \data_reg[2]_i_1_n_0 ;
  wire \data_reg[3]_i_1_n_0 ;
  wire \data_reg[3]_i_2_n_0 ;
  wire \data_reg[4]_i_1_n_0 ;
  wire \data_reg[5]_i_1_n_0 ;
  wire \data_reg[6]_i_1_n_0 ;
  wire \data_reg[7]_i_1_n_0 ;
  wire \data_reg[7]_i_2_n_0 ;
  wire p_0_in;
  wire rst;
  wire rx_reg;
  wire \rx_sync_reg_n_0_[0] ;
  wire \sample_count[0]_i_1_n_0 ;
  wire \sample_count[1]_i_1_n_0 ;
  wire \sample_count[2]_i_1_n_0 ;
  wire \sample_count[2]_i_2_n_0 ;
  wire \sample_count[3]_i_1_n_0 ;
  wire \sample_count[3]_i_2_n_0 ;
  wire \sample_count[3]_i_3_n_0 ;
  wire \sample_count[3]_i_4_n_0 ;
  wire \sample_count[3]_i_5_n_0 ;
  wire \sample_count_reg_n_0_[0] ;
  wire \sample_count_reg_n_0_[1] ;
  wire \sample_count_reg_n_0_[2] ;
  wire \sample_count_reg_n_0_[3] ;
  wire sample_tick__0;
  wire sample_tick_n_0;
  wire [7:0]\state[3]_i_6_0 ;
  wire \state[3]_i_7_n_0 ;
  wire \state[3]_i_8_n_0 ;
  wire [1:0]state__0;
  wire \state_reg[2] ;
  wire \state_reg[2]_0 ;
  wire [4:0]tick_counter;
  wire \tick_counter[0]_i_1_n_0 ;
  wire \tick_counter[1]_i_1_n_0 ;
  wire \tick_counter[2]_i_1_n_0 ;
  wire \tick_counter[3]_i_1_n_0 ;
  wire \tick_counter[4]_i_1_n_0 ;
  wire \tick_counter[4]_i_2_n_0 ;
  wire uart_rx_in;

  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(\FSM_sequential_state[1]_i_2_n_0 ),
        .I1(state__0[0]),
        .O(\FSM_sequential_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'h3F40)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(rx_reg),
        .I1(state__0[0]),
        .I2(\FSM_sequential_state[1]_i_2_n_0 ),
        .I3(state__0[1]),
        .O(\FSM_sequential_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4000FFFF40004000)) 
    \FSM_sequential_state[1]_i_2 
       (.I0(\data_reg[7]_i_2_n_0 ),
        .I1(\bit_index_reg_n_0_[2] ),
        .I2(\bit_index_reg_n_0_[1] ),
        .I3(\bit_index_reg_n_0_[0] ),
        .I4(\FSM_sequential_state[1]_i_3_n_0 ),
        .I5(sample_tick__0),
        .O(\FSM_sequential_state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0FFF5555FFFFCCCC)) 
    \FSM_sequential_state[1]_i_3 
       (.I0(\sample_count[3]_i_4_n_0 ),
        .I1(rx_reg),
        .I2(\sample_count[3]_i_5_n_0 ),
        .I3(\sample_count_reg_n_0_[3] ),
        .I4(state__0[1]),
        .I5(state__0[0]),
        .O(\FSM_sequential_state[1]_i_3_n_0 ));
  (* FSM_ENCODED_STATES = "start:01,stop:11,idle:00,data:10" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_state[0]_i_1_n_0 ),
        .Q(state__0[0]),
        .R(\bit_index_reg[0]_0 ));
  (* FSM_ENCODED_STATES = "start:01,stop:11,idle:00,data:10" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_state[1]_i_1_n_0 ),
        .Q(state__0[1]),
        .R(\bit_index_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h0000040000000000)) 
    \ang_den[8]_i_1 
       (.I0(\ang_den_reg[0] ),
        .I1(byte_in_valid),
        .I2(Q),
        .I3(\ang_den[8]_i_3_n_0 ),
        .I4(\ang_den[8]_i_4_n_0 ),
        .I5(rst),
        .O(E));
  LUT6 #(
    .INIT(64'h0000000009000009)) 
    \ang_den[8]_i_3 
       (.I0(byte_in[2]),
        .I1(\state[3]_i_6_0 [2]),
        .I2(\ang_den[8]_i_5_n_0 ),
        .I3(byte_in[1]),
        .I4(\state[3]_i_6_0 [1]),
        .I5(\ang_den[8]_i_6_n_0 ),
        .O(\ang_den[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF6FFFFF6)) 
    \ang_den[8]_i_4 
       (.I0(byte_in[5]),
        .I1(\state[3]_i_6_0 [5]),
        .I2(\crc_s[7]_i_8_n_0 ),
        .I3(byte_in[0]),
        .I4(\state[3]_i_6_0 [0]),
        .I5(\state[3]_i_7_n_0 ),
        .O(\ang_den[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ang_den[8]_i_5 
       (.I0(byte_in[3]),
        .I1(\state[3]_i_6_0 [3]),
        .O(\ang_den[8]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ang_den[8]_i_6 
       (.I0(byte_in[4]),
        .I1(\state[3]_i_6_0 [4]),
        .O(\ang_den[8]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h00000400)) 
    \ang_out[7]_i_3 
       (.I0(\ang_den[8]_i_4_n_0 ),
        .I1(\ang_den[8]_i_3_n_0 ),
        .I2(Q),
        .I3(byte_in_valid),
        .I4(\ang_den_reg[0] ),
        .O(\state_reg[2]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'h2FE0)) 
    \bit_index[0]_i_1 
       (.I0(rx_reg),
        .I1(state__0[1]),
        .I2(\bit_index[2]_i_2_n_0 ),
        .I3(\bit_index_reg_n_0_[0] ),
        .O(\bit_index[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT5 #(
    .INIT(32'h74FFB800)) 
    \bit_index[1]_i_1 
       (.I0(\bit_index_reg_n_0_[0] ),
        .I1(state__0[1]),
        .I2(rx_reg),
        .I3(\bit_index[2]_i_2_n_0 ),
        .I4(\bit_index_reg_n_0_[1] ),
        .O(\bit_index[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7F70FFFF8F800000)) 
    \bit_index[2]_i_1 
       (.I0(\bit_index_reg_n_0_[1] ),
        .I1(\bit_index_reg_n_0_[0] ),
        .I2(state__0[1]),
        .I3(rx_reg),
        .I4(\bit_index[2]_i_2_n_0 ),
        .I5(\bit_index_reg_n_0_[2] ),
        .O(\bit_index[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h100010001000FFFF)) 
    \bit_index[2]_i_2 
       (.I0(\bit_index[2]_i_3_n_0 ),
        .I1(rx_reg),
        .I2(sample_tick__0),
        .I3(\sample_count[3]_i_4_n_0 ),
        .I4(\data_reg[7]_i_2_n_0 ),
        .I5(\bit_index[2]_i_4_n_0 ),
        .O(\bit_index[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \bit_index[2]_i_3 
       (.I0(state__0[1]),
        .I1(state__0[0]),
        .O(\bit_index[2]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \bit_index[2]_i_4 
       (.I0(\bit_index_reg_n_0_[2] ),
        .I1(\bit_index_reg_n_0_[1] ),
        .I2(\bit_index_reg_n_0_[0] ),
        .O(\bit_index[2]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_index_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\bit_index[0]_i_1_n_0 ),
        .Q(\bit_index_reg_n_0_[0] ),
        .R(\bit_index_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_index_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\bit_index[1]_i_1_n_0 ),
        .Q(\bit_index_reg_n_0_[1] ),
        .R(\bit_index_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_index_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\bit_index[2]_i_1_n_0 ),
        .Q(\bit_index_reg_n_0_[2] ),
        .R(\bit_index_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h5555555555545555)) 
    \crc_s[7]_i_3 
       (.I0(Q),
        .I1(\crc_s[7]_i_7_n_0 ),
        .I2(byte_in[5]),
        .I3(byte_in[0]),
        .I4(byte_in[4]),
        .I5(byte_in[3]),
        .O(\state_reg[2] ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \crc_s[7]_i_6 
       (.I0(\crc_s[7]_i_8_n_0 ),
        .I1(\state[3]_i_6_0 [5]),
        .I2(byte_in[5]),
        .I3(byte_in[3]),
        .I4(\state[3]_i_6_0 [3]),
        .I5(\crc_s_reg[7] ),
        .O(\crc_s_reg[5] ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'hEFFF)) 
    \crc_s[7]_i_7 
       (.I0(byte_in[1]),
        .I1(byte_in[7]),
        .I2(byte_in[2]),
        .I3(byte_in[6]),
        .O(\crc_s[7]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \crc_s[7]_i_8 
       (.I0(byte_in[7]),
        .I1(\state[3]_i_6_0 [7]),
        .O(\crc_s[7]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    data_ready_i_1
       (.I0(\sample_count[3]_i_5_n_0 ),
        .I1(\sample_count_reg_n_0_[3] ),
        .I2(state__0[1]),
        .I3(state__0[0]),
        .I4(rst),
        .I5(sample_tick__0),
        .O(data_ready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    data_ready_reg
       (.C(clk),
        .CE(1'b1),
        .D(data_ready_i_1_n_0),
        .Q(byte_in_valid),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFFE0002)) 
    \data_reg[0]_i_1 
       (.I0(rx_reg),
        .I1(\bit_index_reg_n_0_[1] ),
        .I2(\bit_index_reg_n_0_[0] ),
        .I3(\data_reg[3]_i_2_n_0 ),
        .I4(byte_in[0]),
        .O(\data_reg[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEF0020)) 
    \data_reg[1]_i_1 
       (.I0(rx_reg),
        .I1(\bit_index_reg_n_0_[1] ),
        .I2(\bit_index_reg_n_0_[0] ),
        .I3(\data_reg[3]_i_2_n_0 ),
        .I4(byte_in[1]),
        .O(\data_reg[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEF0020)) 
    \data_reg[2]_i_1 
       (.I0(rx_reg),
        .I1(\bit_index_reg_n_0_[0] ),
        .I2(\bit_index_reg_n_0_[1] ),
        .I3(\data_reg[3]_i_2_n_0 ),
        .I4(byte_in[2]),
        .O(\data_reg[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \data_reg[3]_i_1 
       (.I0(rx_reg),
        .I1(\bit_index_reg_n_0_[1] ),
        .I2(\bit_index_reg_n_0_[0] ),
        .I3(\data_reg[3]_i_2_n_0 ),
        .I4(byte_in[3]),
        .O(\data_reg[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFFFFFFFFFFFFF)) 
    \data_reg[3]_i_2 
       (.I0(\bit_index_reg_n_0_[2] ),
        .I1(state__0[0]),
        .I2(sample_tick__0),
        .I3(\sample_count[3]_i_5_n_0 ),
        .I4(\sample_count_reg_n_0_[3] ),
        .I5(state__0[1]),
        .O(\data_reg[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000200)) 
    \data_reg[4]_i_1 
       (.I0(rx_reg),
        .I1(\bit_index_reg_n_0_[1] ),
        .I2(\bit_index_reg_n_0_[0] ),
        .I3(\bit_index_reg_n_0_[2] ),
        .I4(\data_reg[7]_i_2_n_0 ),
        .I5(byte_in[4]),
        .O(\data_reg[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    \data_reg[5]_i_1 
       (.I0(rx_reg),
        .I1(\bit_index_reg_n_0_[1] ),
        .I2(\bit_index_reg_n_0_[0] ),
        .I3(\bit_index_reg_n_0_[2] ),
        .I4(\data_reg[7]_i_2_n_0 ),
        .I5(byte_in[5]),
        .O(\data_reg[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    \data_reg[6]_i_1 
       (.I0(rx_reg),
        .I1(\bit_index_reg_n_0_[0] ),
        .I2(\bit_index_reg_n_0_[1] ),
        .I3(\bit_index_reg_n_0_[2] ),
        .I4(\data_reg[7]_i_2_n_0 ),
        .I5(byte_in[6]),
        .O(\data_reg[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    \data_reg[7]_i_1 
       (.I0(rx_reg),
        .I1(\bit_index_reg_n_0_[0] ),
        .I2(\bit_index_reg_n_0_[1] ),
        .I3(\bit_index_reg_n_0_[2] ),
        .I4(\data_reg[7]_i_2_n_0 ),
        .I5(byte_in[7]),
        .O(\data_reg[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    \data_reg[7]_i_2 
       (.I0(state__0[1]),
        .I1(\sample_count_reg_n_0_[3] ),
        .I2(\sample_count[3]_i_5_n_0 ),
        .I3(sample_tick__0),
        .I4(state__0[0]),
        .O(\data_reg[7]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\data_reg[0]_i_1_n_0 ),
        .Q(byte_in[0]),
        .R(\bit_index_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\data_reg[1]_i_1_n_0 ),
        .Q(byte_in[1]),
        .R(\bit_index_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\data_reg[2]_i_1_n_0 ),
        .Q(byte_in[2]),
        .R(\bit_index_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\data_reg[3]_i_1_n_0 ),
        .Q(byte_in[3]),
        .R(\bit_index_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\data_reg[4]_i_1_n_0 ),
        .Q(byte_in[4]),
        .R(\bit_index_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\data_reg[5]_i_1_n_0 ),
        .Q(byte_in[5]),
        .R(\bit_index_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\data_reg[6]_i_1_n_0 ),
        .Q(byte_in[6]),
        .R(\bit_index_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\data_reg[7]_i_1_n_0 ),
        .Q(byte_in[7]),
        .R(\bit_index_reg[0]_0 ));
  FDRE #(
    .INIT(1'b1)) 
    rx_reg_reg
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in),
        .Q(rx_reg),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \rx_sync_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(uart_rx_in),
        .Q(\rx_sync_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \rx_sync_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\rx_sync_reg_n_0_[0] ),
        .Q(p_0_in),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'h0FCC0F4E)) 
    \sample_count[0]_i_1 
       (.I0(state__0[0]),
        .I1(rx_reg),
        .I2(\sample_count_reg_n_0_[0] ),
        .I3(state__0[1]),
        .I4(\sample_count[3]_i_4_n_0 ),
        .O(\sample_count[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h008AFFFAFFFA008A)) 
    \sample_count[1]_i_1 
       (.I0(rx_reg),
        .I1(\sample_count[3]_i_4_n_0 ),
        .I2(state__0[0]),
        .I3(state__0[1]),
        .I4(\sample_count_reg_n_0_[1] ),
        .I5(\sample_count_reg_n_0_[0] ),
        .O(\sample_count[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBEEEBEEEBEEEAAAA)) 
    \sample_count[2]_i_1 
       (.I0(\sample_count[2]_i_2_n_0 ),
        .I1(\sample_count_reg_n_0_[2] ),
        .I2(\sample_count_reg_n_0_[1] ),
        .I3(\sample_count_reg_n_0_[0] ),
        .I4(state__0[0]),
        .I5(state__0[1]),
        .O(\sample_count[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'h4044)) 
    \sample_count[2]_i_2 
       (.I0(state__0[1]),
        .I1(rx_reg),
        .I2(\sample_count[3]_i_4_n_0 ),
        .I3(state__0[0]),
        .O(\sample_count[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h880AAA0A88AAAA0A)) 
    \sample_count[3]_i_1 
       (.I0(sample_tick__0),
        .I1(\sample_count[3]_i_3_n_0 ),
        .I2(rx_reg),
        .I3(state__0[1]),
        .I4(state__0[0]),
        .I5(\sample_count[3]_i_4_n_0 ),
        .O(\sample_count[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h66666666FF6F0060)) 
    \sample_count[3]_i_2 
       (.I0(\sample_count_reg_n_0_[3] ),
        .I1(\sample_count[3]_i_5_n_0 ),
        .I2(state__0[0]),
        .I3(\sample_count[3]_i_4_n_0 ),
        .I4(rx_reg),
        .I5(state__0[1]),
        .O(\sample_count[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \sample_count[3]_i_3 
       (.I0(\sample_count_reg_n_0_[3] ),
        .I1(\sample_count_reg_n_0_[0] ),
        .I2(\sample_count_reg_n_0_[1] ),
        .I3(\sample_count_reg_n_0_[2] ),
        .O(\sample_count[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \sample_count[3]_i_4 
       (.I0(\sample_count_reg_n_0_[1] ),
        .I1(\sample_count_reg_n_0_[0] ),
        .I2(\sample_count_reg_n_0_[3] ),
        .I3(\sample_count_reg_n_0_[2] ),
        .O(\sample_count[3]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \sample_count[3]_i_5 
       (.I0(\sample_count_reg_n_0_[2] ),
        .I1(\sample_count_reg_n_0_[1] ),
        .I2(\sample_count_reg_n_0_[0] ),
        .O(\sample_count[3]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sample_count_reg[0] 
       (.C(clk),
        .CE(\sample_count[3]_i_1_n_0 ),
        .D(\sample_count[0]_i_1_n_0 ),
        .Q(\sample_count_reg_n_0_[0] ),
        .R(\bit_index_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sample_count_reg[1] 
       (.C(clk),
        .CE(\sample_count[3]_i_1_n_0 ),
        .D(\sample_count[1]_i_1_n_0 ),
        .Q(\sample_count_reg_n_0_[1] ),
        .R(\bit_index_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sample_count_reg[2] 
       (.C(clk),
        .CE(\sample_count[3]_i_1_n_0 ),
        .D(\sample_count[2]_i_1_n_0 ),
        .Q(\sample_count_reg_n_0_[2] ),
        .R(\bit_index_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sample_count_reg[3] 
       (.C(clk),
        .CE(\sample_count[3]_i_1_n_0 ),
        .D(\sample_count[3]_i_2_n_0 ),
        .Q(\sample_count_reg_n_0_[3] ),
        .R(\bit_index_reg[0]_0 ));
  LUT5 #(
    .INIT(32'h10000000)) 
    sample_tick
       (.I0(tick_counter[2]),
        .I1(tick_counter[0]),
        .I2(tick_counter[3]),
        .I3(tick_counter[1]),
        .I4(tick_counter[4]),
        .O(sample_tick_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sample_tick_reg
       (.C(clk),
        .CE(1'b1),
        .D(sample_tick_n_0),
        .Q(sample_tick__0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000002002)) 
    \state[3]_i_6 
       (.I0(\ang_den[8]_i_3_n_0 ),
        .I1(\state[3]_i_7_n_0 ),
        .I2(\state[3]_i_6_0 [0]),
        .I3(byte_in[0]),
        .I4(\crc_s[7]_i_8_n_0 ),
        .I5(\state[3]_i_8_n_0 ),
        .O(\crc_s_reg[0] ));
  LUT2 #(
    .INIT(4'h6)) 
    \state[3]_i_7 
       (.I0(byte_in[6]),
        .I1(\state[3]_i_6_0 [6]),
        .O(\state[3]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \state[3]_i_8 
       (.I0(byte_in[5]),
        .I1(\state[3]_i_6_0 [5]),
        .O(\state[3]_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \tick_counter[0]_i_1 
       (.I0(tick_counter[0]),
        .O(\tick_counter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \tick_counter[1]_i_1 
       (.I0(tick_counter[0]),
        .I1(tick_counter[1]),
        .O(\tick_counter[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \tick_counter[2]_i_1 
       (.I0(tick_counter[0]),
        .I1(tick_counter[1]),
        .I2(tick_counter[2]),
        .O(\tick_counter[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \tick_counter[3]_i_1 
       (.I0(tick_counter[1]),
        .I1(tick_counter[0]),
        .I2(tick_counter[2]),
        .I3(tick_counter[3]),
        .O(\tick_counter[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h10000000)) 
    \tick_counter[4]_i_1 
       (.I0(tick_counter[0]),
        .I1(tick_counter[2]),
        .I2(tick_counter[1]),
        .I3(tick_counter[3]),
        .I4(tick_counter[4]),
        .O(\tick_counter[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \tick_counter[4]_i_2 
       (.I0(tick_counter[2]),
        .I1(tick_counter[0]),
        .I2(tick_counter[1]),
        .I3(tick_counter[3]),
        .I4(tick_counter[4]),
        .O(\tick_counter[4]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tick_counter_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\tick_counter[0]_i_1_n_0 ),
        .Q(tick_counter[0]),
        .R(\tick_counter[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tick_counter_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\tick_counter[1]_i_1_n_0 ),
        .Q(tick_counter[1]),
        .R(\tick_counter[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tick_counter_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\tick_counter[2]_i_1_n_0 ),
        .Q(tick_counter[2]),
        .R(\tick_counter[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tick_counter_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\tick_counter[3]_i_1_n_0 ),
        .Q(tick_counter[3]),
        .R(\tick_counter[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tick_counter_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\tick_counter[4]_i_2_n_0 ),
        .Q(tick_counter[4]),
        .R(\tick_counter[4]_i_1_n_0 ));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
