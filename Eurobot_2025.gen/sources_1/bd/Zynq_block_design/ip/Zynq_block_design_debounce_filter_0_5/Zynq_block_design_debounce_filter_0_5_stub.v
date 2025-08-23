// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sat Jul  5 18:07:42 2025
// Host        : martinH running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/marti/Documents/Robot/Eurobot_2025/Zynq_HW/Eurobot_2025/Eurobot_2025.gen/sources_1/bd/Zynq_block_design/ip/Zynq_block_design_debounce_filter_0_5/Zynq_block_design_debounce_filter_0_5_stub.v
// Design      : Zynq_block_design_debounce_filter_0_5
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "debounce_filter,Vivado 2020.2" *)
module Zynq_block_design_debounce_filter_0_5(clk, rst, btn_raw, btn_filtered)
/* synthesis syn_black_box black_box_pad_pin="clk,rst,btn_raw,btn_filtered" */;
  input clk;
  input rst;
  input btn_raw;
  output btn_filtered;
endmodule
