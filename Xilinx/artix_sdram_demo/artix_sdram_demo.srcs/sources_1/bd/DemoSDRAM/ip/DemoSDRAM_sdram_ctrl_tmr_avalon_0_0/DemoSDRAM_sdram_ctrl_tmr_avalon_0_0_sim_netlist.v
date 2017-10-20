// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
// Date        : Fri Oct 20 02:03:55 2017
// Host        : EMA-VAIO running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/Users/egk69/Documents/Development/EDAC_SDRAM_Controller/Xilinx/artix_sdram_demo/artix_sdram_demo.srcs/sources_1/bd/DemoSDRAM/ip/DemoSDRAM_sdram_ctrl_tmr_avalon_0_0/DemoSDRAM_sdram_ctrl_tmr_avalon_0_0_sim_netlist.v
// Design      : DemoSDRAM_sdram_ctrl_tmr_avalon_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "DemoSDRAM_sdram_ctrl_tmr_avalon_0_0,sdram_ctrl_tmr_avs_interface,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "sdram_ctrl_tmr_avs_interface,Vivado 2016.4" *) 
(* NotValidForBitStream *)
module DemoSDRAM_sdram_ctrl_tmr_avalon_0_0
   (cke_o,
    bank_o,
    addr_o,
    cs_o,
    ras_o,
    cas_o,
    we_o,
    dqm_o,
    dataQ_io,
    mem_ready_o,
    err_detect_o,
    err_counter_o,
    voted_data_o,
    scrubbing_proc_run_o,
    healing_proc_run_o,
    avs_address,
    avs_read,
    avs_readdata,
    avs_write,
    avs_writedata,
    avs_readdatavalid,
    avs_waitrequest,
    rsi_reset_n,
    csi_clock);
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
  (* x_interface_info = "xilinx.com:interface:avalon:1.0 avs ADDRESS" *) input [23:0]avs_address;
  (* x_interface_info = "xilinx.com:interface:avalon:1.0 avs READ" *) input avs_read;
  (* x_interface_info = "xilinx.com:interface:avalon:1.0 avs READDATA" *) output [31:0]avs_readdata;
  (* x_interface_info = "xilinx.com:interface:avalon:1.0 avs WRITE" *) input avs_write;
  (* x_interface_info = "xilinx.com:interface:avalon:1.0 avs WRITEDATA" *) input [31:0]avs_writedata;
  (* x_interface_info = "xilinx.com:interface:avalon:1.0 avs READDATAVALID" *) output avs_readdatavalid;
  (* x_interface_info = "xilinx.com:interface:avalon:1.0 avs WAITREQUEST" *) output avs_waitrequest;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 slave_rst RST" *) input rsi_reset_n;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 slave_clk CLK" *) input csi_clock;

  (* DRIVE = "12" *) (* SLEW = "SLOW" *) wire [12:0]addr_o;
  wire [23:0]avs_address;
  wire avs_read;
  wire [31:0]avs_readdata;
  wire avs_readdatavalid;
  wire avs_waitrequest;
  wire avs_write;
  wire [31:0]avs_writedata;
  (* DRIVE = "12" *) (* SLEW = "SLOW" *) wire [1:0]bank_o;
  (* DRIVE = "12" *) (* SLEW = "SLOW" *) wire cas_o;
  (* DRIVE = "12" *) (* SLEW = "SLOW" *) wire cke_o;
  (* DRIVE = "12" *) (* SLEW = "SLOW" *) wire cs_o;
  wire csi_clock;
  (* DRIVE = "12" *) (* IBUF_LOW_PWR *) (* SLEW = "SLOW" *) wire [15:0]dataQ_io;
  (* DRIVE = "12" *) (* SLEW = "SLOW" *) wire [1:0]dqm_o;
  wire [15:0]err_counter_o;
  wire err_detect_o;
  wire healing_proc_run_o;
  wire mem_ready_o;
  (* DRIVE = "12" *) (* SLEW = "SLOW" *) wire ras_o;
  wire rsi_reset_n;
  wire scrubbing_proc_run_o;
  wire [15:0]voted_data_o;
  (* DRIVE = "12" *) (* SLEW = "SLOW" *) wire we_o;

  (* ACT_TO_RW_CYCLES = "2" *) 
  (* BANK_WIDTH = "2" *) 
  (* BURST_LENGTH = "0" *) 
  (* CAS_LAT_CYCLES = "2" *) 
  (* COLS_WIDTH = "9" *) 
  (* DATA_WIDTH = "16" *) 
  (* DQM_WIDTH = "2" *) 
  (* DRIVE_STRENGTH = "0" *) 
  (* EXT_MODE_REG_EN = "TRUE" *) 
  (* GEN_ERR_INJ = "FALSE" *) 
  (* IN_DATA_TO_PRE = "2" *) 
  (* MODE_REG_CYCLES = "2" *) 
  (* NOP_BOOT_CYCLES = "20000" *) 
  (* PRECH_COMMAND_PERIOD = "2" *) 
  (* RAM_BANKS = "4" *) 
  (* RAM_COLS = "512" *) 
  (* RAM_ROWS = "8192" *) 
  (* REF_COMMAND_COUNT = "8" *) 
  (* REF_COMMAND_PERIOD = "8" *) 
  (* REF_PERIOD = "32" *) 
  (* ROW_WIDTH = "13" *) 
  (* SCRUBBER_WAIT_CYCLES = "64" *) 
  (* TMR_COLS = "384" *) 
  DemoSDRAM_sdram_ctrl_tmr_avalon_0_0_sdram_ctrl_tmr_avs_interface U0
       (.addr_o(addr_o),
        .avs_address(avs_address),
        .avs_read(avs_read),
        .avs_readdata(avs_readdata),
        .avs_readdatavalid(avs_readdatavalid),
        .avs_waitrequest(avs_waitrequest),
        .avs_write(avs_write),
        .avs_writedata(avs_writedata),
        .bank_o(bank_o),
        .cas_o(cas_o),
        .cke_o(cke_o),
        .cs_o(cs_o),
        .csi_clock(csi_clock),
        .dataQ_io(dataQ_io),
        .dqm_o(dqm_o),
        .err_counter_o(err_counter_o),
        .err_detect_o(err_detect_o),
        .healing_proc_run_o(healing_proc_run_o),
        .mem_ready_o(mem_ready_o),
        .ras_o(ras_o),
        .rsi_reset_n(rsi_reset_n),
        .scrubbing_proc_run_o(scrubbing_proc_run_o),
        .voted_data_o(voted_data_o),
        .we_o(we_o));
endmodule

(* ORIG_REF_NAME = "sdram_ctrl_tmr" *) 
module DemoSDRAM_sdram_ctrl_tmr_avalon_0_0_sdram_ctrl_tmr
   (cke_o,
    cs_o,
    ras_o,
    cas_o,
    we_o,
    bank_o,
    addr_o,
    dqm_o,
    rd_grnt_int,
    mem_ready_o,
    wr_grnt_int,
    wr_done_i,
    rd_done_int,
    ctrl_state_o,
    Q,
    \current_rd_data_reg[15] ,
    \current_rd_data_reg[15]_0 ,
    \current_rd_data_reg[15]_1 ,
    en_i,
    wr_grnt_o,
    rd_grnt_o,
    wr_op_done_o,
    rd_op_done_o,
    \current_err_count_reg[3] ,
    dataQ_io,
    clk_i,
    rstn_i,
    rw_addr_i,
    scrubbing_o,
    scrubbing_addr_o,
    healing_o,
    healing_addr_o,
    healing_wr_req_o,
    wr_req_i,
    en_scrubbing_i,
    rd_req_i,
    scrub_rd_req_o,
    wr_data_i,
    healing_data_o);
  output cke_o;
  output cs_o;
  output ras_o;
  output cas_o;
  output we_o;
  output [1:0]bank_o;
  output [12:0]addr_o;
  output [1:0]dqm_o;
  output rd_grnt_int;
  output mem_ready_o;
  output wr_grnt_int;
  output wr_done_i;
  output rd_done_int;
  output [26:0]ctrl_state_o;
  output [23:0]Q;
  output [15:0]\current_rd_data_reg[15] ;
  output [15:0]\current_rd_data_reg[15]_0 ;
  output [15:0]\current_rd_data_reg[15]_1 ;
  output en_i;
  output wr_grnt_o;
  output rd_grnt_o;
  output wr_op_done_o;
  output rd_op_done_o;
  output \current_err_count_reg[3] ;
  inout [15:0]dataQ_io;
  input clk_i;
  input rstn_i;
  input [22:0]rw_addr_i;
  input scrubbing_o;
  input [23:0]scrubbing_addr_o;
  input healing_o;
  input [23:0]healing_addr_o;
  input healing_wr_req_o;
  input wr_req_i;
  input en_scrubbing_i;
  input rd_req_i;
  input scrub_rd_req_o;
  input [15:0]wr_data_i;
  input [15:0]healing_data_o;

  wire I;
  wire [23:0]Q;
  wire [12:0]addr_o;
  wire [1:0]bank_o;
  wire cas_o;
  wire cke_o;
  wire clk_i;
  wire cs_o;
  wire [26:0]ctrl_state_o;
  wire \ctrl_state_o[10]_INST_0_i_1_n_0 ;
  wire \ctrl_state_o[11]_INST_0_i_1_n_0 ;
  wire \ctrl_state_o[12]_INST_0_i_1_n_0 ;
  wire \ctrl_state_o[12]_INST_0_i_2_n_0 ;
  wire \ctrl_state_o[14]_INST_0_i_1_n_0 ;
  wire \ctrl_state_o[15]_INST_0_i_1_n_0 ;
  wire \ctrl_state_o[16]_INST_0_i_1_n_0 ;
  wire \ctrl_state_o[16]_INST_0_i_2_n_0 ;
  wire \ctrl_state_o[16]_INST_0_i_3_n_0 ;
  wire \ctrl_state_o[16]_INST_0_i_4_n_0 ;
  wire \ctrl_state_o[17]_INST_0_i_1_n_0 ;
  wire \ctrl_state_o[17]_INST_0_i_2_n_0 ;
  wire \ctrl_state_o[18]_INST_0_i_1_n_0 ;
  wire \ctrl_state_o[19]_INST_0_i_1_n_0 ;
  wire \ctrl_state_o[20]_INST_0_i_1_n_0 ;
  wire \ctrl_state_o[20]_INST_0_i_2_n_0 ;
  wire \ctrl_state_o[21]_INST_0_i_1_n_0 ;
  wire \ctrl_state_o[21]_INST_0_i_2_n_0 ;
  wire \ctrl_state_o[22]_INST_0_i_1_n_0 ;
  wire \ctrl_state_o[22]_INST_0_i_2_n_0 ;
  wire \ctrl_state_o[23]_INST_0_i_1_n_0 ;
  wire \ctrl_state_o[24]_INST_0_i_1_n_0 ;
  wire \ctrl_state_o[24]_INST_0_i_2_n_0 ;
  wire \ctrl_state_o[26]_INST_0_i_1_n_0 ;
  wire \ctrl_state_o[26]_INST_0_i_2_n_0 ;
  wire \ctrl_state_o[26]_INST_0_i_3_n_0 ;
  wire \ctrl_state_o[2]_INST_0_i_1_n_0 ;
  wire \ctrl_state_o[3]_INST_0_i_1_n_0 ;
  wire \ctrl_state_o[4]_INST_0_i_1_n_0 ;
  wire \ctrl_state_o[4]_INST_0_i_2_n_0 ;
  wire \ctrl_state_o[5]_INST_0_i_1_n_0 ;
  wire \ctrl_state_o[5]_INST_0_i_2_n_0 ;
  wire \ctrl_state_o[6]_INST_0_i_1_n_0 ;
  wire \ctrl_state_o[7]_INST_0_i_1_n_0 ;
  wire \ctrl_state_o[7]_INST_0_i_2_n_0 ;
  wire \ctrl_state_o[8]_INST_0_i_1_n_0 ;
  wire \ctrl_state_o[8]_INST_0_i_2_n_0 ;
  wire \ctrl_state_o[8]_INST_0_i_3_n_0 ;
  wire [0:0]current_act_to_rw_count;
  wire \current_act_to_rw_count[0]_i_1_n_0 ;
  wire [14:0]current_address_bus;
  wire \current_address_bus[0]_i_1_n_0 ;
  wire \current_address_bus[0]_i_2_n_0 ;
  wire \current_address_bus[0]_i_3_n_0 ;
  wire \current_address_bus[0]_i_4_n_0 ;
  wire \current_address_bus[0]_i_5_n_0 ;
  wire \current_address_bus[0]_i_6_n_0 ;
  wire \current_address_bus[0]_i_7_n_0 ;
  wire \current_address_bus[0]_i_8_n_0 ;
  wire \current_address_bus[10]_i_1_n_0 ;
  wire \current_address_bus[10]_i_2_n_0 ;
  wire \current_address_bus[10]_i_3_n_0 ;
  wire \current_address_bus[10]_i_4_n_0 ;
  wire \current_address_bus[10]_i_5_n_0 ;
  wire \current_address_bus[10]_i_6_n_0 ;
  wire \current_address_bus[11]_i_1_n_0 ;
  wire \current_address_bus[11]_i_2_n_0 ;
  wire \current_address_bus[12]_i_1_n_0 ;
  wire \current_address_bus[12]_i_2_n_0 ;
  wire \current_address_bus[12]_i_3_n_0 ;
  wire \current_address_bus[13]_i_1_n_0 ;
  wire \current_address_bus[13]_i_2_n_0 ;
  wire \current_address_bus[13]_i_3_n_0 ;
  wire \current_address_bus[13]_i_4_n_0 ;
  wire \current_address_bus[13]_i_5_n_0 ;
  wire \current_address_bus[13]_i_6_n_0 ;
  wire \current_address_bus[14]_i_10_n_0 ;
  wire \current_address_bus[14]_i_11_n_0 ;
  wire \current_address_bus[14]_i_12_n_0 ;
  wire \current_address_bus[14]_i_13_n_0 ;
  wire \current_address_bus[14]_i_14_n_0 ;
  wire \current_address_bus[14]_i_15_n_0 ;
  wire \current_address_bus[14]_i_16_n_0 ;
  wire \current_address_bus[14]_i_17_n_0 ;
  wire \current_address_bus[14]_i_18_n_0 ;
  wire \current_address_bus[14]_i_19_n_0 ;
  wire \current_address_bus[14]_i_20_n_0 ;
  wire \current_address_bus[14]_i_21_n_0 ;
  wire \current_address_bus[14]_i_22_n_0 ;
  wire \current_address_bus[14]_i_23_n_0 ;
  wire \current_address_bus[14]_i_24_n_0 ;
  wire \current_address_bus[14]_i_25_n_0 ;
  wire \current_address_bus[14]_i_26_n_0 ;
  wire \current_address_bus[14]_i_27_n_0 ;
  wire \current_address_bus[14]_i_28_n_0 ;
  wire \current_address_bus[14]_i_2_n_0 ;
  wire \current_address_bus[14]_i_3_n_0 ;
  wire \current_address_bus[14]_i_4_n_0 ;
  wire \current_address_bus[14]_i_5_n_0 ;
  wire \current_address_bus[14]_i_6_n_0 ;
  wire \current_address_bus[14]_i_7_n_0 ;
  wire \current_address_bus[14]_i_8_n_0 ;
  wire \current_address_bus[14]_i_9_n_0 ;
  wire \current_address_bus[1]_i_1_n_0 ;
  wire \current_address_bus[1]_i_2_n_0 ;
  wire \current_address_bus[1]_i_3_n_0 ;
  wire \current_address_bus[1]_i_4_n_0 ;
  wire \current_address_bus[1]_i_5_n_0 ;
  wire \current_address_bus[1]_i_6_n_0 ;
  wire \current_address_bus[1]_i_7_n_0 ;
  wire \current_address_bus[1]_i_8_n_0 ;
  wire \current_address_bus[1]_i_9_n_0 ;
  wire \current_address_bus[2]_i_1_n_0 ;
  wire \current_address_bus[2]_i_2_n_0 ;
  wire \current_address_bus[2]_i_3_n_0 ;
  wire \current_address_bus[2]_i_4_n_0 ;
  wire \current_address_bus[3]_i_1_n_0 ;
  wire \current_address_bus[3]_i_2_n_0 ;
  wire \current_address_bus[3]_i_3_n_0 ;
  wire \current_address_bus[3]_i_4_n_0 ;
  wire \current_address_bus[4]_i_1_n_0 ;
  wire \current_address_bus[4]_i_2_n_0 ;
  wire \current_address_bus[4]_i_3_n_0 ;
  wire \current_address_bus[4]_i_4_n_0 ;
  wire \current_address_bus[5]_i_1_n_0 ;
  wire \current_address_bus[5]_i_2_n_0 ;
  wire \current_address_bus[5]_i_3_n_0 ;
  wire \current_address_bus[5]_i_4_n_0 ;
  wire \current_address_bus[5]_i_5_n_0 ;
  wire \current_address_bus[5]_i_6_n_0 ;
  wire \current_address_bus[5]_i_7_n_0 ;
  wire \current_address_bus[5]_i_8_n_0 ;
  wire \current_address_bus[5]_i_9_n_0 ;
  wire \current_address_bus[6]_i_1_n_0 ;
  wire \current_address_bus[6]_i_2_n_0 ;
  wire \current_address_bus[6]_i_3_n_0 ;
  wire \current_address_bus[6]_i_4_n_0 ;
  wire \current_address_bus[7]_i_1_n_0 ;
  wire \current_address_bus[7]_i_2_n_0 ;
  wire \current_address_bus[7]_i_3_n_0 ;
  wire \current_address_bus[7]_i_4_n_0 ;
  wire \current_address_bus[7]_i_5_n_0 ;
  wire \current_address_bus[7]_i_6_n_0 ;
  wire \current_address_bus[7]_i_7_n_0 ;
  wire \current_address_bus[7]_i_8_n_0 ;
  wire \current_address_bus[8]_i_1_n_0 ;
  wire \current_address_bus[8]_i_2_n_0 ;
  wire \current_address_bus[8]_i_3_n_0 ;
  wire \current_address_bus[8]_i_4_n_0 ;
  wire \current_address_bus[8]_i_5_n_0 ;
  wire \current_address_bus[8]_i_6_n_0 ;
  wire \current_address_bus[9]_i_1_n_0 ;
  wire \current_address_bus[9]_i_2_n_0 ;
  wire \current_address_bus[9]_i_3_n_0 ;
  wire \current_address_bus[9]_i_4_n_0 ;
  wire \current_address_bus[9]_i_5_n_0 ;
  wire \current_address_bus[9]_i_6_n_0 ;
  wire \current_address_bus[9]_i_7_n_0 ;
  wire [2:0]current_auto_ref_count;
  wire \current_auto_ref_count[0]_i_1_n_0 ;
  wire \current_auto_ref_count[1]_i_1_n_0 ;
  wire \current_auto_ref_count[2]_i_1_n_0 ;
  wire \current_auto_ref_count[2]_i_3_n_0 ;
  wire current_cas;
  wire current_cas_i_10_n_0;
  wire current_cas_i_11_n_0;
  wire current_cas_i_12_n_0;
  wire current_cas_i_13_n_0;
  wire current_cas_i_14_n_0;
  wire current_cas_i_15_n_0;
  wire current_cas_i_16_n_0;
  wire current_cas_i_2_n_0;
  wire current_cas_i_3_n_0;
  wire current_cas_i_4_n_0;
  wire current_cas_i_5_n_0;
  wire current_cas_i_6_n_0;
  wire current_cas_i_7_n_0;
  wire current_cas_i_8_n_0;
  wire current_cas_i_9_n_0;
  wire [1:0]current_cas_rd_count;
  wire \current_cas_rd_count[0]_i_1_n_0 ;
  wire \current_cas_rd_count[0]_i_2_n_0 ;
  wire \current_cas_rd_count[1]_i_10_n_0 ;
  wire \current_cas_rd_count[1]_i_11_n_0 ;
  wire \current_cas_rd_count[1]_i_12_n_0 ;
  wire \current_cas_rd_count[1]_i_13_n_0 ;
  wire \current_cas_rd_count[1]_i_1_n_0 ;
  wire \current_cas_rd_count[1]_i_2_n_0 ;
  wire \current_cas_rd_count[1]_i_3_n_0 ;
  wire \current_cas_rd_count[1]_i_4_n_0 ;
  wire \current_cas_rd_count[1]_i_5_n_0 ;
  wire \current_cas_rd_count[1]_i_6_n_0 ;
  wire \current_cas_rd_count[1]_i_7_n_0 ;
  wire \current_cas_rd_count[1]_i_8_n_0 ;
  wire \current_cas_rd_count[1]_i_9_n_0 ;
  wire current_cke_i_10_n_0;
  wire current_cke_i_11_n_0;
  wire current_cke_i_12_n_0;
  wire current_cke_i_13_n_0;
  wire current_cke_i_14_n_0;
  wire current_cke_i_15_n_0;
  wire current_cke_i_16_n_0;
  wire current_cke_i_2_n_0;
  wire current_cke_i_3_n_0;
  wire current_cke_i_4_n_0;
  wire current_cke_i_5_n_0;
  wire current_cke_i_6_n_0;
  wire current_cke_i_7_n_0;
  wire current_cke_i_8_n_0;
  wire current_cke_i_9_n_0;
  wire [1:1]current_dqm;
  wire \current_dqm[1]_i_10_n_0 ;
  wire \current_dqm[1]_i_11_n_0 ;
  wire \current_dqm[1]_i_12_n_0 ;
  wire \current_dqm[1]_i_13_n_0 ;
  wire \current_dqm[1]_i_1_n_0 ;
  wire \current_dqm[1]_i_2_n_0 ;
  wire \current_dqm[1]_i_3_n_0 ;
  wire \current_dqm[1]_i_4_n_0 ;
  wire \current_dqm[1]_i_5_n_0 ;
  wire \current_dqm[1]_i_6_n_0 ;
  wire \current_dqm[1]_i_7_n_0 ;
  wire \current_dqm[1]_i_8_n_0 ;
  wire \current_dqm[1]_i_9_n_0 ;
  wire \current_err_count_reg[3] ;
  wire [3:0]current_first_access;
  wire \current_first_access[0]_i_1_n_0 ;
  wire \current_first_access[0]_i_2_n_0 ;
  wire \current_first_access[0]_i_3_n_0 ;
  wire \current_first_access[0]_i_4_n_0 ;
  wire \current_first_access[1]_i_1_n_0 ;
  wire \current_first_access[1]_i_2_n_0 ;
  wire \current_first_access[1]_i_3_n_0 ;
  wire \current_first_access[1]_i_4_n_0 ;
  wire \current_first_access[2]_i_1_n_0 ;
  wire \current_first_access[2]_i_2_n_0 ;
  wire \current_first_access[2]_i_3_n_0 ;
  wire \current_first_access[2]_i_4_n_0 ;
  wire \current_first_access[2]_i_5_n_0 ;
  wire \current_first_access[2]_i_6_n_0 ;
  wire \current_first_access[3]_i_10_n_0 ;
  wire \current_first_access[3]_i_11_n_0 ;
  wire \current_first_access[3]_i_12_n_0 ;
  wire \current_first_access[3]_i_13_n_0 ;
  wire \current_first_access[3]_i_1_n_0 ;
  wire \current_first_access[3]_i_2_n_0 ;
  wire \current_first_access[3]_i_3_n_0 ;
  wire \current_first_access[3]_i_4_n_0 ;
  wire \current_first_access[3]_i_5_n_0 ;
  wire \current_first_access[3]_i_6_n_0 ;
  wire \current_first_access[3]_i_7_n_0 ;
  wire \current_first_access[3]_i_8_n_0 ;
  wire \current_first_access[3]_i_9_n_0 ;
  wire current_mem_ready_i_1_n_0;
  wire current_mem_ready_i_2_n_0;
  wire current_mem_ready_i_3_n_0;
  wire current_mem_ready_i_4_n_0;
  wire [14:0]current_nop_boot_count;
  wire \current_nop_boot_count[0]_i_1_n_0 ;
  wire \current_nop_boot_count[10]_i_1_n_0 ;
  wire \current_nop_boot_count[11]_i_1_n_0 ;
  wire \current_nop_boot_count[12]_i_1_n_0 ;
  wire \current_nop_boot_count[13]_i_1_n_0 ;
  wire \current_nop_boot_count[14]_i_10_n_0 ;
  wire \current_nop_boot_count[14]_i_11_n_0 ;
  wire \current_nop_boot_count[14]_i_12_n_0 ;
  wire \current_nop_boot_count[14]_i_13_n_0 ;
  wire \current_nop_boot_count[14]_i_14_n_0 ;
  wire \current_nop_boot_count[14]_i_15_n_0 ;
  wire \current_nop_boot_count[14]_i_16_n_0 ;
  wire \current_nop_boot_count[14]_i_17_n_0 ;
  wire \current_nop_boot_count[14]_i_18_n_0 ;
  wire \current_nop_boot_count[14]_i_2_n_0 ;
  wire \current_nop_boot_count[14]_i_3_n_0 ;
  wire \current_nop_boot_count[14]_i_4_n_0 ;
  wire \current_nop_boot_count[14]_i_5_n_0 ;
  wire \current_nop_boot_count[14]_i_6_n_0 ;
  wire \current_nop_boot_count[14]_i_7_n_0 ;
  wire \current_nop_boot_count[14]_i_8_n_0 ;
  wire \current_nop_boot_count[14]_i_9_n_0 ;
  wire \current_nop_boot_count[1]_i_1_n_0 ;
  wire \current_nop_boot_count[2]_i_1_n_0 ;
  wire \current_nop_boot_count[3]_i_1_n_0 ;
  wire \current_nop_boot_count[4]_i_1_n_0 ;
  wire \current_nop_boot_count[5]_i_1_n_0 ;
  wire \current_nop_boot_count[6]_i_1_n_0 ;
  wire \current_nop_boot_count[7]_i_1_n_0 ;
  wire \current_nop_boot_count[8]_i_1_n_0 ;
  wire \current_nop_boot_count[9]_i_1_n_0 ;
  wire [0:0]current_nop_wr_count;
  wire \current_nop_wr_count[0]_i_10_n_0 ;
  wire \current_nop_wr_count[0]_i_11_n_0 ;
  wire \current_nop_wr_count[0]_i_12_n_0 ;
  wire \current_nop_wr_count[0]_i_13_n_0 ;
  wire \current_nop_wr_count[0]_i_14_n_0 ;
  wire \current_nop_wr_count[0]_i_15_n_0 ;
  wire \current_nop_wr_count[0]_i_1_n_0 ;
  wire \current_nop_wr_count[0]_i_2_n_0 ;
  wire \current_nop_wr_count[0]_i_3_n_0 ;
  wire \current_nop_wr_count[0]_i_4_n_0 ;
  wire \current_nop_wr_count[0]_i_5_n_0 ;
  wire \current_nop_wr_count[0]_i_6_n_0 ;
  wire \current_nop_wr_count[0]_i_7_n_0 ;
  wire \current_nop_wr_count[0]_i_8_n_0 ;
  wire \current_nop_wr_count[0]_i_9_n_0 ;
  wire \current_pend_ref_count[5]_i_1_n_0 ;
  wire \current_pend_ref_count[5]_i_2_n_0 ;
  wire \current_pend_ref_count[5]_i_4_n_0 ;
  wire [5:0]current_pend_ref_count_reg__0;
  wire current_pending_refresh;
  wire current_pending_refresh_i_1_n_0;
  wire current_pending_refresh_i_2_n_0;
  wire current_pending_refresh_i_3_n_0;
  wire current_pending_refresh_i_4_n_0;
  wire current_pending_refresh_i_5_n_0;
  wire [0:0]current_precharge_count;
  wire \current_precharge_count[0]_i_1_n_0 ;
  wire current_ras;
  wire current_ras_i_2_n_0;
  wire current_ras_i_3_n_0;
  wire current_ras_i_4_n_0;
  wire current_ras_i_5_n_0;
  wire current_ras_i_6_n_0;
  wire current_ras_i_7_n_0;
  wire current_ras_i_8_n_0;
  wire \current_rd_buffer[0][0]_i_1_n_0 ;
  wire \current_rd_buffer[0][10]_i_1_n_0 ;
  wire \current_rd_buffer[0][11]_i_1_n_0 ;
  wire \current_rd_buffer[0][12]_i_1_n_0 ;
  wire \current_rd_buffer[0][13]_i_1_n_0 ;
  wire \current_rd_buffer[0][14]_i_1_n_0 ;
  wire \current_rd_buffer[0][15]_i_2_n_0 ;
  wire \current_rd_buffer[0][15]_i_3_n_0 ;
  wire \current_rd_buffer[0][15]_i_4_n_0 ;
  wire \current_rd_buffer[0][1]_i_1_n_0 ;
  wire \current_rd_buffer[0][2]_i_1_n_0 ;
  wire \current_rd_buffer[0][3]_i_1_n_0 ;
  wire \current_rd_buffer[0][4]_i_1_n_0 ;
  wire \current_rd_buffer[0][5]_i_1_n_0 ;
  wire \current_rd_buffer[0][6]_i_1_n_0 ;
  wire \current_rd_buffer[0][7]_i_1_n_0 ;
  wire \current_rd_buffer[0][8]_i_1_n_0 ;
  wire \current_rd_buffer[0][9]_i_1_n_0 ;
  wire \current_rd_buffer[1][0]_i_1_n_0 ;
  wire \current_rd_buffer[1][10]_i_1_n_0 ;
  wire \current_rd_buffer[1][11]_i_1_n_0 ;
  wire \current_rd_buffer[1][12]_i_1_n_0 ;
  wire \current_rd_buffer[1][13]_i_1_n_0 ;
  wire \current_rd_buffer[1][14]_i_1_n_0 ;
  wire \current_rd_buffer[1][15]_i_2_n_0 ;
  wire \current_rd_buffer[1][15]_i_3_n_0 ;
  wire \current_rd_buffer[1][1]_i_1_n_0 ;
  wire \current_rd_buffer[1][2]_i_1_n_0 ;
  wire \current_rd_buffer[1][3]_i_1_n_0 ;
  wire \current_rd_buffer[1][4]_i_1_n_0 ;
  wire \current_rd_buffer[1][5]_i_1_n_0 ;
  wire \current_rd_buffer[1][6]_i_1_n_0 ;
  wire \current_rd_buffer[1][7]_i_1_n_0 ;
  wire \current_rd_buffer[1][8]_i_1_n_0 ;
  wire \current_rd_buffer[1][9]_i_1_n_0 ;
  wire \current_rd_buffer[2][0]_i_1_n_0 ;
  wire \current_rd_buffer[2][10]_i_1_n_0 ;
  wire \current_rd_buffer[2][11]_i_1_n_0 ;
  wire \current_rd_buffer[2][12]_i_1_n_0 ;
  wire \current_rd_buffer[2][13]_i_1_n_0 ;
  wire \current_rd_buffer[2][14]_i_1_n_0 ;
  wire \current_rd_buffer[2][15]_i_2_n_0 ;
  wire \current_rd_buffer[2][15]_i_3_n_0 ;
  wire \current_rd_buffer[2][1]_i_1_n_0 ;
  wire \current_rd_buffer[2][2]_i_1_n_0 ;
  wire \current_rd_buffer[2][3]_i_1_n_0 ;
  wire \current_rd_buffer[2][4]_i_1_n_0 ;
  wire \current_rd_buffer[2][5]_i_1_n_0 ;
  wire \current_rd_buffer[2][6]_i_1_n_0 ;
  wire \current_rd_buffer[2][7]_i_1_n_0 ;
  wire \current_rd_buffer[2][8]_i_1_n_0 ;
  wire \current_rd_buffer[2][9]_i_1_n_0 ;
  wire [15:0]\current_rd_data_reg[15] ;
  wire [15:0]\current_rd_data_reg[15]_0 ;
  wire [15:0]\current_rd_data_reg[15]_1 ;
  wire current_rd_grnt_i_1_n_0;
  wire current_rd_grnt_i_2_n_0;
  wire current_rd_op_done_i_10_n_0;
  wire current_rd_op_done_i_11_n_0;
  wire current_rd_op_done_i_12_n_0;
  wire current_rd_op_done_i_13_n_0;
  wire current_rd_op_done_i_1_n_0;
  wire current_rd_op_done_i_2_n_0;
  wire current_rd_op_done_i_3_n_0;
  wire current_rd_op_done_i_4_n_0;
  wire current_rd_op_done_i_5_n_0;
  wire current_rd_op_done_i_6_n_0;
  wire current_rd_op_done_i_7_n_0;
  wire current_rd_op_done_i_8_n_0;
  wire current_rd_op_done_i_9_n_0;
  wire current_rd_tmr_vote_i_1_n_0;
  wire current_rd_tmr_vote_i_2_n_0;
  wire current_rd_tmr_vote_i_3_n_0;
  wire [3:0]current_ref_cmd_count;
  wire \current_ref_cmd_count[0]_i_1_n_0 ;
  wire \current_ref_cmd_count[1]_i_1_n_0 ;
  wire \current_ref_cmd_count[2]_i_1_n_0 ;
  wire \current_ref_cmd_count[3]_i_2_n_0 ;
  wire \current_ref_cmd_count[3]_i_3_n_0 ;
  wire \current_ref_cmd_count[3]_i_4_n_0 ;
  wire \current_ref_cmd_count[3]_i_5_n_0 ;
  wire \current_rw_addr[23]_i_3_n_0 ;
  wire \current_rw_addr[23]_i_4_n_0 ;
  wire \current_rw_addr[2]_i_1_n_0 ;
  wire \current_rw_addr[3]_i_1_n_0 ;
  wire \current_rw_addr[4]_i_1_n_0 ;
  wire \current_rw_addr[5]_i_1_n_0 ;
  wire \current_rw_addr[6]_i_1_n_0 ;
  wire \current_rw_addr[7]_i_1_n_0 ;
  wire \current_rw_addr[8]_i_1_n_0 ;
  wire [26:0]current_state;
  wire \current_state[0]_i_1_n_0 ;
  wire \current_state[0]_i_2_n_0 ;
  wire \current_state[0]_i_3_n_0 ;
  wire \current_state[0]_i_4_n_0 ;
  wire \current_state[11]_i_10_n_0 ;
  wire \current_state[11]_i_11_n_0 ;
  wire \current_state[11]_i_1_n_0 ;
  wire \current_state[11]_i_2_n_0 ;
  wire \current_state[11]_i_3_n_0 ;
  wire \current_state[11]_i_4_n_0 ;
  wire \current_state[11]_i_5_n_0 ;
  wire \current_state[11]_i_6_n_0 ;
  wire \current_state[11]_i_7_n_0 ;
  wire \current_state[11]_i_8_n_0 ;
  wire \current_state[11]_i_9_n_0 ;
  wire \current_state[12]_i_1_n_0 ;
  wire \current_state[12]_i_2_n_0 ;
  wire \current_state[12]_i_3_n_0 ;
  wire \current_state[12]_i_4_n_0 ;
  wire \current_state[12]_i_5_n_0 ;
  wire \current_state[12]_i_6_n_0 ;
  wire \current_state[14]_i_1_n_0 ;
  wire \current_state[14]_i_2_n_0 ;
  wire \current_state[15]_i_1_n_0 ;
  wire \current_state[16]_i_1_n_0 ;
  wire \current_state[16]_i_2_n_0 ;
  wire \current_state[16]_i_3_n_0 ;
  wire \current_state[16]_i_4_n_0 ;
  wire \current_state[16]_i_5_n_0 ;
  wire \current_state[16]_i_6_n_0 ;
  wire \current_state[22]_i_1_n_0 ;
  wire \current_state[22]_i_2_n_0 ;
  wire \current_state[22]_i_3_n_0 ;
  wire \current_state[25]_i_1_n_0 ;
  wire \current_state[25]_i_2_n_0 ;
  wire \current_state[25]_i_3_n_0 ;
  wire \current_state[25]_i_4_n_0 ;
  wire \current_state[25]_i_5_n_0 ;
  wire \current_state[25]_i_6_n_0 ;
  wire \current_state[26]_i_10_n_0 ;
  wire \current_state[26]_i_11_n_0 ;
  wire \current_state[26]_i_12_n_0 ;
  wire \current_state[26]_i_13_n_0 ;
  wire \current_state[26]_i_14_n_0 ;
  wire \current_state[26]_i_15_n_0 ;
  wire \current_state[26]_i_16_n_0 ;
  wire \current_state[26]_i_17_n_0 ;
  wire \current_state[26]_i_18_n_0 ;
  wire \current_state[26]_i_19_n_0 ;
  wire \current_state[26]_i_1_n_0 ;
  wire \current_state[26]_i_20_n_0 ;
  wire \current_state[26]_i_21_n_0 ;
  wire \current_state[26]_i_2_n_0 ;
  wire \current_state[26]_i_3_n_0 ;
  wire \current_state[26]_i_4_n_0 ;
  wire \current_state[26]_i_5_n_0 ;
  wire \current_state[26]_i_6_n_0 ;
  wire \current_state[26]_i_7_n_0 ;
  wire \current_state[26]_i_8_n_0 ;
  wire \current_state[26]_i_9_n_0 ;
  wire \current_state[2]_i_1_n_0 ;
  wire \current_state[2]_i_2_n_0 ;
  wire \current_state[2]_i_3_n_0 ;
  wire \current_state[2]_i_4_n_0 ;
  wire \current_state[2]_i_5_n_0 ;
  wire \current_state[2]_i_6_n_0 ;
  wire \current_state[2]_i_7_n_0 ;
  wire \current_state[2]_i_8_n_0 ;
  wire \current_state[2]_i_9_n_0 ;
  wire \current_state[4]_i_1_n_0 ;
  wire \current_state[4]_i_2_n_0 ;
  wire \current_state[4]_i_3_n_0 ;
  wire \current_state[6]_i_1_n_0 ;
  wire \current_state[6]_i_2_n_0 ;
  wire \current_state[6]_i_3_n_0 ;
  wire \current_state[6]_i_4_n_0 ;
  wire \current_state[6]_i_5_n_0 ;
  wire \current_state[7]_i_1_n_0 ;
  wire current_we;
  wire current_we_i_2_n_0;
  wire current_we_i_3_n_0;
  wire current_we_i_4_n_0;
  wire current_we_i_5_n_0;
  wire current_we_i_6_n_0;
  wire current_we_i_7_n_0;
  wire current_we_i_8_n_0;
  wire [15:0]current_wr_buffer;
  wire \current_wr_buffer[0]_i_1_n_0 ;
  wire \current_wr_buffer[10]_i_1_n_0 ;
  wire \current_wr_buffer[11]_i_1_n_0 ;
  wire \current_wr_buffer[12]_i_1_n_0 ;
  wire \current_wr_buffer[13]_i_1_n_0 ;
  wire \current_wr_buffer[14]_i_1_n_0 ;
  wire \current_wr_buffer[15]_i_2_n_0 ;
  wire \current_wr_buffer[15]_i_3_n_0 ;
  wire \current_wr_buffer[15]_i_4_n_0 ;
  wire \current_wr_buffer[15]_i_5_n_0 ;
  wire \current_wr_buffer[1]_i_1_n_0 ;
  wire \current_wr_buffer[2]_i_1_n_0 ;
  wire \current_wr_buffer[3]_i_1_n_0 ;
  wire \current_wr_buffer[4]_i_1_n_0 ;
  wire \current_wr_buffer[5]_i_1_n_0 ;
  wire \current_wr_buffer[6]_i_1_n_0 ;
  wire \current_wr_buffer[7]_i_1_n_0 ;
  wire \current_wr_buffer[8]_i_1_n_0 ;
  wire \current_wr_buffer[9]_i_1_n_0 ;
  wire current_wr_grnt_i_10_n_0;
  wire current_wr_grnt_i_11_n_0;
  wire current_wr_grnt_i_1_n_0;
  wire current_wr_grnt_i_2_n_0;
  wire current_wr_grnt_i_3_n_0;
  wire current_wr_grnt_i_4_n_0;
  wire current_wr_grnt_i_5_n_0;
  wire current_wr_grnt_i_6_n_0;
  wire current_wr_grnt_i_7_n_0;
  wire current_wr_grnt_i_8_n_0;
  wire current_wr_grnt_i_9_n_0;
  wire current_wr_op_done_i_10_n_0;
  wire current_wr_op_done_i_1_n_0;
  wire current_wr_op_done_i_2_n_0;
  wire current_wr_op_done_i_3_n_0;
  wire current_wr_op_done_i_4_n_0;
  wire current_wr_op_done_i_5_n_0;
  wire current_wr_op_done_i_6_n_0;
  wire current_wr_op_done_i_7_n_0;
  wire current_wr_op_done_i_8_n_0;
  wire current_wr_op_done_i_9_n_0;
  wire \dataQ[0].iobuf_inst__0 ;
  wire \dataQ[10].iobuf_inst__0 ;
  wire \dataQ[11].iobuf_inst__0 ;
  wire \dataQ[12].iobuf_inst__0 ;
  wire \dataQ[13].iobuf_inst__0 ;
  wire \dataQ[14].iobuf_inst__0 ;
  wire \dataQ[15].iobuf_inst__0 ;
  wire \dataQ[1].iobuf_inst__0 ;
  wire \dataQ[2].iobuf_inst__0 ;
  wire \dataQ[3].iobuf_inst__0 ;
  wire \dataQ[4].iobuf_inst__0 ;
  wire \dataQ[5].iobuf_inst__0 ;
  wire \dataQ[6].iobuf_inst__0 ;
  wire \dataQ[7].iobuf_inst__0 ;
  wire \dataQ[8].iobuf_inst__0 ;
  wire \dataQ[9].iobuf_inst__0 ;
  wire [15:0]dataQ_io;
  wire [1:0]dqm_o;
  wire en_i;
  wire en_scrubbing_i;
  wire [23:0]healing_addr_o;
  wire [15:0]healing_data_o;
  wire healing_o;
  wire healing_wr_req_o;
  wire i__carry__0_i_1_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4_n_0;
  wire mem_ready_o;
  wire next_address_bus;
  wire next_auto_ref_count;
  wire next_cas;
  wire next_cke;
  wire next_nop_boot_count;
  wire next_nop_boot_count0_carry__0_i_1_n_0;
  wire next_nop_boot_count0_carry__0_i_2_n_0;
  wire next_nop_boot_count0_carry__0_i_3_n_0;
  wire next_nop_boot_count0_carry__0_i_4_n_0;
  wire next_nop_boot_count0_carry__0_n_0;
  wire next_nop_boot_count0_carry__0_n_1;
  wire next_nop_boot_count0_carry__0_n_2;
  wire next_nop_boot_count0_carry__0_n_3;
  wire next_nop_boot_count0_carry__0_n_4;
  wire next_nop_boot_count0_carry__0_n_5;
  wire next_nop_boot_count0_carry__0_n_6;
  wire next_nop_boot_count0_carry__0_n_7;
  wire next_nop_boot_count0_carry__1_i_1_n_0;
  wire next_nop_boot_count0_carry__1_i_2_n_0;
  wire next_nop_boot_count0_carry__1_i_3_n_0;
  wire next_nop_boot_count0_carry__1_i_4_n_0;
  wire next_nop_boot_count0_carry__1_n_0;
  wire next_nop_boot_count0_carry__1_n_1;
  wire next_nop_boot_count0_carry__1_n_2;
  wire next_nop_boot_count0_carry__1_n_3;
  wire next_nop_boot_count0_carry__1_n_4;
  wire next_nop_boot_count0_carry__1_n_5;
  wire next_nop_boot_count0_carry__1_n_6;
  wire next_nop_boot_count0_carry__1_n_7;
  wire next_nop_boot_count0_carry__2_i_1_n_0;
  wire next_nop_boot_count0_carry__2_i_2_n_0;
  wire next_nop_boot_count0_carry__2_n_3;
  wire next_nop_boot_count0_carry__2_n_6;
  wire next_nop_boot_count0_carry__2_n_7;
  wire next_nop_boot_count0_carry_i_1_n_0;
  wire next_nop_boot_count0_carry_i_2_n_0;
  wire next_nop_boot_count0_carry_i_3_n_0;
  wire next_nop_boot_count0_carry_i_4_n_0;
  wire next_nop_boot_count0_carry_n_0;
  wire next_nop_boot_count0_carry_n_1;
  wire next_nop_boot_count0_carry_n_2;
  wire next_nop_boot_count0_carry_n_3;
  wire next_nop_boot_count0_carry_n_4;
  wire next_nop_boot_count0_carry_n_5;
  wire next_nop_boot_count0_carry_n_6;
  wire next_nop_boot_count0_carry_n_7;
  wire [5:0]next_pend_ref_count;
  wire next_ras;
  wire \next_rd_buffer[0]_2 ;
  wire \next_rd_buffer[1]_1 ;
  wire \next_rd_buffer[2]_0 ;
  wire next_ref_cmd_count;
  wire next_rw_addr;
  wire next_state319_in;
  wire \next_state3_inferred__0/i__carry_n_0 ;
  wire \next_state3_inferred__0/i__carry_n_1 ;
  wire \next_state3_inferred__0/i__carry_n_2 ;
  wire \next_state3_inferred__0/i__carry_n_3 ;
  wire next_we;
  wire next_wr_buffer;
  wire [12:0]p_0_in2_in;
  wire ras_o;
  wire rd_done_int;
  wire rd_grnt_int;
  wire rd_grnt_o;
  wire rd_op_done_o;
  wire rd_req_i;
  wire rd_tmr_vote_o;
  wire rstn_i;
  wire [22:0]rw_addr_i;
  wire [23:0]rw_addr_int;
  wire scrub_rd_req_o;
  wire [23:0]scrubbing_addr_o;
  wire scrubbing_o;
  wire we_o;
  wire [15:0]wr_data_i;
  wire wr_done_i;
  wire wr_grnt_int;
  wire wr_grnt_o;
  wire wr_op_done_o;
  wire wr_req_i;
  wire [3:1]NLW_next_nop_boot_count0_carry__2_CO_UNCONNECTED;
  wire [3:2]NLW_next_nop_boot_count0_carry__2_O_UNCONNECTED;
  wire [3:0]\NLW_next_state3_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:1]\NLW_next_state3_inferred__0/i__carry__0_CO_UNCONNECTED ;
  wire [3:0]\NLW_next_state3_inferred__0/i__carry__0_O_UNCONNECTED ;

  (* CAPACITANCE = "DONT_CARE" *) 
  (* box_type = "PRIMITIVE" *) 
  OBUF #(
    .IOSTANDARD("DEFAULT")) 
    \addr[0].obuf_inst 
       (.I(current_address_bus[0]),
        .O(addr_o[0]));
  (* CAPACITANCE = "DONT_CARE" *) 
  (* box_type = "PRIMITIVE" *) 
  OBUF #(
    .IOSTANDARD("DEFAULT")) 
    \addr[10].obuf_inst 
       (.I(current_address_bus[10]),
        .O(addr_o[10]));
  (* CAPACITANCE = "DONT_CARE" *) 
  (* box_type = "PRIMITIVE" *) 
  OBUF #(
    .IOSTANDARD("DEFAULT")) 
    \addr[11].obuf_inst 
       (.I(current_address_bus[11]),
        .O(addr_o[11]));
  (* CAPACITANCE = "DONT_CARE" *) 
  (* box_type = "PRIMITIVE" *) 
  OBUF #(
    .IOSTANDARD("DEFAULT")) 
    \addr[12].obuf_inst 
       (.I(current_address_bus[12]),
        .O(addr_o[12]));
  (* CAPACITANCE = "DONT_CARE" *) 
  (* box_type = "PRIMITIVE" *) 
  OBUF #(
    .IOSTANDARD("DEFAULT")) 
    \addr[1].obuf_inst 
       (.I(current_address_bus[1]),
        .O(addr_o[1]));
  (* CAPACITANCE = "DONT_CARE" *) 
  (* box_type = "PRIMITIVE" *) 
  OBUF #(
    .IOSTANDARD("DEFAULT")) 
    \addr[2].obuf_inst 
       (.I(current_address_bus[2]),
        .O(addr_o[2]));
  (* CAPACITANCE = "DONT_CARE" *) 
  (* box_type = "PRIMITIVE" *) 
  OBUF #(
    .IOSTANDARD("DEFAULT")) 
    \addr[3].obuf_inst 
       (.I(current_address_bus[3]),
        .O(addr_o[3]));
  (* CAPACITANCE = "DONT_CARE" *) 
  (* box_type = "PRIMITIVE" *) 
  OBUF #(
    .IOSTANDARD("DEFAULT")) 
    \addr[4].obuf_inst 
       (.I(current_address_bus[4]),
        .O(addr_o[4]));
  (* CAPACITANCE = "DONT_CARE" *) 
  (* box_type = "PRIMITIVE" *) 
  OBUF #(
    .IOSTANDARD("DEFAULT")) 
    \addr[5].obuf_inst 
       (.I(current_address_bus[5]),
        .O(addr_o[5]));
  (* CAPACITANCE = "DONT_CARE" *) 
  (* box_type = "PRIMITIVE" *) 
  OBUF #(
    .IOSTANDARD("DEFAULT")) 
    \addr[6].obuf_inst 
       (.I(current_address_bus[6]),
        .O(addr_o[6]));
  (* CAPACITANCE = "DONT_CARE" *) 
  (* box_type = "PRIMITIVE" *) 
  OBUF #(
    .IOSTANDARD("DEFAULT")) 
    \addr[7].obuf_inst 
       (.I(current_address_bus[7]),
        .O(addr_o[7]));
  (* CAPACITANCE = "DONT_CARE" *) 
  (* box_type = "PRIMITIVE" *) 
  OBUF #(
    .IOSTANDARD("DEFAULT")) 
    \addr[8].obuf_inst 
       (.I(current_address_bus[8]),
        .O(addr_o[8]));
  (* CAPACITANCE = "DONT_CARE" *) 
  (* box_type = "PRIMITIVE" *) 
  OBUF #(
    .IOSTANDARD("DEFAULT")) 
    \addr[9].obuf_inst 
       (.I(current_address_bus[9]),
        .O(addr_o[9]));
  (* CAPACITANCE = "DONT_CARE" *) 
  (* box_type = "PRIMITIVE" *) 
  OBUF #(
    .IOSTANDARD("DEFAULT")) 
    \bank[0].obuf_inst 
       (.I(current_address_bus[13]),
        .O(bank_o[0]));
  (* CAPACITANCE = "DONT_CARE" *) 
  (* box_type = "PRIMITIVE" *) 
  OBUF #(
    .IOSTANDARD("DEFAULT")) 
    \bank[1].obuf_inst 
       (.I(current_address_bus[14]),
        .O(bank_o[1]));
  (* CAPACITANCE = "DONT_CARE" *) 
  (* box_type = "PRIMITIVE" *) 
  OBUF #(
    .IOSTANDARD("DEFAULT")) 
    cas_buf_inst
       (.I(current_cas),
        .O(cas_o));
  (* CAPACITANCE = "DONT_CARE" *) 
  (* box_type = "PRIMITIVE" *) 
  OBUF #(
    .IOSTANDARD("DEFAULT")) 
    cke_buf_inst
       (.I(I),
        .O(cke_o));
  (* CAPACITANCE = "DONT_CARE" *) 
  (* box_type = "PRIMITIVE" *) 
  OBUF #(
    .IOSTANDARD("DEFAULT")) 
    cs_buf_inst
       (.I(1'b0),
        .O(cs_o));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    \ctrl_state_o[0]_INST_0 
       (.I0(\ctrl_state_o[2]_INST_0_i_1_n_0 ),
        .I1(current_state[5]),
        .I2(current_state[6]),
        .I3(current_state[0]),
        .O(ctrl_state_o[0]));
  LUT6 #(
    .INIT(64'h0000000000004000)) 
    \ctrl_state_o[10]_INST_0 
       (.I0(\ctrl_state_o[10]_INST_0_i_1_n_0 ),
        .I1(\ctrl_state_o[16]_INST_0_i_1_n_0 ),
        .I2(\ctrl_state_o[12]_INST_0_i_1_n_0 ),
        .I3(current_state[10]),
        .I4(current_state[9]),
        .I5(current_state[0]),
        .O(ctrl_state_o[10]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \ctrl_state_o[10]_INST_0_i_1 
       (.I0(current_state[11]),
        .I1(current_state[12]),
        .O(\ctrl_state_o[10]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000020000000000)) 
    \ctrl_state_o[11]_INST_0 
       (.I0(\ctrl_state_o[16]_INST_0_i_1_n_0 ),
        .I1(\ctrl_state_o[11]_INST_0_i_1_n_0 ),
        .I2(current_state[12]),
        .I3(current_state[11]),
        .I4(current_state[0]),
        .I5(\ctrl_state_o[12]_INST_0_i_1_n_0 ),
        .O(ctrl_state_o[11]));
  LUT2 #(
    .INIT(4'hE)) 
    \ctrl_state_o[11]_INST_0_i_1 
       (.I0(current_state[9]),
        .I1(current_state[10]),
        .O(\ctrl_state_o[11]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000020000000000)) 
    \ctrl_state_o[12]_INST_0 
       (.I0(\ctrl_state_o[12]_INST_0_i_1_n_0 ),
        .I1(current_state[0]),
        .I2(current_state[9]),
        .I3(current_state[12]),
        .I4(\ctrl_state_o[12]_INST_0_i_2_n_0 ),
        .I5(\ctrl_state_o[16]_INST_0_i_1_n_0 ),
        .O(ctrl_state_o[12]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \ctrl_state_o[12]_INST_0_i_1 
       (.I0(current_state[13]),
        .I1(current_state[16]),
        .I2(current_state[14]),
        .I3(current_state[15]),
        .I4(\ctrl_state_o[16]_INST_0_i_4_n_0 ),
        .O(\ctrl_state_o[12]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \ctrl_state_o[12]_INST_0_i_2 
       (.I0(current_state[11]),
        .I1(current_state[10]),
        .O(\ctrl_state_o[12]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000010000000000)) 
    \ctrl_state_o[13]_INST_0 
       (.I0(\ctrl_state_o[16]_INST_0_i_4_n_0 ),
        .I1(current_state[15]),
        .I2(current_state[16]),
        .I3(current_state[13]),
        .I4(\ctrl_state_o[15]_INST_0_i_1_n_0 ),
        .I5(\ctrl_state_o[16]_INST_0_i_1_n_0 ),
        .O(ctrl_state_o[13]));
  LUT5 #(
    .INIT(32'h00080000)) 
    \ctrl_state_o[14]_INST_0 
       (.I0(\ctrl_state_o[14]_INST_0_i_1_n_0 ),
        .I1(current_state[14]),
        .I2(current_state[0]),
        .I3(current_state[13]),
        .I4(\ctrl_state_o[16]_INST_0_i_1_n_0 ),
        .O(ctrl_state_o[14]));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \ctrl_state_o[14]_INST_0_i_1 
       (.I0(\ctrl_state_o[16]_INST_0_i_4_n_0 ),
        .I1(current_state[15]),
        .I2(current_state[16]),
        .I3(current_state[9]),
        .I4(current_state[10]),
        .I5(\ctrl_state_o[10]_INST_0_i_1_n_0 ),
        .O(\ctrl_state_o[14]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    \ctrl_state_o[15]_INST_0 
       (.I0(\ctrl_state_o[16]_INST_0_i_1_n_0 ),
        .I1(\ctrl_state_o[16]_INST_0_i_4_n_0 ),
        .I2(current_state[15]),
        .I3(current_state[13]),
        .I4(current_state[16]),
        .I5(\ctrl_state_o[15]_INST_0_i_1_n_0 ),
        .O(ctrl_state_o[15]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \ctrl_state_o[15]_INST_0_i_1 
       (.I0(current_state[14]),
        .I1(current_state[9]),
        .I2(current_state[0]),
        .I3(current_state[10]),
        .I4(current_state[12]),
        .I5(current_state[11]),
        .O(\ctrl_state_o[15]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    \ctrl_state_o[16]_INST_0 
       (.I0(\ctrl_state_o[16]_INST_0_i_1_n_0 ),
        .I1(\ctrl_state_o[16]_INST_0_i_2_n_0 ),
        .I2(current_state[16]),
        .I3(current_state[13]),
        .I4(\ctrl_state_o[16]_INST_0_i_3_n_0 ),
        .I5(\ctrl_state_o[16]_INST_0_i_4_n_0 ),
        .O(ctrl_state_o[16]));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \ctrl_state_o[16]_INST_0_i_1 
       (.I0(current_state[23]),
        .I1(current_state[22]),
        .I2(current_state[21]),
        .I3(\ctrl_state_o[22]_INST_0_i_2_n_0 ),
        .I4(current_state[17]),
        .I5(\ctrl_state_o[17]_INST_0_i_1_n_0 ),
        .O(\ctrl_state_o[16]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \ctrl_state_o[16]_INST_0_i_2 
       (.I0(current_state[11]),
        .I1(current_state[12]),
        .I2(current_state[10]),
        .I3(current_state[0]),
        .I4(current_state[9]),
        .O(\ctrl_state_o[16]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \ctrl_state_o[16]_INST_0_i_3 
       (.I0(current_state[14]),
        .I1(current_state[15]),
        .O(\ctrl_state_o[16]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \ctrl_state_o[16]_INST_0_i_4 
       (.I0(current_state[3]),
        .I1(current_state[4]),
        .I2(current_state[1]),
        .I3(current_state[2]),
        .I4(\ctrl_state_o[5]_INST_0_i_2_n_0 ),
        .O(\ctrl_state_o[16]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    \ctrl_state_o[17]_INST_0 
       (.I0(\ctrl_state_o[26]_INST_0_i_1_n_0 ),
        .I1(\ctrl_state_o[17]_INST_0_i_1_n_0 ),
        .I2(current_state[17]),
        .I3(current_state[0]),
        .I4(current_state[25]),
        .I5(\ctrl_state_o[17]_INST_0_i_2_n_0 ),
        .O(ctrl_state_o[17]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \ctrl_state_o[17]_INST_0_i_1 
       (.I0(current_state[20]),
        .I1(current_state[19]),
        .I2(current_state[18]),
        .O(\ctrl_state_o[17]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \ctrl_state_o[17]_INST_0_i_2 
       (.I0(current_state[26]),
        .I1(current_state[21]),
        .I2(current_state[24]),
        .I3(current_state[22]),
        .I4(current_state[23]),
        .O(\ctrl_state_o[17]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h10000000)) 
    \ctrl_state_o[18]_INST_0 
       (.I0(current_state[17]),
        .I1(current_state[0]),
        .I2(\ctrl_state_o[26]_INST_0_i_1_n_0 ),
        .I3(\ctrl_state_o[18]_INST_0_i_1_n_0 ),
        .I4(current_state[18]),
        .O(ctrl_state_o[18]));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \ctrl_state_o[18]_INST_0_i_1 
       (.I0(current_state[19]),
        .I1(current_state[23]),
        .I2(current_state[22]),
        .I3(current_state[21]),
        .I4(current_state[20]),
        .I5(\ctrl_state_o[22]_INST_0_i_2_n_0 ),
        .O(\ctrl_state_o[18]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \ctrl_state_o[19]_INST_0 
       (.I0(\ctrl_state_o[26]_INST_0_i_1_n_0 ),
        .I1(\ctrl_state_o[19]_INST_0_i_1_n_0 ),
        .I2(current_state[23]),
        .I3(current_state[22]),
        .I4(current_state[24]),
        .I5(current_state[21]),
        .O(ctrl_state_o[19]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFD)) 
    \ctrl_state_o[19]_INST_0_i_1 
       (.I0(current_state[19]),
        .I1(current_state[17]),
        .I2(current_state[0]),
        .I3(current_state[18]),
        .I4(current_state[20]),
        .I5(\ctrl_state_o[21]_INST_0_i_1_n_0 ),
        .O(\ctrl_state_o[19]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    \ctrl_state_o[1]_INST_0 
       (.I0(\ctrl_state_o[3]_INST_0_i_1_n_0 ),
        .I1(current_state[1]),
        .I2(current_state[4]),
        .I3(current_state[3]),
        .I4(current_state[0]),
        .I5(current_state[2]),
        .O(ctrl_state_o[1]));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    \ctrl_state_o[20]_INST_0 
       (.I0(current_state[17]),
        .I1(current_state[0]),
        .I2(\ctrl_state_o[26]_INST_0_i_1_n_0 ),
        .I3(current_state[20]),
        .I4(\ctrl_state_o[20]_INST_0_i_1_n_0 ),
        .I5(\ctrl_state_o[20]_INST_0_i_2_n_0 ),
        .O(ctrl_state_o[20]));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \ctrl_state_o[20]_INST_0_i_1 
       (.I0(current_state[18]),
        .I1(current_state[19]),
        .O(\ctrl_state_o[20]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \ctrl_state_o[20]_INST_0_i_2 
       (.I0(current_state[24]),
        .I1(current_state[21]),
        .I2(current_state[26]),
        .I3(current_state[25]),
        .I4(current_state[22]),
        .I5(current_state[23]),
        .O(\ctrl_state_o[20]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    \ctrl_state_o[21]_INST_0 
       (.I0(\ctrl_state_o[24]_INST_0_i_1_n_0 ),
        .I1(\ctrl_state_o[21]_INST_0_i_1_n_0 ),
        .I2(current_state[21]),
        .I3(\ctrl_state_o[21]_INST_0_i_2_n_0 ),
        .I4(current_state[0]),
        .I5(current_state[24]),
        .O(ctrl_state_o[21]));
  LUT2 #(
    .INIT(4'hE)) 
    \ctrl_state_o[21]_INST_0_i_1 
       (.I0(current_state[26]),
        .I1(current_state[25]),
        .O(\ctrl_state_o[21]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \ctrl_state_o[21]_INST_0_i_2 
       (.I0(current_state[22]),
        .I1(current_state[23]),
        .O(\ctrl_state_o[21]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT5 #(
    .INIT(32'h00000200)) 
    \ctrl_state_o[22]_INST_0 
       (.I0(\ctrl_state_o[26]_INST_0_i_1_n_0 ),
        .I1(current_state[0]),
        .I2(current_state[23]),
        .I3(current_state[22]),
        .I4(\ctrl_state_o[22]_INST_0_i_1_n_0 ),
        .O(ctrl_state_o[22]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \ctrl_state_o[22]_INST_0_i_1 
       (.I0(current_state[20]),
        .I1(current_state[19]),
        .I2(current_state[18]),
        .I3(current_state[17]),
        .I4(\ctrl_state_o[22]_INST_0_i_2_n_0 ),
        .I5(current_state[21]),
        .O(\ctrl_state_o[22]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \ctrl_state_o[22]_INST_0_i_2 
       (.I0(current_state[26]),
        .I1(current_state[25]),
        .I2(current_state[24]),
        .O(\ctrl_state_o[22]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00000200)) 
    \ctrl_state_o[23]_INST_0 
       (.I0(\ctrl_state_o[24]_INST_0_i_1_n_0 ),
        .I1(current_state[22]),
        .I2(current_state[21]),
        .I3(current_state[23]),
        .I4(\ctrl_state_o[23]_INST_0_i_1_n_0 ),
        .O(ctrl_state_o[23]));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \ctrl_state_o[23]_INST_0_i_1 
       (.I0(current_state[25]),
        .I1(current_state[24]),
        .I2(current_state[0]),
        .I3(current_state[26]),
        .O(\ctrl_state_o[23]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000020000000000)) 
    \ctrl_state_o[24]_INST_0 
       (.I0(\ctrl_state_o[24]_INST_0_i_1_n_0 ),
        .I1(current_state[0]),
        .I2(current_state[23]),
        .I3(current_state[24]),
        .I4(current_state[22]),
        .I5(\ctrl_state_o[24]_INST_0_i_2_n_0 ),
        .O(ctrl_state_o[24]));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \ctrl_state_o[24]_INST_0_i_1 
       (.I0(\ctrl_state_o[16]_INST_0_i_4_n_0 ),
        .I1(\ctrl_state_o[7]_INST_0_i_2_n_0 ),
        .I2(current_state[20]),
        .I3(current_state[19]),
        .I4(current_state[18]),
        .I5(current_state[17]),
        .O(\ctrl_state_o[24]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \ctrl_state_o[24]_INST_0_i_2 
       (.I0(current_state[21]),
        .I1(current_state[25]),
        .I2(current_state[26]),
        .O(\ctrl_state_o[24]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT5 #(
    .INIT(32'h00000008)) 
    \ctrl_state_o[25]_INST_0 
       (.I0(\ctrl_state_o[26]_INST_0_i_1_n_0 ),
        .I1(current_state[25]),
        .I2(current_state[0]),
        .I3(current_state[26]),
        .I4(\ctrl_state_o[26]_INST_0_i_2_n_0 ),
        .O(ctrl_state_o[25]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT5 #(
    .INIT(32'h00000200)) 
    \ctrl_state_o[26]_INST_0 
       (.I0(\ctrl_state_o[26]_INST_0_i_1_n_0 ),
        .I1(current_state[25]),
        .I2(current_state[0]),
        .I3(current_state[26]),
        .I4(\ctrl_state_o[26]_INST_0_i_2_n_0 ),
        .O(ctrl_state_o[26]));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \ctrl_state_o[26]_INST_0_i_1 
       (.I0(\ctrl_state_o[26]_INST_0_i_3_n_0 ),
        .I1(current_state[15]),
        .I2(current_state[14]),
        .I3(current_state[16]),
        .I4(current_state[13]),
        .I5(\ctrl_state_o[16]_INST_0_i_4_n_0 ),
        .O(\ctrl_state_o[26]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \ctrl_state_o[26]_INST_0_i_2 
       (.I0(\ctrl_state_o[17]_INST_0_i_1_n_0 ),
        .I1(current_state[17]),
        .I2(current_state[21]),
        .I3(current_state[24]),
        .I4(current_state[22]),
        .I5(current_state[23]),
        .O(\ctrl_state_o[26]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \ctrl_state_o[26]_INST_0_i_3 
       (.I0(current_state[12]),
        .I1(current_state[11]),
        .I2(current_state[10]),
        .I3(current_state[9]),
        .O(\ctrl_state_o[26]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \ctrl_state_o[2]_INST_0 
       (.I0(\ctrl_state_o[2]_INST_0_i_1_n_0 ),
        .I1(current_state[6]),
        .I2(current_state[5]),
        .I3(current_state[0]),
        .O(ctrl_state_o[2]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    \ctrl_state_o[2]_INST_0_i_1 
       (.I0(\ctrl_state_o[16]_INST_0_i_1_n_0 ),
        .I1(\ctrl_state_o[7]_INST_0_i_2_n_0 ),
        .I2(\ctrl_state_o[8]_INST_0_i_3_n_0 ),
        .I3(current_state[8]),
        .I4(current_state[7]),
        .O(\ctrl_state_o[2]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000200)) 
    \ctrl_state_o[3]_INST_0 
       (.I0(\ctrl_state_o[3]_INST_0_i_1_n_0 ),
        .I1(current_state[4]),
        .I2(current_state[3]),
        .I3(current_state[2]),
        .I4(current_state[1]),
        .I5(current_state[0]),
        .O(ctrl_state_o[3]));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \ctrl_state_o[3]_INST_0_i_1 
       (.I0(\ctrl_state_o[7]_INST_0_i_2_n_0 ),
        .I1(\ctrl_state_o[16]_INST_0_i_1_n_0 ),
        .I2(current_state[5]),
        .I3(current_state[6]),
        .I4(current_state[7]),
        .I5(current_state[8]),
        .O(\ctrl_state_o[3]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000080000)) 
    \ctrl_state_o[4]_INST_0 
       (.I0(\ctrl_state_o[8]_INST_0_i_1_n_0 ),
        .I1(\ctrl_state_o[4]_INST_0_i_1_n_0 ),
        .I2(current_state[7]),
        .I3(current_state[8]),
        .I4(current_state[3]),
        .I5(\ctrl_state_o[4]_INST_0_i_2_n_0 ),
        .O(ctrl_state_o[4]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \ctrl_state_o[4]_INST_0_i_1 
       (.I0(current_state[5]),
        .I1(current_state[6]),
        .O(\ctrl_state_o[4]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \ctrl_state_o[4]_INST_0_i_2 
       (.I0(current_state[0]),
        .I1(current_state[1]),
        .I2(current_state[2]),
        .I3(current_state[4]),
        .O(\ctrl_state_o[4]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000020000)) 
    \ctrl_state_o[5]_INST_0 
       (.I0(\ctrl_state_o[8]_INST_0_i_1_n_0 ),
        .I1(current_state[1]),
        .I2(current_state[3]),
        .I3(\ctrl_state_o[5]_INST_0_i_1_n_0 ),
        .I4(current_state[4]),
        .I5(\ctrl_state_o[5]_INST_0_i_2_n_0 ),
        .O(ctrl_state_o[5]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \ctrl_state_o[5]_INST_0_i_1 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .O(\ctrl_state_o[5]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \ctrl_state_o[5]_INST_0_i_2 
       (.I0(current_state[8]),
        .I1(current_state[7]),
        .I2(current_state[6]),
        .I3(current_state[5]),
        .O(\ctrl_state_o[5]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000020000000000)) 
    \ctrl_state_o[6]_INST_0 
       (.I0(\ctrl_state_o[8]_INST_0_i_1_n_0 ),
        .I1(current_state[0]),
        .I2(current_state[6]),
        .I3(current_state[5]),
        .I4(\ctrl_state_o[8]_INST_0_i_3_n_0 ),
        .I5(\ctrl_state_o[6]_INST_0_i_1_n_0 ),
        .O(ctrl_state_o[6]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \ctrl_state_o[6]_INST_0_i_1 
       (.I0(current_state[7]),
        .I1(current_state[8]),
        .O(\ctrl_state_o[6]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \ctrl_state_o[7]_INST_0 
       (.I0(\ctrl_state_o[16]_INST_0_i_1_n_0 ),
        .I1(current_state[1]),
        .I2(current_state[2]),
        .I3(current_state[4]),
        .I4(\ctrl_state_o[7]_INST_0_i_1_n_0 ),
        .I5(\ctrl_state_o[7]_INST_0_i_2_n_0 ),
        .O(ctrl_state_o[7]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFEF)) 
    \ctrl_state_o[7]_INST_0_i_1 
       (.I0(current_state[0]),
        .I1(current_state[6]),
        .I2(current_state[7]),
        .I3(current_state[8]),
        .I4(current_state[3]),
        .I5(current_state[5]),
        .O(\ctrl_state_o[7]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \ctrl_state_o[7]_INST_0_i_2 
       (.I0(current_state[13]),
        .I1(current_state[16]),
        .I2(current_state[14]),
        .I3(current_state[15]),
        .I4(\ctrl_state_o[26]_INST_0_i_3_n_0 ),
        .O(\ctrl_state_o[7]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000080000)) 
    \ctrl_state_o[8]_INST_0 
       (.I0(\ctrl_state_o[8]_INST_0_i_1_n_0 ),
        .I1(current_state[8]),
        .I2(current_state[5]),
        .I3(current_state[0]),
        .I4(\ctrl_state_o[8]_INST_0_i_2_n_0 ),
        .I5(\ctrl_state_o[8]_INST_0_i_3_n_0 ),
        .O(ctrl_state_o[8]));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \ctrl_state_o[8]_INST_0_i_1 
       (.I0(\ctrl_state_o[16]_INST_0_i_1_n_0 ),
        .I1(\ctrl_state_o[26]_INST_0_i_3_n_0 ),
        .I2(current_state[15]),
        .I3(current_state[14]),
        .I4(current_state[16]),
        .I5(current_state[13]),
        .O(\ctrl_state_o[8]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \ctrl_state_o[8]_INST_0_i_2 
       (.I0(current_state[6]),
        .I1(current_state[7]),
        .O(\ctrl_state_o[8]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \ctrl_state_o[8]_INST_0_i_3 
       (.I0(current_state[2]),
        .I1(current_state[1]),
        .I2(current_state[4]),
        .I3(current_state[3]),
        .O(\ctrl_state_o[8]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000004000000000)) 
    \ctrl_state_o[9]_INST_0 
       (.I0(\ctrl_state_o[10]_INST_0_i_1_n_0 ),
        .I1(\ctrl_state_o[16]_INST_0_i_1_n_0 ),
        .I2(\ctrl_state_o[12]_INST_0_i_1_n_0 ),
        .I3(current_state[10]),
        .I4(current_state[0]),
        .I5(current_state[9]),
        .O(ctrl_state_o[9]));
  LUT2 #(
    .INIT(4'h6)) 
    \current_act_to_rw_count[0]_i_1 
       (.I0(ctrl_state_o[13]),
        .I1(current_act_to_rw_count),
        .O(\current_act_to_rw_count[0]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \current_act_to_rw_count_reg[0] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(\current_nop_boot_count[14]_i_3_n_0 ),
        .D(\current_act_to_rw_count[0]_i_1_n_0 ),
        .Q(current_act_to_rw_count));
  LUT5 #(
    .INIT(32'h000000F2)) 
    \current_address_bus[0]_i_1 
       (.I0(\current_address_bus[0]_i_2_n_0 ),
        .I1(\current_address_bus[0]_i_3_n_0 ),
        .I2(\current_address_bus[0]_i_4_n_0 ),
        .I3(\current_address_bus[0]_i_5_n_0 ),
        .I4(\current_address_bus[1]_i_7_n_0 ),
        .O(\current_address_bus[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBABBBAAABAAABAAA)) 
    \current_address_bus[0]_i_2 
       (.I0(\current_address_bus[0]_i_6_n_0 ),
        .I1(\current_address_bus[1]_i_9_n_0 ),
        .I2(p_0_in2_in[0]),
        .I3(\current_address_bus[7]_i_4_n_0 ),
        .I4(current_we_i_3_n_0),
        .I5(rw_addr_int[0]),
        .O(\current_address_bus[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEE0)) 
    \current_address_bus[0]_i_3 
       (.I0(current_state[11]),
        .I1(current_state[13]),
        .I2(current_state[16]),
        .I3(current_state[22]),
        .I4(current_state[3]),
        .I5(current_state[6]),
        .O(\current_address_bus[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0E000E000E000000)) 
    \current_address_bus[0]_i_4 
       (.I0(\current_address_bus[0]_i_7_n_0 ),
        .I1(\current_address_bus[5]_i_8_n_0 ),
        .I2(current_state[22]),
        .I3(Q[9]),
        .I4(wr_grnt_int),
        .I5(rd_grnt_int),
        .O(\current_address_bus[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \current_address_bus[0]_i_5 
       (.I0(\current_state[2]_i_7_n_0 ),
        .I1(current_state[15]),
        .I2(current_state[14]),
        .I3(current_state[23]),
        .I4(current_state[17]),
        .I5(\ctrl_state_o[22]_INST_0_i_2_n_0 ),
        .O(\current_address_bus[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h5555555555550400)) 
    \current_address_bus[0]_i_6 
       (.I0(current_state[11]),
        .I1(Q[0]),
        .I2(\current_address_bus[13]_i_4_n_0 ),
        .I3(current_state[13]),
        .I4(current_state[16]),
        .I5(current_state[22]),
        .O(\current_address_bus[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    \current_address_bus[0]_i_7 
       (.I0(current_precharge_count),
        .I1(current_state[3]),
        .I2(current_state[6]),
        .I3(\current_state[2]_i_5_n_0 ),
        .I4(\current_address_bus[0]_i_8_n_0 ),
        .I5(current_state[16]),
        .O(\current_address_bus[0]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \current_address_bus[0]_i_8 
       (.I0(current_state[11]),
        .I1(current_state[13]),
        .O(\current_address_bus[0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000AAAB)) 
    \current_address_bus[10]_i_1 
       (.I0(\current_address_bus[10]_i_2_n_0 ),
        .I1(current_state[3]),
        .I2(current_state[1]),
        .I3(\current_address_bus[10]_i_3_n_0 ),
        .I4(\current_address_bus[10]_i_4_n_0 ),
        .I5(\current_address_bus[10]_i_5_n_0 ),
        .O(\current_address_bus[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h01FF010001000100)) 
    \current_address_bus[10]_i_2 
       (.I0(current_state[11]),
        .I1(current_state[3]),
        .I2(current_state[6]),
        .I3(current_state[1]),
        .I4(Q[19]),
        .I5(\current_state[12]_i_4_n_0 ),
        .O(\current_address_bus[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hD0D0D0DDD0D0DDDD)) 
    \current_address_bus[10]_i_3 
       (.I0(Q[19]),
        .I1(\current_address_bus[12]_i_2_n_0 ),
        .I2(\current_address_bus[10]_i_6_n_0 ),
        .I3(p_0_in2_in[10]),
        .I4(current_pending_refresh),
        .I5(\current_address_bus[7]_i_4_n_0 ),
        .O(\current_address_bus[10]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT5 #(
    .INIT(32'hFFFEFFFF)) 
    \current_address_bus[10]_i_4 
       (.I0(current_state[0]),
        .I1(current_state[2]),
        .I2(current_state[12]),
        .I3(current_state[13]),
        .I4(\current_state[16]_i_6_n_0 ),
        .O(\current_address_bus[10]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \current_address_bus[10]_i_5 
       (.I0(current_state[7]),
        .I1(current_state[8]),
        .I2(current_state[9]),
        .I3(current_state[10]),
        .I4(current_state[5]),
        .I5(current_state[4]),
        .O(\current_address_bus[10]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair143" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \current_address_bus[10]_i_6 
       (.I0(current_state[6]),
        .I1(current_state[11]),
        .O(\current_address_bus[10]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h8080808880AA80AA)) 
    \current_address_bus[11]_i_1 
       (.I0(\current_state[12]_i_5_n_0 ),
        .I1(Q[20]),
        .I2(\current_state[12]_i_4_n_0 ),
        .I3(current_state[3]),
        .I4(\current_address_bus[12]_i_2_n_0 ),
        .I5(\current_address_bus[11]_i_2_n_0 ),
        .O(\current_address_bus[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAABFBFFFFABFB)) 
    \current_address_bus[11]_i_2 
       (.I0(\current_state[12]_i_3_n_0 ),
        .I1(rw_addr_i[18]),
        .I2(scrubbing_o),
        .I3(scrubbing_addr_o[20]),
        .I4(healing_o),
        .I5(healing_addr_o[20]),
        .O(\current_address_bus[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8080808880AA80AA)) 
    \current_address_bus[12]_i_1 
       (.I0(\current_state[12]_i_5_n_0 ),
        .I1(Q[21]),
        .I2(\current_state[12]_i_4_n_0 ),
        .I3(current_state[3]),
        .I4(\current_address_bus[12]_i_2_n_0 ),
        .I5(\current_address_bus[12]_i_3_n_0 ),
        .O(\current_address_bus[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFDFFFFF)) 
    \current_address_bus[12]_i_2 
       (.I0(current_precharge_count),
        .I1(current_pending_refresh),
        .I2(mem_ready_o),
        .I3(current_state[11]),
        .I4(current_state[6]),
        .I5(\current_address_bus[13]_i_4_n_0 ),
        .O(\current_address_bus[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAEAEAEBFBFBFAEBF)) 
    \current_address_bus[12]_i_3 
       (.I0(\current_state[12]_i_3_n_0 ),
        .I1(healing_o),
        .I2(healing_addr_o[21]),
        .I3(rw_addr_i[19]),
        .I4(scrubbing_o),
        .I5(scrubbing_addr_o[21]),
        .O(\current_address_bus[12]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0222020202020202)) 
    \current_address_bus[13]_i_1 
       (.I0(\current_address_bus[13]_i_2_n_0 ),
        .I1(\current_address_bus[13]_i_3_n_0 ),
        .I2(current_state[3]),
        .I3(\current_address_bus[13]_i_4_n_0 ),
        .I4(Q[22]),
        .I5(\current_address_bus[13]_i_5_n_0 ),
        .O(\current_address_bus[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF32FF10101010)) 
    \current_address_bus[13]_i_2 
       (.I0(\current_state[6]_i_2_n_0 ),
        .I1(\current_address_bus[7]_i_5_n_0 ),
        .I2(rw_addr_int[22]),
        .I3(\current_address_bus[8]_i_3_n_0 ),
        .I4(\current_address_bus[8]_i_4_n_0 ),
        .I5(Q[22]),
        .O(\current_address_bus[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFB)) 
    \current_address_bus[13]_i_3 
       (.I0(\current_state[11]_i_4_n_0 ),
        .I1(\current_address_bus[13]_i_6_n_0 ),
        .I2(\ctrl_state_o[16]_INST_0_i_3_n_0 ),
        .I3(\ctrl_state_o[23]_INST_0_i_1_n_0 ),
        .I4(\current_state[11]_i_5_n_0 ),
        .I5(\current_state[2]_i_7_n_0 ),
        .O(\current_address_bus[13]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \current_address_bus[13]_i_4 
       (.I0(wr_grnt_int),
        .I1(rd_grnt_int),
        .O(\current_address_bus[13]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    \current_address_bus[13]_i_5 
       (.I0(mem_ready_o),
        .I1(\current_address_bus[5]_i_3_n_0 ),
        .I2(current_state[11]),
        .I3(current_state[6]),
        .I4(current_state[13]),
        .I5(current_state[16]),
        .O(\current_address_bus[13]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \current_address_bus[13]_i_6 
       (.I0(current_state[10]),
        .I1(current_state[12]),
        .O(\current_address_bus[13]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00FE0000)) 
    \current_address_bus[14]_i_1 
       (.I0(current_cke_i_5_n_0),
        .I1(current_state[4]),
        .I2(current_state[5]),
        .I3(\current_address_bus[14]_i_3_n_0 ),
        .I4(\current_address_bus[14]_i_4_n_0 ),
        .I5(\current_address_bus[14]_i_5_n_0 ),
        .O(next_address_bus));
  LUT6 #(
    .INIT(64'hFFEFFFEFFEEFFFEF)) 
    \current_address_bus[14]_i_10 
       (.I0(\current_address_bus[14]_i_23_n_0 ),
        .I1(current_state[11]),
        .I2(current_state[8]),
        .I3(current_state[13]),
        .I4(Q[23]),
        .I5(\current_address_bus[13]_i_4_n_0 ),
        .O(\current_address_bus[14]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \current_address_bus[14]_i_11 
       (.I0(current_state[9]),
        .I1(current_state[10]),
        .I2(current_state[5]),
        .I3(current_state[7]),
        .I4(\current_address_bus[5]_i_5_n_0 ),
        .O(\current_address_bus[14]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT4 #(
    .INIT(16'h1555)) 
    \current_address_bus[14]_i_12 
       (.I0(\ctrl_state_o[20]_INST_0_i_2_n_0 ),
        .I1(current_auto_ref_count[0]),
        .I2(current_auto_ref_count[1]),
        .I3(current_auto_ref_count[2]),
        .O(\current_address_bus[14]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \current_address_bus[14]_i_13 
       (.I0(\ctrl_state_o[17]_INST_0_i_1_n_0 ),
        .I1(current_state[17]),
        .I2(current_state[13]),
        .I3(current_state[16]),
        .I4(current_state[14]),
        .I5(current_state[15]),
        .O(\current_address_bus[14]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT4 #(
    .INIT(16'hABAA)) 
    \current_address_bus[14]_i_14 
       (.I0(\current_cas_rd_count[1]_i_12_n_0 ),
        .I1(current_state[14]),
        .I2(current_state[16]),
        .I3(\ctrl_state_o[16]_INST_0_i_1_n_0 ),
        .O(\current_address_bus[14]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hABABABABABABABAA)) 
    \current_address_bus[14]_i_15 
       (.I0(\current_state[2]_i_8_n_0 ),
        .I1(\ctrl_state_o[18]_INST_0_i_1_n_0 ),
        .I2(\current_rd_buffer[1][15]_i_3_n_0 ),
        .I3(current_state[19]),
        .I4(current_state[18]),
        .I5(\current_address_bus[14]_i_24_n_0 ),
        .O(\current_address_bus[14]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \current_address_bus[14]_i_16 
       (.I0(current_state[12]),
        .I1(current_state[4]),
        .I2(current_state[3]),
        .I3(current_state[6]),
        .I4(current_state[5]),
        .I5(\current_state[26]_i_5_n_0 ),
        .O(\current_address_bus[14]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h0000000002000000)) 
    \current_address_bus[14]_i_17 
       (.I0(current_cke_i_9_n_0),
        .I1(\ctrl_state_o[22]_INST_0_i_2_n_0 ),
        .I2(current_state[21]),
        .I3(\current_state[26]_i_6_n_0 ),
        .I4(current_cke_i_13_n_0),
        .I5(\current_address_bus[5]_i_9_n_0 ),
        .O(\current_address_bus[14]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    \current_address_bus[14]_i_18 
       (.I0(current_state[21]),
        .I1(current_state[11]),
        .I2(\current_state[26]_i_6_n_0 ),
        .I3(current_cas_i_9_n_0),
        .I4(\ctrl_state_o[17]_INST_0_i_1_n_0 ),
        .I5(current_state[15]),
        .O(\current_address_bus[14]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h0400000000000000)) 
    \current_address_bus[14]_i_19 
       (.I0(\current_address_bus[14]_i_25_n_0 ),
        .I1(\current_address_bus[14]_i_26_n_0 ),
        .I2(\current_address_bus[14]_i_27_n_0 ),
        .I3(current_nop_boot_count[3]),
        .I4(current_nop_boot_count[14]),
        .I5(current_nop_boot_count[10]),
        .O(\current_address_bus[14]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AAEAEEEE)) 
    \current_address_bus[14]_i_2 
       (.I0(\current_address_bus[14]_i_6_n_0 ),
        .I1(\current_address_bus[14]_i_7_n_0 ),
        .I2(\current_address_bus[14]_i_8_n_0 ),
        .I3(\current_address_bus[14]_i_9_n_0 ),
        .I4(\current_address_bus[14]_i_10_n_0 ),
        .I5(\current_address_bus[14]_i_11_n_0 ),
        .O(\current_address_bus[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFFFFFFFFFF)) 
    \current_address_bus[14]_i_20 
       (.I0(current_state[11]),
        .I1(current_state[8]),
        .I2(\current_address_bus[14]_i_28_n_0 ),
        .I3(\current_address_bus[13]_i_4_n_0 ),
        .I4(Q[23]),
        .I5(\current_address_bus[5]_i_3_n_0 ),
        .O(\current_address_bus[14]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFFFF)) 
    \current_address_bus[14]_i_21 
       (.I0(current_state[17]),
        .I1(current_state[23]),
        .I2(current_state[16]),
        .I3(current_state[22]),
        .I4(current_state[11]),
        .I5(current_pending_refresh),
        .O(\current_address_bus[14]_i_21_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT4 #(
    .INIT(16'h0116)) 
    \current_address_bus[14]_i_22 
       (.I0(current_state[23]),
        .I1(current_state[17]),
        .I2(current_state[22]),
        .I3(current_state[16]),
        .O(\current_address_bus[14]_i_22_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \current_address_bus[14]_i_23 
       (.I0(current_state[22]),
        .I1(current_state[16]),
        .I2(current_state[23]),
        .I3(current_state[17]),
        .O(\current_address_bus[14]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFEFEEA)) 
    \current_address_bus[14]_i_24 
       (.I0(\ctrl_state_o[21]_INST_0_i_2_n_0 ),
        .I1(current_state[26]),
        .I2(current_state[25]),
        .I3(current_state[24]),
        .I4(current_state[20]),
        .I5(current_state[21]),
        .O(\current_address_bus[14]_i_24_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \current_address_bus[14]_i_25 
       (.I0(current_nop_boot_count[9]),
        .I1(current_nop_boot_count[8]),
        .I2(current_nop_boot_count[13]),
        .I3(current_nop_boot_count[12]),
        .O(\current_address_bus[14]_i_25_n_0 ));
  LUT4 #(
    .INIT(16'h0008)) 
    \current_address_bus[14]_i_26 
       (.I0(current_nop_boot_count[4]),
        .I1(current_nop_boot_count[11]),
        .I2(current_nop_boot_count[5]),
        .I3(current_nop_boot_count[6]),
        .O(\current_address_bus[14]_i_26_n_0 ));
  LUT4 #(
    .INIT(16'hDFFF)) 
    \current_address_bus[14]_i_27 
       (.I0(current_nop_boot_count[2]),
        .I1(current_nop_boot_count[7]),
        .I2(current_nop_boot_count[1]),
        .I3(current_nop_boot_count[0]),
        .O(\current_address_bus[14]_i_27_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \current_address_bus[14]_i_28 
       (.I0(current_state[13]),
        .I1(current_state[16]),
        .O(\current_address_bus[14]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \current_address_bus[14]_i_3 
       (.I0(\current_address_bus[14]_i_12_n_0 ),
        .I1(\current_wr_buffer[15]_i_4_n_0 ),
        .I2(\current_nop_boot_count[14]_i_6_n_0 ),
        .I3(current_state[6]),
        .I4(current_state[7]),
        .I5(\current_address_bus[14]_i_13_n_0 ),
        .O(\current_address_bus[14]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF444F4F4)) 
    \current_address_bus[14]_i_4 
       (.I0(\current_address_bus[14]_i_14_n_0 ),
        .I1(\current_address_bus[14]_i_15_n_0 ),
        .I2(current_state[13]),
        .I3(current_act_to_rw_count),
        .I4(\current_state[16]_i_6_n_0 ),
        .I5(\current_address_bus[14]_i_16_n_0 ),
        .O(\current_address_bus[14]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF44FF4)) 
    \current_address_bus[14]_i_5 
       (.I0(\current_address_bus[14]_i_17_n_0 ),
        .I1(current_state[11]),
        .I2(current_state[1]),
        .I3(\current_address_bus[14]_i_18_n_0 ),
        .I4(\current_address_bus[14]_i_19_n_0 ),
        .I5(\ctrl_state_o[5]_INST_0_i_1_n_0 ),
        .O(\current_address_bus[14]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000008280808)) 
    \current_address_bus[14]_i_6 
       (.I0(mem_ready_o),
        .I1(current_state[3]),
        .I2(current_state[6]),
        .I3(current_pending_refresh),
        .I4(current_precharge_count),
        .I5(\current_address_bus[14]_i_20_n_0 ),
        .O(\current_address_bus[14]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair141" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \current_address_bus[14]_i_7 
       (.I0(current_state[3]),
        .I1(current_state[6]),
        .O(\current_address_bus[14]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair150" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \current_address_bus[14]_i_8 
       (.I0(current_state[8]),
        .I1(current_state[13]),
        .O(\current_address_bus[14]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hF100FDFDF1F1FDFD)) 
    \current_address_bus[14]_i_9 
       (.I0(rw_addr_int[23]),
        .I1(\current_state[6]_i_2_n_0 ),
        .I2(\current_address_bus[14]_i_21_n_0 ),
        .I3(current_state[11]),
        .I4(Q[23]),
        .I5(\current_address_bus[14]_i_22_n_0 ),
        .O(\current_address_bus[14]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000000AE)) 
    \current_address_bus[1]_i_1 
       (.I0(\current_address_bus[1]_i_2_n_0 ),
        .I1(\current_address_bus[1]_i_3_n_0 ),
        .I2(\current_address_bus[1]_i_4_n_0 ),
        .I3(\current_address_bus[1]_i_5_n_0 ),
        .I4(\current_address_bus[1]_i_6_n_0 ),
        .I5(\current_address_bus[1]_i_7_n_0 ),
        .O(\current_address_bus[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \current_address_bus[1]_i_2 
       (.I0(\current_address_bus[13]_i_4_n_0 ),
        .I1(Q[10]),
        .I2(current_state[13]),
        .I3(current_state[23]),
        .I4(current_state[17]),
        .I5(\current_address_bus[9]_i_5_n_0 ),
        .O(\current_address_bus[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBABBBAAABAAABAAA)) 
    \current_address_bus[1]_i_3 
       (.I0(\current_address_bus[1]_i_8_n_0 ),
        .I1(\current_address_bus[1]_i_9_n_0 ),
        .I2(p_0_in2_in[1]),
        .I3(\current_address_bus[7]_i_4_n_0 ),
        .I4(current_we_i_3_n_0),
        .I5(rw_addr_int[1]),
        .O(\current_address_bus[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEE0)) 
    \current_address_bus[1]_i_4 
       (.I0(current_state[11]),
        .I1(current_state[13]),
        .I2(current_state[17]),
        .I3(current_state[23]),
        .I4(current_state[3]),
        .I5(current_state[6]),
        .O(\current_address_bus[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \current_address_bus[1]_i_5 
       (.I0(current_state[18]),
        .I1(current_state[19]),
        .I2(current_state[20]),
        .I3(current_state[14]),
        .I4(current_state[15]),
        .I5(current_state[16]),
        .O(\current_address_bus[1]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \current_address_bus[1]_i_6 
       (.I0(current_state[24]),
        .I1(current_state[25]),
        .I2(current_state[26]),
        .I3(current_state[22]),
        .I4(current_state[21]),
        .O(\current_address_bus[1]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \current_address_bus[1]_i_7 
       (.I0(\current_address_bus[10]_i_5_n_0 ),
        .I1(current_state[2]),
        .I2(current_state[12]),
        .I3(current_state[1]),
        .I4(current_state[0]),
        .O(\current_address_bus[1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h5555555555550400)) 
    \current_address_bus[1]_i_8 
       (.I0(current_state[11]),
        .I1(Q[1]),
        .I2(\current_address_bus[13]_i_4_n_0 ),
        .I3(current_state[13]),
        .I4(current_state[17]),
        .I5(current_state[23]),
        .O(\current_address_bus[1]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT3 #(
    .INIT(8'hFB)) 
    \current_address_bus[1]_i_9 
       (.I0(current_state[13]),
        .I1(current_state[11]),
        .I2(current_pending_refresh),
        .O(\current_address_bus[1]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AAAAFEAE)) 
    \current_address_bus[2]_i_1 
       (.I0(\current_address_bus[2]_i_2_n_0 ),
        .I1(\current_address_bus[2]_i_3_n_0 ),
        .I2(\current_address_bus[7]_i_4_n_0 ),
        .I3(p_0_in2_in[2]),
        .I4(\current_address_bus[7]_i_5_n_0 ),
        .I5(\current_address_bus[2]_i_4_n_0 ),
        .O(\current_address_bus[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFF4444444444444)) 
    \current_address_bus[2]_i_2 
       (.I0(\current_address_bus[8]_i_3_n_0 ),
        .I1(Q[2]),
        .I2(rd_grnt_int),
        .I3(wr_grnt_int),
        .I4(Q[11]),
        .I5(\current_address_bus[7]_i_7_n_0 ),
        .O(\current_address_bus[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFE200E200000000)) 
    \current_address_bus[2]_i_3 
       (.I0(rw_addr_i[0]),
        .I1(scrubbing_o),
        .I2(scrubbing_addr_o[2]),
        .I3(healing_o),
        .I4(healing_addr_o[2]),
        .I5(current_we_i_3_n_0),
        .O(\current_address_bus[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBFBFBFFFAAAAAAAA)) 
    \current_address_bus[2]_i_4 
       (.I0(\current_address_bus[13]_i_3_n_0 ),
        .I1(\current_address_bus[13]_i_5_n_0 ),
        .I2(Q[11]),
        .I3(wr_grnt_int),
        .I4(rd_grnt_int),
        .I5(current_state[3]),
        .O(\current_address_bus[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AAAAFEAE)) 
    \current_address_bus[3]_i_1 
       (.I0(\current_address_bus[3]_i_2_n_0 ),
        .I1(\current_address_bus[3]_i_3_n_0 ),
        .I2(\current_address_bus[7]_i_4_n_0 ),
        .I3(p_0_in2_in[3]),
        .I4(\current_address_bus[7]_i_5_n_0 ),
        .I5(\current_address_bus[3]_i_4_n_0 ),
        .O(\current_address_bus[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFF4444444444444)) 
    \current_address_bus[3]_i_2 
       (.I0(\current_address_bus[8]_i_3_n_0 ),
        .I1(Q[3]),
        .I2(rd_grnt_int),
        .I3(wr_grnt_int),
        .I4(Q[12]),
        .I5(\current_address_bus[7]_i_7_n_0 ),
        .O(\current_address_bus[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFE200E200000000)) 
    \current_address_bus[3]_i_3 
       (.I0(rw_addr_i[1]),
        .I1(scrubbing_o),
        .I2(scrubbing_addr_o[3]),
        .I3(healing_o),
        .I4(healing_addr_o[3]),
        .I5(current_we_i_3_n_0),
        .O(\current_address_bus[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBFBFBFFFAAAAAAAA)) 
    \current_address_bus[3]_i_4 
       (.I0(\current_address_bus[13]_i_3_n_0 ),
        .I1(\current_address_bus[13]_i_5_n_0 ),
        .I2(Q[12]),
        .I3(wr_grnt_int),
        .I4(rd_grnt_int),
        .I5(current_state[3]),
        .O(\current_address_bus[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AAAAFEAE)) 
    \current_address_bus[4]_i_1 
       (.I0(\current_address_bus[4]_i_2_n_0 ),
        .I1(\current_address_bus[4]_i_3_n_0 ),
        .I2(\current_address_bus[7]_i_4_n_0 ),
        .I3(p_0_in2_in[4]),
        .I4(\current_address_bus[7]_i_5_n_0 ),
        .I5(\current_address_bus[4]_i_4_n_0 ),
        .O(\current_address_bus[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFF4444444444444)) 
    \current_address_bus[4]_i_2 
       (.I0(\current_address_bus[8]_i_3_n_0 ),
        .I1(Q[4]),
        .I2(rd_grnt_int),
        .I3(wr_grnt_int),
        .I4(Q[13]),
        .I5(\current_address_bus[7]_i_7_n_0 ),
        .O(\current_address_bus[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFE200E200000000)) 
    \current_address_bus[4]_i_3 
       (.I0(rw_addr_i[2]),
        .I1(scrubbing_o),
        .I2(scrubbing_addr_o[4]),
        .I3(healing_o),
        .I4(healing_addr_o[4]),
        .I5(current_we_i_3_n_0),
        .O(\current_address_bus[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBFBFBFFFAAAAAAAA)) 
    \current_address_bus[4]_i_4 
       (.I0(\current_address_bus[13]_i_3_n_0 ),
        .I1(\current_address_bus[13]_i_5_n_0 ),
        .I2(Q[13]),
        .I3(wr_grnt_int),
        .I4(rd_grnt_int),
        .I5(current_state[3]),
        .O(\current_address_bus[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000022F2)) 
    \current_address_bus[5]_i_1 
       (.I0(\current_state[26]_i_6_n_0 ),
        .I1(\current_address_bus[5]_i_2_n_0 ),
        .I2(\current_address_bus[5]_i_3_n_0 ),
        .I3(\current_address_bus[5]_i_4_n_0 ),
        .I4(\current_address_bus[5]_i_5_n_0 ),
        .I5(\current_state[26]_i_5_n_0 ),
        .O(\current_address_bus[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000BABFBFBF)) 
    \current_address_bus[5]_i_2 
       (.I0(\current_address_bus[7]_i_5_n_0 ),
        .I1(p_0_in2_in[5]),
        .I2(\current_address_bus[7]_i_4_n_0 ),
        .I3(current_we_i_3_n_0),
        .I4(\current_rw_addr[5]_i_1_n_0 ),
        .I5(\current_address_bus[5]_i_6_n_0 ),
        .O(\current_address_bus[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \current_address_bus[5]_i_3 
       (.I0(current_state[23]),
        .I1(current_state[17]),
        .I2(current_state[22]),
        .O(\current_address_bus[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEE0EEEEEEEEEE)) 
    \current_address_bus[5]_i_4 
       (.I0(\current_address_bus[9]_i_6_n_0 ),
        .I1(\current_address_bus[5]_i_7_n_0 ),
        .I2(current_state[5]),
        .I3(Q[14]),
        .I4(\current_address_bus[13]_i_4_n_0 ),
        .I5(\current_address_bus[5]_i_8_n_0 ),
        .O(\current_address_bus[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \current_address_bus[5]_i_5 
       (.I0(current_state[12]),
        .I1(current_state[14]),
        .I2(\ctrl_state_o[4]_INST_0_i_2_n_0 ),
        .I3(\current_address_bus[5]_i_9_n_0 ),
        .I4(current_state[21]),
        .I5(\ctrl_state_o[22]_INST_0_i_2_n_0 ),
        .O(\current_address_bus[5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFF4444444444444)) 
    \current_address_bus[5]_i_6 
       (.I0(\current_address_bus[8]_i_3_n_0 ),
        .I1(Q[5]),
        .I2(rd_grnt_int),
        .I3(wr_grnt_int),
        .I4(Q[14]),
        .I5(\current_address_bus[8]_i_6_n_0 ),
        .O(\current_address_bus[5]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \current_address_bus[5]_i_7 
       (.I0(current_state[16]),
        .I1(current_state[13]),
        .I2(current_state[6]),
        .I3(current_state[11]),
        .O(\current_address_bus[5]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    \current_address_bus[5]_i_8 
       (.I0(current_state[11]),
        .I1(current_state[6]),
        .I2(mem_ready_o),
        .I3(current_state[3]),
        .I4(current_state[16]),
        .I5(current_state[13]),
        .O(\current_address_bus[5]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \current_address_bus[5]_i_9 
       (.I0(current_state[15]),
        .I1(current_state[18]),
        .I2(current_state[19]),
        .I3(current_state[20]),
        .O(\current_address_bus[5]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AAAAFEAE)) 
    \current_address_bus[6]_i_1 
       (.I0(\current_address_bus[6]_i_2_n_0 ),
        .I1(\current_address_bus[6]_i_3_n_0 ),
        .I2(\current_address_bus[7]_i_4_n_0 ),
        .I3(p_0_in2_in[6]),
        .I4(\current_address_bus[7]_i_5_n_0 ),
        .I5(\current_address_bus[6]_i_4_n_0 ),
        .O(\current_address_bus[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFF4444444444444)) 
    \current_address_bus[6]_i_2 
       (.I0(\current_address_bus[8]_i_3_n_0 ),
        .I1(Q[6]),
        .I2(rd_grnt_int),
        .I3(wr_grnt_int),
        .I4(Q[15]),
        .I5(\current_address_bus[7]_i_7_n_0 ),
        .O(\current_address_bus[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFE200E200000000)) 
    \current_address_bus[6]_i_3 
       (.I0(rw_addr_i[4]),
        .I1(scrubbing_o),
        .I2(scrubbing_addr_o[6]),
        .I3(healing_o),
        .I4(healing_addr_o[6]),
        .I5(current_we_i_3_n_0),
        .O(\current_address_bus[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBFBFBFFFAAAAAAAA)) 
    \current_address_bus[6]_i_4 
       (.I0(\current_address_bus[13]_i_3_n_0 ),
        .I1(\current_address_bus[13]_i_5_n_0 ),
        .I2(Q[15]),
        .I3(wr_grnt_int),
        .I4(rd_grnt_int),
        .I5(current_state[3]),
        .O(\current_address_bus[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AAAAFEAE)) 
    \current_address_bus[7]_i_1 
       (.I0(\current_address_bus[7]_i_2_n_0 ),
        .I1(\current_address_bus[7]_i_3_n_0 ),
        .I2(\current_address_bus[7]_i_4_n_0 ),
        .I3(p_0_in2_in[7]),
        .I4(\current_address_bus[7]_i_5_n_0 ),
        .I5(\current_address_bus[7]_i_6_n_0 ),
        .O(\current_address_bus[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFF4444444444444)) 
    \current_address_bus[7]_i_2 
       (.I0(\current_address_bus[8]_i_3_n_0 ),
        .I1(Q[7]),
        .I2(rd_grnt_int),
        .I3(wr_grnt_int),
        .I4(Q[16]),
        .I5(\current_address_bus[7]_i_7_n_0 ),
        .O(\current_address_bus[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFE200E200000000)) 
    \current_address_bus[7]_i_3 
       (.I0(rw_addr_i[5]),
        .I1(scrubbing_o),
        .I2(scrubbing_addr_o[7]),
        .I3(healing_o),
        .I4(healing_addr_o[7]),
        .I5(current_we_i_3_n_0),
        .O(\current_address_bus[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFF000AACCAACC)) 
    \current_address_bus[7]_i_4 
       (.I0(current_first_access[1]),
        .I1(current_first_access[0]),
        .I2(current_first_access[3]),
        .I3(rw_addr_int[22]),
        .I4(current_first_access[2]),
        .I5(rw_addr_int[23]),
        .O(\current_address_bus[7]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT4 #(
    .INIT(16'hFFFB)) 
    \current_address_bus[7]_i_5 
       (.I0(current_state[6]),
        .I1(current_state[11]),
        .I2(current_pending_refresh),
        .I3(\current_address_bus[7]_i_8_n_0 ),
        .O(\current_address_bus[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hBFBFBFFFAAAAAAAA)) 
    \current_address_bus[7]_i_6 
       (.I0(\current_address_bus[13]_i_3_n_0 ),
        .I1(\current_address_bus[13]_i_5_n_0 ),
        .I2(Q[16]),
        .I3(wr_grnt_int),
        .I4(rd_grnt_int),
        .I5(current_state[3]),
        .O(\current_address_bus[7]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \current_address_bus[7]_i_7 
       (.I0(current_state[3]),
        .I1(\current_address_bus[8]_i_6_n_0 ),
        .O(\current_address_bus[7]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \current_address_bus[7]_i_8 
       (.I0(current_state[17]),
        .I1(current_state[23]),
        .I2(current_state[13]),
        .I3(current_state[22]),
        .I4(current_state[16]),
        .O(\current_address_bus[7]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFBABABA)) 
    \current_address_bus[8]_i_1 
       (.I0(\current_address_bus[8]_i_2_n_0 ),
        .I1(\current_address_bus[8]_i_3_n_0 ),
        .I2(Q[8]),
        .I3(\current_address_bus[8]_i_4_n_0 ),
        .I4(Q[17]),
        .I5(\current_address_bus[8]_i_5_n_0 ),
        .O(\current_address_bus[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000F808)) 
    \current_address_bus[8]_i_2 
       (.I0(\current_rw_addr[8]_i_1_n_0 ),
        .I1(current_we_i_3_n_0),
        .I2(\current_address_bus[7]_i_4_n_0 ),
        .I3(p_0_in2_in[8]),
        .I4(\current_address_bus[7]_i_5_n_0 ),
        .O(\current_address_bus[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF5FFFCFFF5)) 
    \current_address_bus[8]_i_3 
       (.I0(\current_address_bus[14]_i_22_n_0 ),
        .I1(\current_address_bus[14]_i_23_n_0 ),
        .I2(current_state[6]),
        .I3(current_state[11]),
        .I4(current_state[13]),
        .I5(\current_address_bus[13]_i_4_n_0 ),
        .O(\current_address_bus[8]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT5 #(
    .INIT(32'hECECEC00)) 
    \current_address_bus[8]_i_4 
       (.I0(current_state[3]),
        .I1(\current_address_bus[8]_i_6_n_0 ),
        .I2(\current_address_bus[13]_i_5_n_0 ),
        .I3(wr_grnt_int),
        .I4(rd_grnt_int),
        .O(\current_address_bus[8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hBFBFBFFFAAAAAAAA)) 
    \current_address_bus[8]_i_5 
       (.I0(\current_address_bus[13]_i_3_n_0 ),
        .I1(\current_address_bus[13]_i_5_n_0 ),
        .I2(Q[17]),
        .I3(wr_grnt_int),
        .I4(rd_grnt_int),
        .I5(current_state[3]),
        .O(\current_address_bus[8]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000040000000000)) 
    \current_address_bus[8]_i_6 
       (.I0(\current_address_bus[7]_i_8_n_0 ),
        .I1(current_precharge_count),
        .I2(current_pending_refresh),
        .I3(mem_ready_o),
        .I4(current_state[11]),
        .I5(current_state[6]),
        .O(\current_address_bus[8]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h000000AE00000000)) 
    \current_address_bus[9]_i_1 
       (.I0(\current_address_bus[9]_i_2_n_0 ),
        .I1(\current_address_bus[9]_i_3_n_0 ),
        .I2(\current_state[12]_i_3_n_0 ),
        .I3(\ctrl_state_o[4]_INST_0_i_2_n_0 ),
        .I4(\current_state[26]_i_5_n_0 ),
        .I5(\current_address_bus[9]_i_4_n_0 ),
        .O(\current_address_bus[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0010FFFF00100010)) 
    \current_address_bus[9]_i_2 
       (.I0(\current_address_bus[9]_i_5_n_0 ),
        .I1(current_state[5]),
        .I2(Q[18]),
        .I3(\current_address_bus[13]_i_4_n_0 ),
        .I4(\current_address_bus[9]_i_6_n_0 ),
        .I5(\current_address_bus[9]_i_7_n_0 ),
        .O(\current_address_bus[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA8080000A808)) 
    \current_address_bus[9]_i_3 
       (.I0(\current_state[26]_i_6_n_0 ),
        .I1(rw_addr_i[16]),
        .I2(scrubbing_o),
        .I3(scrubbing_addr_o[18]),
        .I4(healing_o),
        .I5(healing_addr_o[18]),
        .O(\current_address_bus[9]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \current_address_bus[9]_i_4 
       (.I0(\current_state[2]_i_8_n_0 ),
        .I1(\current_state[2]_i_7_n_0 ),
        .I2(\ctrl_state_o[21]_INST_0_i_2_n_0 ),
        .I3(\ctrl_state_o[22]_INST_0_i_2_n_0 ),
        .I4(current_state[13]),
        .I5(current_state[12]),
        .O(\current_address_bus[9]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFF0FFFFFBFFFFFF)) 
    \current_address_bus[9]_i_5 
       (.I0(current_pending_refresh),
        .I1(current_precharge_count),
        .I2(current_state[11]),
        .I3(current_state[6]),
        .I4(mem_ready_o),
        .I5(current_state[3]),
        .O(\current_address_bus[9]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEFFFFFFFFFFF)) 
    \current_address_bus[9]_i_6 
       (.I0(current_ref_cmd_count[2]),
        .I1(current_ref_cmd_count[3]),
        .I2(current_ref_cmd_count[1]),
        .I3(current_ref_cmd_count[0]),
        .I4(current_state[3]),
        .I5(current_state[5]),
        .O(\current_address_bus[9]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair143" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \current_address_bus[9]_i_7 
       (.I0(current_state[11]),
        .I1(current_state[6]),
        .O(\current_address_bus[9]_i_7_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \current_address_bus_reg[0] 
       (.C(clk_i),
        .CE(next_address_bus),
        .CLR(\current_nop_boot_count[14]_i_3_n_0 ),
        .D(\current_address_bus[0]_i_1_n_0 ),
        .Q(current_address_bus[0]));
  FDCE #(
    .INIT(1'b0)) 
    \current_address_bus_reg[10] 
       (.C(clk_i),
        .CE(next_address_bus),
        .CLR(\current_nop_boot_count[14]_i_3_n_0 ),
        .D(\current_address_bus[10]_i_1_n_0 ),
        .Q(current_address_bus[10]));
  FDCE #(
    .INIT(1'b0)) 
    \current_address_bus_reg[11] 
       (.C(clk_i),
        .CE(next_address_bus),
        .CLR(\current_nop_boot_count[14]_i_3_n_0 ),
        .D(\current_address_bus[11]_i_1_n_0 ),
        .Q(current_address_bus[11]));
  FDCE #(
    .INIT(1'b0)) 
    \current_address_bus_reg[12] 
       (.C(clk_i),
        .CE(next_address_bus),
        .CLR(\current_nop_boot_count[14]_i_3_n_0 ),
        .D(\current_address_bus[12]_i_1_n_0 ),
        .Q(current_address_bus[12]));
  FDCE #(
    .INIT(1'b0)) 
    \current_address_bus_reg[13] 
       (.C(clk_i),
        .CE(next_address_bus),
        .CLR(\current_nop_boot_count[14]_i_3_n_0 ),
        .D(\current_address_bus[13]_i_1_n_0 ),
        .Q(current_address_bus[13]));
  FDCE #(
    .INIT(1'b0)) 
    \current_address_bus_reg[14] 
       (.C(clk_i),
        .CE(next_address_bus),
        .CLR(\current_nop_boot_count[14]_i_3_n_0 ),
        .D(\current_address_bus[14]_i_2_n_0 ),
        .Q(current_address_bus[14]));
  FDCE #(
    .INIT(1'b0)) 
    \current_address_bus_reg[1] 
       (.C(clk_i),
        .CE(next_address_bus),
        .CLR(\current_nop_boot_count[14]_i_3_n_0 ),
        .D(\current_address_bus[1]_i_1_n_0 ),
        .Q(current_address_bus[1]));
  FDCE #(
    .INIT(1'b0)) 
    \current_address_bus_reg[2] 
       (.C(clk_i),
        .CE(next_address_bus),
        .CLR(\current_nop_boot_count[14]_i_3_n_0 ),
        .D(\current_address_bus[2]_i_1_n_0 ),
        .Q(current_address_bus[2]));
  FDCE #(
    .INIT(1'b0)) 
    \current_address_bus_reg[3] 
       (.C(clk_i),
        .CE(next_address_bus),
        .CLR(\current_nop_boot_count[14]_i_3_n_0 ),
        .D(\current_address_bus[3]_i_1_n_0 ),
        .Q(current_address_bus[3]));
  FDCE #(
    .INIT(1'b0)) 
    \current_address_bus_reg[4] 
       (.C(clk_i),
        .CE(next_address_bus),
        .CLR(\current_nop_boot_count[14]_i_3_n_0 ),
        .D(\current_address_bus[4]_i_1_n_0 ),
        .Q(current_address_bus[4]));
  FDCE #(
    .INIT(1'b0)) 
    \current_address_bus_reg[5] 
       (.C(clk_i),
        .CE(next_address_bus),
        .CLR(\current_nop_boot_count[14]_i_3_n_0 ),
        .D(\current_address_bus[5]_i_1_n_0 ),
        .Q(current_address_bus[5]));
  FDCE #(
    .INIT(1'b0)) 
    \current_address_bus_reg[6] 
       (.C(clk_i),
        .CE(next_address_bus),
        .CLR(\current_nop_boot_count[14]_i_3_n_0 ),
        .D(\current_address_bus[6]_i_1_n_0 ),
        .Q(current_address_bus[6]));
  FDCE #(
    .INIT(1'b0)) 
    \current_address_bus_reg[7] 
       (.C(clk_i),
        .CE(next_address_bus),
        .CLR(\current_nop_boot_count[14]_i_3_n_0 ),
        .D(\current_address_bus[7]_i_1_n_0 ),
        .Q(current_address_bus[7]));
  FDCE #(
    .INIT(1'b0)) 
    \current_address_bus_reg[8] 
       (.C(clk_i),
        .CE(next_address_bus),
        .CLR(\current_nop_boot_count[14]_i_3_n_0 ),
        .D(\current_address_bus[8]_i_1_n_0 ),
        .Q(current_address_bus[8]));
  FDCE #(
    .INIT(1'b0)) 
    \current_address_bus_reg[9] 
       (.C(clk_i),
        .CE(next_address_bus),
        .CLR(\current_nop_boot_count[14]_i_3_n_0 ),
        .D(\current_address_bus[9]_i_1_n_0 ),
        .Q(current_address_bus[9]));
  LUT2 #(
    .INIT(4'h6)) 
    \current_auto_ref_count[0]_i_1 
       (.I0(next_auto_ref_count),
        .I1(current_auto_ref_count[0]),
        .O(\current_auto_ref_count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \current_auto_ref_count[1]_i_1 
       (.I0(current_auto_ref_count[0]),
        .I1(next_auto_ref_count),
        .I2(current_auto_ref_count[1]),
        .O(\current_auto_ref_count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \current_auto_ref_count[2]_i_1 
       (.I0(current_auto_ref_count[1]),
        .I1(current_auto_ref_count[0]),
        .I2(next_auto_ref_count),
        .I3(current_auto_ref_count[2]),
        .O(\current_auto_ref_count[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000020000)) 
    \current_auto_ref_count[2]_i_2 
       (.I0(\ctrl_state_o[8]_INST_0_i_1_n_0 ),
        .I1(\current_state[26]_i_6_n_0 ),
        .I2(current_state[1]),
        .I3(current_state[6]),
        .I4(\ctrl_state_o[6]_INST_0_i_1_n_0 ),
        .I5(\current_auto_ref_count[2]_i_3_n_0 ),
        .O(next_auto_ref_count));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT5 #(
    .INIT(32'hFFFEFFFC)) 
    \current_auto_ref_count[2]_i_3 
       (.I0(current_state[3]),
        .I1(current_state[2]),
        .I2(current_state[0]),
        .I3(current_state[4]),
        .I4(current_state[5]),
        .O(\current_auto_ref_count[2]_i_3_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \current_auto_ref_count_reg[0] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(\current_nop_boot_count[14]_i_3_n_0 ),
        .D(\current_auto_ref_count[0]_i_1_n_0 ),
        .Q(current_auto_ref_count[0]));
  FDCE #(
    .INIT(1'b0)) 
    \current_auto_ref_count_reg[1] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(\current_nop_boot_count[14]_i_3_n_0 ),
        .D(\current_auto_ref_count[1]_i_1_n_0 ),
        .Q(current_auto_ref_count[1]));
  FDCE #(
    .INIT(1'b0)) 
    \current_auto_ref_count_reg[2] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(\current_nop_boot_count[14]_i_3_n_0 ),
        .D(\current_auto_ref_count[2]_i_1_n_0 ),
        .Q(current_auto_ref_count[2]));
  LUT6 #(
    .INIT(64'hFFFFFFFF55551011)) 
    current_cas_i_1
       (.I0(current_cas_i_2_n_0),
        .I1(current_cas_i_3_n_0),
        .I2(\current_state[16]_i_2_n_0 ),
        .I3(\current_address_bus[9]_i_4_n_0 ),
        .I4(current_cas_i_4_n_0),
        .I5(current_cas_i_5_n_0),
        .O(next_cas));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    current_cas_i_10
       (.I0(current_state[24]),
        .I1(current_state[25]),
        .I2(current_state[26]),
        .I3(current_state[20]),
        .I4(current_state[21]),
        .I5(\ctrl_state_o[21]_INST_0_i_2_n_0 ),
        .O(current_cas_i_10_n_0));
  LUT6 #(
    .INIT(64'h000000404444BBBB)) 
    current_cas_i_11
       (.I0(current_cas_i_15_n_0),
        .I1(current_we_i_8_n_0),
        .I2(current_precharge_count),
        .I3(\current_state[2]_i_5_n_0 ),
        .I4(current_state[3]),
        .I5(current_state[6]),
        .O(current_cas_i_11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    current_cas_i_12
       (.I0(current_state[16]),
        .I1(current_state[13]),
        .I2(current_state[8]),
        .I3(current_state[11]),
        .O(current_cas_i_12_n_0));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    current_cas_i_13
       (.I0(current_state[23]),
        .I1(current_state[22]),
        .I2(current_state[21]),
        .I3(current_state[20]),
        .O(current_cas_i_13_n_0));
  LUT6 #(
    .INIT(64'h0000000000040444)) 
    current_cas_i_14
       (.I0(current_state[21]),
        .I1(current_cas_i_16_n_0),
        .I2(current_state[17]),
        .I3(current_state[23]),
        .I4(current_state[22]),
        .I5(\current_dqm[1]_i_11_n_0 ),
        .O(current_cas_i_14_n_0));
  (* SOFT_HLUTNM = "soft_lutpair147" *) 
  LUT2 #(
    .INIT(4'hE)) 
    current_cas_i_15
       (.I0(current_state[16]),
        .I1(current_state[17]),
        .O(current_cas_i_15_n_0));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    current_cas_i_16
       (.I0(current_state[20]),
        .I1(current_state[19]),
        .I2(current_state[12]),
        .I3(current_state[11]),
        .O(current_cas_i_16_n_0));
  LUT6 #(
    .INIT(64'h000000000202FF02)) 
    current_cas_i_2
       (.I0(\current_state[26]_i_13_n_0 ),
        .I1(current_cas_i_6_n_0),
        .I2(current_state[23]),
        .I3(current_cas_i_7_n_0),
        .I4(\current_address_bus[14]_i_13_n_0 ),
        .I5(\ctrl_state_o[22]_INST_0_i_2_n_0 ),
        .O(current_cas_i_2_n_0));
  LUT6 #(
    .INIT(64'h444444444444444F)) 
    current_cas_i_3
       (.I0(current_cas_i_8_n_0),
        .I1(current_cas_i_9_n_0),
        .I2(\current_state[2]_i_8_n_0 ),
        .I3(\current_state[26]_i_14_n_0 ),
        .I4(\current_address_bus[13]_i_4_n_0 ),
        .I5(current_cas_i_10_n_0),
        .O(current_cas_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    current_cas_i_4
       (.I0(current_state[10]),
        .I1(current_state[8]),
        .I2(current_state[9]),
        .I3(current_state[5]),
        .I4(current_state[7]),
        .O(current_cas_i_4_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFD5555555)) 
    current_cas_i_5
       (.I0(current_cas_i_11_n_0),
        .I1(current_cas_i_12_n_0),
        .I2(\current_address_bus[5]_i_3_n_0 ),
        .I3(mem_ready_o),
        .I4(\ctrl_state_o[4]_INST_0_i_1_n_0 ),
        .I5(\ctrl_state_o[4]_INST_0_i_2_n_0 ),
        .O(current_cas_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    current_cas_i_6
       (.I0(current_state[7]),
        .I1(current_state[5]),
        .I2(current_state[10]),
        .I3(current_state[9]),
        .O(current_cas_i_6_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    current_cas_i_7
       (.I0(current_state[11]),
        .I1(current_state[12]),
        .I2(current_state[21]),
        .I3(current_state[23]),
        .I4(current_state[22]),
        .I5(\current_state[26]_i_5_n_0 ),
        .O(current_cas_i_7_n_0));
  LUT6 #(
    .INIT(64'h00000000FFFFFFFE)) 
    current_cas_i_8
       (.I0(\ctrl_state_o[10]_INST_0_i_1_n_0 ),
        .I1(\ctrl_state_o[20]_INST_0_i_1_n_0 ),
        .I2(current_state[17]),
        .I3(current_state[15]),
        .I4(current_cas_i_13_n_0),
        .I5(current_cas_i_14_n_0),
        .O(current_cas_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    current_cas_i_9
       (.I0(current_state[25]),
        .I1(current_state[24]),
        .I2(current_state[13]),
        .I3(current_state[14]),
        .I4(current_state[26]),
        .O(current_cas_i_9_n_0));
  LUT6 #(
    .INIT(64'hAAAAEEEFAAAA2220)) 
    \current_cas_rd_count[0]_i_1 
       (.I0(\current_cas_rd_count[0]_i_2_n_0 ),
        .I1(\current_cas_rd_count[1]_i_3_n_0 ),
        .I2(\current_cas_rd_count[1]_i_4_n_0 ),
        .I3(\current_cas_rd_count[1]_i_5_n_0 ),
        .I4(\current_cas_rd_count[1]_i_6_n_0 ),
        .I5(current_cas_rd_count[0]),
        .O(\current_cas_rd_count[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000400000)) 
    \current_cas_rd_count[0]_i_2 
       (.I0(current_state[1]),
        .I1(current_cke_i_10_n_0),
        .I2(\current_cas_rd_count[1]_i_7_n_0 ),
        .I3(current_cas_rd_count[1]),
        .I4(current_state[14]),
        .I5(current_cas_rd_count[0]),
        .O(\current_cas_rd_count[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAEEEFAAAA2220)) 
    \current_cas_rd_count[1]_i_1 
       (.I0(\current_cas_rd_count[1]_i_2_n_0 ),
        .I1(\current_cas_rd_count[1]_i_3_n_0 ),
        .I2(\current_cas_rd_count[1]_i_4_n_0 ),
        .I3(\current_cas_rd_count[1]_i_5_n_0 ),
        .I4(\current_cas_rd_count[1]_i_6_n_0 ),
        .I5(current_cas_rd_count[1]),
        .O(\current_cas_rd_count[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0004000C00000004)) 
    \current_cas_rd_count[1]_i_10 
       (.I0(current_state[12]),
        .I1(\ctrl_state_o[16]_INST_0_i_1_n_0 ),
        .I2(current_state[16]),
        .I3(current_state[14]),
        .I4(current_state[13]),
        .I5(\current_state[16]_i_6_n_0 ),
        .O(\current_cas_rd_count[1]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFE0FFFFFFE0FFE0)) 
    \current_cas_rd_count[1]_i_11 
       (.I0(\current_cas_rd_count[1]_i_13_n_0 ),
        .I1(\ctrl_state_o[17]_INST_0_i_1_n_0 ),
        .I2(\current_nop_boot_count[14]_i_17_n_0 ),
        .I3(\current_nop_boot_count[14]_i_16_n_0 ),
        .I4(\ctrl_state_o[16]_INST_0_i_1_n_0 ),
        .I5(current_state[16]),
        .O(\current_cas_rd_count[1]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \current_cas_rd_count[1]_i_12 
       (.I0(\ctrl_state_o[22]_INST_0_i_2_n_0 ),
        .I1(current_state[20]),
        .I2(current_state[21]),
        .I3(\ctrl_state_o[21]_INST_0_i_2_n_0 ),
        .I4(current_state[19]),
        .I5(\current_state[11]_i_6_n_0 ),
        .O(\current_cas_rd_count[1]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFEFEE8)) 
    \current_cas_rd_count[1]_i_13 
       (.I0(current_state[22]),
        .I1(current_state[25]),
        .I2(current_state[26]),
        .I3(current_state[24]),
        .I4(current_state[23]),
        .I5(current_state[21]),
        .O(\current_cas_rd_count[1]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0000400000000000)) 
    \current_cas_rd_count[1]_i_2 
       (.I0(current_state[1]),
        .I1(current_cke_i_10_n_0),
        .I2(current_cas_rd_count[0]),
        .I3(\current_cas_rd_count[1]_i_7_n_0 ),
        .I4(current_cas_rd_count[1]),
        .I5(current_state[14]),
        .O(\current_cas_rd_count[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT4 #(
    .INIT(16'h022A)) 
    \current_cas_rd_count[1]_i_3 
       (.I0(\ctrl_state_o[3]_INST_0_i_1_n_0 ),
        .I1(current_state[4]),
        .I2(current_state[3]),
        .I3(current_state[2]),
        .O(\current_cas_rd_count[1]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h8A888A8A)) 
    \current_cas_rd_count[1]_i_4 
       (.I0(\current_cas_rd_count[1]_i_8_n_0 ),
        .I1(\current_cas_rd_count[1]_i_9_n_0 ),
        .I2(\current_cas_rd_count[1]_i_10_n_0 ),
        .I3(\current_cas_rd_count[1]_i_11_n_0 ),
        .I4(\current_state[4]_i_3_n_0 ),
        .O(\current_cas_rd_count[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFDD0)) 
    \current_cas_rd_count[1]_i_5 
       (.I0(\current_nop_boot_count[14]_i_13_n_0 ),
        .I1(current_state[7]),
        .I2(current_state[5]),
        .I3(current_state[6]),
        .I4(current_state[4]),
        .I5(\current_state[25]_i_3_n_0 ),
        .O(\current_cas_rd_count[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFBAAAAAAAE)) 
    \current_cas_rd_count[1]_i_6 
       (.I0(\current_state[26]_i_8_n_0 ),
        .I1(\current_cas_rd_count[1]_i_12_n_0 ),
        .I2(\ctrl_state_o[16]_INST_0_i_4_n_0 ),
        .I3(current_state[13]),
        .I4(\ctrl_state_o[26]_INST_0_i_3_n_0 ),
        .I5(current_state[0]),
        .O(\current_cas_rd_count[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    \current_cas_rd_count[1]_i_7 
       (.I0(current_state[12]),
        .I1(current_state[13]),
        .I2(current_mem_ready_i_3_n_0),
        .I3(current_ras_i_2_n_0),
        .I4(current_state[15]),
        .I5(current_state[0]),
        .O(\current_cas_rd_count[1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEFFFEFEFEF)) 
    \current_cas_rd_count[1]_i_8 
       (.I0(current_state[10]),
        .I1(\ctrl_state_o[10]_INST_0_i_1_n_0 ),
        .I2(\current_first_access[3]_i_10_n_0 ),
        .I3(current_state[9]),
        .I4(current_state[8]),
        .I5(current_state[7]),
        .O(\current_cas_rd_count[1]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF8E)) 
    \current_cas_rd_count[1]_i_9 
       (.I0(current_state[10]),
        .I1(current_state[11]),
        .I2(\current_address_bus[9]_i_4_n_0 ),
        .I3(current_state[8]),
        .I4(current_state[9]),
        .I5(current_state[7]),
        .O(\current_cas_rd_count[1]_i_9_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \current_cas_rd_count_reg[0] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(\current_nop_boot_count[14]_i_3_n_0 ),
        .D(\current_cas_rd_count[0]_i_1_n_0 ),
        .Q(current_cas_rd_count[0]));
  FDCE #(
    .INIT(1'b0)) 
    \current_cas_rd_count_reg[1] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(\current_nop_boot_count[14]_i_3_n_0 ),
        .D(\current_cas_rd_count[1]_i_1_n_0 ),
        .Q(current_cas_rd_count[1]));
  FDPE #(
    .INIT(1'b1)) 
    current_cas_reg
       (.C(clk_i),
        .CE(next_cke),
        .D(next_cas),
        .PRE(\current_nop_boot_count[14]_i_3_n_0 ),
        .Q(current_cas));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF10000)) 
    current_cke_i_1
       (.I0(current_cke_i_3_n_0),
        .I1(current_cke_i_4_n_0),
        .I2(\ctrl_state_o[5]_INST_0_i_2_n_0 ),
        .I3(current_state[3]),
        .I4(current_cke_i_5_n_0),
        .I5(current_cke_i_6_n_0),
        .O(next_cke));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    current_cke_i_10
       (.I0(current_state[19]),
        .I1(\ctrl_state_o[20]_INST_0_i_2_n_0 ),
        .I2(current_state[18]),
        .I3(current_state[20]),
        .I4(current_state[17]),
        .I5(current_state[16]),
        .O(current_cke_i_10_n_0));
  LUT6 #(
    .INIT(64'h0000001300000000)) 
    current_cke_i_11
       (.I0(current_state[20]),
        .I1(current_state[21]),
        .I2(\ctrl_state_o[21]_INST_0_i_1_n_0 ),
        .I3(current_state[23]),
        .I4(\ctrl_state_o[20]_INST_0_i_1_n_0 ),
        .I5(current_cke_i_16_n_0),
        .O(current_cke_i_11_n_0));
  LUT6 #(
    .INIT(64'hFFFEFEFEFEFEFEFE)) 
    current_cke_i_12
       (.I0(current_state[23]),
        .I1(current_state[24]),
        .I2(\ctrl_state_o[21]_INST_0_i_1_n_0 ),
        .I3(current_auto_ref_count[0]),
        .I4(current_auto_ref_count[1]),
        .I5(current_auto_ref_count[2]),
        .O(current_cke_i_12_n_0));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h1)) 
    current_cke_i_13
       (.I0(current_state[13]),
        .I1(current_state[14]),
        .O(current_cke_i_13_n_0));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    current_cke_i_14
       (.I0(\current_state[11]_i_6_n_0 ),
        .I1(current_state[19]),
        .I2(current_state[20]),
        .I3(current_state[21]),
        .I4(current_state[22]),
        .O(current_cke_i_14_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEFF)) 
    current_cke_i_15
       (.I0(current_state[13]),
        .I1(current_state[25]),
        .I2(current_state[26]),
        .I3(\current_state[26]_i_6_n_0 ),
        .I4(current_state[19]),
        .I5(current_state[20]),
        .O(current_cke_i_15_n_0));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'h0111)) 
    current_cke_i_16
       (.I0(current_state[24]),
        .I1(current_state[22]),
        .I2(current_state[25]),
        .I3(current_state[26]),
        .O(current_cke_i_16_n_0));
  LUT6 #(
    .INIT(64'hFFFBFFFFFFFFFFFF)) 
    current_cke_i_2
       (.I0(current_cke_i_7_n_0),
        .I1(current_state[11]),
        .I2(current_state[0]),
        .I3(current_cke_i_8_n_0),
        .I4(current_cke_i_9_n_0),
        .I5(current_cke_i_10_n_0),
        .O(current_cke_i_2_n_0));
  LUT6 #(
    .INIT(64'h000000000000000E)) 
    current_cke_i_3
       (.I0(current_cke_i_11_n_0),
        .I1(\current_rd_buffer[1][15]_i_3_n_0 ),
        .I2(\ctrl_state_o[11]_INST_0_i_1_n_0 ),
        .I3(current_state[13]),
        .I4(current_state[12]),
        .I5(\current_state[2]_i_8_n_0 ),
        .O(current_cke_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    current_cke_i_4
       (.I0(\current_cas_rd_count[1]_i_12_n_0 ),
        .I1(current_act_to_rw_count),
        .I2(current_state[14]),
        .I3(current_state[12]),
        .I4(current_state[9]),
        .I5(current_state[10]),
        .O(current_cke_i_4_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEFFFFFF)) 
    current_cke_i_5
       (.I0(current_cke_i_12_n_0),
        .I1(current_state[10]),
        .I2(current_state[12]),
        .I3(current_cke_i_13_n_0),
        .I4(\current_first_access[3]_i_11_n_0 ),
        .I5(current_cke_i_14_n_0),
        .O(current_cke_i_5_n_0));
  LUT6 #(
    .INIT(64'hFFFCFCDCFFFFFCDF)) 
    current_cke_i_6
       (.I0(current_cke_i_9_n_0),
        .I1(\current_auto_ref_count[2]_i_3_n_0 ),
        .I2(current_state[11]),
        .I3(current_cke_i_15_n_0),
        .I4(current_state[1]),
        .I5(\current_nop_boot_count[14]_i_15_n_0 ),
        .O(current_cke_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair142" *) 
  LUT2 #(
    .INIT(4'hB)) 
    current_cke_i_7
       (.I0(current_state[1]),
        .I1(current_mem_ready_i_3_n_0),
        .O(current_cke_i_7_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    current_cke_i_8
       (.I0(\ctrl_state_o[16]_INST_0_i_3_n_0 ),
        .I1(current_state[12]),
        .I2(current_state[13]),
        .I3(current_state[9]),
        .I4(current_state[8]),
        .I5(current_state[10]),
        .O(current_cke_i_8_n_0));
  LUT6 #(
    .INIT(64'h0111011101000111)) 
    current_cke_i_9
       (.I0(current_pending_refresh),
        .I1(current_rd_grnt_i_2_n_0),
        .I2(healing_wr_req_o),
        .I3(healing_o),
        .I4(wr_req_i),
        .I5(scrubbing_o),
        .O(current_cke_i_9_n_0));
  FDPE #(
    .INIT(1'b1)) 
    current_cke_reg
       (.C(clk_i),
        .CE(next_cke),
        .D(current_cke_i_2_n_0),
        .PRE(\current_nop_boot_count[14]_i_3_n_0 ),
        .Q(I));
  LUT6 #(
    .INIT(64'hFFF8FFF8FFFFFFF8)) 
    \current_dqm[1]_i_1 
       (.I0(\current_dqm[1]_i_2_n_0 ),
        .I1(\current_state[16]_i_2_n_0 ),
        .I2(\current_dqm[1]_i_3_n_0 ),
        .I3(\current_dqm[1]_i_4_n_0 ),
        .I4(\current_dqm[1]_i_5_n_0 ),
        .I5(\current_dqm[1]_i_6_n_0 ),
        .O(\current_dqm[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \current_dqm[1]_i_10 
       (.I0(current_state[22]),
        .I1(current_state[21]),
        .I2(current_state[20]),
        .I3(current_state[19]),
        .O(\current_dqm[1]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \current_dqm[1]_i_11 
       (.I0(current_state[18]),
        .I1(current_state[16]),
        .I2(current_state[15]),
        .O(\current_dqm[1]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFEFEFC)) 
    \current_dqm[1]_i_12 
       (.I0(current_state[16]),
        .I1(current_state[14]),
        .I2(\current_dqm[1]_i_13_n_0 ),
        .I3(current_state[18]),
        .I4(current_state[23]),
        .I5(current_state[22]),
        .O(\current_dqm[1]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \current_dqm[1]_i_13 
       (.I0(current_state[17]),
        .I1(current_state[15]),
        .I2(current_state[20]),
        .I3(current_state[21]),
        .I4(current_state[19]),
        .O(\current_dqm[1]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \current_dqm[1]_i_2 
       (.I0(\current_dqm[1]_i_7_n_0 ),
        .I1(current_state[16]),
        .I2(current_state[22]),
        .I3(current_state[13]),
        .I4(current_state[23]),
        .I5(current_state[17]),
        .O(\current_dqm[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    \current_dqm[1]_i_3 
       (.I0(current_state[10]),
        .I1(current_state[12]),
        .I2(current_state[8]),
        .I3(current_state[9]),
        .I4(\current_state[2]_i_9_n_0 ),
        .I5(\current_nop_boot_count[14]_i_14_n_0 ),
        .O(\current_dqm[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFFFFFFFDAAAAAAA)) 
    \current_dqm[1]_i_4 
       (.I0(current_state[13]),
        .I1(\current_address_bus[13]_i_4_n_0 ),
        .I2(\current_dqm[1]_i_7_n_0 ),
        .I3(\current_dqm[1]_i_8_n_0 ),
        .I4(\current_dqm[1]_i_9_n_0 ),
        .I5(current_state[11]),
        .O(\current_dqm[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEAAAAAAAA)) 
    \current_dqm[1]_i_5 
       (.I0(\ctrl_state_o[22]_INST_0_i_2_n_0 ),
        .I1(current_state[23]),
        .I2(current_state[14]),
        .I3(\current_dqm[1]_i_10_n_0 ),
        .I4(\current_dqm[1]_i_11_n_0 ),
        .I5(\current_dqm[1]_i_12_n_0 ),
        .O(\current_dqm[1]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \current_dqm[1]_i_6 
       (.I0(\current_cas_rd_count[1]_i_12_n_0 ),
        .I1(current_cas_rd_count[0]),
        .I2(current_cas_rd_count[1]),
        .O(\current_dqm[1]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair145" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \current_dqm[1]_i_7 
       (.I0(current_state[14]),
        .I1(current_state[18]),
        .O(\current_dqm[1]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair147" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \current_dqm[1]_i_8 
       (.I0(current_state[17]),
        .I1(current_state[23]),
        .O(\current_dqm[1]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \current_dqm[1]_i_9 
       (.I0(current_state[16]),
        .I1(current_state[22]),
        .O(\current_dqm[1]_i_9_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \current_dqm_reg[1] 
       (.C(clk_i),
        .CE(next_cke),
        .D(\current_dqm[1]_i_1_n_0 ),
        .PRE(\current_nop_boot_count[14]_i_3_n_0 ),
        .Q(current_dqm));
  LUT6 #(
    .INIT(64'hFFFBBBFB00088808)) 
    \current_first_access[0]_i_1 
       (.I0(\current_first_access[3]_i_2_n_0 ),
        .I1(\current_first_access[3]_i_5_n_0 ),
        .I2(\current_first_access[0]_i_2_n_0 ),
        .I3(current_state[0]),
        .I4(\current_first_access[2]_i_3_n_0 ),
        .I5(current_first_access[0]),
        .O(\current_first_access[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4444444455545555)) 
    \current_first_access[0]_i_2 
       (.I0(\current_first_access[2]_i_4_n_0 ),
        .I1(\current_first_access[0]_i_3_n_0 ),
        .I2(current_state[12]),
        .I3(current_cke_i_9_n_0),
        .I4(\current_first_access[3]_i_6_n_0 ),
        .I5(\current_first_access[0]_i_4_n_0 ),
        .O(\current_first_access[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF1F1F1F1FFFFFFF1)) 
    \current_first_access[0]_i_3 
       (.I0(current_state[11]),
        .I1(current_state[12]),
        .I2(current_state[2]),
        .I3(Q[22]),
        .I4(Q[23]),
        .I5(current_pending_refresh),
        .O(\current_first_access[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \current_first_access[0]_i_4 
       (.I0(Q[23]),
        .I1(Q[22]),
        .I2(current_state[11]),
        .O(\current_first_access[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBBBFB00088808)) 
    \current_first_access[1]_i_1 
       (.I0(\current_first_access[3]_i_2_n_0 ),
        .I1(\current_first_access[3]_i_5_n_0 ),
        .I2(\current_first_access[1]_i_2_n_0 ),
        .I3(current_state[0]),
        .I4(\current_first_access[2]_i_3_n_0 ),
        .I5(current_first_access[1]),
        .O(\current_first_access[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4444444455545555)) 
    \current_first_access[1]_i_2 
       (.I0(\current_first_access[2]_i_4_n_0 ),
        .I1(\current_first_access[1]_i_3_n_0 ),
        .I2(current_state[12]),
        .I3(current_cke_i_9_n_0),
        .I4(\current_first_access[3]_i_6_n_0 ),
        .I5(\current_first_access[1]_i_4_n_0 ),
        .O(\current_first_access[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF1F1F1F1FFFFF1FF)) 
    \current_first_access[1]_i_3 
       (.I0(current_state[11]),
        .I1(current_state[12]),
        .I2(current_state[2]),
        .I3(Q[22]),
        .I4(Q[23]),
        .I5(current_pending_refresh),
        .O(\current_first_access[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \current_first_access[1]_i_4 
       (.I0(Q[23]),
        .I1(Q[22]),
        .I2(current_state[11]),
        .O(\current_first_access[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBBBFB00088808)) 
    \current_first_access[2]_i_1 
       (.I0(\current_first_access[3]_i_2_n_0 ),
        .I1(\current_first_access[3]_i_5_n_0 ),
        .I2(\current_first_access[2]_i_2_n_0 ),
        .I3(current_state[0]),
        .I4(\current_first_access[2]_i_3_n_0 ),
        .I5(current_first_access[2]),
        .O(\current_first_access[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4444444455545555)) 
    \current_first_access[2]_i_2 
       (.I0(\current_first_access[2]_i_4_n_0 ),
        .I1(\current_first_access[2]_i_5_n_0 ),
        .I2(current_state[12]),
        .I3(current_cke_i_9_n_0),
        .I4(\current_first_access[3]_i_6_n_0 ),
        .I5(\current_first_access[2]_i_6_n_0 ),
        .O(\current_first_access[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \current_first_access[2]_i_3 
       (.I0(current_state[11]),
        .I1(current_state[12]),
        .I2(current_state[2]),
        .O(\current_first_access[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \current_first_access[2]_i_4 
       (.I0(current_state[2]),
        .I1(current_state[12]),
        .I2(current_state[11]),
        .O(\current_first_access[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF1F1F1F1FFFFF1FF)) 
    \current_first_access[2]_i_5 
       (.I0(current_state[11]),
        .I1(current_state[12]),
        .I2(current_state[2]),
        .I3(Q[23]),
        .I4(Q[22]),
        .I5(current_pending_refresh),
        .O(\current_first_access[2]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \current_first_access[2]_i_6 
       (.I0(Q[22]),
        .I1(Q[23]),
        .I2(current_state[11]),
        .O(\current_first_access[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hABFBFFFFA8080000)) 
    \current_first_access[3]_i_1 
       (.I0(\current_first_access[3]_i_2_n_0 ),
        .I1(\current_first_access[3]_i_3_n_0 ),
        .I2(current_state[0]),
        .I3(\current_first_access[3]_i_4_n_0 ),
        .I4(\current_first_access[3]_i_5_n_0 ),
        .I5(current_first_access[3]),
        .O(\current_first_access[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \current_first_access[3]_i_10 
       (.I0(\current_state[2]_i_8_n_0 ),
        .I1(current_state[20]),
        .I2(current_state[21]),
        .I3(\ctrl_state_o[20]_INST_0_i_1_n_0 ),
        .I4(\current_state[2]_i_6_n_0 ),
        .I5(current_state[13]),
        .O(\current_first_access[3]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \current_first_access[3]_i_11 
       (.I0(current_state[7]),
        .I1(current_state[6]),
        .I2(current_state[9]),
        .I3(current_state[8]),
        .O(\current_first_access[3]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAABFBFFFFABFB)) 
    \current_first_access[3]_i_12 
       (.I0(Q[23]),
        .I1(rw_addr_i[21]),
        .I2(scrubbing_o),
        .I3(scrubbing_addr_o[23]),
        .I4(healing_o),
        .I5(healing_addr_o[23]),
        .O(\current_first_access[3]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT4 #(
    .INIT(16'h6F66)) 
    \current_first_access[3]_i_13 
       (.I0(rw_addr_int[22]),
        .I1(Q[22]),
        .I2(rw_addr_int[23]),
        .I3(Q[23]),
        .O(\current_first_access[3]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \current_first_access[3]_i_2 
       (.I0(current_state[2]),
        .I1(current_state[12]),
        .O(\current_first_access[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6666666622622222)) 
    \current_first_access[3]_i_3 
       (.I0(current_state[2]),
        .I1(\ctrl_state_o[10]_INST_0_i_1_n_0 ),
        .I2(\current_first_access[3]_i_6_n_0 ),
        .I3(\current_first_access[3]_i_7_n_0 ),
        .I4(\current_first_access[3]_i_8_n_0 ),
        .I5(\current_first_access[3]_i_9_n_0 ),
        .O(\current_first_access[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \current_first_access[3]_i_4 
       (.I0(current_state[2]),
        .I1(current_state[12]),
        .I2(current_state[11]),
        .O(\current_first_access[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \current_first_access[3]_i_5 
       (.I0(\current_first_access[3]_i_10_n_0 ),
        .I1(\current_first_access[3]_i_11_n_0 ),
        .I2(\current_state[26]_i_6_n_0 ),
        .I3(current_state[4]),
        .I4(current_state[10]),
        .I5(current_state[1]),
        .O(\current_first_access[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBBABBBBBBB)) 
    \current_first_access[3]_i_6 
       (.I0(current_pending_refresh),
        .I1(\current_address_bus[7]_i_4_n_0 ),
        .I2(next_state319_in),
        .I3(current_rd_grnt_i_2_n_0),
        .I4(\current_first_access[3]_i_12_n_0 ),
        .I5(\current_first_access[3]_i_13_n_0 ),
        .O(\current_first_access[3]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair148" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \current_first_access[3]_i_7 
       (.I0(current_state[12]),
        .I1(current_cke_i_9_n_0),
        .O(\current_first_access[3]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \current_first_access[3]_i_8 
       (.I0(current_pending_refresh),
        .I1(Q[23]),
        .I2(Q[22]),
        .O(\current_first_access[3]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \current_first_access[3]_i_9 
       (.I0(Q[23]),
        .I1(Q[22]),
        .I2(current_state[11]),
        .O(\current_first_access[3]_i_9_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \current_first_access_reg[0] 
       (.C(clk_i),
        .CE(1'b1),
        .D(\current_first_access[0]_i_1_n_0 ),
        .PRE(\current_nop_boot_count[14]_i_3_n_0 ),
        .Q(current_first_access[0]));
  FDPE #(
    .INIT(1'b1)) 
    \current_first_access_reg[1] 
       (.C(clk_i),
        .CE(1'b1),
        .D(\current_first_access[1]_i_1_n_0 ),
        .PRE(\current_nop_boot_count[14]_i_3_n_0 ),
        .Q(current_first_access[1]));
  FDPE #(
    .INIT(1'b1)) 
    \current_first_access_reg[2] 
       (.C(clk_i),
        .CE(1'b1),
        .D(\current_first_access[2]_i_1_n_0 ),
        .PRE(\current_nop_boot_count[14]_i_3_n_0 ),
        .Q(current_first_access[2]));
  FDPE #(
    .INIT(1'b1)) 
    \current_first_access_reg[3] 
       (.C(clk_i),
        .CE(1'b1),
        .D(\current_first_access[3]_i_1_n_0 ),
        .PRE(\current_nop_boot_count[14]_i_3_n_0 ),
        .Q(current_first_access[3]));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    current_mem_ready_i_1
       (.I0(current_state[10]),
        .I1(\ctrl_state_o[16]_INST_0_i_1_n_0 ),
        .I2(current_mem_ready_i_2_n_0),
        .I3(current_state[1]),
        .I4(current_mem_ready_i_3_n_0),
        .I5(mem_ready_o),
        .O(current_mem_ready_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFDDFFFFF)) 
    current_mem_ready_i_2
       (.I0(current_mem_ready_i_4_n_0),
        .I1(\ctrl_state_o[10]_INST_0_i_1_n_0 ),
        .I2(current_state[0]),
        .I3(current_state[10]),
        .I4(rstn_i),
        .I5(\current_wr_buffer[15]_i_3_n_0 ),
        .O(current_mem_ready_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    current_mem_ready_i_3
       (.I0(current_state[4]),
        .I1(current_state[5]),
        .I2(current_state[6]),
        .I3(current_state[7]),
        .I4(current_state[3]),
        .I5(current_state[2]),
        .O(current_mem_ready_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair150" *) 
  LUT2 #(
    .INIT(4'h1)) 
    current_mem_ready_i_4
       (.I0(current_state[8]),
        .I1(current_state[9]),
        .O(current_mem_ready_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    current_mem_ready_reg
       (.C(clk_i),
        .CE(1'b1),
        .D(current_mem_ready_i_1_n_0),
        .Q(mem_ready_o),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \current_nop_boot_count[0]_i_1 
       (.I0(\current_nop_boot_count[14]_i_7_n_0 ),
        .I1(\current_nop_boot_count[14]_i_8_n_0 ),
        .I2(current_nop_boot_count[0]),
        .O(\current_nop_boot_count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \current_nop_boot_count[10]_i_1 
       (.I0(\current_nop_boot_count[14]_i_7_n_0 ),
        .I1(\current_nop_boot_count[14]_i_8_n_0 ),
        .I2(next_nop_boot_count0_carry__1_n_6),
        .O(\current_nop_boot_count[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \current_nop_boot_count[11]_i_1 
       (.I0(\current_nop_boot_count[14]_i_7_n_0 ),
        .I1(\current_nop_boot_count[14]_i_8_n_0 ),
        .I2(next_nop_boot_count0_carry__1_n_5),
        .O(\current_nop_boot_count[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \current_nop_boot_count[12]_i_1 
       (.I0(\current_nop_boot_count[14]_i_7_n_0 ),
        .I1(\current_nop_boot_count[14]_i_8_n_0 ),
        .I2(next_nop_boot_count0_carry__1_n_4),
        .O(\current_nop_boot_count[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \current_nop_boot_count[13]_i_1 
       (.I0(\current_nop_boot_count[14]_i_7_n_0 ),
        .I1(\current_nop_boot_count[14]_i_8_n_0 ),
        .I2(next_nop_boot_count0_carry__2_n_7),
        .O(\current_nop_boot_count[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEEEEEEEEEFE)) 
    \current_nop_boot_count[14]_i_1 
       (.I0(\current_nop_boot_count[14]_i_4_n_0 ),
        .I1(\current_nop_boot_count[14]_i_5_n_0 ),
        .I2(\ctrl_state_o[3]_INST_0_i_1_n_0 ),
        .I3(current_state[2]),
        .I4(current_state[0]),
        .I5(\current_nop_boot_count[14]_i_6_n_0 ),
        .O(next_nop_boot_count));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT5 #(
    .INIT(32'h202220AA)) 
    \current_nop_boot_count[14]_i_10 
       (.I0(current_cke_i_10_n_0),
        .I1(current_state[15]),
        .I2(\current_state[16]_i_6_n_0 ),
        .I3(current_state[13]),
        .I4(current_state[14]),
        .O(\current_nop_boot_count[14]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFAEFFAEFFAE)) 
    \current_nop_boot_count[14]_i_11 
       (.I0(current_wr_grnt_i_9_n_0),
        .I1(current_state[16]),
        .I2(\ctrl_state_o[16]_INST_0_i_1_n_0 ),
        .I3(\current_nop_boot_count[14]_i_16_n_0 ),
        .I4(\current_nop_boot_count[14]_i_17_n_0 ),
        .I5(\current_nop_boot_count[14]_i_18_n_0 ),
        .O(\current_nop_boot_count[14]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEAFFFFFFFF)) 
    \current_nop_boot_count[14]_i_12 
       (.I0(\ctrl_state_o[10]_INST_0_i_1_n_0 ),
        .I1(current_state[8]),
        .I2(current_state[10]),
        .I3(current_state[9]),
        .I4(current_state[13]),
        .I5(\current_state[16]_i_6_n_0 ),
        .O(\current_nop_boot_count[14]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \current_nop_boot_count[14]_i_13 
       (.I0(current_state[12]),
        .I1(current_state[13]),
        .I2(\current_state[2]_i_6_n_0 ),
        .I3(\current_state[2]_i_7_n_0 ),
        .I4(\current_state[2]_i_8_n_0 ),
        .I5(current_ras_i_2_n_0),
        .O(\current_nop_boot_count[14]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \current_nop_boot_count[14]_i_14 
       (.I0(current_state[7]),
        .I1(current_state[6]),
        .I2(current_state[5]),
        .I3(current_state[4]),
        .O(\current_nop_boot_count[14]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair142" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \current_nop_boot_count[14]_i_15 
       (.I0(current_state[1]),
        .I1(\current_address_bus[14]_i_19_n_0 ),
        .O(\current_nop_boot_count[14]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \current_nop_boot_count[14]_i_16 
       (.I0(current_state[17]),
        .I1(current_state[19]),
        .I2(\ctrl_state_o[20]_INST_0_i_2_n_0 ),
        .I3(current_state[18]),
        .I4(current_state[20]),
        .O(\current_nop_boot_count[14]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hFEFCFEFCFEFCFE00)) 
    \current_nop_boot_count[14]_i_17 
       (.I0(current_state[20]),
        .I1(current_state[18]),
        .I2(\ctrl_state_o[20]_INST_0_i_2_n_0 ),
        .I3(current_state[19]),
        .I4(current_cas_i_13_n_0),
        .I5(\ctrl_state_o[22]_INST_0_i_2_n_0 ),
        .O(\current_nop_boot_count[14]_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \current_nop_boot_count[14]_i_18 
       (.I0(current_state[18]),
        .I1(current_state[19]),
        .I2(current_state[20]),
        .I3(\current_cas_rd_count[1]_i_13_n_0 ),
        .O(\current_nop_boot_count[14]_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \current_nop_boot_count[14]_i_2 
       (.I0(\current_nop_boot_count[14]_i_7_n_0 ),
        .I1(\current_nop_boot_count[14]_i_8_n_0 ),
        .I2(next_nop_boot_count0_carry__2_n_6),
        .O(\current_nop_boot_count[14]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \current_nop_boot_count[14]_i_3 
       (.I0(rstn_i),
        .O(\current_nop_boot_count[14]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h2AAA2A2A22222222)) 
    \current_nop_boot_count[14]_i_4 
       (.I0(current_wr_grnt_i_6_n_0),
        .I1(current_wr_op_done_i_2_n_0),
        .I2(\current_nop_boot_count[14]_i_9_n_0 ),
        .I3(\current_nop_boot_count[14]_i_10_n_0 ),
        .I4(\current_nop_boot_count[14]_i_11_n_0 ),
        .I5(\current_nop_boot_count[14]_i_12_n_0 ),
        .O(\current_nop_boot_count[14]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFBFAA2A)) 
    \current_nop_boot_count[14]_i_5 
       (.I0(current_state[0]),
        .I1(\current_nop_boot_count[14]_i_13_n_0 ),
        .I2(\current_nop_boot_count[14]_i_14_n_0 ),
        .I3(current_state[3]),
        .I4(current_state[2]),
        .I5(current_state[1]),
        .O(\current_nop_boot_count[14]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \current_nop_boot_count[14]_i_6 
       (.I0(current_state[3]),
        .I1(current_state[4]),
        .O(\current_nop_boot_count[14]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    \current_nop_boot_count[14]_i_7 
       (.I0(\current_nop_boot_count[14]_i_15_n_0 ),
        .I1(\current_state[25]_i_2_n_0 ),
        .I2(current_state[25]),
        .I3(current_state[24]),
        .I4(current_state[0]),
        .I5(current_state[26]),
        .O(\current_nop_boot_count[14]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    \current_nop_boot_count[14]_i_8 
       (.I0(current_mem_ready_i_3_n_0),
        .I1(current_ras_i_2_n_0),
        .I2(current_state[13]),
        .I3(current_state[12]),
        .I4(current_state[15]),
        .I5(current_state[14]),
        .O(\current_nop_boot_count[14]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT5 #(
    .INIT(32'h04004C44)) 
    \current_nop_boot_count[14]_i_9 
       (.I0(current_state[11]),
        .I1(current_wr_grnt_i_7_n_0),
        .I2(current_state[13]),
        .I3(\current_state[16]_i_6_n_0 ),
        .I4(current_state[12]),
        .O(\current_nop_boot_count[14]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \current_nop_boot_count[1]_i_1 
       (.I0(\current_nop_boot_count[14]_i_7_n_0 ),
        .I1(\current_nop_boot_count[14]_i_8_n_0 ),
        .I2(next_nop_boot_count0_carry_n_7),
        .O(\current_nop_boot_count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \current_nop_boot_count[2]_i_1 
       (.I0(\current_nop_boot_count[14]_i_7_n_0 ),
        .I1(\current_nop_boot_count[14]_i_8_n_0 ),
        .I2(next_nop_boot_count0_carry_n_6),
        .O(\current_nop_boot_count[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \current_nop_boot_count[3]_i_1 
       (.I0(\current_nop_boot_count[14]_i_7_n_0 ),
        .I1(\current_nop_boot_count[14]_i_8_n_0 ),
        .I2(next_nop_boot_count0_carry_n_5),
        .O(\current_nop_boot_count[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \current_nop_boot_count[4]_i_1 
       (.I0(\current_nop_boot_count[14]_i_7_n_0 ),
        .I1(\current_nop_boot_count[14]_i_8_n_0 ),
        .I2(next_nop_boot_count0_carry_n_4),
        .O(\current_nop_boot_count[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \current_nop_boot_count[5]_i_1 
       (.I0(\current_nop_boot_count[14]_i_7_n_0 ),
        .I1(\current_nop_boot_count[14]_i_8_n_0 ),
        .I2(next_nop_boot_count0_carry__0_n_7),
        .O(\current_nop_boot_count[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \current_nop_boot_count[6]_i_1 
       (.I0(\current_nop_boot_count[14]_i_7_n_0 ),
        .I1(\current_nop_boot_count[14]_i_8_n_0 ),
        .I2(next_nop_boot_count0_carry__0_n_6),
        .O(\current_nop_boot_count[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \current_nop_boot_count[7]_i_1 
       (.I0(\current_nop_boot_count[14]_i_7_n_0 ),
        .I1(\current_nop_boot_count[14]_i_8_n_0 ),
        .I2(next_nop_boot_count0_carry__0_n_5),
        .O(\current_nop_boot_count[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \current_nop_boot_count[8]_i_1 
       (.I0(\current_nop_boot_count[14]_i_7_n_0 ),
        .I1(\current_nop_boot_count[14]_i_8_n_0 ),
        .I2(next_nop_boot_count0_carry__0_n_4),
        .O(\current_nop_boot_count[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \current_nop_boot_count[9]_i_1 
       (.I0(\current_nop_boot_count[14]_i_7_n_0 ),
        .I1(\current_nop_boot_count[14]_i_8_n_0 ),
        .I2(next_nop_boot_count0_carry__1_n_7),
        .O(\current_nop_boot_count[9]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \current_nop_boot_count_reg[0] 
       (.C(clk_i),
        .CE(next_nop_boot_count),
        .CLR(\current_nop_boot_count[14]_i_3_n_0 ),
        .D(\current_nop_boot_count[0]_i_1_n_0 ),
        .Q(current_nop_boot_count[0]));
  FDCE #(
    .INIT(1'b0)) 
    \current_nop_boot_count_reg[10] 
       (.C(clk_i),
        .CE(next_nop_boot_count),
        .CLR(\current_nop_boot_count[14]_i_3_n_0 ),
        .D(\current_nop_boot_count[10]_i_1_n_0 ),
        .Q(current_nop_boot_count[10]));
  FDCE #(
    .INIT(1'b0)) 
    \current_nop_boot_count_reg[11] 
       (.C(clk_i),
        .CE(next_nop_boot_count),
        .CLR(\current_nop_boot_count[14]_i_3_n_0 ),
        .D(\current_nop_boot_count[11]_i_1_n_0 ),
        .Q(current_nop_boot_count[11]));
  FDCE #(
    .INIT(1'b0)) 
    \current_nop_boot_count_reg[12] 
       (.C(clk_i),
        .CE(next_nop_boot_count),
        .CLR(\current_nop_boot_count[14]_i_3_n_0 ),
        .D(\current_nop_boot_count[12]_i_1_n_0 ),
        .Q(current_nop_boot_count[12]));
  FDCE #(
    .INIT(1'b0)) 
    \current_nop_boot_count_reg[13] 
       (.C(clk_i),
        .CE(next_nop_boot_count),
        .CLR(\current_nop_boot_count[14]_i_3_n_0 ),
        .D(\current_nop_boot_count[13]_i_1_n_0 ),
        .Q(current_nop_boot_count[13]));
  FDCE #(
    .INIT(1'b0)) 
    \current_nop_boot_count_reg[14] 
       (.C(clk_i),
        .CE(next_nop_boot_count),
        .CLR(\current_nop_boot_count[14]_i_3_n_0 ),
        .D(\current_nop_boot_count[14]_i_2_n_0 ),
        .Q(current_nop_boot_count[14]));
  FDCE #(
    .INIT(1'b0)) 
    \current_nop_boot_count_reg[1] 
       (.C(clk_i),
        .CE(next_nop_boot_count),
        .CLR(\current_nop_boot_count[14]_i_3_n_0 ),
        .D(\current_nop_boot_count[1]_i_1_n_0 ),
        .Q(current_nop_boot_count[1]));
  FDCE #(
    .INIT(1'b0)) 
    \current_nop_boot_count_reg[2] 
       (.C(clk_i),
        .CE(next_nop_boot_count),
        .CLR(\current_nop_boot_count[14]_i_3_n_0 ),
        .D(\current_nop_boot_count[2]_i_1_n_0 ),
        .Q(current_nop_boot_count[2]));
  FDCE #(
    .INIT(1'b0)) 
    \current_nop_boot_count_reg[3] 
       (.C(clk_i),
        .CE(next_nop_boot_count),
        .CLR(\current_nop_boot_count[14]_i_3_n_0 ),
        .D(\current_nop_boot_count[3]_i_1_n_0 ),
        .Q(current_nop_boot_count[3]));
  FDCE #(
    .INIT(1'b0)) 
    \current_nop_boot_count_reg[4] 
       (.C(clk_i),
        .CE(next_nop_boot_count),
        .CLR(\current_nop_boot_count[14]_i_3_n_0 ),
        .D(\current_nop_boot_count[4]_i_1_n_0 ),
        .Q(current_nop_boot_count[4]));
  FDCE #(
    .INIT(1'b0)) 
    \current_nop_boot_count_reg[5] 
       (.C(clk_i),
        .CE(next_nop_boot_count),
        .CLR(\current_nop_boot_count[14]_i_3_n_0 ),
        .D(\current_nop_boot_count[5]_i_1_n_0 ),
        .Q(current_nop_boot_count[5]));
  FDCE #(
    .INIT(1'b0)) 
    \current_nop_boot_count_reg[6] 
       (.C(clk_i),
        .CE(next_nop_boot_count),
        .CLR(\current_nop_boot_count[14]_i_3_n_0 ),
        .D(\current_nop_boot_count[6]_i_1_n_0 ),
        .Q(current_nop_boot_count[6]));
  FDCE #(
    .INIT(1'b0)) 
    \current_nop_boot_count_reg[7] 
       (.C(clk_i),
        .CE(next_nop_boot_count),
        .CLR(\current_nop_boot_count[14]_i_3_n_0 ),
        .D(\current_nop_boot_count[7]_i_1_n_0 ),
        .Q(current_nop_boot_count[7]));
  FDCE #(
    .INIT(1'b0)) 
    \current_nop_boot_count_reg[8] 
       (.C(clk_i),
        .CE(next_nop_boot_count),
        .CLR(\current_nop_boot_count[14]_i_3_n_0 ),
        .D(\current_nop_boot_count[8]_i_1_n_0 ),
        .Q(current_nop_boot_count[8]));
  FDCE #(
    .INIT(1'b0)) 
    \current_nop_boot_count_reg[9] 
       (.C(clk_i),
        .CE(next_nop_boot_count),
        .CLR(\current_nop_boot_count[14]_i_3_n_0 ),
        .D(\current_nop_boot_count[9]_i_1_n_0 ),
        .Q(current_nop_boot_count[9]));
  LUT6 #(
    .INIT(64'hAAAAEEEFAAAA2220)) 
    \current_nop_wr_count[0]_i_1 
       (.I0(\current_nop_wr_count[0]_i_2_n_0 ),
        .I1(\current_nop_wr_count[0]_i_3_n_0 ),
        .I2(\current_nop_wr_count[0]_i_4_n_0 ),
        .I3(\current_nop_wr_count[0]_i_5_n_0 ),
        .I4(\current_nop_wr_count[0]_i_6_n_0 ),
        .I5(current_nop_wr_count),
        .O(\current_nop_wr_count[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF0FFF0F0F02)) 
    \current_nop_wr_count[0]_i_10 
       (.I0(\current_nop_boot_count[14]_i_17_n_0 ),
        .I1(\current_nop_wr_count[0]_i_13_n_0 ),
        .I2(\current_nop_wr_count[0]_i_14_n_0 ),
        .I3(current_state[15]),
        .I4(current_state[17]),
        .I5(current_state[16]),
        .O(\current_nop_wr_count[0]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT5 #(
    .INIT(32'h00001700)) 
    \current_nop_wr_count[0]_i_11 
       (.I0(current_state[11]),
        .I1(current_state[12]),
        .I2(current_state[10]),
        .I3(\current_state[16]_i_6_n_0 ),
        .I4(current_state[13]),
        .O(\current_nop_wr_count[0]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT4 #(
    .INIT(16'h022A)) 
    \current_nop_wr_count[0]_i_12 
       (.I0(\current_nop_boot_count[14]_i_13_n_0 ),
        .I1(current_state[7]),
        .I2(current_state[6]),
        .I3(current_state[5]),
        .O(\current_nop_wr_count[0]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \current_nop_wr_count[0]_i_13 
       (.I0(current_state[18]),
        .I1(current_state[19]),
        .I2(current_state[20]),
        .I3(\current_nop_wr_count[0]_i_15_n_0 ),
        .O(\current_nop_wr_count[0]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \current_nop_wr_count[0]_i_14 
       (.I0(current_state[20]),
        .I1(current_state[18]),
        .I2(\ctrl_state_o[20]_INST_0_i_2_n_0 ),
        .I3(current_state[19]),
        .O(\current_nop_wr_count[0]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFEFEEC)) 
    \current_nop_wr_count[0]_i_15 
       (.I0(current_state[22]),
        .I1(current_state[25]),
        .I2(current_state[26]),
        .I3(current_state[24]),
        .I4(current_state[23]),
        .I5(current_state[21]),
        .O(\current_nop_wr_count[0]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \current_nop_wr_count[0]_i_2 
       (.I0(\current_nop_boot_count[14]_i_8_n_0 ),
        .I1(\current_nop_wr_count[0]_i_7_n_0 ),
        .I2(\current_state[25]_i_2_n_0 ),
        .O(\current_nop_wr_count[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT4 #(
    .INIT(16'h0013)) 
    \current_nop_wr_count[0]_i_3 
       (.I0(current_state[2]),
        .I1(current_state[3]),
        .I2(current_state[1]),
        .I3(current_rd_op_done_i_4_n_0),
        .O(\current_nop_wr_count[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h0000AAFE)) 
    \current_nop_wr_count[0]_i_4 
       (.I0(\current_nop_wr_count[0]_i_8_n_0 ),
        .I1(\current_nop_wr_count[0]_i_9_n_0 ),
        .I2(\current_nop_wr_count[0]_i_10_n_0 ),
        .I3(\current_nop_wr_count[0]_i_11_n_0 ),
        .I4(\current_nop_wr_count[0]_i_12_n_0 ),
        .O(\current_nop_wr_count[0]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT5 #(
    .INIT(32'hFFFFFFD4)) 
    \current_nop_wr_count[0]_i_5 
       (.I0(\ctrl_state_o[3]_INST_0_i_1_n_0 ),
        .I1(current_state[3]),
        .I2(current_state[4]),
        .I3(current_state[1]),
        .I4(current_state[2]),
        .O(\current_nop_wr_count[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA9AAAAAAAA)) 
    \current_nop_wr_count[0]_i_6 
       (.I0(current_state[0]),
        .I1(current_state[26]),
        .I2(current_state[21]),
        .I3(current_state[24]),
        .I4(\ctrl_state_o[21]_INST_0_i_2_n_0 ),
        .I5(\ctrl_state_o[24]_INST_0_i_1_n_0 ),
        .O(\current_nop_wr_count[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    \current_nop_wr_count[0]_i_7 
       (.I0(current_state[0]),
        .I1(current_state[24]),
        .I2(current_nop_wr_count),
        .I3(current_state[25]),
        .I4(current_state[1]),
        .I5(current_state[26]),
        .O(\current_nop_wr_count[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFDFDFC)) 
    \current_nop_wr_count[0]_i_8 
       (.I0(\current_state[2]_i_2_n_0 ),
        .I1(current_state[5]),
        .I2(current_state[6]),
        .I3(current_state[9]),
        .I4(current_state[8]),
        .I5(current_state[7]),
        .O(\current_nop_wr_count[0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFF2FFFFFFF2FFF2)) 
    \current_nop_wr_count[0]_i_9 
       (.I0(current_state[13]),
        .I1(\current_state[16]_i_6_n_0 ),
        .I2(current_state[10]),
        .I3(\ctrl_state_o[10]_INST_0_i_1_n_0 ),
        .I4(\current_cas_rd_count[1]_i_12_n_0 ),
        .I5(current_state[14]),
        .O(\current_nop_wr_count[0]_i_9_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \current_nop_wr_count_reg[0] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(\current_nop_boot_count[14]_i_3_n_0 ),
        .D(\current_nop_wr_count[0]_i_1_n_0 ),
        .Q(current_nop_wr_count));
  (* SOFT_HLUTNM = "soft_lutpair151" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \current_pend_ref_count[0]_i_1 
       (.I0(current_pend_ref_count_reg__0[0]),
        .O(next_pend_ref_count[0]));
  (* SOFT_HLUTNM = "soft_lutpair151" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \current_pend_ref_count[1]_i_1 
       (.I0(current_pend_ref_count_reg__0[0]),
        .I1(current_pend_ref_count_reg__0[1]),
        .O(next_pend_ref_count[1]));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \current_pend_ref_count[2]_i_1 
       (.I0(current_pend_ref_count_reg__0[2]),
        .I1(current_pend_ref_count_reg__0[1]),
        .I2(current_pend_ref_count_reg__0[0]),
        .O(next_pend_ref_count[2]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \current_pend_ref_count[3]_i_1 
       (.I0(current_pend_ref_count_reg__0[3]),
        .I1(current_pend_ref_count_reg__0[0]),
        .I2(current_pend_ref_count_reg__0[1]),
        .I3(current_pend_ref_count_reg__0[2]),
        .O(next_pend_ref_count[3]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \current_pend_ref_count[4]_i_1 
       (.I0(current_pend_ref_count_reg__0[4]),
        .I1(current_pend_ref_count_reg__0[3]),
        .I2(current_pend_ref_count_reg__0[2]),
        .I3(current_pend_ref_count_reg__0[1]),
        .I4(current_pend_ref_count_reg__0[0]),
        .O(next_pend_ref_count[4]));
  LUT6 #(
    .INIT(64'hAAAAAAA888888888)) 
    \current_pend_ref_count[5]_i_1 
       (.I0(\current_pend_ref_count[5]_i_2_n_0 ),
        .I1(current_pend_ref_count_reg__0[5]),
        .I2(current_pend_ref_count_reg__0[2]),
        .I3(\current_pend_ref_count[5]_i_4_n_0 ),
        .I4(current_pend_ref_count_reg__0[3]),
        .I5(current_pend_ref_count_reg__0[4]),
        .O(\current_pend_ref_count[5]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \current_pend_ref_count[5]_i_2 
       (.I0(current_pending_refresh),
        .I1(mem_ready_o),
        .I2(rstn_i),
        .O(\current_pend_ref_count[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \current_pend_ref_count[5]_i_3 
       (.I0(current_pend_ref_count_reg__0[5]),
        .I1(current_pend_ref_count_reg__0[0]),
        .I2(current_pend_ref_count_reg__0[1]),
        .I3(current_pend_ref_count_reg__0[2]),
        .I4(current_pend_ref_count_reg__0[3]),
        .I5(current_pend_ref_count_reg__0[4]),
        .O(next_pend_ref_count[5]));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \current_pend_ref_count[5]_i_4 
       (.I0(current_pend_ref_count_reg__0[0]),
        .I1(current_pend_ref_count_reg__0[1]),
        .O(\current_pend_ref_count[5]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_pend_ref_count_reg[0] 
       (.C(clk_i),
        .CE(\current_pend_ref_count[5]_i_2_n_0 ),
        .D(next_pend_ref_count[0]),
        .Q(current_pend_ref_count_reg__0[0]),
        .R(\current_pend_ref_count[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_pend_ref_count_reg[1] 
       (.C(clk_i),
        .CE(\current_pend_ref_count[5]_i_2_n_0 ),
        .D(next_pend_ref_count[1]),
        .Q(current_pend_ref_count_reg__0[1]),
        .R(\current_pend_ref_count[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_pend_ref_count_reg[2] 
       (.C(clk_i),
        .CE(\current_pend_ref_count[5]_i_2_n_0 ),
        .D(next_pend_ref_count[2]),
        .Q(current_pend_ref_count_reg__0[2]),
        .R(\current_pend_ref_count[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_pend_ref_count_reg[3] 
       (.C(clk_i),
        .CE(\current_pend_ref_count[5]_i_2_n_0 ),
        .D(next_pend_ref_count[3]),
        .Q(current_pend_ref_count_reg__0[3]),
        .R(\current_pend_ref_count[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_pend_ref_count_reg[4] 
       (.C(clk_i),
        .CE(\current_pend_ref_count[5]_i_2_n_0 ),
        .D(next_pend_ref_count[4]),
        .Q(current_pend_ref_count_reg__0[4]),
        .R(\current_pend_ref_count[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_pend_ref_count_reg[5] 
       (.C(clk_i),
        .CE(\current_pend_ref_count[5]_i_2_n_0 ),
        .D(next_pend_ref_count[5]),
        .Q(current_pend_ref_count_reg__0[5]),
        .R(\current_pend_ref_count[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT5 #(
    .INIT(32'hF400F0F0)) 
    current_pending_refresh_i_1
       (.I0(current_pending_refresh_i_2_n_0),
        .I1(mem_ready_o),
        .I2(current_pending_refresh),
        .I3(current_pending_refresh_i_3_n_0),
        .I4(rstn_i),
        .O(current_pending_refresh_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000055555777)) 
    current_pending_refresh_i_2
       (.I0(current_pend_ref_count_reg__0[4]),
        .I1(current_pend_ref_count_reg__0[3]),
        .I2(current_pend_ref_count_reg__0[0]),
        .I3(current_pend_ref_count_reg__0[1]),
        .I4(current_pend_ref_count_reg__0[2]),
        .I5(current_pend_ref_count_reg__0[5]),
        .O(current_pending_refresh_i_2_n_0));
  LUT5 #(
    .INIT(32'hFFFFEFFF)) 
    current_pending_refresh_i_3
       (.I0(current_pending_refresh_i_4_n_0),
        .I1(\ctrl_state_o[4]_INST_0_i_2_n_0 ),
        .I2(\current_first_access[3]_i_11_n_0 ),
        .I3(\current_cas_rd_count[1]_i_12_n_0 ),
        .I4(current_pending_refresh_i_5_n_0),
        .O(current_pending_refresh_i_3_n_0));
  LUT6 #(
    .INIT(64'h5555555577770FFF)) 
    current_pending_refresh_i_4
       (.I0(\current_state[26]_i_11_n_0 ),
        .I1(mem_ready_o),
        .I2(current_act_to_rw_count),
        .I3(\current_address_bus[13]_i_4_n_0 ),
        .I4(current_state[3]),
        .I5(current_state[5]),
        .O(current_pending_refresh_i_4_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFEFEFF)) 
    current_pending_refresh_i_5
       (.I0(current_state[14]),
        .I1(current_state[10]),
        .I2(\ctrl_state_o[10]_INST_0_i_1_n_0 ),
        .I3(current_state[13]),
        .I4(current_state[5]),
        .I5(current_state[3]),
        .O(current_pending_refresh_i_5_n_0));
  FDRE #(
    .INIT(1'b0)) 
    current_pending_refresh_reg
       (.C(clk_i),
        .CE(1'b1),
        .D(current_pending_refresh_i_1_n_0),
        .Q(current_pending_refresh),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT5 #(
    .INIT(32'hEFFF1000)) 
    \current_precharge_count[0]_i_1 
       (.I0(current_state[0]),
        .I1(current_state[5]),
        .I2(current_state[6]),
        .I3(\ctrl_state_o[2]_INST_0_i_1_n_0 ),
        .I4(current_precharge_count),
        .O(\current_precharge_count[0]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \current_precharge_count_reg[0] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(\current_nop_boot_count[14]_i_3_n_0 ),
        .D(\current_precharge_count[0]_i_1_n_0 ),
        .Q(current_precharge_count));
  LUT6 #(
    .INIT(64'hFFFFFFFF75757500)) 
    current_ras_i_1
       (.I0(current_ras_i_2_n_0),
        .I1(current_ras_i_3_n_0),
        .I2(current_ras_i_4_n_0),
        .I3(current_ras_i_5_n_0),
        .I4(current_ras_i_6_n_0),
        .I5(current_ras_i_7_n_0),
        .O(next_ras));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    current_ras_i_2
       (.I0(current_state[9]),
        .I1(current_state[8]),
        .I2(current_state[10]),
        .I3(current_state[11]),
        .O(current_ras_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000055007F00)) 
    current_ras_i_3
       (.I0(current_state[3]),
        .I1(\current_address_bus[13]_i_4_n_0 ),
        .I2(mem_ready_o),
        .I3(\ctrl_state_o[8]_INST_0_i_2_n_0 ),
        .I4(current_state[5]),
        .I5(current_state[4]),
        .O(current_ras_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFF8FFFFFFFF)) 
    current_ras_i_4
       (.I0(\current_state[2]_i_5_n_0 ),
        .I1(\current_address_bus[13]_i_4_n_0 ),
        .I2(current_state[7]),
        .I3(current_state[5]),
        .I4(\current_nop_boot_count[14]_i_6_n_0 ),
        .I5(current_precharge_count),
        .O(current_ras_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    current_ras_i_5
       (.I0(current_state[11]),
        .I1(current_we_i_3_n_0),
        .I2(current_pending_refresh),
        .I3(\current_address_bus[7]_i_4_n_0 ),
        .O(current_ras_i_5_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFEC)) 
    current_ras_i_6
       (.I0(current_state[8]),
        .I1(current_state[10]),
        .I2(current_state[11]),
        .I3(current_ras_i_8_n_0),
        .I4(current_state[3]),
        .I5(current_state[4]),
        .O(current_ras_i_6_n_0));
  LUT6 #(
    .INIT(64'hFFFFFEFFAAAAABAA)) 
    current_ras_i_7
       (.I0(\current_address_bus[10]_i_4_n_0 ),
        .I1(current_state[11]),
        .I2(current_state[5]),
        .I3(\current_address_bus[14]_i_7_n_0 ),
        .I4(current_state[8]),
        .I5(current_state[1]),
        .O(current_ras_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    current_ras_i_8
       (.I0(current_state[9]),
        .I1(current_state[7]),
        .I2(current_state[6]),
        .I3(current_state[5]),
        .O(current_ras_i_8_n_0));
  FDPE #(
    .INIT(1'b1)) 
    current_ras_reg
       (.C(clk_i),
        .CE(next_cke),
        .D(next_ras),
        .PRE(\current_nop_boot_count[14]_i_3_n_0 ),
        .Q(current_ras));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \current_rd_buffer[0][0]_i_1 
       (.I0(\dataQ[0].iobuf_inst__0 ),
        .I1(current_state[18]),
        .I2(current_state[14]),
        .O(\current_rd_buffer[0][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \current_rd_buffer[0][10]_i_1 
       (.I0(\dataQ[10].iobuf_inst__0 ),
        .I1(current_state[18]),
        .I2(current_state[14]),
        .O(\current_rd_buffer[0][10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \current_rd_buffer[0][11]_i_1 
       (.I0(\dataQ[11].iobuf_inst__0 ),
        .I1(current_state[18]),
        .I2(current_state[14]),
        .O(\current_rd_buffer[0][11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \current_rd_buffer[0][12]_i_1 
       (.I0(\dataQ[12].iobuf_inst__0 ),
        .I1(current_state[18]),
        .I2(current_state[14]),
        .O(\current_rd_buffer[0][12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \current_rd_buffer[0][13]_i_1 
       (.I0(\dataQ[13].iobuf_inst__0 ),
        .I1(current_state[18]),
        .I2(current_state[14]),
        .O(\current_rd_buffer[0][13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \current_rd_buffer[0][14]_i_1 
       (.I0(\dataQ[14].iobuf_inst__0 ),
        .I1(current_state[18]),
        .I2(current_state[14]),
        .O(\current_rd_buffer[0][14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0022208800000000)) 
    \current_rd_buffer[0][15]_i_1 
       (.I0(\current_rd_buffer[0][15]_i_3_n_0 ),
        .I1(current_state[0]),
        .I2(\current_rd_buffer[0][15]_i_4_n_0 ),
        .I3(current_state[14]),
        .I4(current_state[18]),
        .I5(\ctrl_state_o[18]_INST_0_i_1_n_0 ),
        .O(\next_rd_buffer[0]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \current_rd_buffer[0][15]_i_2 
       (.I0(\dataQ[15].iobuf_inst__0 ),
        .I1(current_state[18]),
        .I2(current_state[14]),
        .O(\current_rd_buffer[0][15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \current_rd_buffer[0][15]_i_3 
       (.I0(\ctrl_state_o[26]_INST_0_i_3_n_0 ),
        .I1(current_state[16]),
        .I2(current_state[15]),
        .I3(\ctrl_state_o[16]_INST_0_i_4_n_0 ),
        .I4(current_state[17]),
        .I5(current_state[13]),
        .O(\current_rd_buffer[0][15]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \current_rd_buffer[0][15]_i_4 
       (.I0(current_cas_rd_count[1]),
        .I1(current_cas_rd_count[0]),
        .O(\current_rd_buffer[0][15]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \current_rd_buffer[0][1]_i_1 
       (.I0(\dataQ[1].iobuf_inst__0 ),
        .I1(current_state[18]),
        .I2(current_state[14]),
        .O(\current_rd_buffer[0][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \current_rd_buffer[0][2]_i_1 
       (.I0(\dataQ[2].iobuf_inst__0 ),
        .I1(current_state[18]),
        .I2(current_state[14]),
        .O(\current_rd_buffer[0][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \current_rd_buffer[0][3]_i_1 
       (.I0(\dataQ[3].iobuf_inst__0 ),
        .I1(current_state[18]),
        .I2(current_state[14]),
        .O(\current_rd_buffer[0][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \current_rd_buffer[0][4]_i_1 
       (.I0(\dataQ[4].iobuf_inst__0 ),
        .I1(current_state[18]),
        .I2(current_state[14]),
        .O(\current_rd_buffer[0][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \current_rd_buffer[0][5]_i_1 
       (.I0(\dataQ[5].iobuf_inst__0 ),
        .I1(current_state[18]),
        .I2(current_state[14]),
        .O(\current_rd_buffer[0][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \current_rd_buffer[0][6]_i_1 
       (.I0(\dataQ[6].iobuf_inst__0 ),
        .I1(current_state[18]),
        .I2(current_state[14]),
        .O(\current_rd_buffer[0][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \current_rd_buffer[0][7]_i_1 
       (.I0(\dataQ[7].iobuf_inst__0 ),
        .I1(current_state[18]),
        .I2(current_state[14]),
        .O(\current_rd_buffer[0][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \current_rd_buffer[0][8]_i_1 
       (.I0(\dataQ[8].iobuf_inst__0 ),
        .I1(current_state[18]),
        .I2(current_state[14]),
        .O(\current_rd_buffer[0][8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \current_rd_buffer[0][9]_i_1 
       (.I0(\dataQ[9].iobuf_inst__0 ),
        .I1(current_state[18]),
        .I2(current_state[14]),
        .O(\current_rd_buffer[0][9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \current_rd_buffer[1][0]_i_1 
       (.I0(\dataQ[0].iobuf_inst__0 ),
        .I1(current_state[19]),
        .I2(current_state[14]),
        .O(\current_rd_buffer[1][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \current_rd_buffer[1][10]_i_1 
       (.I0(\dataQ[10].iobuf_inst__0 ),
        .I1(current_state[19]),
        .I2(current_state[14]),
        .O(\current_rd_buffer[1][10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \current_rd_buffer[1][11]_i_1 
       (.I0(\dataQ[11].iobuf_inst__0 ),
        .I1(current_state[19]),
        .I2(current_state[14]),
        .O(\current_rd_buffer[1][11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \current_rd_buffer[1][12]_i_1 
       (.I0(\dataQ[12].iobuf_inst__0 ),
        .I1(current_state[19]),
        .I2(current_state[14]),
        .O(\current_rd_buffer[1][12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \current_rd_buffer[1][13]_i_1 
       (.I0(\dataQ[13].iobuf_inst__0 ),
        .I1(current_state[19]),
        .I2(current_state[14]),
        .O(\current_rd_buffer[1][13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \current_rd_buffer[1][14]_i_1 
       (.I0(\dataQ[14].iobuf_inst__0 ),
        .I1(current_state[19]),
        .I2(current_state[14]),
        .O(\current_rd_buffer[1][14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0008088000080800)) 
    \current_rd_buffer[1][15]_i_1 
       (.I0(\current_rd_buffer[0][15]_i_3_n_0 ),
        .I1(\current_rd_buffer[1][15]_i_3_n_0 ),
        .I2(current_state[14]),
        .I3(current_state[19]),
        .I4(current_state[0]),
        .I5(\current_rd_buffer[0][15]_i_4_n_0 ),
        .O(\next_rd_buffer[1]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \current_rd_buffer[1][15]_i_2 
       (.I0(\dataQ[15].iobuf_inst__0 ),
        .I1(current_state[19]),
        .I2(current_state[14]),
        .O(\current_rd_buffer[1][15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \current_rd_buffer[1][15]_i_3 
       (.I0(current_state[20]),
        .I1(current_state[18]),
        .I2(\ctrl_state_o[20]_INST_0_i_2_n_0 ),
        .O(\current_rd_buffer[1][15]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \current_rd_buffer[1][1]_i_1 
       (.I0(\dataQ[1].iobuf_inst__0 ),
        .I1(current_state[19]),
        .I2(current_state[14]),
        .O(\current_rd_buffer[1][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \current_rd_buffer[1][2]_i_1 
       (.I0(\dataQ[2].iobuf_inst__0 ),
        .I1(current_state[19]),
        .I2(current_state[14]),
        .O(\current_rd_buffer[1][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \current_rd_buffer[1][3]_i_1 
       (.I0(\dataQ[3].iobuf_inst__0 ),
        .I1(current_state[19]),
        .I2(current_state[14]),
        .O(\current_rd_buffer[1][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \current_rd_buffer[1][4]_i_1 
       (.I0(\dataQ[4].iobuf_inst__0 ),
        .I1(current_state[19]),
        .I2(current_state[14]),
        .O(\current_rd_buffer[1][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \current_rd_buffer[1][5]_i_1 
       (.I0(\dataQ[5].iobuf_inst__0 ),
        .I1(current_state[19]),
        .I2(current_state[14]),
        .O(\current_rd_buffer[1][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \current_rd_buffer[1][6]_i_1 
       (.I0(\dataQ[6].iobuf_inst__0 ),
        .I1(current_state[19]),
        .I2(current_state[14]),
        .O(\current_rd_buffer[1][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \current_rd_buffer[1][7]_i_1 
       (.I0(\dataQ[7].iobuf_inst__0 ),
        .I1(current_state[19]),
        .I2(current_state[14]),
        .O(\current_rd_buffer[1][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \current_rd_buffer[1][8]_i_1 
       (.I0(\dataQ[8].iobuf_inst__0 ),
        .I1(current_state[19]),
        .I2(current_state[14]),
        .O(\current_rd_buffer[1][8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \current_rd_buffer[1][9]_i_1 
       (.I0(\dataQ[9].iobuf_inst__0 ),
        .I1(current_state[19]),
        .I2(current_state[14]),
        .O(\current_rd_buffer[1][9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \current_rd_buffer[2][0]_i_1 
       (.I0(\dataQ[0].iobuf_inst__0 ),
        .I1(current_state[20]),
        .I2(current_state[14]),
        .O(\current_rd_buffer[2][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \current_rd_buffer[2][10]_i_1 
       (.I0(\dataQ[10].iobuf_inst__0 ),
        .I1(current_state[20]),
        .I2(current_state[14]),
        .O(\current_rd_buffer[2][10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \current_rd_buffer[2][11]_i_1 
       (.I0(\dataQ[11].iobuf_inst__0 ),
        .I1(current_state[20]),
        .I2(current_state[14]),
        .O(\current_rd_buffer[2][11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \current_rd_buffer[2][12]_i_1 
       (.I0(\dataQ[12].iobuf_inst__0 ),
        .I1(current_state[20]),
        .I2(current_state[14]),
        .O(\current_rd_buffer[2][12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \current_rd_buffer[2][13]_i_1 
       (.I0(\dataQ[13].iobuf_inst__0 ),
        .I1(current_state[20]),
        .I2(current_state[14]),
        .O(\current_rd_buffer[2][13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \current_rd_buffer[2][14]_i_1 
       (.I0(\dataQ[14].iobuf_inst__0 ),
        .I1(current_state[20]),
        .I2(current_state[14]),
        .O(\current_rd_buffer[2][14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000002280220)) 
    \current_rd_buffer[2][15]_i_1 
       (.I0(\current_rd_buffer[0][15]_i_3_n_0 ),
        .I1(current_state[14]),
        .I2(current_state[20]),
        .I3(current_state[0]),
        .I4(\current_rd_buffer[0][15]_i_4_n_0 ),
        .I5(\current_rd_buffer[2][15]_i_3_n_0 ),
        .O(\next_rd_buffer[2]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \current_rd_buffer[2][15]_i_2 
       (.I0(\dataQ[15].iobuf_inst__0 ),
        .I1(current_state[20]),
        .I2(current_state[14]),
        .O(\current_rd_buffer[2][15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \current_rd_buffer[2][15]_i_3 
       (.I0(\ctrl_state_o[20]_INST_0_i_1_n_0 ),
        .I1(\ctrl_state_o[21]_INST_0_i_2_n_0 ),
        .I2(current_state[25]),
        .I3(current_state[26]),
        .I4(current_state[21]),
        .I5(current_state[24]),
        .O(\current_rd_buffer[2][15]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \current_rd_buffer[2][1]_i_1 
       (.I0(\dataQ[1].iobuf_inst__0 ),
        .I1(current_state[20]),
        .I2(current_state[14]),
        .O(\current_rd_buffer[2][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \current_rd_buffer[2][2]_i_1 
       (.I0(\dataQ[2].iobuf_inst__0 ),
        .I1(current_state[20]),
        .I2(current_state[14]),
        .O(\current_rd_buffer[2][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \current_rd_buffer[2][3]_i_1 
       (.I0(\dataQ[3].iobuf_inst__0 ),
        .I1(current_state[20]),
        .I2(current_state[14]),
        .O(\current_rd_buffer[2][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \current_rd_buffer[2][4]_i_1 
       (.I0(\dataQ[4].iobuf_inst__0 ),
        .I1(current_state[20]),
        .I2(current_state[14]),
        .O(\current_rd_buffer[2][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \current_rd_buffer[2][5]_i_1 
       (.I0(\dataQ[5].iobuf_inst__0 ),
        .I1(current_state[20]),
        .I2(current_state[14]),
        .O(\current_rd_buffer[2][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \current_rd_buffer[2][6]_i_1 
       (.I0(\dataQ[6].iobuf_inst__0 ),
        .I1(current_state[20]),
        .I2(current_state[14]),
        .O(\current_rd_buffer[2][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \current_rd_buffer[2][7]_i_1 
       (.I0(\dataQ[7].iobuf_inst__0 ),
        .I1(current_state[20]),
        .I2(current_state[14]),
        .O(\current_rd_buffer[2][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \current_rd_buffer[2][8]_i_1 
       (.I0(\dataQ[8].iobuf_inst__0 ),
        .I1(current_state[20]),
        .I2(current_state[14]),
        .O(\current_rd_buffer[2][8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \current_rd_buffer[2][9]_i_1 
       (.I0(\dataQ[9].iobuf_inst__0 ),
        .I1(current_state[20]),
        .I2(current_state[14]),
        .O(\current_rd_buffer[2][9]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \current_rd_buffer_reg[0][0] 
       (.C(clk_i),
        .CE(\next_rd_buffer[0]_2 ),
        .CLR(\current_nop_boot_count[14]_i_3_n_0 ),
        .D(\current_rd_buffer[0][0]_i_1_n_0 ),
        .Q(\current_rd_data_reg[15] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \current_rd_buffer_reg[0][10] 
       (.C(clk_i),
        .CE(\next_rd_buffer[0]_2 ),
        .CLR(\current_nop_boot_count[14]_i_3_n_0 ),
        .D(\current_rd_buffer[0][10]_i_1_n_0 ),
        .Q(\current_rd_data_reg[15] [10]));
  FDCE #(
    .INIT(1'b0)) 
    \current_rd_buffer_reg[0][11] 
       (.C(clk_i),
        .CE(\next_rd_buffer[0]_2 ),
        .CLR(\current_nop_boot_count[14]_i_3_n_0 ),
        .D(\current_rd_buffer[0][11]_i_1_n_0 ),
        .Q(\current_rd_data_reg[15] [11]));
  FDCE #(
    .INIT(1'b0)) 
    \current_rd_buffer_reg[0][12] 
       (.C(clk_i),
        .CE(\next_rd_buffer[0]_2 ),
        .CLR(\current_nop_boot_count[14]_i_3_n_0 ),
        .D(\current_rd_buffer[0][12]_i_1_n_0 ),
        .Q(\current_rd_data_reg[15] [12]));
  FDCE #(
    .INIT(1'b0)) 
    \current_rd_buffer_reg[0][13] 
       (.C(clk_i),
        .CE(\next_rd_buffer[0]_2 ),
        .CLR(\current_nop_boot_count[14]_i_3_n_0 ),
        .D(\current_rd_buffer[0][13]_i_1_n_0 ),
        .Q(\current_rd_data_reg[15] [13]));
  FDCE #(
    .INIT(1'b0)) 
    \current_rd_buffer_reg[0][14] 
       (.C(clk_i),
        .CE(\next_rd_buffer[0]_2 ),
        .CLR(\current_nop_boot_count[14]_i_3_n_0 ),
        .D(\current_rd_buffer[0][14]_i_1_n_0 ),
        .Q(\current_rd_data_reg[15] [14]));
  FDCE #(
    .INIT(1'b0)) 
    \current_rd_buffer_reg[0][15] 
       (.C(clk_i),
        .CE(\next_rd_buffer[0]_2 ),
        .CLR(\current_nop_boot_count[14]_i_3_n_0 ),
        .D(\current_rd_buffer[0][15]_i_2_n_0 ),
        .Q(\current_rd_data_reg[15] [15]));
  FDCE #(
    .INIT(1'b0)) 
    \current_rd_buffer_reg[0][1] 
       (.C(clk_i),
        .CE(\next_rd_buffer[0]_2 ),
        .CLR(\current_nop_boot_count[14]_i_3_n_0 ),
        .D(\current_rd_buffer[0][1]_i_1_n_0 ),
        .Q(\current_rd_data_reg[15] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \current_rd_buffer_reg[0][2] 
       (.C(clk_i),
        .CE(\next_rd_buffer[0]_2 ),
        .CLR(\current_nop_boot_count[14]_i_3_n_0 ),
        .D(\current_rd_buffer[0][2]_i_1_n_0 ),
        .Q(\current_rd_data_reg[15] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \current_rd_buffer_reg[0][3] 
       (.C(clk_i),
        .CE(\next_rd_buffer[0]_2 ),
        .CLR(\current_nop_boot_count[14]_i_3_n_0 ),
        .D(\current_rd_buffer[0][3]_i_1_n_0 ),
        .Q(\current_rd_data_reg[15] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \current_rd_buffer_reg[0][4] 
       (.C(clk_i),
        .CE(\next_rd_buffer[0]_2 ),
        .CLR(\current_nop_boot_count[14]_i_3_n_0 ),
        .D(\current_rd_buffer[0][4]_i_1_n_0 ),
        .Q(\current_rd_data_reg[15] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \current_rd_buffer_reg[0][5] 
       (.C(clk_i),
        .CE(\next_rd_buffer[0]_2 ),
        .CLR(\current_nop_boot_count[14]_i_3_n_0 ),
        .D(\current_rd_buffer[0][5]_i_1_n_0 ),
        .Q(\current_rd_data_reg[15] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \current_rd_buffer_reg[0][6] 
       (.C(clk_i),
        .CE(\next_rd_buffer[0]_2 ),
        .CLR(\current_nop_boot_count[14]_i_3_n_0 ),
        .D(\current_rd_buffer[0][6]_i_1_n_0 ),
        .Q(\current_rd_data_reg[15] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \current_rd_buffer_reg[0][7] 
       (.C(clk_i),
        .CE(\next_rd_buffer[0]_2 ),
        .CLR(\current_nop_boot_count[14]_i_3_n_0 ),
        .D(\current_rd_buffer[0][7]_i_1_n_0 ),
        .Q(\current_rd_data_reg[15] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \current_rd_buffer_reg[0][8] 
       (.C(clk_i),
        .CE(\next_rd_buffer[0]_2 ),
        .CLR(\current_nop_boot_count[14]_i_3_n_0 ),
        .D(\current_rd_buffer[0][8]_i_1_n_0 ),
        .Q(\current_rd_data_reg[15] [8]));
  FDCE #(
    .INIT(1'b0)) 
    \current_rd_buffer_reg[0][9] 
       (.C(clk_i),
        .CE(\next_rd_buffer[0]_2 ),
        .CLR(\current_nop_boot_count[14]_i_3_n_0 ),
        .D(\current_rd_buffer[0][9]_i_1_n_0 ),
        .Q(\current_rd_data_reg[15] [9]));
  FDCE #(
    .INIT(1'b0)) 
    \current_rd_buffer_reg[1][0] 
       (.C(clk_i),
        .CE(\next_rd_buffer[1]_1 ),
        .CLR(\current_nop_boot_count[14]_i_3_n_0 ),
        .D(\current_rd_buffer[1][0]_i_1_n_0 ),
        .Q(\current_rd_data_reg[15]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \current_rd_buffer_reg[1][10] 
       (.C(clk_i),
        .CE(\next_rd_buffer[1]_1 ),
        .CLR(\current_nop_boot_count[14]_i_3_n_0 ),
        .D(\current_rd_buffer[1][10]_i_1_n_0 ),
        .Q(\current_rd_data_reg[15]_0 [10]));
  FDCE #(
    .INIT(1'b0)) 
    \current_rd_buffer_reg[1][11] 
       (.C(clk_i),
        .CE(\next_rd_buffer[1]_1 ),
        .CLR(\current_nop_boot_count[14]_i_3_n_0 ),
        .D(\current_rd_buffer[1][11]_i_1_n_0 ),
        .Q(\current_rd_data_reg[15]_0 [11]));
  FDCE #(
    .INIT(1'b0)) 
    \current_rd_buffer_reg[1][12] 
       (.C(clk_i),
        .CE(\next_rd_buffer[1]_1 ),
        .CLR(\current_nop_boot_count[14]_i_3_n_0 ),
        .D(\current_rd_buffer[1][12]_i_1_n_0 ),
        .Q(\current_rd_data_reg[15]_0 [12]));
  FDCE #(
    .INIT(1'b0)) 
    \current_rd_buffer_reg[1][13] 
       (.C(clk_i),
        .CE(\next_rd_buffer[1]_1 ),
        .CLR(\current_nop_boot_count[14]_i_3_n_0 ),
        .D(\current_rd_buffer[1][13]_i_1_n_0 ),
        .Q(\current_rd_data_reg[15]_0 [13]));
  FDCE #(
    .INIT(1'b0)) 
    \current_rd_buffer_reg[1][14] 
       (.C(clk_i),
        .CE(\next_rd_buffer[1]_1 ),
        .CLR(\current_nop_boot_count[14]_i_3_n_0 ),
        .D(\current_rd_buffer[1][14]_i_1_n_0 ),
        .Q(\current_rd_data_reg[15]_0 [14]));
  FDCE #(
    .INIT(1'b0)) 
    \current_rd_buffer_reg[1][15] 
       (.C(clk_i),
        .CE(\next_rd_buffer[1]_1 ),
        .CLR(\current_nop_boot_count[14]_i_3_n_0 ),
        .D(\current_rd_buffer[1][15]_i_2_n_0 ),
        .Q(\current_rd_data_reg[15]_0 [15]));
  FDCE #(
    .INIT(1'b0)) 
    \current_rd_buffer_reg[1][1] 
       (.C(clk_i),
        .CE(\next_rd_buffer[1]_1 ),
        .CLR(\current_nop_boot_count[14]_i_3_n_0 ),
        .D(\current_rd_buffer[1][1]_i_1_n_0 ),
        .Q(\current_rd_data_reg[15]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \current_rd_buffer_reg[1][2] 
       (.C(clk_i),
        .CE(\next_rd_buffer[1]_1 ),
        .CLR(\current_nop_boot_count[14]_i_3_n_0 ),
        .D(\current_rd_buffer[1][2]_i_1_n_0 ),
        .Q(\current_rd_data_reg[15]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \current_rd_buffer_reg[1][3] 
       (.C(clk_i),
        .CE(\next_rd_buffer[1]_1 ),
        .CLR(\current_nop_boot_count[14]_i_3_n_0 ),
        .D(\current_rd_buffer[1][3]_i_1_n_0 ),
        .Q(\current_rd_data_reg[15]_0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \current_rd_buffer_reg[1][4] 
       (.C(clk_i),
        .CE(\next_rd_buffer[1]_1 ),
        .CLR(\current_nop_boot_count[14]_i_3_n_0 ),
        .D(\current_rd_buffer[1][4]_i_1_n_0 ),
        .Q(\current_rd_data_reg[15]_0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \current_rd_buffer_reg[1][5] 
       (.C(clk_i),
        .CE(\next_rd_buffer[1]_1 ),
        .CLR(\current_nop_boot_count[14]_i_3_n_0 ),
        .D(\current_rd_buffer[1][5]_i_1_n_0 ),
        .Q(\current_rd_data_reg[15]_0 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \current_rd_buffer_reg[1][6] 
       (.C(clk_i),
        .CE(\next_rd_buffer[1]_1 ),
        .CLR(\current_nop_boot_count[14]_i_3_n_0 ),
        .D(\current_rd_buffer[1][6]_i_1_n_0 ),
        .Q(\current_rd_data_reg[15]_0 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \current_rd_buffer_reg[1][7] 
       (.C(clk_i),
        .CE(\next_rd_buffer[1]_1 ),
        .CLR(\current_nop_boot_count[14]_i_3_n_0 ),
        .D(\current_rd_buffer[1][7]_i_1_n_0 ),
        .Q(\current_rd_data_reg[15]_0 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \current_rd_buffer_reg[1][8] 
       (.C(clk_i),
        .CE(\next_rd_buffer[1]_1 ),
        .CLR(\current_nop_boot_count[14]_i_3_n_0 ),
        .D(\current_rd_buffer[1][8]_i_1_n_0 ),
        .Q(\current_rd_data_reg[15]_0 [8]));
  FDCE #(
    .INIT(1'b0)) 
    \current_rd_buffer_reg[1][9] 
       (.C(clk_i),
        .CE(\next_rd_buffer[1]_1 ),
        .CLR(\current_nop_boot_count[14]_i_3_n_0 ),
        .D(\current_rd_buffer[1][9]_i_1_n_0 ),
        .Q(\current_rd_data_reg[15]_0 [9]));
  FDCE #(
    .INIT(1'b0)) 
    \current_rd_buffer_reg[2][0] 
       (.C(clk_i),
        .CE(\next_rd_buffer[2]_0 ),
        .CLR(\current_nop_boot_count[14]_i_3_n_0 ),
        .D(\current_rd_buffer[2][0]_i_1_n_0 ),
        .Q(\current_rd_data_reg[15]_1 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \current_rd_buffer_reg[2][10] 
       (.C(clk_i),
        .CE(\next_rd_buffer[2]_0 ),
        .CLR(\current_nop_boot_count[14]_i_3_n_0 ),
        .D(\current_rd_buffer[2][10]_i_1_n_0 ),
        .Q(\current_rd_data_reg[15]_1 [10]));
  FDCE #(
    .INIT(1'b0)) 
    \current_rd_buffer_reg[2][11] 
       (.C(clk_i),
        .CE(\next_rd_buffer[2]_0 ),
        .CLR(\current_nop_boot_count[14]_i_3_n_0 ),
        .D(\current_rd_buffer[2][11]_i_1_n_0 ),
        .Q(\current_rd_data_reg[15]_1 [11]));
  FDCE #(
    .INIT(1'b0)) 
    \current_rd_buffer_reg[2][12] 
       (.C(clk_i),
        .CE(\next_rd_buffer[2]_0 ),
        .CLR(\current_nop_boot_count[14]_i_3_n_0 ),
        .D(\current_rd_buffer[2][12]_i_1_n_0 ),
        .Q(\current_rd_data_reg[15]_1 [12]));
  FDCE #(
    .INIT(1'b0)) 
    \current_rd_buffer_reg[2][13] 
       (.C(clk_i),
        .CE(\next_rd_buffer[2]_0 ),
        .CLR(\current_nop_boot_count[14]_i_3_n_0 ),
        .D(\current_rd_buffer[2][13]_i_1_n_0 ),
        .Q(\current_rd_data_reg[15]_1 [13]));
  FDCE #(
    .INIT(1'b0)) 
    \current_rd_buffer_reg[2][14] 
       (.C(clk_i),
        .CE(\next_rd_buffer[2]_0 ),
        .CLR(\current_nop_boot_count[14]_i_3_n_0 ),
        .D(\current_rd_buffer[2][14]_i_1_n_0 ),
        .Q(\current_rd_data_reg[15]_1 [14]));
  FDCE #(
    .INIT(1'b0)) 
    \current_rd_buffer_reg[2][15] 
       (.C(clk_i),
        .CE(\next_rd_buffer[2]_0 ),
        .CLR(\current_nop_boot_count[14]_i_3_n_0 ),
        .D(\current_rd_buffer[2][15]_i_2_n_0 ),
        .Q(\current_rd_data_reg[15]_1 [15]));
  FDCE #(
    .INIT(1'b0)) 
    \current_rd_buffer_reg[2][1] 
       (.C(clk_i),
        .CE(\next_rd_buffer[2]_0 ),
        .CLR(\current_nop_boot_count[14]_i_3_n_0 ),
        .D(\current_rd_buffer[2][1]_i_1_n_0 ),
        .Q(\current_rd_data_reg[15]_1 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \current_rd_buffer_reg[2][2] 
       (.C(clk_i),
        .CE(\next_rd_buffer[2]_0 ),
        .CLR(\current_nop_boot_count[14]_i_3_n_0 ),
        .D(\current_rd_buffer[2][2]_i_1_n_0 ),
        .Q(\current_rd_data_reg[15]_1 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \current_rd_buffer_reg[2][3] 
       (.C(clk_i),
        .CE(\next_rd_buffer[2]_0 ),
        .CLR(\current_nop_boot_count[14]_i_3_n_0 ),
        .D(\current_rd_buffer[2][3]_i_1_n_0 ),
        .Q(\current_rd_data_reg[15]_1 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \current_rd_buffer_reg[2][4] 
       (.C(clk_i),
        .CE(\next_rd_buffer[2]_0 ),
        .CLR(\current_nop_boot_count[14]_i_3_n_0 ),
        .D(\current_rd_buffer[2][4]_i_1_n_0 ),
        .Q(\current_rd_data_reg[15]_1 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \current_rd_buffer_reg[2][5] 
       (.C(clk_i),
        .CE(\next_rd_buffer[2]_0 ),
        .CLR(\current_nop_boot_count[14]_i_3_n_0 ),
        .D(\current_rd_buffer[2][5]_i_1_n_0 ),
        .Q(\current_rd_data_reg[15]_1 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \current_rd_buffer_reg[2][6] 
       (.C(clk_i),
        .CE(\next_rd_buffer[2]_0 ),
        .CLR(\current_nop_boot_count[14]_i_3_n_0 ),
        .D(\current_rd_buffer[2][6]_i_1_n_0 ),
        .Q(\current_rd_data_reg[15]_1 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \current_rd_buffer_reg[2][7] 
       (.C(clk_i),
        .CE(\next_rd_buffer[2]_0 ),
        .CLR(\current_nop_boot_count[14]_i_3_n_0 ),
        .D(\current_rd_buffer[2][7]_i_1_n_0 ),
        .Q(\current_rd_data_reg[15]_1 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \current_rd_buffer_reg[2][8] 
       (.C(clk_i),
        .CE(\next_rd_buffer[2]_0 ),
        .CLR(\current_nop_boot_count[14]_i_3_n_0 ),
        .D(\current_rd_buffer[2][8]_i_1_n_0 ),
        .Q(\current_rd_data_reg[15]_1 [8]));
  FDCE #(
    .INIT(1'b0)) 
    \current_rd_buffer_reg[2][9] 
       (.C(clk_i),
        .CE(\next_rd_buffer[2]_0 ),
        .CLR(\current_nop_boot_count[14]_i_3_n_0 ),
        .D(\current_rd_buffer[2][9]_i_1_n_0 ),
        .Q(\current_rd_data_reg[15]_1 [9]));
  LUT6 #(
    .INIT(64'h2F222F2F20222020)) 
    current_rd_grnt_i_1
       (.I0(current_rd_grnt_i_2_n_0),
        .I1(current_wr_grnt_i_3_n_0),
        .I2(current_wr_grnt_i_4_n_0),
        .I3(current_wr_grnt_i_5_n_0),
        .I4(current_wr_grnt_i_6_n_0),
        .I5(rd_grnt_int),
        .O(current_rd_grnt_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT4 #(
    .INIT(16'h88B8)) 
    current_rd_grnt_i_2
       (.I0(scrub_rd_req_o),
        .I1(scrubbing_o),
        .I2(rd_req_i),
        .I3(healing_o),
        .O(current_rd_grnt_i_2_n_0));
  FDCE #(
    .INIT(1'b0)) 
    current_rd_grnt_reg
       (.C(clk_i),
        .CE(1'b1),
        .CLR(\current_nop_boot_count[14]_i_3_n_0 ),
        .D(current_rd_grnt_i_1_n_0),
        .Q(rd_grnt_int));
  LUT6 #(
    .INIT(64'hAAAAABFFAAAAA800)) 
    current_rd_op_done_i_1
       (.I0(current_rd_op_done_i_2_n_0),
        .I1(current_state[2]),
        .I2(current_rd_op_done_i_3_n_0),
        .I3(current_rd_op_done_i_4_n_0),
        .I4(current_rd_op_done_i_5_n_0),
        .I5(rd_done_int),
        .O(current_rd_op_done_i_1_n_0));
  LUT6 #(
    .INIT(64'h0C0C0C0C5D0CFF0C)) 
    current_rd_op_done_i_10
       (.I0(current_state[16]),
        .I1(\current_cas_rd_count[1]_i_12_n_0 ),
        .I2(\current_rd_buffer[0][15]_i_4_n_0 ),
        .I3(\ctrl_state_o[16]_INST_0_i_1_n_0 ),
        .I4(current_state[15]),
        .I5(current_state[14]),
        .O(current_rd_op_done_i_10_n_0));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    current_rd_op_done_i_11
       (.I0(\current_state[12]_i_6_n_0 ),
        .I1(current_state[20]),
        .I2(current_state[19]),
        .I3(\current_state[2]_i_6_n_0 ),
        .I4(current_mem_ready_i_3_n_0),
        .I5(current_mem_ready_i_4_n_0),
        .O(current_rd_op_done_i_11_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFEFEFE)) 
    current_rd_op_done_i_12
       (.I0(current_state[21]),
        .I1(current_state[23]),
        .I2(current_state[22]),
        .I3(current_state[26]),
        .I4(current_state[25]),
        .I5(current_state[24]),
        .O(current_rd_op_done_i_12_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFFFC)) 
    current_rd_op_done_i_13
       (.I0(current_state[22]),
        .I1(current_state[25]),
        .I2(current_state[26]),
        .I3(current_state[24]),
        .I4(current_state[23]),
        .I5(current_state[21]),
        .O(current_rd_op_done_i_13_n_0));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    current_rd_op_done_i_2
       (.I0(\current_cas_rd_count[1]_i_7_n_0 ),
        .I1(current_rd_op_done_i_6_n_0),
        .I2(current_state[1]),
        .I3(current_state[26]),
        .I4(current_state[25]),
        .I5(current_rd_op_done_i_7_n_0),
        .O(current_rd_op_done_i_2_n_0));
  LUT6 #(
    .INIT(64'h0040444455555555)) 
    current_rd_op_done_i_3
       (.I0(current_rd_op_done_i_8_n_0),
        .I1(\current_nop_boot_count[14]_i_12_n_0 ),
        .I2(current_rd_op_done_i_9_n_0),
        .I3(current_rd_op_done_i_10_n_0),
        .I4(current_wr_op_done_i_5_n_0),
        .I5(current_wr_op_done_i_2_n_0),
        .O(current_rd_op_done_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT5 #(
    .INIT(32'hFFFEFFFF)) 
    current_rd_op_done_i_4
       (.I0(current_state[4]),
        .I1(current_state[5]),
        .I2(current_state[6]),
        .I3(current_state[7]),
        .I4(\current_nop_boot_count[14]_i_13_n_0 ),
        .O(current_rd_op_done_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT5 #(
    .INIT(32'hFFF6F6F6)) 
    current_rd_op_done_i_5
       (.I0(current_state[1]),
        .I1(current_rd_op_done_i_11_n_0),
        .I2(current_state[0]),
        .I3(current_state[3]),
        .I4(current_state[2]),
        .O(current_rd_op_done_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    current_rd_op_done_i_6
       (.I0(current_state[19]),
        .I1(current_state[18]),
        .I2(current_state[17]),
        .I3(current_state[16]),
        .O(current_rd_op_done_i_6_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFEFFFF)) 
    current_rd_op_done_i_7
       (.I0(current_state[20]),
        .I1(current_state[22]),
        .I2(current_state[23]),
        .I3(current_state[24]),
        .I4(current_state[21]),
        .I5(current_state[14]),
        .O(current_rd_op_done_i_7_n_0));
  LUT6 #(
    .INIT(64'h0000000000000444)) 
    current_rd_op_done_i_8
       (.I0(current_state[7]),
        .I1(\current_nop_boot_count[14]_i_13_n_0 ),
        .I2(current_state[4]),
        .I3(current_state[5]),
        .I4(current_state[3]),
        .I5(current_state[6]),
        .O(current_rd_op_done_i_8_n_0));
  LUT6 #(
    .INIT(64'hFFFFFEEEAAAAAAAA)) 
    current_rd_op_done_i_9
       (.I0(current_wr_op_done_i_9_n_0),
        .I1(current_state[20]),
        .I2(current_rd_op_done_i_12_n_0),
        .I3(current_rd_op_done_i_13_n_0),
        .I4(\ctrl_state_o[20]_INST_0_i_1_n_0 ),
        .I5(\current_nop_boot_count[14]_i_17_n_0 ),
        .O(current_rd_op_done_i_9_n_0));
  FDCE #(
    .INIT(1'b0)) 
    current_rd_op_done_reg
       (.C(clk_i),
        .CE(1'b1),
        .CLR(\current_nop_boot_count[14]_i_3_n_0 ),
        .D(current_rd_op_done_i_1_n_0),
        .Q(rd_done_int));
  LUT6 #(
    .INIT(64'hFFFFFFF8000000F8)) 
    current_rd_tmr_vote_i_1
       (.I0(current_state[11]),
        .I1(\current_state[16]_i_5_n_0 ),
        .I2(\current_state[16]_i_3_n_0 ),
        .I3(\current_state[16]_i_4_n_0 ),
        .I4(current_rd_tmr_vote_i_2_n_0),
        .I5(rd_tmr_vote_o),
        .O(current_rd_tmr_vote_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFDFDFF0FFDFDF)) 
    current_rd_tmr_vote_i_2
       (.I0(current_we_i_3_n_0),
        .I1(current_rd_tmr_vote_i_3_n_0),
        .I2(current_state[11]),
        .I3(current_act_to_rw_count),
        .I4(current_state[13]),
        .I5(\current_address_bus[13]_i_4_n_0 ),
        .O(current_rd_tmr_vote_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    current_rd_tmr_vote_i_3
       (.I0(current_pending_refresh),
        .I1(\current_address_bus[7]_i_4_n_0 ),
        .O(current_rd_tmr_vote_i_3_n_0));
  FDPE #(
    .INIT(1'b1)) 
    current_rd_tmr_vote_reg
       (.C(clk_i),
        .CE(1'b1),
        .D(current_rd_tmr_vote_i_1_n_0),
        .PRE(\current_nop_boot_count[14]_i_3_n_0 ),
        .Q(rd_tmr_vote_o));
  (* SOFT_HLUTNM = "soft_lutpair146" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \current_ref_cmd_count[0]_i_1 
       (.I0(current_ref_cmd_count[0]),
        .O(\current_ref_cmd_count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair146" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \current_ref_cmd_count[1]_i_1 
       (.I0(current_ref_cmd_count[1]),
        .I1(current_ref_cmd_count[0]),
        .O(\current_ref_cmd_count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT4 #(
    .INIT(16'h4AAA)) 
    \current_ref_cmd_count[2]_i_1 
       (.I0(current_ref_cmd_count[2]),
        .I1(current_ref_cmd_count[3]),
        .I2(current_ref_cmd_count[1]),
        .I3(current_ref_cmd_count[0]),
        .O(\current_ref_cmd_count[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \current_ref_cmd_count[3]_i_1 
       (.I0(current_auto_ref_count[0]),
        .I1(current_auto_ref_count[1]),
        .I2(current_auto_ref_count[2]),
        .I3(\current_ref_cmd_count[3]_i_3_n_0 ),
        .O(next_ref_cmd_count));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \current_ref_cmd_count[3]_i_2 
       (.I0(current_ref_cmd_count[3]),
        .I1(current_ref_cmd_count[2]),
        .I2(current_ref_cmd_count[1]),
        .I3(current_ref_cmd_count[0]),
        .O(\current_ref_cmd_count[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFEFFFFFFFFFFFFF)) 
    \current_ref_cmd_count[3]_i_3 
       (.I0(\current_state[0]_i_4_n_0 ),
        .I1(\current_ref_cmd_count[3]_i_4_n_0 ),
        .I2(\ctrl_state_o[8]_INST_0_i_2_n_0 ),
        .I3(\current_ref_cmd_count[3]_i_5_n_0 ),
        .I4(current_state[5]),
        .I5(current_cke_i_10_n_0),
        .O(\current_ref_cmd_count[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \current_ref_cmd_count[3]_i_4 
       (.I0(current_state[4]),
        .I1(current_state[3]),
        .I2(current_state[2]),
        .O(\current_ref_cmd_count[3]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair149" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \current_ref_cmd_count[3]_i_5 
       (.I0(current_state[1]),
        .I1(current_state[0]),
        .O(\current_ref_cmd_count[3]_i_5_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \current_ref_cmd_count_reg[0] 
       (.C(clk_i),
        .CE(next_ref_cmd_count),
        .CLR(\current_nop_boot_count[14]_i_3_n_0 ),
        .D(\current_ref_cmd_count[0]_i_1_n_0 ),
        .Q(current_ref_cmd_count[0]));
  FDCE #(
    .INIT(1'b0)) 
    \current_ref_cmd_count_reg[1] 
       (.C(clk_i),
        .CE(next_ref_cmd_count),
        .CLR(\current_nop_boot_count[14]_i_3_n_0 ),
        .D(\current_ref_cmd_count[1]_i_1_n_0 ),
        .Q(current_ref_cmd_count[1]));
  FDCE #(
    .INIT(1'b0)) 
    \current_ref_cmd_count_reg[2] 
       (.C(clk_i),
        .CE(next_ref_cmd_count),
        .CLR(\current_nop_boot_count[14]_i_3_n_0 ),
        .D(\current_ref_cmd_count[2]_i_1_n_0 ),
        .Q(current_ref_cmd_count[2]));
  FDCE #(
    .INIT(1'b0)) 
    \current_ref_cmd_count_reg[3] 
       (.C(clk_i),
        .CE(next_ref_cmd_count),
        .CLR(\current_nop_boot_count[14]_i_3_n_0 ),
        .D(\current_ref_cmd_count[3]_i_2_n_0 ),
        .Q(current_ref_cmd_count[3]));
  LUT5 #(
    .INIT(32'hFF00CACA)) 
    \current_rw_addr[0]_i_1 
       (.I0(rw_addr_i[22]),
        .I1(scrubbing_addr_o[0]),
        .I2(scrubbing_o),
        .I3(healing_addr_o[0]),
        .I4(healing_o),
        .O(rw_addr_int[0]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \current_rw_addr[10]_i_1 
       (.I0(healing_addr_o[10]),
        .I1(healing_o),
        .I2(scrubbing_addr_o[10]),
        .I3(scrubbing_o),
        .I4(rw_addr_i[8]),
        .O(p_0_in2_in[1]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \current_rw_addr[11]_i_1 
       (.I0(healing_addr_o[11]),
        .I1(healing_o),
        .I2(scrubbing_addr_o[11]),
        .I3(scrubbing_o),
        .I4(rw_addr_i[9]),
        .O(p_0_in2_in[2]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \current_rw_addr[12]_i_1 
       (.I0(healing_addr_o[12]),
        .I1(healing_o),
        .I2(scrubbing_addr_o[12]),
        .I3(scrubbing_o),
        .I4(rw_addr_i[10]),
        .O(p_0_in2_in[3]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \current_rw_addr[13]_i_1 
       (.I0(healing_addr_o[13]),
        .I1(healing_o),
        .I2(scrubbing_addr_o[13]),
        .I3(scrubbing_o),
        .I4(rw_addr_i[11]),
        .O(p_0_in2_in[4]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \current_rw_addr[14]_i_1 
       (.I0(healing_addr_o[14]),
        .I1(healing_o),
        .I2(scrubbing_addr_o[14]),
        .I3(scrubbing_o),
        .I4(rw_addr_i[12]),
        .O(p_0_in2_in[5]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \current_rw_addr[15]_i_1 
       (.I0(healing_addr_o[15]),
        .I1(healing_o),
        .I2(scrubbing_addr_o[15]),
        .I3(scrubbing_o),
        .I4(rw_addr_i[13]),
        .O(p_0_in2_in[6]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \current_rw_addr[16]_i_1 
       (.I0(healing_addr_o[16]),
        .I1(healing_o),
        .I2(scrubbing_addr_o[16]),
        .I3(scrubbing_o),
        .I4(rw_addr_i[14]),
        .O(p_0_in2_in[7]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \current_rw_addr[17]_i_1 
       (.I0(healing_addr_o[17]),
        .I1(healing_o),
        .I2(scrubbing_addr_o[17]),
        .I3(scrubbing_o),
        .I4(rw_addr_i[15]),
        .O(p_0_in2_in[8]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \current_rw_addr[18]_i_1 
       (.I0(healing_addr_o[18]),
        .I1(healing_o),
        .I2(scrubbing_addr_o[18]),
        .I3(scrubbing_o),
        .I4(rw_addr_i[16]),
        .O(p_0_in2_in[9]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \current_rw_addr[19]_i_1 
       (.I0(healing_addr_o[19]),
        .I1(healing_o),
        .I2(scrubbing_addr_o[19]),
        .I3(scrubbing_o),
        .I4(rw_addr_i[17]),
        .O(p_0_in2_in[10]));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \current_rw_addr[1]_i_1 
       (.I0(scrubbing_addr_o[1]),
        .I1(scrubbing_o),
        .I2(rw_addr_i[22]),
        .I3(healing_addr_o[1]),
        .I4(healing_o),
        .O(rw_addr_int[1]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \current_rw_addr[20]_i_1 
       (.I0(healing_addr_o[20]),
        .I1(healing_o),
        .I2(scrubbing_addr_o[20]),
        .I3(scrubbing_o),
        .I4(rw_addr_i[18]),
        .O(p_0_in2_in[11]));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \current_rw_addr[21]_i_1 
       (.I0(scrubbing_addr_o[21]),
        .I1(scrubbing_o),
        .I2(rw_addr_i[19]),
        .I3(healing_addr_o[21]),
        .I4(healing_o),
        .O(p_0_in2_in[12]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \current_rw_addr[22]_i_1 
       (.I0(healing_addr_o[22]),
        .I1(healing_o),
        .I2(scrubbing_addr_o[22]),
        .I3(scrubbing_o),
        .I4(rw_addr_i[20]),
        .O(rw_addr_int[22]));
  LUT5 #(
    .INIT(32'h20000000)) 
    \current_rw_addr[23]_i_1 
       (.I0(\current_rw_addr[23]_i_3_n_0 ),
        .I1(current_pending_refresh),
        .I2(current_mem_ready_i_3_n_0),
        .I3(current_state[11]),
        .I4(\current_rw_addr[23]_i_4_n_0 ),
        .O(next_rw_addr));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \current_rw_addr[23]_i_2 
       (.I0(healing_addr_o[23]),
        .I1(healing_o),
        .I2(scrubbing_addr_o[23]),
        .I3(scrubbing_o),
        .I4(rw_addr_i[21]),
        .O(rw_addr_int[23]));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    \current_rw_addr[23]_i_3 
       (.I0(\current_state[4]_i_2_n_0 ),
        .I1(\current_state[4]_i_3_n_0 ),
        .I2(current_state[9]),
        .I3(current_state[8]),
        .I4(current_state[10]),
        .I5(current_state[0]),
        .O(\current_rw_addr[23]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFCFCAC0C0CFCA)) 
    \current_rw_addr[23]_i_4 
       (.I0(wr_req_i),
        .I1(healing_wr_req_o),
        .I2(healing_o),
        .I3(rd_req_i),
        .I4(scrubbing_o),
        .I5(scrub_rd_req_o),
        .O(\current_rw_addr[23]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \current_rw_addr[2]_i_1 
       (.I0(healing_addr_o[2]),
        .I1(healing_o),
        .I2(scrubbing_addr_o[2]),
        .I3(scrubbing_o),
        .I4(rw_addr_i[0]),
        .O(\current_rw_addr[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \current_rw_addr[3]_i_1 
       (.I0(healing_addr_o[3]),
        .I1(healing_o),
        .I2(scrubbing_addr_o[3]),
        .I3(scrubbing_o),
        .I4(rw_addr_i[1]),
        .O(\current_rw_addr[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \current_rw_addr[4]_i_1 
       (.I0(healing_addr_o[4]),
        .I1(healing_o),
        .I2(scrubbing_addr_o[4]),
        .I3(scrubbing_o),
        .I4(rw_addr_i[2]),
        .O(\current_rw_addr[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \current_rw_addr[5]_i_1 
       (.I0(healing_addr_o[5]),
        .I1(healing_o),
        .I2(scrubbing_addr_o[5]),
        .I3(scrubbing_o),
        .I4(rw_addr_i[3]),
        .O(\current_rw_addr[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \current_rw_addr[6]_i_1 
       (.I0(healing_addr_o[6]),
        .I1(healing_o),
        .I2(scrubbing_addr_o[6]),
        .I3(scrubbing_o),
        .I4(rw_addr_i[4]),
        .O(\current_rw_addr[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \current_rw_addr[7]_i_1 
       (.I0(healing_addr_o[7]),
        .I1(healing_o),
        .I2(scrubbing_addr_o[7]),
        .I3(scrubbing_o),
        .I4(rw_addr_i[5]),
        .O(\current_rw_addr[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \current_rw_addr[8]_i_1 
       (.I0(healing_addr_o[8]),
        .I1(healing_o),
        .I2(scrubbing_addr_o[8]),
        .I3(scrubbing_o),
        .I4(rw_addr_i[6]),
        .O(\current_rw_addr[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \current_rw_addr[9]_i_1 
       (.I0(healing_addr_o[9]),
        .I1(healing_o),
        .I2(scrubbing_addr_o[9]),
        .I3(scrubbing_o),
        .I4(rw_addr_i[7]),
        .O(p_0_in2_in[0]));
  FDCE #(
    .INIT(1'b0)) 
    \current_rw_addr_reg[0] 
       (.C(clk_i),
        .CE(next_rw_addr),
        .CLR(\current_nop_boot_count[14]_i_3_n_0 ),
        .D(rw_addr_int[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \current_rw_addr_reg[10] 
       (.C(clk_i),
        .CE(next_rw_addr),
        .CLR(\current_nop_boot_count[14]_i_3_n_0 ),
        .D(p_0_in2_in[1]),
        .Q(Q[10]));
  FDCE #(
    .INIT(1'b0)) 
    \current_rw_addr_reg[11] 
       (.C(clk_i),
        .CE(next_rw_addr),
        .CLR(\current_nop_boot_count[14]_i_3_n_0 ),
        .D(p_0_in2_in[2]),
        .Q(Q[11]));
  FDCE #(
    .INIT(1'b0)) 
    \current_rw_addr_reg[12] 
       (.C(clk_i),
        .CE(next_rw_addr),
        .CLR(\current_nop_boot_count[14]_i_3_n_0 ),
        .D(p_0_in2_in[3]),
        .Q(Q[12]));
  FDCE #(
    .INIT(1'b0)) 
    \current_rw_addr_reg[13] 
       (.C(clk_i),
        .CE(next_rw_addr),
        .CLR(\current_nop_boot_count[14]_i_3_n_0 ),
        .D(p_0_in2_in[4]),
        .Q(Q[13]));
  FDCE #(
    .INIT(1'b0)) 
    \current_rw_addr_reg[14] 
       (.C(clk_i),
        .CE(next_rw_addr),
        .CLR(\current_nop_boot_count[14]_i_3_n_0 ),
        .D(p_0_in2_in[5]),
        .Q(Q[14]));
  FDCE #(
    .INIT(1'b0)) 
    \current_rw_addr_reg[15] 
       (.C(clk_i),
        .CE(next_rw_addr),
        .CLR(\current_nop_boot_count[14]_i_3_n_0 ),
        .D(p_0_in2_in[6]),
        .Q(Q[15]));
  FDCE #(
    .INIT(1'b0)) 
    \current_rw_addr_reg[16] 
       (.C(clk_i),
        .CE(next_rw_addr),
        .CLR(\current_nop_boot_count[14]_i_3_n_0 ),
        .D(p_0_in2_in[7]),
        .Q(Q[16]));
  FDCE #(
    .INIT(1'b0)) 
    \current_rw_addr_reg[17] 
       (.C(clk_i),
        .CE(next_rw_addr),
        .CLR(\current_nop_boot_count[14]_i_3_n_0 ),
        .D(p_0_in2_in[8]),
        .Q(Q[17]));
  FDCE #(
    .INIT(1'b0)) 
    \current_rw_addr_reg[18] 
       (.C(clk_i),
        .CE(next_rw_addr),
        .CLR(\current_nop_boot_count[14]_i_3_n_0 ),
        .D(p_0_in2_in[9]),
        .Q(Q[18]));
  FDCE #(
    .INIT(1'b0)) 
    \current_rw_addr_reg[19] 
       (.C(clk_i),
        .CE(next_rw_addr),
        .CLR(\current_nop_boot_count[14]_i_3_n_0 ),
        .D(p_0_in2_in[10]),
        .Q(Q[19]));
  FDCE #(
    .INIT(1'b0)) 
    \current_rw_addr_reg[1] 
       (.C(clk_i),
        .CE(next_rw_addr),
        .CLR(\current_nop_boot_count[14]_i_3_n_0 ),
        .D(rw_addr_int[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \current_rw_addr_reg[20] 
       (.C(clk_i),
        .CE(next_rw_addr),
        .CLR(\current_nop_boot_count[14]_i_3_n_0 ),
        .D(p_0_in2_in[11]),
        .Q(Q[20]));
  FDCE #(
    .INIT(1'b0)) 
    \current_rw_addr_reg[21] 
       (.C(clk_i),
        .CE(next_rw_addr),
        .CLR(\current_nop_boot_count[14]_i_3_n_0 ),
        .D(p_0_in2_in[12]),
        .Q(Q[21]));
  FDCE #(
    .INIT(1'b0)) 
    \current_rw_addr_reg[22] 
       (.C(clk_i),
        .CE(next_rw_addr),
        .CLR(\current_nop_boot_count[14]_i_3_n_0 ),
        .D(rw_addr_int[22]),
        .Q(Q[22]));
  FDCE #(
    .INIT(1'b0)) 
    \current_rw_addr_reg[23] 
       (.C(clk_i),
        .CE(next_rw_addr),
        .CLR(\current_nop_boot_count[14]_i_3_n_0 ),
        .D(rw_addr_int[23]),
        .Q(Q[23]));
  FDCE #(
    .INIT(1'b0)) 
    \current_rw_addr_reg[2] 
       (.C(clk_i),
        .CE(next_rw_addr),
        .CLR(\current_nop_boot_count[14]_i_3_n_0 ),
        .D(\current_rw_addr[2]_i_1_n_0 ),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \current_rw_addr_reg[3] 
       (.C(clk_i),
        .CE(next_rw_addr),
        .CLR(\current_nop_boot_count[14]_i_3_n_0 ),
        .D(\current_rw_addr[3]_i_1_n_0 ),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \current_rw_addr_reg[4] 
       (.C(clk_i),
        .CE(next_rw_addr),
        .CLR(\current_nop_boot_count[14]_i_3_n_0 ),
        .D(\current_rw_addr[4]_i_1_n_0 ),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \current_rw_addr_reg[5] 
       (.C(clk_i),
        .CE(next_rw_addr),
        .CLR(\current_nop_boot_count[14]_i_3_n_0 ),
        .D(\current_rw_addr[5]_i_1_n_0 ),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \current_rw_addr_reg[6] 
       (.C(clk_i),
        .CE(next_rw_addr),
        .CLR(\current_nop_boot_count[14]_i_3_n_0 ),
        .D(\current_rw_addr[6]_i_1_n_0 ),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \current_rw_addr_reg[7] 
       (.C(clk_i),
        .CE(next_rw_addr),
        .CLR(\current_nop_boot_count[14]_i_3_n_0 ),
        .D(\current_rw_addr[7]_i_1_n_0 ),
        .Q(Q[7]));
  FDCE #(
    .INIT(1'b0)) 
    \current_rw_addr_reg[8] 
       (.C(clk_i),
        .CE(next_rw_addr),
        .CLR(\current_nop_boot_count[14]_i_3_n_0 ),
        .D(\current_rw_addr[8]_i_1_n_0 ),
        .Q(Q[8]));
  FDCE #(
    .INIT(1'b0)) 
    \current_rw_addr_reg[9] 
       (.C(clk_i),
        .CE(next_rw_addr),
        .CLR(\current_nop_boot_count[14]_i_3_n_0 ),
        .D(p_0_in2_in[0]),
        .Q(Q[9]));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \current_state[0]_i_1 
       (.I0(\current_state[0]_i_2_n_0 ),
        .I1(\current_state[25]_i_2_n_0 ),
        .I2(\current_state[0]_i_3_n_0 ),
        .I3(current_state[26]),
        .I4(mem_ready_o),
        .I5(\current_state[0]_i_4_n_0 ),
        .O(\current_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    \current_state[0]_i_2 
       (.I0(\current_nop_boot_count[14]_i_14_n_0 ),
        .I1(current_state[1]),
        .I2(current_state[3]),
        .I3(current_state[2]),
        .I4(current_state[0]),
        .O(\current_state[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \current_state[0]_i_3 
       (.I0(current_state[24]),
        .I1(current_state[25]),
        .O(\current_state[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT5 #(
    .INIT(32'hFFFEFFFF)) 
    \current_state[0]_i_4 
       (.I0(current_state[14]),
        .I1(current_state[15]),
        .I2(current_state[12]),
        .I3(current_state[13]),
        .I4(current_ras_i_2_n_0),
        .O(\current_state[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \current_state[11]_i_1 
       (.I0(\current_state[11]_i_2_n_0 ),
        .I1(\current_state[11]_i_3_n_0 ),
        .I2(\current_state[11]_i_4_n_0 ),
        .I3(\current_state[11]_i_5_n_0 ),
        .I4(\current_state[11]_i_6_n_0 ),
        .I5(\current_state[11]_i_7_n_0 ),
        .O(\current_state[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \current_state[11]_i_10 
       (.I0(current_state[26]),
        .I1(current_state[25]),
        .I2(current_state[21]),
        .I3(current_state[14]),
        .I4(current_state[13]),
        .O(\current_state[11]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000004A)) 
    \current_state[11]_i_11 
       (.I0(current_state[14]),
        .I1(\current_address_bus[13]_i_4_n_0 ),
        .I2(current_state[13]),
        .I3(current_state[21]),
        .I4(current_state[25]),
        .I5(current_state[26]),
        .O(\current_state[11]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00F0C055)) 
    \current_state[11]_i_2 
       (.I0(\current_state[11]_i_8_n_0 ),
        .I1(\current_state[11]_i_9_n_0 ),
        .I2(\current_state[11]_i_10_n_0 ),
        .I3(current_state[6]),
        .I4(current_state[10]),
        .I5(current_state[3]),
        .O(\current_state[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \current_state[11]_i_3 
       (.I0(current_state[24]),
        .I1(current_state[0]),
        .I2(\ctrl_state_o[21]_INST_0_i_2_n_0 ),
        .I3(\ctrl_state_o[10]_INST_0_i_1_n_0 ),
        .I4(current_state[19]),
        .I5(current_state[20]),
        .O(\current_state[11]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \current_state[11]_i_4 
       (.I0(current_state[4]),
        .I1(current_state[2]),
        .I2(current_state[1]),
        .O(\current_state[11]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \current_state[11]_i_5 
       (.I0(current_state[7]),
        .I1(current_state[5]),
        .I2(current_state[9]),
        .I3(current_state[8]),
        .O(\current_state[11]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \current_state[11]_i_6 
       (.I0(current_state[17]),
        .I1(current_state[15]),
        .I2(current_state[16]),
        .I3(current_state[18]),
        .O(\current_state[11]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hA8AAAAAAAAAAAAAA)) 
    \current_state[11]_i_7 
       (.I0(current_state[3]),
        .I1(current_state[10]),
        .I2(current_state[6]),
        .I3(mem_ready_o),
        .I4(\current_address_bus[13]_i_4_n_0 ),
        .I5(\current_state[11]_i_10_n_0 ),
        .O(\current_state[11]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FDD7FDDF)) 
    \current_state[11]_i_8 
       (.I0(current_cke_i_13_n_0),
        .I1(current_state[26]),
        .I2(current_state[25]),
        .I3(current_state[21]),
        .I4(mem_ready_o),
        .I5(\current_state[11]_i_11_n_0 ),
        .O(\current_state[11]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \current_state[11]_i_9 
       (.I0(current_pending_refresh),
        .I1(mem_ready_o),
        .I2(rd_grnt_int),
        .I3(wr_grnt_int),
        .O(\current_state[11]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFF450000)) 
    \current_state[12]_i_1 
       (.I0(current_state[3]),
        .I1(\current_state[12]_i_2_n_0 ),
        .I2(\current_state[12]_i_3_n_0 ),
        .I3(\current_state[12]_i_4_n_0 ),
        .I4(\current_state[12]_i_5_n_0 ),
        .O(\current_state[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000E00000)) 
    \current_state[12]_i_2 
       (.I0(rd_grnt_int),
        .I1(wr_grnt_int),
        .I2(current_state[6]),
        .I3(current_state[11]),
        .I4(mem_ready_o),
        .I5(current_pending_refresh),
        .O(\current_state[12]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT4 #(
    .INIT(16'hFBFF)) 
    \current_state[12]_i_3 
       (.I0(current_state[6]),
        .I1(current_state[11]),
        .I2(current_pending_refresh),
        .I3(\current_address_bus[7]_i_4_n_0 ),
        .O(\current_state[12]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h1000100010000000)) 
    \current_state[12]_i_4 
       (.I0(current_state[11]),
        .I1(current_state[6]),
        .I2(mem_ready_o),
        .I3(current_state[3]),
        .I4(rd_grnt_int),
        .I5(wr_grnt_int),
        .O(\current_state[12]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    \current_state[12]_i_5 
       (.I0(\ctrl_state_o[18]_INST_0_i_1_n_0 ),
        .I1(\ctrl_state_o[4]_INST_0_i_2_n_0 ),
        .I2(current_mem_ready_i_4_n_0),
        .I3(current_state[5]),
        .I4(current_state[7]),
        .I5(\current_state[12]_i_6_n_0 ),
        .O(\current_state[12]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \current_state[12]_i_6 
       (.I0(\current_state[11]_i_6_n_0 ),
        .I1(current_state[10]),
        .I2(current_state[12]),
        .I3(current_state[13]),
        .I4(current_state[14]),
        .O(\current_state[12]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00AA00AA00AB0000)) 
    \current_state[14]_i_1 
       (.I0(\current_state[14]_i_2_n_0 ),
        .I1(\current_state[16]_i_5_n_0 ),
        .I2(\current_state[16]_i_2_n_0 ),
        .I3(\current_state[16]_i_4_n_0 ),
        .I4(current_state[11]),
        .I5(current_state[13]),
        .O(\current_state[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT4 #(
    .INIT(16'h00E0)) 
    \current_state[14]_i_2 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(rd_grnt_int),
        .I3(current_state[11]),
        .O(\current_state[14]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT4 #(
    .INIT(16'h8880)) 
    \current_state[15]_i_1 
       (.I0(\current_state[22]_i_2_n_0 ),
        .I1(current_mem_ready_i_3_n_0),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(\current_state[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00F0004400F00000)) 
    \current_state[16]_i_1 
       (.I0(\current_state[16]_i_2_n_0 ),
        .I1(current_state[11]),
        .I2(\current_state[16]_i_3_n_0 ),
        .I3(\current_state[16]_i_4_n_0 ),
        .I4(current_state[13]),
        .I5(\current_state[16]_i_5_n_0 ),
        .O(\current_state[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \current_state[16]_i_2 
       (.I0(\current_address_bus[7]_i_4_n_0 ),
        .I1(current_pending_refresh),
        .I2(current_we_i_3_n_0),
        .O(\current_state[16]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \current_state[16]_i_3 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(rd_grnt_int),
        .I3(current_state[11]),
        .O(\current_state[16]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFDFFFFFFFF)) 
    \current_state[16]_i_4 
       (.I0(\current_state[0]_i_2_n_0 ),
        .I1(current_state[9]),
        .I2(current_state[8]),
        .I3(current_state[12]),
        .I4(current_state[10]),
        .I5(\current_state[16]_i_6_n_0 ),
        .O(\current_state[16]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000022277727)) 
    \current_state[16]_i_5 
       (.I0(healing_o),
        .I1(healing_addr_o[1]),
        .I2(rw_addr_i[22]),
        .I3(scrubbing_o),
        .I4(scrubbing_addr_o[1]),
        .I5(rw_addr_int[0]),
        .O(\current_state[16]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \current_state[16]_i_6 
       (.I0(\current_state[2]_i_6_n_0 ),
        .I1(current_state[19]),
        .I2(current_state[18]),
        .I3(current_state[21]),
        .I4(current_state[20]),
        .I5(\current_state[2]_i_8_n_0 ),
        .O(\current_state[16]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    \current_state[22]_i_1 
       (.I0(\current_state[22]_i_2_n_0 ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(current_mem_ready_i_3_n_0),
        .O(\current_state[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000200000)) 
    \current_state[22]_i_2 
       (.I0(\current_state[4]_i_2_n_0 ),
        .I1(\current_state[25]_i_6_n_0 ),
        .I2(wr_grnt_int),
        .I3(rd_grnt_int),
        .I4(current_state[13]),
        .I5(\current_state[22]_i_3_n_0 ),
        .O(\current_state[22]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \current_state[22]_i_3 
       (.I0(current_state[0]),
        .I1(current_state[15]),
        .I2(current_state[11]),
        .I3(current_state[10]),
        .I4(current_state[8]),
        .I5(current_state[9]),
        .O(\current_state[22]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000220)) 
    \current_state[25]_i_1 
       (.I0(\current_state[25]_i_2_n_0 ),
        .I1(\current_state[25]_i_3_n_0 ),
        .I2(current_state[24]),
        .I3(current_state[15]),
        .I4(\current_state[25]_i_4_n_0 ),
        .I5(\current_state[25]_i_5_n_0 ),
        .O(\current_state[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \current_state[25]_i_2 
       (.I0(current_state[20]),
        .I1(current_state[21]),
        .I2(\ctrl_state_o[21]_INST_0_i_2_n_0 ),
        .I3(current_state[16]),
        .I4(current_state[17]),
        .I5(\ctrl_state_o[20]_INST_0_i_1_n_0 ),
        .O(\current_state[25]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \current_state[25]_i_3 
       (.I0(current_state[2]),
        .I1(current_state[3]),
        .O(\current_state[25]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \current_state[25]_i_4 
       (.I0(current_state[1]),
        .I1(current_state[26]),
        .I2(current_state[25]),
        .I3(current_state[13]),
        .I4(current_state[0]),
        .I5(\current_state[25]_i_6_n_0 ),
        .O(\current_state[25]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT5 #(
    .INIT(32'hFFFEFFFF)) 
    \current_state[25]_i_5 
       (.I0(current_state[4]),
        .I1(current_state[5]),
        .I2(current_state[6]),
        .I3(current_state[7]),
        .I4(current_ras_i_2_n_0),
        .O(\current_state[25]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair145" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \current_state[25]_i_6 
       (.I0(current_state[12]),
        .I1(current_state[14]),
        .O(\current_state[25]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF55545555)) 
    \current_state[26]_i_1 
       (.I0(\current_state[26]_i_3_n_0 ),
        .I1(\current_state[26]_i_4_n_0 ),
        .I2(\current_state[26]_i_5_n_0 ),
        .I3(current_state[4]),
        .I4(\current_state[26]_i_6_n_0 ),
        .I5(\current_state[26]_i_7_n_0 ),
        .O(\current_state[26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \current_state[26]_i_10 
       (.I0(\current_address_bus[14]_i_13_n_0 ),
        .I1(current_state[4]),
        .I2(current_state[3]),
        .I3(current_state[8]),
        .I4(current_state[7]),
        .I5(\ctrl_state_o[26]_INST_0_i_3_n_0 ),
        .O(\current_state[26]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \current_state[26]_i_11 
       (.I0(current_auto_ref_count[2]),
        .I1(current_auto_ref_count[1]),
        .I2(current_auto_ref_count[0]),
        .O(\current_state[26]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \current_state[26]_i_12 
       (.I0(current_state[25]),
        .I1(current_state[26]),
        .I2(current_state[24]),
        .I3(current_state[23]),
        .O(\current_state[26]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \current_state[26]_i_13 
       (.I0(current_state[14]),
        .I1(current_state[13]),
        .I2(current_cke_i_14_n_0),
        .I3(current_state[11]),
        .I4(current_state[12]),
        .O(\current_state[26]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \current_state[26]_i_14 
       (.I0(current_state[19]),
        .I1(current_state[18]),
        .I2(current_state[12]),
        .I3(current_state[11]),
        .O(\current_state[26]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFAFFFFFFF8)) 
    \current_state[26]_i_15 
       (.I0(\current_state[26]_i_20_n_0 ),
        .I1(current_act_to_rw_count),
        .I2(\current_state[26]_i_21_n_0 ),
        .I3(\ctrl_state_o[22]_INST_0_i_2_n_0 ),
        .I4(\ctrl_state_o[21]_INST_0_i_2_n_0 ),
        .I5(\current_state[2]_i_8_n_0 ),
        .O(\current_state[26]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \current_state[26]_i_16 
       (.I0(\ctrl_state_o[10]_INST_0_i_1_n_0 ),
        .I1(current_state[22]),
        .I2(current_state[21]),
        .I3(current_state[20]),
        .I4(current_state[19]),
        .I5(\current_state[11]_i_6_n_0 ),
        .O(\current_state[26]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF8FFFF)) 
    \current_state[26]_i_17 
       (.I0(current_state[25]),
        .I1(current_nop_wr_count),
        .I2(current_state[23]),
        .I3(current_state[26]),
        .I4(current_cke_i_13_n_0),
        .I5(current_state[24]),
        .O(\current_state[26]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \current_state[26]_i_18 
       (.I0(current_state[11]),
        .I1(current_state[5]),
        .I2(\current_address_bus[14]_i_7_n_0 ),
        .I3(current_state[13]),
        .I4(current_state[25]),
        .I5(current_state[14]),
        .O(\current_state[26]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \current_state[26]_i_19 
       (.I0(current_state[11]),
        .I1(\current_state[26]_i_6_n_0 ),
        .I2(current_state[14]),
        .I3(current_precharge_count),
        .I4(current_state[13]),
        .I5(current_state[25]),
        .O(\current_state[26]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFBAE)) 
    \current_state[26]_i_2 
       (.I0(\current_nop_boot_count[14]_i_4_n_0 ),
        .I1(\ctrl_state_o[3]_INST_0_i_1_n_0 ),
        .I2(\ctrl_state_o[8]_INST_0_i_3_n_0 ),
        .I3(current_state[0]),
        .I4(\current_state[26]_i_8_n_0 ),
        .I5(\current_state[26]_i_9_n_0 ),
        .O(\current_state[26]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEFEFFFE)) 
    \current_state[26]_i_20 
       (.I0(current_state[16]),
        .I1(current_state[17]),
        .I2(current_state[15]),
        .I3(current_cas_rd_count[1]),
        .I4(current_cas_rd_count[0]),
        .I5(current_state[13]),
        .O(\current_state[26]_i_20_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \current_state[26]_i_21 
       (.I0(current_state[20]),
        .I1(current_state[21]),
        .O(\current_state[26]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h0101010F01010101)) 
    \current_state[26]_i_3 
       (.I0(\current_state[26]_i_10_n_0 ),
        .I1(\ctrl_state_o[20]_INST_0_i_2_n_0 ),
        .I2(\current_state[26]_i_11_n_0 ),
        .I3(\current_state[26]_i_12_n_0 ),
        .I4(\current_address_bus[10]_i_5_n_0 ),
        .I5(\current_state[26]_i_13_n_0 ),
        .O(\current_state[26]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h7770777077700000)) 
    \current_state[26]_i_4 
       (.I0(current_cke_i_9_n_0),
        .I1(\current_address_bus[9]_i_4_n_0 ),
        .I2(\current_state[26]_i_14_n_0 ),
        .I3(\current_state[26]_i_15_n_0 ),
        .I4(\current_state[26]_i_16_n_0 ),
        .I5(\current_state[26]_i_17_n_0 ),
        .O(\current_state[26]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \current_state[26]_i_5 
       (.I0(current_state[10]),
        .I1(current_state[9]),
        .I2(current_state[8]),
        .I3(current_state[7]),
        .O(\current_state[26]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair141" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \current_state[26]_i_6 
       (.I0(current_state[3]),
        .I1(current_state[5]),
        .O(\current_state[26]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hDFDCDFDCFFFFDFDC)) 
    \current_state[26]_i_7 
       (.I0(\current_nop_boot_count[14]_i_15_n_0 ),
        .I1(\ctrl_state_o[5]_INST_0_i_1_n_0 ),
        .I2(\current_state[26]_i_18_n_0 ),
        .I3(current_state[1]),
        .I4(current_state[6]),
        .I5(\current_state[26]_i_19_n_0 ),
        .O(\current_state[26]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAAA2AAAAAAAAAAAA)) 
    \current_state[26]_i_8 
       (.I0(current_state[1]),
        .I1(\current_address_bus[9]_i_4_n_0 ),
        .I2(current_state[11]),
        .I3(current_state[10]),
        .I4(current_mem_ready_i_4_n_0),
        .I5(current_mem_ready_i_3_n_0),
        .O(\current_state[26]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \current_state[26]_i_9 
       (.I0(current_rd_op_done_i_4_n_0),
        .I1(current_state[3]),
        .I2(current_state[2]),
        .O(\current_state[26]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0002000200022222)) 
    \current_state[2]_i_1 
       (.I0(\current_state[2]_i_2_n_0 ),
        .I1(\current_state[2]_i_3_n_0 ),
        .I2(\current_state[2]_i_4_n_0 ),
        .I3(current_state[6]),
        .I4(\current_state[2]_i_5_n_0 ),
        .I5(current_state[5]),
        .O(\current_state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \current_state[2]_i_2 
       (.I0(current_state[13]),
        .I1(\current_state[2]_i_6_n_0 ),
        .I2(\current_state[2]_i_7_n_0 ),
        .I3(\current_state[2]_i_8_n_0 ),
        .I4(\ctrl_state_o[10]_INST_0_i_1_n_0 ),
        .I5(current_state[10]),
        .O(\current_state[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \current_state[2]_i_3 
       (.I0(current_state[7]),
        .I1(current_state[9]),
        .I2(current_state[8]),
        .I3(current_state[4]),
        .I4(\ctrl_state_o[4]_INST_0_i_1_n_0 ),
        .I5(\current_state[2]_i_9_n_0 ),
        .O(\current_state[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \current_state[2]_i_4 
       (.I0(current_ref_cmd_count[0]),
        .I1(current_ref_cmd_count[1]),
        .I2(current_ref_cmd_count[3]),
        .I3(current_ref_cmd_count[2]),
        .O(\current_state[2]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \current_state[2]_i_5 
       (.I0(mem_ready_o),
        .I1(current_pending_refresh),
        .O(\current_state[2]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \current_state[2]_i_6 
       (.I0(current_state[23]),
        .I1(current_state[22]),
        .I2(current_state[24]),
        .I3(current_state[25]),
        .I4(current_state[26]),
        .O(\current_state[2]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \current_state[2]_i_7 
       (.I0(current_state[19]),
        .I1(current_state[18]),
        .I2(current_state[21]),
        .I3(current_state[20]),
        .O(\current_state[2]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \current_state[2]_i_8 
       (.I0(current_state[15]),
        .I1(current_state[14]),
        .I2(current_state[17]),
        .I3(current_state[16]),
        .O(\current_state[2]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \current_state[2]_i_9 
       (.I0(current_state[0]),
        .I1(current_state[2]),
        .I2(current_state[3]),
        .I3(current_state[1]),
        .O(\current_state[2]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0000020000000000)) 
    \current_state[4]_i_1 
       (.I0(\current_state[4]_i_2_n_0 ),
        .I1(\current_state[25]_i_5_n_0 ),
        .I2(mem_ready_o),
        .I3(current_state[3]),
        .I4(\ctrl_state_o[5]_INST_0_i_1_n_0 ),
        .I5(\current_state[4]_i_3_n_0 ),
        .O(\current_state[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair149" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \current_state[4]_i_2 
       (.I0(current_cke_i_10_n_0),
        .I1(current_state[1]),
        .O(\current_state[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \current_state[4]_i_3 
       (.I0(current_state[13]),
        .I1(current_state[12]),
        .I2(current_state[15]),
        .I3(current_state[14]),
        .O(\current_state[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000006664)) 
    \current_state[6]_i_1 
       (.I0(current_state[11]),
        .I1(current_state[1]),
        .I2(\current_state[6]_i_2_n_0 ),
        .I3(current_pending_refresh),
        .I4(\current_state[6]_i_3_n_0 ),
        .I5(\current_state[6]_i_4_n_0 ),
        .O(\current_state[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000BEFFFFFF)) 
    \current_state[6]_i_2 
       (.I0(\current_state[6]_i_5_n_0 ),
        .I1(rw_addr_int[23]),
        .I2(Q[23]),
        .I3(current_rd_grnt_i_2_n_0),
        .I4(next_state319_in),
        .I5(\current_address_bus[7]_i_4_n_0 ),
        .O(\current_state[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFD)) 
    \current_state[6]_i_3 
       (.I0(\current_state[16]_i_6_n_0 ),
        .I1(current_state[10]),
        .I2(current_state[9]),
        .I3(current_state[13]),
        .I4(current_state[12]),
        .I5(\ctrl_state_o[5]_INST_0_i_2_n_0 ),
        .O(\current_state[6]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \current_state[6]_i_4 
       (.I0(current_state[4]),
        .I1(current_state[3]),
        .I2(current_state[0]),
        .I3(current_state[2]),
        .O(\current_state[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h555556A6AAAA56A6)) 
    \current_state[6]_i_5 
       (.I0(Q[22]),
        .I1(rw_addr_i[20]),
        .I2(scrubbing_o),
        .I3(scrubbing_addr_o[22]),
        .I4(healing_o),
        .I5(healing_addr_o[22]),
        .O(\current_state[6]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'h00001000)) 
    \current_state[7]_i_1 
       (.I0(current_ref_cmd_count[2]),
        .I1(current_ref_cmd_count[3]),
        .I2(current_ref_cmd_count[1]),
        .I3(current_ref_cmd_count[0]),
        .I4(\current_ref_cmd_count[3]_i_3_n_0 ),
        .O(\current_state[7]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b1)) 
    \current_state_reg[0] 
       (.C(clk_i),
        .CE(\current_state[26]_i_1_n_0 ),
        .CLR(\current_nop_boot_count[14]_i_3_n_0 ),
        .D(\current_state[0]_i_1_n_0 ),
        .Q(current_state[0]));
  FDCE #(
    .INIT(1'b0)) 
    \current_state_reg[10] 
       (.C(clk_i),
        .CE(\current_state[26]_i_1_n_0 ),
        .CLR(\current_nop_boot_count[14]_i_3_n_0 ),
        .D(ctrl_state_o[9]),
        .Q(current_state[10]));
  FDCE #(
    .INIT(1'b0)) 
    \current_state_reg[11] 
       (.C(clk_i),
        .CE(\current_state[26]_i_1_n_0 ),
        .CLR(\current_nop_boot_count[14]_i_3_n_0 ),
        .D(\current_state[11]_i_1_n_0 ),
        .Q(current_state[11]));
  FDCE #(
    .INIT(1'b0)) 
    \current_state_reg[12] 
       (.C(clk_i),
        .CE(\current_state[26]_i_1_n_0 ),
        .CLR(\current_nop_boot_count[14]_i_3_n_0 ),
        .D(\current_state[12]_i_1_n_0 ),
        .Q(current_state[12]));
  FDCE #(
    .INIT(1'b0)) 
    \current_state_reg[13] 
       (.C(clk_i),
        .CE(\current_state[26]_i_1_n_0 ),
        .CLR(\current_nop_boot_count[14]_i_3_n_0 ),
        .D(ctrl_state_o[12]),
        .Q(current_state[13]));
  FDCE #(
    .INIT(1'b0)) 
    \current_state_reg[14] 
       (.C(clk_i),
        .CE(\current_state[26]_i_1_n_0 ),
        .CLR(\current_nop_boot_count[14]_i_3_n_0 ),
        .D(\current_state[14]_i_1_n_0 ),
        .Q(current_state[14]));
  FDCE #(
    .INIT(1'b0)) 
    \current_state_reg[15] 
       (.C(clk_i),
        .CE(\current_state[26]_i_1_n_0 ),
        .CLR(\current_nop_boot_count[14]_i_3_n_0 ),
        .D(\current_state[15]_i_1_n_0 ),
        .Q(current_state[15]));
  FDCE #(
    .INIT(1'b0)) 
    \current_state_reg[16] 
       (.C(clk_i),
        .CE(\current_state[26]_i_1_n_0 ),
        .CLR(\current_nop_boot_count[14]_i_3_n_0 ),
        .D(\current_state[16]_i_1_n_0 ),
        .Q(current_state[16]));
  FDCE #(
    .INIT(1'b0)) 
    \current_state_reg[17] 
       (.C(clk_i),
        .CE(\current_state[26]_i_1_n_0 ),
        .CLR(\current_nop_boot_count[14]_i_3_n_0 ),
        .D(ctrl_state_o[16]),
        .Q(current_state[17]));
  FDCE #(
    .INIT(1'b0)) 
    \current_state_reg[18] 
       (.C(clk_i),
        .CE(\current_state[26]_i_1_n_0 ),
        .CLR(\current_nop_boot_count[14]_i_3_n_0 ),
        .D(ctrl_state_o[17]),
        .Q(current_state[18]));
  FDCE #(
    .INIT(1'b0)) 
    \current_state_reg[19] 
       (.C(clk_i),
        .CE(\current_state[26]_i_1_n_0 ),
        .CLR(\current_nop_boot_count[14]_i_3_n_0 ),
        .D(ctrl_state_o[18]),
        .Q(current_state[19]));
  FDCE #(
    .INIT(1'b0)) 
    \current_state_reg[1] 
       (.C(clk_i),
        .CE(\current_state[26]_i_1_n_0 ),
        .CLR(\current_nop_boot_count[14]_i_3_n_0 ),
        .D(ctrl_state_o[0]),
        .Q(current_state[1]));
  FDCE #(
    .INIT(1'b0)) 
    \current_state_reg[20] 
       (.C(clk_i),
        .CE(\current_state[26]_i_1_n_0 ),
        .CLR(\current_nop_boot_count[14]_i_3_n_0 ),
        .D(ctrl_state_o[19]),
        .Q(current_state[20]));
  FDCE #(
    .INIT(1'b0)) 
    \current_state_reg[21] 
       (.C(clk_i),
        .CE(\current_state[26]_i_1_n_0 ),
        .CLR(\current_nop_boot_count[14]_i_3_n_0 ),
        .D(ctrl_state_o[20]),
        .Q(current_state[21]));
  FDCE #(
    .INIT(1'b0)) 
    \current_state_reg[22] 
       (.C(clk_i),
        .CE(\current_state[26]_i_1_n_0 ),
        .CLR(\current_nop_boot_count[14]_i_3_n_0 ),
        .D(\current_state[22]_i_1_n_0 ),
        .Q(current_state[22]));
  FDCE #(
    .INIT(1'b0)) 
    \current_state_reg[23] 
       (.C(clk_i),
        .CE(\current_state[26]_i_1_n_0 ),
        .CLR(\current_nop_boot_count[14]_i_3_n_0 ),
        .D(ctrl_state_o[22]),
        .Q(current_state[23]));
  FDCE #(
    .INIT(1'b0)) 
    \current_state_reg[24] 
       (.C(clk_i),
        .CE(\current_state[26]_i_1_n_0 ),
        .CLR(\current_nop_boot_count[14]_i_3_n_0 ),
        .D(ctrl_state_o[23]),
        .Q(current_state[24]));
  FDCE #(
    .INIT(1'b0)) 
    \current_state_reg[25] 
       (.C(clk_i),
        .CE(\current_state[26]_i_1_n_0 ),
        .CLR(\current_nop_boot_count[14]_i_3_n_0 ),
        .D(\current_state[25]_i_1_n_0 ),
        .Q(current_state[25]));
  FDPE #(
    .INIT(1'b0)) 
    \current_state_reg[26] 
       (.C(clk_i),
        .CE(\current_state[26]_i_1_n_0 ),
        .D(\current_state[26]_i_2_n_0 ),
        .PRE(\current_nop_boot_count[14]_i_3_n_0 ),
        .Q(current_state[26]));
  FDCE #(
    .INIT(1'b0)) 
    \current_state_reg[2] 
       (.C(clk_i),
        .CE(\current_state[26]_i_1_n_0 ),
        .CLR(\current_nop_boot_count[14]_i_3_n_0 ),
        .D(\current_state[2]_i_1_n_0 ),
        .Q(current_state[2]));
  FDCE #(
    .INIT(1'b0)) 
    \current_state_reg[3] 
       (.C(clk_i),
        .CE(\current_state[26]_i_1_n_0 ),
        .CLR(\current_nop_boot_count[14]_i_3_n_0 ),
        .D(ctrl_state_o[3]),
        .Q(current_state[3]));
  FDCE #(
    .INIT(1'b0)) 
    \current_state_reg[4] 
       (.C(clk_i),
        .CE(\current_state[26]_i_1_n_0 ),
        .CLR(\current_nop_boot_count[14]_i_3_n_0 ),
        .D(\current_state[4]_i_1_n_0 ),
        .Q(current_state[4]));
  FDCE #(
    .INIT(1'b0)) 
    \current_state_reg[5] 
       (.C(clk_i),
        .CE(\current_state[26]_i_1_n_0 ),
        .CLR(\current_nop_boot_count[14]_i_3_n_0 ),
        .D(ctrl_state_o[5]),
        .Q(current_state[5]));
  FDCE #(
    .INIT(1'b0)) 
    \current_state_reg[6] 
       (.C(clk_i),
        .CE(\current_state[26]_i_1_n_0 ),
        .CLR(\current_nop_boot_count[14]_i_3_n_0 ),
        .D(\current_state[6]_i_1_n_0 ),
        .Q(current_state[6]));
  FDCE #(
    .INIT(1'b0)) 
    \current_state_reg[7] 
       (.C(clk_i),
        .CE(\current_state[26]_i_1_n_0 ),
        .CLR(\current_nop_boot_count[14]_i_3_n_0 ),
        .D(\current_state[7]_i_1_n_0 ),
        .Q(current_state[7]));
  FDCE #(
    .INIT(1'b0)) 
    \current_state_reg[8] 
       (.C(clk_i),
        .CE(\current_state[26]_i_1_n_0 ),
        .CLR(\current_nop_boot_count[14]_i_3_n_0 ),
        .D(ctrl_state_o[7]),
        .Q(current_state[8]));
  FDCE #(
    .INIT(1'b0)) 
    \current_state_reg[9] 
       (.C(clk_i),
        .CE(\current_state[26]_i_1_n_0 ),
        .CLR(\current_nop_boot_count[14]_i_3_n_0 ),
        .D(ctrl_state_o[8]),
        .Q(current_state[9]));
  LUT6 #(
    .INIT(64'hFFFFFFFF44445554)) 
    current_we_i_1
       (.I0(current_we_i_2_n_0),
        .I1(\current_state[6]_i_3_n_0 ),
        .I2(current_we_i_3_n_0),
        .I3(\current_address_bus[7]_i_4_n_0 ),
        .I4(current_pending_refresh),
        .I5(current_we_i_4_n_0),
        .O(next_we));
  LUT6 #(
    .INIT(64'h0001FFFF00010001)) 
    current_we_i_2
       (.I0(current_we_i_5_n_0),
        .I1(current_we_i_6_n_0),
        .I2(current_state[17]),
        .I3(\current_address_bus[1]_i_5_n_0 ),
        .I4(current_we_i_7_n_0),
        .I5(\current_state[2]_i_2_n_0 ),
        .O(current_we_i_2_n_0));
  LUT6 #(
    .INIT(64'h8008000000008008)) 
    current_we_i_3
       (.I0(next_state319_in),
        .I1(current_rd_grnt_i_2_n_0),
        .I2(Q[23]),
        .I3(rw_addr_int[23]),
        .I4(Q[22]),
        .I5(rw_addr_int[22]),
        .O(current_we_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF6)) 
    current_we_i_4
       (.I0(current_state[1]),
        .I1(current_we_i_8_n_0),
        .I2(current_state[4]),
        .I3(current_state[3]),
        .I4(current_state[0]),
        .I5(current_state[2]),
        .O(current_we_i_4_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFEBEAEBEB)) 
    current_we_i_5
       (.I0(\ctrl_state_o[22]_INST_0_i_2_n_0 ),
        .I1(current_state[23]),
        .I2(current_state[22]),
        .I3(rd_grnt_int),
        .I4(wr_grnt_int),
        .I5(current_state[21]),
        .O(current_we_i_5_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFEFE)) 
    current_we_i_6
       (.I0(current_state[9]),
        .I1(current_state[10]),
        .I2(\ctrl_state_o[10]_INST_0_i_1_n_0 ),
        .I3(current_state[13]),
        .I4(\ctrl_state_o[21]_INST_0_i_2_n_0 ),
        .I5(\ctrl_state_o[5]_INST_0_i_2_n_0 ),
        .O(current_we_i_6_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFAFFFFFFF2)) 
    current_we_i_7
       (.I0(current_state[5]),
        .I1(\current_state[2]_i_4_n_0 ),
        .I2(current_state[7]),
        .I3(current_state[6]),
        .I4(current_state[9]),
        .I5(current_state[8]),
        .O(current_we_i_7_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    current_we_i_8
       (.I0(current_state[22]),
        .I1(current_state[23]),
        .I2(current_state[8]),
        .I3(current_state[13]),
        .I4(current_state[5]),
        .I5(current_state[11]),
        .O(current_we_i_8_n_0));
  FDPE #(
    .INIT(1'b1)) 
    current_we_reg
       (.C(clk_i),
        .CE(next_cke),
        .D(next_we),
        .PRE(\current_nop_boot_count[14]_i_3_n_0 ),
        .Q(current_we));
  LUT4 #(
    .INIT(16'h00E2)) 
    \current_wr_buffer[0]_i_1 
       (.I0(wr_data_i[0]),
        .I1(healing_o),
        .I2(healing_data_o[0]),
        .I3(\current_wr_buffer[15]_i_5_n_0 ),
        .O(\current_wr_buffer[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \current_wr_buffer[10]_i_1 
       (.I0(wr_data_i[10]),
        .I1(healing_o),
        .I2(healing_data_o[10]),
        .I3(\current_wr_buffer[15]_i_5_n_0 ),
        .O(\current_wr_buffer[10]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \current_wr_buffer[11]_i_1 
       (.I0(wr_data_i[11]),
        .I1(healing_o),
        .I2(healing_data_o[11]),
        .I3(\current_wr_buffer[15]_i_5_n_0 ),
        .O(\current_wr_buffer[11]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \current_wr_buffer[12]_i_1 
       (.I0(wr_data_i[12]),
        .I1(healing_o),
        .I2(healing_data_o[12]),
        .I3(\current_wr_buffer[15]_i_5_n_0 ),
        .O(\current_wr_buffer[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \current_wr_buffer[13]_i_1 
       (.I0(wr_data_i[13]),
        .I1(healing_o),
        .I2(healing_data_o[13]),
        .I3(\current_wr_buffer[15]_i_5_n_0 ),
        .O(\current_wr_buffer[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \current_wr_buffer[14]_i_1 
       (.I0(wr_data_i[14]),
        .I1(healing_o),
        .I2(healing_data_o[14]),
        .I3(\current_wr_buffer[15]_i_5_n_0 ),
        .O(\current_wr_buffer[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000220)) 
    \current_wr_buffer[15]_i_1 
       (.I0(\ctrl_state_o[16]_INST_0_i_1_n_0 ),
        .I1(current_cke_i_7_n_0),
        .I2(current_state[0]),
        .I3(current_state[11]),
        .I4(\current_wr_buffer[15]_i_3_n_0 ),
        .I5(\current_wr_buffer[15]_i_4_n_0 ),
        .O(next_wr_buffer));
  LUT4 #(
    .INIT(16'h00E2)) 
    \current_wr_buffer[15]_i_2 
       (.I0(wr_data_i[15]),
        .I1(healing_o),
        .I2(healing_data_o[15]),
        .I3(\current_wr_buffer[15]_i_5_n_0 ),
        .O(\current_wr_buffer[15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \current_wr_buffer[15]_i_3 
       (.I0(current_state[15]),
        .I1(current_state[14]),
        .I2(current_state[16]),
        .I3(current_state[13]),
        .O(\current_wr_buffer[15]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \current_wr_buffer[15]_i_4 
       (.I0(current_state[9]),
        .I1(current_state[8]),
        .I2(current_state[12]),
        .I3(current_state[10]),
        .O(\current_wr_buffer[15]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT5 #(
    .INIT(32'h55DFFFDF)) 
    \current_wr_buffer[15]_i_5 
       (.I0(current_state[11]),
        .I1(scrubbing_o),
        .I2(wr_req_i),
        .I3(healing_o),
        .I4(healing_wr_req_o),
        .O(\current_wr_buffer[15]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \current_wr_buffer[1]_i_1 
       (.I0(wr_data_i[1]),
        .I1(healing_o),
        .I2(healing_data_o[1]),
        .I3(\current_wr_buffer[15]_i_5_n_0 ),
        .O(\current_wr_buffer[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \current_wr_buffer[2]_i_1 
       (.I0(wr_data_i[2]),
        .I1(healing_o),
        .I2(healing_data_o[2]),
        .I3(\current_wr_buffer[15]_i_5_n_0 ),
        .O(\current_wr_buffer[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \current_wr_buffer[3]_i_1 
       (.I0(wr_data_i[3]),
        .I1(healing_o),
        .I2(healing_data_o[3]),
        .I3(\current_wr_buffer[15]_i_5_n_0 ),
        .O(\current_wr_buffer[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \current_wr_buffer[4]_i_1 
       (.I0(wr_data_i[4]),
        .I1(healing_o),
        .I2(healing_data_o[4]),
        .I3(\current_wr_buffer[15]_i_5_n_0 ),
        .O(\current_wr_buffer[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \current_wr_buffer[5]_i_1 
       (.I0(wr_data_i[5]),
        .I1(healing_o),
        .I2(healing_data_o[5]),
        .I3(\current_wr_buffer[15]_i_5_n_0 ),
        .O(\current_wr_buffer[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \current_wr_buffer[6]_i_1 
       (.I0(wr_data_i[6]),
        .I1(healing_o),
        .I2(healing_data_o[6]),
        .I3(\current_wr_buffer[15]_i_5_n_0 ),
        .O(\current_wr_buffer[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \current_wr_buffer[7]_i_1 
       (.I0(wr_data_i[7]),
        .I1(healing_o),
        .I2(healing_data_o[7]),
        .I3(\current_wr_buffer[15]_i_5_n_0 ),
        .O(\current_wr_buffer[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \current_wr_buffer[8]_i_1 
       (.I0(wr_data_i[8]),
        .I1(healing_o),
        .I2(healing_data_o[8]),
        .I3(\current_wr_buffer[15]_i_5_n_0 ),
        .O(\current_wr_buffer[8]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \current_wr_buffer[9]_i_1 
       (.I0(wr_data_i[9]),
        .I1(healing_o),
        .I2(healing_data_o[9]),
        .I3(\current_wr_buffer[15]_i_5_n_0 ),
        .O(\current_wr_buffer[9]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \current_wr_buffer_reg[0] 
       (.C(clk_i),
        .CE(next_wr_buffer),
        .CLR(\current_nop_boot_count[14]_i_3_n_0 ),
        .D(\current_wr_buffer[0]_i_1_n_0 ),
        .Q(current_wr_buffer[0]));
  FDCE #(
    .INIT(1'b0)) 
    \current_wr_buffer_reg[10] 
       (.C(clk_i),
        .CE(next_wr_buffer),
        .CLR(\current_nop_boot_count[14]_i_3_n_0 ),
        .D(\current_wr_buffer[10]_i_1_n_0 ),
        .Q(current_wr_buffer[10]));
  FDCE #(
    .INIT(1'b0)) 
    \current_wr_buffer_reg[11] 
       (.C(clk_i),
        .CE(next_wr_buffer),
        .CLR(\current_nop_boot_count[14]_i_3_n_0 ),
        .D(\current_wr_buffer[11]_i_1_n_0 ),
        .Q(current_wr_buffer[11]));
  FDCE #(
    .INIT(1'b0)) 
    \current_wr_buffer_reg[12] 
       (.C(clk_i),
        .CE(next_wr_buffer),
        .CLR(\current_nop_boot_count[14]_i_3_n_0 ),
        .D(\current_wr_buffer[12]_i_1_n_0 ),
        .Q(current_wr_buffer[12]));
  FDCE #(
    .INIT(1'b0)) 
    \current_wr_buffer_reg[13] 
       (.C(clk_i),
        .CE(next_wr_buffer),
        .CLR(\current_nop_boot_count[14]_i_3_n_0 ),
        .D(\current_wr_buffer[13]_i_1_n_0 ),
        .Q(current_wr_buffer[13]));
  FDCE #(
    .INIT(1'b0)) 
    \current_wr_buffer_reg[14] 
       (.C(clk_i),
        .CE(next_wr_buffer),
        .CLR(\current_nop_boot_count[14]_i_3_n_0 ),
        .D(\current_wr_buffer[14]_i_1_n_0 ),
        .Q(current_wr_buffer[14]));
  FDCE #(
    .INIT(1'b0)) 
    \current_wr_buffer_reg[15] 
       (.C(clk_i),
        .CE(next_wr_buffer),
        .CLR(\current_nop_boot_count[14]_i_3_n_0 ),
        .D(\current_wr_buffer[15]_i_2_n_0 ),
        .Q(current_wr_buffer[15]));
  FDCE #(
    .INIT(1'b0)) 
    \current_wr_buffer_reg[1] 
       (.C(clk_i),
        .CE(next_wr_buffer),
        .CLR(\current_nop_boot_count[14]_i_3_n_0 ),
        .D(\current_wr_buffer[1]_i_1_n_0 ),
        .Q(current_wr_buffer[1]));
  FDCE #(
    .INIT(1'b0)) 
    \current_wr_buffer_reg[2] 
       (.C(clk_i),
        .CE(next_wr_buffer),
        .CLR(\current_nop_boot_count[14]_i_3_n_0 ),
        .D(\current_wr_buffer[2]_i_1_n_0 ),
        .Q(current_wr_buffer[2]));
  FDCE #(
    .INIT(1'b0)) 
    \current_wr_buffer_reg[3] 
       (.C(clk_i),
        .CE(next_wr_buffer),
        .CLR(\current_nop_boot_count[14]_i_3_n_0 ),
        .D(\current_wr_buffer[3]_i_1_n_0 ),
        .Q(current_wr_buffer[3]));
  FDCE #(
    .INIT(1'b0)) 
    \current_wr_buffer_reg[4] 
       (.C(clk_i),
        .CE(next_wr_buffer),
        .CLR(\current_nop_boot_count[14]_i_3_n_0 ),
        .D(\current_wr_buffer[4]_i_1_n_0 ),
        .Q(current_wr_buffer[4]));
  FDCE #(
    .INIT(1'b0)) 
    \current_wr_buffer_reg[5] 
       (.C(clk_i),
        .CE(next_wr_buffer),
        .CLR(\current_nop_boot_count[14]_i_3_n_0 ),
        .D(\current_wr_buffer[5]_i_1_n_0 ),
        .Q(current_wr_buffer[5]));
  FDCE #(
    .INIT(1'b0)) 
    \current_wr_buffer_reg[6] 
       (.C(clk_i),
        .CE(next_wr_buffer),
        .CLR(\current_nop_boot_count[14]_i_3_n_0 ),
        .D(\current_wr_buffer[6]_i_1_n_0 ),
        .Q(current_wr_buffer[6]));
  FDCE #(
    .INIT(1'b0)) 
    \current_wr_buffer_reg[7] 
       (.C(clk_i),
        .CE(next_wr_buffer),
        .CLR(\current_nop_boot_count[14]_i_3_n_0 ),
        .D(\current_wr_buffer[7]_i_1_n_0 ),
        .Q(current_wr_buffer[7]));
  FDCE #(
    .INIT(1'b0)) 
    \current_wr_buffer_reg[8] 
       (.C(clk_i),
        .CE(next_wr_buffer),
        .CLR(\current_nop_boot_count[14]_i_3_n_0 ),
        .D(\current_wr_buffer[8]_i_1_n_0 ),
        .Q(current_wr_buffer[8]));
  FDCE #(
    .INIT(1'b0)) 
    \current_wr_buffer_reg[9] 
       (.C(clk_i),
        .CE(next_wr_buffer),
        .CLR(\current_nop_boot_count[14]_i_3_n_0 ),
        .D(\current_wr_buffer[9]_i_1_n_0 ),
        .Q(current_wr_buffer[9]));
  LUT6 #(
    .INIT(64'h2F222F2F20222020)) 
    current_wr_grnt_i_1
       (.I0(current_wr_grnt_i_2_n_0),
        .I1(current_wr_grnt_i_3_n_0),
        .I2(current_wr_grnt_i_4_n_0),
        .I3(current_wr_grnt_i_5_n_0),
        .I4(current_wr_grnt_i_6_n_0),
        .I5(wr_grnt_int),
        .O(current_wr_grnt_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFEFFFFFFFEFFFE)) 
    current_wr_grnt_i_10
       (.I0(current_state[11]),
        .I1(current_state[10]),
        .I2(current_state[8]),
        .I3(current_state[9]),
        .I4(\current_first_access[3]_i_10_n_0 ),
        .I5(current_state[12]),
        .O(current_wr_grnt_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair148" *) 
  LUT2 #(
    .INIT(4'h1)) 
    current_wr_grnt_i_11
       (.I0(current_state[12]),
        .I1(current_state[13]),
        .O(current_wr_grnt_i_11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT4 #(
    .INIT(16'h88B8)) 
    current_wr_grnt_i_2
       (.I0(healing_wr_req_o),
        .I1(healing_o),
        .I2(wr_req_i),
        .I3(scrubbing_o),
        .O(current_wr_grnt_i_2_n_0));
  LUT6 #(
    .INIT(64'hF7FFFFFFFFFFFFFF)) 
    current_wr_grnt_i_3
       (.I0(current_mem_ready_i_3_n_0),
        .I1(current_state[11]),
        .I2(current_state[0]),
        .I3(current_wr_grnt_i_7_n_0),
        .I4(\current_state[4]_i_3_n_0 ),
        .I5(\current_state[4]_i_2_n_0 ),
        .O(current_wr_grnt_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFEFFECFFCCFFC)) 
    current_wr_grnt_i_4
       (.I0(current_state[3]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(current_wr_grnt_i_8_n_0),
        .I4(current_rd_op_done_i_4_n_0),
        .I5(current_state[2]),
        .O(current_wr_grnt_i_4_n_0));
  LUT6 #(
    .INIT(64'h0000AA02AAAAAAAA)) 
    current_wr_grnt_i_5
       (.I0(current_wr_op_done_i_2_n_0),
        .I1(current_wr_grnt_i_9_n_0),
        .I2(\current_cas_rd_count[1]_i_11_n_0 ),
        .I3(\current_nop_boot_count[14]_i_10_n_0 ),
        .I4(current_wr_grnt_i_10_n_0),
        .I5(\current_nop_boot_count[14]_i_12_n_0 ),
        .O(current_wr_grnt_i_5_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEEAFFFF)) 
    current_wr_grnt_i_6
       (.I0(current_state[6]),
        .I1(current_state[3]),
        .I2(current_state[5]),
        .I3(current_state[4]),
        .I4(\current_nop_boot_count[14]_i_13_n_0 ),
        .I5(current_state[7]),
        .O(current_wr_grnt_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT3 #(
    .INIT(8'h01)) 
    current_wr_grnt_i_7
       (.I0(current_state[10]),
        .I1(current_state[8]),
        .I2(current_state[9]),
        .O(current_wr_grnt_i_7_n_0));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    current_wr_grnt_i_8
       (.I0(\current_state[16]_i_6_n_0 ),
        .I1(current_mem_ready_i_3_n_0),
        .I2(current_wr_grnt_i_11_n_0),
        .I3(current_state[10]),
        .I4(current_state[8]),
        .I5(current_state[9]),
        .O(current_wr_grnt_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    current_wr_grnt_i_9
       (.I0(current_state[13]),
        .I1(current_state[15]),
        .I2(current_state[14]),
        .O(current_wr_grnt_i_9_n_0));
  FDCE #(
    .INIT(1'b0)) 
    current_wr_grnt_reg
       (.C(clk_i),
        .CE(1'b1),
        .CLR(\current_nop_boot_count[14]_i_3_n_0 ),
        .D(current_wr_grnt_i_1_n_0),
        .Q(wr_grnt_int));
  LUT6 #(
    .INIT(64'hAABABBBBAA8A8888)) 
    current_wr_op_done_i_1
       (.I0(ctrl_state_o[25]),
        .I1(current_wr_grnt_i_4_n_0),
        .I2(current_wr_op_done_i_2_n_0),
        .I3(current_wr_op_done_i_3_n_0),
        .I4(current_wr_grnt_i_6_n_0),
        .I5(wr_done_i),
        .O(current_wr_op_done_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT2 #(
    .INIT(4'h1)) 
    current_wr_op_done_i_10
       (.I0(current_state[18]),
        .I1(current_state[20]),
        .O(current_wr_op_done_i_10_n_0));
  LUT6 #(
    .INIT(64'h000000000000002B)) 
    current_wr_op_done_i_2
       (.I0(\current_nop_boot_count[14]_i_13_n_0 ),
        .I1(current_state[6]),
        .I2(current_state[7]),
        .I3(current_state[4]),
        .I4(current_state[5]),
        .I5(current_state[3]),
        .O(current_wr_op_done_i_2_n_0));
  LUT6 #(
    .INIT(64'h02020002AAAAAAAA)) 
    current_wr_op_done_i_3
       (.I0(\current_nop_boot_count[14]_i_12_n_0 ),
        .I1(current_wr_op_done_i_4_n_0),
        .I2(\current_address_bus[14]_i_14_n_0 ),
        .I3(\ctrl_state_o[16]_INST_0_i_1_n_0 ),
        .I4(\ctrl_state_o[16]_INST_0_i_3_n_0 ),
        .I5(current_wr_op_done_i_5_n_0),
        .O(current_wr_op_done_i_3_n_0));
  LUT6 #(
    .INIT(64'h00000000AEAE00AE)) 
    current_wr_op_done_i_4
       (.I0(current_wr_op_done_i_6_n_0),
        .I1(current_wr_op_done_i_7_n_0),
        .I2(current_wr_op_done_i_8_n_0),
        .I3(current_state[18]),
        .I4(\ctrl_state_o[18]_INST_0_i_1_n_0 ),
        .I5(current_wr_op_done_i_9_n_0),
        .O(current_wr_op_done_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT5 #(
    .INIT(32'h00404044)) 
    current_wr_op_done_i_5
       (.I0(current_state[11]),
        .I1(current_wr_grnt_i_7_n_0),
        .I2(\current_state[16]_i_6_n_0 ),
        .I3(current_state[12]),
        .I4(current_state[13]),
        .O(current_wr_op_done_i_5_n_0));
  LUT6 #(
    .INIT(64'h111111111111151F)) 
    current_wr_op_done_i_6
       (.I0(current_state[19]),
        .I1(\ctrl_state_o[20]_INST_0_i_2_n_0 ),
        .I2(\ctrl_state_o[21]_INST_0_i_2_n_0 ),
        .I3(current_state[21]),
        .I4(current_state[20]),
        .I5(\ctrl_state_o[22]_INST_0_i_2_n_0 ),
        .O(current_wr_op_done_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'h01)) 
    current_wr_op_done_i_7
       (.I0(current_state[19]),
        .I1(current_state[21]),
        .I2(current_state[20]),
        .O(current_wr_op_done_i_7_n_0));
  LUT6 #(
    .INIT(64'hFFFEFFFEFFE8FEE8)) 
    current_wr_op_done_i_8
       (.I0(current_state[26]),
        .I1(current_state[22]),
        .I2(current_state[24]),
        .I3(current_state[25]),
        .I4(current_nop_wr_count),
        .I5(current_state[23]),
        .O(current_wr_op_done_i_8_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFEFEEEEEEEE)) 
    current_wr_op_done_i_9
       (.I0(\ctrl_state_o[16]_INST_0_i_3_n_0 ),
        .I1(current_state[16]),
        .I2(current_wr_op_done_i_10_n_0),
        .I3(\ctrl_state_o[20]_INST_0_i_2_n_0 ),
        .I4(current_state[19]),
        .I5(current_state[17]),
        .O(current_wr_op_done_i_9_n_0));
  FDCE #(
    .INIT(1'b0)) 
    current_wr_op_done_reg
       (.C(clk_i),
        .CE(1'b1),
        .CLR(\current_nop_boot_count[14]_i_3_n_0 ),
        .D(current_wr_op_done_i_1_n_0),
        .Q(wr_done_i));
  (* box_type = "PRIMITIVE" *) 
  IOBUF #(
    .IOSTANDARD("DEFAULT")) 
    \dataQ[0].iobuf_inst 
       (.I(current_wr_buffer[0]),
        .IO(dataQ_io[0]),
        .O(\dataQ[0].iobuf_inst__0 ),
        .T(rd_grnt_int));
  (* box_type = "PRIMITIVE" *) 
  IOBUF #(
    .IOSTANDARD("DEFAULT")) 
    \dataQ[10].iobuf_inst 
       (.I(current_wr_buffer[10]),
        .IO(dataQ_io[10]),
        .O(\dataQ[10].iobuf_inst__0 ),
        .T(rd_grnt_int));
  (* box_type = "PRIMITIVE" *) 
  IOBUF #(
    .IOSTANDARD("DEFAULT")) 
    \dataQ[11].iobuf_inst 
       (.I(current_wr_buffer[11]),
        .IO(dataQ_io[11]),
        .O(\dataQ[11].iobuf_inst__0 ),
        .T(rd_grnt_int));
  (* box_type = "PRIMITIVE" *) 
  IOBUF #(
    .IOSTANDARD("DEFAULT")) 
    \dataQ[12].iobuf_inst 
       (.I(current_wr_buffer[12]),
        .IO(dataQ_io[12]),
        .O(\dataQ[12].iobuf_inst__0 ),
        .T(rd_grnt_int));
  (* box_type = "PRIMITIVE" *) 
  IOBUF #(
    .IOSTANDARD("DEFAULT")) 
    \dataQ[13].iobuf_inst 
       (.I(current_wr_buffer[13]),
        .IO(dataQ_io[13]),
        .O(\dataQ[13].iobuf_inst__0 ),
        .T(rd_grnt_int));
  (* box_type = "PRIMITIVE" *) 
  IOBUF #(
    .IOSTANDARD("DEFAULT")) 
    \dataQ[14].iobuf_inst 
       (.I(current_wr_buffer[14]),
        .IO(dataQ_io[14]),
        .O(\dataQ[14].iobuf_inst__0 ),
        .T(rd_grnt_int));
  (* box_type = "PRIMITIVE" *) 
  IOBUF #(
    .IOSTANDARD("DEFAULT")) 
    \dataQ[15].iobuf_inst 
       (.I(current_wr_buffer[15]),
        .IO(dataQ_io[15]),
        .O(\dataQ[15].iobuf_inst__0 ),
        .T(rd_grnt_int));
  (* box_type = "PRIMITIVE" *) 
  IOBUF #(
    .IOSTANDARD("DEFAULT")) 
    \dataQ[1].iobuf_inst 
       (.I(current_wr_buffer[1]),
        .IO(dataQ_io[1]),
        .O(\dataQ[1].iobuf_inst__0 ),
        .T(rd_grnt_int));
  (* box_type = "PRIMITIVE" *) 
  IOBUF #(
    .IOSTANDARD("DEFAULT")) 
    \dataQ[2].iobuf_inst 
       (.I(current_wr_buffer[2]),
        .IO(dataQ_io[2]),
        .O(\dataQ[2].iobuf_inst__0 ),
        .T(rd_grnt_int));
  (* box_type = "PRIMITIVE" *) 
  IOBUF #(
    .IOSTANDARD("DEFAULT")) 
    \dataQ[3].iobuf_inst 
       (.I(current_wr_buffer[3]),
        .IO(dataQ_io[3]),
        .O(\dataQ[3].iobuf_inst__0 ),
        .T(rd_grnt_int));
  (* box_type = "PRIMITIVE" *) 
  IOBUF #(
    .IOSTANDARD("DEFAULT")) 
    \dataQ[4].iobuf_inst 
       (.I(current_wr_buffer[4]),
        .IO(dataQ_io[4]),
        .O(\dataQ[4].iobuf_inst__0 ),
        .T(rd_grnt_int));
  (* box_type = "PRIMITIVE" *) 
  IOBUF #(
    .IOSTANDARD("DEFAULT")) 
    \dataQ[5].iobuf_inst 
       (.I(current_wr_buffer[5]),
        .IO(dataQ_io[5]),
        .O(\dataQ[5].iobuf_inst__0 ),
        .T(rd_grnt_int));
  (* box_type = "PRIMITIVE" *) 
  IOBUF #(
    .IOSTANDARD("DEFAULT")) 
    \dataQ[6].iobuf_inst 
       (.I(current_wr_buffer[6]),
        .IO(dataQ_io[6]),
        .O(\dataQ[6].iobuf_inst__0 ),
        .T(rd_grnt_int));
  (* box_type = "PRIMITIVE" *) 
  IOBUF #(
    .IOSTANDARD("DEFAULT")) 
    \dataQ[7].iobuf_inst 
       (.I(current_wr_buffer[7]),
        .IO(dataQ_io[7]),
        .O(\dataQ[7].iobuf_inst__0 ),
        .T(rd_grnt_int));
  (* box_type = "PRIMITIVE" *) 
  IOBUF #(
    .IOSTANDARD("DEFAULT")) 
    \dataQ[8].iobuf_inst 
       (.I(current_wr_buffer[8]),
        .IO(dataQ_io[8]),
        .O(\dataQ[8].iobuf_inst__0 ),
        .T(rd_grnt_int));
  (* box_type = "PRIMITIVE" *) 
  IOBUF #(
    .IOSTANDARD("DEFAULT")) 
    \dataQ[9].iobuf_inst 
       (.I(current_wr_buffer[9]),
        .IO(dataQ_io[9]),
        .O(\dataQ[9].iobuf_inst__0 ),
        .T(rd_grnt_int));
  (* CAPACITANCE = "DONT_CARE" *) 
  (* box_type = "PRIMITIVE" *) 
  OBUF #(
    .IOSTANDARD("DEFAULT")) 
    \dqm[0].obuf_inst 
       (.I(current_dqm),
        .O(dqm_o[0]));
  (* CAPACITANCE = "DONT_CARE" *) 
  (* box_type = "PRIMITIVE" *) 
  OBUF #(
    .IOSTANDARD("DEFAULT")) 
    \dqm[1].obuf_inst 
       (.I(current_dqm),
        .O(dqm_o[1]));
  LUT6 #(
    .INIT(64'hDDD888D822277727)) 
    i__carry__0_i_1
       (.I0(healing_o),
        .I1(healing_addr_o[21]),
        .I2(rw_addr_i[19]),
        .I3(scrubbing_o),
        .I4(scrubbing_addr_o[21]),
        .I5(Q[21]),
        .O(i__carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_1
       (.I0(p_0_in2_in[10]),
        .I1(Q[19]),
        .I2(Q[20]),
        .I3(p_0_in2_in[11]),
        .I4(Q[18]),
        .I5(p_0_in2_in[9]),
        .O(i__carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_2
       (.I0(p_0_in2_in[7]),
        .I1(Q[16]),
        .I2(Q[17]),
        .I3(p_0_in2_in[8]),
        .I4(Q[15]),
        .I5(p_0_in2_in[6]),
        .O(i__carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_3
       (.I0(p_0_in2_in[4]),
        .I1(Q[13]),
        .I2(Q[14]),
        .I3(p_0_in2_in[5]),
        .I4(Q[12]),
        .I5(p_0_in2_in[3]),
        .O(i__carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_4
       (.I0(p_0_in2_in[1]),
        .I1(Q[10]),
        .I2(Q[11]),
        .I3(p_0_in2_in[2]),
        .I4(Q[9]),
        .I5(p_0_in2_in[0]),
        .O(i__carry_i_4_n_0));
  CARRY4 next_nop_boot_count0_carry
       (.CI(1'b0),
        .CO({next_nop_boot_count0_carry_n_0,next_nop_boot_count0_carry_n_1,next_nop_boot_count0_carry_n_2,next_nop_boot_count0_carry_n_3}),
        .CYINIT(current_nop_boot_count[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({next_nop_boot_count0_carry_n_4,next_nop_boot_count0_carry_n_5,next_nop_boot_count0_carry_n_6,next_nop_boot_count0_carry_n_7}),
        .S({next_nop_boot_count0_carry_i_1_n_0,next_nop_boot_count0_carry_i_2_n_0,next_nop_boot_count0_carry_i_3_n_0,next_nop_boot_count0_carry_i_4_n_0}));
  CARRY4 next_nop_boot_count0_carry__0
       (.CI(next_nop_boot_count0_carry_n_0),
        .CO({next_nop_boot_count0_carry__0_n_0,next_nop_boot_count0_carry__0_n_1,next_nop_boot_count0_carry__0_n_2,next_nop_boot_count0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({next_nop_boot_count0_carry__0_n_4,next_nop_boot_count0_carry__0_n_5,next_nop_boot_count0_carry__0_n_6,next_nop_boot_count0_carry__0_n_7}),
        .S({next_nop_boot_count0_carry__0_i_1_n_0,next_nop_boot_count0_carry__0_i_2_n_0,next_nop_boot_count0_carry__0_i_3_n_0,next_nop_boot_count0_carry__0_i_4_n_0}));
  LUT1 #(
    .INIT(2'h2)) 
    next_nop_boot_count0_carry__0_i_1
       (.I0(current_nop_boot_count[8]),
        .O(next_nop_boot_count0_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    next_nop_boot_count0_carry__0_i_2
       (.I0(current_nop_boot_count[7]),
        .O(next_nop_boot_count0_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    next_nop_boot_count0_carry__0_i_3
       (.I0(current_nop_boot_count[6]),
        .O(next_nop_boot_count0_carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    next_nop_boot_count0_carry__0_i_4
       (.I0(current_nop_boot_count[5]),
        .O(next_nop_boot_count0_carry__0_i_4_n_0));
  CARRY4 next_nop_boot_count0_carry__1
       (.CI(next_nop_boot_count0_carry__0_n_0),
        .CO({next_nop_boot_count0_carry__1_n_0,next_nop_boot_count0_carry__1_n_1,next_nop_boot_count0_carry__1_n_2,next_nop_boot_count0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({next_nop_boot_count0_carry__1_n_4,next_nop_boot_count0_carry__1_n_5,next_nop_boot_count0_carry__1_n_6,next_nop_boot_count0_carry__1_n_7}),
        .S({next_nop_boot_count0_carry__1_i_1_n_0,next_nop_boot_count0_carry__1_i_2_n_0,next_nop_boot_count0_carry__1_i_3_n_0,next_nop_boot_count0_carry__1_i_4_n_0}));
  LUT1 #(
    .INIT(2'h2)) 
    next_nop_boot_count0_carry__1_i_1
       (.I0(current_nop_boot_count[12]),
        .O(next_nop_boot_count0_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    next_nop_boot_count0_carry__1_i_2
       (.I0(current_nop_boot_count[11]),
        .O(next_nop_boot_count0_carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    next_nop_boot_count0_carry__1_i_3
       (.I0(current_nop_boot_count[10]),
        .O(next_nop_boot_count0_carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    next_nop_boot_count0_carry__1_i_4
       (.I0(current_nop_boot_count[9]),
        .O(next_nop_boot_count0_carry__1_i_4_n_0));
  CARRY4 next_nop_boot_count0_carry__2
       (.CI(next_nop_boot_count0_carry__1_n_0),
        .CO({NLW_next_nop_boot_count0_carry__2_CO_UNCONNECTED[3:1],next_nop_boot_count0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_next_nop_boot_count0_carry__2_O_UNCONNECTED[3:2],next_nop_boot_count0_carry__2_n_6,next_nop_boot_count0_carry__2_n_7}),
        .S({1'b0,1'b0,next_nop_boot_count0_carry__2_i_1_n_0,next_nop_boot_count0_carry__2_i_2_n_0}));
  LUT1 #(
    .INIT(2'h2)) 
    next_nop_boot_count0_carry__2_i_1
       (.I0(current_nop_boot_count[14]),
        .O(next_nop_boot_count0_carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    next_nop_boot_count0_carry__2_i_2
       (.I0(current_nop_boot_count[13]),
        .O(next_nop_boot_count0_carry__2_i_2_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    next_nop_boot_count0_carry_i_1
       (.I0(current_nop_boot_count[4]),
        .O(next_nop_boot_count0_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    next_nop_boot_count0_carry_i_2
       (.I0(current_nop_boot_count[3]),
        .O(next_nop_boot_count0_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    next_nop_boot_count0_carry_i_3
       (.I0(current_nop_boot_count[2]),
        .O(next_nop_boot_count0_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    next_nop_boot_count0_carry_i_4
       (.I0(current_nop_boot_count[1]),
        .O(next_nop_boot_count0_carry_i_4_n_0));
  CARRY4 \next_state3_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\next_state3_inferred__0/i__carry_n_0 ,\next_state3_inferred__0/i__carry_n_1 ,\next_state3_inferred__0/i__carry_n_2 ,\next_state3_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_next_state3_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_1_n_0,i__carry_i_2_n_0,i__carry_i_3_n_0,i__carry_i_4_n_0}));
  CARRY4 \next_state3_inferred__0/i__carry__0 
       (.CI(\next_state3_inferred__0/i__carry_n_0 ),
        .CO({\NLW_next_state3_inferred__0/i__carry__0_CO_UNCONNECTED [3:1],next_state319_in}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_next_state3_inferred__0/i__carry__0_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,i__carry__0_i_1_n_0}));
  (* CAPACITANCE = "DONT_CARE" *) 
  (* box_type = "PRIMITIVE" *) 
  OBUF #(
    .IOSTANDARD("DEFAULT")) 
    ras_buf_inst
       (.I(current_ras),
        .O(ras_o));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT2 #(
    .INIT(4'h2)) 
    rd_grnt_o_INST_0
       (.I0(rd_grnt_int),
        .I1(scrubbing_o),
        .O(rd_grnt_o));
  (* SOFT_HLUTNM = "soft_lutpair144" *) 
  LUT2 #(
    .INIT(4'h2)) 
    rd_op_done_o_INST_0
       (.I0(rd_done_int),
        .I1(scrubbing_o),
        .O(rd_op_done_o));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    sdram_ctrl_tmr_scrubber_inst_i_1
       (.I0(rd_grnt_int),
        .I1(wr_grnt_int),
        .I2(wr_req_i),
        .I3(en_scrubbing_i),
        .I4(healing_o),
        .I5(rd_req_i),
        .O(en_i));
  (* SOFT_HLUTNM = "soft_lutpair144" *) 
  LUT2 #(
    .INIT(4'h8)) 
    tmr_voter_inst_i_1
       (.I0(rd_done_int),
        .I1(rd_tmr_vote_o),
        .O(\current_err_count_reg[3] ));
  (* CAPACITANCE = "DONT_CARE" *) 
  (* box_type = "PRIMITIVE" *) 
  OBUF #(
    .IOSTANDARD("DEFAULT")) 
    we_buf_inst
       (.I(current_we),
        .O(we_o));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT2 #(
    .INIT(4'h2)) 
    wr_grnt_o_INST_0
       (.I0(wr_grnt_int),
        .I1(healing_o),
        .O(wr_grnt_o));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT2 #(
    .INIT(4'h2)) 
    wr_op_done_o_INST_0
       (.I0(wr_done_i),
        .I1(healing_o),
        .O(wr_op_done_o));
endmodule

(* ACT_TO_RW_CYCLES = "2" *) (* BANK_WIDTH = "2" *) (* BURST_LENGTH = "0" *) 
(* CAS_LAT_CYCLES = "2" *) (* COLS_WIDTH = "9" *) (* DATA_WIDTH = "16" *) 
(* DQM_WIDTH = "2" *) (* DRIVE_STRENGTH = "0" *) (* EXT_MODE_REG_EN = "TRUE" *) 
(* GEN_ERR_INJ = "FALSE" *) (* IN_DATA_TO_PRE = "2" *) (* MODE_REG_CYCLES = "2" *) 
(* NOP_BOOT_CYCLES = "20000" *) (* ORIG_REF_NAME = "sdram_ctrl_tmr_avs_interface" *) (* PRECH_COMMAND_PERIOD = "2" *) 
(* RAM_BANKS = "4" *) (* RAM_COLS = "512" *) (* RAM_ROWS = "8192" *) 
(* REF_COMMAND_COUNT = "8" *) (* REF_COMMAND_PERIOD = "8" *) (* REF_PERIOD = "32" *) 
(* ROW_WIDTH = "13" *) (* SCRUBBER_WAIT_CYCLES = "64" *) (* TMR_COLS = "384" *) 
module DemoSDRAM_sdram_ctrl_tmr_avalon_0_0_sdram_ctrl_tmr_avs_interface
   (cke_o,
    bank_o,
    addr_o,
    cs_o,
    ras_o,
    cas_o,
    we_o,
    dqm_o,
    dataQ_io,
    mem_ready_o,
    err_detect_o,
    err_counter_o,
    voted_data_o,
    scrubbing_proc_run_o,
    healing_proc_run_o,
    avs_address,
    avs_read,
    avs_readdata,
    avs_write,
    avs_writedata,
    avs_waitrequest,
    avs_readdatavalid,
    rsi_reset_n,
    csi_clock);
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
  output avs_waitrequest;
  output avs_readdatavalid;
  input rsi_reset_n;
  input csi_clock;

  wire \<const0> ;
  wire [12:0]addr_o;
  wire [23:0]avs_address;
  wire avs_read;
  wire [26:0]\^avs_readdata ;
  wire \avs_readdata[0]_INST_0_i_1_n_0 ;
  wire \avs_readdata[15]_INST_0_i_1_n_0 ;
  wire \avs_readdata[15]_INST_0_i_2_n_0 ;
  wire \avs_readdata[26]_INST_0_i_1_n_0 ;
  wire avs_readdatavalid;
  wire avs_readdatavalid_reg_i_1_n_0;
  wire avs_waitrequest;
  wire avs_waitrequest_reg_i_1_n_0;
  wire avs_waitrequest_reg_i_2_n_0;
  wire avs_waitrequest_reg_i_3_n_0;
  wire avs_write;
  wire [31:0]avs_writedata;
  wire [1:0]bank_o;
  wire cas_o;
  wire cke_o;
  wire cs_o;
  wire csi_clock;
  wire [26:0]ctrl_state_o;
  wire [26:0]current_ctrl_state;
  wire current_ctrl_state2;
  wire \current_en_scrubbing_reg_n_0_[2] ;
  wire [15:0]current_rd_data;
  wire [15:0]dataQ_io;
  wire [1:0]dqm_o;
  wire [15:0]err_counter_o;
  wire err_detect_o;
  wire healing_proc_run_o;
  wire mem_ready_o;
  wire [2:2]next_en_scrubbing;
  wire ras_o;
  wire rd_grnt_o;
  wire rd_op_done_o;
  wire rd_req_int;
  wire rsi_reset_n;
  wire rst_err_counter_int;
  wire scrubbing_proc_run_o;
  wire sdram_ctrl_tmr_inst_i_20_n_0;
  wire temp_waitrequest;
  wire temp_waitrequest1;
  wire temp_waitrequest_reg_n_0;
  wire [15:0]voted_data_o;
  wire we_o;
  wire [15:0]wr_data_int;
  wire wr_grnt_o;
  wire wr_req_int;
  wire NLW_sdram_ctrl_tmr_inst_wr_op_done_o_UNCONNECTED;

  assign avs_readdata[31] = \<const0> ;
  assign avs_readdata[30] = \<const0> ;
  assign avs_readdata[29] = \<const0> ;
  assign avs_readdata[28] = \<const0> ;
  assign avs_readdata[27] = \<const0> ;
  assign avs_readdata[26:0] = \^avs_readdata [26:0];
  GND GND
       (.G(\<const0> ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \avs_readdata[0]_INST_0 
       (.I0(\avs_readdata[0]_INST_0_i_1_n_0 ),
        .I1(\avs_readdata[15]_INST_0_i_1_n_0 ),
        .I2(current_ctrl_state[0]),
        .I3(err_counter_o[0]),
        .I4(\avs_readdata[15]_INST_0_i_2_n_0 ),
        .O(\^avs_readdata [0]));
  LUT6 #(
    .INIT(64'h0ACA0A0A0A0A0A0A)) 
    \avs_readdata[0]_INST_0_i_1 
       (.I0(current_rd_data[0]),
        .I1(\avs_readdata[26]_INST_0_i_1_n_0 ),
        .I2(avs_address[23]),
        .I3(avs_address[4]),
        .I4(\current_en_scrubbing_reg_n_0_[2] ),
        .I5(avs_address[2]),
        .O(\avs_readdata[0]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \avs_readdata[10]_INST_0 
       (.I0(current_rd_data[10]),
        .I1(avs_address[23]),
        .I2(\avs_readdata[15]_INST_0_i_1_n_0 ),
        .I3(current_ctrl_state[10]),
        .I4(err_counter_o[10]),
        .I5(\avs_readdata[15]_INST_0_i_2_n_0 ),
        .O(\^avs_readdata [10]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \avs_readdata[11]_INST_0 
       (.I0(current_rd_data[11]),
        .I1(avs_address[23]),
        .I2(\avs_readdata[15]_INST_0_i_1_n_0 ),
        .I3(current_ctrl_state[11]),
        .I4(err_counter_o[11]),
        .I5(\avs_readdata[15]_INST_0_i_2_n_0 ),
        .O(\^avs_readdata [11]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \avs_readdata[12]_INST_0 
       (.I0(current_rd_data[12]),
        .I1(avs_address[23]),
        .I2(\avs_readdata[15]_INST_0_i_1_n_0 ),
        .I3(current_ctrl_state[12]),
        .I4(err_counter_o[12]),
        .I5(\avs_readdata[15]_INST_0_i_2_n_0 ),
        .O(\^avs_readdata [12]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \avs_readdata[13]_INST_0 
       (.I0(current_rd_data[13]),
        .I1(avs_address[23]),
        .I2(\avs_readdata[15]_INST_0_i_1_n_0 ),
        .I3(current_ctrl_state[13]),
        .I4(err_counter_o[13]),
        .I5(\avs_readdata[15]_INST_0_i_2_n_0 ),
        .O(\^avs_readdata [13]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \avs_readdata[14]_INST_0 
       (.I0(current_rd_data[14]),
        .I1(avs_address[23]),
        .I2(\avs_readdata[15]_INST_0_i_1_n_0 ),
        .I3(current_ctrl_state[14]),
        .I4(err_counter_o[14]),
        .I5(\avs_readdata[15]_INST_0_i_2_n_0 ),
        .O(\^avs_readdata [14]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \avs_readdata[15]_INST_0 
       (.I0(current_rd_data[15]),
        .I1(avs_address[23]),
        .I2(\avs_readdata[15]_INST_0_i_1_n_0 ),
        .I3(current_ctrl_state[15]),
        .I4(err_counter_o[15]),
        .I5(\avs_readdata[15]_INST_0_i_2_n_0 ),
        .O(\^avs_readdata [15]));
  (* SOFT_HLUTNM = "soft_lutpair152" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \avs_readdata[15]_INST_0_i_1 
       (.I0(avs_address[4]),
        .I1(avs_address[23]),
        .I2(\avs_readdata[26]_INST_0_i_1_n_0 ),
        .I3(avs_address[3]),
        .O(\avs_readdata[15]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair155" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \avs_readdata[15]_INST_0_i_2 
       (.I0(avs_address[4]),
        .I1(avs_address[23]),
        .I2(\avs_readdata[26]_INST_0_i_1_n_0 ),
        .I3(avs_address[0]),
        .O(\avs_readdata[15]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00800000)) 
    \avs_readdata[16]_INST_0 
       (.I0(avs_address[3]),
        .I1(\avs_readdata[26]_INST_0_i_1_n_0 ),
        .I2(avs_address[23]),
        .I3(avs_address[4]),
        .I4(current_ctrl_state[16]),
        .O(\^avs_readdata [16]));
  LUT5 #(
    .INIT(32'h00800000)) 
    \avs_readdata[17]_INST_0 
       (.I0(avs_address[3]),
        .I1(\avs_readdata[26]_INST_0_i_1_n_0 ),
        .I2(avs_address[23]),
        .I3(avs_address[4]),
        .I4(current_ctrl_state[17]),
        .O(\^avs_readdata [17]));
  LUT5 #(
    .INIT(32'h00800000)) 
    \avs_readdata[18]_INST_0 
       (.I0(avs_address[3]),
        .I1(\avs_readdata[26]_INST_0_i_1_n_0 ),
        .I2(avs_address[23]),
        .I3(avs_address[4]),
        .I4(current_ctrl_state[18]),
        .O(\^avs_readdata [18]));
  LUT5 #(
    .INIT(32'h00800000)) 
    \avs_readdata[19]_INST_0 
       (.I0(avs_address[3]),
        .I1(\avs_readdata[26]_INST_0_i_1_n_0 ),
        .I2(avs_address[23]),
        .I3(avs_address[4]),
        .I4(current_ctrl_state[19]),
        .O(\^avs_readdata [19]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \avs_readdata[1]_INST_0 
       (.I0(current_rd_data[1]),
        .I1(avs_address[23]),
        .I2(\avs_readdata[15]_INST_0_i_1_n_0 ),
        .I3(current_ctrl_state[1]),
        .I4(err_counter_o[1]),
        .I5(\avs_readdata[15]_INST_0_i_2_n_0 ),
        .O(\^avs_readdata [1]));
  LUT5 #(
    .INIT(32'h00800000)) 
    \avs_readdata[20]_INST_0 
       (.I0(avs_address[3]),
        .I1(\avs_readdata[26]_INST_0_i_1_n_0 ),
        .I2(avs_address[23]),
        .I3(avs_address[4]),
        .I4(current_ctrl_state[20]),
        .O(\^avs_readdata [20]));
  LUT5 #(
    .INIT(32'h00800000)) 
    \avs_readdata[21]_INST_0 
       (.I0(avs_address[3]),
        .I1(\avs_readdata[26]_INST_0_i_1_n_0 ),
        .I2(avs_address[23]),
        .I3(avs_address[4]),
        .I4(current_ctrl_state[21]),
        .O(\^avs_readdata [21]));
  LUT5 #(
    .INIT(32'h00800000)) 
    \avs_readdata[22]_INST_0 
       (.I0(avs_address[3]),
        .I1(\avs_readdata[26]_INST_0_i_1_n_0 ),
        .I2(avs_address[23]),
        .I3(avs_address[4]),
        .I4(current_ctrl_state[22]),
        .O(\^avs_readdata [22]));
  LUT5 #(
    .INIT(32'h00800000)) 
    \avs_readdata[23]_INST_0 
       (.I0(avs_address[3]),
        .I1(\avs_readdata[26]_INST_0_i_1_n_0 ),
        .I2(avs_address[23]),
        .I3(avs_address[4]),
        .I4(current_ctrl_state[23]),
        .O(\^avs_readdata [23]));
  LUT5 #(
    .INIT(32'h00800000)) 
    \avs_readdata[24]_INST_0 
       (.I0(avs_address[3]),
        .I1(\avs_readdata[26]_INST_0_i_1_n_0 ),
        .I2(avs_address[23]),
        .I3(avs_address[4]),
        .I4(current_ctrl_state[24]),
        .O(\^avs_readdata [24]));
  (* SOFT_HLUTNM = "soft_lutpair152" *) 
  LUT5 #(
    .INIT(32'h00800000)) 
    \avs_readdata[25]_INST_0 
       (.I0(avs_address[3]),
        .I1(\avs_readdata[26]_INST_0_i_1_n_0 ),
        .I2(avs_address[23]),
        .I3(avs_address[4]),
        .I4(current_ctrl_state[25]),
        .O(\^avs_readdata [25]));
  LUT5 #(
    .INIT(32'h00800000)) 
    \avs_readdata[26]_INST_0 
       (.I0(avs_address[3]),
        .I1(\avs_readdata[26]_INST_0_i_1_n_0 ),
        .I2(avs_address[23]),
        .I3(avs_address[4]),
        .I4(current_ctrl_state[26]),
        .O(\^avs_readdata [26]));
  LUT4 #(
    .INIT(16'h0116)) 
    \avs_readdata[26]_INST_0_i_1 
       (.I0(avs_address[0]),
        .I1(avs_address[1]),
        .I2(avs_address[2]),
        .I3(avs_address[3]),
        .O(\avs_readdata[26]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \avs_readdata[2]_INST_0 
       (.I0(current_rd_data[2]),
        .I1(avs_address[23]),
        .I2(\avs_readdata[15]_INST_0_i_1_n_0 ),
        .I3(current_ctrl_state[2]),
        .I4(err_counter_o[2]),
        .I5(\avs_readdata[15]_INST_0_i_2_n_0 ),
        .O(\^avs_readdata [2]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \avs_readdata[3]_INST_0 
       (.I0(current_rd_data[3]),
        .I1(avs_address[23]),
        .I2(\avs_readdata[15]_INST_0_i_1_n_0 ),
        .I3(current_ctrl_state[3]),
        .I4(err_counter_o[3]),
        .I5(\avs_readdata[15]_INST_0_i_2_n_0 ),
        .O(\^avs_readdata [3]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \avs_readdata[4]_INST_0 
       (.I0(current_rd_data[4]),
        .I1(avs_address[23]),
        .I2(\avs_readdata[15]_INST_0_i_1_n_0 ),
        .I3(current_ctrl_state[4]),
        .I4(err_counter_o[4]),
        .I5(\avs_readdata[15]_INST_0_i_2_n_0 ),
        .O(\^avs_readdata [4]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \avs_readdata[5]_INST_0 
       (.I0(current_rd_data[5]),
        .I1(avs_address[23]),
        .I2(\avs_readdata[15]_INST_0_i_1_n_0 ),
        .I3(current_ctrl_state[5]),
        .I4(err_counter_o[5]),
        .I5(\avs_readdata[15]_INST_0_i_2_n_0 ),
        .O(\^avs_readdata [5]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \avs_readdata[6]_INST_0 
       (.I0(current_rd_data[6]),
        .I1(avs_address[23]),
        .I2(\avs_readdata[15]_INST_0_i_1_n_0 ),
        .I3(current_ctrl_state[6]),
        .I4(err_counter_o[6]),
        .I5(\avs_readdata[15]_INST_0_i_2_n_0 ),
        .O(\^avs_readdata [6]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \avs_readdata[7]_INST_0 
       (.I0(current_rd_data[7]),
        .I1(avs_address[23]),
        .I2(\avs_readdata[15]_INST_0_i_1_n_0 ),
        .I3(current_ctrl_state[7]),
        .I4(err_counter_o[7]),
        .I5(\avs_readdata[15]_INST_0_i_2_n_0 ),
        .O(\^avs_readdata [7]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \avs_readdata[8]_INST_0 
       (.I0(current_rd_data[8]),
        .I1(avs_address[23]),
        .I2(\avs_readdata[15]_INST_0_i_1_n_0 ),
        .I3(current_ctrl_state[8]),
        .I4(err_counter_o[8]),
        .I5(\avs_readdata[15]_INST_0_i_2_n_0 ),
        .O(\^avs_readdata [8]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \avs_readdata[9]_INST_0 
       (.I0(current_rd_data[9]),
        .I1(avs_address[23]),
        .I2(\avs_readdata[15]_INST_0_i_1_n_0 ),
        .I3(current_ctrl_state[9]),
        .I4(err_counter_o[9]),
        .I5(\avs_readdata[15]_INST_0_i_2_n_0 ),
        .O(\^avs_readdata [9]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    avs_readdatavalid_reg
       (.CLR(temp_waitrequest1),
        .D(avs_readdatavalid_reg_i_1_n_0),
        .G(1'b1),
        .GE(1'b1),
        .Q(avs_readdatavalid));
  (* SOFT_HLUTNM = "soft_lutpair157" *) 
  LUT3 #(
    .INIT(8'h74)) 
    avs_readdatavalid_reg_i_1
       (.I0(temp_waitrequest_reg_n_0),
        .I1(avs_address[23]),
        .I2(rd_op_done_o),
        .O(avs_readdatavalid_reg_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    avs_readdatavalid_reg_i_2
       (.I0(mem_ready_o),
        .O(temp_waitrequest1));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    avs_waitrequest_reg
       (.CLR(avs_waitrequest_reg_i_3_n_0),
        .D(avs_waitrequest_reg_i_1_n_0),
        .G(avs_waitrequest_reg_i_2_n_0),
        .GE(1'b1),
        .Q(avs_waitrequest));
  LUT6 #(
    .INIT(64'h070703000F070F00)) 
    avs_waitrequest_reg_i_1
       (.I0(rd_grnt_o),
        .I1(mem_ready_o),
        .I2(avs_address[23]),
        .I3(avs_write),
        .I4(avs_read),
        .I5(wr_grnt_o),
        .O(avs_waitrequest_reg_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair156" *) 
  LUT2 #(
    .INIT(4'h7)) 
    avs_waitrequest_reg_i_2
       (.I0(mem_ready_o),
        .I1(avs_address[23]),
        .O(avs_waitrequest_reg_i_2_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    avs_waitrequest_reg_i_3
       (.I0(avs_address[23]),
        .I1(mem_ready_o),
        .O(avs_waitrequest_reg_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \current_ctrl_state_reg[0] 
       (.C(csi_clock),
        .CE(rsi_reset_n),
        .D(ctrl_state_o[0]),
        .Q(current_ctrl_state[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_ctrl_state_reg[10] 
       (.C(csi_clock),
        .CE(rsi_reset_n),
        .D(ctrl_state_o[10]),
        .Q(current_ctrl_state[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_ctrl_state_reg[11] 
       (.C(csi_clock),
        .CE(rsi_reset_n),
        .D(ctrl_state_o[11]),
        .Q(current_ctrl_state[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_ctrl_state_reg[12] 
       (.C(csi_clock),
        .CE(rsi_reset_n),
        .D(ctrl_state_o[12]),
        .Q(current_ctrl_state[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_ctrl_state_reg[13] 
       (.C(csi_clock),
        .CE(rsi_reset_n),
        .D(ctrl_state_o[13]),
        .Q(current_ctrl_state[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_ctrl_state_reg[14] 
       (.C(csi_clock),
        .CE(rsi_reset_n),
        .D(ctrl_state_o[14]),
        .Q(current_ctrl_state[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_ctrl_state_reg[15] 
       (.C(csi_clock),
        .CE(rsi_reset_n),
        .D(ctrl_state_o[15]),
        .Q(current_ctrl_state[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_ctrl_state_reg[16] 
       (.C(csi_clock),
        .CE(rsi_reset_n),
        .D(ctrl_state_o[16]),
        .Q(current_ctrl_state[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_ctrl_state_reg[17] 
       (.C(csi_clock),
        .CE(rsi_reset_n),
        .D(ctrl_state_o[17]),
        .Q(current_ctrl_state[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_ctrl_state_reg[18] 
       (.C(csi_clock),
        .CE(rsi_reset_n),
        .D(ctrl_state_o[18]),
        .Q(current_ctrl_state[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_ctrl_state_reg[19] 
       (.C(csi_clock),
        .CE(rsi_reset_n),
        .D(ctrl_state_o[19]),
        .Q(current_ctrl_state[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_ctrl_state_reg[1] 
       (.C(csi_clock),
        .CE(rsi_reset_n),
        .D(ctrl_state_o[1]),
        .Q(current_ctrl_state[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_ctrl_state_reg[20] 
       (.C(csi_clock),
        .CE(rsi_reset_n),
        .D(ctrl_state_o[20]),
        .Q(current_ctrl_state[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_ctrl_state_reg[21] 
       (.C(csi_clock),
        .CE(rsi_reset_n),
        .D(ctrl_state_o[21]),
        .Q(current_ctrl_state[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_ctrl_state_reg[22] 
       (.C(csi_clock),
        .CE(rsi_reset_n),
        .D(ctrl_state_o[22]),
        .Q(current_ctrl_state[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_ctrl_state_reg[23] 
       (.C(csi_clock),
        .CE(rsi_reset_n),
        .D(ctrl_state_o[23]),
        .Q(current_ctrl_state[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_ctrl_state_reg[24] 
       (.C(csi_clock),
        .CE(rsi_reset_n),
        .D(ctrl_state_o[24]),
        .Q(current_ctrl_state[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_ctrl_state_reg[25] 
       (.C(csi_clock),
        .CE(rsi_reset_n),
        .D(ctrl_state_o[25]),
        .Q(current_ctrl_state[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_ctrl_state_reg[26] 
       (.C(csi_clock),
        .CE(rsi_reset_n),
        .D(ctrl_state_o[26]),
        .Q(current_ctrl_state[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_ctrl_state_reg[2] 
       (.C(csi_clock),
        .CE(rsi_reset_n),
        .D(ctrl_state_o[2]),
        .Q(current_ctrl_state[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_ctrl_state_reg[3] 
       (.C(csi_clock),
        .CE(rsi_reset_n),
        .D(ctrl_state_o[3]),
        .Q(current_ctrl_state[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_ctrl_state_reg[4] 
       (.C(csi_clock),
        .CE(rsi_reset_n),
        .D(ctrl_state_o[4]),
        .Q(current_ctrl_state[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_ctrl_state_reg[5] 
       (.C(csi_clock),
        .CE(rsi_reset_n),
        .D(ctrl_state_o[5]),
        .Q(current_ctrl_state[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_ctrl_state_reg[6] 
       (.C(csi_clock),
        .CE(rsi_reset_n),
        .D(ctrl_state_o[6]),
        .Q(current_ctrl_state[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_ctrl_state_reg[7] 
       (.C(csi_clock),
        .CE(rsi_reset_n),
        .D(ctrl_state_o[7]),
        .Q(current_ctrl_state[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_ctrl_state_reg[8] 
       (.C(csi_clock),
        .CE(rsi_reset_n),
        .D(ctrl_state_o[8]),
        .Q(current_ctrl_state[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_ctrl_state_reg[9] 
       (.C(csi_clock),
        .CE(rsi_reset_n),
        .D(ctrl_state_o[9]),
        .Q(current_ctrl_state[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair154" *) 
  LUT5 #(
    .INIT(32'hAAAEAAA2)) 
    \current_en_scrubbing[2]_i_1 
       (.I0(\current_en_scrubbing_reg_n_0_[2] ),
        .I1(avs_address[2]),
        .I2(avs_address[0]),
        .I3(sdram_ctrl_tmr_inst_i_20_n_0),
        .I4(avs_writedata[0]),
        .O(next_en_scrubbing));
  LUT1 #(
    .INIT(2'h1)) 
    \current_en_scrubbing[2]_i_2 
       (.I0(rsi_reset_n),
        .O(current_ctrl_state2));
  (* syn_preserve = "true" *) 
  FDPE #(
    .INIT(1'b1)) 
    \current_en_scrubbing_reg[2] 
       (.C(csi_clock),
        .CE(1'b1),
        .D(next_en_scrubbing),
        .PRE(current_ctrl_state2),
        .Q(\current_en_scrubbing_reg_n_0_[2] ));
  FDRE #(
    .INIT(1'b0)) 
    \current_rd_data_reg[0] 
       (.C(csi_clock),
        .CE(rsi_reset_n),
        .D(voted_data_o[0]),
        .Q(current_rd_data[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_rd_data_reg[10] 
       (.C(csi_clock),
        .CE(rsi_reset_n),
        .D(voted_data_o[10]),
        .Q(current_rd_data[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_rd_data_reg[11] 
       (.C(csi_clock),
        .CE(rsi_reset_n),
        .D(voted_data_o[11]),
        .Q(current_rd_data[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_rd_data_reg[12] 
       (.C(csi_clock),
        .CE(rsi_reset_n),
        .D(voted_data_o[12]),
        .Q(current_rd_data[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_rd_data_reg[13] 
       (.C(csi_clock),
        .CE(rsi_reset_n),
        .D(voted_data_o[13]),
        .Q(current_rd_data[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_rd_data_reg[14] 
       (.C(csi_clock),
        .CE(rsi_reset_n),
        .D(voted_data_o[14]),
        .Q(current_rd_data[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_rd_data_reg[15] 
       (.C(csi_clock),
        .CE(rsi_reset_n),
        .D(voted_data_o[15]),
        .Q(current_rd_data[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_rd_data_reg[1] 
       (.C(csi_clock),
        .CE(rsi_reset_n),
        .D(voted_data_o[1]),
        .Q(current_rd_data[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_rd_data_reg[2] 
       (.C(csi_clock),
        .CE(rsi_reset_n),
        .D(voted_data_o[2]),
        .Q(current_rd_data[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_rd_data_reg[3] 
       (.C(csi_clock),
        .CE(rsi_reset_n),
        .D(voted_data_o[3]),
        .Q(current_rd_data[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_rd_data_reg[4] 
       (.C(csi_clock),
        .CE(rsi_reset_n),
        .D(voted_data_o[4]),
        .Q(current_rd_data[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_rd_data_reg[5] 
       (.C(csi_clock),
        .CE(rsi_reset_n),
        .D(voted_data_o[5]),
        .Q(current_rd_data[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_rd_data_reg[6] 
       (.C(csi_clock),
        .CE(rsi_reset_n),
        .D(voted_data_o[6]),
        .Q(current_rd_data[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_rd_data_reg[7] 
       (.C(csi_clock),
        .CE(rsi_reset_n),
        .D(voted_data_o[7]),
        .Q(current_rd_data[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_rd_data_reg[8] 
       (.C(csi_clock),
        .CE(rsi_reset_n),
        .D(voted_data_o[8]),
        .Q(current_rd_data[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_rd_data_reg[9] 
       (.C(csi_clock),
        .CE(rsi_reset_n),
        .D(voted_data_o[9]),
        .Q(current_rd_data[9]),
        .R(1'b0));
  (* ACT_TO_RW_CYCLES = "2" *) 
  (* BANK_WIDTH = "2" *) 
  (* BURST_LENGTH = "0" *) 
  (* CAS_LAT_CYCLES = "2" *) 
  (* COLS_WIDTH = "9" *) 
  (* DATA_WIDTH = "16" *) 
  (* DQM_WIDTH = "2" *) 
  (* DRIVE_STRENGTH = "0" *) 
  (* EXT_MODE_REG_EN = "TRUE" *) 
  (* GEN_ERR_INJ = "FALSE" *) 
  (* IN_DATA_TO_PRE = "2" *) 
  (* MODE_REG_CYCLES = "2" *) 
  (* NOP_BOOT_CYCLES = "20000" *) 
  (* PRECH_COMMAND_PERIOD = "2" *) 
  (* RAM_BANKS = "4" *) 
  (* RAM_COLS = "512" *) 
  (* RAM_ROWS = "8192" *) 
  (* REF_COMMAND_COUNT = "8" *) 
  (* REF_COMMAND_PERIOD = "8" *) 
  (* REF_PERIOD = "32" *) 
  (* ROW_WIDTH = "13" *) 
  (* SCRUBBER_WAIT_CYCLES = "64" *) 
  (* TMR_COLS = "384" *) 
  DemoSDRAM_sdram_ctrl_tmr_avalon_0_0_sdram_ctrl_tmr_top sdram_ctrl_tmr_inst
       (.addr_o(addr_o),
        .bank_o(bank_o),
        .cas_o(cas_o),
        .cke_o(cke_o),
        .clk_i(csi_clock),
        .cs_o(cs_o),
        .ctrl_state_o(ctrl_state_o),
        .dataQ_io(dataQ_io),
        .dqm_o(dqm_o),
        .en_err_test_i(1'b0),
        .en_scrubbing_i(\current_en_scrubbing_reg_n_0_[2] ),
        .err_counter_o(err_counter_o),
        .err_detect_o(err_detect_o),
        .healing_proc_run(healing_proc_run_o),
        .mem_ready_o(mem_ready_o),
        .ras_o(ras_o),
        .rd_data_o(voted_data_o),
        .rd_grnt_o(rd_grnt_o),
        .rd_op_done_o(rd_op_done_o),
        .rd_req_i(rd_req_int),
        .rst_err_counter_i(rst_err_counter_int),
        .rstn_i(rsi_reset_n),
        .rw_addr_i(avs_address[22:0]),
        .scrubbing_proc_run(scrubbing_proc_run_o),
        .we_o(we_o),
        .wr_data_i(wr_data_int),
        .wr_grnt_o(wr_grnt_o),
        .wr_op_done_o(NLW_sdram_ctrl_tmr_inst_wr_op_done_o_UNCONNECTED),
        .wr_req_i(wr_req_int));
  (* SOFT_HLUTNM = "soft_lutpair154" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    sdram_ctrl_tmr_inst_i_1
       (.I0(sdram_ctrl_tmr_inst_i_20_n_0),
        .I1(avs_address[2]),
        .I2(avs_address[0]),
        .O(rst_err_counter_int));
  (* SOFT_HLUTNM = "soft_lutpair162" *) 
  LUT3 #(
    .INIT(8'h70)) 
    sdram_ctrl_tmr_inst_i_10
       (.I0(avs_address[23]),
        .I1(avs_write),
        .I2(avs_writedata[9]),
        .O(wr_data_int[9]));
  (* SOFT_HLUTNM = "soft_lutpair159" *) 
  LUT3 #(
    .INIT(8'h70)) 
    sdram_ctrl_tmr_inst_i_11
       (.I0(avs_address[23]),
        .I1(avs_write),
        .I2(avs_writedata[8]),
        .O(wr_data_int[8]));
  (* SOFT_HLUTNM = "soft_lutpair161" *) 
  LUT3 #(
    .INIT(8'h70)) 
    sdram_ctrl_tmr_inst_i_12
       (.I0(avs_address[23]),
        .I1(avs_write),
        .I2(avs_writedata[7]),
        .O(wr_data_int[7]));
  (* SOFT_HLUTNM = "soft_lutpair161" *) 
  LUT3 #(
    .INIT(8'h70)) 
    sdram_ctrl_tmr_inst_i_13
       (.I0(avs_address[23]),
        .I1(avs_write),
        .I2(avs_writedata[6]),
        .O(wr_data_int[6]));
  (* SOFT_HLUTNM = "soft_lutpair158" *) 
  LUT3 #(
    .INIT(8'h70)) 
    sdram_ctrl_tmr_inst_i_14
       (.I0(avs_address[23]),
        .I1(avs_write),
        .I2(avs_writedata[5]),
        .O(wr_data_int[5]));
  (* SOFT_HLUTNM = "soft_lutpair160" *) 
  LUT3 #(
    .INIT(8'h70)) 
    sdram_ctrl_tmr_inst_i_15
       (.I0(avs_address[23]),
        .I1(avs_write),
        .I2(avs_writedata[4]),
        .O(wr_data_int[4]));
  (* SOFT_HLUTNM = "soft_lutpair160" *) 
  LUT3 #(
    .INIT(8'h70)) 
    sdram_ctrl_tmr_inst_i_16
       (.I0(avs_address[23]),
        .I1(avs_write),
        .I2(avs_writedata[3]),
        .O(wr_data_int[3]));
  (* SOFT_HLUTNM = "soft_lutpair159" *) 
  LUT3 #(
    .INIT(8'h70)) 
    sdram_ctrl_tmr_inst_i_17
       (.I0(avs_address[23]),
        .I1(avs_write),
        .I2(avs_writedata[2]),
        .O(wr_data_int[2]));
  (* SOFT_HLUTNM = "soft_lutpair158" *) 
  LUT3 #(
    .INIT(8'h70)) 
    sdram_ctrl_tmr_inst_i_18
       (.I0(avs_address[23]),
        .I1(avs_write),
        .I2(avs_writedata[1]),
        .O(wr_data_int[1]));
  (* SOFT_HLUTNM = "soft_lutpair157" *) 
  LUT3 #(
    .INIT(8'h70)) 
    sdram_ctrl_tmr_inst_i_19
       (.I0(avs_address[23]),
        .I1(avs_write),
        .I2(avs_writedata[0]),
        .O(wr_data_int[0]));
  (* SOFT_HLUTNM = "soft_lutpair153" *) 
  LUT2 #(
    .INIT(4'h2)) 
    sdram_ctrl_tmr_inst_i_2
       (.I0(avs_write),
        .I1(avs_address[23]),
        .O(wr_req_int));
  (* SOFT_HLUTNM = "soft_lutpair153" *) 
  LUT5 #(
    .INIT(32'hFFFFFFDF)) 
    sdram_ctrl_tmr_inst_i_20
       (.I0(avs_write),
        .I1(avs_address[4]),
        .I2(avs_address[23]),
        .I3(avs_address[3]),
        .I4(avs_address[1]),
        .O(sdram_ctrl_tmr_inst_i_20_n_0));
  (* SOFT_HLUTNM = "soft_lutpair155" *) 
  LUT2 #(
    .INIT(4'h2)) 
    sdram_ctrl_tmr_inst_i_3
       (.I0(avs_read),
        .I1(avs_address[23]),
        .O(rd_req_int));
  (* SOFT_HLUTNM = "soft_lutpair163" *) 
  LUT3 #(
    .INIT(8'h70)) 
    sdram_ctrl_tmr_inst_i_4
       (.I0(avs_address[23]),
        .I1(avs_write),
        .I2(avs_writedata[15]),
        .O(wr_data_int[15]));
  LUT3 #(
    .INIT(8'h70)) 
    sdram_ctrl_tmr_inst_i_5
       (.I0(avs_address[23]),
        .I1(avs_write),
        .I2(avs_writedata[14]),
        .O(wr_data_int[14]));
  (* SOFT_HLUTNM = "soft_lutpair164" *) 
  LUT3 #(
    .INIT(8'h70)) 
    sdram_ctrl_tmr_inst_i_6
       (.I0(avs_address[23]),
        .I1(avs_write),
        .I2(avs_writedata[13]),
        .O(wr_data_int[13]));
  (* SOFT_HLUTNM = "soft_lutpair164" *) 
  LUT3 #(
    .INIT(8'h70)) 
    sdram_ctrl_tmr_inst_i_7
       (.I0(avs_address[23]),
        .I1(avs_write),
        .I2(avs_writedata[12]),
        .O(wr_data_int[12]));
  (* SOFT_HLUTNM = "soft_lutpair163" *) 
  LUT3 #(
    .INIT(8'h70)) 
    sdram_ctrl_tmr_inst_i_8
       (.I0(avs_address[23]),
        .I1(avs_write),
        .I2(avs_writedata[11]),
        .O(wr_data_int[11]));
  (* SOFT_HLUTNM = "soft_lutpair162" *) 
  LUT3 #(
    .INIT(8'h70)) 
    sdram_ctrl_tmr_inst_i_9
       (.I0(avs_address[23]),
        .I1(avs_write),
        .I2(avs_writedata[10]),
        .O(wr_data_int[10]));
  (* SOFT_HLUTNM = "soft_lutpair156" *) 
  LUT4 #(
    .INIT(16'h3331)) 
    temp_waitrequest_i_1
       (.I0(mem_ready_o),
        .I1(temp_waitrequest_reg_n_0),
        .I2(avs_read),
        .I3(avs_write),
        .O(temp_waitrequest));
  FDRE #(
    .INIT(1'b0)) 
    temp_waitrequest_reg
       (.C(csi_clock),
        .CE(1'b1),
        .D(temp_waitrequest),
        .Q(temp_waitrequest_reg_n_0),
        .R(1'b0));
endmodule

(* BANK_WIDTH = "2" *) (* COLS_WIDTH = "9" *) (* DATA_WIDTH = "16" *) 
(* DQM_WIDTH = "2" *) (* ORIG_REF_NAME = "sdram_ctrl_tmr_healer" *) (* RAM_BANKS = "4" *) 
(* RAM_COLS = "512" *) (* RAM_ROWS = "8192" *) (* ROW_WIDTH = "13" *) 
(* TMR_COLS = "384" *) 
module DemoSDRAM_sdram_ctrl_tmr_avalon_0_0_sdram_ctrl_tmr_healer
   (rstn_i,
    clk_i,
    mem_ready_i,
    wr_grnt_i,
    wr_done_i,
    rst_err_counter_i,
    voted_error_count_i,
    voted_data_i,
    feedback_addr_i,
    healing_o,
    healing_wr_req_o,
    healing_addr_o,
    healing_data_o,
    healing_state_o,
    error_count_o);
  input rstn_i;
  input clk_i;
  input mem_ready_i;
  input wr_grnt_i;
  input wr_done_i;
  input rst_err_counter_i;
  input [15:0]voted_error_count_i;
  input [15:0]voted_data_i;
  input [23:0]feedback_addr_i;
  output healing_o;
  output healing_wr_req_o;
  output [23:0]healing_addr_o;
  output [15:0]healing_data_o;
  output [2:0]healing_state_o;
  output [15:0]error_count_o;

  wire clk_i;
  wire current_err_count;
  wire \current_err_count[11]_i_2_n_0 ;
  wire \current_err_count[11]_i_3_n_0 ;
  wire \current_err_count[11]_i_4_n_0 ;
  wire \current_err_count[11]_i_5_n_0 ;
  wire \current_err_count[11]_i_6_n_0 ;
  wire \current_err_count[11]_i_7_n_0 ;
  wire \current_err_count[11]_i_8_n_0 ;
  wire \current_err_count[11]_i_9_n_0 ;
  wire \current_err_count[15]_i_3_n_0 ;
  wire \current_err_count[15]_i_4_n_0 ;
  wire \current_err_count[15]_i_5_n_0 ;
  wire \current_err_count[15]_i_6_n_0 ;
  wire \current_err_count[15]_i_7_n_0 ;
  wire \current_err_count[15]_i_8_n_0 ;
  wire \current_err_count[15]_i_9_n_0 ;
  wire \current_err_count[3]_i_2_n_0 ;
  wire \current_err_count[3]_i_3_n_0 ;
  wire \current_err_count[3]_i_4_n_0 ;
  wire \current_err_count[3]_i_5_n_0 ;
  wire \current_err_count[3]_i_6_n_0 ;
  wire \current_err_count[3]_i_7_n_0 ;
  wire \current_err_count[3]_i_8_n_0 ;
  wire \current_err_count[3]_i_9_n_0 ;
  wire \current_err_count[7]_i_2_n_0 ;
  wire \current_err_count[7]_i_3_n_0 ;
  wire \current_err_count[7]_i_4_n_0 ;
  wire \current_err_count[7]_i_5_n_0 ;
  wire \current_err_count[7]_i_6_n_0 ;
  wire \current_err_count[7]_i_7_n_0 ;
  wire \current_err_count[7]_i_8_n_0 ;
  wire \current_err_count[7]_i_9_n_0 ;
  wire \current_err_count_reg[11]_i_1_n_0 ;
  wire \current_err_count_reg[11]_i_1_n_1 ;
  wire \current_err_count_reg[11]_i_1_n_2 ;
  wire \current_err_count_reg[11]_i_1_n_3 ;
  wire \current_err_count_reg[11]_i_1_n_4 ;
  wire \current_err_count_reg[11]_i_1_n_5 ;
  wire \current_err_count_reg[11]_i_1_n_6 ;
  wire \current_err_count_reg[11]_i_1_n_7 ;
  wire \current_err_count_reg[15]_i_2_n_1 ;
  wire \current_err_count_reg[15]_i_2_n_2 ;
  wire \current_err_count_reg[15]_i_2_n_3 ;
  wire \current_err_count_reg[15]_i_2_n_4 ;
  wire \current_err_count_reg[15]_i_2_n_5 ;
  wire \current_err_count_reg[15]_i_2_n_6 ;
  wire \current_err_count_reg[15]_i_2_n_7 ;
  wire \current_err_count_reg[3]_i_1_n_0 ;
  wire \current_err_count_reg[3]_i_1_n_1 ;
  wire \current_err_count_reg[3]_i_1_n_2 ;
  wire \current_err_count_reg[3]_i_1_n_3 ;
  wire \current_err_count_reg[3]_i_1_n_4 ;
  wire \current_err_count_reg[3]_i_1_n_5 ;
  wire \current_err_count_reg[3]_i_1_n_6 ;
  wire \current_err_count_reg[3]_i_1_n_7 ;
  wire \current_err_count_reg[7]_i_1_n_0 ;
  wire \current_err_count_reg[7]_i_1_n_1 ;
  wire \current_err_count_reg[7]_i_1_n_2 ;
  wire \current_err_count_reg[7]_i_1_n_3 ;
  wire \current_err_count_reg[7]_i_1_n_4 ;
  wire \current_err_count_reg[7]_i_1_n_5 ;
  wire \current_err_count_reg[7]_i_1_n_6 ;
  wire \current_err_count_reg[7]_i_1_n_7 ;
  wire current_heal_wr_req;
  wire current_heal_wr_req_i_3_n_0;
  wire current_healing;
  wire current_healing_i_1_n_0;
  wire current_healing_i_2_n_0;
  wire current_healing_i_3_n_0;
  wire current_healing_i_5_n_0;
  wire current_healing_i_6_n_0;
  wire current_healing_i_7_n_0;
  wire current_healing_i_8_n_0;
  wire \current_healing_state_reg_n_0_[0] ;
  wire \current_healing_state_reg_n_0_[1] ;
  wire \current_healing_state_reg_n_0_[2] ;
  wire [15:0]error_count_o;
  wire [23:0]feedback_addr_i;
  wire healing_o;
  wire [2:0]healing_state_o;
  wire healing_wr_req_o;
  wire mem_ready_i;
  wire next_healing;
  wire [0:0]next_healing_state;
  wire rst_err_counter_i;
  wire rstn_i;
  wire [15:0]voted_data_i;
  wire [15:0]voted_error_count_i;
  wire wr_done_i;
  wire wr_grnt_i;
  wire [3:3]\NLW_current_err_count_reg[15]_i_2_CO_UNCONNECTED ;

  assign healing_addr_o[23:0] = feedback_addr_i;
  assign healing_data_o[15:0] = voted_data_i;
  LUT2 #(
    .INIT(4'h8)) 
    \current_err_count[11]_i_2 
       (.I0(voted_error_count_i[11]),
        .I1(rst_err_counter_i),
        .O(\current_err_count[11]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \current_err_count[11]_i_3 
       (.I0(voted_error_count_i[10]),
        .I1(rst_err_counter_i),
        .O(\current_err_count[11]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \current_err_count[11]_i_4 
       (.I0(voted_error_count_i[9]),
        .I1(rst_err_counter_i),
        .O(\current_err_count[11]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \current_err_count[11]_i_5 
       (.I0(voted_error_count_i[8]),
        .I1(rst_err_counter_i),
        .O(\current_err_count[11]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h60)) 
    \current_err_count[11]_i_6 
       (.I0(voted_error_count_i[11]),
        .I1(error_count_o[11]),
        .I2(rst_err_counter_i),
        .O(\current_err_count[11]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h60)) 
    \current_err_count[11]_i_7 
       (.I0(voted_error_count_i[10]),
        .I1(error_count_o[10]),
        .I2(rst_err_counter_i),
        .O(\current_err_count[11]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h60)) 
    \current_err_count[11]_i_8 
       (.I0(voted_error_count_i[9]),
        .I1(error_count_o[9]),
        .I2(rst_err_counter_i),
        .O(\current_err_count[11]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h60)) 
    \current_err_count[11]_i_9 
       (.I0(voted_error_count_i[8]),
        .I1(error_count_o[8]),
        .I2(rst_err_counter_i),
        .O(\current_err_count[11]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0200FFFF00000000)) 
    \current_err_count[15]_i_1 
       (.I0(\current_healing_state_reg_n_0_[0] ),
        .I1(\current_healing_state_reg_n_0_[2] ),
        .I2(\current_healing_state_reg_n_0_[1] ),
        .I3(current_healing_i_3_n_0),
        .I4(rst_err_counter_i),
        .I5(mem_ready_i),
        .O(current_err_count));
  LUT2 #(
    .INIT(4'h8)) 
    \current_err_count[15]_i_3 
       (.I0(voted_error_count_i[14]),
        .I1(rst_err_counter_i),
        .O(\current_err_count[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \current_err_count[15]_i_4 
       (.I0(voted_error_count_i[13]),
        .I1(rst_err_counter_i),
        .O(\current_err_count[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \current_err_count[15]_i_5 
       (.I0(voted_error_count_i[12]),
        .I1(rst_err_counter_i),
        .O(\current_err_count[15]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h48)) 
    \current_err_count[15]_i_6 
       (.I0(error_count_o[15]),
        .I1(rst_err_counter_i),
        .I2(voted_error_count_i[15]),
        .O(\current_err_count[15]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h60)) 
    \current_err_count[15]_i_7 
       (.I0(voted_error_count_i[14]),
        .I1(error_count_o[14]),
        .I2(rst_err_counter_i),
        .O(\current_err_count[15]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h60)) 
    \current_err_count[15]_i_8 
       (.I0(voted_error_count_i[13]),
        .I1(error_count_o[13]),
        .I2(rst_err_counter_i),
        .O(\current_err_count[15]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h60)) 
    \current_err_count[15]_i_9 
       (.I0(voted_error_count_i[12]),
        .I1(error_count_o[12]),
        .I2(rst_err_counter_i),
        .O(\current_err_count[15]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \current_err_count[3]_i_2 
       (.I0(voted_error_count_i[3]),
        .I1(rst_err_counter_i),
        .O(\current_err_count[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \current_err_count[3]_i_3 
       (.I0(voted_error_count_i[2]),
        .I1(rst_err_counter_i),
        .O(\current_err_count[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \current_err_count[3]_i_4 
       (.I0(voted_error_count_i[1]),
        .I1(rst_err_counter_i),
        .O(\current_err_count[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \current_err_count[3]_i_5 
       (.I0(voted_error_count_i[0]),
        .I1(rst_err_counter_i),
        .O(\current_err_count[3]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h60)) 
    \current_err_count[3]_i_6 
       (.I0(voted_error_count_i[3]),
        .I1(error_count_o[3]),
        .I2(rst_err_counter_i),
        .O(\current_err_count[3]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h60)) 
    \current_err_count[3]_i_7 
       (.I0(voted_error_count_i[2]),
        .I1(error_count_o[2]),
        .I2(rst_err_counter_i),
        .O(\current_err_count[3]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h60)) 
    \current_err_count[3]_i_8 
       (.I0(voted_error_count_i[1]),
        .I1(error_count_o[1]),
        .I2(rst_err_counter_i),
        .O(\current_err_count[3]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h60)) 
    \current_err_count[3]_i_9 
       (.I0(voted_error_count_i[0]),
        .I1(error_count_o[0]),
        .I2(rst_err_counter_i),
        .O(\current_err_count[3]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \current_err_count[7]_i_2 
       (.I0(voted_error_count_i[7]),
        .I1(rst_err_counter_i),
        .O(\current_err_count[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \current_err_count[7]_i_3 
       (.I0(voted_error_count_i[6]),
        .I1(rst_err_counter_i),
        .O(\current_err_count[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \current_err_count[7]_i_4 
       (.I0(voted_error_count_i[5]),
        .I1(rst_err_counter_i),
        .O(\current_err_count[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \current_err_count[7]_i_5 
       (.I0(voted_error_count_i[4]),
        .I1(rst_err_counter_i),
        .O(\current_err_count[7]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h60)) 
    \current_err_count[7]_i_6 
       (.I0(voted_error_count_i[7]),
        .I1(error_count_o[7]),
        .I2(rst_err_counter_i),
        .O(\current_err_count[7]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h60)) 
    \current_err_count[7]_i_7 
       (.I0(voted_error_count_i[6]),
        .I1(error_count_o[6]),
        .I2(rst_err_counter_i),
        .O(\current_err_count[7]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h60)) 
    \current_err_count[7]_i_8 
       (.I0(voted_error_count_i[5]),
        .I1(error_count_o[5]),
        .I2(rst_err_counter_i),
        .O(\current_err_count[7]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h60)) 
    \current_err_count[7]_i_9 
       (.I0(voted_error_count_i[4]),
        .I1(error_count_o[4]),
        .I2(rst_err_counter_i),
        .O(\current_err_count[7]_i_9_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \current_err_count_reg[0] 
       (.C(clk_i),
        .CE(current_err_count),
        .CLR(current_healing_i_2_n_0),
        .D(\current_err_count_reg[3]_i_1_n_7 ),
        .Q(error_count_o[0]));
  FDCE #(
    .INIT(1'b0)) 
    \current_err_count_reg[10] 
       (.C(clk_i),
        .CE(current_err_count),
        .CLR(current_healing_i_2_n_0),
        .D(\current_err_count_reg[11]_i_1_n_5 ),
        .Q(error_count_o[10]));
  FDCE #(
    .INIT(1'b0)) 
    \current_err_count_reg[11] 
       (.C(clk_i),
        .CE(current_err_count),
        .CLR(current_healing_i_2_n_0),
        .D(\current_err_count_reg[11]_i_1_n_4 ),
        .Q(error_count_o[11]));
  CARRY4 \current_err_count_reg[11]_i_1 
       (.CI(\current_err_count_reg[7]_i_1_n_0 ),
        .CO({\current_err_count_reg[11]_i_1_n_0 ,\current_err_count_reg[11]_i_1_n_1 ,\current_err_count_reg[11]_i_1_n_2 ,\current_err_count_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\current_err_count[11]_i_2_n_0 ,\current_err_count[11]_i_3_n_0 ,\current_err_count[11]_i_4_n_0 ,\current_err_count[11]_i_5_n_0 }),
        .O({\current_err_count_reg[11]_i_1_n_4 ,\current_err_count_reg[11]_i_1_n_5 ,\current_err_count_reg[11]_i_1_n_6 ,\current_err_count_reg[11]_i_1_n_7 }),
        .S({\current_err_count[11]_i_6_n_0 ,\current_err_count[11]_i_7_n_0 ,\current_err_count[11]_i_8_n_0 ,\current_err_count[11]_i_9_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \current_err_count_reg[12] 
       (.C(clk_i),
        .CE(current_err_count),
        .CLR(current_healing_i_2_n_0),
        .D(\current_err_count_reg[15]_i_2_n_7 ),
        .Q(error_count_o[12]));
  FDCE #(
    .INIT(1'b0)) 
    \current_err_count_reg[13] 
       (.C(clk_i),
        .CE(current_err_count),
        .CLR(current_healing_i_2_n_0),
        .D(\current_err_count_reg[15]_i_2_n_6 ),
        .Q(error_count_o[13]));
  FDCE #(
    .INIT(1'b0)) 
    \current_err_count_reg[14] 
       (.C(clk_i),
        .CE(current_err_count),
        .CLR(current_healing_i_2_n_0),
        .D(\current_err_count_reg[15]_i_2_n_5 ),
        .Q(error_count_o[14]));
  FDCE #(
    .INIT(1'b0)) 
    \current_err_count_reg[15] 
       (.C(clk_i),
        .CE(current_err_count),
        .CLR(current_healing_i_2_n_0),
        .D(\current_err_count_reg[15]_i_2_n_4 ),
        .Q(error_count_o[15]));
  CARRY4 \current_err_count_reg[15]_i_2 
       (.CI(\current_err_count_reg[11]_i_1_n_0 ),
        .CO({\NLW_current_err_count_reg[15]_i_2_CO_UNCONNECTED [3],\current_err_count_reg[15]_i_2_n_1 ,\current_err_count_reg[15]_i_2_n_2 ,\current_err_count_reg[15]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\current_err_count[15]_i_3_n_0 ,\current_err_count[15]_i_4_n_0 ,\current_err_count[15]_i_5_n_0 }),
        .O({\current_err_count_reg[15]_i_2_n_4 ,\current_err_count_reg[15]_i_2_n_5 ,\current_err_count_reg[15]_i_2_n_6 ,\current_err_count_reg[15]_i_2_n_7 }),
        .S({\current_err_count[15]_i_6_n_0 ,\current_err_count[15]_i_7_n_0 ,\current_err_count[15]_i_8_n_0 ,\current_err_count[15]_i_9_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \current_err_count_reg[1] 
       (.C(clk_i),
        .CE(current_err_count),
        .CLR(current_healing_i_2_n_0),
        .D(\current_err_count_reg[3]_i_1_n_6 ),
        .Q(error_count_o[1]));
  FDCE #(
    .INIT(1'b0)) 
    \current_err_count_reg[2] 
       (.C(clk_i),
        .CE(current_err_count),
        .CLR(current_healing_i_2_n_0),
        .D(\current_err_count_reg[3]_i_1_n_5 ),
        .Q(error_count_o[2]));
  FDCE #(
    .INIT(1'b0)) 
    \current_err_count_reg[3] 
       (.C(clk_i),
        .CE(current_err_count),
        .CLR(current_healing_i_2_n_0),
        .D(\current_err_count_reg[3]_i_1_n_4 ),
        .Q(error_count_o[3]));
  CARRY4 \current_err_count_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\current_err_count_reg[3]_i_1_n_0 ,\current_err_count_reg[3]_i_1_n_1 ,\current_err_count_reg[3]_i_1_n_2 ,\current_err_count_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\current_err_count[3]_i_2_n_0 ,\current_err_count[3]_i_3_n_0 ,\current_err_count[3]_i_4_n_0 ,\current_err_count[3]_i_5_n_0 }),
        .O({\current_err_count_reg[3]_i_1_n_4 ,\current_err_count_reg[3]_i_1_n_5 ,\current_err_count_reg[3]_i_1_n_6 ,\current_err_count_reg[3]_i_1_n_7 }),
        .S({\current_err_count[3]_i_6_n_0 ,\current_err_count[3]_i_7_n_0 ,\current_err_count[3]_i_8_n_0 ,\current_err_count[3]_i_9_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \current_err_count_reg[4] 
       (.C(clk_i),
        .CE(current_err_count),
        .CLR(current_healing_i_2_n_0),
        .D(\current_err_count_reg[7]_i_1_n_7 ),
        .Q(error_count_o[4]));
  FDCE #(
    .INIT(1'b0)) 
    \current_err_count_reg[5] 
       (.C(clk_i),
        .CE(current_err_count),
        .CLR(current_healing_i_2_n_0),
        .D(\current_err_count_reg[7]_i_1_n_6 ),
        .Q(error_count_o[5]));
  FDCE #(
    .INIT(1'b0)) 
    \current_err_count_reg[6] 
       (.C(clk_i),
        .CE(current_err_count),
        .CLR(current_healing_i_2_n_0),
        .D(\current_err_count_reg[7]_i_1_n_5 ),
        .Q(error_count_o[6]));
  FDCE #(
    .INIT(1'b0)) 
    \current_err_count_reg[7] 
       (.C(clk_i),
        .CE(current_err_count),
        .CLR(current_healing_i_2_n_0),
        .D(\current_err_count_reg[7]_i_1_n_4 ),
        .Q(error_count_o[7]));
  CARRY4 \current_err_count_reg[7]_i_1 
       (.CI(\current_err_count_reg[3]_i_1_n_0 ),
        .CO({\current_err_count_reg[7]_i_1_n_0 ,\current_err_count_reg[7]_i_1_n_1 ,\current_err_count_reg[7]_i_1_n_2 ,\current_err_count_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\current_err_count[7]_i_2_n_0 ,\current_err_count[7]_i_3_n_0 ,\current_err_count[7]_i_4_n_0 ,\current_err_count[7]_i_5_n_0 }),
        .O({\current_err_count_reg[7]_i_1_n_4 ,\current_err_count_reg[7]_i_1_n_5 ,\current_err_count_reg[7]_i_1_n_6 ,\current_err_count_reg[7]_i_1_n_7 }),
        .S({\current_err_count[7]_i_6_n_0 ,\current_err_count[7]_i_7_n_0 ,\current_err_count[7]_i_8_n_0 ,\current_err_count[7]_i_9_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \current_err_count_reg[8] 
       (.C(clk_i),
        .CE(current_err_count),
        .CLR(current_healing_i_2_n_0),
        .D(\current_err_count_reg[11]_i_1_n_7 ),
        .Q(error_count_o[8]));
  FDCE #(
    .INIT(1'b0)) 
    \current_err_count_reg[9] 
       (.C(clk_i),
        .CE(current_err_count),
        .CLR(current_healing_i_2_n_0),
        .D(\current_err_count_reg[11]_i_1_n_6 ),
        .Q(error_count_o[9]));
  LUT4 #(
    .INIT(16'hEAAA)) 
    current_heal_wr_req_i_1
       (.I0(current_heal_wr_req_i_3_n_0),
        .I1(\current_healing_state_reg_n_0_[0] ),
        .I2(mem_ready_i),
        .I3(current_healing_i_3_n_0),
        .O(current_heal_wr_req));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    current_heal_wr_req_i_2
       (.I0(current_healing_i_3_n_0),
        .I1(\current_healing_state_reg_n_0_[1] ),
        .I2(\current_healing_state_reg_n_0_[2] ),
        .I3(\current_healing_state_reg_n_0_[0] ),
        .O(next_healing));
  LUT6 #(
    .INIT(64'hC8C8CCC4C8C88C84)) 
    current_heal_wr_req_i_3
       (.I0(\current_healing_state_reg_n_0_[1] ),
        .I1(mem_ready_i),
        .I2(\current_healing_state_reg_n_0_[2] ),
        .I3(wr_grnt_i),
        .I4(\current_healing_state_reg_n_0_[0] ),
        .I5(wr_done_i),
        .O(current_heal_wr_req_i_3_n_0));
  FDCE #(
    .INIT(1'b0)) 
    current_heal_wr_req_reg
       (.C(clk_i),
        .CE(current_heal_wr_req),
        .CLR(current_healing_i_2_n_0),
        .D(next_healing),
        .Q(healing_wr_req_o));
  LUT6 #(
    .INIT(64'h0200FFFF02000000)) 
    current_healing_i_1
       (.I0(current_healing_i_3_n_0),
        .I1(\current_healing_state_reg_n_0_[1] ),
        .I2(\current_healing_state_reg_n_0_[2] ),
        .I3(\current_healing_state_reg_n_0_[0] ),
        .I4(current_healing),
        .I5(healing_o),
        .O(current_healing_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    current_healing_i_2
       (.I0(rstn_i),
        .O(current_healing_i_2_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    current_healing_i_3
       (.I0(current_healing_i_5_n_0),
        .I1(current_healing_i_6_n_0),
        .I2(current_healing_i_7_n_0),
        .I3(current_healing_i_8_n_0),
        .O(current_healing_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'hCC88C8CC)) 
    current_healing_i_4
       (.I0(\current_healing_state_reg_n_0_[0] ),
        .I1(mem_ready_i),
        .I2(wr_done_i),
        .I3(\current_healing_state_reg_n_0_[2] ),
        .I4(\current_healing_state_reg_n_0_[1] ),
        .O(current_healing));
  LUT4 #(
    .INIT(16'hFFFE)) 
    current_healing_i_5
       (.I0(voted_error_count_i[5]),
        .I1(voted_error_count_i[4]),
        .I2(voted_error_count_i[7]),
        .I3(voted_error_count_i[6]),
        .O(current_healing_i_5_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    current_healing_i_6
       (.I0(voted_error_count_i[1]),
        .I1(voted_error_count_i[0]),
        .I2(voted_error_count_i[3]),
        .I3(voted_error_count_i[2]),
        .O(current_healing_i_6_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    current_healing_i_7
       (.I0(voted_error_count_i[13]),
        .I1(voted_error_count_i[12]),
        .I2(voted_error_count_i[15]),
        .I3(voted_error_count_i[14]),
        .O(current_healing_i_7_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    current_healing_i_8
       (.I0(voted_error_count_i[9]),
        .I1(voted_error_count_i[8]),
        .I2(voted_error_count_i[11]),
        .I3(voted_error_count_i[10]),
        .O(current_healing_i_8_n_0));
  (* syn_preserve = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    current_healing_reg
       (.C(clk_i),
        .CE(1'b1),
        .CLR(current_healing_i_2_n_0),
        .D(current_healing_i_1_n_0),
        .Q(healing_o));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hF9)) 
    \current_healing_state[0]_i_1 
       (.I0(\current_healing_state_reg_n_0_[1] ),
        .I1(\current_healing_state_reg_n_0_[0] ),
        .I2(\current_healing_state_reg_n_0_[2] ),
        .O(next_healing_state));
  (* syn_preserve = "true" *) 
  FDPE #(
    .INIT(1'b1)) 
    \current_healing_state_reg[0] 
       (.C(clk_i),
        .CE(current_heal_wr_req),
        .D(next_healing_state),
        .PRE(current_healing_i_2_n_0),
        .Q(\current_healing_state_reg_n_0_[0] ));
  (* syn_preserve = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \current_healing_state_reg[1] 
       (.C(clk_i),
        .CE(current_heal_wr_req),
        .CLR(current_healing_i_2_n_0),
        .D(healing_state_o[0]),
        .Q(\current_healing_state_reg_n_0_[1] ));
  (* syn_preserve = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \current_healing_state_reg[2] 
       (.C(clk_i),
        .CE(current_heal_wr_req),
        .CLR(current_healing_i_2_n_0),
        .D(healing_state_o[1]),
        .Q(\current_healing_state_reg_n_0_[2] ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \healing_state_o[0]_INST_0 
       (.I0(\current_healing_state_reg_n_0_[0] ),
        .I1(\current_healing_state_reg_n_0_[2] ),
        .I2(\current_healing_state_reg_n_0_[1] ),
        .O(healing_state_o[0]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \healing_state_o[1]_INST_0 
       (.I0(\current_healing_state_reg_n_0_[2] ),
        .I1(\current_healing_state_reg_n_0_[1] ),
        .I2(\current_healing_state_reg_n_0_[0] ),
        .O(healing_state_o[1]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \healing_state_o[2]_INST_0 
       (.I0(\current_healing_state_reg_n_0_[1] ),
        .I1(\current_healing_state_reg_n_0_[2] ),
        .I2(\current_healing_state_reg_n_0_[0] ),
        .O(healing_state_o[2]));
endmodule

(* BANK_WIDTH = "2" *) (* COLS_WIDTH = "9" *) (* DATA_WIDTH = "16" *) 
(* DQM_WIDTH = "2" *) (* ORIG_REF_NAME = "sdram_ctrl_tmr_scrubber" *) (* RAM_BANKS = "4" *) 
(* RAM_COLS = "512" *) (* RAM_ROWS = "8192" *) (* ROW_WIDTH = "13" *) 
(* SCRUBBER_WAIT_CYCLES = "64" *) (* TMR_COLS = "384" *) 
module DemoSDRAM_sdram_ctrl_tmr_avalon_0_0_sdram_ctrl_tmr_scrubber
   (rstn_i,
    clk_i,
    en_i,
    mem_ready_i,
    rd_grnt_i,
    rd_done_i,
    scrub_rd_req_o,
    scrubbing_o,
    scrubbing_addr_o,
    scrubbing_state_o);
  input rstn_i;
  input clk_i;
  input en_i;
  input mem_ready_i;
  input rd_grnt_i;
  input rd_done_i;
  output scrub_rd_req_o;
  output scrubbing_o;
  output [23:0]scrubbing_addr_o;
  output [2:0]scrubbing_state_o;

  wire \<const0> ;
  wire clk_i;
  wire current_scrub_bank_index;
  wire \current_scrub_bank_index[0]_i_1_n_0 ;
  wire \current_scrub_bank_index[1]_i_1_n_0 ;
  wire \current_scrub_bank_index[1]_i_3_n_0 ;
  wire \current_scrub_bank_index[1]_i_4_n_0 ;
  wire \current_scrub_bank_index[1]_i_5_n_0 ;
  wire \current_scrub_bank_index[1]_i_6_n_0 ;
  wire current_scrub_col_index;
  wire \current_scrub_col_index[7]_i_2_n_0 ;
  wire current_scrub_rd_req;
  wire current_scrub_rd_req_i_4_n_0;
  wire current_scrub_row_index;
  wire \current_scrub_row_index[0]_i_1_n_0 ;
  wire \current_scrub_row_index[12]_i_10_n_0 ;
  wire \current_scrub_row_index[12]_i_3_n_0 ;
  wire \current_scrub_row_index[12]_i_4_n_0 ;
  wire \current_scrub_row_index[12]_i_5_n_0 ;
  wire \current_scrub_row_index[12]_i_7_n_0 ;
  wire \current_scrub_row_index[12]_i_8_n_0 ;
  wire \current_scrub_row_index[12]_i_9_n_0 ;
  wire \current_scrub_row_index[4]_i_3_n_0 ;
  wire \current_scrub_row_index[4]_i_4_n_0 ;
  wire \current_scrub_row_index[4]_i_5_n_0 ;
  wire \current_scrub_row_index[4]_i_6_n_0 ;
  wire \current_scrub_row_index[8]_i_3_n_0 ;
  wire \current_scrub_row_index[8]_i_4_n_0 ;
  wire \current_scrub_row_index[8]_i_5_n_0 ;
  wire \current_scrub_row_index[8]_i_6_n_0 ;
  wire \current_scrub_row_index_reg[12]_i_6_n_1 ;
  wire \current_scrub_row_index_reg[12]_i_6_n_2 ;
  wire \current_scrub_row_index_reg[12]_i_6_n_3 ;
  wire \current_scrub_row_index_reg[12]_i_6_n_4 ;
  wire \current_scrub_row_index_reg[12]_i_6_n_5 ;
  wire \current_scrub_row_index_reg[12]_i_6_n_6 ;
  wire \current_scrub_row_index_reg[12]_i_6_n_7 ;
  wire \current_scrub_row_index_reg[4]_i_2_n_0 ;
  wire \current_scrub_row_index_reg[4]_i_2_n_1 ;
  wire \current_scrub_row_index_reg[4]_i_2_n_2 ;
  wire \current_scrub_row_index_reg[4]_i_2_n_3 ;
  wire \current_scrub_row_index_reg[4]_i_2_n_4 ;
  wire \current_scrub_row_index_reg[4]_i_2_n_5 ;
  wire \current_scrub_row_index_reg[4]_i_2_n_6 ;
  wire \current_scrub_row_index_reg[4]_i_2_n_7 ;
  wire \current_scrub_row_index_reg[8]_i_2_n_0 ;
  wire \current_scrub_row_index_reg[8]_i_2_n_1 ;
  wire \current_scrub_row_index_reg[8]_i_2_n_2 ;
  wire \current_scrub_row_index_reg[8]_i_2_n_3 ;
  wire \current_scrub_row_index_reg[8]_i_2_n_4 ;
  wire \current_scrub_row_index_reg[8]_i_2_n_5 ;
  wire \current_scrub_row_index_reg[8]_i_2_n_6 ;
  wire \current_scrub_row_index_reg[8]_i_2_n_7 ;
  wire current_scrub_wait_count;
  wire \current_scrub_wait_count[0]_i_1_n_0 ;
  wire \current_scrub_wait_count[1]_i_1_n_0 ;
  wire \current_scrub_wait_count[2]_i_1_n_0 ;
  wire \current_scrub_wait_count[3]_i_1_n_0 ;
  wire \current_scrub_wait_count[4]_i_1_n_0 ;
  wire \current_scrub_wait_count[5]_i_2_n_0 ;
  wire \current_scrub_wait_count[5]_i_3_n_0 ;
  wire \current_scrub_wait_count_reg_n_0_[0] ;
  wire \current_scrub_wait_count_reg_n_0_[1] ;
  wire \current_scrub_wait_count_reg_n_0_[2] ;
  wire \current_scrub_wait_count_reg_n_0_[3] ;
  wire \current_scrub_wait_count_reg_n_0_[4] ;
  wire \current_scrub_wait_count_reg_n_0_[5] ;
  wire current_scrubbing;
  wire current_scrubbing_i_1_n_0;
  wire current_scrubbing_i_3_n_0;
  wire \current_scrubbing_state[0]_i_1_n_0 ;
  wire \current_scrubbing_state_reg_n_0_[0] ;
  wire \current_scrubbing_state_reg_n_0_[1] ;
  wire \current_scrubbing_state_reg_n_0_[2] ;
  wire en_i;
  wire mem_ready_i;
  wire [8:2]next_scrub_col_index;
  wire next_scrub_rd_req;
  wire [12:1]next_scrub_row_index;
  wire p_0_in;
  wire rd_done_i;
  wire rd_grnt_i;
  wire rstn_i;
  wire scrub_rd_req_o;
  wire [23:2]\^scrubbing_addr_o ;
  wire scrubbing_o;
  wire [2:0]scrubbing_state_o;
  wire [3:3]\NLW_current_scrub_row_index_reg[12]_i_6_CO_UNCONNECTED ;

  assign scrubbing_addr_o[23:2] = \^scrubbing_addr_o [23:2];
  assign scrubbing_addr_o[1] = \<const0> ;
  assign scrubbing_addr_o[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  LUT6 #(
    .INIT(64'h2222226200000000)) 
    \current_scrub_bank_index[0]_i_1 
       (.I0(\^scrubbing_addr_o [22]),
        .I1(current_scrub_bank_index),
        .I2(\current_scrubbing_state_reg_n_0_[2] ),
        .I3(\current_scrubbing_state_reg_n_0_[1] ),
        .I4(\current_scrubbing_state_reg_n_0_[0] ),
        .I5(rstn_i),
        .O(\current_scrub_bank_index[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h6A220000)) 
    \current_scrub_bank_index[1]_i_1 
       (.I0(\^scrubbing_addr_o [23]),
        .I1(current_scrub_bank_index),
        .I2(\^scrubbing_addr_o [22]),
        .I3(scrubbing_state_o[2]),
        .I4(rstn_i),
        .O(\current_scrub_bank_index[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000004)) 
    \current_scrub_bank_index[1]_i_2 
       (.I0(\current_scrub_row_index[12]_i_3_n_0 ),
        .I1(\current_scrub_bank_index[1]_i_3_n_0 ),
        .I2(\current_scrub_bank_index[1]_i_4_n_0 ),
        .I3(\current_scrub_bank_index[1]_i_5_n_0 ),
        .I4(\current_scrub_bank_index[1]_i_6_n_0 ),
        .I5(\current_scrub_row_index[12]_i_4_n_0 ),
        .O(current_scrub_bank_index));
  LUT4 #(
    .INIT(16'h8000)) 
    \current_scrub_bank_index[1]_i_3 
       (.I0(\current_scrubbing_state_reg_n_0_[2] ),
        .I1(rd_done_i),
        .I2(mem_ready_i),
        .I3(\^scrubbing_addr_o [8]),
        .O(\current_scrub_bank_index[1]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \current_scrub_bank_index[1]_i_4 
       (.I0(\^scrubbing_addr_o [9]),
        .I1(\^scrubbing_addr_o [20]),
        .I2(\^scrubbing_addr_o [21]),
        .I3(\^scrubbing_addr_o [11]),
        .I4(\^scrubbing_addr_o [10]),
        .O(\current_scrub_bank_index[1]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \current_scrub_bank_index[1]_i_5 
       (.I0(\^scrubbing_addr_o [13]),
        .I1(\^scrubbing_addr_o [12]),
        .I2(\^scrubbing_addr_o [15]),
        .I3(\^scrubbing_addr_o [14]),
        .O(\current_scrub_bank_index[1]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \current_scrub_bank_index[1]_i_6 
       (.I0(\^scrubbing_addr_o [17]),
        .I1(\^scrubbing_addr_o [16]),
        .I2(\^scrubbing_addr_o [19]),
        .I3(\^scrubbing_addr_o [18]),
        .O(\current_scrub_bank_index[1]_i_6_n_0 ));
  (* syn_preserve = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \current_scrub_bank_index_reg[0] 
       (.C(clk_i),
        .CE(1'b1),
        .D(\current_scrub_bank_index[0]_i_1_n_0 ),
        .Q(\^scrubbing_addr_o [22]),
        .R(1'b0));
  (* syn_preserve = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \current_scrub_bank_index_reg[1] 
       (.C(clk_i),
        .CE(1'b1),
        .D(\current_scrub_bank_index[1]_i_1_n_0 ),
        .Q(\^scrubbing_addr_o [23]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \current_scrub_col_index[2]_i_1 
       (.I0(\current_scrubbing_state_reg_n_0_[0] ),
        .I1(\current_scrubbing_state_reg_n_0_[1] ),
        .I2(\current_scrubbing_state_reg_n_0_[2] ),
        .I3(\^scrubbing_addr_o [2]),
        .O(next_scrub_col_index[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00020200)) 
    \current_scrub_col_index[3]_i_1 
       (.I0(\current_scrubbing_state_reg_n_0_[2] ),
        .I1(\current_scrubbing_state_reg_n_0_[1] ),
        .I2(\current_scrubbing_state_reg_n_0_[0] ),
        .I3(\^scrubbing_addr_o [2]),
        .I4(\^scrubbing_addr_o [3]),
        .O(next_scrub_col_index[3]));
  LUT6 #(
    .INIT(64'h0002020202000000)) 
    \current_scrub_col_index[4]_i_1 
       (.I0(\current_scrubbing_state_reg_n_0_[2] ),
        .I1(\current_scrubbing_state_reg_n_0_[1] ),
        .I2(\current_scrubbing_state_reg_n_0_[0] ),
        .I3(\^scrubbing_addr_o [3]),
        .I4(\^scrubbing_addr_o [2]),
        .I5(\^scrubbing_addr_o [4]),
        .O(next_scrub_col_index[4]));
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \current_scrub_col_index[5]_i_1 
       (.I0(scrubbing_state_o[2]),
        .I1(\^scrubbing_addr_o [4]),
        .I2(\^scrubbing_addr_o [2]),
        .I3(\^scrubbing_addr_o [3]),
        .I4(\^scrubbing_addr_o [5]),
        .O(next_scrub_col_index[5]));
  LUT6 #(
    .INIT(64'h7FFF000080000000)) 
    \current_scrub_col_index[6]_i_1 
       (.I0(\^scrubbing_addr_o [4]),
        .I1(\^scrubbing_addr_o [2]),
        .I2(\^scrubbing_addr_o [3]),
        .I3(\^scrubbing_addr_o [5]),
        .I4(scrubbing_state_o[2]),
        .I5(\^scrubbing_addr_o [6]),
        .O(next_scrub_col_index[6]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h02000100)) 
    \current_scrub_col_index[7]_i_1 
       (.I0(\current_scrub_col_index[7]_i_2_n_0 ),
        .I1(\current_scrubbing_state_reg_n_0_[0] ),
        .I2(\current_scrubbing_state_reg_n_0_[1] ),
        .I3(\current_scrubbing_state_reg_n_0_[2] ),
        .I4(\^scrubbing_addr_o [7]),
        .O(next_scrub_col_index[7]));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \current_scrub_col_index[7]_i_2 
       (.I0(\^scrubbing_addr_o [5]),
        .I1(\^scrubbing_addr_o [3]),
        .I2(\^scrubbing_addr_o [2]),
        .I3(\^scrubbing_addr_o [4]),
        .I4(\^scrubbing_addr_o [6]),
        .O(\current_scrub_col_index[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFCCB0000)) 
    \current_scrub_col_index[8]_i_1 
       (.I0(rd_done_i),
        .I1(\current_scrubbing_state_reg_n_0_[2] ),
        .I2(\current_scrubbing_state_reg_n_0_[0] ),
        .I3(\current_scrubbing_state_reg_n_0_[1] ),
        .I4(mem_ready_i),
        .O(current_scrub_col_index));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h02000100)) 
    \current_scrub_col_index[8]_i_2 
       (.I0(\current_scrub_row_index[12]_i_3_n_0 ),
        .I1(\current_scrubbing_state_reg_n_0_[0] ),
        .I2(\current_scrubbing_state_reg_n_0_[1] ),
        .I3(\current_scrubbing_state_reg_n_0_[2] ),
        .I4(\^scrubbing_addr_o [8]),
        .O(next_scrub_col_index[8]));
  (* syn_preserve = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \current_scrub_col_index_reg[2] 
       (.C(clk_i),
        .CE(current_scrub_col_index),
        .D(next_scrub_col_index[2]),
        .Q(\^scrubbing_addr_o [2]),
        .R(p_0_in));
  (* syn_preserve = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \current_scrub_col_index_reg[3] 
       (.C(clk_i),
        .CE(current_scrub_col_index),
        .D(next_scrub_col_index[3]),
        .Q(\^scrubbing_addr_o [3]),
        .R(p_0_in));
  (* syn_preserve = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \current_scrub_col_index_reg[4] 
       (.C(clk_i),
        .CE(current_scrub_col_index),
        .D(next_scrub_col_index[4]),
        .Q(\^scrubbing_addr_o [4]),
        .R(p_0_in));
  (* syn_preserve = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \current_scrub_col_index_reg[5] 
       (.C(clk_i),
        .CE(current_scrub_col_index),
        .D(next_scrub_col_index[5]),
        .Q(\^scrubbing_addr_o [5]),
        .R(p_0_in));
  (* syn_preserve = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \current_scrub_col_index_reg[6] 
       (.C(clk_i),
        .CE(current_scrub_col_index),
        .D(next_scrub_col_index[6]),
        .Q(\^scrubbing_addr_o [6]),
        .R(p_0_in));
  (* syn_preserve = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \current_scrub_col_index_reg[7] 
       (.C(clk_i),
        .CE(current_scrub_col_index),
        .D(next_scrub_col_index[7]),
        .Q(\^scrubbing_addr_o [7]),
        .R(p_0_in));
  (* syn_preserve = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \current_scrub_col_index_reg[8] 
       (.C(clk_i),
        .CE(current_scrub_col_index),
        .D(next_scrub_col_index[8]),
        .Q(\^scrubbing_addr_o [8]),
        .R(p_0_in));
  LUT1 #(
    .INIT(2'h1)) 
    current_scrub_rd_req_i_1
       (.I0(rstn_i),
        .O(p_0_in));
  LUT6 #(
    .INIT(64'hFFFFFFFFA88AA882)) 
    current_scrub_rd_req_i_2
       (.I0(mem_ready_i),
        .I1(\current_scrubbing_state_reg_n_0_[1] ),
        .I2(\current_scrubbing_state_reg_n_0_[0] ),
        .I3(\current_scrubbing_state_reg_n_0_[2] ),
        .I4(rd_grnt_i),
        .I5(current_scrub_rd_req_i_4_n_0),
        .O(current_scrub_rd_req));
  LUT4 #(
    .INIT(16'h0200)) 
    current_scrub_rd_req_i_3
       (.I0(\current_scrubbing_state_reg_n_0_[0] ),
        .I1(\current_scrubbing_state_reg_n_0_[1] ),
        .I2(\current_scrubbing_state_reg_n_0_[2] ),
        .I3(en_i),
        .O(next_scrub_rd_req));
  LUT6 #(
    .INIT(64'hFF04000400000000)) 
    current_scrub_rd_req_i_4
       (.I0(current_scrubbing_i_3_n_0),
        .I1(en_i),
        .I2(\current_scrubbing_state_reg_n_0_[1] ),
        .I3(\current_scrubbing_state_reg_n_0_[2] ),
        .I4(rd_done_i),
        .I5(mem_ready_i),
        .O(current_scrub_rd_req_i_4_n_0));
  (* syn_preserve = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    current_scrub_rd_req_reg
       (.C(clk_i),
        .CE(current_scrub_rd_req),
        .D(next_scrub_rd_req),
        .Q(scrub_rd_req_o),
        .R(p_0_in));
  LUT2 #(
    .INIT(4'h2)) 
    \current_scrub_row_index[0]_i_1 
       (.I0(\current_scrub_row_index[12]_i_5_n_0 ),
        .I1(\^scrubbing_addr_o [9]),
        .O(\current_scrub_row_index[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \current_scrub_row_index[10]_i_1 
       (.I0(\current_scrub_row_index[12]_i_5_n_0 ),
        .I1(\current_scrub_row_index_reg[12]_i_6_n_6 ),
        .O(next_scrub_row_index[10]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \current_scrub_row_index[11]_i_1 
       (.I0(\current_scrub_row_index[12]_i_5_n_0 ),
        .I1(\current_scrub_row_index_reg[12]_i_6_n_5 ),
        .O(next_scrub_row_index[11]));
  LUT6 #(
    .INIT(64'hFFFFFFFF40000000)) 
    \current_scrub_row_index[12]_i_1 
       (.I0(\current_scrub_row_index[12]_i_3_n_0 ),
        .I1(\current_scrubbing_state_reg_n_0_[2] ),
        .I2(rd_done_i),
        .I3(mem_ready_i),
        .I4(\^scrubbing_addr_o [8]),
        .I5(\current_scrub_row_index[12]_i_4_n_0 ),
        .O(current_scrub_row_index));
  LUT1 #(
    .INIT(2'h2)) 
    \current_scrub_row_index[12]_i_10 
       (.I0(\^scrubbing_addr_o [18]),
        .O(\current_scrub_row_index[12]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \current_scrub_row_index[12]_i_2 
       (.I0(\current_scrub_row_index[12]_i_5_n_0 ),
        .I1(\current_scrub_row_index_reg[12]_i_6_n_4 ),
        .O(next_scrub_row_index[12]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \current_scrub_row_index[12]_i_3 
       (.I0(\^scrubbing_addr_o [6]),
        .I1(\^scrubbing_addr_o [4]),
        .I2(\^scrubbing_addr_o [2]),
        .I3(\^scrubbing_addr_o [3]),
        .I4(\^scrubbing_addr_o [5]),
        .I5(\^scrubbing_addr_o [7]),
        .O(\current_scrub_row_index[12]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hA882)) 
    \current_scrub_row_index[12]_i_4 
       (.I0(mem_ready_i),
        .I1(\current_scrubbing_state_reg_n_0_[1] ),
        .I2(\current_scrubbing_state_reg_n_0_[0] ),
        .I3(\current_scrubbing_state_reg_n_0_[2] ),
        .O(\current_scrub_row_index[12]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h000000FE00000000)) 
    \current_scrub_row_index[12]_i_5 
       (.I0(\current_scrub_bank_index[1]_i_4_n_0 ),
        .I1(\current_scrub_bank_index[1]_i_5_n_0 ),
        .I2(\current_scrub_bank_index[1]_i_6_n_0 ),
        .I3(\current_scrubbing_state_reg_n_0_[0] ),
        .I4(\current_scrubbing_state_reg_n_0_[1] ),
        .I5(\current_scrubbing_state_reg_n_0_[2] ),
        .O(\current_scrub_row_index[12]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \current_scrub_row_index[12]_i_7 
       (.I0(\^scrubbing_addr_o [21]),
        .O(\current_scrub_row_index[12]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \current_scrub_row_index[12]_i_8 
       (.I0(\^scrubbing_addr_o [20]),
        .O(\current_scrub_row_index[12]_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \current_scrub_row_index[12]_i_9 
       (.I0(\^scrubbing_addr_o [19]),
        .O(\current_scrub_row_index[12]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \current_scrub_row_index[1]_i_1 
       (.I0(\current_scrub_row_index[12]_i_5_n_0 ),
        .I1(\current_scrub_row_index_reg[4]_i_2_n_7 ),
        .O(next_scrub_row_index[1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \current_scrub_row_index[2]_i_1 
       (.I0(\current_scrub_row_index[12]_i_5_n_0 ),
        .I1(\current_scrub_row_index_reg[4]_i_2_n_6 ),
        .O(next_scrub_row_index[2]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \current_scrub_row_index[3]_i_1 
       (.I0(\current_scrub_row_index[12]_i_5_n_0 ),
        .I1(\current_scrub_row_index_reg[4]_i_2_n_5 ),
        .O(next_scrub_row_index[3]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \current_scrub_row_index[4]_i_1 
       (.I0(\current_scrub_row_index[12]_i_5_n_0 ),
        .I1(\current_scrub_row_index_reg[4]_i_2_n_4 ),
        .O(next_scrub_row_index[4]));
  LUT1 #(
    .INIT(2'h2)) 
    \current_scrub_row_index[4]_i_3 
       (.I0(\^scrubbing_addr_o [13]),
        .O(\current_scrub_row_index[4]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \current_scrub_row_index[4]_i_4 
       (.I0(\^scrubbing_addr_o [12]),
        .O(\current_scrub_row_index[4]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \current_scrub_row_index[4]_i_5 
       (.I0(\^scrubbing_addr_o [11]),
        .O(\current_scrub_row_index[4]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \current_scrub_row_index[4]_i_6 
       (.I0(\^scrubbing_addr_o [10]),
        .O(\current_scrub_row_index[4]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \current_scrub_row_index[5]_i_1 
       (.I0(\current_scrub_row_index[12]_i_5_n_0 ),
        .I1(\current_scrub_row_index_reg[8]_i_2_n_7 ),
        .O(next_scrub_row_index[5]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \current_scrub_row_index[6]_i_1 
       (.I0(\current_scrub_row_index[12]_i_5_n_0 ),
        .I1(\current_scrub_row_index_reg[8]_i_2_n_6 ),
        .O(next_scrub_row_index[6]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \current_scrub_row_index[7]_i_1 
       (.I0(\current_scrub_row_index[12]_i_5_n_0 ),
        .I1(\current_scrub_row_index_reg[8]_i_2_n_5 ),
        .O(next_scrub_row_index[7]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \current_scrub_row_index[8]_i_1 
       (.I0(\current_scrub_row_index[12]_i_5_n_0 ),
        .I1(\current_scrub_row_index_reg[8]_i_2_n_4 ),
        .O(next_scrub_row_index[8]));
  LUT1 #(
    .INIT(2'h2)) 
    \current_scrub_row_index[8]_i_3 
       (.I0(\^scrubbing_addr_o [17]),
        .O(\current_scrub_row_index[8]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \current_scrub_row_index[8]_i_4 
       (.I0(\^scrubbing_addr_o [16]),
        .O(\current_scrub_row_index[8]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \current_scrub_row_index[8]_i_5 
       (.I0(\^scrubbing_addr_o [15]),
        .O(\current_scrub_row_index[8]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \current_scrub_row_index[8]_i_6 
       (.I0(\^scrubbing_addr_o [14]),
        .O(\current_scrub_row_index[8]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \current_scrub_row_index[9]_i_1 
       (.I0(\current_scrub_row_index[12]_i_5_n_0 ),
        .I1(\current_scrub_row_index_reg[12]_i_6_n_7 ),
        .O(next_scrub_row_index[9]));
  (* syn_preserve = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \current_scrub_row_index_reg[0] 
       (.C(clk_i),
        .CE(current_scrub_row_index),
        .D(\current_scrub_row_index[0]_i_1_n_0 ),
        .Q(\^scrubbing_addr_o [9]),
        .R(p_0_in));
  (* syn_preserve = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \current_scrub_row_index_reg[10] 
       (.C(clk_i),
        .CE(current_scrub_row_index),
        .D(next_scrub_row_index[10]),
        .Q(\^scrubbing_addr_o [19]),
        .R(p_0_in));
  (* syn_preserve = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \current_scrub_row_index_reg[11] 
       (.C(clk_i),
        .CE(current_scrub_row_index),
        .D(next_scrub_row_index[11]),
        .Q(\^scrubbing_addr_o [20]),
        .R(p_0_in));
  (* syn_preserve = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \current_scrub_row_index_reg[12] 
       (.C(clk_i),
        .CE(current_scrub_row_index),
        .D(next_scrub_row_index[12]),
        .Q(\^scrubbing_addr_o [21]),
        .R(p_0_in));
  CARRY4 \current_scrub_row_index_reg[12]_i_6 
       (.CI(\current_scrub_row_index_reg[8]_i_2_n_0 ),
        .CO({\NLW_current_scrub_row_index_reg[12]_i_6_CO_UNCONNECTED [3],\current_scrub_row_index_reg[12]_i_6_n_1 ,\current_scrub_row_index_reg[12]_i_6_n_2 ,\current_scrub_row_index_reg[12]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\current_scrub_row_index_reg[12]_i_6_n_4 ,\current_scrub_row_index_reg[12]_i_6_n_5 ,\current_scrub_row_index_reg[12]_i_6_n_6 ,\current_scrub_row_index_reg[12]_i_6_n_7 }),
        .S({\current_scrub_row_index[12]_i_7_n_0 ,\current_scrub_row_index[12]_i_8_n_0 ,\current_scrub_row_index[12]_i_9_n_0 ,\current_scrub_row_index[12]_i_10_n_0 }));
  (* syn_preserve = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \current_scrub_row_index_reg[1] 
       (.C(clk_i),
        .CE(current_scrub_row_index),
        .D(next_scrub_row_index[1]),
        .Q(\^scrubbing_addr_o [10]),
        .R(p_0_in));
  (* syn_preserve = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \current_scrub_row_index_reg[2] 
       (.C(clk_i),
        .CE(current_scrub_row_index),
        .D(next_scrub_row_index[2]),
        .Q(\^scrubbing_addr_o [11]),
        .R(p_0_in));
  (* syn_preserve = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \current_scrub_row_index_reg[3] 
       (.C(clk_i),
        .CE(current_scrub_row_index),
        .D(next_scrub_row_index[3]),
        .Q(\^scrubbing_addr_o [12]),
        .R(p_0_in));
  (* syn_preserve = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \current_scrub_row_index_reg[4] 
       (.C(clk_i),
        .CE(current_scrub_row_index),
        .D(next_scrub_row_index[4]),
        .Q(\^scrubbing_addr_o [13]),
        .R(p_0_in));
  CARRY4 \current_scrub_row_index_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\current_scrub_row_index_reg[4]_i_2_n_0 ,\current_scrub_row_index_reg[4]_i_2_n_1 ,\current_scrub_row_index_reg[4]_i_2_n_2 ,\current_scrub_row_index_reg[4]_i_2_n_3 }),
        .CYINIT(\^scrubbing_addr_o [9]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\current_scrub_row_index_reg[4]_i_2_n_4 ,\current_scrub_row_index_reg[4]_i_2_n_5 ,\current_scrub_row_index_reg[4]_i_2_n_6 ,\current_scrub_row_index_reg[4]_i_2_n_7 }),
        .S({\current_scrub_row_index[4]_i_3_n_0 ,\current_scrub_row_index[4]_i_4_n_0 ,\current_scrub_row_index[4]_i_5_n_0 ,\current_scrub_row_index[4]_i_6_n_0 }));
  (* syn_preserve = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \current_scrub_row_index_reg[5] 
       (.C(clk_i),
        .CE(current_scrub_row_index),
        .D(next_scrub_row_index[5]),
        .Q(\^scrubbing_addr_o [14]),
        .R(p_0_in));
  (* syn_preserve = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \current_scrub_row_index_reg[6] 
       (.C(clk_i),
        .CE(current_scrub_row_index),
        .D(next_scrub_row_index[6]),
        .Q(\^scrubbing_addr_o [15]),
        .R(p_0_in));
  (* syn_preserve = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \current_scrub_row_index_reg[7] 
       (.C(clk_i),
        .CE(current_scrub_row_index),
        .D(next_scrub_row_index[7]),
        .Q(\^scrubbing_addr_o [16]),
        .R(p_0_in));
  (* syn_preserve = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \current_scrub_row_index_reg[8] 
       (.C(clk_i),
        .CE(current_scrub_row_index),
        .D(next_scrub_row_index[8]),
        .Q(\^scrubbing_addr_o [17]),
        .R(p_0_in));
  CARRY4 \current_scrub_row_index_reg[8]_i_2 
       (.CI(\current_scrub_row_index_reg[4]_i_2_n_0 ),
        .CO({\current_scrub_row_index_reg[8]_i_2_n_0 ,\current_scrub_row_index_reg[8]_i_2_n_1 ,\current_scrub_row_index_reg[8]_i_2_n_2 ,\current_scrub_row_index_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\current_scrub_row_index_reg[8]_i_2_n_4 ,\current_scrub_row_index_reg[8]_i_2_n_5 ,\current_scrub_row_index_reg[8]_i_2_n_6 ,\current_scrub_row_index_reg[8]_i_2_n_7 }),
        .S({\current_scrub_row_index[8]_i_3_n_0 ,\current_scrub_row_index[8]_i_4_n_0 ,\current_scrub_row_index[8]_i_5_n_0 ,\current_scrub_row_index[8]_i_6_n_0 }));
  (* syn_preserve = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \current_scrub_row_index_reg[9] 
       (.C(clk_i),
        .CE(current_scrub_row_index),
        .D(next_scrub_row_index[9]),
        .Q(\^scrubbing_addr_o [18]),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \current_scrub_wait_count[0]_i_1 
       (.I0(\current_scrubbing_state_reg_n_0_[0] ),
        .I1(\current_scrubbing_state_reg_n_0_[1] ),
        .I2(\current_scrubbing_state_reg_n_0_[2] ),
        .I3(\current_scrub_wait_count_reg_n_0_[0] ),
        .O(\current_scrub_wait_count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00101000)) 
    \current_scrub_wait_count[1]_i_1 
       (.I0(\current_scrubbing_state_reg_n_0_[2] ),
        .I1(\current_scrubbing_state_reg_n_0_[1] ),
        .I2(\current_scrubbing_state_reg_n_0_[0] ),
        .I3(\current_scrub_wait_count_reg_n_0_[0] ),
        .I4(\current_scrub_wait_count_reg_n_0_[1] ),
        .O(\current_scrub_wait_count[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0010101010000000)) 
    \current_scrub_wait_count[2]_i_1 
       (.I0(\current_scrubbing_state_reg_n_0_[2] ),
        .I1(\current_scrubbing_state_reg_n_0_[1] ),
        .I2(\current_scrubbing_state_reg_n_0_[0] ),
        .I3(\current_scrub_wait_count_reg_n_0_[1] ),
        .I4(\current_scrub_wait_count_reg_n_0_[0] ),
        .I5(\current_scrub_wait_count_reg_n_0_[2] ),
        .O(\current_scrub_wait_count[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \current_scrub_wait_count[3]_i_1 
       (.I0(scrubbing_state_o[0]),
        .I1(\current_scrub_wait_count_reg_n_0_[2] ),
        .I2(\current_scrub_wait_count_reg_n_0_[0] ),
        .I3(\current_scrub_wait_count_reg_n_0_[1] ),
        .I4(\current_scrub_wait_count_reg_n_0_[3] ),
        .O(\current_scrub_wait_count[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF000080000000)) 
    \current_scrub_wait_count[4]_i_1 
       (.I0(\current_scrub_wait_count_reg_n_0_[2] ),
        .I1(\current_scrub_wait_count_reg_n_0_[0] ),
        .I2(\current_scrub_wait_count_reg_n_0_[1] ),
        .I3(\current_scrub_wait_count_reg_n_0_[3] ),
        .I4(scrubbing_state_o[0]),
        .I5(\current_scrub_wait_count_reg_n_0_[4] ),
        .O(\current_scrub_wait_count[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAA82)) 
    \current_scrub_wait_count[5]_i_1 
       (.I0(mem_ready_i),
        .I1(\current_scrubbing_state_reg_n_0_[2] ),
        .I2(\current_scrubbing_state_reg_n_0_[1] ),
        .I3(\current_scrubbing_state_reg_n_0_[0] ),
        .O(current_scrub_wait_count));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00080004)) 
    \current_scrub_wait_count[5]_i_2 
       (.I0(\current_scrub_wait_count[5]_i_3_n_0 ),
        .I1(\current_scrubbing_state_reg_n_0_[0] ),
        .I2(\current_scrubbing_state_reg_n_0_[1] ),
        .I3(\current_scrubbing_state_reg_n_0_[2] ),
        .I4(\current_scrub_wait_count_reg_n_0_[5] ),
        .O(\current_scrub_wait_count[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \current_scrub_wait_count[5]_i_3 
       (.I0(\current_scrub_wait_count_reg_n_0_[3] ),
        .I1(\current_scrub_wait_count_reg_n_0_[1] ),
        .I2(\current_scrub_wait_count_reg_n_0_[0] ),
        .I3(\current_scrub_wait_count_reg_n_0_[2] ),
        .I4(\current_scrub_wait_count_reg_n_0_[4] ),
        .O(\current_scrub_wait_count[5]_i_3_n_0 ));
  (* syn_preserve = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \current_scrub_wait_count_reg[0] 
       (.C(clk_i),
        .CE(current_scrub_wait_count),
        .D(\current_scrub_wait_count[0]_i_1_n_0 ),
        .Q(\current_scrub_wait_count_reg_n_0_[0] ),
        .R(p_0_in));
  (* syn_preserve = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \current_scrub_wait_count_reg[1] 
       (.C(clk_i),
        .CE(current_scrub_wait_count),
        .D(\current_scrub_wait_count[1]_i_1_n_0 ),
        .Q(\current_scrub_wait_count_reg_n_0_[1] ),
        .R(p_0_in));
  (* syn_preserve = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \current_scrub_wait_count_reg[2] 
       (.C(clk_i),
        .CE(current_scrub_wait_count),
        .D(\current_scrub_wait_count[2]_i_1_n_0 ),
        .Q(\current_scrub_wait_count_reg_n_0_[2] ),
        .R(p_0_in));
  (* syn_preserve = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \current_scrub_wait_count_reg[3] 
       (.C(clk_i),
        .CE(current_scrub_wait_count),
        .D(\current_scrub_wait_count[3]_i_1_n_0 ),
        .Q(\current_scrub_wait_count_reg_n_0_[3] ),
        .R(p_0_in));
  (* syn_preserve = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \current_scrub_wait_count_reg[4] 
       (.C(clk_i),
        .CE(current_scrub_wait_count),
        .D(\current_scrub_wait_count[4]_i_1_n_0 ),
        .Q(\current_scrub_wait_count_reg_n_0_[4] ),
        .R(p_0_in));
  (* syn_preserve = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \current_scrub_wait_count_reg[5] 
       (.C(clk_i),
        .CE(current_scrub_wait_count),
        .D(\current_scrub_wait_count[5]_i_2_n_0 ),
        .Q(\current_scrub_wait_count_reg_n_0_[5] ),
        .R(p_0_in));
  LUT6 #(
    .INIT(64'h2E22222200000000)) 
    current_scrubbing_i_1
       (.I0(scrubbing_o),
        .I1(current_scrubbing),
        .I2(current_scrubbing_i_3_n_0),
        .I3(en_i),
        .I4(scrubbing_state_o[0]),
        .I5(rstn_i),
        .O(current_scrubbing_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFECF0000)) 
    current_scrubbing_i_2
       (.I0(rd_done_i),
        .I1(\current_scrubbing_state_reg_n_0_[0] ),
        .I2(\current_scrubbing_state_reg_n_0_[1] ),
        .I3(\current_scrubbing_state_reg_n_0_[2] ),
        .I4(mem_ready_i),
        .O(current_scrubbing));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    current_scrubbing_i_3
       (.I0(\current_scrub_wait_count_reg_n_0_[4] ),
        .I1(\current_scrub_wait_count_reg_n_0_[2] ),
        .I2(\current_scrub_wait_count_reg_n_0_[0] ),
        .I3(\current_scrub_wait_count_reg_n_0_[1] ),
        .I4(\current_scrub_wait_count_reg_n_0_[3] ),
        .I5(\current_scrub_wait_count_reg_n_0_[5] ),
        .O(current_scrubbing_i_3_n_0));
  (* syn_preserve = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    current_scrubbing_reg
       (.C(clk_i),
        .CE(1'b1),
        .D(current_scrubbing_i_1_n_0),
        .Q(scrubbing_o),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hEB)) 
    \current_scrubbing_state[0]_i_1 
       (.I0(\current_scrubbing_state_reg_n_0_[2] ),
        .I1(\current_scrubbing_state_reg_n_0_[1] ),
        .I2(\current_scrubbing_state_reg_n_0_[0] ),
        .O(\current_scrubbing_state[0]_i_1_n_0 ));
  (* syn_preserve = "true" *) 
  FDSE #(
    .INIT(1'b1)) 
    \current_scrubbing_state_reg[0] 
       (.C(clk_i),
        .CE(current_scrub_rd_req),
        .D(\current_scrubbing_state[0]_i_1_n_0 ),
        .Q(\current_scrubbing_state_reg_n_0_[0] ),
        .S(p_0_in));
  (* syn_preserve = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \current_scrubbing_state_reg[1] 
       (.C(clk_i),
        .CE(current_scrub_rd_req),
        .D(scrubbing_state_o[0]),
        .Q(\current_scrubbing_state_reg_n_0_[1] ),
        .R(p_0_in));
  (* syn_preserve = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \current_scrubbing_state_reg[2] 
       (.C(clk_i),
        .CE(current_scrub_rd_req),
        .D(scrubbing_state_o[1]),
        .Q(\current_scrubbing_state_reg_n_0_[2] ),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \scrubbing_state_o[0]_INST_0 
       (.I0(\current_scrubbing_state_reg_n_0_[2] ),
        .I1(\current_scrubbing_state_reg_n_0_[1] ),
        .I2(\current_scrubbing_state_reg_n_0_[0] ),
        .O(scrubbing_state_o[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \scrubbing_state_o[1]_INST_0 
       (.I0(\current_scrubbing_state_reg_n_0_[2] ),
        .I1(\current_scrubbing_state_reg_n_0_[1] ),
        .I2(\current_scrubbing_state_reg_n_0_[0] ),
        .O(scrubbing_state_o[1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \scrubbing_state_o[2]_INST_0 
       (.I0(\current_scrubbing_state_reg_n_0_[2] ),
        .I1(\current_scrubbing_state_reg_n_0_[1] ),
        .I2(\current_scrubbing_state_reg_n_0_[0] ),
        .O(scrubbing_state_o[2]));
endmodule

(* ACT_TO_RW_CYCLES = "2" *) (* BANK_WIDTH = "2" *) (* BURST_LENGTH = "0" *) 
(* CAS_LAT_CYCLES = "2" *) (* COLS_WIDTH = "9" *) (* DATA_WIDTH = "16" *) 
(* DQM_WIDTH = "2" *) (* DRIVE_STRENGTH = "0" *) (* EXT_MODE_REG_EN = "TRUE" *) 
(* GEN_ERR_INJ = "FALSE" *) (* IN_DATA_TO_PRE = "2" *) (* MODE_REG_CYCLES = "2" *) 
(* NOP_BOOT_CYCLES = "20000" *) (* ORIG_REF_NAME = "sdram_ctrl_tmr_top" *) (* PRECH_COMMAND_PERIOD = "2" *) 
(* RAM_BANKS = "4" *) (* RAM_COLS = "512" *) (* RAM_ROWS = "8192" *) 
(* REF_COMMAND_COUNT = "8" *) (* REF_COMMAND_PERIOD = "8" *) (* REF_PERIOD = "32" *) 
(* ROW_WIDTH = "13" *) (* SCRUBBER_WAIT_CYCLES = "64" *) (* TMR_COLS = "384" *) 
module DemoSDRAM_sdram_ctrl_tmr_avalon_0_0_sdram_ctrl_tmr_top
   (cke_o,
    bank_o,
    addr_o,
    cs_o,
    ras_o,
    cas_o,
    we_o,
    dqm_o,
    dataQ_io,
    en_scrubbing_i,
    en_err_test_i,
    err_detect_o,
    err_counter_o,
    rst_err_counter_i,
    scrubbing_proc_run,
    healing_proc_run,
    rstn_i,
    clk_i,
    wr_req_i,
    rd_req_i,
    wr_data_i,
    rw_addr_i,
    wr_grnt_o,
    rd_grnt_o,
    rd_data_o,
    wr_op_done_o,
    rd_op_done_o,
    mem_ready_o,
    ctrl_state_o);
  output cke_o;
  output [1:0]bank_o;
  output [12:0]addr_o;
  output cs_o;
  output ras_o;
  output cas_o;
  output we_o;
  output [1:0]dqm_o;
  inout [15:0]dataQ_io;
  input en_scrubbing_i;
  input en_err_test_i;
  output err_detect_o;
  output [15:0]err_counter_o;
  input rst_err_counter_i;
  output scrubbing_proc_run;
  output healing_proc_run;
  input rstn_i;
  input clk_i;
  input wr_req_i;
  input rd_req_i;
  input [15:0]wr_data_i;
  input [22:0]rw_addr_i;
  output wr_grnt_o;
  output rd_grnt_o;
  output [15:0]rd_data_o;
  output wr_op_done_o;
  output rd_op_done_o;
  output mem_ready_o;
  output [26:0]ctrl_state_o;

  wire [12:0]addr_o;
  wire [1:0]bank_o;
  wire cas_o;
  wire cke_o;
  wire clk_i;
  wire cs_o;
  wire [26:0]ctrl_state_o;
  wire [15:0]dataQ_io;
  wire [1:0]dqm_o;
  wire en_scrubbing_i;
  wire en_scrubbing_int;
  wire en_voting_int;
  wire [15:0]err_count_o;
  wire [15:0]err_counter_o;
  wire err_detect_o;
  wire err_detect_o_INST_0_i_1_n_0;
  wire err_detect_o_INST_0_i_2_n_0;
  wire [23:0]healing_addr_o;
  wire [15:0]healing_data_o;
  wire healing_proc_run;
  wire healing_wr_req_o;
  wire mem_ready_o;
  wire ras_o;
  wire [15:0]rd_data_o;
  wire [15:0]rd_data_o_1;
  wire [15:0]rd_data_o_2;
  wire [15:0]rd_data_o_3;
  wire rd_done_int;
  wire rd_grnt_int;
  wire rd_grnt_o;
  wire rd_op_done_o;
  wire rd_req_i;
  wire rst_err_counter_i;
  wire rstn_i;
  wire [23:0]rw_addr_feedback_o;
  wire [22:0]rw_addr_i;
  wire scrub_rd_req_o;
  wire [23:0]scrubbing_addr_o;
  wire scrubbing_proc_run;
  wire we_o;
  wire [15:0]wr_data_i;
  wire wr_done_int;
  wire wr_grnt_int;
  wire wr_grnt_o;
  wire wr_op_done_o;
  wire wr_req_i;
  wire [2:0]NLW_sdram_ctrl_tmr_healer_inst_healing_state_o_UNCONNECTED;
  wire [2:0]NLW_sdram_ctrl_tmr_scrubber_inst_scrubbing_state_o_UNCONNECTED;

  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    err_detect_o_INST_0
       (.I0(err_count_o[2]),
        .I1(err_count_o[3]),
        .I2(err_count_o[0]),
        .I3(err_count_o[1]),
        .I4(err_detect_o_INST_0_i_1_n_0),
        .I5(err_detect_o_INST_0_i_2_n_0),
        .O(err_detect_o));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    err_detect_o_INST_0_i_1
       (.I0(err_count_o[14]),
        .I1(err_count_o[15]),
        .I2(err_count_o[12]),
        .I3(err_count_o[13]),
        .I4(err_count_o[11]),
        .I5(err_count_o[10]),
        .O(err_detect_o_INST_0_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    err_detect_o_INST_0_i_2
       (.I0(err_count_o[8]),
        .I1(err_count_o[9]),
        .I2(err_count_o[6]),
        .I3(err_count_o[7]),
        .I4(err_count_o[5]),
        .I5(err_count_o[4]),
        .O(err_detect_o_INST_0_i_2_n_0));
  DemoSDRAM_sdram_ctrl_tmr_avalon_0_0_sdram_ctrl_tmr sdram_ctrl_inst
       (.Q(rw_addr_feedback_o),
        .addr_o(addr_o),
        .bank_o(bank_o),
        .cas_o(cas_o),
        .cke_o(cke_o),
        .clk_i(clk_i),
        .cs_o(cs_o),
        .ctrl_state_o(ctrl_state_o),
        .\current_err_count_reg[3] (en_voting_int),
        .\current_rd_data_reg[15] (rd_data_o_1),
        .\current_rd_data_reg[15]_0 (rd_data_o_2),
        .\current_rd_data_reg[15]_1 (rd_data_o_3),
        .dataQ_io(dataQ_io),
        .dqm_o(dqm_o),
        .en_i(en_scrubbing_int),
        .en_scrubbing_i(en_scrubbing_i),
        .healing_addr_o(healing_addr_o),
        .healing_data_o(healing_data_o),
        .healing_o(healing_proc_run),
        .healing_wr_req_o(healing_wr_req_o),
        .mem_ready_o(mem_ready_o),
        .ras_o(ras_o),
        .rd_done_int(rd_done_int),
        .rd_grnt_int(rd_grnt_int),
        .rd_grnt_o(rd_grnt_o),
        .rd_op_done_o(rd_op_done_o),
        .rd_req_i(rd_req_i),
        .rstn_i(rstn_i),
        .rw_addr_i(rw_addr_i),
        .scrub_rd_req_o(scrub_rd_req_o),
        .scrubbing_addr_o(scrubbing_addr_o),
        .scrubbing_o(scrubbing_proc_run),
        .we_o(we_o),
        .wr_data_i(wr_data_i),
        .wr_done_i(wr_done_int),
        .wr_grnt_int(wr_grnt_int),
        .wr_grnt_o(wr_grnt_o),
        .wr_op_done_o(wr_op_done_o),
        .wr_req_i(wr_req_i));
  (* BANK_WIDTH = "2" *) 
  (* COLS_WIDTH = "9" *) 
  (* DATA_WIDTH = "16" *) 
  (* DQM_WIDTH = "2" *) 
  (* RAM_BANKS = "4" *) 
  (* RAM_COLS = "512" *) 
  (* RAM_ROWS = "8192" *) 
  (* ROW_WIDTH = "13" *) 
  (* TMR_COLS = "384" *) 
  DemoSDRAM_sdram_ctrl_tmr_avalon_0_0_sdram_ctrl_tmr_healer sdram_ctrl_tmr_healer_inst
       (.clk_i(clk_i),
        .error_count_o(err_counter_o),
        .feedback_addr_i(rw_addr_feedback_o),
        .healing_addr_o(healing_addr_o),
        .healing_data_o(healing_data_o),
        .healing_o(healing_proc_run),
        .healing_state_o(NLW_sdram_ctrl_tmr_healer_inst_healing_state_o_UNCONNECTED[2:0]),
        .healing_wr_req_o(healing_wr_req_o),
        .mem_ready_i(mem_ready_o),
        .rst_err_counter_i(rst_err_counter_i),
        .rstn_i(rstn_i),
        .voted_data_i(rd_data_o),
        .voted_error_count_i(err_count_o),
        .wr_done_i(wr_done_int),
        .wr_grnt_i(wr_grnt_int));
  (* BANK_WIDTH = "2" *) 
  (* COLS_WIDTH = "9" *) 
  (* DATA_WIDTH = "16" *) 
  (* DQM_WIDTH = "2" *) 
  (* RAM_BANKS = "4" *) 
  (* RAM_COLS = "512" *) 
  (* RAM_ROWS = "8192" *) 
  (* ROW_WIDTH = "13" *) 
  (* SCRUBBER_WAIT_CYCLES = "64" *) 
  (* TMR_COLS = "384" *) 
  DemoSDRAM_sdram_ctrl_tmr_avalon_0_0_sdram_ctrl_tmr_scrubber sdram_ctrl_tmr_scrubber_inst
       (.clk_i(clk_i),
        .en_i(en_scrubbing_int),
        .mem_ready_i(mem_ready_o),
        .rd_done_i(rd_done_int),
        .rd_grnt_i(rd_grnt_int),
        .rstn_i(rstn_i),
        .scrub_rd_req_o(scrub_rd_req_o),
        .scrubbing_addr_o(scrubbing_addr_o),
        .scrubbing_o(scrubbing_proc_run),
        .scrubbing_state_o(NLW_sdram_ctrl_tmr_scrubber_inst_scrubbing_state_o_UNCONNECTED[2:0]));
  (* DATA_WIDTH = "16" *) 
  (* GEN_ERR_INJ = "FALSE" *) 
  DemoSDRAM_sdram_ctrl_tmr_avalon_0_0_tmr_voter tmr_voter_inst
       (.clk_i(clk_i),
        .en_err_test_i(1'b0),
        .en_i(en_voting_int),
        .err_count_o(err_count_o),
        .rd_data_1_i(rd_data_o_1),
        .rd_data_2_i(rd_data_o_2),
        .rd_data_3_i(rd_data_o_3),
        .voted_data_o(rd_data_o));
endmodule

(* DATA_WIDTH = "16" *) (* GEN_ERR_INJ = "FALSE" *) (* ORIG_REF_NAME = "tmr_voter" *) 
module DemoSDRAM_sdram_ctrl_tmr_avalon_0_0_tmr_voter
   (clk_i,
    en_i,
    en_err_test_i,
    rd_data_1_i,
    rd_data_2_i,
    rd_data_3_i,
    voted_data_o,
    err_count_o);
  input clk_i;
  input en_i;
  input en_err_test_i;
  input [15:0]rd_data_1_i;
  input [15:0]rd_data_2_i;
  input [15:0]rd_data_3_i;
  output [15:0]voted_data_o;
  output [15:0]err_count_o;

  wire \<const0> ;
  wire en_i;
  wire [4:0]\^err_count_o ;
  wire \err_count_o[0]_INST_0_i_1_n_0 ;
  wire \err_count_o[0]_INST_0_i_2_n_0 ;
  wire \err_count_o[0]_INST_0_i_3_n_0 ;
  wire \err_count_o[0]_INST_0_i_4_n_0 ;
  wire \err_count_o[2]_INST_0_i_10_n_0 ;
  wire \err_count_o[2]_INST_0_i_11_n_0 ;
  wire \err_count_o[2]_INST_0_i_12_n_0 ;
  wire \err_count_o[2]_INST_0_i_13_n_0 ;
  wire \err_count_o[2]_INST_0_i_1_n_0 ;
  wire \err_count_o[2]_INST_0_i_2_n_0 ;
  wire \err_count_o[2]_INST_0_i_3_n_0 ;
  wire \err_count_o[2]_INST_0_i_4_n_0 ;
  wire \err_count_o[2]_INST_0_i_5_n_0 ;
  wire \err_count_o[2]_INST_0_i_6_n_0 ;
  wire \err_count_o[2]_INST_0_i_7_n_0 ;
  wire \err_count_o[2]_INST_0_i_8_n_0 ;
  wire \err_count_o[2]_INST_0_i_9_n_0 ;
  wire \err_count_o[4]_INST_0_i_10_n_0 ;
  wire \err_count_o[4]_INST_0_i_11_n_0 ;
  wire \err_count_o[4]_INST_0_i_12_n_0 ;
  wire \err_count_o[4]_INST_0_i_13_n_0 ;
  wire \err_count_o[4]_INST_0_i_14_n_0 ;
  wire \err_count_o[4]_INST_0_i_15_n_0 ;
  wire \err_count_o[4]_INST_0_i_16_n_0 ;
  wire \err_count_o[4]_INST_0_i_17_n_0 ;
  wire \err_count_o[4]_INST_0_i_1_n_0 ;
  wire \err_count_o[4]_INST_0_i_2_n_0 ;
  wire \err_count_o[4]_INST_0_i_3_n_0 ;
  wire \err_count_o[4]_INST_0_i_4_n_0 ;
  wire \err_count_o[4]_INST_0_i_5_n_0 ;
  wire \err_count_o[4]_INST_0_i_6_n_0 ;
  wire \err_count_o[4]_INST_0_i_7_n_0 ;
  wire \err_count_o[4]_INST_0_i_8_n_0 ;
  wire \err_count_o[4]_INST_0_i_9_n_0 ;
  wire [15:0]rd_data_1_i;
  wire [15:0]rd_data_2_i;
  wire [15:0]rd_data_3_i;
  wire [15:0]voted_data_o;

  assign err_count_o[15] = \<const0> ;
  assign err_count_o[14] = \<const0> ;
  assign err_count_o[13] = \<const0> ;
  assign err_count_o[12] = \<const0> ;
  assign err_count_o[11] = \<const0> ;
  assign err_count_o[10] = \<const0> ;
  assign err_count_o[9] = \<const0> ;
  assign err_count_o[8] = \<const0> ;
  assign err_count_o[7] = \<const0> ;
  assign err_count_o[6] = \<const0> ;
  assign err_count_o[5] = \<const0> ;
  assign err_count_o[4:0] = \^err_count_o [4:0];
  GND GND
       (.G(\<const0> ));
  LUT5 #(
    .INIT(32'h96006900)) 
    \err_count_o[0]_INST_0 
       (.I0(\err_count_o[0]_INST_0_i_1_n_0 ),
        .I1(\err_count_o[0]_INST_0_i_2_n_0 ),
        .I2(\err_count_o[0]_INST_0_i_3_n_0 ),
        .I3(en_i),
        .I4(\err_count_o[0]_INST_0_i_4_n_0 ),
        .O(\^err_count_o [0]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h6AA99556)) 
    \err_count_o[0]_INST_0_i_1 
       (.I0(\err_count_o[4]_INST_0_i_11_n_0 ),
        .I1(rd_data_1_i[7]),
        .I2(rd_data_3_i[7]),
        .I3(rd_data_2_i[7]),
        .I4(\err_count_o[4]_INST_0_i_10_n_0 ),
        .O(\err_count_o[0]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h817E7E81)) 
    \err_count_o[0]_INST_0_i_2 
       (.I0(rd_data_3_i[1]),
        .I1(rd_data_1_i[1]),
        .I2(rd_data_2_i[1]),
        .I3(\err_count_o[4]_INST_0_i_15_n_0 ),
        .I4(\err_count_o[4]_INST_0_i_16_n_0 ),
        .O(\err_count_o[0]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h817E7E81)) 
    \err_count_o[0]_INST_0_i_3 
       (.I0(rd_data_3_i[4]),
        .I1(rd_data_1_i[4]),
        .I2(rd_data_2_i[4]),
        .I3(\err_count_o[4]_INST_0_i_12_n_0 ),
        .I4(\err_count_o[4]_INST_0_i_13_n_0 ),
        .O(\err_count_o[0]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h817E7E81)) 
    \err_count_o[0]_INST_0_i_4 
       (.I0(rd_data_2_i[0]),
        .I1(rd_data_1_i[0]),
        .I2(rd_data_3_i[0]),
        .I3(\err_count_o[2]_INST_0_i_7_n_0 ),
        .I4(\err_count_o[2]_INST_0_i_6_n_0 ),
        .O(\err_count_o[0]_INST_0_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h8228)) 
    \err_count_o[1]_INST_0 
       (.I0(en_i),
        .I1(\err_count_o[2]_INST_0_i_2_n_0 ),
        .I2(\err_count_o[2]_INST_0_i_1_n_0 ),
        .I3(\err_count_o[2]_INST_0_i_3_n_0 ),
        .O(\^err_count_o [1]));
  LUT6 #(
    .INIT(64'hE80017001700E800)) 
    \err_count_o[2]_INST_0 
       (.I0(\err_count_o[2]_INST_0_i_1_n_0 ),
        .I1(\err_count_o[2]_INST_0_i_2_n_0 ),
        .I2(\err_count_o[2]_INST_0_i_3_n_0 ),
        .I3(en_i),
        .I4(\err_count_o[2]_INST_0_i_4_n_0 ),
        .I5(\err_count_o[2]_INST_0_i_5_n_0 ),
        .O(\^err_count_o [2]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h4DDDDDD4)) 
    \err_count_o[2]_INST_0_i_1 
       (.I0(\err_count_o[2]_INST_0_i_6_n_0 ),
        .I1(\err_count_o[2]_INST_0_i_7_n_0 ),
        .I2(rd_data_3_i[0]),
        .I3(rd_data_1_i[0]),
        .I4(rd_data_2_i[0]),
        .O(\err_count_o[2]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h81)) 
    \err_count_o[2]_INST_0_i_10 
       (.I0(rd_data_2_i[0]),
        .I1(rd_data_1_i[0]),
        .I2(rd_data_3_i[0]),
        .O(\err_count_o[2]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h7E8181818181817E)) 
    \err_count_o[2]_INST_0_i_11 
       (.I0(rd_data_3_i[5]),
        .I1(rd_data_1_i[5]),
        .I2(rd_data_2_i[5]),
        .I3(rd_data_3_i[6]),
        .I4(rd_data_1_i[6]),
        .I5(rd_data_2_i[6]),
        .O(\err_count_o[2]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h7E8181818181817E)) 
    \err_count_o[2]_INST_0_i_12 
       (.I0(rd_data_3_i[2]),
        .I1(rd_data_1_i[2]),
        .I2(rd_data_2_i[2]),
        .I3(rd_data_3_i[3]),
        .I4(rd_data_1_i[3]),
        .I5(rd_data_2_i[3]),
        .O(\err_count_o[2]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h817E7E7E7E7E7E81)) 
    \err_count_o[2]_INST_0_i_13 
       (.I0(rd_data_2_i[8]),
        .I1(rd_data_3_i[8]),
        .I2(rd_data_1_i[8]),
        .I3(rd_data_2_i[7]),
        .I4(rd_data_3_i[7]),
        .I5(rd_data_1_i[7]),
        .O(\err_count_o[2]_INST_0_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \err_count_o[2]_INST_0_i_2 
       (.I0(\err_count_o[2]_INST_0_i_8_n_0 ),
        .I1(\err_count_o[4]_INST_0_i_3_n_0 ),
        .I2(\err_count_o[4]_INST_0_i_2_n_0 ),
        .I3(\err_count_o[4]_INST_0_i_1_n_0 ),
        .I4(\err_count_o[2]_INST_0_i_9_n_0 ),
        .O(\err_count_o[2]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0096960096000096)) 
    \err_count_o[2]_INST_0_i_3 
       (.I0(\err_count_o[2]_INST_0_i_6_n_0 ),
        .I1(\err_count_o[2]_INST_0_i_7_n_0 ),
        .I2(\err_count_o[2]_INST_0_i_10_n_0 ),
        .I3(\err_count_o[0]_INST_0_i_3_n_0 ),
        .I4(\err_count_o[0]_INST_0_i_2_n_0 ),
        .I5(\err_count_o[0]_INST_0_i_1_n_0 ),
        .O(\err_count_o[2]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hA665)) 
    \err_count_o[2]_INST_0_i_4 
       (.I0(\err_count_o[4]_INST_0_i_4_n_0 ),
        .I1(\err_count_o[4]_INST_0_i_3_n_0 ),
        .I2(\err_count_o[4]_INST_0_i_2_n_0 ),
        .I3(\err_count_o[4]_INST_0_i_1_n_0 ),
        .O(\err_count_o[2]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'hE88E8EE8)) 
    \err_count_o[2]_INST_0_i_5 
       (.I0(\err_count_o[2]_INST_0_i_8_n_0 ),
        .I1(\err_count_o[2]_INST_0_i_9_n_0 ),
        .I2(\err_count_o[4]_INST_0_i_1_n_0 ),
        .I3(\err_count_o[4]_INST_0_i_2_n_0 ),
        .I4(\err_count_o[4]_INST_0_i_3_n_0 ),
        .O(\err_count_o[2]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h817E7E81)) 
    \err_count_o[2]_INST_0_i_6 
       (.I0(rd_data_2_i[10]),
        .I1(rd_data_3_i[10]),
        .I2(rd_data_1_i[10]),
        .I3(\err_count_o[4]_INST_0_i_9_n_0 ),
        .I4(\err_count_o[4]_INST_0_i_8_n_0 ),
        .O(\err_count_o[2]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h95566AA9)) 
    \err_count_o[2]_INST_0_i_7 
       (.I0(\err_count_o[4]_INST_0_i_7_n_0 ),
        .I1(rd_data_1_i[13]),
        .I2(rd_data_3_i[13]),
        .I3(rd_data_2_i[13]),
        .I4(\err_count_o[4]_INST_0_i_6_n_0 ),
        .O(\err_count_o[2]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h9009F99FF99F9009)) 
    \err_count_o[2]_INST_0_i_8 
       (.I0(\err_count_o[2]_INST_0_i_11_n_0 ),
        .I1(\err_count_o[4]_INST_0_i_14_n_0 ),
        .I2(\err_count_o[2]_INST_0_i_12_n_0 ),
        .I3(\err_count_o[4]_INST_0_i_17_n_0 ),
        .I4(\err_count_o[4]_INST_0_i_11_n_0 ),
        .I5(\err_count_o[2]_INST_0_i_13_n_0 ),
        .O(\err_count_o[2]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h171717E817E8E8E8)) 
    \err_count_o[2]_INST_0_i_9 
       (.I0(\err_count_o[4]_INST_0_i_12_n_0 ),
        .I1(\err_count_o[4]_INST_0_i_13_n_0 ),
        .I2(\err_count_o[4]_INST_0_i_14_n_0 ),
        .I3(\err_count_o[4]_INST_0_i_15_n_0 ),
        .I4(\err_count_o[4]_INST_0_i_16_n_0 ),
        .I5(\err_count_o[4]_INST_0_i_17_n_0 ),
        .O(\err_count_o[2]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h8EFF000071000000)) 
    \err_count_o[3]_INST_0 
       (.I0(\err_count_o[4]_INST_0_i_1_n_0 ),
        .I1(\err_count_o[4]_INST_0_i_2_n_0 ),
        .I2(\err_count_o[4]_INST_0_i_3_n_0 ),
        .I3(\err_count_o[4]_INST_0_i_4_n_0 ),
        .I4(en_i),
        .I5(\err_count_o[4]_INST_0_i_5_n_0 ),
        .O(\^err_count_o [3]));
  LUT6 #(
    .INIT(64'h7100000000000000)) 
    \err_count_o[4]_INST_0 
       (.I0(\err_count_o[4]_INST_0_i_1_n_0 ),
        .I1(\err_count_o[4]_INST_0_i_2_n_0 ),
        .I2(\err_count_o[4]_INST_0_i_3_n_0 ),
        .I3(\err_count_o[4]_INST_0_i_4_n_0 ),
        .I4(en_i),
        .I5(\err_count_o[4]_INST_0_i_5_n_0 ),
        .O(\^err_count_o [4]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h81FF0081)) 
    \err_count_o[4]_INST_0_i_1 
       (.I0(rd_data_1_i[13]),
        .I1(rd_data_3_i[13]),
        .I2(rd_data_2_i[13]),
        .I3(\err_count_o[4]_INST_0_i_6_n_0 ),
        .I4(\err_count_o[4]_INST_0_i_7_n_0 ),
        .O(\err_count_o[4]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h7E)) 
    \err_count_o[4]_INST_0_i_10 
       (.I0(rd_data_1_i[8]),
        .I1(rd_data_3_i[8]),
        .I2(rd_data_2_i[8]),
        .O(\err_count_o[4]_INST_0_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h81)) 
    \err_count_o[4]_INST_0_i_11 
       (.I0(rd_data_2_i[9]),
        .I1(rd_data_1_i[9]),
        .I2(rd_data_3_i[9]),
        .O(\err_count_o[4]_INST_0_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h81)) 
    \err_count_o[4]_INST_0_i_12 
       (.I0(rd_data_2_i[6]),
        .I1(rd_data_1_i[6]),
        .I2(rd_data_3_i[6]),
        .O(\err_count_o[4]_INST_0_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h81)) 
    \err_count_o[4]_INST_0_i_13 
       (.I0(rd_data_2_i[5]),
        .I1(rd_data_1_i[5]),
        .I2(rd_data_3_i[5]),
        .O(\err_count_o[4]_INST_0_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h81)) 
    \err_count_o[4]_INST_0_i_14 
       (.I0(rd_data_2_i[4]),
        .I1(rd_data_1_i[4]),
        .I2(rd_data_3_i[4]),
        .O(\err_count_o[4]_INST_0_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h81)) 
    \err_count_o[4]_INST_0_i_15 
       (.I0(rd_data_2_i[3]),
        .I1(rd_data_1_i[3]),
        .I2(rd_data_3_i[3]),
        .O(\err_count_o[4]_INST_0_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h81)) 
    \err_count_o[4]_INST_0_i_16 
       (.I0(rd_data_2_i[2]),
        .I1(rd_data_1_i[2]),
        .I2(rd_data_3_i[2]),
        .O(\err_count_o[4]_INST_0_i_16_n_0 ));
  LUT3 #(
    .INIT(8'h81)) 
    \err_count_o[4]_INST_0_i_17 
       (.I0(rd_data_2_i[1]),
        .I1(rd_data_1_i[1]),
        .I2(rd_data_3_i[1]),
        .O(\err_count_o[4]_INST_0_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'hFF818100)) 
    \err_count_o[4]_INST_0_i_2 
       (.I0(rd_data_1_i[10]),
        .I1(rd_data_3_i[10]),
        .I2(rd_data_2_i[10]),
        .I3(\err_count_o[4]_INST_0_i_8_n_0 ),
        .I4(\err_count_o[4]_INST_0_i_9_n_0 ),
        .O(\err_count_o[4]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h7E00FF7E)) 
    \err_count_o[4]_INST_0_i_3 
       (.I0(rd_data_1_i[7]),
        .I1(rd_data_3_i[7]),
        .I2(rd_data_2_i[7]),
        .I3(\err_count_o[4]_INST_0_i_10_n_0 ),
        .I4(\err_count_o[4]_INST_0_i_11_n_0 ),
        .O(\err_count_o[4]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000001700171717)) 
    \err_count_o[4]_INST_0_i_4 
       (.I0(\err_count_o[4]_INST_0_i_12_n_0 ),
        .I1(\err_count_o[4]_INST_0_i_13_n_0 ),
        .I2(\err_count_o[4]_INST_0_i_14_n_0 ),
        .I3(\err_count_o[4]_INST_0_i_15_n_0 ),
        .I4(\err_count_o[4]_INST_0_i_16_n_0 ),
        .I5(\err_count_o[4]_INST_0_i_17_n_0 ),
        .O(\err_count_o[4]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \err_count_o[4]_INST_0_i_5 
       (.I0(\err_count_o[2]_INST_0_i_4_n_0 ),
        .I1(\err_count_o[2]_INST_0_i_5_n_0 ),
        .I2(\err_count_o[2]_INST_0_i_1_n_0 ),
        .I3(\err_count_o[2]_INST_0_i_2_n_0 ),
        .I4(\err_count_o[2]_INST_0_i_3_n_0 ),
        .O(\err_count_o[4]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'h7E)) 
    \err_count_o[4]_INST_0_i_6 
       (.I0(rd_data_2_i[14]),
        .I1(rd_data_1_i[14]),
        .I2(rd_data_3_i[14]),
        .O(\err_count_o[4]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h81)) 
    \err_count_o[4]_INST_0_i_7 
       (.I0(rd_data_2_i[15]),
        .I1(rd_data_1_i[15]),
        .I2(rd_data_3_i[15]),
        .O(\err_count_o[4]_INST_0_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h81)) 
    \err_count_o[4]_INST_0_i_8 
       (.I0(rd_data_2_i[11]),
        .I1(rd_data_1_i[11]),
        .I2(rd_data_3_i[11]),
        .O(\err_count_o[4]_INST_0_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h81)) 
    \err_count_o[4]_INST_0_i_9 
       (.I0(rd_data_2_i[12]),
        .I1(rd_data_1_i[12]),
        .I2(rd_data_3_i[12]),
        .O(\err_count_o[4]_INST_0_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \voted_data_o[0]_INST_0 
       (.I0(rd_data_1_i[0]),
        .I1(rd_data_3_i[0]),
        .I2(rd_data_2_i[0]),
        .O(voted_data_o[0]));
  LUT3 #(
    .INIT(8'hE8)) 
    \voted_data_o[10]_INST_0 
       (.I0(rd_data_1_i[10]),
        .I1(rd_data_2_i[10]),
        .I2(rd_data_3_i[10]),
        .O(voted_data_o[10]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \voted_data_o[11]_INST_0 
       (.I0(rd_data_1_i[11]),
        .I1(rd_data_3_i[11]),
        .I2(rd_data_2_i[11]),
        .O(voted_data_o[11]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \voted_data_o[12]_INST_0 
       (.I0(rd_data_1_i[12]),
        .I1(rd_data_3_i[12]),
        .I2(rd_data_2_i[12]),
        .O(voted_data_o[12]));
  LUT3 #(
    .INIT(8'hE8)) 
    \voted_data_o[13]_INST_0 
       (.I0(rd_data_1_i[13]),
        .I1(rd_data_2_i[13]),
        .I2(rd_data_3_i[13]),
        .O(voted_data_o[13]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \voted_data_o[14]_INST_0 
       (.I0(rd_data_1_i[14]),
        .I1(rd_data_3_i[14]),
        .I2(rd_data_2_i[14]),
        .O(voted_data_o[14]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \voted_data_o[15]_INST_0 
       (.I0(rd_data_1_i[15]),
        .I1(rd_data_3_i[15]),
        .I2(rd_data_2_i[15]),
        .O(voted_data_o[15]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \voted_data_o[1]_INST_0 
       (.I0(rd_data_1_i[1]),
        .I1(rd_data_3_i[1]),
        .I2(rd_data_2_i[1]),
        .O(voted_data_o[1]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \voted_data_o[2]_INST_0 
       (.I0(rd_data_1_i[2]),
        .I1(rd_data_3_i[2]),
        .I2(rd_data_2_i[2]),
        .O(voted_data_o[2]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \voted_data_o[3]_INST_0 
       (.I0(rd_data_1_i[3]),
        .I1(rd_data_3_i[3]),
        .I2(rd_data_2_i[3]),
        .O(voted_data_o[3]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \voted_data_o[4]_INST_0 
       (.I0(rd_data_1_i[4]),
        .I1(rd_data_3_i[4]),
        .I2(rd_data_2_i[4]),
        .O(voted_data_o[4]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \voted_data_o[5]_INST_0 
       (.I0(rd_data_1_i[5]),
        .I1(rd_data_3_i[5]),
        .I2(rd_data_2_i[5]),
        .O(voted_data_o[5]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \voted_data_o[6]_INST_0 
       (.I0(rd_data_1_i[6]),
        .I1(rd_data_3_i[6]),
        .I2(rd_data_2_i[6]),
        .O(voted_data_o[6]));
  LUT3 #(
    .INIT(8'hE8)) 
    \voted_data_o[7]_INST_0 
       (.I0(rd_data_1_i[7]),
        .I1(rd_data_2_i[7]),
        .I2(rd_data_3_i[7]),
        .O(voted_data_o[7]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \voted_data_o[8]_INST_0 
       (.I0(rd_data_1_i[8]),
        .I1(rd_data_3_i[8]),
        .I2(rd_data_2_i[8]),
        .O(voted_data_o[8]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \voted_data_o[9]_INST_0 
       (.I0(rd_data_1_i[9]),
        .I1(rd_data_3_i[9]),
        .I2(rd_data_2_i[9]),
        .O(voted_data_o[9]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
