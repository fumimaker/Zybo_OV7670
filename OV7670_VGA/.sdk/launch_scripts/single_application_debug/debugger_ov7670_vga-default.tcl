connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~"APU*"}
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Digilent Zybo Z7 210351A6C9E3A" && level==0} -index 1
fpga -file C:/Github/Zybo_OV7670/OV7670_VGA/OV7670_VGA/_ide/bitstream/design_1_wrapper.bit
targets -set -nocase -filter {name =~"APU*"}
loadhw -hw C:/Github/Zybo_OV7670/OV7670_VGA/design_1_wrapper/export/design_1_wrapper/hw/design_1_wrapper.xsa -mem-ranges [list {0x40000000 0xbfffffff}]
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
source C:/Github/Zybo_OV7670/OV7670_VGA/OV7670_VGA/_ide/psinit/ps7_init.tcl
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "*A9*#0"}
dow C:/Github/Zybo_OV7670/OV7670_VGA/OV7670_VGA/Debug/OV7670_VGA.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "*A9*#0"}
con
