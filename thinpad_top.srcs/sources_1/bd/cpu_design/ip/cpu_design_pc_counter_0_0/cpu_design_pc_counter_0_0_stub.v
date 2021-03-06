// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Thu Aug  1 19:58:33 2019
// Host        : DESKTOP-D2G6SOG running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/Users/gjz010/Documents/GitHub/thinpad_top/thinpad_top.srcs/sources_1/bd/cpu_design/ip/cpu_design_pc_counter_0_0/cpu_design_pc_counter_0_0_stub.v
// Design      : cpu_design_pc_counter_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tfgg676-2L
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "pc_counter,Vivado 2019.1" *)
module cpu_design_pc_counter_0_0(clk, rst, PC, flush, new_pc, out_ready)
/* synthesis syn_black_box black_box_pad_pin="clk,rst,PC[63:0],flush,new_pc[63:0],out_ready" */;
  input clk;
  input rst;
  output [63:0]PC;
  input flush;
  input [63:0]new_pc;
  input out_ready;
endmodule
