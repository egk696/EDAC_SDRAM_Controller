# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  ipgui::add_param $IPINST -name "DATA_WIDTH"
  ipgui::add_param $IPINST -name "DQM_WIDTH"
  ipgui::add_param $IPINST -name "ROW_WIDTH"
  ipgui::add_param $IPINST -name "COLS_WIDTH"
  ipgui::add_param $IPINST -name "BANK_WIDTH"
  ipgui::add_param $IPINST -name "NOP_BOOT_CYCLES"
  ipgui::add_param $IPINST -name "REF_PERIOD"
  ipgui::add_param $IPINST -name "REF_COMMAND_COUNT"
  ipgui::add_param $IPINST -name "REF_COMMAND_PERIOD"
  ipgui::add_param $IPINST -name "PRECH_COMMAND_PERIOD"
  ipgui::add_param $IPINST -name "ACT_TO_RW_CYCLES"
  ipgui::add_param $IPINST -name "IN_DATA_TO_PRE"
  ipgui::add_param $IPINST -name "CAS_LAT_CYCLES"
  ipgui::add_param $IPINST -name "MODE_REG_CYCLES"
  ipgui::add_param $IPINST -name "BURST_LENGTH"
  ipgui::add_param $IPINST -name "DRIVE_STRENGTH"
  ipgui::add_param $IPINST -name "RAM_COLS"
  ipgui::add_param $IPINST -name "RAM_ROWS"
  ipgui::add_param $IPINST -name "RAM_BANKS"
  ipgui::add_param $IPINST -name "TMR_COLS"
  ipgui::add_param $IPINST -name "SCRUBBER_WAIT_CYCLES"
  ipgui::add_param $IPINST -name "EXT_MODE_REG_EN"
  ipgui::add_param $IPINST -name "GEN_ERR_INJ"

}

proc update_PARAM_VALUE.ACT_TO_RW_CYCLES { PARAM_VALUE.ACT_TO_RW_CYCLES } {
	# Procedure called to update ACT_TO_RW_CYCLES when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ACT_TO_RW_CYCLES { PARAM_VALUE.ACT_TO_RW_CYCLES } {
	# Procedure called to validate ACT_TO_RW_CYCLES
	return true
}

proc update_PARAM_VALUE.BANK_WIDTH { PARAM_VALUE.BANK_WIDTH } {
	# Procedure called to update BANK_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.BANK_WIDTH { PARAM_VALUE.BANK_WIDTH } {
	# Procedure called to validate BANK_WIDTH
	return true
}

proc update_PARAM_VALUE.BURST_LENGTH { PARAM_VALUE.BURST_LENGTH } {
	# Procedure called to update BURST_LENGTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.BURST_LENGTH { PARAM_VALUE.BURST_LENGTH } {
	# Procedure called to validate BURST_LENGTH
	return true
}

proc update_PARAM_VALUE.CAS_LAT_CYCLES { PARAM_VALUE.CAS_LAT_CYCLES } {
	# Procedure called to update CAS_LAT_CYCLES when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.CAS_LAT_CYCLES { PARAM_VALUE.CAS_LAT_CYCLES } {
	# Procedure called to validate CAS_LAT_CYCLES
	return true
}

proc update_PARAM_VALUE.COLS_WIDTH { PARAM_VALUE.COLS_WIDTH } {
	# Procedure called to update COLS_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.COLS_WIDTH { PARAM_VALUE.COLS_WIDTH } {
	# Procedure called to validate COLS_WIDTH
	return true
}

proc update_PARAM_VALUE.DATA_WIDTH { PARAM_VALUE.DATA_WIDTH } {
	# Procedure called to update DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DATA_WIDTH { PARAM_VALUE.DATA_WIDTH } {
	# Procedure called to validate DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.DQM_WIDTH { PARAM_VALUE.DQM_WIDTH } {
	# Procedure called to update DQM_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DQM_WIDTH { PARAM_VALUE.DQM_WIDTH } {
	# Procedure called to validate DQM_WIDTH
	return true
}

proc update_PARAM_VALUE.DRIVE_STRENGTH { PARAM_VALUE.DRIVE_STRENGTH } {
	# Procedure called to update DRIVE_STRENGTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DRIVE_STRENGTH { PARAM_VALUE.DRIVE_STRENGTH } {
	# Procedure called to validate DRIVE_STRENGTH
	return true
}

proc update_PARAM_VALUE.EXT_MODE_REG_EN { PARAM_VALUE.EXT_MODE_REG_EN } {
	# Procedure called to update EXT_MODE_REG_EN when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.EXT_MODE_REG_EN { PARAM_VALUE.EXT_MODE_REG_EN } {
	# Procedure called to validate EXT_MODE_REG_EN
	return true
}

proc update_PARAM_VALUE.GEN_ERR_INJ { PARAM_VALUE.GEN_ERR_INJ } {
	# Procedure called to update GEN_ERR_INJ when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.GEN_ERR_INJ { PARAM_VALUE.GEN_ERR_INJ } {
	# Procedure called to validate GEN_ERR_INJ
	return true
}

proc update_PARAM_VALUE.IN_DATA_TO_PRE { PARAM_VALUE.IN_DATA_TO_PRE } {
	# Procedure called to update IN_DATA_TO_PRE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.IN_DATA_TO_PRE { PARAM_VALUE.IN_DATA_TO_PRE } {
	# Procedure called to validate IN_DATA_TO_PRE
	return true
}

proc update_PARAM_VALUE.MODE_REG_CYCLES { PARAM_VALUE.MODE_REG_CYCLES } {
	# Procedure called to update MODE_REG_CYCLES when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.MODE_REG_CYCLES { PARAM_VALUE.MODE_REG_CYCLES } {
	# Procedure called to validate MODE_REG_CYCLES
	return true
}

proc update_PARAM_VALUE.NOP_BOOT_CYCLES { PARAM_VALUE.NOP_BOOT_CYCLES } {
	# Procedure called to update NOP_BOOT_CYCLES when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NOP_BOOT_CYCLES { PARAM_VALUE.NOP_BOOT_CYCLES } {
	# Procedure called to validate NOP_BOOT_CYCLES
	return true
}

proc update_PARAM_VALUE.PRECH_COMMAND_PERIOD { PARAM_VALUE.PRECH_COMMAND_PERIOD } {
	# Procedure called to update PRECH_COMMAND_PERIOD when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.PRECH_COMMAND_PERIOD { PARAM_VALUE.PRECH_COMMAND_PERIOD } {
	# Procedure called to validate PRECH_COMMAND_PERIOD
	return true
}

proc update_PARAM_VALUE.RAM_BANKS { PARAM_VALUE.RAM_BANKS } {
	# Procedure called to update RAM_BANKS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.RAM_BANKS { PARAM_VALUE.RAM_BANKS } {
	# Procedure called to validate RAM_BANKS
	return true
}

proc update_PARAM_VALUE.RAM_COLS { PARAM_VALUE.RAM_COLS } {
	# Procedure called to update RAM_COLS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.RAM_COLS { PARAM_VALUE.RAM_COLS } {
	# Procedure called to validate RAM_COLS
	return true
}

proc update_PARAM_VALUE.RAM_ROWS { PARAM_VALUE.RAM_ROWS } {
	# Procedure called to update RAM_ROWS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.RAM_ROWS { PARAM_VALUE.RAM_ROWS } {
	# Procedure called to validate RAM_ROWS
	return true
}

proc update_PARAM_VALUE.REF_COMMAND_COUNT { PARAM_VALUE.REF_COMMAND_COUNT } {
	# Procedure called to update REF_COMMAND_COUNT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.REF_COMMAND_COUNT { PARAM_VALUE.REF_COMMAND_COUNT } {
	# Procedure called to validate REF_COMMAND_COUNT
	return true
}

proc update_PARAM_VALUE.REF_COMMAND_PERIOD { PARAM_VALUE.REF_COMMAND_PERIOD } {
	# Procedure called to update REF_COMMAND_PERIOD when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.REF_COMMAND_PERIOD { PARAM_VALUE.REF_COMMAND_PERIOD } {
	# Procedure called to validate REF_COMMAND_PERIOD
	return true
}

proc update_PARAM_VALUE.REF_PERIOD { PARAM_VALUE.REF_PERIOD } {
	# Procedure called to update REF_PERIOD when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.REF_PERIOD { PARAM_VALUE.REF_PERIOD } {
	# Procedure called to validate REF_PERIOD
	return true
}

proc update_PARAM_VALUE.ROW_WIDTH { PARAM_VALUE.ROW_WIDTH } {
	# Procedure called to update ROW_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ROW_WIDTH { PARAM_VALUE.ROW_WIDTH } {
	# Procedure called to validate ROW_WIDTH
	return true
}

proc update_PARAM_VALUE.SCRUBBER_WAIT_CYCLES { PARAM_VALUE.SCRUBBER_WAIT_CYCLES } {
	# Procedure called to update SCRUBBER_WAIT_CYCLES when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.SCRUBBER_WAIT_CYCLES { PARAM_VALUE.SCRUBBER_WAIT_CYCLES } {
	# Procedure called to validate SCRUBBER_WAIT_CYCLES
	return true
}

proc update_PARAM_VALUE.TMR_COLS { PARAM_VALUE.TMR_COLS } {
	# Procedure called to update TMR_COLS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.TMR_COLS { PARAM_VALUE.TMR_COLS } {
	# Procedure called to validate TMR_COLS
	return true
}


proc update_MODELPARAM_VALUE.DATA_WIDTH { MODELPARAM_VALUE.DATA_WIDTH PARAM_VALUE.DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DATA_WIDTH}] ${MODELPARAM_VALUE.DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.DQM_WIDTH { MODELPARAM_VALUE.DQM_WIDTH PARAM_VALUE.DQM_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DQM_WIDTH}] ${MODELPARAM_VALUE.DQM_WIDTH}
}

proc update_MODELPARAM_VALUE.ROW_WIDTH { MODELPARAM_VALUE.ROW_WIDTH PARAM_VALUE.ROW_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ROW_WIDTH}] ${MODELPARAM_VALUE.ROW_WIDTH}
}

proc update_MODELPARAM_VALUE.COLS_WIDTH { MODELPARAM_VALUE.COLS_WIDTH PARAM_VALUE.COLS_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.COLS_WIDTH}] ${MODELPARAM_VALUE.COLS_WIDTH}
}

proc update_MODELPARAM_VALUE.BANK_WIDTH { MODELPARAM_VALUE.BANK_WIDTH PARAM_VALUE.BANK_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.BANK_WIDTH}] ${MODELPARAM_VALUE.BANK_WIDTH}
}

proc update_MODELPARAM_VALUE.NOP_BOOT_CYCLES { MODELPARAM_VALUE.NOP_BOOT_CYCLES PARAM_VALUE.NOP_BOOT_CYCLES } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NOP_BOOT_CYCLES}] ${MODELPARAM_VALUE.NOP_BOOT_CYCLES}
}

proc update_MODELPARAM_VALUE.REF_PERIOD { MODELPARAM_VALUE.REF_PERIOD PARAM_VALUE.REF_PERIOD } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.REF_PERIOD}] ${MODELPARAM_VALUE.REF_PERIOD}
}

proc update_MODELPARAM_VALUE.REF_COMMAND_COUNT { MODELPARAM_VALUE.REF_COMMAND_COUNT PARAM_VALUE.REF_COMMAND_COUNT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.REF_COMMAND_COUNT}] ${MODELPARAM_VALUE.REF_COMMAND_COUNT}
}

proc update_MODELPARAM_VALUE.REF_COMMAND_PERIOD { MODELPARAM_VALUE.REF_COMMAND_PERIOD PARAM_VALUE.REF_COMMAND_PERIOD } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.REF_COMMAND_PERIOD}] ${MODELPARAM_VALUE.REF_COMMAND_PERIOD}
}

proc update_MODELPARAM_VALUE.PRECH_COMMAND_PERIOD { MODELPARAM_VALUE.PRECH_COMMAND_PERIOD PARAM_VALUE.PRECH_COMMAND_PERIOD } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.PRECH_COMMAND_PERIOD}] ${MODELPARAM_VALUE.PRECH_COMMAND_PERIOD}
}

proc update_MODELPARAM_VALUE.ACT_TO_RW_CYCLES { MODELPARAM_VALUE.ACT_TO_RW_CYCLES PARAM_VALUE.ACT_TO_RW_CYCLES } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ACT_TO_RW_CYCLES}] ${MODELPARAM_VALUE.ACT_TO_RW_CYCLES}
}

proc update_MODELPARAM_VALUE.IN_DATA_TO_PRE { MODELPARAM_VALUE.IN_DATA_TO_PRE PARAM_VALUE.IN_DATA_TO_PRE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.IN_DATA_TO_PRE}] ${MODELPARAM_VALUE.IN_DATA_TO_PRE}
}

proc update_MODELPARAM_VALUE.CAS_LAT_CYCLES { MODELPARAM_VALUE.CAS_LAT_CYCLES PARAM_VALUE.CAS_LAT_CYCLES } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.CAS_LAT_CYCLES}] ${MODELPARAM_VALUE.CAS_LAT_CYCLES}
}

proc update_MODELPARAM_VALUE.MODE_REG_CYCLES { MODELPARAM_VALUE.MODE_REG_CYCLES PARAM_VALUE.MODE_REG_CYCLES } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.MODE_REG_CYCLES}] ${MODELPARAM_VALUE.MODE_REG_CYCLES}
}

proc update_MODELPARAM_VALUE.BURST_LENGTH { MODELPARAM_VALUE.BURST_LENGTH PARAM_VALUE.BURST_LENGTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.BURST_LENGTH}] ${MODELPARAM_VALUE.BURST_LENGTH}
}

proc update_MODELPARAM_VALUE.DRIVE_STRENGTH { MODELPARAM_VALUE.DRIVE_STRENGTH PARAM_VALUE.DRIVE_STRENGTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DRIVE_STRENGTH}] ${MODELPARAM_VALUE.DRIVE_STRENGTH}
}

proc update_MODELPARAM_VALUE.RAM_COLS { MODELPARAM_VALUE.RAM_COLS PARAM_VALUE.RAM_COLS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.RAM_COLS}] ${MODELPARAM_VALUE.RAM_COLS}
}

proc update_MODELPARAM_VALUE.RAM_ROWS { MODELPARAM_VALUE.RAM_ROWS PARAM_VALUE.RAM_ROWS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.RAM_ROWS}] ${MODELPARAM_VALUE.RAM_ROWS}
}

proc update_MODELPARAM_VALUE.RAM_BANKS { MODELPARAM_VALUE.RAM_BANKS PARAM_VALUE.RAM_BANKS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.RAM_BANKS}] ${MODELPARAM_VALUE.RAM_BANKS}
}

proc update_MODELPARAM_VALUE.TMR_COLS { MODELPARAM_VALUE.TMR_COLS PARAM_VALUE.TMR_COLS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.TMR_COLS}] ${MODELPARAM_VALUE.TMR_COLS}
}

proc update_MODELPARAM_VALUE.SCRUBBER_WAIT_CYCLES { MODELPARAM_VALUE.SCRUBBER_WAIT_CYCLES PARAM_VALUE.SCRUBBER_WAIT_CYCLES } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.SCRUBBER_WAIT_CYCLES}] ${MODELPARAM_VALUE.SCRUBBER_WAIT_CYCLES}
}

proc update_MODELPARAM_VALUE.EXT_MODE_REG_EN { MODELPARAM_VALUE.EXT_MODE_REG_EN PARAM_VALUE.EXT_MODE_REG_EN } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.EXT_MODE_REG_EN}] ${MODELPARAM_VALUE.EXT_MODE_REG_EN}
}

proc update_MODELPARAM_VALUE.GEN_ERR_INJ { MODELPARAM_VALUE.GEN_ERR_INJ PARAM_VALUE.GEN_ERR_INJ } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.GEN_ERR_INJ}] ${MODELPARAM_VALUE.GEN_ERR_INJ}
}

