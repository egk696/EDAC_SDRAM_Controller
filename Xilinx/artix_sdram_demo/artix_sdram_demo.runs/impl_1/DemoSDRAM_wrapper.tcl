proc start_step { step } {
  set stopFile ".stop.rst"
  if {[file isfile .stop.rst]} {
    puts ""
    puts "*** Halting run - EA reset detected ***"
    puts ""
    puts ""
    return -code error
  }
  set beginFile ".$step.begin.rst"
  set platform "$::tcl_platform(platform)"
  set user "$::tcl_platform(user)"
  set pid [pid]
  set host ""
  if { [string equal $platform unix] } {
    if { [info exist ::env(HOSTNAME)] } {
      set host $::env(HOSTNAME)
    }
  } else {
    if { [info exist ::env(COMPUTERNAME)] } {
      set host $::env(COMPUTERNAME)
    }
  }
  set ch [open $beginFile w]
  puts $ch "<?xml version=\"1.0\"?>"
  puts $ch "<ProcessHandle Version=\"1\" Minor=\"0\">"
  puts $ch "    <Process Command=\".planAhead.\" Owner=\"$user\" Host=\"$host\" Pid=\"$pid\">"
  puts $ch "    </Process>"
  puts $ch "</ProcessHandle>"
  close $ch
}

proc end_step { step } {
  set endFile ".$step.end.rst"
  set ch [open $endFile w]
  close $ch
}

proc step_failed { step } {
  set endFile ".$step.error.rst"
  set ch [open $endFile w]
  close $ch
}

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000

start_step init_design
set ACTIVE_STEP init_design
set rc [catch {
  create_msg_db init_design.pb
  set_property design_mode GateLvl [current_fileset]
  set_param project.singleFileAddWarning.threshold 0
  set_property webtalk.parent_dir C:/Users/egk69/Documents/Development/EDAC_SDRAM_Controller/Xilinx/artix_sdram_demo/artix_sdram_demo.cache/wt [current_project]
  set_property parent.project_path C:/Users/egk69/Documents/Development/EDAC_SDRAM_Controller/Xilinx/artix_sdram_demo/artix_sdram_demo.xpr [current_project]
  set_property ip_repo_paths C:/Users/egk69/Documents/Development/EDAC_SDRAM_Controller/controller_src [current_project]
  set_property ip_output_repo C:/Users/egk69/Documents/Development/EDAC_SDRAM_Controller/Xilinx/artix_sdram_demo/artix_sdram_demo.cache/ip [current_project]
  set_property ip_cache_permissions {read write} [current_project]
  set_property XPM_LIBRARIES {XPM_CDC XPM_FIFO XPM_MEMORY} [current_project]
  add_files -quiet C:/Users/egk69/Documents/Development/EDAC_SDRAM_Controller/Xilinx/artix_sdram_demo/artix_sdram_demo.runs/synth_1/DemoSDRAM_wrapper.dcp
  add_files -quiet c:/Users/egk69/Documents/Development/EDAC_SDRAM_Controller/Xilinx/artix_sdram_demo/artix_sdram_demo.srcs/sources_1/bd/DemoSDRAM/ip/DemoSDRAM_microblaze_0_0/DemoSDRAM_microblaze_0_0.dcp
  set_property netlist_only true [get_files c:/Users/egk69/Documents/Development/EDAC_SDRAM_Controller/Xilinx/artix_sdram_demo/artix_sdram_demo.srcs/sources_1/bd/DemoSDRAM/ip/DemoSDRAM_microblaze_0_0/DemoSDRAM_microblaze_0_0.dcp]
  add_files -quiet c:/Users/egk69/Documents/Development/EDAC_SDRAM_Controller/Xilinx/artix_sdram_demo/artix_sdram_demo.srcs/sources_1/bd/DemoSDRAM/ip/DemoSDRAM_dlmb_v10_0/DemoSDRAM_dlmb_v10_0.dcp
  set_property netlist_only true [get_files c:/Users/egk69/Documents/Development/EDAC_SDRAM_Controller/Xilinx/artix_sdram_demo/artix_sdram_demo.srcs/sources_1/bd/DemoSDRAM/ip/DemoSDRAM_dlmb_v10_0/DemoSDRAM_dlmb_v10_0.dcp]
  add_files -quiet c:/Users/egk69/Documents/Development/EDAC_SDRAM_Controller/Xilinx/artix_sdram_demo/artix_sdram_demo.srcs/sources_1/bd/DemoSDRAM/ip/DemoSDRAM_ilmb_v10_0/DemoSDRAM_ilmb_v10_0.dcp
  set_property netlist_only true [get_files c:/Users/egk69/Documents/Development/EDAC_SDRAM_Controller/Xilinx/artix_sdram_demo/artix_sdram_demo.srcs/sources_1/bd/DemoSDRAM/ip/DemoSDRAM_ilmb_v10_0/DemoSDRAM_ilmb_v10_0.dcp]
  add_files -quiet C:/Users/egk69/Documents/Development/EDAC_SDRAM_Controller/Xilinx/artix_sdram_demo/artix_sdram_demo.srcs/sources_1/bd/DemoSDRAM/ip/DemoSDRAM_dlmb_bram_if_cntlr_0/DemoSDRAM_dlmb_bram_if_cntlr_0.dcp
  set_property netlist_only true [get_files C:/Users/egk69/Documents/Development/EDAC_SDRAM_Controller/Xilinx/artix_sdram_demo/artix_sdram_demo.srcs/sources_1/bd/DemoSDRAM/ip/DemoSDRAM_dlmb_bram_if_cntlr_0/DemoSDRAM_dlmb_bram_if_cntlr_0.dcp]
  add_files -quiet c:/Users/egk69/Documents/Development/EDAC_SDRAM_Controller/Xilinx/artix_sdram_demo/artix_sdram_demo.srcs/sources_1/bd/DemoSDRAM/ip/DemoSDRAM_ilmb_bram_if_cntlr_0/DemoSDRAM_ilmb_bram_if_cntlr_0.dcp
  set_property netlist_only true [get_files c:/Users/egk69/Documents/Development/EDAC_SDRAM_Controller/Xilinx/artix_sdram_demo/artix_sdram_demo.srcs/sources_1/bd/DemoSDRAM/ip/DemoSDRAM_ilmb_bram_if_cntlr_0/DemoSDRAM_ilmb_bram_if_cntlr_0.dcp]
  add_files -quiet c:/Users/egk69/Documents/Development/EDAC_SDRAM_Controller/Xilinx/artix_sdram_demo/artix_sdram_demo.srcs/sources_1/bd/DemoSDRAM/ip/DemoSDRAM_lmb_bram_0/DemoSDRAM_lmb_bram_0.dcp
  set_property netlist_only true [get_files c:/Users/egk69/Documents/Development/EDAC_SDRAM_Controller/Xilinx/artix_sdram_demo/artix_sdram_demo.srcs/sources_1/bd/DemoSDRAM/ip/DemoSDRAM_lmb_bram_0/DemoSDRAM_lmb_bram_0.dcp]
  add_files -quiet C:/Users/egk69/Documents/Development/EDAC_SDRAM_Controller/Xilinx/artix_sdram_demo/artix_sdram_demo.srcs/sources_1/bd/DemoSDRAM/ip/DemoSDRAM_mdm_1_0/DemoSDRAM_mdm_1_0.dcp
  set_property netlist_only true [get_files C:/Users/egk69/Documents/Development/EDAC_SDRAM_Controller/Xilinx/artix_sdram_demo/artix_sdram_demo.srcs/sources_1/bd/DemoSDRAM/ip/DemoSDRAM_mdm_1_0/DemoSDRAM_mdm_1_0.dcp]
  add_files -quiet c:/Users/egk69/Documents/Development/EDAC_SDRAM_Controller/Xilinx/artix_sdram_demo/artix_sdram_demo.srcs/sources_1/bd/DemoSDRAM/ip/DemoSDRAM_clk_wiz_1_0/DemoSDRAM_clk_wiz_1_0.dcp
  set_property netlist_only true [get_files c:/Users/egk69/Documents/Development/EDAC_SDRAM_Controller/Xilinx/artix_sdram_demo/artix_sdram_demo.srcs/sources_1/bd/DemoSDRAM/ip/DemoSDRAM_clk_wiz_1_0/DemoSDRAM_clk_wiz_1_0.dcp]
  add_files -quiet c:/Users/egk69/Documents/Development/EDAC_SDRAM_Controller/Xilinx/artix_sdram_demo/artix_sdram_demo.srcs/sources_1/bd/DemoSDRAM/ip/DemoSDRAM_rst_clk_wiz_1_100M_0/DemoSDRAM_rst_clk_wiz_1_100M_0.dcp
  set_property netlist_only true [get_files c:/Users/egk69/Documents/Development/EDAC_SDRAM_Controller/Xilinx/artix_sdram_demo/artix_sdram_demo.srcs/sources_1/bd/DemoSDRAM/ip/DemoSDRAM_rst_clk_wiz_1_100M_0/DemoSDRAM_rst_clk_wiz_1_100M_0.dcp]
  add_files -quiet c:/Users/egk69/Documents/Development/EDAC_SDRAM_Controller/Xilinx/artix_sdram_demo/artix_sdram_demo.srcs/sources_1/bd/DemoSDRAM/ip/DemoSDRAM_axi_amm_bridge_0_0/DemoSDRAM_axi_amm_bridge_0_0.dcp
  set_property netlist_only true [get_files c:/Users/egk69/Documents/Development/EDAC_SDRAM_Controller/Xilinx/artix_sdram_demo/artix_sdram_demo.srcs/sources_1/bd/DemoSDRAM/ip/DemoSDRAM_axi_amm_bridge_0_0/DemoSDRAM_axi_amm_bridge_0_0.dcp]
  add_files -quiet C:/Users/egk69/Documents/Development/EDAC_SDRAM_Controller/Xilinx/artix_sdram_demo/artix_sdram_demo.srcs/sources_1/bd/DemoSDRAM/ip/DemoSDRAM_sdram_ctrl_tmr_avalon_0_0/DemoSDRAM_sdram_ctrl_tmr_avalon_0_0.dcp
  set_property netlist_only true [get_files C:/Users/egk69/Documents/Development/EDAC_SDRAM_Controller/Xilinx/artix_sdram_demo/artix_sdram_demo.srcs/sources_1/bd/DemoSDRAM/ip/DemoSDRAM_sdram_ctrl_tmr_avalon_0_0/DemoSDRAM_sdram_ctrl_tmr_avalon_0_0.dcp]
  add_files -quiet c:/Users/egk69/Documents/Development/EDAC_SDRAM_Controller/Xilinx/artix_sdram_demo/artix_sdram_demo.srcs/sources_1/bd/DemoSDRAM/ip/DemoSDRAM_xlconstant_0_2/DemoSDRAM_xlconstant_0_2.dcp
  set_property netlist_only true [get_files c:/Users/egk69/Documents/Development/EDAC_SDRAM_Controller/Xilinx/artix_sdram_demo/artix_sdram_demo.srcs/sources_1/bd/DemoSDRAM/ip/DemoSDRAM_xlconstant_0_2/DemoSDRAM_xlconstant_0_2.dcp]
  add_files -quiet C:/Users/egk69/Documents/Development/EDAC_SDRAM_Controller/Xilinx/artix_sdram_demo/artix_sdram_demo.srcs/sources_1/bd/DemoSDRAM/ip/DemoSDRAM_xbar_0/DemoSDRAM_xbar_0.dcp
  set_property netlist_only true [get_files C:/Users/egk69/Documents/Development/EDAC_SDRAM_Controller/Xilinx/artix_sdram_demo/artix_sdram_demo.srcs/sources_1/bd/DemoSDRAM/ip/DemoSDRAM_xbar_0/DemoSDRAM_xbar_0.dcp]
  add_files -quiet c:/Users/egk69/Documents/Development/EDAC_SDRAM_Controller/Xilinx/artix_sdram_demo/artix_sdram_demo.srcs/sources_1/bd/DemoSDRAM/ip/DemoSDRAM_ila_0_0/DemoSDRAM_ila_0_0.dcp
  set_property netlist_only true [get_files c:/Users/egk69/Documents/Development/EDAC_SDRAM_Controller/Xilinx/artix_sdram_demo/artix_sdram_demo.srcs/sources_1/bd/DemoSDRAM/ip/DemoSDRAM_ila_0_0/DemoSDRAM_ila_0_0.dcp]
  add_files -quiet C:/Users/egk69/Documents/Development/EDAC_SDRAM_Controller/Xilinx/artix_sdram_demo/artix_sdram_demo.srcs/sources_1/bd/DemoSDRAM/ip/DemoSDRAM_axi_traffic_gen_0_0/DemoSDRAM_axi_traffic_gen_0_0.dcp
  set_property netlist_only true [get_files C:/Users/egk69/Documents/Development/EDAC_SDRAM_Controller/Xilinx/artix_sdram_demo/artix_sdram_demo.srcs/sources_1/bd/DemoSDRAM/ip/DemoSDRAM_axi_traffic_gen_0_0/DemoSDRAM_axi_traffic_gen_0_0.dcp]
  add_files -quiet C:/Users/egk69/Documents/Development/EDAC_SDRAM_Controller/Xilinx/artix_sdram_demo/artix_sdram_demo.srcs/sources_1/bd/DemoSDRAM/ip/DemoSDRAM_axi_protocol_converter_0_0/DemoSDRAM_axi_protocol_converter_0_0.dcp
  set_property netlist_only true [get_files C:/Users/egk69/Documents/Development/EDAC_SDRAM_Controller/Xilinx/artix_sdram_demo/artix_sdram_demo.srcs/sources_1/bd/DemoSDRAM/ip/DemoSDRAM_axi_protocol_converter_0_0/DemoSDRAM_axi_protocol_converter_0_0.dcp]
  add_files -quiet C:/Users/egk69/Documents/Development/EDAC_SDRAM_Controller/Xilinx/artix_sdram_demo/artix_sdram_demo.srcs/sources_1/bd/DemoSDRAM/ip/DemoSDRAM_axi_crossbar_0_0/DemoSDRAM_axi_crossbar_0_0.dcp
  set_property netlist_only true [get_files C:/Users/egk69/Documents/Development/EDAC_SDRAM_Controller/Xilinx/artix_sdram_demo/artix_sdram_demo.srcs/sources_1/bd/DemoSDRAM/ip/DemoSDRAM_axi_crossbar_0_0/DemoSDRAM_axi_crossbar_0_0.dcp]
  add_files -quiet c:/Users/egk69/Documents/Development/EDAC_SDRAM_Controller/Xilinx/artix_sdram_demo/artix_sdram_demo.srcs/sources_1/bd/DemoSDRAM/ip/DemoSDRAM_xlconstant_0_0/DemoSDRAM_xlconstant_0_0.dcp
  set_property netlist_only true [get_files c:/Users/egk69/Documents/Development/EDAC_SDRAM_Controller/Xilinx/artix_sdram_demo/artix_sdram_demo.srcs/sources_1/bd/DemoSDRAM/ip/DemoSDRAM_xlconstant_0_0/DemoSDRAM_xlconstant_0_0.dcp]
  add_files -quiet c:/Users/egk69/Documents/Development/EDAC_SDRAM_Controller/Xilinx/artix_sdram_demo/artix_sdram_demo.srcs/sources_1/bd/DemoSDRAM/ip/DemoSDRAM_s00_mmu_0/DemoSDRAM_s00_mmu_0.dcp
  set_property netlist_only true [get_files c:/Users/egk69/Documents/Development/EDAC_SDRAM_Controller/Xilinx/artix_sdram_demo/artix_sdram_demo.srcs/sources_1/bd/DemoSDRAM/ip/DemoSDRAM_s00_mmu_0/DemoSDRAM_s00_mmu_0.dcp]
  add_files C:/Users/egk69/Documents/Development/EDAC_SDRAM_Controller/Xilinx/artix_sdram_demo/artix_sdram_demo.srcs/sources_1/bd/DemoSDRAM/DemoSDRAM.bmm
  set_property SCOPED_TO_REF DemoSDRAM [get_files -all C:/Users/egk69/Documents/Development/EDAC_SDRAM_Controller/Xilinx/artix_sdram_demo/artix_sdram_demo.srcs/sources_1/bd/DemoSDRAM/DemoSDRAM.bmm]
  add_files c:/Users/egk69/Documents/Development/EDAC_SDRAM_Controller/Xilinx/artix_sdram_demo/artix_sdram_demo.srcs/sources_1/bd/DemoSDRAM/ip/DemoSDRAM_microblaze_0_0/data/mb_bootloop_le.elf
  set_property SCOPED_TO_REF DemoSDRAM [get_files -all c:/Users/egk69/Documents/Development/EDAC_SDRAM_Controller/Xilinx/artix_sdram_demo/artix_sdram_demo.srcs/sources_1/bd/DemoSDRAM/ip/DemoSDRAM_microblaze_0_0/data/mb_bootloop_le.elf]
  set_property SCOPED_TO_CELLS microblaze_0 [get_files -all c:/Users/egk69/Documents/Development/EDAC_SDRAM_Controller/Xilinx/artix_sdram_demo/artix_sdram_demo.srcs/sources_1/bd/DemoSDRAM/ip/DemoSDRAM_microblaze_0_0/data/mb_bootloop_le.elf]
  read_xdc -ref DemoSDRAM_microblaze_0_0 -cells U0 c:/Users/egk69/Documents/Development/EDAC_SDRAM_Controller/Xilinx/artix_sdram_demo/artix_sdram_demo.srcs/sources_1/bd/DemoSDRAM/ip/DemoSDRAM_microblaze_0_0/DemoSDRAM_microblaze_0_0.xdc
  set_property processing_order EARLY [get_files c:/Users/egk69/Documents/Development/EDAC_SDRAM_Controller/Xilinx/artix_sdram_demo/artix_sdram_demo.srcs/sources_1/bd/DemoSDRAM/ip/DemoSDRAM_microblaze_0_0/DemoSDRAM_microblaze_0_0.xdc]
  read_xdc -ref DemoSDRAM_dlmb_v10_0 -cells U0 c:/Users/egk69/Documents/Development/EDAC_SDRAM_Controller/Xilinx/artix_sdram_demo/artix_sdram_demo.srcs/sources_1/bd/DemoSDRAM/ip/DemoSDRAM_dlmb_v10_0/DemoSDRAM_dlmb_v10_0.xdc
  set_property processing_order EARLY [get_files c:/Users/egk69/Documents/Development/EDAC_SDRAM_Controller/Xilinx/artix_sdram_demo/artix_sdram_demo.srcs/sources_1/bd/DemoSDRAM/ip/DemoSDRAM_dlmb_v10_0/DemoSDRAM_dlmb_v10_0.xdc]
  read_xdc -ref DemoSDRAM_ilmb_v10_0 -cells U0 c:/Users/egk69/Documents/Development/EDAC_SDRAM_Controller/Xilinx/artix_sdram_demo/artix_sdram_demo.srcs/sources_1/bd/DemoSDRAM/ip/DemoSDRAM_ilmb_v10_0/DemoSDRAM_ilmb_v10_0.xdc
  set_property processing_order EARLY [get_files c:/Users/egk69/Documents/Development/EDAC_SDRAM_Controller/Xilinx/artix_sdram_demo/artix_sdram_demo.srcs/sources_1/bd/DemoSDRAM/ip/DemoSDRAM_ilmb_v10_0/DemoSDRAM_ilmb_v10_0.xdc]
  read_xdc -ref DemoSDRAM_mdm_1_0 -cells U0 c:/Users/egk69/Documents/Development/EDAC_SDRAM_Controller/Xilinx/artix_sdram_demo/artix_sdram_demo.srcs/sources_1/bd/DemoSDRAM/ip/DemoSDRAM_mdm_1_0/DemoSDRAM_mdm_1_0.xdc
  set_property processing_order EARLY [get_files c:/Users/egk69/Documents/Development/EDAC_SDRAM_Controller/Xilinx/artix_sdram_demo/artix_sdram_demo.srcs/sources_1/bd/DemoSDRAM/ip/DemoSDRAM_mdm_1_0/DemoSDRAM_mdm_1_0.xdc]
  read_xdc -prop_thru_buffers -ref DemoSDRAM_clk_wiz_1_0 -cells inst c:/Users/egk69/Documents/Development/EDAC_SDRAM_Controller/Xilinx/artix_sdram_demo/artix_sdram_demo.srcs/sources_1/bd/DemoSDRAM/ip/DemoSDRAM_clk_wiz_1_0/DemoSDRAM_clk_wiz_1_0_board.xdc
  set_property processing_order EARLY [get_files c:/Users/egk69/Documents/Development/EDAC_SDRAM_Controller/Xilinx/artix_sdram_demo/artix_sdram_demo.srcs/sources_1/bd/DemoSDRAM/ip/DemoSDRAM_clk_wiz_1_0/DemoSDRAM_clk_wiz_1_0_board.xdc]
  read_xdc -ref DemoSDRAM_clk_wiz_1_0 -cells inst c:/Users/egk69/Documents/Development/EDAC_SDRAM_Controller/Xilinx/artix_sdram_demo/artix_sdram_demo.srcs/sources_1/bd/DemoSDRAM/ip/DemoSDRAM_clk_wiz_1_0/DemoSDRAM_clk_wiz_1_0.xdc
  set_property processing_order EARLY [get_files c:/Users/egk69/Documents/Development/EDAC_SDRAM_Controller/Xilinx/artix_sdram_demo/artix_sdram_demo.srcs/sources_1/bd/DemoSDRAM/ip/DemoSDRAM_clk_wiz_1_0/DemoSDRAM_clk_wiz_1_0.xdc]
  read_xdc -prop_thru_buffers -ref DemoSDRAM_rst_clk_wiz_1_100M_0 -cells U0 c:/Users/egk69/Documents/Development/EDAC_SDRAM_Controller/Xilinx/artix_sdram_demo/artix_sdram_demo.srcs/sources_1/bd/DemoSDRAM/ip/DemoSDRAM_rst_clk_wiz_1_100M_0/DemoSDRAM_rst_clk_wiz_1_100M_0_board.xdc
  set_property processing_order EARLY [get_files c:/Users/egk69/Documents/Development/EDAC_SDRAM_Controller/Xilinx/artix_sdram_demo/artix_sdram_demo.srcs/sources_1/bd/DemoSDRAM/ip/DemoSDRAM_rst_clk_wiz_1_100M_0/DemoSDRAM_rst_clk_wiz_1_100M_0_board.xdc]
  read_xdc -ref DemoSDRAM_rst_clk_wiz_1_100M_0 -cells U0 c:/Users/egk69/Documents/Development/EDAC_SDRAM_Controller/Xilinx/artix_sdram_demo/artix_sdram_demo.srcs/sources_1/bd/DemoSDRAM/ip/DemoSDRAM_rst_clk_wiz_1_100M_0/DemoSDRAM_rst_clk_wiz_1_100M_0.xdc
  set_property processing_order EARLY [get_files c:/Users/egk69/Documents/Development/EDAC_SDRAM_Controller/Xilinx/artix_sdram_demo/artix_sdram_demo.srcs/sources_1/bd/DemoSDRAM/ip/DemoSDRAM_rst_clk_wiz_1_100M_0/DemoSDRAM_rst_clk_wiz_1_100M_0.xdc]
  read_xdc -ref DemoSDRAM_axi_amm_bridge_0_0 -cells inst c:/Users/egk69/Documents/Development/EDAC_SDRAM_Controller/Xilinx/artix_sdram_demo/artix_sdram_demo.srcs/sources_1/bd/DemoSDRAM/ip/DemoSDRAM_axi_amm_bridge_0_0/DemoSDRAM_axi_amm_bridge_0_0.xdc
  set_property processing_order EARLY [get_files c:/Users/egk69/Documents/Development/EDAC_SDRAM_Controller/Xilinx/artix_sdram_demo/artix_sdram_demo.srcs/sources_1/bd/DemoSDRAM/ip/DemoSDRAM_axi_amm_bridge_0_0/DemoSDRAM_axi_amm_bridge_0_0.xdc]
  read_xdc -ref DemoSDRAM_ila_0_0 -cells U0 c:/Users/egk69/Documents/Development/EDAC_SDRAM_Controller/Xilinx/artix_sdram_demo/artix_sdram_demo.srcs/sources_1/bd/DemoSDRAM/ip/DemoSDRAM_ila_0_0/ila_v6_2/constraints/ila.xdc
  set_property processing_order EARLY [get_files c:/Users/egk69/Documents/Development/EDAC_SDRAM_Controller/Xilinx/artix_sdram_demo/artix_sdram_demo.srcs/sources_1/bd/DemoSDRAM/ip/DemoSDRAM_ila_0_0/ila_v6_2/constraints/ila.xdc]
  read_xdc -ref DemoSDRAM_axi_traffic_gen_0_0 -cells inst c:/Users/egk69/Documents/Development/EDAC_SDRAM_Controller/Xilinx/artix_sdram_demo/artix_sdram_demo.srcs/sources_1/bd/DemoSDRAM/ip/DemoSDRAM_axi_traffic_gen_0_0/DemoSDRAM_axi_traffic_gen_0_0.xdc
  set_property processing_order EARLY [get_files c:/Users/egk69/Documents/Development/EDAC_SDRAM_Controller/Xilinx/artix_sdram_demo/artix_sdram_demo.srcs/sources_1/bd/DemoSDRAM/ip/DemoSDRAM_axi_traffic_gen_0_0/DemoSDRAM_axi_traffic_gen_0_0.xdc]
  read_xdc C:/Users/egk69/Documents/Development/EDAC_SDRAM_Controller/Xilinx/artix_sdram_demo/artix_sdram_demo.srcs/constrs_1/imports/4_SDRTMRController/SEUD_pin_constrs.xdc
  read_xdc C:/Users/egk69/Documents/Development/EDAC_SDRAM_Controller/Xilinx/artix_sdram_demo/artix_sdram_demo.srcs/constrs_1/imports/4_SDRTMRController/SEUD_timing_constrs.xdc
  read_xdc -ref DemoSDRAM_clk_wiz_1_0 -cells inst c:/Users/egk69/Documents/Development/EDAC_SDRAM_Controller/Xilinx/artix_sdram_demo/artix_sdram_demo.srcs/sources_1/bd/DemoSDRAM/ip/DemoSDRAM_clk_wiz_1_0/DemoSDRAM_clk_wiz_1_0_late.xdc
  set_property processing_order LATE [get_files c:/Users/egk69/Documents/Development/EDAC_SDRAM_Controller/Xilinx/artix_sdram_demo/artix_sdram_demo.srcs/sources_1/bd/DemoSDRAM/ip/DemoSDRAM_clk_wiz_1_0/DemoSDRAM_clk_wiz_1_0_late.xdc]
  link_design -top DemoSDRAM_wrapper -part xc7a200tfbg676-1
  write_hwdef -file DemoSDRAM_wrapper.hwdef
  close_msg_db -file init_design.pb
} RESULT]
if {$rc} {
  step_failed init_design
  return -code error $RESULT
} else {
  end_step init_design
  unset ACTIVE_STEP 
}

start_step opt_design
set ACTIVE_STEP opt_design
set rc [catch {
  create_msg_db opt_design.pb
  opt_design 
  write_checkpoint -force DemoSDRAM_wrapper_opt.dcp
  catch { report_drc -file DemoSDRAM_wrapper_drc_opted.rpt }
  close_msg_db -file opt_design.pb
} RESULT]
if {$rc} {
  step_failed opt_design
  return -code error $RESULT
} else {
  end_step opt_design
  unset ACTIVE_STEP 
}

start_step place_design
set ACTIVE_STEP place_design
set rc [catch {
  create_msg_db place_design.pb
  implement_debug_core 
  place_design 
  write_checkpoint -force DemoSDRAM_wrapper_placed.dcp
  catch { report_io -file DemoSDRAM_wrapper_io_placed.rpt }
  catch { report_utilization -file DemoSDRAM_wrapper_utilization_placed.rpt -pb DemoSDRAM_wrapper_utilization_placed.pb }
  catch { report_control_sets -verbose -file DemoSDRAM_wrapper_control_sets_placed.rpt }
  close_msg_db -file place_design.pb
} RESULT]
if {$rc} {
  step_failed place_design
  return -code error $RESULT
} else {
  end_step place_design
  unset ACTIVE_STEP 
}

start_step route_design
set ACTIVE_STEP route_design
set rc [catch {
  create_msg_db route_design.pb
  route_design 
  write_checkpoint -force DemoSDRAM_wrapper_routed.dcp
  catch { report_drc -file DemoSDRAM_wrapper_drc_routed.rpt -pb DemoSDRAM_wrapper_drc_routed.pb -rpx DemoSDRAM_wrapper_drc_routed.rpx }
  catch { report_methodology -file DemoSDRAM_wrapper_methodology_drc_routed.rpt -rpx DemoSDRAM_wrapper_methodology_drc_routed.rpx }
  catch { report_timing_summary -warn_on_violation -max_paths 10 -file DemoSDRAM_wrapper_timing_summary_routed.rpt -rpx DemoSDRAM_wrapper_timing_summary_routed.rpx }
  catch { report_power -file DemoSDRAM_wrapper_power_routed.rpt -pb DemoSDRAM_wrapper_power_summary_routed.pb -rpx DemoSDRAM_wrapper_power_routed.rpx }
  catch { report_route_status -file DemoSDRAM_wrapper_route_status.rpt -pb DemoSDRAM_wrapper_route_status.pb }
  catch { report_clock_utilization -file DemoSDRAM_wrapper_clock_utilization_routed.rpt }
  close_msg_db -file route_design.pb
} RESULT]
if {$rc} {
  write_checkpoint -force DemoSDRAM_wrapper_routed_error.dcp
  step_failed route_design
  return -code error $RESULT
} else {
  end_step route_design
  unset ACTIVE_STEP 
}

