// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sat Jul  5 18:07:42 2025
// Host        : martinH running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/marti/Documents/Robot/Eurobot_2025/Zynq_HW/Eurobot_2025/Eurobot_2025.gen/sources_1/bd/Zynq_block_design/ip/Zynq_block_design_debounce_filter_0_1/Zynq_block_design_debounce_filter_0_1_sim_netlist.v
// Design      : Zynq_block_design_debounce_filter_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Zynq_block_design_debounce_filter_0_1,debounce_filter,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "debounce_filter,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module Zynq_block_design_debounce_filter_0_1
   (clk,
    rst,
    btn_raw,
    btn_filtered);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN Zynq_block_design_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
  input btn_raw;
  output btn_filtered;

  wire btn_filtered;
  wire btn_raw;
  wire clk;
  wire rst;

  Zynq_block_design_debounce_filter_0_1_debounce_filter U0
       (.btn_filtered(btn_filtered),
        .btn_raw(btn_raw),
        .clk(clk),
        .rst(rst));
endmodule

(* ORIG_REF_NAME = "debounce_filter" *) 
module Zynq_block_design_debounce_filter_0_1_debounce_filter
   (btn_filtered,
    btn_raw,
    clk,
    rst);
  output btn_filtered;
  input btn_raw;
  input clk;
  input rst;

  wire btn_filtered;
  wire btn_last;
  wire btn_raw;
  wire btn_stable_i_1_n_0;
  wire btn_stable_i_2_n_0;
  wire btn_stable_i_3_n_0;
  wire btn_stable_i_4_n_0;
  wire btn_stable_i_5_n_0;
  wire btn_stable_i_6_n_0;
  wire btn_stable_i_7_n_0;
  wire btn_stable_i_8_n_0;
  wire btn_stable_i_9_n_0;
  wire clk;
  wire [20:0]counter;
  wire [20:1]counter0;
  wire counter0__38_carry__0_i_1_n_0;
  wire counter0__38_carry__0_i_2_n_0;
  wire counter0__38_carry__0_i_3_n_0;
  wire counter0__38_carry__0_i_4_n_0;
  wire counter0__38_carry__0_i_5_n_0;
  wire counter0__38_carry__0_i_6_n_0;
  wire counter0__38_carry__0_i_7_n_0;
  wire counter0__38_carry__0_n_0;
  wire counter0__38_carry__0_n_1;
  wire counter0__38_carry__0_n_2;
  wire counter0__38_carry__0_n_3;
  wire counter0__38_carry_i_1_n_0;
  wire counter0__38_carry_i_2_n_0;
  wire counter0__38_carry_i_3_n_0;
  wire counter0__38_carry_i_4_n_0;
  wire counter0__38_carry_i_5_n_0;
  wire counter0__38_carry_i_6_n_0;
  wire counter0__38_carry_n_0;
  wire counter0__38_carry_n_1;
  wire counter0__38_carry_n_2;
  wire counter0__38_carry_n_3;
  wire counter0_carry__0_n_0;
  wire counter0_carry__0_n_1;
  wire counter0_carry__0_n_2;
  wire counter0_carry__0_n_3;
  wire counter0_carry__1_n_0;
  wire counter0_carry__1_n_1;
  wire counter0_carry__1_n_2;
  wire counter0_carry__1_n_3;
  wire counter0_carry__2_n_0;
  wire counter0_carry__2_n_1;
  wire counter0_carry__2_n_2;
  wire counter0_carry__2_n_3;
  wire counter0_carry__3_n_1;
  wire counter0_carry__3_n_2;
  wire counter0_carry__3_n_3;
  wire counter0_carry_n_0;
  wire counter0_carry_n_1;
  wire counter0_carry_n_2;
  wire counter0_carry_n_3;
  wire \counter[0]_i_1_n_0 ;
  wire \counter[10]_i_1_n_0 ;
  wire \counter[11]_i_1_n_0 ;
  wire \counter[12]_i_1_n_0 ;
  wire \counter[13]_i_1_n_0 ;
  wire \counter[14]_i_1_n_0 ;
  wire \counter[15]_i_1_n_0 ;
  wire \counter[16]_i_1_n_0 ;
  wire \counter[17]_i_1_n_0 ;
  wire \counter[18]_i_1_n_0 ;
  wire \counter[19]_i_1_n_0 ;
  wire \counter[1]_i_1_n_0 ;
  wire \counter[20]_i_2_n_0 ;
  wire \counter[2]_i_1_n_0 ;
  wire \counter[3]_i_1_n_0 ;
  wire \counter[4]_i_1_n_0 ;
  wire \counter[5]_i_1_n_0 ;
  wire \counter[6]_i_1_n_0 ;
  wire \counter[7]_i_1_n_0 ;
  wire \counter[8]_i_1_n_0 ;
  wire \counter[9]_i_1_n_0 ;
  wire counter_0;
  wire rst;
  wire [3:0]NLW_counter0__38_carry_O_UNCONNECTED;
  wire [3:0]NLW_counter0__38_carry__0_O_UNCONNECTED;
  wire [3:3]NLW_counter0_carry__3_CO_UNCONNECTED;

  FDCE #(
    .INIT(1'b0)) 
    btn_last_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(btn_stable_i_2_n_0),
        .D(btn_raw),
        .Q(btn_last));
  LUT4 #(
    .INIT(16'hABA8)) 
    btn_stable_i_1
       (.I0(btn_filtered),
        .I1(btn_stable_i_3_n_0),
        .I2(counter[0]),
        .I3(btn_raw),
        .O(btn_stable_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    btn_stable_i_2
       (.I0(rst),
        .O(btn_stable_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    btn_stable_i_3
       (.I0(btn_stable_i_4_n_0),
        .I1(btn_stable_i_5_n_0),
        .I2(btn_stable_i_6_n_0),
        .I3(btn_stable_i_7_n_0),
        .I4(btn_stable_i_8_n_0),
        .I5(btn_stable_i_9_n_0),
        .O(btn_stable_i_3_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    btn_stable_i_4
       (.I0(counter[2]),
        .I1(counter[1]),
        .I2(counter[4]),
        .I3(counter[3]),
        .O(btn_stable_i_4_n_0));
  LUT4 #(
    .INIT(16'hFFEF)) 
    btn_stable_i_5
       (.I0(counter[13]),
        .I1(counter[12]),
        .I2(counter[15]),
        .I3(counter[14]),
        .O(btn_stable_i_5_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    btn_stable_i_6
       (.I0(counter[18]),
        .I1(counter[19]),
        .O(btn_stable_i_6_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    btn_stable_i_7
       (.I0(counter[16]),
        .I1(counter[17]),
        .O(btn_stable_i_7_n_0));
  LUT4 #(
    .INIT(16'hFFEF)) 
    btn_stable_i_8
       (.I0(counter[9]),
        .I1(counter[8]),
        .I2(counter[10]),
        .I3(counter[11]),
        .O(btn_stable_i_8_n_0));
  LUT4 #(
    .INIT(16'hFFDF)) 
    btn_stable_i_9
       (.I0(counter[20]),
        .I1(counter[5]),
        .I2(counter[7]),
        .I3(counter[6]),
        .O(btn_stable_i_9_n_0));
  FDCE #(
    .INIT(1'b0)) 
    btn_stable_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(btn_stable_i_2_n_0),
        .D(btn_stable_i_1_n_0),
        .Q(btn_filtered));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 counter0__38_carry
       (.CI(1'b0),
        .CO({counter0__38_carry_n_0,counter0__38_carry_n_1,counter0__38_carry_n_2,counter0__38_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,counter0__38_carry_i_1_n_0,1'b0,counter0__38_carry_i_2_n_0}),
        .O(NLW_counter0__38_carry_O_UNCONNECTED[3:0]),
        .S({counter0__38_carry_i_3_n_0,counter0__38_carry_i_4_n_0,counter0__38_carry_i_5_n_0,counter0__38_carry_i_6_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 counter0__38_carry__0
       (.CI(counter0__38_carry_n_0),
        .CO({counter0__38_carry__0_n_0,counter0__38_carry__0_n_1,counter0__38_carry__0_n_2,counter0__38_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({counter0__38_carry__0_i_1_n_0,counter0__38_carry__0_i_2_n_0,counter0__38_carry__0_i_3_n_0,counter0__38_carry__0_i_4_n_0}),
        .O(NLW_counter0__38_carry__0_O_UNCONNECTED[3:0]),
        .S({counter[20],counter0__38_carry__0_i_5_n_0,counter0__38_carry__0_i_6_n_0,counter0__38_carry__0_i_7_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    counter0__38_carry__0_i_1
       (.I0(counter[20]),
        .O(counter0__38_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    counter0__38_carry__0_i_2
       (.I0(counter[18]),
        .I1(counter[19]),
        .O(counter0__38_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter0__38_carry__0_i_3
       (.I0(counter[17]),
        .O(counter0__38_carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter0__38_carry__0_i_4
       (.I0(counter[15]),
        .O(counter0__38_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    counter0__38_carry__0_i_5
       (.I0(counter[19]),
        .I1(counter[18]),
        .O(counter0__38_carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    counter0__38_carry__0_i_6
       (.I0(counter[17]),
        .I1(counter[16]),
        .O(counter0__38_carry__0_i_6_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    counter0__38_carry__0_i_7
       (.I0(counter[15]),
        .I1(counter[14]),
        .O(counter0__38_carry__0_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    counter0__38_carry_i_1
       (.I0(counter[10]),
        .I1(counter[11]),
        .O(counter0__38_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter0__38_carry_i_2
       (.I0(counter[7]),
        .O(counter0__38_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    counter0__38_carry_i_3
       (.I0(counter[13]),
        .I1(counter[12]),
        .O(counter0__38_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    counter0__38_carry_i_4
       (.I0(counter[10]),
        .I1(counter[11]),
        .O(counter0__38_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    counter0__38_carry_i_5
       (.I0(counter[9]),
        .I1(counter[8]),
        .O(counter0__38_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    counter0__38_carry_i_6
       (.I0(counter[7]),
        .I1(counter[6]),
        .O(counter0__38_carry_i_6_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry
       (.CI(1'b0),
        .CO({counter0_carry_n_0,counter0_carry_n_1,counter0_carry_n_2,counter0_carry_n_3}),
        .CYINIT(counter[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(counter0[4:1]),
        .S(counter[4:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry__0
       (.CI(counter0_carry_n_0),
        .CO({counter0_carry__0_n_0,counter0_carry__0_n_1,counter0_carry__0_n_2,counter0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(counter0[8:5]),
        .S(counter[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry__1
       (.CI(counter0_carry__0_n_0),
        .CO({counter0_carry__1_n_0,counter0_carry__1_n_1,counter0_carry__1_n_2,counter0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(counter0[12:9]),
        .S(counter[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry__2
       (.CI(counter0_carry__1_n_0),
        .CO({counter0_carry__2_n_0,counter0_carry__2_n_1,counter0_carry__2_n_2,counter0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(counter0[16:13]),
        .S(counter[16:13]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry__3
       (.CI(counter0_carry__2_n_0),
        .CO({NLW_counter0_carry__3_CO_UNCONNECTED[3],counter0_carry__3_n_1,counter0_carry__3_n_2,counter0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(counter0[20:17]),
        .S(counter[20:17]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h4100)) 
    \counter[0]_i_1 
       (.I0(counter[0]),
        .I1(btn_last),
        .I2(btn_raw),
        .I3(btn_stable_i_3_n_0),
        .O(\counter[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hA80000A8)) 
    \counter[10]_i_1 
       (.I0(counter0[10]),
        .I1(btn_stable_i_3_n_0),
        .I2(counter[0]),
        .I3(btn_last),
        .I4(btn_raw),
        .O(\counter[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hA80000A8)) 
    \counter[11]_i_1 
       (.I0(counter0[11]),
        .I1(btn_stable_i_3_n_0),
        .I2(counter[0]),
        .I3(btn_last),
        .I4(btn_raw),
        .O(\counter[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hA80000A8)) 
    \counter[12]_i_1 
       (.I0(counter0[12]),
        .I1(btn_stable_i_3_n_0),
        .I2(counter[0]),
        .I3(btn_last),
        .I4(btn_raw),
        .O(\counter[12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hA80000A8)) 
    \counter[13]_i_1 
       (.I0(counter0[13]),
        .I1(btn_stable_i_3_n_0),
        .I2(counter[0]),
        .I3(btn_last),
        .I4(btn_raw),
        .O(\counter[13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hA80000A8)) 
    \counter[14]_i_1 
       (.I0(counter0[14]),
        .I1(btn_stable_i_3_n_0),
        .I2(counter[0]),
        .I3(btn_last),
        .I4(btn_raw),
        .O(\counter[14]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hA80000A8)) 
    \counter[15]_i_1 
       (.I0(counter0[15]),
        .I1(btn_stable_i_3_n_0),
        .I2(counter[0]),
        .I3(btn_last),
        .I4(btn_raw),
        .O(\counter[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hA80000A8)) 
    \counter[16]_i_1 
       (.I0(counter0[16]),
        .I1(btn_stable_i_3_n_0),
        .I2(counter[0]),
        .I3(btn_last),
        .I4(btn_raw),
        .O(\counter[16]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hA80000A8)) 
    \counter[17]_i_1 
       (.I0(counter0[17]),
        .I1(btn_stable_i_3_n_0),
        .I2(counter[0]),
        .I3(btn_last),
        .I4(btn_raw),
        .O(\counter[17]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hA80000A8)) 
    \counter[18]_i_1 
       (.I0(counter0[18]),
        .I1(btn_stable_i_3_n_0),
        .I2(counter[0]),
        .I3(btn_last),
        .I4(btn_raw),
        .O(\counter[18]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hA80000A8)) 
    \counter[19]_i_1 
       (.I0(counter0[19]),
        .I1(btn_stable_i_3_n_0),
        .I2(counter[0]),
        .I3(btn_last),
        .I4(btn_raw),
        .O(\counter[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hA80000A8)) 
    \counter[1]_i_1 
       (.I0(counter0[1]),
        .I1(btn_stable_i_3_n_0),
        .I2(counter[0]),
        .I3(btn_last),
        .I4(btn_raw),
        .O(\counter[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF1FF1)) 
    \counter[20]_i_1 
       (.I0(btn_stable_i_3_n_0),
        .I1(counter[0]),
        .I2(btn_last),
        .I3(btn_raw),
        .I4(counter0__38_carry__0_n_0),
        .O(counter_0));
  LUT5 #(
    .INIT(32'hA80000A8)) 
    \counter[20]_i_2 
       (.I0(counter0[20]),
        .I1(btn_stable_i_3_n_0),
        .I2(counter[0]),
        .I3(btn_last),
        .I4(btn_raw),
        .O(\counter[20]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hA80000A8)) 
    \counter[2]_i_1 
       (.I0(counter0[2]),
        .I1(btn_stable_i_3_n_0),
        .I2(counter[0]),
        .I3(btn_last),
        .I4(btn_raw),
        .O(\counter[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hA80000A8)) 
    \counter[3]_i_1 
       (.I0(counter0[3]),
        .I1(btn_stable_i_3_n_0),
        .I2(counter[0]),
        .I3(btn_last),
        .I4(btn_raw),
        .O(\counter[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hA80000A8)) 
    \counter[4]_i_1 
       (.I0(counter0[4]),
        .I1(btn_stable_i_3_n_0),
        .I2(counter[0]),
        .I3(btn_last),
        .I4(btn_raw),
        .O(\counter[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hA80000A8)) 
    \counter[5]_i_1 
       (.I0(counter0[5]),
        .I1(btn_stable_i_3_n_0),
        .I2(counter[0]),
        .I3(btn_last),
        .I4(btn_raw),
        .O(\counter[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hA80000A8)) 
    \counter[6]_i_1 
       (.I0(counter0[6]),
        .I1(btn_stable_i_3_n_0),
        .I2(counter[0]),
        .I3(btn_last),
        .I4(btn_raw),
        .O(\counter[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hA80000A8)) 
    \counter[7]_i_1 
       (.I0(counter0[7]),
        .I1(btn_stable_i_3_n_0),
        .I2(counter[0]),
        .I3(btn_last),
        .I4(btn_raw),
        .O(\counter[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hA80000A8)) 
    \counter[8]_i_1 
       (.I0(counter0[8]),
        .I1(btn_stable_i_3_n_0),
        .I2(counter[0]),
        .I3(btn_last),
        .I4(btn_raw),
        .O(\counter[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hA80000A8)) 
    \counter[9]_i_1 
       (.I0(counter0[9]),
        .I1(btn_stable_i_3_n_0),
        .I2(counter[0]),
        .I3(btn_last),
        .I4(btn_raw),
        .O(\counter[9]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(clk),
        .CE(counter_0),
        .CLR(btn_stable_i_2_n_0),
        .D(\counter[0]_i_1_n_0 ),
        .Q(counter[0]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[10] 
       (.C(clk),
        .CE(counter_0),
        .CLR(btn_stable_i_2_n_0),
        .D(\counter[10]_i_1_n_0 ),
        .Q(counter[10]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[11] 
       (.C(clk),
        .CE(counter_0),
        .CLR(btn_stable_i_2_n_0),
        .D(\counter[11]_i_1_n_0 ),
        .Q(counter[11]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[12] 
       (.C(clk),
        .CE(counter_0),
        .CLR(btn_stable_i_2_n_0),
        .D(\counter[12]_i_1_n_0 ),
        .Q(counter[12]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[13] 
       (.C(clk),
        .CE(counter_0),
        .CLR(btn_stable_i_2_n_0),
        .D(\counter[13]_i_1_n_0 ),
        .Q(counter[13]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[14] 
       (.C(clk),
        .CE(counter_0),
        .CLR(btn_stable_i_2_n_0),
        .D(\counter[14]_i_1_n_0 ),
        .Q(counter[14]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[15] 
       (.C(clk),
        .CE(counter_0),
        .CLR(btn_stable_i_2_n_0),
        .D(\counter[15]_i_1_n_0 ),
        .Q(counter[15]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[16] 
       (.C(clk),
        .CE(counter_0),
        .CLR(btn_stable_i_2_n_0),
        .D(\counter[16]_i_1_n_0 ),
        .Q(counter[16]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[17] 
       (.C(clk),
        .CE(counter_0),
        .CLR(btn_stable_i_2_n_0),
        .D(\counter[17]_i_1_n_0 ),
        .Q(counter[17]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[18] 
       (.C(clk),
        .CE(counter_0),
        .CLR(btn_stable_i_2_n_0),
        .D(\counter[18]_i_1_n_0 ),
        .Q(counter[18]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[19] 
       (.C(clk),
        .CE(counter_0),
        .CLR(btn_stable_i_2_n_0),
        .D(\counter[19]_i_1_n_0 ),
        .Q(counter[19]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(clk),
        .CE(counter_0),
        .CLR(btn_stable_i_2_n_0),
        .D(\counter[1]_i_1_n_0 ),
        .Q(counter[1]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[20] 
       (.C(clk),
        .CE(counter_0),
        .CLR(btn_stable_i_2_n_0),
        .D(\counter[20]_i_2_n_0 ),
        .Q(counter[20]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(clk),
        .CE(counter_0),
        .CLR(btn_stable_i_2_n_0),
        .D(\counter[2]_i_1_n_0 ),
        .Q(counter[2]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(clk),
        .CE(counter_0),
        .CLR(btn_stable_i_2_n_0),
        .D(\counter[3]_i_1_n_0 ),
        .Q(counter[3]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(clk),
        .CE(counter_0),
        .CLR(btn_stable_i_2_n_0),
        .D(\counter[4]_i_1_n_0 ),
        .Q(counter[4]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(clk),
        .CE(counter_0),
        .CLR(btn_stable_i_2_n_0),
        .D(\counter[5]_i_1_n_0 ),
        .Q(counter[5]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(clk),
        .CE(counter_0),
        .CLR(btn_stable_i_2_n_0),
        .D(\counter[6]_i_1_n_0 ),
        .Q(counter[6]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(clk),
        .CE(counter_0),
        .CLR(btn_stable_i_2_n_0),
        .D(\counter[7]_i_1_n_0 ),
        .Q(counter[7]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(clk),
        .CE(counter_0),
        .CLR(btn_stable_i_2_n_0),
        .D(\counter[8]_i_1_n_0 ),
        .Q(counter[8]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[9] 
       (.C(clk),
        .CE(counter_0),
        .CLR(btn_stable_i_2_n_0),
        .D(\counter[9]_i_1_n_0 ),
        .Q(counter[9]));
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
