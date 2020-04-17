## Zybo constraints file
## chapter: 2
## project: blink

#Clock signal
set_property PACKAGE_PIN K17 [get_ports CLK]
set_property IOSTANDARD LVCMOS33 [get_ports CLK]
create_clock -period 8.000 -name sys_clk_pin -waveform {0.000 4.000} -add [get_ports CLK]

#set_property -dict { PACKAGE_PIN K17 IOSTANDARD LVCMOS33 } [get_ports { CLK }]; #IO_L12P_T1_MRCC_35 Sch=sysclk
#create_clock -add -name sys_clk_pin -period 8.00 -waveform {0 4} [get_ports { CLK }];

#Reset
set_property PACKAGE_PIN Y16 [get_ports RST]
set_property IOSTANDARD LVCMOS33 [get_ports RST]

#LEDs
set_property PACKAGE_PIN M14 [get_ports {LED[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {LED[0]}]

set_property PACKAGE_PIN M15 [get_ports {LED[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {LED[1]}]

set_property PACKAGE_PIN G14 [get_ports {LED[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {LED[2]}]

set_property PACKAGE_PIN D18 [get_ports {LED[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {LED[3]}]

##RGB LED 5 (Zybo Z7-20 only)
set_property -dict { PACKAGE_PIN Y11   IOSTANDARD LVCMOS33 } [get_ports { led5[0] }]; #IO_L18N_T2_13 Sch=led5_r
set_property -dict { PACKAGE_PIN T5    IOSTANDARD LVCMOS33 } [get_ports { led5[1] }]; #IO_L19P_T3_13 Sch=led5_g
set_property -dict { PACKAGE_PIN Y12   IOSTANDARD LVCMOS33 } [get_ports { led5[2] }]; #IO_L20P_T3_13 Sch=led5_b

##RGB LED 6
set_property -dict { PACKAGE_PIN V16   IOSTANDARD LVCMOS33 } [get_ports { led6[0] }]; #IO_L18P_T2_34 Sch=led6_r
set_property -dict { PACKAGE_PIN F17   IOSTANDARD LVCMOS33 } [get_ports { led6[1] }]; #IO_L6N_T0_VREF_35 Sch=led6_g
set_property -dict { PACKAGE_PIN M17   IOSTANDARD LVCMOS33 } [get_ports { led6[2] }]; #IO_L8P_T1_AD10P_35 Sch=led6_b

##Buttons
#set_property PACKAGE_PIN R18 [get_ports {BTN[0]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {BTN[0]}]

#set_property PACKAGE_PIN P16 [get_ports {BTN[1]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {BTN[1]}]

#set_property PACKAGE_PIN V16 [get_ports {BTN[2]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {BTN[2]}]

##VGAs
#set_property PACKAGE_PIN L20 [get_ports {VGA_R[0]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {VGA_R[0]}]

#set_property PACKAGE_PIN J20 [get_ports {VGA_R[1]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {VGA_R[1]}]

#set_property PACKAGE_PIN G20 [get_ports {VGA_R[2]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {VGA_R[2]}]

#set_property PACKAGE_PIN F19 [get_ports {VGA_R[3]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {VGA_R[3]}]

#set_property PACKAGE_PIN L19 [get_ports {VGA_G[0]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {VGA_G[0]}]

#set_property PACKAGE_PIN J19 [get_ports {VGA_G[1]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {VGA_G[1]}]

#set_property PACKAGE_PIN H20 [get_ports {VGA_G[2]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {VGA_G[2]}]

#set_property PACKAGE_PIN F20 [get_ports {VGA_G[3]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {VGA_G[3]}]

#set_property PACKAGE_PIN M20 [get_ports {VGA_B[0]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {VGA_B[0]}]

#set_property PACKAGE_PIN K19 [get_ports {VGA_B[1]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {VGA_B[1]}]

#set_property PACKAGE_PIN J18 [get_ports {VGA_B[2]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {VGA_B[2]}]

#set_property PACKAGE_PIN G19 [get_ports {VGA_B[3]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {VGA_B[3]}]

#set_property PACKAGE_PIN P19 [get_ports {VGA_HS}]
#set_property IOSTANDARD LVCMOS33 [get_ports {VGA_HS}]

#set_property PACKAGE_PIN R19 [get_ports {VGA_VS}]
#set_property IOSTANDARD LVCMOS33 [get_ports {VGA_VS}]

##Switches
#set_property PACKAGE_PIN G15 [get_ports {SW[0]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {SW[0]}]

#set_property PACKAGE_PIN P15 [get_ports {SW[1]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {SW[1]}]

#set_property PACKAGE_PIN W13 [get_ports {SW[2]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {SW[2]}]

#set_property PACKAGE_PIN T16 [get_ports {SW[3]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {SW[3]}]

