// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Thu Apr 23 01:48:11 2020
// Host        : LAPTOP-AG87OV99 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/ivr/Documents/GitHub/Zybo_OV7670/OV7670_VGA/OV7670_VGA.srcs/sources_1/bd/design_1/ip/design_1_syncgen_0_0/design_1_syncgen_0_0_sim_netlist.v
// Design      : design_1_syncgen_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_syncgen_0_0,syncgen,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "syncgen,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module design_1_syncgen_0_0
   (CLK,
    RST,
    PCK,
    VGA_HS,
    VGA_VS,
    HCNT,
    VCNT);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK, ASSOCIATED_RESET RST, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_1_FCLK_CLK0, INSERT_VIP 0" *) input CLK;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input RST;
  input PCK;
  output VGA_HS;
  output VGA_VS;
  output [9:0]HCNT;
  output [9:0]VCNT;

  wire [9:0]HCNT;
  wire PCK;
  wire RST;
  wire [9:0]VCNT;
  wire VGA_HS;
  wire VGA_VS;

  design_1_syncgen_0_0_syncgen inst
       (.HCNT(HCNT),
        .PCK(PCK),
        .Q(VCNT),
        .RST(RST),
        .VGA_HS(VGA_HS),
        .VGA_VS(VGA_VS));
endmodule

(* ORIG_REF_NAME = "syncgen" *) 
module design_1_syncgen_0_0_syncgen
   (Q,
    HCNT,
    VGA_HS,
    VGA_VS,
    RST,
    PCK);
  output [9:0]Q;
  output [9:0]HCNT;
  output VGA_HS;
  output VGA_VS;
  input RST;
  input PCK;

  wire [9:0]HCNT;
  wire \HCNT[9]_i_1_n_0 ;
  wire \HCNT[9]_i_3_n_0 ;
  wire PCK;
  wire [9:0]Q;
  wire RST;
  wire [9:1]VCNT;
  wire \VCNT[0]_i_1_n_0 ;
  wire \VCNT[8]_i_2_n_0 ;
  wire \VCNT[9]_i_3_n_0 ;
  wire \VCNT[9]_i_4_n_0 ;
  wire \VCNT[9]_i_5_n_0 ;
  wire VGA_HS;
  wire VGA_HS_i_1_n_0;
  wire VGA_HS_i_2_n_0;
  wire VGA_HS_i_3_n_0;
  wire VGA_VS;
  wire VGA_VS_i_1_n_0;
  wire VGA_VS_i_2_n_0;
  wire VGA_VS_i_3_n_0;
  wire VGA_VS_i_4_n_0;
  wire hcntend;
  wire [9:0]p_0_in;

  LUT1 #(
    .INIT(2'h1)) 
    \HCNT[0]_i_1 
       (.I0(HCNT[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \HCNT[1]_i_1 
       (.I0(HCNT[0]),
        .I1(HCNT[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \HCNT[2]_i_1 
       (.I0(HCNT[1]),
        .I1(HCNT[0]),
        .I2(HCNT[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \HCNT[3]_i_1 
       (.I0(HCNT[2]),
        .I1(HCNT[0]),
        .I2(HCNT[1]),
        .I3(HCNT[3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \HCNT[4]_i_1 
       (.I0(HCNT[4]),
        .I1(HCNT[2]),
        .I2(HCNT[0]),
        .I3(HCNT[1]),
        .I4(HCNT[3]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \HCNT[5]_i_1 
       (.I0(HCNT[4]),
        .I1(HCNT[2]),
        .I2(HCNT[0]),
        .I3(HCNT[1]),
        .I4(HCNT[3]),
        .I5(HCNT[5]),
        .O(p_0_in[5]));
  LUT3 #(
    .INIT(8'hD2)) 
    \HCNT[6]_i_1 
       (.I0(HCNT[5]),
        .I1(\HCNT[9]_i_3_n_0 ),
        .I2(HCNT[6]),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hDF20)) 
    \HCNT[7]_i_1 
       (.I0(HCNT[6]),
        .I1(\HCNT[9]_i_3_n_0 ),
        .I2(HCNT[5]),
        .I3(HCNT[7]),
        .O(p_0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hF7FF0800)) 
    \HCNT[8]_i_1 
       (.I0(HCNT[7]),
        .I1(HCNT[5]),
        .I2(\HCNT[9]_i_3_n_0 ),
        .I3(HCNT[6]),
        .I4(HCNT[8]),
        .O(p_0_in[8]));
  LUT2 #(
    .INIT(4'hE)) 
    \HCNT[9]_i_1 
       (.I0(hcntend),
        .I1(RST),
        .O(\HCNT[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF7FFFFFF08000000)) 
    \HCNT[9]_i_2 
       (.I0(HCNT[8]),
        .I1(HCNT[6]),
        .I2(\HCNT[9]_i_3_n_0 ),
        .I3(HCNT[5]),
        .I4(HCNT[7]),
        .I5(HCNT[9]),
        .O(p_0_in[9]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \HCNT[9]_i_3 
       (.I0(HCNT[3]),
        .I1(HCNT[1]),
        .I2(HCNT[0]),
        .I3(HCNT[2]),
        .I4(HCNT[4]),
        .O(\HCNT[9]_i_3_n_0 ));
  FDRE \HCNT_reg[0] 
       (.C(PCK),
        .CE(1'b1),
        .D(p_0_in[0]),
        .Q(HCNT[0]),
        .R(\HCNT[9]_i_1_n_0 ));
  FDRE \HCNT_reg[1] 
       (.C(PCK),
        .CE(1'b1),
        .D(p_0_in[1]),
        .Q(HCNT[1]),
        .R(\HCNT[9]_i_1_n_0 ));
  FDRE \HCNT_reg[2] 
       (.C(PCK),
        .CE(1'b1),
        .D(p_0_in[2]),
        .Q(HCNT[2]),
        .R(\HCNT[9]_i_1_n_0 ));
  FDRE \HCNT_reg[3] 
       (.C(PCK),
        .CE(1'b1),
        .D(p_0_in[3]),
        .Q(HCNT[3]),
        .R(\HCNT[9]_i_1_n_0 ));
  FDRE \HCNT_reg[4] 
       (.C(PCK),
        .CE(1'b1),
        .D(p_0_in[4]),
        .Q(HCNT[4]),
        .R(\HCNT[9]_i_1_n_0 ));
  FDRE \HCNT_reg[5] 
       (.C(PCK),
        .CE(1'b1),
        .D(p_0_in[5]),
        .Q(HCNT[5]),
        .R(\HCNT[9]_i_1_n_0 ));
  FDRE \HCNT_reg[6] 
       (.C(PCK),
        .CE(1'b1),
        .D(p_0_in[6]),
        .Q(HCNT[6]),
        .R(\HCNT[9]_i_1_n_0 ));
  FDRE \HCNT_reg[7] 
       (.C(PCK),
        .CE(1'b1),
        .D(p_0_in[7]),
        .Q(HCNT[7]),
        .R(\HCNT[9]_i_1_n_0 ));
  FDRE \HCNT_reg[8] 
       (.C(PCK),
        .CE(1'b1),
        .D(p_0_in[8]),
        .Q(HCNT[8]),
        .R(\HCNT[9]_i_1_n_0 ));
  FDRE \HCNT_reg[9] 
       (.C(PCK),
        .CE(1'b1),
        .D(p_0_in[9]),
        .Q(HCNT[9]),
        .R(\HCNT[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFDFFF)) 
    \VCNT[0]_i_1 
       (.I0(Q[9]),
        .I1(\VCNT[9]_i_5_n_0 ),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(\VCNT[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \VCNT[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(VCNT[1]));
  LUT6 #(
    .INIT(64'h3333CCCCCCCCC4CC)) 
    \VCNT[2]_i_1 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(\VCNT[9]_i_5_n_0 ),
        .I3(Q[9]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(VCNT[2]));
  LUT6 #(
    .INIT(64'h6666CCCCCCCCC4CC)) 
    \VCNT[3]_i_1 
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(\VCNT[9]_i_5_n_0 ),
        .I3(Q[9]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(VCNT[3]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \VCNT[4]_i_1 
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[4]),
        .O(VCNT[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \VCNT[5]_i_1 
       (.I0(Q[4]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[3]),
        .I4(Q[2]),
        .I5(Q[5]),
        .O(VCNT[5]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hBF40)) 
    \VCNT[6]_i_1 
       (.I0(\VCNT[8]_i_2_n_0 ),
        .I1(Q[4]),
        .I2(Q[5]),
        .I3(Q[6]),
        .O(VCNT[6]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hBFFF4000)) 
    \VCNT[7]_i_1 
       (.I0(\VCNT[8]_i_2_n_0 ),
        .I1(Q[5]),
        .I2(Q[4]),
        .I3(Q[6]),
        .I4(Q[7]),
        .O(VCNT[7]));
  LUT6 #(
    .INIT(64'hBFFFFFFF40000000)) 
    \VCNT[8]_i_1 
       (.I0(\VCNT[8]_i_2_n_0 ),
        .I1(Q[6]),
        .I2(Q[4]),
        .I3(Q[5]),
        .I4(Q[7]),
        .I5(Q[8]),
        .O(VCNT[8]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \VCNT[8]_i_2 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[2]),
        .O(\VCNT[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000001000000)) 
    \VCNT[9]_i_1 
       (.I0(HCNT[7]),
        .I1(HCNT[6]),
        .I2(HCNT[5]),
        .I3(HCNT[8]),
        .I4(HCNT[9]),
        .I5(\HCNT[9]_i_3_n_0 ),
        .O(hcntend));
  LUT6 #(
    .INIT(64'hEFFF1000EFFC1000)) 
    \VCNT[9]_i_2 
       (.I0(\VCNT[9]_i_3_n_0 ),
        .I1(\VCNT[9]_i_4_n_0 ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[9]),
        .I5(\VCNT[9]_i_5_n_0 ),
        .O(VCNT[9]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \VCNT[9]_i_3 
       (.I0(Q[7]),
        .I1(Q[5]),
        .I2(Q[4]),
        .I3(Q[6]),
        .I4(Q[8]),
        .O(\VCNT[9]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \VCNT[9]_i_4 
       (.I0(Q[2]),
        .I1(Q[3]),
        .O(\VCNT[9]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \VCNT[9]_i_5 
       (.I0(Q[4]),
        .I1(Q[7]),
        .I2(Q[8]),
        .I3(Q[6]),
        .I4(Q[5]),
        .O(\VCNT[9]_i_5_n_0 ));
  FDRE \VCNT_reg[0] 
       (.C(PCK),
        .CE(hcntend),
        .D(\VCNT[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(RST));
  FDRE \VCNT_reg[1] 
       (.C(PCK),
        .CE(hcntend),
        .D(VCNT[1]),
        .Q(Q[1]),
        .R(RST));
  FDRE \VCNT_reg[2] 
       (.C(PCK),
        .CE(hcntend),
        .D(VCNT[2]),
        .Q(Q[2]),
        .R(RST));
  FDRE \VCNT_reg[3] 
       (.C(PCK),
        .CE(hcntend),
        .D(VCNT[3]),
        .Q(Q[3]),
        .R(RST));
  FDRE \VCNT_reg[4] 
       (.C(PCK),
        .CE(hcntend),
        .D(VCNT[4]),
        .Q(Q[4]),
        .R(RST));
  FDRE \VCNT_reg[5] 
       (.C(PCK),
        .CE(hcntend),
        .D(VCNT[5]),
        .Q(Q[5]),
        .R(RST));
  FDRE \VCNT_reg[6] 
       (.C(PCK),
        .CE(hcntend),
        .D(VCNT[6]),
        .Q(Q[6]),
        .R(RST));
  FDRE \VCNT_reg[7] 
       (.C(PCK),
        .CE(hcntend),
        .D(VCNT[7]),
        .Q(Q[7]),
        .R(RST));
  FDRE \VCNT_reg[8] 
       (.C(PCK),
        .CE(hcntend),
        .D(VCNT[8]),
        .Q(Q[8]),
        .R(RST));
  FDRE \VCNT_reg[9] 
       (.C(PCK),
        .CE(hcntend),
        .D(VCNT[9]),
        .Q(Q[9]),
        .R(RST));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAAABAA8)) 
    VGA_HS_i_1
       (.I0(VGA_HS),
        .I1(VGA_HS_i_2_n_0),
        .I2(HCNT[6]),
        .I3(HCNT[5]),
        .I4(HCNT[7]),
        .I5(RST),
        .O(VGA_HS_i_1_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    VGA_HS_i_2
       (.I0(HCNT[9]),
        .I1(HCNT[8]),
        .I2(HCNT[4]),
        .I3(VGA_HS_i_3_n_0),
        .O(VGA_HS_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    VGA_HS_i_3
       (.I0(HCNT[2]),
        .I1(HCNT[0]),
        .I2(HCNT[1]),
        .I3(HCNT[3]),
        .O(VGA_HS_i_3_n_0));
  FDRE VGA_HS_reg
       (.C(PCK),
        .CE(1'b1),
        .D(VGA_HS_i_1_n_0),
        .Q(VGA_HS),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFFFBA8A)) 
    VGA_VS_i_1
       (.I0(VGA_VS),
        .I1(VGA_HS_i_2_n_0),
        .I2(VGA_VS_i_2_n_0),
        .I3(VGA_VS_i_3_n_0),
        .I4(RST),
        .O(VGA_VS_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00404000)) 
    VGA_VS_i_2
       (.I0(\VCNT[9]_i_5_n_0 ),
        .I1(VGA_VS_i_4_n_0),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(Q[1]),
        .O(VGA_VS_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFBFF)) 
    VGA_VS_i_3
       (.I0(Q[9]),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\VCNT[9]_i_5_n_0 ),
        .I5(Q[2]),
        .O(VGA_VS_i_3_n_0));
  LUT5 #(
    .INIT(32'h00000001)) 
    VGA_VS_i_4
       (.I0(Q[9]),
        .I1(Q[0]),
        .I2(HCNT[5]),
        .I3(HCNT[6]),
        .I4(HCNT[7]),
        .O(VGA_VS_i_4_n_0));
  FDRE VGA_VS_reg
       (.C(PCK),
        .CE(1'b1),
        .D(VGA_VS_i_1_n_0),
        .Q(VGA_VS),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
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

endmodule
`endif
