create_property iob port -type string
### This file is a general .xdc for the SEUD Board Rev. A
### To use it in a project:
### - uncomment the lines corresponding to used pins
### - rename the used ports (in each line, after get_ports) according to the top level signal names in the project

## Clock Signal
set_property -dict {PACKAGE_PIN U22 IOSTANDARD LVCMOS18} [get_ports clk_shared]

## LEDs
set_property -dict {PACKAGE_PIN AE2 IOSTANDARD LVCMOS18} [get_ports status_led]
set_property SLEW SLOW [get_ports status_led]

## BRIDGE
#set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets sck_IBUF]
#set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets sck_IBUF_BUFG]

## SDRAM
set_property IOSTANDARD LVCMOS18 [get_ports clk_sdram]
set_property PACKAGE_PIN B17 [get_ports clk_sdram]
set_property -dict {PACKAGE_PIN D6 IOSTANDARD LVCMOS18} [get_ports cke_o]
set_property -dict {PACKAGE_PIN G4 IOSTANDARD LVCMOS18} [get_ports ras_o]
set_property -dict {PACKAGE_PIN G5 IOSTANDARD LVCMOS18} [get_ports {bank_o[0]}]
set_property -dict {PACKAGE_PIN F4 IOSTANDARD LVCMOS18} [get_ports {bank_o[1]}]
set_property -dict {PACKAGE_PIN F5 IOSTANDARD LVCMOS18} [get_ports {addr_o[3]}]
set_property -dict {PACKAGE_PIN E5 IOSTANDARD LVCMOS18} [get_ports {addr_o[0]}]
set_property -dict {PACKAGE_PIN D4 IOSTANDARD LVCMOS18} [get_ports we_o]
set_property -dict {PACKAGE_PIN C17 IOSTANDARD LVCMOS18} [get_ports {addr_o[4]}]
set_property -dict {PACKAGE_PIN C4 IOSTANDARD LVCMOS18} [get_ports {dataQ_io[3]}]
set_property -dict {PACKAGE_PIN B5 IOSTANDARD LVCMOS18} [get_ports {dataQ_io[0]}]
set_property -dict {PACKAGE_PIN A5 IOSTANDARD LVCMOS18} [get_ports {dataQ_io[2]}]
set_property -dict {PACKAGE_PIN B4 IOSTANDARD LVCMOS18} [get_ports {dataQ_io[1]}]
set_property -dict {PACKAGE_PIN D3 IOSTANDARD LVCMOS18} [get_ports {addr_o[1]}]
set_property -dict {PACKAGE_PIN E3 IOSTANDARD LVCMOS18} [get_ports {addr_o[2]}]
set_property -dict {PACKAGE_PIN C2 IOSTANDARD LVCMOS18} [get_ports {dataQ_io[7]}]
set_property -dict {PACKAGE_PIN A3 IOSTANDARD LVCMOS18} [get_ports {dataQ_io[6]}]
set_property -dict {PACKAGE_PIN A2 IOSTANDARD LVCMOS18} [get_ports {dataQ_io[5]}]
set_property -dict {PACKAGE_PIN A4 IOSTANDARD LVCMOS18} [get_ports {dataQ_io[4]}]
set_property -dict {PACKAGE_PIN A22 IOSTANDARD LVCMOS18} [get_ports {dataQ_io[8]}]
set_property -dict {PACKAGE_PIN A20 IOSTANDARD LVCMOS18} [get_ports {dataQ_io[9]}]
set_property -dict {PACKAGE_PIN B21 IOSTANDARD LVCMOS18} [get_ports {dataQ_io[10]}]
set_property -dict {PACKAGE_PIN E16 IOSTANDARD LVCMOS18} [get_ports {addr_o[9]}]
set_property -dict {PACKAGE_PIN D16 IOSTANDARD LVCMOS18} [get_ports {dataQ_io[13]}]
set_property -dict {PACKAGE_PIN A17 IOSTANDARD LVCMOS18} [get_ports {dataQ_io[14]}]
set_property -dict {PACKAGE_PIN A18 IOSTANDARD LVCMOS18} [get_ports {dataQ_io[11]}]
set_property -dict {PACKAGE_PIN A19 IOSTANDARD LVCMOS18} [get_ports {dataQ_io[12]}]
set_property -dict {PACKAGE_PIN E17 IOSTANDARD LVCMOS18} [get_ports {addr_o[6]}]
set_property -dict {PACKAGE_PIN E18 IOSTANDARD LVCMOS18} [get_ports {dqm_o[1]}]
set_property -dict {PACKAGE_PIN C18 IOSTANDARD LVCMOS18} [get_ports {addr_o[12]}]
set_property -dict {PACKAGE_PIN D19 IOSTANDARD LVCMOS18} [get_ports {addr_o[8]}]
set_property -dict {PACKAGE_PIN C19 IOSTANDARD LVCMOS18} [get_ports {addr_o[7]}]
set_property -dict {PACKAGE_PIN B20 IOSTANDARD LVCMOS18} [get_ports {addr_o[5]}]
set_property -dict {PACKAGE_PIN C3 IOSTANDARD LVCMOS18} [get_ports {addr_o[10]}]
set_property -dict {PACKAGE_PIN B2 IOSTANDARD LVCMOS18} [get_ports {dqm_o[0]}]
set_property -dict {PACKAGE_PIN F15 IOSTANDARD LVCMOS18} [get_ports {dataQ_io[15]}]
set_property -dict {PACKAGE_PIN B19 IOSTANDARD LVCMOS18} [get_ports {addr_o[11]}]
set_property -dict {PACKAGE_PIN F3 IOSTANDARD LVCMOS18} [get_ports cs_o]
set_property -dict {PACKAGE_PIN E6 IOSTANDARD LVCMOS18} [get_ports cas_o]
set_property PULLUP true [get_ports cas_o]
set_property PULLUP true [get_ports cs_o]
set_property PULLUP true [get_ports we_o]
set_property PULLUP true [get_ports ras_o]
set_property PULLUP true [get_ports cke_o]

set_property LOAD 5 [get_ports {addr_o[0]}]
set_property LOAD 5 [get_ports {addr_o[10]}]
set_property LOAD 5 [get_ports {addr_o[11]}]
set_property LOAD 5 [get_ports {addr_o[12]}]
set_property LOAD 5 [get_ports {addr_o[1]}]
set_property LOAD 5 [get_ports {addr_o[2]}]
set_property LOAD 5 [get_ports {addr_o[3]}]
set_property LOAD 5 [get_ports {addr_o[4]}]
set_property LOAD 5 [get_ports {addr_o[5]}]
set_property LOAD 5 [get_ports {addr_o[6]}]
set_property LOAD 5 [get_ports {addr_o[7]}]
set_property LOAD 5 [get_ports {addr_o[8]}]
set_property LOAD 5 [get_ports {addr_o[9]}]
set_property LOAD 5 [get_ports {bank_o[0]}]
set_property LOAD 5 [get_ports {bank_o[1]}]
set_property LOAD 5 [get_ports cas_o]
set_property LOAD 5 [get_ports cke_o]
set_property LOAD 5 [get_ports clk_sdram]
set_property LOAD 5 [get_ports cs_o]
set_property LOAD 5 [get_ports {dataQ_io[0]}]
set_property LOAD 5 [get_ports {dataQ_io[10]}]
set_property LOAD 5 [get_ports {dataQ_io[11]}]
set_property LOAD 5 [get_ports {dataQ_io[12]}]
set_property LOAD 5 [get_ports {dataQ_io[13]}]
set_property LOAD 5 [get_ports {dataQ_io[14]}]
set_property LOAD 5 [get_ports {dataQ_io[15]}]
set_property LOAD 5 [get_ports {dataQ_io[1]}]
set_property LOAD 5 [get_ports {dataQ_io[2]}]
set_property LOAD 5 [get_ports {dataQ_io[3]}]
set_property LOAD 5 [get_ports {dataQ_io[4]}]
set_property LOAD 5 [get_ports {dataQ_io[5]}]
set_property LOAD 5 [get_ports {dataQ_io[6]}]
set_property LOAD 5 [get_ports {dataQ_io[7]}]
set_property LOAD 5 [get_ports {dataQ_io[8]}]
set_property LOAD 5 [get_ports {dataQ_io[9]}]
set_property LOAD 5 [get_ports {dqm_o[0]}]
set_property LOAD 5 [get_ports {dqm_o[1]}]
set_property LOAD 5 [get_ports ras_o]
set_property LOAD 5 [get_ports status_led]
set_property LOAD 5 [get_ports we_o]
set_load 5.000 [all_outputs]
set_operating_conditions -ambient_temp 15.0
set_operating_conditions -airflow 0
set_operating_conditions -board_layers 4to7
set_operating_conditions -board small
set_operating_conditions -heatsink none
set_switching_activity -deassert_resets 
set_switching_activity -deassert_resets 
set_switching_activity -toggle_rate 12.500 -type {lut} -static_probability 0.500 -all 
set_switching_activity -toggle_rate 12.500 -type {register} -static_probability 0.500 -all 
set_switching_activity -toggle_rate 12.500 -type {shift_register} -static_probability 0.500 -all 
set_switching_activity -toggle_rate 12.500 -type {lut_ram} -static_probability 0.500 -all 
set_switching_activity -toggle_rate 12.500 -type {bram} -static_probability 0.500 -all 
set_switching_activity -toggle_rate 12.500 -type {dsp} -static_probability 0.500 -all 
set_switching_activity -toggle_rate 12.500 -type {io_output} -static_probability 0.500 -all 
set_switching_activity -toggle_rate 12.500 -type {bram_enable} -static_probability 0.500 -all 
set_switching_activity -toggle_rate 12.500 -type {bram_wr_enable} -static_probability 0.500 -all 
set_switching_activity -toggle_rate 12.500 -type {io_bidir_enable} -static_probability 0.500 -all 

set_switching_activity -deassert_resets 
set_switching_activity -toggle_rate 12.500 -type {lut} -static_probability 0.500 -all 
set_switching_activity -toggle_rate 12.500 -type {register} -static_probability 0.500 -all 
set_switching_activity -toggle_rate 12.500 -type {shift_register} -static_probability 0.500 -all 
set_switching_activity -toggle_rate 12.500 -type {lut_ram} -static_probability 0.500 -all 
set_switching_activity -toggle_rate 12.500 -type {bram} -static_probability 0.500 -all 
set_switching_activity -toggle_rate 12.500 -type {dsp} -static_probability 0.500 -all 
set_switching_activity -toggle_rate 12.500 -type {io_output} -static_probability 0.500 -all 
set_switching_activity -toggle_rate 12.500 -type {bram_enable} -static_probability 0.500 -all 
set_switching_activity -toggle_rate 12.500 -type {bram_wr_enable} -static_probability 0.500 -all 
set_switching_activity -toggle_rate 12.500 -type {io_bidir_enable} -static_probability 0.500 -all 

set_switching_activity -deassert_resets 
set_switching_activity -toggle_rate 12.500 -type {lut} -static_probability 0.500 -all 
set_switching_activity -toggle_rate 12.500 -type {register} -static_probability 0.500 -all 
set_switching_activity -toggle_rate 12.500 -type {shift_register} -static_probability 0.500 -all 
set_switching_activity -toggle_rate 12.500 -type {lut_ram} -static_probability 0.500 -all 
set_switching_activity -toggle_rate 12.500 -type {bram} -static_probability 0.500 -all 
set_switching_activity -toggle_rate 12.500 -type {dsp} -static_probability 0.500 -all 
set_switching_activity -toggle_rate 12.500 -type {io_output} -static_probability 0.500 -all 
set_switching_activity -toggle_rate 12.500 -type {bram_enable} -static_probability 0.500 -all 
set_switching_activity -toggle_rate 12.500 -type {bram_wr_enable} -static_probability 0.500 -all 
set_switching_activity -toggle_rate 12.500 -type {io_bidir_enable} -static_probability 0.500 -all 
set_switching_activity -deassert_resets 
set_switching_activity -toggle_rate 12.500 -type {lut} -static_probability 0.500 -all 
set_switching_activity -toggle_rate 12.500 -type {register} -static_probability 0.500 -all 
set_switching_activity -toggle_rate 12.500 -type {shift_register} -static_probability 0.500 -all 
set_switching_activity -toggle_rate 12.500 -type {lut_ram} -static_probability 0.500 -all 
set_switching_activity -toggle_rate 12.500 -type {bram} -static_probability 0.500 -all 
set_switching_activity -toggle_rate 12.500 -type {dsp} -static_probability 0.500 -all 
set_switching_activity -toggle_rate 12.500 -type {io_output} -static_probability 0.500 -all 
set_switching_activity -toggle_rate 12.500 -type {bram_enable} -static_probability 0.500 -all 
set_switching_activity -toggle_rate 12.500 -type {bram_wr_enable} -static_probability 0.500 -all 
set_switching_activity -toggle_rate 12.500 -type {io_bidir_enable} -static_probability 0.500 -all 

set_switching_activity -deassert_resets 
set_switching_activity -toggle_rate 12.500 -type {lut} -static_probability 0.500 -all 
set_switching_activity -toggle_rate 12.500 -type {register} -static_probability 0.500 -all 
set_switching_activity -toggle_rate 12.500 -type {shift_register} -static_probability 0.500 -all 
set_switching_activity -toggle_rate 12.500 -type {lut_ram} -static_probability 0.500 -all 
set_switching_activity -toggle_rate 12.500 -type {bram} -static_probability 0.500 -all 
set_switching_activity -toggle_rate 12.500 -type {dsp} -static_probability 0.500 -all 
set_switching_activity -toggle_rate 12.500 -type {io_output} -static_probability 0.500 -all 
set_switching_activity -toggle_rate 12.500 -type {bram_enable} -static_probability 0.500 -all 
set_switching_activity -toggle_rate 12.500 -type {bram_wr_enable} -static_probability 0.500 -all 
set_switching_activity -toggle_rate 12.500 -type {io_bidir_enable} -static_probability 0.500 -all 

set_property C_CLK_INPUT_FREQ_HZ 48000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER true [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets clk]
