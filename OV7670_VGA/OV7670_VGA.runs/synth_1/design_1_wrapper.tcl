# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
set_param chipscope.maxJobs 2
set_msg_config -id {Synth 8-256} -limit 10000
set_msg_config -id {Synth 8-638} -limit 10000
create_project -in_memory -part xc7z020clg400-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir C:/Users/ivr/Documents/GitHub/Zybo_OV7670/OV7670_VGA/OV7670_VGA.cache/wt [current_project]
set_property parent.project_path C:/Users/ivr/Documents/GitHub/Zybo_OV7670/OV7670_VGA/OV7670_VGA.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_output_repo c:/Users/ivr/Documents/GitHub/Zybo_OV7670/OV7670_VGA/OV7670_VGA.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
set_property include_dirs C:/Users/ivr/Documents/GitHub/Zybo_OV7670/OV7670_VGA/OV7670_VGA.srcs/sources_1/new [current_fileset]
read_verilog -library xil_defaultlib {
  C:/Users/ivr/Documents/GitHub/Zybo_OV7670/OV7670_VGA/OV7670_VGA.srcs/sources_1/new/ov7670_IF.v
  C:/Users/ivr/Documents/GitHub/Zybo_OV7670/OV7670_VGA/OV7670_VGA.srcs/sources_1/new/syncgen.v
  C:/Users/ivr/Documents/GitHub/Zybo_OV7670/OV7670_VGA/OV7670_VGA.srcs/sources_1/new/vga_out.v
  C:/Users/ivr/Documents/GitHub/Zybo_OV7670/OV7670_VGA/OV7670_VGA.srcs/sources_1/bd/design_1/hdl/design_1_wrapper.v
}
add_files C:/Users/ivr/Documents/GitHub/Zybo_OV7670/OV7670_VGA/OV7670_VGA.srcs/sources_1/bd/design_1/design_1.bd
set_property used_in_implementation false [get_files -all c:/Users/ivr/Documents/GitHub/Zybo_OV7670/OV7670_VGA/OV7670_VGA.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_1/design_1_processing_system7_0_1.xdc]
set_property used_in_implementation false [get_files -all C:/Users/ivr/Documents/GitHub/Zybo_OV7670/OV7670_VGA/OV7670_VGA.srcs/sources_1/bd/design_1/design_1_ooc.xdc]

read_ip -quiet C:/Users/ivr/Documents/GitHub/Zybo_OV7670/OV7670_VGA/OV7670_VGA.srcs/sources_1/ip/blk_mem_gen_0/blk_mem_gen_0.xci
set_property used_in_implementation false [get_files -all c:/Users/ivr/Documents/GitHub/Zybo_OV7670/OV7670_VGA/OV7670_VGA.srcs/sources_1/ip/blk_mem_gen_0/blk_mem_gen_0_ooc.xdc]

read_ip -quiet C:/Users/ivr/Documents/GitHub/Zybo_OV7670/OV7670_VGA/OV7670_VGA.srcs/sources_1/ip/clk_wiz_0_1/clk_wiz_0.xci
set_property used_in_implementation false [get_files -all c:/Users/ivr/Documents/GitHub/Zybo_OV7670/OV7670_VGA/OV7670_VGA.srcs/sources_1/ip/clk_wiz_0_1/clk_wiz_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/ivr/Documents/GitHub/Zybo_OV7670/OV7670_VGA/OV7670_VGA.srcs/sources_1/ip/clk_wiz_0_1/clk_wiz_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/ivr/Documents/GitHub/Zybo_OV7670/OV7670_VGA/OV7670_VGA.srcs/sources_1/ip/clk_wiz_0_1/clk_wiz_0_ooc.xdc]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc C:/Users/ivr/Documents/GitHub/Zybo_OV7670/OV7670_VGA/OV7670_VGA.srcs/constrs_1/new/port.xdc
set_property used_in_implementation false [get_files C:/Users/ivr/Documents/GitHub/Zybo_OV7670/OV7670_VGA/OV7670_VGA.srcs/constrs_1/new/port.xdc]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
set_param ips.enableIPCacheLiteLoad 1
close [open __synthesis_is_running__ w]

synth_design -top design_1_wrapper -part xc7z020clg400-1


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef design_1_wrapper.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file design_1_wrapper_utilization_synth.rpt -pb design_1_wrapper_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]
