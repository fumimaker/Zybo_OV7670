##Clock signal
set_property -dict {PACKAGE_PIN K17 IOSTANDARD LVCMOS33} [get_ports CLK]
create_clock -period 8.000 -name sys_clk_pin -waveform {0.000 4.000} -add [get_ports CLK]


##Pmod Header JB (Zybo Z7-20 only)
set_property -dict {PACKAGE_PIN V8 IOSTANDARD LVCMOS33} [get_ports {VGA_R[0]}]
set_property -dict {PACKAGE_PIN W8 IOSTANDARD LVCMOS33} [get_ports {VGA_R[1]}]
set_property -dict {PACKAGE_PIN U7 IOSTANDARD LVCMOS33} [get_ports {VGA_R[2]}]
set_property -dict {PACKAGE_PIN V7 IOSTANDARD LVCMOS33} [get_ports {VGA_R[3]}]
set_property -dict {PACKAGE_PIN Y7 IOSTANDARD LVCMOS33} [get_ports {VGA_B[0]}]
set_property -dict {PACKAGE_PIN Y6 IOSTANDARD LVCMOS33} [get_ports {VGA_B[1]}]
set_property -dict {PACKAGE_PIN V6 IOSTANDARD LVCMOS33} [get_ports {VGA_B[2]}]
set_property -dict {PACKAGE_PIN W6 IOSTANDARD LVCMOS33} [get_ports {VGA_B[3]}]


##Pmod Header JC  DATA
set_property -dict {PACKAGE_PIN V15 IOSTANDARD LVCMOS33} [get_ports {VGA_G[0]}]
set_property -dict {PACKAGE_PIN W15 IOSTANDARD LVCMOS33} [get_ports {VGA_G[1]}]
set_property -dict {PACKAGE_PIN T11 IOSTANDARD LVCMOS33} [get_ports {VGA_G[2]}]
set_property -dict {PACKAGE_PIN T10 IOSTANDARD LVCMOS33} [get_ports {VGA_G[3]}]
set_property -dict {PACKAGE_PIN W14 IOSTANDARD LVCMOS33} [get_ports VGA_HSYNC]
set_property -dict {PACKAGE_PIN Y14 IOSTANDARD LVCMOS33} [get_ports VGA_VSYNC]
#set_property -dict { PACKAGE_PIN T12   IOSTANDARD LVCMOS33     } [get_ports { data[6] }]; #IO_L2P_T0_34 Sch=jc_p[4]
#set_property -dict { PACKAGE_PIN U12   IOSTANDARD LVCMOS33     } [get_ports { data[7] }]; #IO_L2N_T0_34 Sch=jc_n[4]

##Pmod Header JD
set_property -dict {PACKAGE_PIN T14 IOSTANDARD LVCMOS33} [get_ports CAM_VSYNC]
set_property -dict {PACKAGE_PIN T15 IOSTANDARD LVCMOS33} [get_ports CAM_HREF]
set_property -dict {PACKAGE_PIN P14 IOSTANDARD LVCMOS33} [get_ports CAM_PCLK]
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets CAM_PCLK_IBUF]
set_property -dict {PACKAGE_PIN R14 IOSTANDARD LVCMOS33} [get_ports CAM_XCLK]
set_property -dict {PACKAGE_PIN U14 IOSTANDARD LVCMOS33} [get_ports IIC_0_0_scl_io]
set_property -dict {PACKAGE_PIN U15 IOSTANDARD LVCMOS33} [get_ports IIC_0_0_sda_io]
#set_property -dict { PACKAGE_PIN V17   IOSTANDARD LVCMOS33     } [get_ports { jd[6] }]; #IO_L21P_T3_DQS_34 Sch=jd_p[4]
#set_property -dict { PACKAGE_PIN V18   IOSTANDARD LVCMOS33     } [get_ports { jd[7] }]; #IO_L21N_T3_DQS_34 Sch=jd_n[4]


##Pmod Header JE
set_property -dict {PACKAGE_PIN V12 IOSTANDARD LVCMOS33} [get_ports {data[0]}]
set_property -dict {PACKAGE_PIN W16 IOSTANDARD LVCMOS33} [get_ports {data[1]}]
set_property -dict {PACKAGE_PIN J15 IOSTANDARD LVCMOS33} [get_ports {data[2]}]
set_property -dict {PACKAGE_PIN H15 IOSTANDARD LVCMOS33} [get_ports {data[3]}]
set_property -dict {PACKAGE_PIN V13 IOSTANDARD LVCMOS33} [get_ports {data[4]}]
set_property -dict {PACKAGE_PIN U17 IOSTANDARD LVCMOS33} [get_ports {data[5]}]
set_property -dict {PACKAGE_PIN T17 IOSTANDARD LVCMOS33} [get_ports {data[6]}]
set_property -dict {PACKAGE_PIN Y17 IOSTANDARD LVCMOS33} [get_ports {data[7]}]

##Switches
#set_property -dict { PACKAGE_PIN G15   IOSTANDARD LVCMOS33 } [get_ports { sw[0] }]; #IO_L19N_T3_VREF_35 Sch=sw[0]
#set_property -dict { PACKAGE_PIN P15   IOSTANDARD LVCMOS33 } [get_ports { sw[1] }]; #IO_L24P_T3_34 Sch=sw[1]
#set_property -dict { PACKAGE_PIN W13   IOSTANDARD LVCMOS33 } [get_ports { sw[2] }]; #IO_L4N_T0_34 Sch=sw[2]
#set_property -dict { PACKAGE_PIN T16   IOSTANDARD LVCMOS33 } [get_ports { sw[3] }]; #IO_L9P_T1_DQS_34 Sch=sw[3]


##Buttons
#set_property -dict { PACKAGE_PIN K18   IOSTANDARD LVCMOS33 } [get_ports { btn[0] }]; #IO_L12N_T1_MRCC_35 Sch=btn[0]
#set_property -dict { PACKAGE_PIN P16   IOSTANDARD LVCMOS33 } [get_ports { btn[1] }]; #IO_L24N_T3_34 Sch=btn[1]
#set_property -dict { PACKAGE_PIN K19   IOSTANDARD LVCMOS33 } [get_ports { btn[2] }]; #IO_L10P_T1_AD11P_35 Sch=btn[2]
set_property -dict {PACKAGE_PIN Y16 IOSTANDARD LVCMOS33} [get_ports RST]


###LEDs
#set_property -dict { PACKAGE_PIN M14   IOSTANDARD LVCMOS33 } [get_ports { led[0] }]; #IO_L23P_T3_35 Sch=led[0]
#set_property -dict { PACKAGE_PIN M15   IOSTANDARD LVCMOS33 } [get_ports { led[1] }]; #IO_L23N_T3_35 Sch=led[1]
#set_property -dict { PACKAGE_PIN G14   IOSTANDARD LVCMOS33 } [get_ports { led[2] }]; #IO_0_35 Sch=led[2]
#set_property -dict { PACKAGE_PIN D18   IOSTANDARD LVCMOS33 } [get_ports { led[3] }]; #IO_L3N_T0_DQS_AD1N_35 Sch=led[3]

###RGB LED 5 (Zybo Z7-20 only)
#set_property -dict { PACKAGE_PIN Y11   IOSTANDARD LVCMOS33 } [get_ports { rgb[0] }]; #IO_L18N_T2_13 Sch=led5_r
#set_property -dict { PACKAGE_PIN T5    IOSTANDARD LVCMOS33 } [get_ports { rgb[1] }]; #IO_L19P_T3_13 Sch=led5_g
#set_property -dict { PACKAGE_PIN Y12   IOSTANDARD LVCMOS33 } [get_ports { rgb[2] }]; #IO_L20P_T3_13 Sch=led5_b

###RGB LED 6
#set_property -dict { PACKAGE_PIN V16   IOSTANDARD LVCMOS33 } [get_ports { rgb[3] }]; #IO_L18P_T2_34 Sch=led6_r
#set_property -dict { PACKAGE_PIN F17   IOSTANDARD LVCMOS33 } [get_ports { rgb[4] }]; #IO_L6N_T0_VREF_35 Sch=led6_g
#set_property -dict { PACKAGE_PIN M17   IOSTANDARD LVCMOS33 } [get_ports { rgb[5] }]; #IO_L8P_T1_AD10P_35 Sch=led6_b








set_property MARK_DEBUG true [get_nets CAM_HREF_IBUF]
set_property MARK_DEBUG true [get_nets CAM_VSYNC_IBUF]
set_property MARK_DEBUG true [get_nets {BRAM_ADDRA[7]}]
set_property MARK_DEBUG true [get_nets {BRAM_DATAA[6]}]
set_property MARK_DEBUG true [get_nets {BRAM_ADDRA[3]}]
set_property MARK_DEBUG true [get_nets clk_25_175MHZ]
set_property MARK_DEBUG true [get_nets {BRAM_ADDRA[4]}]
set_property MARK_DEBUG true [get_nets {BRAM_DATAA[3]}]
set_property MARK_DEBUG true [get_nets {BRAM_ADDRA[18]}]
set_property MARK_DEBUG true [get_nets {BRAM_ADDRA[16]}]
set_property MARK_DEBUG true [get_nets {BRAM_ADDRA[5]}]
set_property MARK_DEBUG true [get_nets {BRAM_ADDRA[9]}]
set_property MARK_DEBUG true [get_nets {BRAM_DATAA[2]}]
set_property MARK_DEBUG true [get_nets {BRAM_DATAA[0]}]
set_property MARK_DEBUG true [get_nets {BRAM_DATAA[10]}]
set_property MARK_DEBUG true [get_nets BRAM_WENA]
set_property MARK_DEBUG true [get_nets RST_IBUF]
set_property MARK_DEBUG true [get_nets {BRAM_ADDRA[14]}]
set_property MARK_DEBUG true [get_nets {BRAM_DATAA[8]}]
set_property MARK_DEBUG true [get_nets {BRAM_ADDRA[10]}]
set_property MARK_DEBUG true [get_nets {BRAM_ADDRA[6]}]
set_property MARK_DEBUG true [get_nets {BRAM_ADDRA[12]}]
set_property MARK_DEBUG true [get_nets {BRAM_DATAA[11]}]
set_property MARK_DEBUG true [get_nets {BRAM_ADDRA[0]}]
set_property MARK_DEBUG true [get_nets {BRAM_ADDRA[1]}]
set_property MARK_DEBUG true [get_nets {BRAM_ADDRA[13]}]
set_property MARK_DEBUG true [get_nets {BRAM_ADDRA[17]}]
set_property MARK_DEBUG true [get_nets {BRAM_DATAA[1]}]
set_property MARK_DEBUG true [get_nets {BRAM_DATAA[9]}]
set_property MARK_DEBUG true [get_nets {BRAM_DATAA[5]}]
set_property MARK_DEBUG true [get_nets {BRAM_DATAA[4]}]
set_property MARK_DEBUG true [get_nets {BRAM_ADDRA[2]}]
set_property MARK_DEBUG true [get_nets <const1>]
set_property MARK_DEBUG true [get_nets CAM_PCLK_IBUF_BUFG]
set_property MARK_DEBUG true [get_nets {BRAM_ADDRA[8]}]
set_property MARK_DEBUG true [get_nets {BRAM_ADDRA[11]}]
set_property MARK_DEBUG true [get_nets {BRAM_DATAA[7]}]
set_property MARK_DEBUG true [get_nets {BRAM_ADDRA[15]}]
set_property MARK_DEBUG true [get_nets {BRAM_ADDRB[1]}]
set_property MARK_DEBUG true [get_nets {BRAM_ADDRB[2]}]
set_property MARK_DEBUG true [get_nets {BRAM_ADDRB[9]}]
set_property MARK_DEBUG true [get_nets {BRAM_ADDRB[12]}]
set_property MARK_DEBUG true [get_nets {BRAM_ADDRB[16]}]
set_property MARK_DEBUG true [get_nets {BRAM_ADDRB[17]}]
set_property MARK_DEBUG true [get_nets {VGA_B_OBUF[1]}]
set_property MARK_DEBUG true [get_nets {VGA_R_OBUF[0]}]
set_property MARK_DEBUG true [get_nets {BRAM_ADDRB[3]}]
set_property MARK_DEBUG true [get_nets {BRAM_ADDRB[10]}]
set_property MARK_DEBUG true [get_nets {BRAM_ADDRB[14]}]
set_property MARK_DEBUG true [get_nets {VGA_G_OBUF[2]}]
set_property MARK_DEBUG true [get_nets {BRAM_ADDRB[6]}]
set_property MARK_DEBUG true [get_nets VGA_VSYNC_OBUF]
set_property MARK_DEBUG true [get_nets {BRAM_ADDRB[0]}]
set_property MARK_DEBUG true [get_nets {BRAM_ADDRB[8]}]
set_property MARK_DEBUG true [get_nets {BRAM_ADDRB[11]}]
set_property MARK_DEBUG true [get_nets {BRAM_ADDRB[18]}]
set_property MARK_DEBUG true [get_nets {VGA_B_OBUF[3]}]
set_property MARK_DEBUG true [get_nets {VGA_G_OBUF[1]}]
set_property MARK_DEBUG true [get_nets {VGA_R_OBUF[2]}]
set_property MARK_DEBUG true [get_nets {VGA_B_OBUF[2]}]
set_property MARK_DEBUG true [get_nets {VGA_G_OBUF[0]}]
set_property MARK_DEBUG true [get_nets {VGA_R_OBUF[1]}]
set_property MARK_DEBUG true [get_nets VGA_HSYNC_OBUF]
set_property MARK_DEBUG true [get_nets {BRAM_ADDRB[4]}]
set_property MARK_DEBUG true [get_nets {BRAM_ADDRB[5]}]
set_property MARK_DEBUG true [get_nets {BRAM_ADDRB[7]}]
set_property MARK_DEBUG true [get_nets {BRAM_ADDRB[13]}]
set_property MARK_DEBUG true [get_nets {BRAM_ADDRB[15]}]
set_property MARK_DEBUG true [get_nets {VGA_B_OBUF[0]}]
set_property MARK_DEBUG true [get_nets {VGA_R_OBUF[3]}]
set_property MARK_DEBUG true [get_nets {VGA_G_OBUF[3]}]

set_property MARK_DEBUG true [get_nets CAM_XCLK_OBUF]
set_property MARK_DEBUG true [get_nets {BRAM_DATAB[0]}]
set_property MARK_DEBUG true [get_nets {BRAM_DATAB[6]}]
set_property MARK_DEBUG true [get_nets {BRAM_DATAB[7]}]
set_property MARK_DEBUG true [get_nets {BRAM_DATAB[8]}]
set_property MARK_DEBUG true [get_nets {BRAM_DATAB[9]}]
set_property MARK_DEBUG true [get_nets {BRAM_DATAB[11]}]
set_property MARK_DEBUG true [get_nets {BRAM_DATAB[1]}]
set_property MARK_DEBUG true [get_nets {BRAM_DATAB[2]}]
set_property MARK_DEBUG true [get_nets {BRAM_DATAB[3]}]
set_property MARK_DEBUG true [get_nets {BRAM_DATAB[4]}]
set_property MARK_DEBUG true [get_nets {BRAM_DATAB[5]}]
set_property MARK_DEBUG true [get_nets {BRAM_DATAB[10]}]
set_property MARK_DEBUG true [get_nets IIC_0_0_sda_o]
set_property MARK_DEBUG true [get_nets IIC_0_0_sda_t]
set_property MARK_DEBUG true [get_nets IIC_0_0_sda_i]
set_property MARK_DEBUG true [get_nets IIC_0_0_scl_i]
set_property MARK_DEBUG true [get_nets IIC_0_0_scl_t]
set_property MARK_DEBUG true [get_nets IIC_0_0_scl_o]

connect_debug_port u_ila_0/clk [get_nets [list u_ila_0_clkfbout_buf_clk_wiz_0]]

set_property MARK_DEBUG true [get_nets {data_IBUF[0]}]
set_property MARK_DEBUG true [get_nets {data_IBUF[1]}]
set_property MARK_DEBUG true [get_nets {data_IBUF[2]}]
set_property MARK_DEBUG true [get_nets {data_IBUF[3]}]
set_property MARK_DEBUG true [get_nets {data_IBUF[4]}]
set_property MARK_DEBUG true [get_nets {data_IBUF[5]}]
set_property MARK_DEBUG true [get_nets {data_IBUF[6]}]
set_property MARK_DEBUG true [get_nets {data_IBUF[7]}]
create_debug_core u_ila_0 ila
set_property ALL_PROBE_SAME_MU true [get_debug_cores u_ila_0]
set_property ALL_PROBE_SAME_MU_CNT 1 [get_debug_cores u_ila_0]
set_property C_ADV_TRIGGER false [get_debug_cores u_ila_0]
set_property C_DATA_DEPTH 8192 [get_debug_cores u_ila_0]
set_property C_EN_STRG_QUAL false [get_debug_cores u_ila_0]
set_property C_INPUT_PIPE_STAGES 0 [get_debug_cores u_ila_0]
set_property C_TRIGIN_EN false [get_debug_cores u_ila_0]
set_property C_TRIGOUT_EN false [get_debug_cores u_ila_0]
set_property port_width 1 [get_debug_ports u_ila_0/clk]
connect_debug_port u_ila_0/clk [get_nets [list clk_wiz_0_inst/inst/clkfbout_buf_clk_wiz_0]]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe0]
set_property port_width 12 [get_debug_ports u_ila_0/probe0]
connect_debug_port u_ila_0/probe0 [get_nets [list {BRAM_DATAA[0]} {BRAM_DATAA[1]} {BRAM_DATAA[2]} {BRAM_DATAA[3]} {BRAM_DATAA[4]} {BRAM_DATAA[5]} {BRAM_DATAA[6]} {BRAM_DATAA[7]} {BRAM_DATAA[8]} {BRAM_DATAA[9]} {BRAM_DATAA[10]} {BRAM_DATAA[11]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe1]
set_property port_width 8 [get_debug_ports u_ila_0/probe1]
connect_debug_port u_ila_0/probe1 [get_nets [list {data_IBUF[1]} {data_IBUF[2]} {data_IBUF[3]} {data_IBUF[4]} {data_IBUF[7]} {data_IBUF[0]} {data_IBUF[5]} {data_IBUF[6]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe2]
set_property port_width 19 [get_debug_ports u_ila_0/probe2]
connect_debug_port u_ila_0/probe2 [get_nets [list {BRAM_ADDRA[0]} {BRAM_ADDRA[1]} {BRAM_ADDRA[2]} {BRAM_ADDRA[3]} {BRAM_ADDRA[4]} {BRAM_ADDRA[5]} {BRAM_ADDRA[6]} {BRAM_ADDRA[7]} {BRAM_ADDRA[8]} {BRAM_ADDRA[9]} {BRAM_ADDRA[10]} {BRAM_ADDRA[11]} {BRAM_ADDRA[12]} {BRAM_ADDRA[13]} {BRAM_ADDRA[14]} {BRAM_ADDRA[15]} {BRAM_ADDRA[16]} {BRAM_ADDRA[17]} {BRAM_ADDRA[18]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe3]
set_property port_width 1 [get_debug_ports u_ila_0/probe3]
connect_debug_port u_ila_0/probe3 [get_nets [list BRAM_WENA]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe4]
set_property port_width 1 [get_debug_ports u_ila_0/probe4]
connect_debug_port u_ila_0/probe4 [get_nets [list CAM_HREF_IBUF]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe5]
set_property port_width 1 [get_debug_ports u_ila_0/probe5]
connect_debug_port u_ila_0/probe5 [get_nets [list CAM_PCLK_IBUF_BUFG]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe6]
set_property port_width 1 [get_debug_ports u_ila_0/probe6]
connect_debug_port u_ila_0/probe6 [get_nets [list CAM_VSYNC_IBUF]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe7]
set_property port_width 1 [get_debug_ports u_ila_0/probe7]
connect_debug_port u_ila_0/probe7 [get_nets [list CAM_XCLK_OBUF]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe8]
set_property port_width 1 [get_debug_ports u_ila_0/probe8]
connect_debug_port u_ila_0/probe8 [get_nets [list clk_25_175MHZ]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe9]
set_property port_width 1 [get_debug_ports u_ila_0/probe9]
connect_debug_port u_ila_0/probe9 [get_nets [list RST_IBUF]]
create_debug_core u_ila_1 ila
set_property ALL_PROBE_SAME_MU true [get_debug_cores u_ila_1]
set_property ALL_PROBE_SAME_MU_CNT 1 [get_debug_cores u_ila_1]
set_property C_ADV_TRIGGER false [get_debug_cores u_ila_1]
set_property C_DATA_DEPTH 8192 [get_debug_cores u_ila_1]
set_property C_EN_STRG_QUAL false [get_debug_cores u_ila_1]
set_property C_INPUT_PIPE_STAGES 0 [get_debug_cores u_ila_1]
set_property C_TRIGIN_EN false [get_debug_cores u_ila_1]
set_property C_TRIGOUT_EN false [get_debug_cores u_ila_1]
set_property port_width 1 [get_debug_ports u_ila_1/clk]
connect_debug_port u_ila_1/clk [get_nets [list clk_wiz_0_inst/inst/CLKOUT_25_175MHZ]]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_1/probe0]
set_property port_width 4 [get_debug_ports u_ila_1/probe0]
connect_debug_port u_ila_1/probe0 [get_nets [list {VGA_B_OBUF[0]} {VGA_B_OBUF[1]} {VGA_B_OBUF[2]} {VGA_B_OBUF[3]}]]
create_debug_port u_ila_1 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_1/probe1]
set_property port_width 12 [get_debug_ports u_ila_1/probe1]
connect_debug_port u_ila_1/probe1 [get_nets [list {BRAM_DATAB[0]} {BRAM_DATAB[1]} {BRAM_DATAB[2]} {BRAM_DATAB[3]} {BRAM_DATAB[4]} {BRAM_DATAB[5]} {BRAM_DATAB[6]} {BRAM_DATAB[7]} {BRAM_DATAB[8]} {BRAM_DATAB[9]} {BRAM_DATAB[10]} {BRAM_DATAB[11]}]]
create_debug_port u_ila_1 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_1/probe2]
set_property port_width 4 [get_debug_ports u_ila_1/probe2]
connect_debug_port u_ila_1/probe2 [get_nets [list {VGA_R_OBUF[0]} {VGA_R_OBUF[1]} {VGA_R_OBUF[2]} {VGA_R_OBUF[3]}]]
create_debug_port u_ila_1 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_1/probe3]
set_property port_width 19 [get_debug_ports u_ila_1/probe3]
connect_debug_port u_ila_1/probe3 [get_nets [list {BRAM_ADDRB[0]} {BRAM_ADDRB[1]} {BRAM_ADDRB[2]} {BRAM_ADDRB[3]} {BRAM_ADDRB[4]} {BRAM_ADDRB[5]} {BRAM_ADDRB[6]} {BRAM_ADDRB[7]} {BRAM_ADDRB[8]} {BRAM_ADDRB[9]} {BRAM_ADDRB[10]} {BRAM_ADDRB[11]} {BRAM_ADDRB[12]} {BRAM_ADDRB[13]} {BRAM_ADDRB[14]} {BRAM_ADDRB[15]} {BRAM_ADDRB[16]} {BRAM_ADDRB[17]} {BRAM_ADDRB[18]}]]
create_debug_port u_ila_1 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_1/probe4]
set_property port_width 4 [get_debug_ports u_ila_1/probe4]
connect_debug_port u_ila_1/probe4 [get_nets [list {VGA_G_OBUF[0]} {VGA_G_OBUF[1]} {VGA_G_OBUF[2]} {VGA_G_OBUF[3]}]]
create_debug_port u_ila_1 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_1/probe5]
set_property port_width 1 [get_debug_ports u_ila_1/probe5]
connect_debug_port u_ila_1/probe5 [get_nets [list VGA_HSYNC_OBUF]]
create_debug_port u_ila_1 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_1/probe6]
set_property port_width 1 [get_debug_ports u_ila_1/probe6]
connect_debug_port u_ila_1/probe6 [get_nets [list VGA_VSYNC_OBUF]]
create_debug_core u_ila_2 ila
set_property ALL_PROBE_SAME_MU true [get_debug_cores u_ila_2]
set_property ALL_PROBE_SAME_MU_CNT 1 [get_debug_cores u_ila_2]
set_property C_ADV_TRIGGER false [get_debug_cores u_ila_2]
set_property C_DATA_DEPTH 8192 [get_debug_cores u_ila_2]
set_property C_EN_STRG_QUAL false [get_debug_cores u_ila_2]
set_property C_INPUT_PIPE_STAGES 0 [get_debug_cores u_ila_2]
set_property C_TRIGIN_EN false [get_debug_cores u_ila_2]
set_property C_TRIGOUT_EN false [get_debug_cores u_ila_2]
set_property port_width 1 [get_debug_ports u_ila_2/clk]
connect_debug_port u_ila_2/clk [get_nets [list design_1_i/processing_system7_0/inst/FCLK_CLK0]]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_2/probe0]
set_property port_width 1 [get_debug_ports u_ila_2/probe0]
connect_debug_port u_ila_2/probe0 [get_nets [list IIC_0_0_scl_i]]
create_debug_port u_ila_2 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_2/probe1]
set_property port_width 1 [get_debug_ports u_ila_2/probe1]
connect_debug_port u_ila_2/probe1 [get_nets [list IIC_0_0_scl_o]]
create_debug_port u_ila_2 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_2/probe2]
set_property port_width 1 [get_debug_ports u_ila_2/probe2]
connect_debug_port u_ila_2/probe2 [get_nets [list IIC_0_0_scl_t]]
create_debug_port u_ila_2 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_2/probe3]
set_property port_width 1 [get_debug_ports u_ila_2/probe3]
connect_debug_port u_ila_2/probe3 [get_nets [list IIC_0_0_sda_i]]
create_debug_port u_ila_2 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_2/probe4]
set_property port_width 1 [get_debug_ports u_ila_2/probe4]
connect_debug_port u_ila_2/probe4 [get_nets [list IIC_0_0_sda_o]]
create_debug_port u_ila_2 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_2/probe5]
set_property port_width 1 [get_debug_ports u_ila_2/probe5]
connect_debug_port u_ila_2/probe5 [get_nets [list IIC_0_0_sda_t]]
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets u_ila_2_FCLK_CLK0]
