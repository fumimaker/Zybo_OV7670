vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xilinx_vip
vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/axi_infrastructure_v1_1_0
vlib modelsim_lib/msim/axi_vip_v1_1_6
vlib modelsim_lib/msim/processing_system7_vip_v1_0_8
vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/lib_cdc_v1_0_2
vlib modelsim_lib/msim/proc_sys_reset_v5_0_13
vlib modelsim_lib/msim/blk_mem_gen_v8_4_4

vmap xilinx_vip modelsim_lib/msim/xilinx_vip
vmap xpm modelsim_lib/msim/xpm
vmap axi_infrastructure_v1_1_0 modelsim_lib/msim/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_6 modelsim_lib/msim/axi_vip_v1_1_6
vmap processing_system7_vip_v1_0_8 modelsim_lib/msim/processing_system7_vip_v1_0_8
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap lib_cdc_v1_0_2 modelsim_lib/msim/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 modelsim_lib/msim/proc_sys_reset_v5_0_13
vmap blk_mem_gen_v8_4_4 modelsim_lib/msim/blk_mem_gen_v8_4_4

vlog -work xilinx_vip -64 -incr -sv -L axi_vip_v1_1_6 -L processing_system7_vip_v1_0_8 -L xilinx_vip "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2019.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/Xilinx/Vivado/2019.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/Xilinx/Vivado/2019.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/Xilinx/Vivado/2019.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/Xilinx/Vivado/2019.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/Xilinx/Vivado/2019.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/Xilinx/Vivado/2019.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/Xilinx/Vivado/2019.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/Xilinx/Vivado/2019.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm -64 -incr -sv -L axi_vip_v1_1_6 -L processing_system7_vip_v1_0_8 -L xilinx_vip "+incdir+../../../../OV7670_VGA.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../OV7670_VGA.srcs/sources_1/bd/design_1/ipshared/2d50/hdl" "+incdir+../../../../OV7670_VGA.srcs/sources_1/bd/design_1/ipshared/4fba" "+incdir+../../../../OV7670_VGA.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_1" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2019.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2019.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"C:/Xilinx/Vivado/2019.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0 -64 -incr "+incdir+../../../../OV7670_VGA.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../OV7670_VGA.srcs/sources_1/bd/design_1/ipshared/2d50/hdl" "+incdir+../../../../OV7670_VGA.srcs/sources_1/bd/design_1/ipshared/4fba" "+incdir+../../../../OV7670_VGA.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_1" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../OV7670_VGA.srcs/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_6 -64 -incr -sv -L axi_vip_v1_1_6 -L processing_system7_vip_v1_0_8 -L xilinx_vip "+incdir+../../../../OV7670_VGA.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../OV7670_VGA.srcs/sources_1/bd/design_1/ipshared/2d50/hdl" "+incdir+../../../../OV7670_VGA.srcs/sources_1/bd/design_1/ipshared/4fba" "+incdir+../../../../OV7670_VGA.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_1" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../OV7670_VGA.srcs/sources_1/bd/design_1/ipshared/dc12/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_8 -64 -incr -sv -L axi_vip_v1_1_6 -L processing_system7_vip_v1_0_8 -L xilinx_vip "+incdir+../../../../OV7670_VGA.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../OV7670_VGA.srcs/sources_1/bd/design_1/ipshared/2d50/hdl" "+incdir+../../../../OV7670_VGA.srcs/sources_1/bd/design_1/ipshared/4fba" "+incdir+../../../../OV7670_VGA.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_1" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../OV7670_VGA.srcs/sources_1/bd/design_1/ipshared/2d50/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../OV7670_VGA.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../OV7670_VGA.srcs/sources_1/bd/design_1/ipshared/2d50/hdl" "+incdir+../../../../OV7670_VGA.srcs/sources_1/bd/design_1/ipshared/4fba" "+incdir+../../../../OV7670_VGA.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_1" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_processing_system7_0_1/sim/design_1_processing_system7_0_1.v" \
"../../../bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0_clk_wiz.v" \
"../../../bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0.v" \

vcom -work lib_cdc_v1_0_2 -64 -93 \
"../../../../OV7670_VGA.srcs/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -64 -93 \
"../../../../OV7670_VGA.srcs/sources_1/bd/design_1/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_rst_ps7_0_50M_0/sim/design_1_rst_ps7_0_50M_0.vhd" \

vlog -work blk_mem_gen_v8_4_4 -64 -incr "+incdir+../../../../OV7670_VGA.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../OV7670_VGA.srcs/sources_1/bd/design_1/ipshared/2d50/hdl" "+incdir+../../../../OV7670_VGA.srcs/sources_1/bd/design_1/ipshared/4fba" "+incdir+../../../../OV7670_VGA.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_1" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../OV7670_VGA.srcs/sources_1/bd/design_1/ipshared/2985/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../OV7670_VGA.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../OV7670_VGA.srcs/sources_1/bd/design_1/ipshared/2d50/hdl" "+incdir+../../../../OV7670_VGA.srcs/sources_1/bd/design_1/ipshared/4fba" "+incdir+../../../../OV7670_VGA.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_1" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_blk_mem_gen_0_0/sim/design_1_blk_mem_gen_0_0.v" \
"../../../bd/design_1/sim/design_1.v" \

vlog -work xil_defaultlib \
"glbl.v"

