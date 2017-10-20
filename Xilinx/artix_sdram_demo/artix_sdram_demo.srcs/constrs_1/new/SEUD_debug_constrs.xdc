#set_property MARK_DEBUG false [get_nets DemoSDRAM_i/sdram_ctrl_tmr_avalon_0/U0/sdram_ctrl_tmr_inst_n_83]
#set_property MARK_DEBUG false [get_nets DemoSDRAM_i/sdram_ctrl_tmr_avalon_0/U0/sdram_ctrl_tmr_inst_n_87]
#set_property MARK_DEBUG false [get_nets DemoSDRAM_i/sdram_ctrl_tmr_avalon_0/U0/sdram_ctrl_tmr_inst_n_84]
#set_property MARK_DEBUG false [get_nets DemoSDRAM_i/sdram_ctrl_tmr_avalon_0/U0/sdram_ctrl_tmr_inst_n_86]
#set_property MARK_DEBUG false [get_nets DemoSDRAM_i/sdram_ctrl_tmr_avalon_0/U0/sdram_ctrl_tmr_inst_n_85]
#set_property MARK_DEBUG false [get_nets DemoSDRAM_i/sdram_ctrl_tmr_avalon_0/U0/sdram_ctrl_tmr_inst_n_88]
#set_property MARK_DEBUG false [get_nets DemoSDRAM_i/sdram_ctrl_tmr_avalon_0/U0/sdram_ctrl_tmr_inst_n_89]

##create_debug_core u_ila_0 ila
##set_property ALL_PROBE_SAME_MU true [get_debug_cores u_ila_0]
##set_property ALL_PROBE_SAME_MU_CNT 2 [get_debug_cores u_ila_0]
##set_property C_ADV_TRIGGER false [get_debug_cores u_ila_0]
##set_property C_DATA_DEPTH 16384 [get_debug_cores u_ila_0]
##set_property C_EN_STRG_QUAL true [get_debug_cores u_ila_0]
##set_property C_INPUT_PIPE_STAGES 0 [get_debug_cores u_ila_0]
##set_property C_TRIGIN_EN false [get_debug_cores u_ila_0]
##set_property C_TRIGOUT_EN false [get_debug_cores u_ila_0]
##set_property port_width 1 [get_debug_ports u_ila_0/clk]
##connect_debug_port u_ila_0/clk [get_nets [list u_ila_0_clk_blaze]]
##set_property PROBE_TYPE DATA [get_debug_ports u_ila_0/probe0]
##set_property port_width 16 [get_debug_ports u_ila_0/probe0]
##connect_debug_port u_ila_0/probe0 [get_nets [list {DemoSDRAM_i/sdram_ctrl_tmr_avalon_0/voted_data_o[0]} {DemoSDRAM_i/sdram_ctrl_tmr_avalon_0/voted_data_o[1]} {DemoSDRAM_i/sdram_ctrl_tmr_avalon_0/voted_data_o[2]} {DemoSDRAM_i/sdram_ctrl_tmr_avalon_0/voted_data_o[3]} {DemoSDRAM_i/sdram_ctrl_tmr_avalon_0/voted_data_o[4]} {DemoSDRAM_i/sdram_ctrl_tmr_avalon_0/voted_data_o[5]} {DemoSDRAM_i/sdram_ctrl_tmr_avalon_0/voted_data_o[6]} {DemoSDRAM_i/sdram_ctrl_tmr_avalon_0/voted_data_o[7]} {DemoSDRAM_i/sdram_ctrl_tmr_avalon_0/voted_data_o[8]} {DemoSDRAM_i/sdram_ctrl_tmr_avalon_0/voted_data_o[9]} {DemoSDRAM_i/sdram_ctrl_tmr_avalon_0/voted_data_o[10]} {DemoSDRAM_i/sdram_ctrl_tmr_avalon_0/voted_data_o[11]} {DemoSDRAM_i/sdram_ctrl_tmr_avalon_0/voted_data_o[12]} {DemoSDRAM_i/sdram_ctrl_tmr_avalon_0/voted_data_o[13]} {DemoSDRAM_i/sdram_ctrl_tmr_avalon_0/voted_data_o[14]} {DemoSDRAM_i/sdram_ctrl_tmr_avalon_0/voted_data_o[15]}]]
##create_debug_port u_ila_0 probe
##set_property PROBE_TYPE DATA [get_debug_ports u_ila_0/probe1]
##set_property port_width 16 [get_debug_ports u_ila_0/probe1]
##connect_debug_port u_ila_0/probe1 [get_nets [list {DemoSDRAM_i/sdram_ctrl_tmr_avalon_0_err_counter_o[0]} {DemoSDRAM_i/sdram_ctrl_tmr_avalon_0_err_counter_o[1]} {DemoSDRAM_i/sdram_ctrl_tmr_avalon_0_err_counter_o[2]} {DemoSDRAM_i/sdram_ctrl_tmr_avalon_0_err_counter_o[3]} {DemoSDRAM_i/sdram_ctrl_tmr_avalon_0_err_counter_o[4]} {DemoSDRAM_i/sdram_ctrl_tmr_avalon_0_err_counter_o[5]} {DemoSDRAM_i/sdram_ctrl_tmr_avalon_0_err_counter_o[6]} {DemoSDRAM_i/sdram_ctrl_tmr_avalon_0_err_counter_o[7]} {DemoSDRAM_i/sdram_ctrl_tmr_avalon_0_err_counter_o[8]} {DemoSDRAM_i/sdram_ctrl_tmr_avalon_0_err_counter_o[9]} {DemoSDRAM_i/sdram_ctrl_tmr_avalon_0_err_counter_o[10]} {DemoSDRAM_i/sdram_ctrl_tmr_avalon_0_err_counter_o[11]} {DemoSDRAM_i/sdram_ctrl_tmr_avalon_0_err_counter_o[12]} {DemoSDRAM_i/sdram_ctrl_tmr_avalon_0_err_counter_o[13]} {DemoSDRAM_i/sdram_ctrl_tmr_avalon_0_err_counter_o[14]} {DemoSDRAM_i/sdram_ctrl_tmr_avalon_0_err_counter_o[15]}]]
##create_debug_port u_ila_0 probe
##set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe2]
##set_property port_width 1 [get_debug_ports u_ila_0/probe2]
##connect_debug_port u_ila_0/probe2 [get_nets [list DemoSDRAM_i/sdram_ctrl_tmr_avalon_0/healing_proc_run_o]]
##create_debug_port u_ila_0 probe
##set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe3]
##set_property port_width 1 [get_debug_ports u_ila_0/probe3]
##connect_debug_port u_ila_0/probe3 [get_nets [list DemoSDRAM_i/sdram_ctrl_tmr_avalon_0/scrubbing_proc_run_o]]
##set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
##set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
##set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
##connect_debug_port dbg_hub/clk [get_nets u_ila_0_clk_blaze]
