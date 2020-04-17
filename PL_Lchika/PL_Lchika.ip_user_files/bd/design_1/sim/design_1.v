//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
//Date        : Sat Apr 18 03:49:19 2020
//Host        : LAPTOP-AG87OV99 running 64-bit major release  (build 9200)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (CLK_BLK,
    OUT_BLK);
  input CLK_BLK;
  output [3:0]OUT_BLK;

  wire CLK_BLK_1;
  wire [3:0]blink_0_OUT;

  assign CLK_BLK_1 = CLK_BLK;
  assign OUT_BLK[3:0] = blink_0_OUT;
  design_1_blink_0_0 blink_0
       (.CLK(CLK_BLK_1),
        .OUT(blink_0_OUT));
endmodule
