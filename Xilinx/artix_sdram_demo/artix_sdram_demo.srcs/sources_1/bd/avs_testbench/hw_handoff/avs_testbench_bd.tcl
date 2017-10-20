
################################################################
# This is a generated script based on design: avs_testbench
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2016.4
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_msg_id "BD_TCL-109" "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source avs_testbench_script.tcl

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7a200tfbg676-1
}


# CHANGE DESIGN NAME HERE
set design_name avs_testbench

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_msg_id "BD_TCL-001" "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_msg_id "BD_TCL-002" "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_msg_id "BD_TCL-003" "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_msg_id "BD_TCL-004" "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_msg_id "BD_TCL-005" "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_msg_id "BD_TCL-114" "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports

  # Create ports
  set addr_o [ create_bd_port -dir O -from 12 -to 0 addr_o ]
  set bank_o [ create_bd_port -dir O -from 1 -to 0 bank_o ]
  set cas_o [ create_bd_port -dir O cas_o ]
  set cke_o [ create_bd_port -dir O cke_o ]
  set clk_100MHz [ create_bd_port -dir I -type clk clk_100MHz ]
  set_property -dict [ list \
CONFIG.FREQ_HZ {100000000} \
 ] $clk_100MHz
  set core_ext_start [ create_bd_port -dir I core_ext_start ]
  set cs_o [ create_bd_port -dir O cs_o ]
  set dataQ_io [ create_bd_port -dir IO -from 15 -to 0 dataQ_io ]
  set dqm_o [ create_bd_port -dir O -from 1 -to 0 dqm_o ]
  set err_counter_o [ create_bd_port -dir O -from 15 -to 0 err_counter_o ]
  set err_detect_o [ create_bd_port -dir O err_detect_o ]
  set healing_proc_run_o [ create_bd_port -dir O healing_proc_run_o ]
  set mem_ready_o [ create_bd_port -dir O mem_ready_o ]
  set ras_o [ create_bd_port -dir O ras_o ]
  set reset_rtl [ create_bd_port -dir I -type rst reset_rtl ]
  set_property -dict [ list \
CONFIG.POLARITY {ACTIVE_LOW} \
 ] $reset_rtl
  set scrubbing_proc_run_o [ create_bd_port -dir O scrubbing_proc_run_o ]
  set voted_data_o [ create_bd_port -dir O -from 15 -to 0 voted_data_o ]
  set we_o [ create_bd_port -dir O we_o ]

  # Create instance: axi_amm_bridge_0, and set properties
  set axi_amm_bridge_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_amm_bridge:1.0 axi_amm_bridge_0 ]
  set_property -dict [ list \
CONFIG.C_HAS_READ_DATA_VALID {0} \
CONFIG.C_HAS_RESPONSE {0} \
CONFIG.C_S_AXI_ADDR_WIDTH {24} \
CONFIG.C_USE_BYTEENABLE {0} \
 ] $axi_amm_bridge_0

  # Create instance: axi_traffic_gen_0, and set properties
  set axi_traffic_gen_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_traffic_gen:2.0 axi_traffic_gen_0 ]
  set_property -dict [ list \
CONFIG.ATG_HLT_STATIC_LENGTH {1} \
CONFIG.ATG_HLT_STATIC_LENGTH_INCR {1} \
CONFIG.ATG_OPTIONS {High Level Traffic} \
CONFIG.C_ATG_MODE {AXI4} \
CONFIG.C_ATG_REPEAT_TYPE {One_Shot} \
CONFIG.C_ATG_STATIC_HLTP_INCR {true} \
CONFIG.C_ATG_SYSINIT_MODES {System_Init} \
CONFIG.C_ATG_SYSTEM_CH1_HIGH {0x00FFFFFF} \
CONFIG.C_ATG_SYSTEM_CMD_MAX_RETRY {256} \
CONFIG.C_ATG_SYSTEM_INIT_ADDR_MIF {demo_addr_traffic.coe} \
CONFIG.DATA_SIZE_AVG {16} \
CONFIG.DATA_TRAFFIC_PATTERN {Fixed} \
CONFIG.MASTER_HIGH_ADDRESS {0x00FFFFFF} \
CONFIG.TRAFFIC_PROFILE {Data} \
 ] $axi_traffic_gen_0

  # Create instance: axi_traffic_gen_0_axi_periph, and set properties
  set axi_traffic_gen_0_axi_periph [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_traffic_gen_0_axi_periph ]
  set_property -dict [ list \
CONFIG.NUM_MI {1} \
 ] $axi_traffic_gen_0_axi_periph

  # Create instance: rst_clk_100MHz_100M, and set properties
  set rst_clk_100MHz_100M [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 rst_clk_100MHz_100M ]

  # Create instance: sdram_ctrl_tmr_avalon_0, and set properties
  set sdram_ctrl_tmr_avalon_0 [ create_bd_cell -type ip -vlnv ekyr.kth.se:user:sdram_ctrl_tmr_avalon:1.0 sdram_ctrl_tmr_avalon_0 ]

  # Create instance: xlconstant_0, and set properties
  set xlconstant_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_0 ]

  # Create interface connections
  connect_bd_intf_net -intf_net axi_amm_bridge_0_M_AVALON [get_bd_intf_pins axi_amm_bridge_0/M_AVALON] [get_bd_intf_pins sdram_ctrl_tmr_avalon_0/avs]
  connect_bd_intf_net -intf_net axi_traffic_gen_0_M_AXI [get_bd_intf_pins axi_traffic_gen_0/M_AXI] [get_bd_intf_pins axi_traffic_gen_0_axi_periph/S00_AXI]
  connect_bd_intf_net -intf_net axi_traffic_gen_0_axi_periph_M00_AXI [get_bd_intf_pins axi_amm_bridge_0/S_AXI_LITE] [get_bd_intf_pins axi_traffic_gen_0_axi_periph/M00_AXI]

  # Create port connections
  connect_bd_net -net Net [get_bd_ports dataQ_io] [get_bd_pins sdram_ctrl_tmr_avalon_0/dataQ_io]
  connect_bd_net -net clk_100MHz_1 [get_bd_ports clk_100MHz] [get_bd_pins axi_amm_bridge_0/s_axi_aclk] [get_bd_pins axi_traffic_gen_0/s_axi_aclk] [get_bd_pins axi_traffic_gen_0_axi_periph/ACLK] [get_bd_pins axi_traffic_gen_0_axi_periph/M00_ACLK] [get_bd_pins axi_traffic_gen_0_axi_periph/S00_ACLK] [get_bd_pins rst_clk_100MHz_100M/slowest_sync_clk] [get_bd_pins sdram_ctrl_tmr_avalon_0/csi_clock]
  connect_bd_net -net core_ext_start_1 [get_bd_ports core_ext_start] [get_bd_pins axi_traffic_gen_0/core_ext_start]
  connect_bd_net -net reset_rtl_1 [get_bd_ports reset_rtl] [get_bd_pins rst_clk_100MHz_100M/ext_reset_in] [get_bd_pins sdram_ctrl_tmr_avalon_0/rsi_reset_n]
  connect_bd_net -net rst_clk_100MHz_100M_interconnect_aresetn [get_bd_pins axi_traffic_gen_0_axi_periph/ARESETN] [get_bd_pins rst_clk_100MHz_100M/interconnect_aresetn]
  connect_bd_net -net rst_clk_100MHz_100M_peripheral_aresetn [get_bd_pins axi_amm_bridge_0/s_axi_aresetn] [get_bd_pins axi_traffic_gen_0/s_axi_aresetn] [get_bd_pins axi_traffic_gen_0_axi_periph/M00_ARESETN] [get_bd_pins axi_traffic_gen_0_axi_periph/S00_ARESETN] [get_bd_pins rst_clk_100MHz_100M/peripheral_aresetn]
  connect_bd_net -net sdram_ctrl_tmr_avalon_0_addr_o [get_bd_ports addr_o] [get_bd_pins sdram_ctrl_tmr_avalon_0/addr_o]
  connect_bd_net -net sdram_ctrl_tmr_avalon_0_bank_o [get_bd_ports bank_o] [get_bd_pins sdram_ctrl_tmr_avalon_0/bank_o]
  connect_bd_net -net sdram_ctrl_tmr_avalon_0_cas_o [get_bd_ports cas_o] [get_bd_pins sdram_ctrl_tmr_avalon_0/cas_o]
  connect_bd_net -net sdram_ctrl_tmr_avalon_0_cke_o [get_bd_ports cke_o] [get_bd_pins sdram_ctrl_tmr_avalon_0/cke_o]
  connect_bd_net -net sdram_ctrl_tmr_avalon_0_cs_o [get_bd_ports cs_o] [get_bd_pins sdram_ctrl_tmr_avalon_0/cs_o]
  connect_bd_net -net sdram_ctrl_tmr_avalon_0_dqm_o [get_bd_ports dqm_o] [get_bd_pins sdram_ctrl_tmr_avalon_0/dqm_o]
  connect_bd_net -net sdram_ctrl_tmr_avalon_0_err_counter_o [get_bd_ports err_counter_o] [get_bd_pins sdram_ctrl_tmr_avalon_0/err_counter_o]
  connect_bd_net -net sdram_ctrl_tmr_avalon_0_err_detect_o [get_bd_ports err_detect_o] [get_bd_pins sdram_ctrl_tmr_avalon_0/err_detect_o]
  connect_bd_net -net sdram_ctrl_tmr_avalon_0_healing_proc_run_o [get_bd_ports healing_proc_run_o] [get_bd_pins sdram_ctrl_tmr_avalon_0/healing_proc_run_o]
  connect_bd_net -net sdram_ctrl_tmr_avalon_0_mem_ready_o [get_bd_ports mem_ready_o] [get_bd_pins sdram_ctrl_tmr_avalon_0/mem_ready_o]
  connect_bd_net -net sdram_ctrl_tmr_avalon_0_ras_o [get_bd_ports ras_o] [get_bd_pins sdram_ctrl_tmr_avalon_0/ras_o]
  connect_bd_net -net sdram_ctrl_tmr_avalon_0_scrubbing_proc_run_o [get_bd_ports scrubbing_proc_run_o] [get_bd_pins sdram_ctrl_tmr_avalon_0/scrubbing_proc_run_o]
  connect_bd_net -net sdram_ctrl_tmr_avalon_0_voted_data_o [get_bd_ports voted_data_o] [get_bd_pins sdram_ctrl_tmr_avalon_0/voted_data_o]
  connect_bd_net -net sdram_ctrl_tmr_avalon_0_we_o [get_bd_ports we_o] [get_bd_pins sdram_ctrl_tmr_avalon_0/we_o]
  connect_bd_net -net xlconstant_0_dout [get_bd_pins rst_clk_100MHz_100M/dcm_locked] [get_bd_pins xlconstant_0/dout]

  # Create address segments
  create_bd_addr_seg -range 0x01000000 -offset 0x00000000 [get_bd_addr_spaces axi_traffic_gen_0/Data] [get_bd_addr_segs axi_amm_bridge_0/S_AXI_LITE/Reg] SEG_axi_amm_bridge_0_Mem

  # Perform GUI Layout
  regenerate_bd_layout -layout_string {
   guistr: "# # String gsaved with Nlview 6.6.5b  2016-09-06 bk=1.3687 VDI=39 GEI=35 GUI=JA:1.6
#  -string -flagsOSRD
preplace port cas_o -pg 1 -y 10 -defaultsOSRD
preplace port cke_o -pg 1 -y -90 -defaultsOSRD
preplace port err_detect_o -pg 1 -y 110 -defaultsOSRD
preplace port cs_o -pg 1 -y -30 -defaultsOSRD
preplace port core_ext_start -pg 1 -y 100 -defaultsOSRD
preplace port reset_rtl -pg 1 -y -240 -defaultsOSRD
preplace port we_o -pg 1 -y 30 -defaultsOSRD
preplace port clk_100MHz -pg 1 -y -220 -defaultsOSRD
preplace port mem_ready_o -pg 1 -y 90 -defaultsOSRD
preplace port healing_proc_run_o -pg 1 -y 190 -defaultsOSRD
preplace port ras_o -pg 1 -y -10 -defaultsOSRD
preplace port scrubbing_proc_run_o -pg 1 -y 170 -defaultsOSRD
preplace portBus voted_data_o -pg 1 -y 150 -defaultsOSRD
preplace portBus bank_o -pg 1 -y -70 -defaultsOSRD
preplace portBus dataQ_io -pg 1 -y 70 -defaultsOSRD
preplace portBus err_counter_o -pg 1 -y 130 -defaultsOSRD
preplace portBus dqm_o -pg 1 -y 50 -defaultsOSRD
preplace portBus addr_o -pg 1 -y -50 -defaultsOSRD
preplace inst xlconstant_0 -pg 1 -lvl 1 -y 0 -defaultsOSRD
preplace inst rst_clk_100MHz_100M -pg 1 -lvl 2 -y -150 -defaultsOSRD
preplace inst sdram_ctrl_tmr_avalon_0 -pg 1 -lvl 4 -y 50 -defaultsOSRD
preplace inst axi_traffic_gen_0 -pg 1 -lvl 2 -y 80 -defaultsOSRD
preplace inst axi_traffic_gen_0_axi_periph -pg 1 -lvl 3 -y -130 -defaultsOSRD
preplace inst axi_amm_bridge_0 -pg 1 -lvl 3 -y 60 -defaultsOSRD
preplace netloc core_ext_start_1 1 0 2 N 100 N
preplace netloc rst_clk_100MHz_100M_interconnect_aresetn 1 2 1 490
preplace netloc sdram_ctrl_tmr_avalon_0_voted_data_o 1 4 1 N
preplace netloc sdram_ctrl_tmr_avalon_0_err_detect_o 1 4 1 N
preplace netloc sdram_ctrl_tmr_avalon_0_cas_o 1 4 1 N
preplace netloc sdram_ctrl_tmr_avalon_0_mem_ready_o 1 4 1 N
preplace netloc sdram_ctrl_tmr_avalon_0_ras_o 1 4 1 N
preplace netloc sdram_ctrl_tmr_avalon_0_cke_o 1 4 1 N
preplace netloc sdram_ctrl_tmr_avalon_0_healing_proc_run_o 1 4 1 N
preplace netloc sdram_ctrl_tmr_avalon_0_cs_o 1 4 1 N
preplace netloc axi_traffic_gen_0_axi_periph_M00_AXI 1 2 2 530 -250 790J
preplace netloc axi_traffic_gen_0_M_AXI 1 2 1 520
preplace netloc xlconstant_0_dout 1 1 1 160
preplace netloc sdram_ctrl_tmr_avalon_0_scrubbing_proc_run_o 1 4 1 N
preplace netloc axi_amm_bridge_0_M_AVALON 1 3 1 790
preplace netloc Net 1 4 1 N
preplace netloc sdram_ctrl_tmr_avalon_0_addr_o 1 4 1 N
preplace netloc rst_clk_100MHz_100M_peripheral_aresetn 1 1 2 150 150 510
preplace netloc sdram_ctrl_tmr_avalon_0_err_counter_o 1 4 1 N
preplace netloc sdram_ctrl_tmr_avalon_0_dqm_o 1 4 1 N
preplace netloc sdram_ctrl_tmr_avalon_0_we_o 1 4 1 N
preplace netloc sdram_ctrl_tmr_avalon_0_bank_o 1 4 1 N
preplace netloc reset_rtl_1 1 0 4 N -240 140J -270 NJ -270 800
preplace netloc clk_100MHz_1 1 0 4 10 60 150 -240 500 130 790
levelinfo -pg 1 -10 80 330 660 930 1140 -top -280 -bot 370
",
}

  # Restore current instance
  current_bd_instance $oldCurInst

  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


