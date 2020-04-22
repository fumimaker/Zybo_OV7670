// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Thu Apr 23 01:48:11 2020
// Host        : LAPTOP-AG87OV99 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/ivr/Documents/GitHub/Zybo_OV7670/OV7670_VGA/OV7670_VGA.srcs/sources_1/bd/design_1/ip/design_1_syncgen_0_0/design_1_syncgen_0_0_stub.v
// Design      : design_1_syncgen_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "syncgen,Vivado 2019.2" *)
module design_1_syncgen_0_0(CLK, RST, PCK, VGA_HS, VGA_VS, HCNT, VCNT)
/* synthesis syn_black_box black_box_pad_pin="CLK,RST,PCK,VGA_HS,VGA_VS,HCNT[9:0],VCNT[9:0]" */;
  input CLK;
  input RST;
  input PCK;
  output VGA_HS;
  output VGA_VS;
  output [9:0]HCNT;
  output [9:0]VCNT;
endmodule
