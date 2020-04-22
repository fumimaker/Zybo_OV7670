// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Thu Apr 23 01:47:12 2020
// Host        : LAPTOP-AG87OV99 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_vga_out_0_0_stub.v
// Design      : design_1_vga_out_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "vga_out,Vivado 2019.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(CLK, RST, VGA_R, VGA_G, VGA_B, VGA_HS, VGA_VS, DATAB, 
  ADDR, ENB)
/* synthesis syn_black_box black_box_pad_pin="CLK,RST,VGA_R[3:0],VGA_G[3:0],VGA_B[3:0],VGA_HS,VGA_VS,DATAB[11:0],ADDR[18:0],ENB" */;
  input CLK;
  input RST;
  output [3:0]VGA_R;
  output [3:0]VGA_G;
  output [3:0]VGA_B;
  output VGA_HS;
  output VGA_VS;
  input [11:0]DATAB;
  output [18:0]ADDR;
  output ENB;
endmodule
