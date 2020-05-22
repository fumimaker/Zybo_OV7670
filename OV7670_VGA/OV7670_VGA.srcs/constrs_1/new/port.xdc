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

