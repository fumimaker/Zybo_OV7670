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

create_debug_core u_ila_0 ila
set_property ALL_PROBE_SAME_MU true [get_debug_cores u_ila_0]
set_property ALL_PROBE_SAME_MU_CNT 1 [get_debug_cores u_ila_0]
set_property C_ADV_TRIGGER false [get_debug_cores u_ila_0]
set_property C_DATA_DEPTH 65536 [get_debug_cores u_ila_0]
set_property C_EN_STRG_QUAL false [get_debug_cores u_ila_0]
set_property C_INPUT_PIPE_STAGES 0 [get_debug_cores u_ila_0]
set_property C_TRIGIN_EN false [get_debug_cores u_ila_0]
set_property C_TRIGOUT_EN false [get_debug_cores u_ila_0]
set_property port_width 1 [get_debug_ports u_ila_0/clk]
connect_debug_port u_ila_0/clk [get_nets [list CAM_PCLK_IBUF_BUFG]]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe0]
set_property port_width 2 [get_debug_ports u_ila_0/probe0]
connect_debug_port u_ila_0/probe0 [get_nets [list {ov7670_if_inst/debug_wr_hold[0]} {ov7670_if_inst/debug_wr_hold[1]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe1]
set_property port_width 19 [get_debug_ports u_ila_0/probe1]
connect_debug_port u_ila_0/probe1 [get_nets [list {BRAM_ADDRA[0]} {BRAM_ADDRA[1]} {BRAM_ADDRA[2]} {BRAM_ADDRA[3]} {BRAM_ADDRA[4]} {BRAM_ADDRA[5]} {BRAM_ADDRA[6]} {BRAM_ADDRA[7]} {BRAM_ADDRA[8]} {BRAM_ADDRA[9]} {BRAM_ADDRA[10]} {BRAM_ADDRA[11]} {BRAM_ADDRA[12]} {BRAM_ADDRA[13]} {BRAM_ADDRA[14]} {BRAM_ADDRA[15]} {BRAM_ADDRA[16]} {BRAM_ADDRA[17]} {BRAM_ADDRA[18]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe2]
set_property port_width 8 [get_debug_ports u_ila_0/probe2]
connect_debug_port u_ila_0/probe2 [get_nets [list {data_IBUF[0]} {data_IBUF[1]} {data_IBUF[2]} {data_IBUF[3]} {data_IBUF[4]} {data_IBUF[5]} {data_IBUF[6]} {data_IBUF[7]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe3]
set_property port_width 16 [get_debug_ports u_ila_0/probe3]
connect_debug_port u_ila_0/probe3 [get_nets [list {ov7670_if_inst/debug_data_in[0]} {ov7670_if_inst/debug_data_in[1]} {ov7670_if_inst/debug_data_in[2]} {ov7670_if_inst/debug_data_in[3]} {ov7670_if_inst/debug_data_in[4]} {ov7670_if_inst/debug_data_in[5]} {ov7670_if_inst/debug_data_in[6]} {ov7670_if_inst/debug_data_in[7]} {ov7670_if_inst/debug_data_in[8]} {ov7670_if_inst/debug_data_in[9]} {ov7670_if_inst/debug_data_in[10]} {ov7670_if_inst/debug_data_in[11]} {ov7670_if_inst/debug_data_in[12]} {ov7670_if_inst/debug_data_in[13]} {ov7670_if_inst/debug_data_in[14]} {ov7670_if_inst/debug_data_in[15]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe4]
set_property port_width 12 [get_debug_ports u_ila_0/probe4]
connect_debug_port u_ila_0/probe4 [get_nets [list {ov7670_if_inst/debug_dataout[0]} {ov7670_if_inst/debug_dataout[1]} {ov7670_if_inst/debug_dataout[2]} {ov7670_if_inst/debug_dataout[3]} {ov7670_if_inst/debug_dataout[4]} {ov7670_if_inst/debug_dataout[5]} {ov7670_if_inst/debug_dataout[6]} {ov7670_if_inst/debug_dataout[7]} {ov7670_if_inst/debug_dataout[8]} {ov7670_if_inst/debug_dataout[9]} {ov7670_if_inst/debug_dataout[10]} {ov7670_if_inst/debug_dataout[11]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe5]
set_property port_width 12 [get_debug_ports u_ila_0/probe5]
connect_debug_port u_ila_0/probe5 [get_nets [list {BRAM_DATAA[0]} {BRAM_DATAA[1]} {BRAM_DATAA[2]} {BRAM_DATAA[3]} {BRAM_DATAA[4]} {BRAM_DATAA[5]} {BRAM_DATAA[6]} {BRAM_DATAA[7]} {BRAM_DATAA[8]} {BRAM_DATAA[9]} {BRAM_DATAA[10]} {BRAM_DATAA[11]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe6]
set_property port_width 19 [get_debug_ports u_ila_0/probe6]
connect_debug_port u_ila_0/probe6 [get_nets [list {ov7670_if_inst/debug_address_next[0]} {ov7670_if_inst/debug_address_next[1]} {ov7670_if_inst/debug_address_next[2]} {ov7670_if_inst/debug_address_next[3]} {ov7670_if_inst/debug_address_next[4]} {ov7670_if_inst/debug_address_next[5]} {ov7670_if_inst/debug_address_next[6]} {ov7670_if_inst/debug_address_next[7]} {ov7670_if_inst/debug_address_next[8]} {ov7670_if_inst/debug_address_next[9]} {ov7670_if_inst/debug_address_next[10]} {ov7670_if_inst/debug_address_next[11]} {ov7670_if_inst/debug_address_next[12]} {ov7670_if_inst/debug_address_next[13]} {ov7670_if_inst/debug_address_next[14]} {ov7670_if_inst/debug_address_next[15]} {ov7670_if_inst/debug_address_next[16]} {ov7670_if_inst/debug_address_next[17]} {ov7670_if_inst/debug_address_next[18]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe7]
set_property port_width 1 [get_debug_ports u_ila_0/probe7]
connect_debug_port u_ila_0/probe7 [get_nets [list BRAM_WENA]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe8]
set_property port_width 1 [get_debug_ports u_ila_0/probe8]
connect_debug_port u_ila_0/probe8 [get_nets [list CAM_VSYNC_IBUF]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe9]
set_property port_width 1 [get_debug_ports u_ila_0/probe9]
connect_debug_port u_ila_0/probe9 [get_nets [list CAM_HREF_IBUF]]
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets CAM_PCLK_IBUF_BUFG]
