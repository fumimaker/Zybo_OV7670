// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Thu Apr 23 01:46:06 2020
// Host        : LAPTOP-AG87OV99 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/ivr/Documents/GitHub/Zybo_OV7670/OV7670_VGA/OV7670_VGA.srcs/sources_1/bd/design_1/ip/design_1_ov7670_IF_0_0/design_1_ov7670_IF_0_0_stub.v
// Design      : design_1_ov7670_IF_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "ov7670_IF,Vivado 2019.2" *)
module design_1_ov7670_IF_0_0(RST, CAM_PCLK, CAM_HREF, CAM_VSYNC, data, DATA_OUT, 
  ADDR, ENA, WENA)
/* synthesis syn_black_box black_box_pad_pin="RST,CAM_PCLK,CAM_HREF,CAM_VSYNC,data[7:0],DATA_OUT[11:0],ADDR[18:0],ENA,WENA" */;
  input RST;
  input CAM_PCLK;
  input CAM_HREF;
  input CAM_VSYNC;
  input [7:0]data;
  output [11:0]DATA_OUT;
  output [18:0]ADDR;
  output ENA;
  output WENA;
endmodule
