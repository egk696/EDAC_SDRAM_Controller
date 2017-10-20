
################################################################
# This is a generated script based on design: DemoSDRAM
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
# source DemoSDRAM_script.tcl

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7a200tfbg676-1
}


# CHANGE DESIGN NAME HERE
set design_name DemoSDRAM

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


# Hierarchical cell: microblaze_0_local_memory
proc create_hier_cell_microblaze_0_local_memory { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" create_hier_cell_microblaze_0_local_memory() - Empty argument(s)!"}
     return
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

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode MirroredMaster -vlnv xilinx.com:interface:lmb_rtl:1.0 DLMB
  create_bd_intf_pin -mode MirroredMaster -vlnv xilinx.com:interface:lmb_rtl:1.0 ILMB

  # Create pins
  create_bd_pin -dir I -type clk LMB_Clk
  create_bd_pin -dir I -type rst SYS_Rst

  # Create instance: dlmb_bram_if_cntlr, and set properties
  set dlmb_bram_if_cntlr [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_bram_if_cntlr:4.0 dlmb_bram_if_cntlr ]
  set_property -dict [ list \
CONFIG.C_ECC {0} \
 ] $dlmb_bram_if_cntlr

  # Create instance: dlmb_v10, and set properties
  set dlmb_v10 [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_v10:3.0 dlmb_v10 ]

  # Create instance: ilmb_bram_if_cntlr, and set properties
  set ilmb_bram_if_cntlr [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_bram_if_cntlr:4.0 ilmb_bram_if_cntlr ]
  set_property -dict [ list \
CONFIG.C_ECC {0} \
 ] $ilmb_bram_if_cntlr

  # Create instance: ilmb_v10, and set properties
  set ilmb_v10 [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_v10:3.0 ilmb_v10 ]

  # Create instance: lmb_bram, and set properties
  set lmb_bram [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.3 lmb_bram ]
  set_property -dict [ list \
CONFIG.Memory_Type {True_Dual_Port_RAM} \
CONFIG.use_bram_block {BRAM_Controller} \
 ] $lmb_bram

  # Create interface connections
  connect_bd_intf_net -intf_net microblaze_0_dlmb [get_bd_intf_pins DLMB] [get_bd_intf_pins dlmb_v10/LMB_M]
  connect_bd_intf_net -intf_net microblaze_0_dlmb_bus [get_bd_intf_pins dlmb_bram_if_cntlr/SLMB] [get_bd_intf_pins dlmb_v10/LMB_Sl_0]
  connect_bd_intf_net -intf_net microblaze_0_dlmb_cntlr [get_bd_intf_pins dlmb_bram_if_cntlr/BRAM_PORT] [get_bd_intf_pins lmb_bram/BRAM_PORTA]
  connect_bd_intf_net -intf_net microblaze_0_ilmb [get_bd_intf_pins ILMB] [get_bd_intf_pins ilmb_v10/LMB_M]
  connect_bd_intf_net -intf_net microblaze_0_ilmb_bus [get_bd_intf_pins ilmb_bram_if_cntlr/SLMB] [get_bd_intf_pins ilmb_v10/LMB_Sl_0]
  connect_bd_intf_net -intf_net microblaze_0_ilmb_cntlr [get_bd_intf_pins ilmb_bram_if_cntlr/BRAM_PORT] [get_bd_intf_pins lmb_bram/BRAM_PORTB]

  # Create port connections
  connect_bd_net -net SYS_Rst_1 [get_bd_pins SYS_Rst] [get_bd_pins dlmb_bram_if_cntlr/LMB_Rst] [get_bd_pins dlmb_v10/SYS_Rst] [get_bd_pins ilmb_bram_if_cntlr/LMB_Rst] [get_bd_pins ilmb_v10/SYS_Rst]
  connect_bd_net -net microblaze_0_Clk [get_bd_pins LMB_Clk] [get_bd_pins dlmb_bram_if_cntlr/LMB_Clk] [get_bd_pins dlmb_v10/LMB_Clk] [get_bd_pins ilmb_bram_if_cntlr/LMB_Clk] [get_bd_pins ilmb_v10/LMB_Clk]

  # Restore current instance
  current_bd_instance $oldCurInst
}


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
  set clk_sdram [ create_bd_port -dir O -type clk clk_sdram ]
  set clk_shared [ create_bd_port -dir I -type clk clk_shared ]
  set_property -dict [ list \
CONFIG.FREQ_HZ {12000000} \
 ] $clk_shared
  set cs_o [ create_bd_port -dir O cs_o ]
  set dataQ_io [ create_bd_port -dir IO -from 15 -to 0 dataQ_io ]
  set dqm_o [ create_bd_port -dir O -from 1 -to 0 dqm_o ]
  set ras_o [ create_bd_port -dir O ras_o ]
  set status_led [ create_bd_port -dir O status_led ]
  set we_o [ create_bd_port -dir O we_o ]

  # Create instance: axi_amm_bridge_0, and set properties
  set axi_amm_bridge_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_amm_bridge:1.0 axi_amm_bridge_0 ]
  set_property -dict [ list \
CONFIG.C_ADDRESS_MODE {0} \
CONFIG.C_BURST_SUPPORT {0} \
CONFIG.C_HAS_READ_DATA_VALID {1} \
CONFIG.C_HAS_RESPONSE {0} \
CONFIG.C_HIGH1_ADDR {0x000000000FFFFFFF} \
CONFIG.C_NUM_ADDRESS_RANGES {0} \
CONFIG.C_READ_LATENCY {2} \
CONFIG.C_S_AXI_ADDR_WIDTH {24} \
CONFIG.C_USE_BYTEENABLE {0} \
 ] $axi_amm_bridge_0

  # Create instance: axi_crossbar_0, and set properties
  set axi_crossbar_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_crossbar:2.1 axi_crossbar_0 ]
  set_property -dict [ list \
CONFIG.NUM_MI {1} \
CONFIG.NUM_SI {2} \
CONFIG.S00_ARB_PRIORITY {1} \
CONFIG.S01_ARB_PRIORITY {2} \
 ] $axi_crossbar_0

  # Create instance: axi_protocol_converter_0, and set properties
  set axi_protocol_converter_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_protocol_converter:2.1 axi_protocol_converter_0 ]
  set_property -dict [ list \
CONFIG.ADDR_WIDTH {24} \
 ] $axi_protocol_converter_0

  # Create instance: axi_traffic_gen_0, and set properties
  set axi_traffic_gen_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_traffic_gen:2.0 axi_traffic_gen_0 ]
  set_property -dict [ list \
CONFIG.ATG_OPTIONS {High Level Traffic} \
CONFIG.C_ATG_REPEAT_TYPE {Repetitive} \
CONFIG.C_ATG_STATIC_HLTP_INCR {false} \
CONFIG.DATA_ITG_GAP {256} \
CONFIG.DATA_READ_SHARE {0} \
CONFIG.DATA_SIZE_AVG {1} \
CONFIG.DATA_TRAFFIC_PATTERN {Fixed} \
CONFIG.DATA_TRANS_TYPE {Write_Only} \
CONFIG.MASTER_HIGH_ADDRESS {0x007FFFFF} \
CONFIG.TRAFFIC_PROFILE {Data} \
 ] $axi_traffic_gen_0

  # Create instance: clk_wiz_1, and set properties
  set clk_wiz_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:5.3 clk_wiz_1 ]
  set_property -dict [ list \
CONFIG.CLKIN1_JITTER_PS {833.33} \
CONFIG.CLKOUT1_DRIVES {BUFGCE} \
CONFIG.CLKOUT1_JITTER {547.406} \
CONFIG.CLKOUT1_PHASE_ERROR {663.293} \
CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {48} \
CONFIG.CLKOUT2_DRIVES {BUFGCE} \
CONFIG.CLKOUT2_JITTER {547.406} \
CONFIG.CLKOUT2_PHASE_ERROR {663.293} \
CONFIG.CLKOUT2_REQUESTED_OUT_FREQ {48} \
CONFIG.CLKOUT2_REQUESTED_PHASE {-18} \
CONFIG.CLKOUT2_USED {true} \
CONFIG.CLKOUT3_DRIVES {BUFGCE} \
CONFIG.CLKOUT3_JITTER {673.233} \
CONFIG.CLKOUT3_PHASE_ERROR {693.818} \
CONFIG.CLKOUT3_REQUESTED_OUT_FREQ {12} \
CONFIG.CLKOUT3_REQUESTED_PHASE {0} \
CONFIG.CLKOUT3_USED {false} \
CONFIG.CLKOUT4_DRIVES {BUFGCE} \
CONFIG.CLKOUT5_DRIVES {BUFGCE} \
CONFIG.CLKOUT6_DRIVES {BUFGCE} \
CONFIG.CLKOUT7_DRIVES {BUFGCE} \
CONFIG.CLK_OUT1_PORT {clk_blaze} \
CONFIG.CLK_OUT2_PORT {clk_sdram} \
CONFIG.CLK_OUT3_PORT {clk_sdram} \
CONFIG.FEEDBACK_SOURCE {FDBK_AUTO} \
CONFIG.JITTER_SEL {No_Jitter} \
CONFIG.MMCM_BANDWIDTH {OPTIMIZED} \
CONFIG.MMCM_CLKFBOUT_MULT_F {60.000} \
CONFIG.MMCM_CLKIN1_PERIOD {83.333} \
CONFIG.MMCM_CLKIN2_PERIOD {10.0} \
CONFIG.MMCM_CLKOUT0_DIVIDE_F {15.000} \
CONFIG.MMCM_CLKOUT0_DUTY_CYCLE {0.500} \
CONFIG.MMCM_CLKOUT1_DIVIDE {15} \
CONFIG.MMCM_CLKOUT1_DUTY_CYCLE {0.500} \
CONFIG.MMCM_CLKOUT1_PHASE {-18.000} \
CONFIG.MMCM_CLKOUT2_DIVIDE {1} \
CONFIG.MMCM_CLKOUT2_DUTY_CYCLE {0.500} \
CONFIG.MMCM_CLKOUT2_PHASE {0.000} \
CONFIG.MMCM_COMPENSATION {ZHOLD} \
CONFIG.MMCM_DIVCLK_DIVIDE {1} \
CONFIG.NUM_OUT_CLKS {2} \
CONFIG.PRIMITIVE {MMCM} \
CONFIG.PRIM_IN_FREQ {12} \
CONFIG.PRIM_SOURCE {Single_ended_clock_capable_pin} \
CONFIG.USE_MIN_POWER {false} \
CONFIG.USE_RESET {false} \
CONFIG.USE_SAFE_CLOCK_STARTUP {true} \
 ] $clk_wiz_1

  # Need to retain value_src of defaults
  set_property -dict [ list \
CONFIG.MMCM_CLKIN2_PERIOD.VALUE_SRC {DEFAULT} \
 ] $clk_wiz_1

  # Create instance: ila_0, and set properties
  set ila_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:ila:6.2 ila_0 ]
  set_property -dict [ list \
CONFIG.ALL_PROBE_SAME_MU_CNT {2} \
CONFIG.C_DATA_DEPTH {8192} \
CONFIG.C_ENABLE_ILA_AXI_MON {false} \
CONFIG.C_EN_STRG_QUAL {1} \
CONFIG.C_MONITOR_TYPE {Native} \
CONFIG.C_NUM_OF_PROBES {13} \
CONFIG.C_PROBE0_MU_CNT {2} \
CONFIG.C_PROBE10_TYPE {0} \
CONFIG.C_PROBE10_WIDTH {1} \
CONFIG.C_PROBE12_TYPE {1} \
CONFIG.C_PROBE12_WIDTH {32} \
CONFIG.C_PROBE1_MU_CNT {2} \
CONFIG.C_PROBE2_MU_CNT {2} \
CONFIG.C_PROBE2_TYPE {1} \
CONFIG.C_PROBE2_WIDTH {16} \
CONFIG.C_PROBE3_MU_CNT {2} \
CONFIG.C_PROBE3_TYPE {1} \
CONFIG.C_PROBE3_WIDTH {16} \
CONFIG.C_PROBE4_MU_CNT {2} \
CONFIG.C_PROBE4_TYPE {0} \
CONFIG.C_PROBE4_WIDTH {1} \
CONFIG.C_PROBE5_MU_CNT {2} \
CONFIG.C_PROBE5_TYPE {0} \
CONFIG.C_PROBE5_WIDTH {1} \
CONFIG.C_PROBE6_TYPE {1} \
CONFIG.C_PROBE6_WIDTH {24} \
CONFIG.C_PROBE7_TYPE {0} \
CONFIG.C_PROBE7_WIDTH {1} \
CONFIG.C_PROBE8_TYPE {1} \
CONFIG.C_PROBE8_WIDTH {32} \
 ] $ila_0

  # Create instance: mdm_1, and set properties
  set mdm_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:mdm:3.2 mdm_1 ]
  set_property -dict [ list \
CONFIG.C_USE_UART {1} \
 ] $mdm_1

  # Create instance: microblaze_0, and set properties
  set microblaze_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:microblaze:10.0 microblaze_0 ]
  set_property -dict [ list \
CONFIG.C_DEBUG_ENABLED {1} \
CONFIG.C_D_AXI {1} \
CONFIG.C_D_LMB {1} \
CONFIG.C_I_LMB {1} \
CONFIG.C_NUMBER_OF_RD_ADDR_BRK {1} \
CONFIG.C_NUMBER_OF_WR_ADDR_BRK {1} \
CONFIG.C_TRACE {1} \
CONFIG.C_USE_BARREL {1} \
CONFIG.C_USE_DIV {1} \
CONFIG.C_USE_FPU {1} \
CONFIG.C_USE_HW_MUL {1} \
 ] $microblaze_0

  # Create instance: microblaze_0_axi_periph, and set properties
  set microblaze_0_axi_periph [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 microblaze_0_axi_periph ]
  set_property -dict [ list \
CONFIG.NUM_MI {2} \
 ] $microblaze_0_axi_periph

  # Create instance: microblaze_0_local_memory
  create_hier_cell_microblaze_0_local_memory [current_bd_instance .] microblaze_0_local_memory

  # Create instance: rst_clk_wiz_1, and set properties
  set rst_clk_wiz_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 rst_clk_wiz_1 ]

  # Create instance: sdram_ctrl_tmr_avs_0, and set properties
  set sdram_ctrl_tmr_avs_0 [ create_bd_cell -type ip -vlnv ekyr.kth.se:user:sdram_ctrl_tmr_avalon:1.0 sdram_ctrl_tmr_avs_0 ]
  set_property -dict [ list \
CONFIG.CAS_LAT_CYCLES {2} \
CONFIG.GEN_ERR_INJ {false} \
CONFIG.NOP_BOOT_CYCLES {20000} \
CONFIG.REF_PERIOD {32} \
CONFIG.SCRUBBER_WAIT_CYCLES {64} \
CONFIG.TMR_COLS {384} \
 ] $sdram_ctrl_tmr_avs_0

  # Create instance: xlconstant_0, and set properties
  set xlconstant_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_0 ]
  set_property -dict [ list \
CONFIG.CONST_VAL {0} \
 ] $xlconstant_0

  # Create instance: xlconstant_1, and set properties
  set xlconstant_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_1 ]

  # Create interface connections
  connect_bd_intf_net -intf_net axi_crossbar_0_M00_AXI [get_bd_intf_pins axi_amm_bridge_0/S_AXI_LITE] [get_bd_intf_pins axi_crossbar_0/M00_AXI]
  connect_bd_intf_net -intf_net axi_protocol_converter_0_M_AXI [get_bd_intf_pins axi_crossbar_0/S01_AXI] [get_bd_intf_pins axi_protocol_converter_0/M_AXI]
  connect_bd_intf_net -intf_net axi_traffic_gen_0_M_AXI [get_bd_intf_pins axi_protocol_converter_0/S_AXI] [get_bd_intf_pins axi_traffic_gen_0/M_AXI]
  connect_bd_intf_net -intf_net mdm_1_MBDEBUG_0 [get_bd_intf_pins mdm_1/MBDEBUG_0] [get_bd_intf_pins microblaze_0/DEBUG]
  connect_bd_intf_net -intf_net microblaze_0_M_AXI_DP [get_bd_intf_pins microblaze_0/M_AXI_DP] [get_bd_intf_pins microblaze_0_axi_periph/S00_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M00_AXI [get_bd_intf_pins axi_crossbar_0/S00_AXI] [get_bd_intf_pins microblaze_0_axi_periph/M00_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M01_AXI [get_bd_intf_pins mdm_1/S_AXI] [get_bd_intf_pins microblaze_0_axi_periph/M01_AXI]
  connect_bd_intf_net -intf_net microblaze_0_dlmb_1 [get_bd_intf_pins microblaze_0/DLMB] [get_bd_intf_pins microblaze_0_local_memory/DLMB]
  connect_bd_intf_net -intf_net microblaze_0_ilmb_1 [get_bd_intf_pins microblaze_0/ILMB] [get_bd_intf_pins microblaze_0_local_memory/ILMB]

  # Create port connections
  connect_bd_net -net Net1 [get_bd_ports dataQ_io] [get_bd_pins sdram_ctrl_tmr_avs_0/dataQ_io]
  connect_bd_net -net axi_amm_bridge_0_avm_address [get_bd_pins axi_amm_bridge_0/avm_address] [get_bd_pins ila_0/probe6] [get_bd_pins sdram_ctrl_tmr_avs_0/avs_address]
  connect_bd_net -net axi_amm_bridge_0_avm_read [get_bd_pins axi_amm_bridge_0/avm_read] [get_bd_pins ila_0/probe7] [get_bd_pins sdram_ctrl_tmr_avs_0/avs_read]
  connect_bd_net -net axi_amm_bridge_0_avm_write [get_bd_pins axi_amm_bridge_0/avm_write] [get_bd_pins ila_0/probe11] [get_bd_pins sdram_ctrl_tmr_avs_0/avs_write]
  connect_bd_net -net axi_amm_bridge_0_avm_writedata [get_bd_pins axi_amm_bridge_0/avm_writedata] [get_bd_pins ila_0/probe12] [get_bd_pins sdram_ctrl_tmr_avs_0/avs_writedata]
  connect_bd_net -net clk_in1_1 [get_bd_ports clk_shared] [get_bd_pins clk_wiz_1/clk_in1]
  connect_bd_net -net clk_wiz_1_clk_blaze [get_bd_pins axi_amm_bridge_0/s_axi_aclk] [get_bd_pins axi_crossbar_0/aclk] [get_bd_pins axi_protocol_converter_0/aclk] [get_bd_pins axi_traffic_gen_0/s_axi_aclk] [get_bd_pins clk_wiz_1/clk_blaze] [get_bd_pins ila_0/clk] [get_bd_pins mdm_1/S_AXI_ACLK] [get_bd_pins microblaze_0/Clk] [get_bd_pins microblaze_0_axi_periph/ACLK] [get_bd_pins microblaze_0_axi_periph/M00_ACLK] [get_bd_pins microblaze_0_axi_periph/M01_ACLK] [get_bd_pins microblaze_0_axi_periph/S00_ACLK] [get_bd_pins microblaze_0_local_memory/LMB_Clk] [get_bd_pins rst_clk_wiz_1/slowest_sync_clk] [get_bd_pins sdram_ctrl_tmr_avs_0/csi_clock]
  connect_bd_net -net clk_wiz_1_clk_sdram [get_bd_ports clk_sdram] [get_bd_pins clk_wiz_1/clk_sdram]
  connect_bd_net -net clk_wiz_1_locked [get_bd_pins clk_wiz_1/locked] [get_bd_pins rst_clk_wiz_1/dcm_locked] [get_bd_pins sdram_ctrl_tmr_avs_0/rsi_reset_n]
  connect_bd_net -net mdm_1_debug_sys_rst [get_bd_pins mdm_1/Debug_SYS_Rst] [get_bd_pins rst_clk_wiz_1/mb_debug_sys_rst]
  connect_bd_net -net rst_clk_wiz_1_100M_bus_struct_reset [get_bd_pins microblaze_0_local_memory/SYS_Rst] [get_bd_pins rst_clk_wiz_1/bus_struct_reset]
  connect_bd_net -net rst_clk_wiz_1_100M_mb_reset [get_bd_pins microblaze_0/Reset] [get_bd_pins rst_clk_wiz_1/mb_reset]
  connect_bd_net -net rst_clk_wiz_1_interconnect_aresetn [get_bd_pins microblaze_0_axi_periph/ARESETN] [get_bd_pins rst_clk_wiz_1/interconnect_aresetn]
  connect_bd_net -net rst_clk_wiz_1_peripheral_aresetn [get_bd_pins axi_amm_bridge_0/s_axi_aresetn] [get_bd_pins axi_crossbar_0/aresetn] [get_bd_pins axi_protocol_converter_0/aresetn] [get_bd_pins axi_traffic_gen_0/s_axi_aresetn] [get_bd_pins mdm_1/S_AXI_ARESETN] [get_bd_pins microblaze_0_axi_periph/M00_ARESETN] [get_bd_pins microblaze_0_axi_periph/M01_ARESETN] [get_bd_pins microblaze_0_axi_periph/S00_ARESETN] [get_bd_pins rst_clk_wiz_1/peripheral_aresetn]
  connect_bd_net -net sdram_ctrl_tmr_avalon_0_addr_o [get_bd_ports addr_o] [get_bd_pins sdram_ctrl_tmr_avs_0/addr_o]
  connect_bd_net -net sdram_ctrl_tmr_avalon_0_avs_readdata [get_bd_pins axi_amm_bridge_0/avm_readdata] [get_bd_pins ila_0/probe8] [get_bd_pins sdram_ctrl_tmr_avs_0/avs_readdata]
  connect_bd_net -net sdram_ctrl_tmr_avalon_0_avs_waitrequest [get_bd_pins axi_amm_bridge_0/avm_waitrequest] [get_bd_pins ila_0/probe10] [get_bd_pins sdram_ctrl_tmr_avs_0/avs_waitrequest]
  connect_bd_net -net sdram_ctrl_tmr_avalon_0_bank_o [get_bd_ports bank_o] [get_bd_pins sdram_ctrl_tmr_avs_0/bank_o]
  connect_bd_net -net sdram_ctrl_tmr_avalon_0_cas_o [get_bd_ports cas_o] [get_bd_pins sdram_ctrl_tmr_avs_0/cas_o]
  connect_bd_net -net sdram_ctrl_tmr_avalon_0_cke_o [get_bd_ports cke_o] [get_bd_pins sdram_ctrl_tmr_avs_0/cke_o]
  connect_bd_net -net sdram_ctrl_tmr_avalon_0_cs_o [get_bd_ports cs_o] [get_bd_pins sdram_ctrl_tmr_avs_0/cs_o]
  connect_bd_net -net sdram_ctrl_tmr_avalon_0_dqm_o [get_bd_ports dqm_o] [get_bd_pins sdram_ctrl_tmr_avs_0/dqm_o]
  connect_bd_net -net sdram_ctrl_tmr_avalon_0_err_counter_o [get_bd_pins ila_0/probe2] [get_bd_pins sdram_ctrl_tmr_avs_0/err_counter_o]
  connect_bd_net -net sdram_ctrl_tmr_avalon_0_err_detect_o [get_bd_ports status_led] [get_bd_pins ila_0/probe1] [get_bd_pins sdram_ctrl_tmr_avs_0/err_detect_o]
  connect_bd_net -net sdram_ctrl_tmr_avalon_0_healing_proc_run_o [get_bd_pins ila_0/probe5] [get_bd_pins sdram_ctrl_tmr_avs_0/healing_proc_run_o]
  connect_bd_net -net sdram_ctrl_tmr_avalon_0_mem_ready_o [get_bd_pins axi_traffic_gen_0/core_ext_start] [get_bd_pins ila_0/probe0] [get_bd_pins sdram_ctrl_tmr_avs_0/mem_ready_o]
  connect_bd_net -net sdram_ctrl_tmr_avalon_0_ras_o [get_bd_ports ras_o] [get_bd_pins sdram_ctrl_tmr_avs_0/ras_o]
  connect_bd_net -net sdram_ctrl_tmr_avalon_0_scrubbing_proc_run_o [get_bd_pins ila_0/probe4] [get_bd_pins sdram_ctrl_tmr_avs_0/scrubbing_proc_run_o]
  connect_bd_net -net sdram_ctrl_tmr_avalon_0_voted_data_o [get_bd_pins ila_0/probe3] [get_bd_pins sdram_ctrl_tmr_avs_0/voted_data_o]
  connect_bd_net -net sdram_ctrl_tmr_avalon_0_we_o [get_bd_ports we_o] [get_bd_pins sdram_ctrl_tmr_avs_0/we_o]
  connect_bd_net -net sdram_ctrl_tmr_avs_0_avs_readdatavalid [get_bd_pins axi_amm_bridge_0/avm_readdatavalid] [get_bd_pins ila_0/probe9] [get_bd_pins sdram_ctrl_tmr_avs_0/avs_readdatavalid]
  connect_bd_net -net xlconstant_0_dout [get_bd_pins axi_traffic_gen_0/core_ext_stop] [get_bd_pins xlconstant_0/dout]
  connect_bd_net -net xlconstant_1_dout [get_bd_pins rst_clk_wiz_1/aux_reset_in] [get_bd_pins rst_clk_wiz_1/ext_reset_in] [get_bd_pins xlconstant_1/dout]

  # Create address segments
  create_bd_addr_seg -range 0x01000000 -offset 0x00000000 [get_bd_addr_spaces axi_traffic_gen_0/Data] [get_bd_addr_segs axi_amm_bridge_0/S_AXI_LITE/Reg] SEG_axi_amm_bridge_0_Reg
  create_bd_addr_seg -range 0x01000000 -offset 0x01000000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs axi_amm_bridge_0/S_AXI_LITE/Reg] SEG_axi_amm_bridge_0_Reg
  create_bd_addr_seg -range 0x00004000 -offset 0x00000000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs microblaze_0_local_memory/dlmb_bram_if_cntlr/SLMB/Mem] SEG_dlmb_bram_if_cntlr_Mem
  create_bd_addr_seg -range 0x00004000 -offset 0x00000000 [get_bd_addr_spaces microblaze_0/Instruction] [get_bd_addr_segs microblaze_0_local_memory/ilmb_bram_if_cntlr/SLMB/Mem] SEG_ilmb_bram_if_cntlr_Mem
  create_bd_addr_seg -range 0x00001000 -offset 0x41400000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs mdm_1/S_AXI/Reg] SEG_mdm_1_Reg

  # Perform GUI Layout
  regenerate_bd_layout -layout_string {
   guistr: "# # String gsaved with Nlview 6.6.5b  2016-09-06 bk=1.3687 VDI=39 GEI=35 GUI=JA:1.6
#  -string -flagsOSRD
preplace port cas_o -pg 1 -y 570 -defaultsOSRD
preplace port cke_o -pg 1 -y 470 -defaultsOSRD
preplace port cs_o -pg 1 -y 530 -defaultsOSRD
preplace port clk_sdram -pg 1 -y 450 -defaultsOSRD
preplace port we_o -pg 1 -y 590 -defaultsOSRD
preplace port status_led -pg 1 -y 670 -defaultsOSRD
preplace port ras_o -pg 1 -y 550 -defaultsOSRD
preplace port clk_shared -pg 1 -y 530 -defaultsOSRD
preplace portBus bank_o -pg 1 -y 490 -defaultsOSRD
preplace portBus dataQ_io -pg 1 -y 630 -defaultsOSRD
preplace portBus dqm_o -pg 1 -y 610 -defaultsOSRD
preplace portBus addr_o -pg 1 -y 510 -defaultsOSRD
preplace inst xlconstant_0 -pg 1 -lvl 3 -y 590 -defaultsOSRD
preplace inst axi_crossbar_0 -pg 1 -lvl 6 -y 320 -defaultsOSRD
preplace inst axi_protocol_converter_0 -pg 1 -lvl 5 -y 550 -defaultsOSRD
preplace inst axi_traffic_gen_0 -pg 1 -lvl 4 -y 560 -defaultsOSRD
preplace inst xlconstant_1 -pg 1 -lvl 1 -y 400 -defaultsOSRD
preplace inst rst_clk_wiz_1 -pg 1 -lvl 2 -y 420 -defaultsOSRD
preplace inst microblaze_0_axi_periph -pg 1 -lvl 5 -y 130 -defaultsOSRD
preplace inst axi_amm_bridge_0 -pg 1 -lvl 7 -y 340 -defaultsOSRD
preplace inst mdm_1 -pg 1 -lvl 3 -y 340 -defaultsOSRD
preplace inst ila_0 -pg 1 -lvl 9 -y 280 -defaultsOSRD
preplace inst sdram_ctrl_tmr_avs_0 -pg 1 -lvl 8 -y 610 -defaultsOSRD
preplace inst microblaze_0 -pg 1 -lvl 4 -y 350 -defaultsOSRD
preplace inst clk_wiz_1 -pg 1 -lvl 1 -y 530 -defaultsOSRD
preplace inst microblaze_0_local_memory -pg 1 -lvl 5 -y 360 -defaultsOSRD
preplace netloc xlconstant_1_dout 1 1 1 -250
preplace netloc axi_amm_bridge_0_avm_writedata 1 7 2 1740 410 NJ
preplace netloc rst_clk_wiz_1_interconnect_aresetn 1 2 3 NJ 440 NJ 440 890
preplace netloc axi_crossbar_0_M00_AXI 1 6 1 N
preplace netloc sdram_ctrl_tmr_avalon_0_voted_data_o 1 8 1 2200
preplace netloc sdram_ctrl_tmr_avalon_0_err_detect_o 1 8 2 2210 670 NJ
preplace netloc sdram_ctrl_tmr_avalon_0_cas_o 1 8 2 NJ 570 NJ
preplace netloc mdm_1_MBDEBUG_0 1 3 1 400
preplace netloc sdram_ctrl_tmr_avalon_0_mem_ready_o 1 3 6 430 480 NJ 480 NJ 480 NJ 480 1780J 400 2170
preplace netloc sdram_ctrl_tmr_avalon_0_ras_o 1 8 2 NJ 550 NJ
preplace netloc sdram_ctrl_tmr_avalon_0_cke_o 1 8 2 NJ 470 NJ
preplace netloc clk_wiz_1_clk_sdram 1 1 9 NJ 530 130J 460 NJ 460 NJ 460 NJ 460 NJ 460 1790J 420 2190J 460 2470J
preplace netloc clk_in1_1 1 0 1 N
preplace netloc axi_amm_bridge_0_avm_write 1 7 2 1750 390 NJ
preplace netloc axi_amm_bridge_0_avm_address 1 7 2 1830 290 NJ
preplace netloc microblaze_0_axi_periph_M00_AXI 1 5 1 1210
preplace netloc microblaze_0_M_AXI_DP 1 4 1 870
preplace netloc microblaze_0_ilmb_1 1 4 1 880
preplace netloc sdram_ctrl_tmr_avalon_0_healing_proc_run_o 1 8 1 2230
preplace netloc sdram_ctrl_tmr_avalon_0_avs_readdata 1 7 2 1820 330 NJ
preplace netloc sdram_ctrl_tmr_avalon_0_cs_o 1 8 2 NJ 530 NJ
preplace netloc axi_protocol_converter_0_M_AXI 1 5 1 1190
preplace netloc axi_traffic_gen_0_M_AXI 1 4 1 880
preplace netloc xlconstant_0_dout 1 3 1 NJ
preplace netloc rst_clk_wiz_1_100M_bus_struct_reset 1 2 3 90J 230 NJ 230 900
preplace netloc microblaze_0_axi_periph_M01_AXI 1 2 4 120 270 NJ 270 NJ 270 1190
preplace netloc sdram_ctrl_tmr_avs_0_avs_readdatavalid 1 7 2 1800 350 NJ
preplace netloc sdram_ctrl_tmr_avalon_0_scrubbing_proc_run_o 1 8 1 2220
preplace netloc clk_wiz_1_locked 1 1 7 -250 680 NJ 680 NJ 680 NJ 680 NJ 680 NJ 680 N
preplace netloc rst_clk_wiz_1_100M_mb_reset 1 2 2 100J 260 410
preplace netloc sdram_ctrl_tmr_avalon_0_avs_waitrequest 1 7 2 1760 370 NJ
preplace netloc axi_amm_bridge_0_avm_read 1 7 2 1810 310 NJ
preplace netloc microblaze_0_dlmb_1 1 4 1 920
preplace netloc Net1 1 8 2 NJ 630 NJ
preplace netloc sdram_ctrl_tmr_avalon_0_addr_o 1 8 2 NJ 510 NJ
preplace netloc clk_wiz_1_clk_blaze 1 1 8 -260 700 110 700 420 700 910 700 1200 700 1450 700 1770 150 NJ
preplace netloc rst_clk_wiz_1_peripheral_aresetn 1 2 5 120 470 400 470 930 470 1210 470 1460J
preplace netloc mdm_1_debug_sys_rst 1 1 3 -240 220 NJ 220 390
preplace netloc sdram_ctrl_tmr_avalon_0_err_counter_o 1 8 1 2180
preplace netloc sdram_ctrl_tmr_avalon_0_dqm_o 1 8 2 NJ 610 NJ
preplace netloc sdram_ctrl_tmr_avalon_0_we_o 1 8 2 NJ 590 NJ
preplace netloc sdram_ctrl_tmr_avalon_0_bank_o 1 8 2 NJ 490 NJ
levelinfo -pg 1 -450 -340 -70 260 650 1060 1330 1600 2010 2380 2490 -top -10 -bot 1610
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


