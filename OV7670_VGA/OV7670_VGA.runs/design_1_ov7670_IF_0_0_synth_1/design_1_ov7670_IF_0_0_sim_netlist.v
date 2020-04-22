// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Thu Apr 23 01:46:06 2020
// Host        : LAPTOP-AG87OV99 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_ov7670_IF_0_0_sim_netlist.v
// Design      : design_1_ov7670_IF_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_ov7670_IF_0_0,ov7670_IF,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "ov7670_IF,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (RST,
    CAM_PCLK,
    CAM_HREF,
    CAM_VSYNC,
    data,
    DATA_OUT,
    ADDR,
    ENA,
    WENA);
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input RST;
  input CAM_PCLK;
  input CAM_HREF;
  input CAM_VSYNC;
  input [7:0]data;
  output [11:0]DATA_OUT;
  output [18:0]ADDR;
  output ENA;
  output WENA;

  wire \<const1> ;
  wire [18:0]ADDR;
  wire CAM_HREF;
  wire CAM_PCLK;
  wire CAM_VSYNC;
  wire [11:0]DATA_OUT;
  wire RST;
  wire WENA;
  wire [7:0]data;

  assign ENA = \<const1> ;
  VCC VCC
       (.P(\<const1> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ov7670_IF inst
       (.ADDR(ADDR),
        .CAM_HREF(CAM_HREF),
        .CAM_PCLK(CAM_PCLK),
        .CAM_VSYNC(CAM_VSYNC),
        .DATA_OUT(DATA_OUT),
        .RST(RST),
        .WENA(WENA),
        .data(data));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ov7670_IF
   (DATA_OUT,
    ADDR,
    WENA,
    CAM_HREF,
    RST,
    CAM_VSYNC,
    CAM_PCLK,
    data);
  output [11:0]DATA_OUT;
  output [18:0]ADDR;
  output WENA;
  input CAM_HREF;
  input RST;
  input CAM_VSYNC;
  input CAM_PCLK;
  input [7:0]data;

  wire [18:0]ADDR;
  wire CAM_HREF;
  wire CAM_PCLK;
  wire CAM_VSYNC;
  wire [11:0]DATA_OUT;
  wire \DATA_OUT[11]_i_1_n_0 ;
  wire DATA_OUT__0_n_0;
  wire [9:0]HCNT;
  wire \HCNT[0]__0_i_1_n_0 ;
  wire \HCNT[1]__0_i_1_n_0 ;
  wire \HCNT[2]__0_i_1_n_0 ;
  wire \HCNT[3]__0_i_1_n_0 ;
  wire \HCNT[4]__0_i_1_n_0 ;
  wire \HCNT[5]__0_i_1_n_0 ;
  wire \HCNT[6]__0_i_1_n_0 ;
  wire \HCNT[7]__0_i_1_n_0 ;
  wire \HCNT[8]__0_i_1_n_0 ;
  wire \HCNT[9]__0_i_1_n_0 ;
  wire \HCNT[9]__0_i_2_n_0 ;
  wire \HCNT[9]__1_i_1_n_0 ;
  wire \HCNT[9]_i_1_n_0 ;
  wire RST;
  wire WENA;
  wire WENA_i_1_n_0;
  wire [7:0]data;
  wire firstByteEn;
  wire firstByteEn_i_1_n_0;
  wire [4:0]p_1_in;
  wire NLW_ADDR__0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_ADDR__0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_ADDR__0_OVERFLOW_UNCONNECTED;
  wire NLW_ADDR__0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_ADDR__0_PATTERNDETECT_UNCONNECTED;
  wire NLW_ADDR__0_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_ADDR__0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_ADDR__0_BCOUT_UNCONNECTED;
  wire [3:0]NLW_ADDR__0_CARRYOUT_UNCONNECTED;
  wire [47:19]NLW_ADDR__0_P_UNCONNECTED;
  wire [47:0]NLW_ADDR__0_PCOUT_UNCONNECTED;

  (* METHODOLOGY_DRC_VIOS = "{SYNTH-13 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    ADDR__0
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_ADDR__0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_ADDR__0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,HCNT}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_ADDR__0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_ADDR__0_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(1'b0),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_ADDR__0_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b1,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_ADDR__0_OVERFLOW_UNCONNECTED),
        .P({NLW_ADDR__0_P_UNCONNECTED[47:19],ADDR}),
        .PATTERNBDETECT(NLW_ADDR__0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_ADDR__0_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_ADDR__0_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_ADDR__0_UNDERFLOW_UNCONNECTED));
  LUT2 #(
    .INIT(4'h2)) 
    \DATA_OUT[0]_i_1 
       (.I0(data[1]),
        .I1(firstByteEn),
        .O(p_1_in[0]));
  LUT2 #(
    .INIT(4'h8)) 
    \DATA_OUT[11]_i_1 
       (.I0(firstByteEn),
        .I1(CAM_HREF),
        .O(\DATA_OUT[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \DATA_OUT[1]_i_1 
       (.I0(data[2]),
        .I1(firstByteEn),
        .O(p_1_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \DATA_OUT[2]_i_1 
       (.I0(data[3]),
        .I1(firstByteEn),
        .O(p_1_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \DATA_OUT[3]_i_1 
       (.I0(data[4]),
        .I1(firstByteEn),
        .O(p_1_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \DATA_OUT[4]_i_1 
       (.I0(data[7]),
        .I1(firstByteEn),
        .O(p_1_in[4]));
  LUT3 #(
    .INIT(8'hEA)) 
    DATA_OUT__0
       (.I0(RST),
        .I1(firstByteEn),
        .I2(CAM_HREF),
        .O(DATA_OUT__0_n_0));
  FDRE \DATA_OUT_reg[0] 
       (.C(CAM_PCLK),
        .CE(CAM_HREF),
        .D(p_1_in[0]),
        .Q(DATA_OUT[0]),
        .R(DATA_OUT__0_n_0));
  FDRE \DATA_OUT_reg[10] 
       (.C(CAM_PCLK),
        .CE(\DATA_OUT[11]_i_1_n_0 ),
        .D(data[6]),
        .Q(DATA_OUT[10]),
        .R(RST));
  FDRE \DATA_OUT_reg[11] 
       (.C(CAM_PCLK),
        .CE(\DATA_OUT[11]_i_1_n_0 ),
        .D(data[7]),
        .Q(DATA_OUT[11]),
        .R(RST));
  FDRE \DATA_OUT_reg[1] 
       (.C(CAM_PCLK),
        .CE(CAM_HREF),
        .D(p_1_in[1]),
        .Q(DATA_OUT[1]),
        .R(DATA_OUT__0_n_0));
  FDRE \DATA_OUT_reg[2] 
       (.C(CAM_PCLK),
        .CE(CAM_HREF),
        .D(p_1_in[2]),
        .Q(DATA_OUT[2]),
        .R(DATA_OUT__0_n_0));
  FDRE \DATA_OUT_reg[3] 
       (.C(CAM_PCLK),
        .CE(CAM_HREF),
        .D(p_1_in[3]),
        .Q(DATA_OUT[3]),
        .R(DATA_OUT__0_n_0));
  FDRE \DATA_OUT_reg[4] 
       (.C(CAM_PCLK),
        .CE(CAM_HREF),
        .D(p_1_in[4]),
        .Q(DATA_OUT[4]),
        .R(DATA_OUT__0_n_0));
  FDRE \DATA_OUT_reg[5] 
       (.C(CAM_PCLK),
        .CE(\DATA_OUT[11]_i_1_n_0 ),
        .D(data[0]),
        .Q(DATA_OUT[5]),
        .R(RST));
  FDRE \DATA_OUT_reg[6] 
       (.C(CAM_PCLK),
        .CE(\DATA_OUT[11]_i_1_n_0 ),
        .D(data[1]),
        .Q(DATA_OUT[6]),
        .R(RST));
  FDRE \DATA_OUT_reg[7] 
       (.C(CAM_PCLK),
        .CE(\DATA_OUT[11]_i_1_n_0 ),
        .D(data[2]),
        .Q(DATA_OUT[7]),
        .R(RST));
  FDRE \DATA_OUT_reg[8] 
       (.C(CAM_PCLK),
        .CE(\DATA_OUT[11]_i_1_n_0 ),
        .D(data[4]),
        .Q(DATA_OUT[8]),
        .R(RST));
  FDRE \DATA_OUT_reg[9] 
       (.C(CAM_PCLK),
        .CE(\DATA_OUT[11]_i_1_n_0 ),
        .D(data[5]),
        .Q(DATA_OUT[9]),
        .R(RST));
  LUT1 #(
    .INIT(2'h1)) 
    \HCNT[0]__0_i_1 
       (.I0(HCNT[0]),
        .O(\HCNT[0]__0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \HCNT[1]__0_i_1 
       (.I0(HCNT[0]),
        .I1(HCNT[1]),
        .O(\HCNT[1]__0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \HCNT[2]__0_i_1 
       (.I0(HCNT[0]),
        .I1(HCNT[1]),
        .I2(HCNT[2]),
        .O(\HCNT[2]__0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h7F80)) 
    \HCNT[3]__0_i_1 
       (.I0(HCNT[1]),
        .I1(HCNT[0]),
        .I2(HCNT[2]),
        .I3(HCNT[3]),
        .O(\HCNT[3]__0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \HCNT[4]__0_i_1 
       (.I0(HCNT[2]),
        .I1(HCNT[0]),
        .I2(HCNT[1]),
        .I3(HCNT[3]),
        .I4(HCNT[4]),
        .O(\HCNT[4]__0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \HCNT[5]__0_i_1 
       (.I0(HCNT[3]),
        .I1(HCNT[1]),
        .I2(HCNT[0]),
        .I3(HCNT[2]),
        .I4(HCNT[4]),
        .I5(HCNT[5]),
        .O(\HCNT[5]__0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \HCNT[6]__0_i_1 
       (.I0(\HCNT[9]__0_i_2_n_0 ),
        .I1(HCNT[6]),
        .O(\HCNT[6]__0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \HCNT[7]__0_i_1 
       (.I0(\HCNT[9]__0_i_2_n_0 ),
        .I1(HCNT[6]),
        .I2(HCNT[7]),
        .O(\HCNT[7]__0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h7F80)) 
    \HCNT[8]__0_i_1 
       (.I0(HCNT[6]),
        .I1(\HCNT[9]__0_i_2_n_0 ),
        .I2(HCNT[7]),
        .I3(HCNT[8]),
        .O(\HCNT[8]__0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \HCNT[9]__0_i_1 
       (.I0(HCNT[7]),
        .I1(\HCNT[9]__0_i_2_n_0 ),
        .I2(HCNT[6]),
        .I3(HCNT[8]),
        .I4(HCNT[9]),
        .O(\HCNT[9]__0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \HCNT[9]__0_i_2 
       (.I0(HCNT[5]),
        .I1(HCNT[3]),
        .I2(HCNT[1]),
        .I3(HCNT[0]),
        .I4(HCNT[2]),
        .I5(HCNT[4]),
        .O(\HCNT[9]__0_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \HCNT[9]__1_i_1 
       (.I0(firstByteEn),
        .I1(CAM_HREF),
        .I2(RST),
        .O(\HCNT[9]__1_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \HCNT[9]_i_1 
       (.I0(RST),
        .O(\HCNT[9]_i_1_n_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \HCNT_reg[0] 
       (.C(CAM_VSYNC),
        .CE(\HCNT[9]_i_1_n_0 ),
        .D(1'b0),
        .Q(HCNT[0]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \HCNT_reg[0]__0 
       (.C(CAM_HREF),
        .CE(1'b1),
        .D(\HCNT[0]__0_i_1_n_0 ),
        .Q(HCNT[0]),
        .R(RST));
  FDRE \HCNT_reg[0]__1 
       (.C(CAM_PCLK),
        .CE(\HCNT[9]__1_i_1_n_0 ),
        .D(\HCNT[0]__0_i_1_n_0 ),
        .Q(HCNT[0]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \HCNT_reg[1] 
       (.C(CAM_VSYNC),
        .CE(\HCNT[9]_i_1_n_0 ),
        .D(1'b0),
        .Q(HCNT[1]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \HCNT_reg[1]__0 
       (.C(CAM_HREF),
        .CE(1'b1),
        .D(\HCNT[1]__0_i_1_n_0 ),
        .Q(HCNT[1]),
        .R(RST));
  FDRE \HCNT_reg[1]__1 
       (.C(CAM_PCLK),
        .CE(\HCNT[9]__1_i_1_n_0 ),
        .D(\HCNT[1]__0_i_1_n_0 ),
        .Q(HCNT[1]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \HCNT_reg[2] 
       (.C(CAM_VSYNC),
        .CE(\HCNT[9]_i_1_n_0 ),
        .D(1'b0),
        .Q(HCNT[2]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \HCNT_reg[2]__0 
       (.C(CAM_HREF),
        .CE(1'b1),
        .D(\HCNT[2]__0_i_1_n_0 ),
        .Q(HCNT[2]),
        .R(RST));
  FDRE \HCNT_reg[2]__1 
       (.C(CAM_PCLK),
        .CE(\HCNT[9]__1_i_1_n_0 ),
        .D(\HCNT[2]__0_i_1_n_0 ),
        .Q(HCNT[2]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \HCNT_reg[3] 
       (.C(CAM_VSYNC),
        .CE(\HCNT[9]_i_1_n_0 ),
        .D(1'b0),
        .Q(HCNT[3]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \HCNT_reg[3]__0 
       (.C(CAM_HREF),
        .CE(1'b1),
        .D(\HCNT[3]__0_i_1_n_0 ),
        .Q(HCNT[3]),
        .R(RST));
  FDRE \HCNT_reg[3]__1 
       (.C(CAM_PCLK),
        .CE(\HCNT[9]__1_i_1_n_0 ),
        .D(\HCNT[3]__0_i_1_n_0 ),
        .Q(HCNT[3]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \HCNT_reg[4] 
       (.C(CAM_VSYNC),
        .CE(\HCNT[9]_i_1_n_0 ),
        .D(1'b0),
        .Q(HCNT[4]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \HCNT_reg[4]__0 
       (.C(CAM_HREF),
        .CE(1'b1),
        .D(\HCNT[4]__0_i_1_n_0 ),
        .Q(HCNT[4]),
        .R(RST));
  FDRE \HCNT_reg[4]__1 
       (.C(CAM_PCLK),
        .CE(\HCNT[9]__1_i_1_n_0 ),
        .D(\HCNT[4]__0_i_1_n_0 ),
        .Q(HCNT[4]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \HCNT_reg[5] 
       (.C(CAM_VSYNC),
        .CE(\HCNT[9]_i_1_n_0 ),
        .D(1'b0),
        .Q(HCNT[5]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \HCNT_reg[5]__0 
       (.C(CAM_HREF),
        .CE(1'b1),
        .D(\HCNT[5]__0_i_1_n_0 ),
        .Q(HCNT[5]),
        .R(RST));
  FDRE \HCNT_reg[5]__1 
       (.C(CAM_PCLK),
        .CE(\HCNT[9]__1_i_1_n_0 ),
        .D(\HCNT[5]__0_i_1_n_0 ),
        .Q(HCNT[5]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \HCNT_reg[6] 
       (.C(CAM_VSYNC),
        .CE(\HCNT[9]_i_1_n_0 ),
        .D(1'b0),
        .Q(HCNT[6]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \HCNT_reg[6]__0 
       (.C(CAM_HREF),
        .CE(1'b1),
        .D(\HCNT[6]__0_i_1_n_0 ),
        .Q(HCNT[6]),
        .R(RST));
  FDRE \HCNT_reg[6]__1 
       (.C(CAM_PCLK),
        .CE(\HCNT[9]__1_i_1_n_0 ),
        .D(\HCNT[6]__0_i_1_n_0 ),
        .Q(HCNT[6]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \HCNT_reg[7] 
       (.C(CAM_VSYNC),
        .CE(\HCNT[9]_i_1_n_0 ),
        .D(1'b0),
        .Q(HCNT[7]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \HCNT_reg[7]__0 
       (.C(CAM_HREF),
        .CE(1'b1),
        .D(\HCNT[7]__0_i_1_n_0 ),
        .Q(HCNT[7]),
        .R(RST));
  FDRE \HCNT_reg[7]__1 
       (.C(CAM_PCLK),
        .CE(\HCNT[9]__1_i_1_n_0 ),
        .D(\HCNT[7]__0_i_1_n_0 ),
        .Q(HCNT[7]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \HCNT_reg[8] 
       (.C(CAM_VSYNC),
        .CE(\HCNT[9]_i_1_n_0 ),
        .D(1'b0),
        .Q(HCNT[8]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \HCNT_reg[8]__0 
       (.C(CAM_HREF),
        .CE(1'b1),
        .D(\HCNT[8]__0_i_1_n_0 ),
        .Q(HCNT[8]),
        .R(RST));
  FDRE \HCNT_reg[8]__1 
       (.C(CAM_PCLK),
        .CE(\HCNT[9]__1_i_1_n_0 ),
        .D(\HCNT[8]__0_i_1_n_0 ),
        .Q(HCNT[8]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \HCNT_reg[9] 
       (.C(CAM_VSYNC),
        .CE(\HCNT[9]_i_1_n_0 ),
        .D(1'b0),
        .Q(HCNT[9]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \HCNT_reg[9]__0 
       (.C(CAM_HREF),
        .CE(1'b1),
        .D(\HCNT[9]__0_i_1_n_0 ),
        .Q(HCNT[9]),
        .R(RST));
  FDRE \HCNT_reg[9]__1 
       (.C(CAM_PCLK),
        .CE(\HCNT[9]__1_i_1_n_0 ),
        .D(\HCNT[9]__0_i_1_n_0 ),
        .Q(HCNT[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h00AE)) 
    WENA_i_1
       (.I0(WENA),
        .I1(CAM_HREF),
        .I2(firstByteEn),
        .I3(RST),
        .O(WENA_i_1_n_0));
  FDRE WENA_reg
       (.C(CAM_PCLK),
        .CE(1'b1),
        .D(WENA_i_1_n_0),
        .Q(WENA),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hF6)) 
    firstByteEn_i_1
       (.I0(firstByteEn),
        .I1(CAM_HREF),
        .I2(RST),
        .O(firstByteEn_i_1_n_0));
  FDRE firstByteEn_reg
       (.C(CAM_PCLK),
        .CE(1'b1),
        .D(firstByteEn_i_1_n_0),
        .Q(firstByteEn),
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
