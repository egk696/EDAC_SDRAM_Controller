
module EDAC_SDRAM_Controller_Demo (
	debug_err_counter_o,
	debug_err_detect_o,
	debug_healing_proc_run_o,
	debug_mem_ready_o,
	debug_scrubbing_proc_run_o,
	debug_voted_data_o,
	sdram_cke_o,
	sdram_bank_o,
	sdram_addr_o,
	sdram_cs_o,
	sdram_ras_o,
	sdram_cas_o,
	sdram_we_o,
	sdram_dqm_o,
	sdram_dataQ_io,
	sevensegment_hex7,
	sevensegment_hex6,
	sevensegment_hex5,
	sevensegment_hex4,
	sevensegment_hex3,
	sevensegment_hex2,
	sevensegment_hex1,
	sevensegment_hex0,
	sys_clk_clk,
	sys_rst_reset_n);	

	output	[31:0]	debug_err_counter_o;
	output		debug_err_detect_o;
	output		debug_healing_proc_run_o;
	output		debug_mem_ready_o;
	output		debug_scrubbing_proc_run_o;
	output	[31:0]	debug_voted_data_o;
	output		sdram_cke_o;
	output	[1:0]	sdram_bank_o;
	output	[12:0]	sdram_addr_o;
	output		sdram_cs_o;
	output		sdram_ras_o;
	output		sdram_cas_o;
	output		sdram_we_o;
	output	[3:0]	sdram_dqm_o;
	inout	[31:0]	sdram_dataQ_io;
	output	[6:0]	sevensegment_hex7;
	output	[6:0]	sevensegment_hex6;
	output	[6:0]	sevensegment_hex5;
	output	[6:0]	sevensegment_hex4;
	output	[6:0]	sevensegment_hex3;
	output	[6:0]	sevensegment_hex2;
	output	[6:0]	sevensegment_hex1;
	output	[6:0]	sevensegment_hex0;
	input		sys_clk_clk;
	input		sys_rst_reset_n;
endmodule
