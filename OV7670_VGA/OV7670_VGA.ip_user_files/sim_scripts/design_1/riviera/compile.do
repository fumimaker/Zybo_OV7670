vlib work
vlib riviera

vlib riviera/xilinx_vip
vlib riviera/xpm
vlib riviera/axi_infrastructure_v1_1_0
vlib riviera/axi_vip_v1_1_6
vlib riviera/processing_system7_vip_v1_0_8
vlib riviera/xil_defaultlib
vlib riviera/lib_cdc_v1_0_2
vlib riviera/proc_sys_reset_v5_0_13
vlib riviera/blk_mem_gen_v8_4_4

vmap xilinx_vip riviera/xilinx_vip
vmap xpm riviera/xpm
vmap axi_infrastructure_v1_1_0 riviera/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_6 riviera/axi_vip_v1_1_6
vmap processing_system7_vip_v1_0_8 riviera/processing_system7_vip_v1_0_8
vmap xil_defaultlib riviera/xil_defaultlib
vmap lib_cdc_v1_0_2 riviera/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 riviera/proc_sys_reset_v5_0_13
vmap blk_mem_gen_v8_4_4 riviera/blk_mem_gen_v8_4_4

vlog -work xilinx_vip  -sv2k12 "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2019.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/Xilinx/Vivado/2019.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/Xilinx/Vivado/2019.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/Xilinx/Vivado/2019.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/Xilinx/Vivado/2019.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/Xilinx/Vivado/2019.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/Xilinx/Vivado/2019.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/Xilinx/Vivado/2019.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/Xilinx/Vivado/2019.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -sv2k12 "+incdir+../../../../OV7670_VGA.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../OV7670_VGA.srcs/sources_1/bd/design_1/ipshared/2d50/hdl" "+incdir+../../../../OV7670_VGA.srcs/sources_1/bd/design_1/ipshared/4fba" "+incdir+../../../../OV7670_VGA.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_1" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2019.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2019.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"C:/Xilinx/Vivado/2019.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../OV7670_VGA.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../OV7670_VGA.srcs/sources_1/bd/design_1/ipshared/2d50/hdl" "+incdir+../../../../OV7670_VGA.srcs/sources_1/bd/design_1/ipshared/4fba" "+incdir+../../../../OV7670_VGA.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_1" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../OV7670_VGA.srcs/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_6  -sv2k12 "+incdir+../../../../OV7670_VGA.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../OV7670_VGA.srcs/sources_1/bd/design_1/ipshared/2d50/hdl" "+incdir+../../../../OV7670_VGA.srcs/sources_1/bd/design_1/ipshared/4fba" "+incdir+../../../../OV7670_VGA.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_1" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../OV7670_VGA.srcs/sources_1/bd/design_1/ipshared/dc12/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_8  -sv2k12 "+incdir+../../../../OV7670_VGA.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../OV7670_VGA.srcs/sources_1/bd/design_1/ipshared/2d50/hdl" "+incdir+../../../../OV7670_VGA.srcs/sources_1/bd/design_1/ipshared/4fba" "+incdir+../../../../OV7670_VGA.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_1" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../OV7670_VGA.srcs/sources_1/bd/design_1/ipshared/2d50/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../OV7670_VGA.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../OV7670_VGA.srcs/sources_1/bd/design_1/ipshared/2d50/hdl" "+incdir+../../../../OV7670_VGA.srcs/sources_1/bd/design_1/ipshared/4fba" "+incdir+../../../../OV7670_VGA.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_1" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_processing_system7_0_1/sim/design_1_processing_system7_0_1.v" \
"../../../bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0_clk_wiz.v" \
"../../../bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0.v" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../OV7670_VGA.srcs/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -93 \
"../../../../OV7670_VGA.srcs/sources_1/bd/design_1/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_rst_ps7_0_50M_0/sim/design_1_rst_ps7_0_50M_0.vhd" \

vlog -work blk_mem_gen_v8_4_4  -v2k5 "+incdir+../../../../OV7670_VGA.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../OV7670_VGA.srcs/sources_1/bd/design_1/ipshared/2d50/hdl" "+incdir+../../../../OV7670_VGA.srcs/sources_1/bd/design_1/ipshared/4fba" "+incdir+../../../../OV7670_VGA.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_1" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../OV7670_VGA.srcs/sources_1/bd/design_1/ipshared/2985/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../OV7670_VGA.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../OV7670_VGA.srcs/sources_1/bd/design_1/ipshared/2d50/hdl" "+incdir+../../../../OV7670_VGA.srcs/sources_1/bd/design_1/ipshared/4fba" "+incdir+../../../../OV7670_VGA.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_1" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_blk_mem_gen_0_0/sim/design_1_blk_mem_gen_0_0.v" \
"../../../bd/design_1/sim/design_1.v" \

vlog -work xil_defaultlib \
"glbl.v"

