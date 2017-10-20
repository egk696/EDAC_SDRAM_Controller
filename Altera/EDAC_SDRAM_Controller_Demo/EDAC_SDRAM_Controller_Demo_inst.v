	EDAC_SDRAM_Controller_Demo u0 (
		.debug_err_counter_o        (<connected-to-debug_err_counter_o>),        //        debug.err_counter_o
		.debug_err_detect_o         (<connected-to-debug_err_detect_o>),         //             .err_detect_o
		.debug_healing_proc_run_o   (<connected-to-debug_healing_proc_run_o>),   //             .healing_proc_run_o
		.debug_mem_ready_o          (<connected-to-debug_mem_ready_o>),          //             .mem_ready_o
		.debug_scrubbing_proc_run_o (<connected-to-debug_scrubbing_proc_run_o>), //             .scrubbing_proc_run_o
		.debug_voted_data_o         (<connected-to-debug_voted_data_o>),         //             .voted_data_o
		.sdram_cke_o                (<connected-to-sdram_cke_o>),                //        sdram.cke_o
		.sdram_bank_o               (<connected-to-sdram_bank_o>),               //             .bank_o
		.sdram_addr_o               (<connected-to-sdram_addr_o>),               //             .addr_o
		.sdram_cs_o                 (<connected-to-sdram_cs_o>),                 //             .cs_o
		.sdram_ras_o                (<connected-to-sdram_ras_o>),                //             .ras_o
		.sdram_cas_o                (<connected-to-sdram_cas_o>),                //             .cas_o
		.sdram_we_o                 (<connected-to-sdram_we_o>),                 //             .we_o
		.sdram_dqm_o                (<connected-to-sdram_dqm_o>),                //             .dqm_o
		.sdram_dataQ_io             (<connected-to-sdram_dataQ_io>),             //             .dataQ_io
		.sevensegment_hex7          (<connected-to-sevensegment_hex7>),          // sevensegment.hex7
		.sevensegment_hex6          (<connected-to-sevensegment_hex6>),          //             .hex6
		.sevensegment_hex5          (<connected-to-sevensegment_hex5>),          //             .hex5
		.sevensegment_hex4          (<connected-to-sevensegment_hex4>),          //             .hex4
		.sevensegment_hex3          (<connected-to-sevensegment_hex3>),          //             .hex3
		.sevensegment_hex2          (<connected-to-sevensegment_hex2>),          //             .hex2
		.sevensegment_hex1          (<connected-to-sevensegment_hex1>),          //             .hex1
		.sevensegment_hex0          (<connected-to-sevensegment_hex0>),          //             .hex0
		.sys_clk_clk                (<connected-to-sys_clk_clk>),                //      sys_clk.clk
		.sys_rst_reset_n            (<connected-to-sys_rst_reset_n>)             //      sys_rst.reset_n
	);

