// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Fri May 15 21:13:16 2020
// Host        : FUMIMAKER6BEE running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Github/Zybo_OV7670/ov7670_capture/ov7670_capture.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0_stub.v
// Design      : clk_wiz_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module clk_wiz_0(CLKOUT_25_175MHZ, CLKOUT_24MHZ, reset, locked, 
  CLK)
/* synthesis syn_black_box black_box_pad_pin="CLKOUT_25_175MHZ,CLKOUT_24MHZ,reset,locked,CLK" */;
  output CLKOUT_25_175MHZ;
  output CLKOUT_24MHZ;
  input reset;
  output locked;
  input CLK;
endmodule