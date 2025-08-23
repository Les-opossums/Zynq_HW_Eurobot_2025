// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sat Aug 16 09:36:09 2025
// Host        : martinH running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top Zynq_block_design_Opossum_lidar_0_1 -prefix
//               Zynq_block_design_Opossum_lidar_0_1_ Zynq_block_design_Opossum_lidar_0_1_stub.v
// Design      : Zynq_block_design_Opossum_lidar_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "lidar_top_for_dma,Vivado 2020.2" *)
module Zynq_block_design_Opossum_lidar_0_1(clk, rst, uart_rx_in, m_axis_tdata, 
  m_axis_tvalid, m_axis_tready, m_axis_tlast, m_axis_tkeep)
/* synthesis syn_black_box black_box_pad_pin="clk,rst,uart_rx_in,m_axis_tdata[31:0],m_axis_tvalid,m_axis_tready,m_axis_tlast,m_axis_tkeep[3:0]" */;
  input clk;
  input rst;
  input uart_rx_in;
  output [31:0]m_axis_tdata;
  output m_axis_tvalid;
  input m_axis_tready;
  output m_axis_tlast;
  output [3:0]m_axis_tkeep;
endmodule
