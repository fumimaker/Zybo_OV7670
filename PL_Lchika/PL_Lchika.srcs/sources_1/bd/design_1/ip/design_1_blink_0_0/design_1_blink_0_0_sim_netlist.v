// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Sat Apr 18 03:50:09 2020
// Host        : LAPTOP-AG87OV99 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/ivr/Documents/GitHub/Zybo_OV7670/PL_Lchika/PL_Lchika.srcs/sources_1/bd/design_1/ip/design_1_blink_0_0/design_1_blink_0_0_sim_netlist.v
// Design      : design_1_blink_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_blink_0_0,blink,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "blink,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module design_1_blink_0_0
   (CLK,
    OUT);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0" *) input CLK;
  output [3:0]OUT;

  wire CLK;
  wire [0:0]\^OUT ;

  assign OUT[3] = \^OUT [0];
  assign OUT[2] = \^OUT [0];
  assign OUT[1] = \^OUT [0];
  assign OUT[0] = \^OUT [0];
  design_1_blink_0_0_blink inst
       (.CLK(CLK),
        .OUT(\^OUT ));
endmodule

(* ORIG_REF_NAME = "blink" *) 
module design_1_blink_0_0_blink
   (OUT,
    CLK);
  output [0:0]OUT;
  input CLK;

  wire CLK;
  wire [0:0]OUT;
  wire [26:0]cnt;
  wire cnt0_carry__0_n_0;
  wire cnt0_carry__0_n_1;
  wire cnt0_carry__0_n_2;
  wire cnt0_carry__0_n_3;
  wire cnt0_carry__1_n_0;
  wire cnt0_carry__1_n_1;
  wire cnt0_carry__1_n_2;
  wire cnt0_carry__1_n_3;
  wire cnt0_carry__2_n_0;
  wire cnt0_carry__2_n_1;
  wire cnt0_carry__2_n_2;
  wire cnt0_carry__2_n_3;
  wire cnt0_carry__3_n_0;
  wire cnt0_carry__3_n_1;
  wire cnt0_carry__3_n_2;
  wire cnt0_carry__3_n_3;
  wire cnt0_carry__4_n_0;
  wire cnt0_carry__4_n_1;
  wire cnt0_carry__4_n_2;
  wire cnt0_carry__4_n_3;
  wire cnt0_carry__5_n_3;
  wire cnt0_carry_n_0;
  wire cnt0_carry_n_1;
  wire cnt0_carry_n_2;
  wire cnt0_carry_n_3;
  wire [0:0]cnt_0;
  wire [26:1]data0;
  wire onoff;
  wire onoff_i_1_n_0;
  wire onoff_i_2_n_0;
  wire onoff_i_3_n_0;
  wire onoff_i_4_n_0;
  wire onoff_i_5_n_0;
  wire onoff_i_6_n_0;
  wire onoff_i_7_n_0;
  wire onoff_i_8_n_0;
  wire [3:1]NLW_cnt0_carry__5_CO_UNCONNECTED;
  wire [3:2]NLW_cnt0_carry__5_O_UNCONNECTED;

  CARRY4 cnt0_carry
       (.CI(1'b0),
        .CO({cnt0_carry_n_0,cnt0_carry_n_1,cnt0_carry_n_2,cnt0_carry_n_3}),
        .CYINIT(cnt[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S(cnt[4:1]));
  CARRY4 cnt0_carry__0
       (.CI(cnt0_carry_n_0),
        .CO({cnt0_carry__0_n_0,cnt0_carry__0_n_1,cnt0_carry__0_n_2,cnt0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S(cnt[8:5]));
  CARRY4 cnt0_carry__1
       (.CI(cnt0_carry__0_n_0),
        .CO({cnt0_carry__1_n_0,cnt0_carry__1_n_1,cnt0_carry__1_n_2,cnt0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S(cnt[12:9]));
  CARRY4 cnt0_carry__2
       (.CI(cnt0_carry__1_n_0),
        .CO({cnt0_carry__2_n_0,cnt0_carry__2_n_1,cnt0_carry__2_n_2,cnt0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[16:13]),
        .S(cnt[16:13]));
  CARRY4 cnt0_carry__3
       (.CI(cnt0_carry__2_n_0),
        .CO({cnt0_carry__3_n_0,cnt0_carry__3_n_1,cnt0_carry__3_n_2,cnt0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[20:17]),
        .S(cnt[20:17]));
  CARRY4 cnt0_carry__4
       (.CI(cnt0_carry__3_n_0),
        .CO({cnt0_carry__4_n_0,cnt0_carry__4_n_1,cnt0_carry__4_n_2,cnt0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[24:21]),
        .S(cnt[24:21]));
  CARRY4 cnt0_carry__5
       (.CI(cnt0_carry__4_n_0),
        .CO({NLW_cnt0_carry__5_CO_UNCONNECTED[3:1],cnt0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_cnt0_carry__5_O_UNCONNECTED[3:2],data0[26:25]}),
        .S({1'b0,1'b0,cnt[26:25]}));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \cnt[0]_i_1 
       (.I0(cnt[0]),
        .O(cnt_0));
  LUT3 #(
    .INIT(8'h01)) 
    \cnt[26]_i_1 
       (.I0(onoff_i_2_n_0),
        .I1(onoff_i_3_n_0),
        .I2(onoff_i_4_n_0),
        .O(onoff));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(cnt_0),
        .Q(cnt[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .D(data0[10]),
        .Q(cnt[10]),
        .R(onoff));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .D(data0[11]),
        .Q(cnt[11]),
        .R(onoff));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .D(data0[12]),
        .Q(cnt[12]),
        .R(onoff));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .D(data0[13]),
        .Q(cnt[13]),
        .R(onoff));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[14] 
       (.C(CLK),
        .CE(1'b1),
        .D(data0[14]),
        .Q(cnt[14]),
        .R(onoff));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[15] 
       (.C(CLK),
        .CE(1'b1),
        .D(data0[15]),
        .Q(cnt[15]),
        .R(onoff));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[16] 
       (.C(CLK),
        .CE(1'b1),
        .D(data0[16]),
        .Q(cnt[16]),
        .R(onoff));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[17] 
       (.C(CLK),
        .CE(1'b1),
        .D(data0[17]),
        .Q(cnt[17]),
        .R(onoff));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[18] 
       (.C(CLK),
        .CE(1'b1),
        .D(data0[18]),
        .Q(cnt[18]),
        .R(onoff));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[19] 
       (.C(CLK),
        .CE(1'b1),
        .D(data0[19]),
        .Q(cnt[19]),
        .R(onoff));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(data0[1]),
        .Q(cnt[1]),
        .R(onoff));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[20] 
       (.C(CLK),
        .CE(1'b1),
        .D(data0[20]),
        .Q(cnt[20]),
        .R(onoff));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[21] 
       (.C(CLK),
        .CE(1'b1),
        .D(data0[21]),
        .Q(cnt[21]),
        .R(onoff));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[22] 
       (.C(CLK),
        .CE(1'b1),
        .D(data0[22]),
        .Q(cnt[22]),
        .R(onoff));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[23] 
       (.C(CLK),
        .CE(1'b1),
        .D(data0[23]),
        .Q(cnt[23]),
        .R(onoff));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[24] 
       (.C(CLK),
        .CE(1'b1),
        .D(data0[24]),
        .Q(cnt[24]),
        .R(onoff));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[25] 
       (.C(CLK),
        .CE(1'b1),
        .D(data0[25]),
        .Q(cnt[25]),
        .R(onoff));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[26] 
       (.C(CLK),
        .CE(1'b1),
        .D(data0[26]),
        .Q(cnt[26]),
        .R(onoff));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(data0[2]),
        .Q(cnt[2]),
        .R(onoff));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(data0[3]),
        .Q(cnt[3]),
        .R(onoff));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(data0[4]),
        .Q(cnt[4]),
        .R(onoff));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(data0[5]),
        .Q(cnt[5]),
        .R(onoff));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(data0[6]),
        .Q(cnt[6]),
        .R(onoff));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(data0[7]),
        .Q(cnt[7]),
        .R(onoff));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(data0[8]),
        .Q(cnt[8]),
        .R(onoff));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(data0[9]),
        .Q(cnt[9]),
        .R(onoff));
  LUT4 #(
    .INIT(16'hFE01)) 
    onoff_i_1
       (.I0(onoff_i_2_n_0),
        .I1(onoff_i_3_n_0),
        .I2(onoff_i_4_n_0),
        .I3(OUT),
        .O(onoff_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFFFF7F)) 
    onoff_i_2
       (.I0(cnt[26]),
        .I1(cnt[25]),
        .I2(cnt[0]),
        .I3(onoff_i_5_n_0),
        .I4(onoff_i_6_n_0),
        .O(onoff_i_2_n_0));
  LUT5 #(
    .INIT(32'hFFFFFBFF)) 
    onoff_i_3
       (.I0(cnt[7]),
        .I1(cnt[8]),
        .I2(cnt[6]),
        .I3(cnt[5]),
        .I4(onoff_i_7_n_0),
        .O(onoff_i_3_n_0));
  LUT5 #(
    .INIT(32'hFFFFFBFF)) 
    onoff_i_4
       (.I0(cnt[15]),
        .I1(cnt[16]),
        .I2(cnt[13]),
        .I3(cnt[14]),
        .I4(onoff_i_8_n_0),
        .O(onoff_i_4_n_0));
  LUT4 #(
    .INIT(16'hFF7F)) 
    onoff_i_5
       (.I0(cnt[22]),
        .I1(cnt[21]),
        .I2(cnt[24]),
        .I3(cnt[23]),
        .O(onoff_i_5_n_0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    onoff_i_6
       (.I0(cnt[2]),
        .I1(cnt[1]),
        .I2(cnt[4]),
        .I3(cnt[3]),
        .O(onoff_i_6_n_0));
  LUT4 #(
    .INIT(16'hEFFF)) 
    onoff_i_7
       (.I0(cnt[10]),
        .I1(cnt[9]),
        .I2(cnt[12]),
        .I3(cnt[11]),
        .O(onoff_i_7_n_0));
  LUT4 #(
    .INIT(16'hFFDF)) 
    onoff_i_8
       (.I0(cnt[17]),
        .I1(cnt[18]),
        .I2(cnt[20]),
        .I3(cnt[19]),
        .O(onoff_i_8_n_0));
  FDRE #(
    .INIT(1'b0)) 
    onoff_reg
       (.C(CLK),
        .CE(1'b1),
        .D(onoff_i_1_n_0),
        .Q(OUT),
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
