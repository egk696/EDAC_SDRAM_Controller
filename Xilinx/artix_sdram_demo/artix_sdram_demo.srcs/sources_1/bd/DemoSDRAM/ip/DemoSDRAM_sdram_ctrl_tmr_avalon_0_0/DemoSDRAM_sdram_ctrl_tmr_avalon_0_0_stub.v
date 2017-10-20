// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
// Date        : Fri Oct 20 02:03:55 2017
// Host        : EMA-VAIO running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/Users/egk69/Documents/Development/EDAC_SDRAM_Controller/Xilinx/artix_sdram_demo/artix_sdram_demo.srcs/sources_1/bd/DemoSDRAM/ip/DemoSDRAM_sdram_ctrl_tmr_avalon_0_0/DemoSDRAM_sdram_ctrl_tmr_avalon_0_0_stub.v
// Design      : DemoSDRAM_sdram_ctrl_tmr_avalon_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a200tfbg676-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "sdram_ctrl_tmr_avs_interface,Vivado 2016.4" *)
module DemoSDRAM_sdram_ctrl_tmr_avalon_0_0(cke_o, bank_o, addr_o, cs_o, ras_o, cas_o, we_o, dqm_o, 
  dataQ_io, mem_ready_o, err_detect_o, err_counter_o, voted_data_o, scrubbing_proc_run_o, 
  healing_proc_run_o, avs_address, avs_read, avs_readdata, avs_write, avs_writedata, 
  avs_readdatavalid, avs_waitrequest, rsi_reset_n, csi_clock)
/* synthesis syn_black_box black_box_pad_pin="cke_o,bank_o[1:0],addr_o[12:0],cs_o,ras_o,cas_o,we_o,dqm_o[1:0],dataQ_io[15:0],mem_ready_o,err_detect_o,err_counter_o[15:0],voted_data_o[15:0],scrubbing_proc_run_o,healing_proc_run_o,avs_address[23:0],avs_read,avs_readdata[31:0],avs_write,avs_writedata[31:0],avs_readdatavalid,avs_waitrequest,rsi_reset_n,csi_clock" */;
  output cke_o;
  output [1:0]bank_o;
  output [12:0]addr_o;
  output cs_o;
  output ras_o;
  output cas_o;
  output we_o;
  output [1:0]dqm_o;
  inout [15:0]dataQ_io;
  output mem_ready_o;
  output err_detect_o;
  output [15:0]err_counter_o;
  output [15:0]voted_data_o;
  output scrubbing_proc_run_o;
  output healing_proc_run_o;
  input [23:0]avs_address;
  input avs_read;
  output [31:0]avs_readdata;
  input avs_write;
  input [31:0]avs_writedata;
  output avs_readdatavalid;
  output avs_waitrequest;
  input rsi_reset_n;
  input csi_clock;
endmodule
