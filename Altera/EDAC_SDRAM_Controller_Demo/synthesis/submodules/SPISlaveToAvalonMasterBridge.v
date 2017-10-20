// (C) 2001-2016 Intel Corporation. All rights reserved.
// Your use of Intel Corporation's design tools, logic functions and other 
// software and tools, and its AMPP partner logic functions, and any output 
// files any of the foregoing (including device programming or simulation 
// files), and any associated documentation or information are expressly subject 
// to the terms and conditions of the Intel Program License Subscription 
// Agreement, Intel MegaCore Function License Agreement, or other applicable 
// license agreement, including, without limitation, that your use is for the 
// sole purpose of programming logic devices manufactured by Intel and sold by 
// Intel or its authorized distributors.  Please refer to the applicable 
// agreement for further details.


//megafunction wizard: %Altera SOPC Builder%
//GENERATION: STANDARD
//VERSION: WM1.0


//Legal Notice: (C)2007 Altera Corporation. All rights reserved.  Your
//use of Altera Corporation's design tools, logic functions and other
//software and tools, and its AMPP partner logic functions, and any
//output files any of the foregoing (including device programming or
//simulation files), and any associated documentation or information are
//expressly subject to the terms and conditions of the Altera Program
//License Subscription Agreement or other applicable license agreement,
//including, without limitation, that your use is for the sole purpose
//of programming logic devices manufactured by Altera and sold by Altera
//or its authorized distributors.  Please refer to the applicable
//agreement for further details.

// synthesis translate_off
`timescale 1ns / 1ps
// synthesis translate_on

// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module altera_avalon_packets_to_master_inst_for_spichain_in_stream_arbitrator (
                                                                                // inputs:
                                                                                 altera_avalon_packets_to_master_inst_for_spichain_in_stream_ready,
                                                                                 channel_adapter_btop_for_spichain_out_data,
                                                                                 channel_adapter_btop_for_spichain_out_endofpacket,
                                                                                 channel_adapter_btop_for_spichain_out_startofpacket,
                                                                                 channel_adapter_btop_for_spichain_out_valid,
                                                                                 clk,
                                                                                 reset_n,

                                                                                // outputs:
                                                                                 altera_avalon_packets_to_master_inst_for_spichain_in_stream_data,
                                                                                 altera_avalon_packets_to_master_inst_for_spichain_in_stream_endofpacket,
                                                                                 altera_avalon_packets_to_master_inst_for_spichain_in_stream_ready_from_sa,
                                                                                 altera_avalon_packets_to_master_inst_for_spichain_in_stream_startofpacket,
                                                                                 altera_avalon_packets_to_master_inst_for_spichain_in_stream_valid
                                                                              )
;

  output  [  7: 0] altera_avalon_packets_to_master_inst_for_spichain_in_stream_data;
  output           altera_avalon_packets_to_master_inst_for_spichain_in_stream_endofpacket;
  output           altera_avalon_packets_to_master_inst_for_spichain_in_stream_ready_from_sa;
  output           altera_avalon_packets_to_master_inst_for_spichain_in_stream_startofpacket;
  output           altera_avalon_packets_to_master_inst_for_spichain_in_stream_valid;
  input            altera_avalon_packets_to_master_inst_for_spichain_in_stream_ready;
  input   [  7: 0] channel_adapter_btop_for_spichain_out_data;
  input            channel_adapter_btop_for_spichain_out_endofpacket;
  input            channel_adapter_btop_for_spichain_out_startofpacket;
  input            channel_adapter_btop_for_spichain_out_valid;
  input            clk;
  input            reset_n;

  wire    [  7: 0] altera_avalon_packets_to_master_inst_for_spichain_in_stream_data;
  wire             altera_avalon_packets_to_master_inst_for_spichain_in_stream_endofpacket;
  wire             altera_avalon_packets_to_master_inst_for_spichain_in_stream_ready_from_sa;
  wire             altera_avalon_packets_to_master_inst_for_spichain_in_stream_startofpacket;
  wire             altera_avalon_packets_to_master_inst_for_spichain_in_stream_valid;
  //mux altera_avalon_packets_to_master_inst_for_spichain_in_stream_data, which is an e_mux
  assign altera_avalon_packets_to_master_inst_for_spichain_in_stream_data = channel_adapter_btop_for_spichain_out_data;

  //mux altera_avalon_packets_to_master_inst_for_spichain_in_stream_endofpacket, which is an e_mux
  assign altera_avalon_packets_to_master_inst_for_spichain_in_stream_endofpacket = channel_adapter_btop_for_spichain_out_endofpacket;

  //assign altera_avalon_packets_to_master_inst_for_spichain_in_stream_ready_from_sa = altera_avalon_packets_to_master_inst_for_spichain_in_stream_ready so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign altera_avalon_packets_to_master_inst_for_spichain_in_stream_ready_from_sa = altera_avalon_packets_to_master_inst_for_spichain_in_stream_ready;

  //mux altera_avalon_packets_to_master_inst_for_spichain_in_stream_startofpacket, which is an e_mux
  assign altera_avalon_packets_to_master_inst_for_spichain_in_stream_startofpacket = channel_adapter_btop_for_spichain_out_startofpacket;

  //mux altera_avalon_packets_to_master_inst_for_spichain_in_stream_valid, which is an e_mux
  assign altera_avalon_packets_to_master_inst_for_spichain_in_stream_valid = channel_adapter_btop_for_spichain_out_valid;


endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module altera_avalon_packets_to_master_inst_for_spichain_out_stream_arbitrator (
                                                                                 // inputs:
                                                                                  altera_avalon_packets_to_master_inst_for_spichain_out_stream_data,
                                                                                  altera_avalon_packets_to_master_inst_for_spichain_out_stream_endofpacket,
                                                                                  altera_avalon_packets_to_master_inst_for_spichain_out_stream_startofpacket,
                                                                                  altera_avalon_packets_to_master_inst_for_spichain_out_stream_valid,
                                                                                  channel_adapter_ptob_for_spichain_in_ready_from_sa,
                                                                                  clk,
                                                                                  reset_n,

                                                                                 // outputs:
                                                                                  altera_avalon_packets_to_master_inst_for_spichain_out_stream_ready,
                                                                                  altera_avalon_packets_to_master_inst_for_spichain_out_stream_reset_n
                                                                               )
;

  output           altera_avalon_packets_to_master_inst_for_spichain_out_stream_ready;
  output           altera_avalon_packets_to_master_inst_for_spichain_out_stream_reset_n;
  input   [  7: 0] altera_avalon_packets_to_master_inst_for_spichain_out_stream_data;
  input            altera_avalon_packets_to_master_inst_for_spichain_out_stream_endofpacket;
  input            altera_avalon_packets_to_master_inst_for_spichain_out_stream_startofpacket;
  input            altera_avalon_packets_to_master_inst_for_spichain_out_stream_valid;
  input            channel_adapter_ptob_for_spichain_in_ready_from_sa;
  input            clk;
  input            reset_n;

  wire             altera_avalon_packets_to_master_inst_for_spichain_out_stream_ready;
  wire             altera_avalon_packets_to_master_inst_for_spichain_out_stream_reset_n;
  //altera_avalon_packets_to_master_inst_for_spichain_out_stream_reset_n assignment, which is an e_assign
  assign altera_avalon_packets_to_master_inst_for_spichain_out_stream_reset_n = reset_n;

  //mux altera_avalon_packets_to_master_inst_for_spichain_out_stream_ready, which is an e_mux
  assign altera_avalon_packets_to_master_inst_for_spichain_out_stream_ready = channel_adapter_ptob_for_spichain_in_ready_from_sa;


endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module altera_avalon_st_bytes_to_packets_inst_for_spichain_in_bytes_stream_arbitrator (
                                                                                        // inputs:
                                                                                         altera_avalon_st_bytes_to_packets_inst_for_spichain_in_bytes_stream_ready,
                                                                                         clk,
                                                                                         reset_n,
                                                                                         spislave_inst_for_spichain_avalon_streaming_source_data,
                                                                                         spislave_inst_for_spichain_avalon_streaming_source_valid,

                                                                                        // outputs:
                                                                                         altera_avalon_st_bytes_to_packets_inst_for_spichain_in_bytes_stream_data,
                                                                                         altera_avalon_st_bytes_to_packets_inst_for_spichain_in_bytes_stream_ready_from_sa,
                                                                                         altera_avalon_st_bytes_to_packets_inst_for_spichain_in_bytes_stream_valid
                                                                                      )
;

  output  [  7: 0] altera_avalon_st_bytes_to_packets_inst_for_spichain_in_bytes_stream_data;
  output           altera_avalon_st_bytes_to_packets_inst_for_spichain_in_bytes_stream_ready_from_sa;
  output           altera_avalon_st_bytes_to_packets_inst_for_spichain_in_bytes_stream_valid;
  input            altera_avalon_st_bytes_to_packets_inst_for_spichain_in_bytes_stream_ready;
  input            clk;
  input            reset_n;
  input   [  7: 0] spislave_inst_for_spichain_avalon_streaming_source_data;
  input            spislave_inst_for_spichain_avalon_streaming_source_valid;

  wire    [  7: 0] altera_avalon_st_bytes_to_packets_inst_for_spichain_in_bytes_stream_data;
  wire             altera_avalon_st_bytes_to_packets_inst_for_spichain_in_bytes_stream_ready_from_sa;
  wire             altera_avalon_st_bytes_to_packets_inst_for_spichain_in_bytes_stream_valid;
  //mux altera_avalon_st_bytes_to_packets_inst_for_spichain_in_bytes_stream_data, which is an e_mux
  assign altera_avalon_st_bytes_to_packets_inst_for_spichain_in_bytes_stream_data = spislave_inst_for_spichain_avalon_streaming_source_data;

  //assign altera_avalon_st_bytes_to_packets_inst_for_spichain_in_bytes_stream_ready_from_sa = altera_avalon_st_bytes_to_packets_inst_for_spichain_in_bytes_stream_ready so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign altera_avalon_st_bytes_to_packets_inst_for_spichain_in_bytes_stream_ready_from_sa = altera_avalon_st_bytes_to_packets_inst_for_spichain_in_bytes_stream_ready;

  //mux altera_avalon_st_bytes_to_packets_inst_for_spichain_in_bytes_stream_valid, which is an e_mux
  assign altera_avalon_st_bytes_to_packets_inst_for_spichain_in_bytes_stream_valid = spislave_inst_for_spichain_avalon_streaming_source_valid;


endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module altera_avalon_st_bytes_to_packets_inst_for_spichain_out_packets_stream_arbitrator (
                                                                                           // inputs:
                                                                                            altera_avalon_st_bytes_to_packets_inst_for_spichain_out_packets_stream_channel,
                                                                                            altera_avalon_st_bytes_to_packets_inst_for_spichain_out_packets_stream_data,
                                                                                            altera_avalon_st_bytes_to_packets_inst_for_spichain_out_packets_stream_endofpacket,
                                                                                            altera_avalon_st_bytes_to_packets_inst_for_spichain_out_packets_stream_startofpacket,
                                                                                            altera_avalon_st_bytes_to_packets_inst_for_spichain_out_packets_stream_valid,
                                                                                            channel_adapter_btop_for_spichain_in_ready_from_sa,
                                                                                            clk,
                                                                                            reset_n,

                                                                                           // outputs:
                                                                                            altera_avalon_st_bytes_to_packets_inst_for_spichain_out_packets_stream_ready,
                                                                                            altera_avalon_st_bytes_to_packets_inst_for_spichain_out_packets_stream_reset_n
                                                                                         )
;

  output           altera_avalon_st_bytes_to_packets_inst_for_spichain_out_packets_stream_ready;
  output           altera_avalon_st_bytes_to_packets_inst_for_spichain_out_packets_stream_reset_n;
  input   [  7: 0] altera_avalon_st_bytes_to_packets_inst_for_spichain_out_packets_stream_channel;
  input   [  7: 0] altera_avalon_st_bytes_to_packets_inst_for_spichain_out_packets_stream_data;
  input            altera_avalon_st_bytes_to_packets_inst_for_spichain_out_packets_stream_endofpacket;
  input            altera_avalon_st_bytes_to_packets_inst_for_spichain_out_packets_stream_startofpacket;
  input            altera_avalon_st_bytes_to_packets_inst_for_spichain_out_packets_stream_valid;
  input            channel_adapter_btop_for_spichain_in_ready_from_sa;
  input            clk;
  input            reset_n;

  wire             altera_avalon_st_bytes_to_packets_inst_for_spichain_out_packets_stream_ready;
  wire             altera_avalon_st_bytes_to_packets_inst_for_spichain_out_packets_stream_reset_n;
  //altera_avalon_st_bytes_to_packets_inst_for_spichain_out_packets_stream_reset_n assignment, which is an e_assign
  assign altera_avalon_st_bytes_to_packets_inst_for_spichain_out_packets_stream_reset_n = reset_n;

  //mux altera_avalon_st_bytes_to_packets_inst_for_spichain_out_packets_stream_ready, which is an e_mux
  assign altera_avalon_st_bytes_to_packets_inst_for_spichain_out_packets_stream_ready = channel_adapter_btop_for_spichain_in_ready_from_sa;


endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module altera_avalon_st_packets_to_bytes_inst_for_spichain_in_packets_stream_arbitrator (
                                                                                          // inputs:
                                                                                           altera_avalon_st_packets_to_bytes_inst_for_spichain_in_packets_stream_ready,
                                                                                           channel_adapter_ptob_for_spichain_out_channel,
                                                                                           channel_adapter_ptob_for_spichain_out_data,
                                                                                           channel_adapter_ptob_for_spichain_out_endofpacket,
                                                                                           channel_adapter_ptob_for_spichain_out_startofpacket,
                                                                                           channel_adapter_ptob_for_spichain_out_valid,
                                                                                           clk,
                                                                                           reset_n,

                                                                                          // outputs:
                                                                                           altera_avalon_st_packets_to_bytes_inst_for_spichain_in_packets_stream_channel,
                                                                                           altera_avalon_st_packets_to_bytes_inst_for_spichain_in_packets_stream_data,
                                                                                           altera_avalon_st_packets_to_bytes_inst_for_spichain_in_packets_stream_endofpacket,
                                                                                           altera_avalon_st_packets_to_bytes_inst_for_spichain_in_packets_stream_ready_from_sa,
                                                                                           altera_avalon_st_packets_to_bytes_inst_for_spichain_in_packets_stream_reset_n,
                                                                                           altera_avalon_st_packets_to_bytes_inst_for_spichain_in_packets_stream_startofpacket,
                                                                                           altera_avalon_st_packets_to_bytes_inst_for_spichain_in_packets_stream_valid
                                                                                        )
;

  output  [  7: 0] altera_avalon_st_packets_to_bytes_inst_for_spichain_in_packets_stream_channel;
  output  [  7: 0] altera_avalon_st_packets_to_bytes_inst_for_spichain_in_packets_stream_data;
  output           altera_avalon_st_packets_to_bytes_inst_for_spichain_in_packets_stream_endofpacket;
  output           altera_avalon_st_packets_to_bytes_inst_for_spichain_in_packets_stream_ready_from_sa;
  output           altera_avalon_st_packets_to_bytes_inst_for_spichain_in_packets_stream_reset_n;
  output           altera_avalon_st_packets_to_bytes_inst_for_spichain_in_packets_stream_startofpacket;
  output           altera_avalon_st_packets_to_bytes_inst_for_spichain_in_packets_stream_valid;
  input            altera_avalon_st_packets_to_bytes_inst_for_spichain_in_packets_stream_ready;
  input   [  7: 0] channel_adapter_ptob_for_spichain_out_channel;
  input   [  7: 0] channel_adapter_ptob_for_spichain_out_data;
  input            channel_adapter_ptob_for_spichain_out_endofpacket;
  input            channel_adapter_ptob_for_spichain_out_startofpacket;
  input            channel_adapter_ptob_for_spichain_out_valid;
  input            clk;
  input            reset_n;

  wire    [  7: 0] altera_avalon_st_packets_to_bytes_inst_for_spichain_in_packets_stream_channel;
  wire    [  7: 0] altera_avalon_st_packets_to_bytes_inst_for_spichain_in_packets_stream_data;
  wire             altera_avalon_st_packets_to_bytes_inst_for_spichain_in_packets_stream_endofpacket;
  wire             altera_avalon_st_packets_to_bytes_inst_for_spichain_in_packets_stream_ready_from_sa;
  wire             altera_avalon_st_packets_to_bytes_inst_for_spichain_in_packets_stream_reset_n;
  wire             altera_avalon_st_packets_to_bytes_inst_for_spichain_in_packets_stream_startofpacket;
  wire             altera_avalon_st_packets_to_bytes_inst_for_spichain_in_packets_stream_valid;
  //mux altera_avalon_st_packets_to_bytes_inst_for_spichain_in_packets_stream_channel, which is an e_mux
  assign altera_avalon_st_packets_to_bytes_inst_for_spichain_in_packets_stream_channel = channel_adapter_ptob_for_spichain_out_channel;

  //mux altera_avalon_st_packets_to_bytes_inst_for_spichain_in_packets_stream_data, which is an e_mux
  assign altera_avalon_st_packets_to_bytes_inst_for_spichain_in_packets_stream_data = channel_adapter_ptob_for_spichain_out_data;

  //mux altera_avalon_st_packets_to_bytes_inst_for_spichain_in_packets_stream_endofpacket, which is an e_mux
  assign altera_avalon_st_packets_to_bytes_inst_for_spichain_in_packets_stream_endofpacket = channel_adapter_ptob_for_spichain_out_endofpacket;

  //assign altera_avalon_st_packets_to_bytes_inst_for_spichain_in_packets_stream_ready_from_sa = altera_avalon_st_packets_to_bytes_inst_for_spichain_in_packets_stream_ready so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign altera_avalon_st_packets_to_bytes_inst_for_spichain_in_packets_stream_ready_from_sa = altera_avalon_st_packets_to_bytes_inst_for_spichain_in_packets_stream_ready;

  //mux altera_avalon_st_packets_to_bytes_inst_for_spichain_in_packets_stream_startofpacket, which is an e_mux
  assign altera_avalon_st_packets_to_bytes_inst_for_spichain_in_packets_stream_startofpacket = channel_adapter_ptob_for_spichain_out_startofpacket;

  //mux altera_avalon_st_packets_to_bytes_inst_for_spichain_in_packets_stream_valid, which is an e_mux
  assign altera_avalon_st_packets_to_bytes_inst_for_spichain_in_packets_stream_valid = channel_adapter_ptob_for_spichain_out_valid;

  //altera_avalon_st_packets_to_bytes_inst_for_spichain_in_packets_stream_reset_n assignment, which is an e_assign
  assign altera_avalon_st_packets_to_bytes_inst_for_spichain_in_packets_stream_reset_n = reset_n;


endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module altera_avalon_st_packets_to_bytes_inst_for_spichain_out_bytes_stream_arbitrator (
                                                                                         // inputs:
                                                                                          altera_avalon_st_packets_to_bytes_inst_for_spichain_out_bytes_stream_data,
                                                                                          altera_avalon_st_packets_to_bytes_inst_for_spichain_out_bytes_stream_valid,
                                                                                          clk,
                                                                                          reset_n,
                                                                                          spislave_inst_for_spichain_avalon_streaming_sink_ready_from_sa,

                                                                                         // outputs:
                                                                                          altera_avalon_st_packets_to_bytes_inst_for_spichain_out_bytes_stream_ready
                                                                                       )
;

  output           altera_avalon_st_packets_to_bytes_inst_for_spichain_out_bytes_stream_ready;
  input   [  7: 0] altera_avalon_st_packets_to_bytes_inst_for_spichain_out_bytes_stream_data;
  input            altera_avalon_st_packets_to_bytes_inst_for_spichain_out_bytes_stream_valid;
  input            clk;
  input            reset_n;
  input            spislave_inst_for_spichain_avalon_streaming_sink_ready_from_sa;

  wire             altera_avalon_st_packets_to_bytes_inst_for_spichain_out_bytes_stream_ready;
  //mux altera_avalon_st_packets_to_bytes_inst_for_spichain_out_bytes_stream_ready, which is an e_mux
  assign altera_avalon_st_packets_to_bytes_inst_for_spichain_out_bytes_stream_ready = spislave_inst_for_spichain_avalon_streaming_sink_ready_from_sa;


endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module channel_adapter_btop_for_spichain_in_arbitrator (
                                                         // inputs:
                                                          altera_avalon_st_bytes_to_packets_inst_for_spichain_out_packets_stream_channel,
                                                          altera_avalon_st_bytes_to_packets_inst_for_spichain_out_packets_stream_data,
                                                          altera_avalon_st_bytes_to_packets_inst_for_spichain_out_packets_stream_endofpacket,
                                                          altera_avalon_st_bytes_to_packets_inst_for_spichain_out_packets_stream_startofpacket,
                                                          altera_avalon_st_bytes_to_packets_inst_for_spichain_out_packets_stream_valid,
                                                          channel_adapter_btop_for_spichain_in_ready,
                                                          clk,
                                                          reset_n,

                                                         // outputs:
                                                          channel_adapter_btop_for_spichain_in_channel,
                                                          channel_adapter_btop_for_spichain_in_data,
                                                          channel_adapter_btop_for_spichain_in_endofpacket,
                                                          channel_adapter_btop_for_spichain_in_ready_from_sa,
                                                          channel_adapter_btop_for_spichain_in_reset_n,
                                                          channel_adapter_btop_for_spichain_in_startofpacket,
                                                          channel_adapter_btop_for_spichain_in_valid
                                                       )
;

  output  [  7: 0] channel_adapter_btop_for_spichain_in_channel;
  output  [  7: 0] channel_adapter_btop_for_spichain_in_data;
  output           channel_adapter_btop_for_spichain_in_endofpacket;
  output           channel_adapter_btop_for_spichain_in_ready_from_sa;
  output           channel_adapter_btop_for_spichain_in_reset_n;
  output           channel_adapter_btop_for_spichain_in_startofpacket;
  output           channel_adapter_btop_for_spichain_in_valid;
  input   [  7: 0] altera_avalon_st_bytes_to_packets_inst_for_spichain_out_packets_stream_channel;
  input   [  7: 0] altera_avalon_st_bytes_to_packets_inst_for_spichain_out_packets_stream_data;
  input            altera_avalon_st_bytes_to_packets_inst_for_spichain_out_packets_stream_endofpacket;
  input            altera_avalon_st_bytes_to_packets_inst_for_spichain_out_packets_stream_startofpacket;
  input            altera_avalon_st_bytes_to_packets_inst_for_spichain_out_packets_stream_valid;
  input            channel_adapter_btop_for_spichain_in_ready;
  input            clk;
  input            reset_n;

  wire    [  7: 0] channel_adapter_btop_for_spichain_in_channel;
  wire    [  7: 0] channel_adapter_btop_for_spichain_in_data;
  wire             channel_adapter_btop_for_spichain_in_endofpacket;
  wire             channel_adapter_btop_for_spichain_in_ready_from_sa;
  wire             channel_adapter_btop_for_spichain_in_reset_n;
  wire             channel_adapter_btop_for_spichain_in_startofpacket;
  wire             channel_adapter_btop_for_spichain_in_valid;
  //mux channel_adapter_btop_for_spichain_in_channel, which is an e_mux
  assign channel_adapter_btop_for_spichain_in_channel = altera_avalon_st_bytes_to_packets_inst_for_spichain_out_packets_stream_channel;

  //mux channel_adapter_btop_for_spichain_in_data, which is an e_mux
  assign channel_adapter_btop_for_spichain_in_data = altera_avalon_st_bytes_to_packets_inst_for_spichain_out_packets_stream_data;

  //mux channel_adapter_btop_for_spichain_in_endofpacket, which is an e_mux
  assign channel_adapter_btop_for_spichain_in_endofpacket = altera_avalon_st_bytes_to_packets_inst_for_spichain_out_packets_stream_endofpacket;

  //assign channel_adapter_btop_for_spichain_in_ready_from_sa = channel_adapter_btop_for_spichain_in_ready so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign channel_adapter_btop_for_spichain_in_ready_from_sa = channel_adapter_btop_for_spichain_in_ready;

  //mux channel_adapter_btop_for_spichain_in_startofpacket, which is an e_mux
  assign channel_adapter_btop_for_spichain_in_startofpacket = altera_avalon_st_bytes_to_packets_inst_for_spichain_out_packets_stream_startofpacket;

  //mux channel_adapter_btop_for_spichain_in_valid, which is an e_mux
  assign channel_adapter_btop_for_spichain_in_valid = altera_avalon_st_bytes_to_packets_inst_for_spichain_out_packets_stream_valid;

  //channel_adapter_btop_for_spichain_in_reset_n assignment, which is an e_assign
  assign channel_adapter_btop_for_spichain_in_reset_n = reset_n;


endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module channel_adapter_btop_for_spichain_out_arbitrator (
                                                          // inputs:
                                                           altera_avalon_packets_to_master_inst_for_spichain_in_stream_ready_from_sa,
                                                           channel_adapter_btop_for_spichain_out_data,
                                                           channel_adapter_btop_for_spichain_out_endofpacket,
                                                           channel_adapter_btop_for_spichain_out_startofpacket,
                                                           channel_adapter_btop_for_spichain_out_valid,
                                                           clk,
                                                           reset_n,

                                                          // outputs:
                                                           channel_adapter_btop_for_spichain_out_ready
                                                        )
;

  output           channel_adapter_btop_for_spichain_out_ready;
  input            altera_avalon_packets_to_master_inst_for_spichain_in_stream_ready_from_sa;
  input   [  7: 0] channel_adapter_btop_for_spichain_out_data;
  input            channel_adapter_btop_for_spichain_out_endofpacket;
  input            channel_adapter_btop_for_spichain_out_startofpacket;
  input            channel_adapter_btop_for_spichain_out_valid;
  input            clk;
  input            reset_n;

  wire             channel_adapter_btop_for_spichain_out_ready;
  //mux channel_adapter_btop_for_spichain_out_ready, which is an e_mux
  assign channel_adapter_btop_for_spichain_out_ready = altera_avalon_packets_to_master_inst_for_spichain_in_stream_ready_from_sa;


endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module channel_adapter_ptob_for_spichain_in_arbitrator (
                                                         // inputs:
                                                          altera_avalon_packets_to_master_inst_for_spichain_out_stream_data,
                                                          altera_avalon_packets_to_master_inst_for_spichain_out_stream_endofpacket,
                                                          altera_avalon_packets_to_master_inst_for_spichain_out_stream_startofpacket,
                                                          altera_avalon_packets_to_master_inst_for_spichain_out_stream_valid,
                                                          channel_adapter_ptob_for_spichain_in_ready,
                                                          clk,
                                                          reset_n,

                                                         // outputs:
                                                          channel_adapter_ptob_for_spichain_in_data,
                                                          channel_adapter_ptob_for_spichain_in_endofpacket,
                                                          channel_adapter_ptob_for_spichain_in_ready_from_sa,
                                                          channel_adapter_ptob_for_spichain_in_reset_n,
                                                          channel_adapter_ptob_for_spichain_in_startofpacket,
                                                          channel_adapter_ptob_for_spichain_in_valid
                                                       )
;

  output  [  7: 0] channel_adapter_ptob_for_spichain_in_data;
  output           channel_adapter_ptob_for_spichain_in_endofpacket;
  output           channel_adapter_ptob_for_spichain_in_ready_from_sa;
  output           channel_adapter_ptob_for_spichain_in_reset_n;
  output           channel_adapter_ptob_for_spichain_in_startofpacket;
  output           channel_adapter_ptob_for_spichain_in_valid;
  input   [  7: 0] altera_avalon_packets_to_master_inst_for_spichain_out_stream_data;
  input            altera_avalon_packets_to_master_inst_for_spichain_out_stream_endofpacket;
  input            altera_avalon_packets_to_master_inst_for_spichain_out_stream_startofpacket;
  input            altera_avalon_packets_to_master_inst_for_spichain_out_stream_valid;
  input            channel_adapter_ptob_for_spichain_in_ready;
  input            clk;
  input            reset_n;

  wire    [  7: 0] channel_adapter_ptob_for_spichain_in_data;
  wire             channel_adapter_ptob_for_spichain_in_endofpacket;
  wire             channel_adapter_ptob_for_spichain_in_ready_from_sa;
  wire             channel_adapter_ptob_for_spichain_in_reset_n;
  wire             channel_adapter_ptob_for_spichain_in_startofpacket;
  wire             channel_adapter_ptob_for_spichain_in_valid;
  //mux channel_adapter_ptob_for_spichain_in_data, which is an e_mux
  assign channel_adapter_ptob_for_spichain_in_data = altera_avalon_packets_to_master_inst_for_spichain_out_stream_data;

  //mux channel_adapter_ptob_for_spichain_in_endofpacket, which is an e_mux
  assign channel_adapter_ptob_for_spichain_in_endofpacket = altera_avalon_packets_to_master_inst_for_spichain_out_stream_endofpacket;

  //assign channel_adapter_ptob_for_spichain_in_ready_from_sa = channel_adapter_ptob_for_spichain_in_ready so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign channel_adapter_ptob_for_spichain_in_ready_from_sa = channel_adapter_ptob_for_spichain_in_ready;

  //mux channel_adapter_ptob_for_spichain_in_startofpacket, which is an e_mux
  assign channel_adapter_ptob_for_spichain_in_startofpacket = altera_avalon_packets_to_master_inst_for_spichain_out_stream_startofpacket;

  //mux channel_adapter_ptob_for_spichain_in_valid, which is an e_mux
  assign channel_adapter_ptob_for_spichain_in_valid = altera_avalon_packets_to_master_inst_for_spichain_out_stream_valid;

  //channel_adapter_ptob_for_spichain_in_reset_n assignment, which is an e_assign
  assign channel_adapter_ptob_for_spichain_in_reset_n = reset_n;


endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module channel_adapter_ptob_for_spichain_out_arbitrator (
                                                          // inputs:
                                                           altera_avalon_st_packets_to_bytes_inst_for_spichain_in_packets_stream_ready_from_sa,
                                                           channel_adapter_ptob_for_spichain_out_channel,
                                                           channel_adapter_ptob_for_spichain_out_data,
                                                           channel_adapter_ptob_for_spichain_out_endofpacket,
                                                           channel_adapter_ptob_for_spichain_out_startofpacket,
                                                           channel_adapter_ptob_for_spichain_out_valid,
                                                           clk,
                                                           reset_n,

                                                          // outputs:
                                                           channel_adapter_ptob_for_spichain_out_ready
                                                        )
;

  output           channel_adapter_ptob_for_spichain_out_ready;
  input            altera_avalon_st_packets_to_bytes_inst_for_spichain_in_packets_stream_ready_from_sa;
  input   [  7: 0] channel_adapter_ptob_for_spichain_out_channel;
  input   [  7: 0] channel_adapter_ptob_for_spichain_out_data;
  input            channel_adapter_ptob_for_spichain_out_endofpacket;
  input            channel_adapter_ptob_for_spichain_out_startofpacket;
  input            channel_adapter_ptob_for_spichain_out_valid;
  input            clk;
  input            reset_n;

  wire             channel_adapter_ptob_for_spichain_out_ready;
  //mux channel_adapter_ptob_for_spichain_out_ready, which is an e_mux
  assign channel_adapter_ptob_for_spichain_out_ready = altera_avalon_st_packets_to_bytes_inst_for_spichain_in_packets_stream_ready_from_sa;


endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module spislave_inst_for_spichain_avalon_streaming_sink_arbitrator (
                                                                     // inputs:
                                                                      altera_avalon_st_packets_to_bytes_inst_for_spichain_out_bytes_stream_data,
                                                                      altera_avalon_st_packets_to_bytes_inst_for_spichain_out_bytes_stream_valid,
                                                                      clk,
                                                                      reset_n,
                                                                      spislave_inst_for_spichain_avalon_streaming_sink_ready,

                                                                     // outputs:
                                                                      spislave_inst_for_spichain_avalon_streaming_sink_data,
                                                                      spislave_inst_for_spichain_avalon_streaming_sink_ready_from_sa,
                                                                      spislave_inst_for_spichain_avalon_streaming_sink_valid
                                                                   )
;

  output  [  7: 0] spislave_inst_for_spichain_avalon_streaming_sink_data;
  output           spislave_inst_for_spichain_avalon_streaming_sink_ready_from_sa;
  output           spislave_inst_for_spichain_avalon_streaming_sink_valid;
  input   [  7: 0] altera_avalon_st_packets_to_bytes_inst_for_spichain_out_bytes_stream_data;
  input            altera_avalon_st_packets_to_bytes_inst_for_spichain_out_bytes_stream_valid;
  input            clk;
  input            reset_n;
  input            spislave_inst_for_spichain_avalon_streaming_sink_ready;

  wire    [  7: 0] spislave_inst_for_spichain_avalon_streaming_sink_data;
  wire             spislave_inst_for_spichain_avalon_streaming_sink_ready_from_sa;
  wire             spislave_inst_for_spichain_avalon_streaming_sink_valid;
  //mux spislave_inst_for_spichain_avalon_streaming_sink_data, which is an e_mux
  assign spislave_inst_for_spichain_avalon_streaming_sink_data = altera_avalon_st_packets_to_bytes_inst_for_spichain_out_bytes_stream_data;

  //assign spislave_inst_for_spichain_avalon_streaming_sink_ready_from_sa = spislave_inst_for_spichain_avalon_streaming_sink_ready so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign spislave_inst_for_spichain_avalon_streaming_sink_ready_from_sa = spislave_inst_for_spichain_avalon_streaming_sink_ready;

  //mux spislave_inst_for_spichain_avalon_streaming_sink_valid, which is an e_mux
  assign spislave_inst_for_spichain_avalon_streaming_sink_valid = altera_avalon_st_packets_to_bytes_inst_for_spichain_out_bytes_stream_valid;


endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module spislave_inst_for_spichain_avalon_streaming_source_arbitrator (
                                                                       // inputs:
                                                                        altera_avalon_st_bytes_to_packets_inst_for_spichain_in_bytes_stream_ready_from_sa,
                                                                        clk,
                                                                        reset_n,
                                                                        spislave_inst_for_spichain_avalon_streaming_source_data,
                                                                        spislave_inst_for_spichain_avalon_streaming_source_valid,

                                                                       // outputs:
                                                                        spislave_inst_for_spichain_avalon_streaming_source_ready,
                                                                        spislave_inst_for_spichain_avalon_streaming_source_reset_n
                                                                     )
;

  output           spislave_inst_for_spichain_avalon_streaming_source_ready;
  output           spislave_inst_for_spichain_avalon_streaming_source_reset_n;
  input            altera_avalon_st_bytes_to_packets_inst_for_spichain_in_bytes_stream_ready_from_sa;
  input            clk;
  input            reset_n;
  input   [  7: 0] spislave_inst_for_spichain_avalon_streaming_source_data;
  input            spislave_inst_for_spichain_avalon_streaming_source_valid;

  wire             spislave_inst_for_spichain_avalon_streaming_source_ready;
  wire             spislave_inst_for_spichain_avalon_streaming_source_reset_n;
  //spislave_inst_for_spichain_avalon_streaming_source_reset_n assignment, which is an e_assign
  assign spislave_inst_for_spichain_avalon_streaming_source_reset_n = reset_n;

  //mux spislave_inst_for_spichain_avalon_streaming_source_ready, which is an e_mux
  assign spislave_inst_for_spichain_avalon_streaming_source_ready = altera_avalon_st_bytes_to_packets_inst_for_spichain_in_bytes_stream_ready_from_sa;


endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module SPISlaveToAvalonMasterBridge_reset_clk_domain_synch_module (
                                                                    // inputs:
                                                                     clk,
                                                                     data_in,
                                                                     reset_n,

                                                                    // outputs:
                                                                     data_out
                                                                  )
;

  output           data_out;
  input            clk;
  input            data_in;
  input            reset_n;

  reg              data_in_d1 /* synthesis ALTERA_ATTRIBUTE = "{-from \"*\"} CUT=ON ; PRESERVE_REGISTER=ON ; SUPPRESS_DA_RULE_INTERNAL=R101"  */;
  reg              data_out /* synthesis ALTERA_ATTRIBUTE = "PRESERVE_REGISTER=ON ; SUPPRESS_DA_RULE_INTERNAL=R101"  */;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          data_in_d1 <= 0;
      else if (1)
          data_in_d1 <= data_in;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          data_out <= 0;
      else if (1)
          data_out <= data_in_d1;
    end



endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module SPISlaveToAvalonMasterBridge (
                                      // 1) global signals:
                                       clk,
                                       reset_n,

                                      // the_altera_avalon_packets_to_master_inst_for_spichain
                                       address_from_the_altera_avalon_packets_to_master_inst_for_spichain,
                                       byteenable_from_the_altera_avalon_packets_to_master_inst_for_spichain,
                                       read_from_the_altera_avalon_packets_to_master_inst_for_spichain,
                                       readdata_to_the_altera_avalon_packets_to_master_inst_for_spichain,
                                       readdatavalid_to_the_altera_avalon_packets_to_master_inst_for_spichain,
                                       waitrequest_to_the_altera_avalon_packets_to_master_inst_for_spichain,
                                       write_from_the_altera_avalon_packets_to_master_inst_for_spichain,
                                       writedata_from_the_altera_avalon_packets_to_master_inst_for_spichain,

                                      // the_spislave_inst_for_spichain
                                       miso_to_and_from_the_spislave_inst_for_spichain,
                                       mosi_to_the_spislave_inst_for_spichain,
                                       nss_to_the_spislave_inst_for_spichain,
                                       sclk_to_the_spislave_inst_for_spichain
                                    )
;
 
  parameter SYNC_DEPTH = 2; /* Number of synchronizer stages for clock crossing */

  output  [ 31: 0] address_from_the_altera_avalon_packets_to_master_inst_for_spichain;
  output  [  3: 0] byteenable_from_the_altera_avalon_packets_to_master_inst_for_spichain;
  inout            miso_to_and_from_the_spislave_inst_for_spichain;
  output           read_from_the_altera_avalon_packets_to_master_inst_for_spichain;
  output           write_from_the_altera_avalon_packets_to_master_inst_for_spichain;
  output  [ 31: 0] writedata_from_the_altera_avalon_packets_to_master_inst_for_spichain;
  input            clk;
  input            mosi_to_the_spislave_inst_for_spichain;
  input            nss_to_the_spislave_inst_for_spichain;
  input   [ 31: 0] readdata_to_the_altera_avalon_packets_to_master_inst_for_spichain;
  input            readdatavalid_to_the_altera_avalon_packets_to_master_inst_for_spichain;
  input            reset_n;
  input            sclk_to_the_spislave_inst_for_spichain;
  input            waitrequest_to_the_altera_avalon_packets_to_master_inst_for_spichain;

  wire    [ 31: 0] address_from_the_altera_avalon_packets_to_master_inst_for_spichain;
  wire    [  7: 0] altera_avalon_packets_to_master_inst_for_spichain_in_stream_data;
  wire             altera_avalon_packets_to_master_inst_for_spichain_in_stream_endofpacket;
  wire             altera_avalon_packets_to_master_inst_for_spichain_in_stream_ready;
  wire             altera_avalon_packets_to_master_inst_for_spichain_in_stream_ready_from_sa;
  wire             altera_avalon_packets_to_master_inst_for_spichain_in_stream_startofpacket;
  wire             altera_avalon_packets_to_master_inst_for_spichain_in_stream_valid;
  wire    [  7: 0] altera_avalon_packets_to_master_inst_for_spichain_out_stream_data;
  wire             altera_avalon_packets_to_master_inst_for_spichain_out_stream_endofpacket;
  wire             altera_avalon_packets_to_master_inst_for_spichain_out_stream_ready;
  wire             altera_avalon_packets_to_master_inst_for_spichain_out_stream_reset_n;
  wire             altera_avalon_packets_to_master_inst_for_spichain_out_stream_startofpacket;
  wire             altera_avalon_packets_to_master_inst_for_spichain_out_stream_valid;
  wire    [  7: 0] altera_avalon_st_bytes_to_packets_inst_for_spichain_in_bytes_stream_data;
  wire             altera_avalon_st_bytes_to_packets_inst_for_spichain_in_bytes_stream_ready;
  wire             altera_avalon_st_bytes_to_packets_inst_for_spichain_in_bytes_stream_ready_from_sa;
  wire             altera_avalon_st_bytes_to_packets_inst_for_spichain_in_bytes_stream_valid;
  wire    [  7: 0] altera_avalon_st_bytes_to_packets_inst_for_spichain_out_packets_stream_channel;
  wire    [  7: 0] altera_avalon_st_bytes_to_packets_inst_for_spichain_out_packets_stream_data;
  wire             altera_avalon_st_bytes_to_packets_inst_for_spichain_out_packets_stream_endofpacket;
  wire             altera_avalon_st_bytes_to_packets_inst_for_spichain_out_packets_stream_ready;
  wire             altera_avalon_st_bytes_to_packets_inst_for_spichain_out_packets_stream_reset_n;
  wire             altera_avalon_st_bytes_to_packets_inst_for_spichain_out_packets_stream_startofpacket;
  wire             altera_avalon_st_bytes_to_packets_inst_for_spichain_out_packets_stream_valid;
  wire    [  7: 0] altera_avalon_st_packets_to_bytes_inst_for_spichain_in_packets_stream_channel;
  wire    [  7: 0] altera_avalon_st_packets_to_bytes_inst_for_spichain_in_packets_stream_data;
  wire             altera_avalon_st_packets_to_bytes_inst_for_spichain_in_packets_stream_endofpacket;
  wire             altera_avalon_st_packets_to_bytes_inst_for_spichain_in_packets_stream_ready;
  wire             altera_avalon_st_packets_to_bytes_inst_for_spichain_in_packets_stream_ready_from_sa;
  wire             altera_avalon_st_packets_to_bytes_inst_for_spichain_in_packets_stream_reset_n;
  wire             altera_avalon_st_packets_to_bytes_inst_for_spichain_in_packets_stream_startofpacket;
  wire             altera_avalon_st_packets_to_bytes_inst_for_spichain_in_packets_stream_valid;
  wire    [  7: 0] altera_avalon_st_packets_to_bytes_inst_for_spichain_out_bytes_stream_data;
  wire             altera_avalon_st_packets_to_bytes_inst_for_spichain_out_bytes_stream_ready;
  wire             altera_avalon_st_packets_to_bytes_inst_for_spichain_out_bytes_stream_valid;
  wire    [  3: 0] byteenable_from_the_altera_avalon_packets_to_master_inst_for_spichain;
  wire    [  7: 0] channel_adapter_btop_for_spichain_in_channel;
  wire    [  7: 0] channel_adapter_btop_for_spichain_in_data;
  wire             channel_adapter_btop_for_spichain_in_endofpacket;
  wire             channel_adapter_btop_for_spichain_in_ready;
  wire             channel_adapter_btop_for_spichain_in_ready_from_sa;
  wire             channel_adapter_btop_for_spichain_in_reset_n;
  wire             channel_adapter_btop_for_spichain_in_startofpacket;
  wire             channel_adapter_btop_for_spichain_in_valid;
  wire    [  7: 0] channel_adapter_btop_for_spichain_out_data;
  wire             channel_adapter_btop_for_spichain_out_endofpacket;
  wire             channel_adapter_btop_for_spichain_out_ready;
  wire             channel_adapter_btop_for_spichain_out_startofpacket;
  wire             channel_adapter_btop_for_spichain_out_valid;
  wire    [  7: 0] channel_adapter_ptob_for_spichain_in_data;
  wire             channel_adapter_ptob_for_spichain_in_endofpacket;
  wire             channel_adapter_ptob_for_spichain_in_ready;
  wire             channel_adapter_ptob_for_spichain_in_ready_from_sa;
  wire             channel_adapter_ptob_for_spichain_in_reset_n;
  wire             channel_adapter_ptob_for_spichain_in_startofpacket;
  wire             channel_adapter_ptob_for_spichain_in_valid;
  wire    [  7: 0] channel_adapter_ptob_for_spichain_out_channel;
  wire    [  7: 0] channel_adapter_ptob_for_spichain_out_data;
  wire             channel_adapter_ptob_for_spichain_out_endofpacket;
  wire             channel_adapter_ptob_for_spichain_out_ready;
  wire             channel_adapter_ptob_for_spichain_out_startofpacket;
  wire             channel_adapter_ptob_for_spichain_out_valid;
  wire             clk_reset_n;
  wire             miso_to_and_from_the_spislave_inst_for_spichain;
  wire             read_from_the_altera_avalon_packets_to_master_inst_for_spichain;
  wire             reset_n_sources;
  wire    [  7: 0] spislave_inst_for_spichain_avalon_streaming_sink_data;
  wire             spislave_inst_for_spichain_avalon_streaming_sink_ready;
  wire             spislave_inst_for_spichain_avalon_streaming_sink_ready_from_sa;
  wire             spislave_inst_for_spichain_avalon_streaming_sink_valid;
  wire    [  7: 0] spislave_inst_for_spichain_avalon_streaming_source_data;
  wire             spislave_inst_for_spichain_avalon_streaming_source_ready;
  wire             spislave_inst_for_spichain_avalon_streaming_source_reset_n;
  wire             spislave_inst_for_spichain_avalon_streaming_source_valid;
  wire             write_from_the_altera_avalon_packets_to_master_inst_for_spichain;
  wire    [ 31: 0] writedata_from_the_altera_avalon_packets_to_master_inst_for_spichain;
  altera_avalon_packets_to_master_inst_for_spichain_in_stream_arbitrator the_altera_avalon_packets_to_master_inst_for_spichain_in_stream
    (
      .altera_avalon_packets_to_master_inst_for_spichain_in_stream_data          (altera_avalon_packets_to_master_inst_for_spichain_in_stream_data),
      .altera_avalon_packets_to_master_inst_for_spichain_in_stream_endofpacket   (altera_avalon_packets_to_master_inst_for_spichain_in_stream_endofpacket),
      .altera_avalon_packets_to_master_inst_for_spichain_in_stream_ready         (altera_avalon_packets_to_master_inst_for_spichain_in_stream_ready),
      .altera_avalon_packets_to_master_inst_for_spichain_in_stream_ready_from_sa (altera_avalon_packets_to_master_inst_for_spichain_in_stream_ready_from_sa),
      .altera_avalon_packets_to_master_inst_for_spichain_in_stream_startofpacket (altera_avalon_packets_to_master_inst_for_spichain_in_stream_startofpacket),
      .altera_avalon_packets_to_master_inst_for_spichain_in_stream_valid         (altera_avalon_packets_to_master_inst_for_spichain_in_stream_valid),
      .channel_adapter_btop_for_spichain_out_data                                (channel_adapter_btop_for_spichain_out_data),
      .channel_adapter_btop_for_spichain_out_endofpacket                         (channel_adapter_btop_for_spichain_out_endofpacket),
      .channel_adapter_btop_for_spichain_out_startofpacket                       (channel_adapter_btop_for_spichain_out_startofpacket),
      .channel_adapter_btop_for_spichain_out_valid                               (channel_adapter_btop_for_spichain_out_valid),
      .clk                                                                       (clk),
      .reset_n                                                                   (clk_reset_n)
    );

  altera_avalon_packets_to_master_inst_for_spichain_out_stream_arbitrator the_altera_avalon_packets_to_master_inst_for_spichain_out_stream
    (
      .altera_avalon_packets_to_master_inst_for_spichain_out_stream_data          (altera_avalon_packets_to_master_inst_for_spichain_out_stream_data),
      .altera_avalon_packets_to_master_inst_for_spichain_out_stream_endofpacket   (altera_avalon_packets_to_master_inst_for_spichain_out_stream_endofpacket),
      .altera_avalon_packets_to_master_inst_for_spichain_out_stream_ready         (altera_avalon_packets_to_master_inst_for_spichain_out_stream_ready),
      .altera_avalon_packets_to_master_inst_for_spichain_out_stream_reset_n       (altera_avalon_packets_to_master_inst_for_spichain_out_stream_reset_n),
      .altera_avalon_packets_to_master_inst_for_spichain_out_stream_startofpacket (altera_avalon_packets_to_master_inst_for_spichain_out_stream_startofpacket),
      .altera_avalon_packets_to_master_inst_for_spichain_out_stream_valid         (altera_avalon_packets_to_master_inst_for_spichain_out_stream_valid),
      .channel_adapter_ptob_for_spichain_in_ready_from_sa                         (channel_adapter_ptob_for_spichain_in_ready_from_sa),
      .clk                                                                        (clk),
      .reset_n                                                                    (clk_reset_n)
    );

  altera_avalon_packets_to_master_inst_for_spichain the_altera_avalon_packets_to_master_inst_for_spichain
    (
      .address           (address_from_the_altera_avalon_packets_to_master_inst_for_spichain),
      .byteenable        (byteenable_from_the_altera_avalon_packets_to_master_inst_for_spichain),
      .clk               (clk),
      .in_data           (altera_avalon_packets_to_master_inst_for_spichain_in_stream_data),
      .in_endofpacket    (altera_avalon_packets_to_master_inst_for_spichain_in_stream_endofpacket),
      .in_ready          (altera_avalon_packets_to_master_inst_for_spichain_in_stream_ready),
      .in_startofpacket  (altera_avalon_packets_to_master_inst_for_spichain_in_stream_startofpacket),
      .in_valid          (altera_avalon_packets_to_master_inst_for_spichain_in_stream_valid),
      .out_data          (altera_avalon_packets_to_master_inst_for_spichain_out_stream_data),
      .out_endofpacket   (altera_avalon_packets_to_master_inst_for_spichain_out_stream_endofpacket),
      .out_ready         (altera_avalon_packets_to_master_inst_for_spichain_out_stream_ready),
      .out_startofpacket (altera_avalon_packets_to_master_inst_for_spichain_out_stream_startofpacket),
      .out_valid         (altera_avalon_packets_to_master_inst_for_spichain_out_stream_valid),
      .read              (read_from_the_altera_avalon_packets_to_master_inst_for_spichain),
      .readdata          (readdata_to_the_altera_avalon_packets_to_master_inst_for_spichain),
      .readdatavalid     (readdatavalid_to_the_altera_avalon_packets_to_master_inst_for_spichain),
      .reset_n           (altera_avalon_packets_to_master_inst_for_spichain_out_stream_reset_n),
      .waitrequest       (waitrequest_to_the_altera_avalon_packets_to_master_inst_for_spichain),
      .write             (write_from_the_altera_avalon_packets_to_master_inst_for_spichain),
      .writedata         (writedata_from_the_altera_avalon_packets_to_master_inst_for_spichain)
    );

  altera_avalon_st_bytes_to_packets_inst_for_spichain_in_bytes_stream_arbitrator the_altera_avalon_st_bytes_to_packets_inst_for_spichain_in_bytes_stream
    (
      .altera_avalon_st_bytes_to_packets_inst_for_spichain_in_bytes_stream_data          (altera_avalon_st_bytes_to_packets_inst_for_spichain_in_bytes_stream_data),
      .altera_avalon_st_bytes_to_packets_inst_for_spichain_in_bytes_stream_ready         (altera_avalon_st_bytes_to_packets_inst_for_spichain_in_bytes_stream_ready),
      .altera_avalon_st_bytes_to_packets_inst_for_spichain_in_bytes_stream_ready_from_sa (altera_avalon_st_bytes_to_packets_inst_for_spichain_in_bytes_stream_ready_from_sa),
      .altera_avalon_st_bytes_to_packets_inst_for_spichain_in_bytes_stream_valid         (altera_avalon_st_bytes_to_packets_inst_for_spichain_in_bytes_stream_valid),
      .clk                                                                               (clk),
      .reset_n                                                                           (clk_reset_n),
      .spislave_inst_for_spichain_avalon_streaming_source_data                           (spislave_inst_for_spichain_avalon_streaming_source_data),
      .spislave_inst_for_spichain_avalon_streaming_source_valid                          (spislave_inst_for_spichain_avalon_streaming_source_valid)
    );

  altera_avalon_st_bytes_to_packets_inst_for_spichain_out_packets_stream_arbitrator the_altera_avalon_st_bytes_to_packets_inst_for_spichain_out_packets_stream
    (
      .altera_avalon_st_bytes_to_packets_inst_for_spichain_out_packets_stream_channel       (altera_avalon_st_bytes_to_packets_inst_for_spichain_out_packets_stream_channel),
      .altera_avalon_st_bytes_to_packets_inst_for_spichain_out_packets_stream_data          (altera_avalon_st_bytes_to_packets_inst_for_spichain_out_packets_stream_data),
      .altera_avalon_st_bytes_to_packets_inst_for_spichain_out_packets_stream_endofpacket   (altera_avalon_st_bytes_to_packets_inst_for_spichain_out_packets_stream_endofpacket),
      .altera_avalon_st_bytes_to_packets_inst_for_spichain_out_packets_stream_ready         (altera_avalon_st_bytes_to_packets_inst_for_spichain_out_packets_stream_ready),
      .altera_avalon_st_bytes_to_packets_inst_for_spichain_out_packets_stream_reset_n       (altera_avalon_st_bytes_to_packets_inst_for_spichain_out_packets_stream_reset_n),
      .altera_avalon_st_bytes_to_packets_inst_for_spichain_out_packets_stream_startofpacket (altera_avalon_st_bytes_to_packets_inst_for_spichain_out_packets_stream_startofpacket),
      .altera_avalon_st_bytes_to_packets_inst_for_spichain_out_packets_stream_valid         (altera_avalon_st_bytes_to_packets_inst_for_spichain_out_packets_stream_valid),
      .channel_adapter_btop_for_spichain_in_ready_from_sa                                   (channel_adapter_btop_for_spichain_in_ready_from_sa),
      .clk                                                                                  (clk),
      .reset_n                                                                              (clk_reset_n)
    );

  altera_avalon_st_bytes_to_packets_inst_for_spichain the_altera_avalon_st_bytes_to_packets_inst_for_spichain
    (
      .clk               (clk),
      .in_data           (altera_avalon_st_bytes_to_packets_inst_for_spichain_in_bytes_stream_data),
      .in_ready          (altera_avalon_st_bytes_to_packets_inst_for_spichain_in_bytes_stream_ready),
      .in_valid          (altera_avalon_st_bytes_to_packets_inst_for_spichain_in_bytes_stream_valid),
      .out_channel       (altera_avalon_st_bytes_to_packets_inst_for_spichain_out_packets_stream_channel),
      .out_data          (altera_avalon_st_bytes_to_packets_inst_for_spichain_out_packets_stream_data),
      .out_endofpacket   (altera_avalon_st_bytes_to_packets_inst_for_spichain_out_packets_stream_endofpacket),
      .out_ready         (altera_avalon_st_bytes_to_packets_inst_for_spichain_out_packets_stream_ready),
      .out_startofpacket (altera_avalon_st_bytes_to_packets_inst_for_spichain_out_packets_stream_startofpacket),
      .out_valid         (altera_avalon_st_bytes_to_packets_inst_for_spichain_out_packets_stream_valid),
      .reset_n           (altera_avalon_st_bytes_to_packets_inst_for_spichain_out_packets_stream_reset_n)
    );

  altera_avalon_st_packets_to_bytes_inst_for_spichain_in_packets_stream_arbitrator the_altera_avalon_st_packets_to_bytes_inst_for_spichain_in_packets_stream
    (
      .altera_avalon_st_packets_to_bytes_inst_for_spichain_in_packets_stream_channel       (altera_avalon_st_packets_to_bytes_inst_for_spichain_in_packets_stream_channel),
      .altera_avalon_st_packets_to_bytes_inst_for_spichain_in_packets_stream_data          (altera_avalon_st_packets_to_bytes_inst_for_spichain_in_packets_stream_data),
      .altera_avalon_st_packets_to_bytes_inst_for_spichain_in_packets_stream_endofpacket   (altera_avalon_st_packets_to_bytes_inst_for_spichain_in_packets_stream_endofpacket),
      .altera_avalon_st_packets_to_bytes_inst_for_spichain_in_packets_stream_ready         (altera_avalon_st_packets_to_bytes_inst_for_spichain_in_packets_stream_ready),
      .altera_avalon_st_packets_to_bytes_inst_for_spichain_in_packets_stream_ready_from_sa (altera_avalon_st_packets_to_bytes_inst_for_spichain_in_packets_stream_ready_from_sa),
      .altera_avalon_st_packets_to_bytes_inst_for_spichain_in_packets_stream_reset_n       (altera_avalon_st_packets_to_bytes_inst_for_spichain_in_packets_stream_reset_n),
      .altera_avalon_st_packets_to_bytes_inst_for_spichain_in_packets_stream_startofpacket (altera_avalon_st_packets_to_bytes_inst_for_spichain_in_packets_stream_startofpacket),
      .altera_avalon_st_packets_to_bytes_inst_for_spichain_in_packets_stream_valid         (altera_avalon_st_packets_to_bytes_inst_for_spichain_in_packets_stream_valid),
      .channel_adapter_ptob_for_spichain_out_channel                                       (channel_adapter_ptob_for_spichain_out_channel),
      .channel_adapter_ptob_for_spichain_out_data                                          (channel_adapter_ptob_for_spichain_out_data),
      .channel_adapter_ptob_for_spichain_out_endofpacket                                   (channel_adapter_ptob_for_spichain_out_endofpacket),
      .channel_adapter_ptob_for_spichain_out_startofpacket                                 (channel_adapter_ptob_for_spichain_out_startofpacket),
      .channel_adapter_ptob_for_spichain_out_valid                                         (channel_adapter_ptob_for_spichain_out_valid),
      .clk                                                                                 (clk),
      .reset_n                                                                             (clk_reset_n)
    );

  altera_avalon_st_packets_to_bytes_inst_for_spichain_out_bytes_stream_arbitrator the_altera_avalon_st_packets_to_bytes_inst_for_spichain_out_bytes_stream
    (
      .altera_avalon_st_packets_to_bytes_inst_for_spichain_out_bytes_stream_data  (altera_avalon_st_packets_to_bytes_inst_for_spichain_out_bytes_stream_data),
      .altera_avalon_st_packets_to_bytes_inst_for_spichain_out_bytes_stream_ready (altera_avalon_st_packets_to_bytes_inst_for_spichain_out_bytes_stream_ready),
      .altera_avalon_st_packets_to_bytes_inst_for_spichain_out_bytes_stream_valid (altera_avalon_st_packets_to_bytes_inst_for_spichain_out_bytes_stream_valid),
      .clk                                                                        (clk),
      .reset_n                                                                    (clk_reset_n),
      .spislave_inst_for_spichain_avalon_streaming_sink_ready_from_sa             (spislave_inst_for_spichain_avalon_streaming_sink_ready_from_sa)
    );

  altera_avalon_st_packets_to_bytes_inst_for_spichain the_altera_avalon_st_packets_to_bytes_inst_for_spichain
    (
      .clk              (clk),
      .in_channel       (altera_avalon_st_packets_to_bytes_inst_for_spichain_in_packets_stream_channel),
      .in_data          (altera_avalon_st_packets_to_bytes_inst_for_spichain_in_packets_stream_data),
      .in_endofpacket   (altera_avalon_st_packets_to_bytes_inst_for_spichain_in_packets_stream_endofpacket),
      .in_ready         (altera_avalon_st_packets_to_bytes_inst_for_spichain_in_packets_stream_ready),
      .in_startofpacket (altera_avalon_st_packets_to_bytes_inst_for_spichain_in_packets_stream_startofpacket),
      .in_valid         (altera_avalon_st_packets_to_bytes_inst_for_spichain_in_packets_stream_valid),
      .out_data         (altera_avalon_st_packets_to_bytes_inst_for_spichain_out_bytes_stream_data),
      .out_ready        (altera_avalon_st_packets_to_bytes_inst_for_spichain_out_bytes_stream_ready),
      .out_valid        (altera_avalon_st_packets_to_bytes_inst_for_spichain_out_bytes_stream_valid),
      .reset_n          (altera_avalon_st_packets_to_bytes_inst_for_spichain_in_packets_stream_reset_n)
    );

  channel_adapter_btop_for_spichain_in_arbitrator the_channel_adapter_btop_for_spichain_in
    (
      .altera_avalon_st_bytes_to_packets_inst_for_spichain_out_packets_stream_channel       (altera_avalon_st_bytes_to_packets_inst_for_spichain_out_packets_stream_channel),
      .altera_avalon_st_bytes_to_packets_inst_for_spichain_out_packets_stream_data          (altera_avalon_st_bytes_to_packets_inst_for_spichain_out_packets_stream_data),
      .altera_avalon_st_bytes_to_packets_inst_for_spichain_out_packets_stream_endofpacket   (altera_avalon_st_bytes_to_packets_inst_for_spichain_out_packets_stream_endofpacket),
      .altera_avalon_st_bytes_to_packets_inst_for_spichain_out_packets_stream_startofpacket (altera_avalon_st_bytes_to_packets_inst_for_spichain_out_packets_stream_startofpacket),
      .altera_avalon_st_bytes_to_packets_inst_for_spichain_out_packets_stream_valid         (altera_avalon_st_bytes_to_packets_inst_for_spichain_out_packets_stream_valid),
      .channel_adapter_btop_for_spichain_in_channel                                         (channel_adapter_btop_for_spichain_in_channel),
      .channel_adapter_btop_for_spichain_in_data                                            (channel_adapter_btop_for_spichain_in_data),
      .channel_adapter_btop_for_spichain_in_endofpacket                                     (channel_adapter_btop_for_spichain_in_endofpacket),
      .channel_adapter_btop_for_spichain_in_ready                                           (channel_adapter_btop_for_spichain_in_ready),
      .channel_adapter_btop_for_spichain_in_ready_from_sa                                   (channel_adapter_btop_for_spichain_in_ready_from_sa),
      .channel_adapter_btop_for_spichain_in_reset_n                                         (channel_adapter_btop_for_spichain_in_reset_n),
      .channel_adapter_btop_for_spichain_in_startofpacket                                   (channel_adapter_btop_for_spichain_in_startofpacket),
      .channel_adapter_btop_for_spichain_in_valid                                           (channel_adapter_btop_for_spichain_in_valid),
      .clk                                                                                  (clk),
      .reset_n                                                                              (clk_reset_n)
    );

  channel_adapter_btop_for_spichain_out_arbitrator the_channel_adapter_btop_for_spichain_out
    (
      .altera_avalon_packets_to_master_inst_for_spichain_in_stream_ready_from_sa (altera_avalon_packets_to_master_inst_for_spichain_in_stream_ready_from_sa),
      .channel_adapter_btop_for_spichain_out_data                                (channel_adapter_btop_for_spichain_out_data),
      .channel_adapter_btop_for_spichain_out_endofpacket                         (channel_adapter_btop_for_spichain_out_endofpacket),
      .channel_adapter_btop_for_spichain_out_ready                               (channel_adapter_btop_for_spichain_out_ready),
      .channel_adapter_btop_for_spichain_out_startofpacket                       (channel_adapter_btop_for_spichain_out_startofpacket),
      .channel_adapter_btop_for_spichain_out_valid                               (channel_adapter_btop_for_spichain_out_valid),
      .clk                                                                       (clk),
      .reset_n                                                                   (clk_reset_n)
    );

  channel_adapter_btop_for_spichain the_channel_adapter_btop_for_spichain
    (
      .clk               (clk),
      .in_channel        (channel_adapter_btop_for_spichain_in_channel),
      .in_data           (channel_adapter_btop_for_spichain_in_data),
      .in_endofpacket    (channel_adapter_btop_for_spichain_in_endofpacket),
      .in_ready          (channel_adapter_btop_for_spichain_in_ready),
      .in_startofpacket  (channel_adapter_btop_for_spichain_in_startofpacket),
      .in_valid          (channel_adapter_btop_for_spichain_in_valid),
      .out_data          (channel_adapter_btop_for_spichain_out_data),
      .out_endofpacket   (channel_adapter_btop_for_spichain_out_endofpacket),
      .out_ready         (channel_adapter_btop_for_spichain_out_ready),
      .out_startofpacket (channel_adapter_btop_for_spichain_out_startofpacket),
      .out_valid         (channel_adapter_btop_for_spichain_out_valid),
      .reset_n           (channel_adapter_btop_for_spichain_in_reset_n)
    );

  channel_adapter_ptob_for_spichain_in_arbitrator the_channel_adapter_ptob_for_spichain_in
    (
      .altera_avalon_packets_to_master_inst_for_spichain_out_stream_data          (altera_avalon_packets_to_master_inst_for_spichain_out_stream_data),
      .altera_avalon_packets_to_master_inst_for_spichain_out_stream_endofpacket   (altera_avalon_packets_to_master_inst_for_spichain_out_stream_endofpacket),
      .altera_avalon_packets_to_master_inst_for_spichain_out_stream_startofpacket (altera_avalon_packets_to_master_inst_for_spichain_out_stream_startofpacket),
      .altera_avalon_packets_to_master_inst_for_spichain_out_stream_valid         (altera_avalon_packets_to_master_inst_for_spichain_out_stream_valid),
      .channel_adapter_ptob_for_spichain_in_data                                  (channel_adapter_ptob_for_spichain_in_data),
      .channel_adapter_ptob_for_spichain_in_endofpacket                           (channel_adapter_ptob_for_spichain_in_endofpacket),
      .channel_adapter_ptob_for_spichain_in_ready                                 (channel_adapter_ptob_for_spichain_in_ready),
      .channel_adapter_ptob_for_spichain_in_ready_from_sa                         (channel_adapter_ptob_for_spichain_in_ready_from_sa),
      .channel_adapter_ptob_for_spichain_in_reset_n                               (channel_adapter_ptob_for_spichain_in_reset_n),
      .channel_adapter_ptob_for_spichain_in_startofpacket                         (channel_adapter_ptob_for_spichain_in_startofpacket),
      .channel_adapter_ptob_for_spichain_in_valid                                 (channel_adapter_ptob_for_spichain_in_valid),
      .clk                                                                        (clk),
      .reset_n                                                                    (clk_reset_n)
    );

  channel_adapter_ptob_for_spichain_out_arbitrator the_channel_adapter_ptob_for_spichain_out
    (
      .altera_avalon_st_packets_to_bytes_inst_for_spichain_in_packets_stream_ready_from_sa (altera_avalon_st_packets_to_bytes_inst_for_spichain_in_packets_stream_ready_from_sa),
      .channel_adapter_ptob_for_spichain_out_channel                                       (channel_adapter_ptob_for_spichain_out_channel),
      .channel_adapter_ptob_for_spichain_out_data                                          (channel_adapter_ptob_for_spichain_out_data),
      .channel_adapter_ptob_for_spichain_out_endofpacket                                   (channel_adapter_ptob_for_spichain_out_endofpacket),
      .channel_adapter_ptob_for_spichain_out_ready                                         (channel_adapter_ptob_for_spichain_out_ready),
      .channel_adapter_ptob_for_spichain_out_startofpacket                                 (channel_adapter_ptob_for_spichain_out_startofpacket),
      .channel_adapter_ptob_for_spichain_out_valid                                         (channel_adapter_ptob_for_spichain_out_valid),
      .clk                                                                                 (clk),
      .reset_n                                                                             (clk_reset_n)
    );

  channel_adapter_ptob_for_spichain the_channel_adapter_ptob_for_spichain
    (
      .clk               (clk),
      .in_data           (channel_adapter_ptob_for_spichain_in_data),
      .in_endofpacket    (channel_adapter_ptob_for_spichain_in_endofpacket),
      .in_ready          (channel_adapter_ptob_for_spichain_in_ready),
      .in_startofpacket  (channel_adapter_ptob_for_spichain_in_startofpacket),
      .in_valid          (channel_adapter_ptob_for_spichain_in_valid),
      .out_channel       (channel_adapter_ptob_for_spichain_out_channel),
      .out_data          (channel_adapter_ptob_for_spichain_out_data),
      .out_endofpacket   (channel_adapter_ptob_for_spichain_out_endofpacket),
      .out_ready         (channel_adapter_ptob_for_spichain_out_ready),
      .out_startofpacket (channel_adapter_ptob_for_spichain_out_startofpacket),
      .out_valid         (channel_adapter_ptob_for_spichain_out_valid),
      .reset_n           (channel_adapter_ptob_for_spichain_in_reset_n)
    );

  spislave_inst_for_spichain_avalon_streaming_sink_arbitrator the_spislave_inst_for_spichain_avalon_streaming_sink
    (
      .altera_avalon_st_packets_to_bytes_inst_for_spichain_out_bytes_stream_data  (altera_avalon_st_packets_to_bytes_inst_for_spichain_out_bytes_stream_data),
      .altera_avalon_st_packets_to_bytes_inst_for_spichain_out_bytes_stream_valid (altera_avalon_st_packets_to_bytes_inst_for_spichain_out_bytes_stream_valid),
      .clk                                                                        (clk),
      .reset_n                                                                    (clk_reset_n),
      .spislave_inst_for_spichain_avalon_streaming_sink_data                      (spislave_inst_for_spichain_avalon_streaming_sink_data),
      .spislave_inst_for_spichain_avalon_streaming_sink_ready                     (spislave_inst_for_spichain_avalon_streaming_sink_ready),
      .spislave_inst_for_spichain_avalon_streaming_sink_ready_from_sa             (spislave_inst_for_spichain_avalon_streaming_sink_ready_from_sa),
      .spislave_inst_for_spichain_avalon_streaming_sink_valid                     (spislave_inst_for_spichain_avalon_streaming_sink_valid)
    );

  spislave_inst_for_spichain_avalon_streaming_source_arbitrator the_spislave_inst_for_spichain_avalon_streaming_source
    (
      .altera_avalon_st_bytes_to_packets_inst_for_spichain_in_bytes_stream_ready_from_sa (altera_avalon_st_bytes_to_packets_inst_for_spichain_in_bytes_stream_ready_from_sa),
      .clk                                                                               (clk),
      .reset_n                                                                           (clk_reset_n),
      .spislave_inst_for_spichain_avalon_streaming_source_data                           (spislave_inst_for_spichain_avalon_streaming_source_data),
      .spislave_inst_for_spichain_avalon_streaming_source_ready                          (spislave_inst_for_spichain_avalon_streaming_source_ready),
      .spislave_inst_for_spichain_avalon_streaming_source_reset_n                        (spislave_inst_for_spichain_avalon_streaming_source_reset_n),
      .spislave_inst_for_spichain_avalon_streaming_source_valid                          (spislave_inst_for_spichain_avalon_streaming_source_valid)
    );

  spislave_inst_for_spichain the_spislave_inst_for_spichain
    (
      .miso          (miso_to_and_from_the_spislave_inst_for_spichain),
      .mosi          (mosi_to_the_spislave_inst_for_spichain),
      .nreset        (spislave_inst_for_spichain_avalon_streaming_source_reset_n),
      .nss           (nss_to_the_spislave_inst_for_spichain),
      .sclk          (sclk_to_the_spislave_inst_for_spichain),
      .stsinkdata    (spislave_inst_for_spichain_avalon_streaming_sink_data),
      .stsinkready   (spislave_inst_for_spichain_avalon_streaming_sink_ready),
      .stsinkvalid   (spislave_inst_for_spichain_avalon_streaming_sink_valid),
      .stsourcedata  (spislave_inst_for_spichain_avalon_streaming_source_data),
      .stsourceready (spislave_inst_for_spichain_avalon_streaming_source_ready),
      .stsourcevalid (spislave_inst_for_spichain_avalon_streaming_source_valid),
      .sysclk        (clk)
    );
  defparam the_spislave_inst_for_spichain.SYNC_DEPTH = SYNC_DEPTH;

  //reset is asserted asynchronously and deasserted synchronously
  SPISlaveToAvalonMasterBridge_reset_clk_domain_synch_module SPISlaveToAvalonMasterBridge_reset_clk_domain_synch
    (
      .clk      (clk),
      .data_in  (1'b1),
      .data_out (clk_reset_n),
      .reset_n  (reset_n_sources)
    );

  //reset sources mux, which is an e_mux
  assign reset_n_sources = ~(~reset_n |
    0);


endmodule


//synthesis translate_off



// <ALTERA_NOTE> CODE INSERTED BETWEEN HERE

// AND HERE WILL BE PRESERVED </ALTERA_NOTE>


// If user logic components use Altsync_Ram with convert_hex2ver.dll,
// set USE_convert_hex2ver in the user comments section above

// `ifdef USE_convert_hex2ver
// `else
// `define NO_PLI 1
// `endif

//`include "/tools/altera/8.0/145/linux32/quartus/eda/sim_lib/altera_mf.v"
//`include "/tools/altera/8.0/145/linux32/quartus/eda/sim_lib/220model.v"
//`include "/tools/altera/8.0/145/linux32/quartus/eda/sim_lib/sgate.v"
//`include "altera_avalon_st_packets_to_bytes_inst_for_spichain.v"
//`include "/tools/altera/8.0/145/linux32/ip/sopc_builder_ip/altera_avalon_st_packets_to_bytes/altera_avalon_st_packets_to_bytes.v"
//`include "altera_avalon_st_bytes_to_packets_inst_for_spichain.v"
//`include "/tools/altera/8.0/145/linux32/ip/sopc_builder_ip/altera_avalon_st_bytes_to_packets/altera_avalon_st_bytes_to_packets.v"
//`include "altera_avalon_packets_to_master_inst_for_spichain.v"
//`include "/tools/altera/8.0/145/linux32/ip/sopc_builder_ip/altera_avalon_packets_to_master/altera_avalon_packets_to_master.v"
//`include "spislave_inst_for_spichain.v"
//`include "/tools/altera/8.0/145/linux32/ip/sopc_builder_ip/altera_avalon_spi_phy_slave/spiphyslave.v"
//`include "channel_adapter_ptob_for_spichain.v"
//`include "channel_adapter_btop_for_spichain.v"

//`timescale 1ns / 1ps

//module test_bench 
//;


//  wire    [ 31: 0] address_from_the_altera_avalon_packets_to_master_inst_for_spichain;
//  wire    [  3: 0] byteenable_from_the_altera_avalon_packets_to_master_inst_for_spichain;
//  reg              clk;
//  wire             miso_to_and_from_the_spislave_inst_for_spichain;
//  wire             mosi_to_the_spislave_inst_for_spichain;
//  wire             nss_to_the_spislave_inst_for_spichain;
//  wire             read_from_the_altera_avalon_packets_to_master_inst_for_spichain;
//  wire    [ 31: 0] readdata_to_the_altera_avalon_packets_to_master_inst_for_spichain;
//  wire             readdatavalid_to_the_altera_avalon_packets_to_master_inst_for_spichain;
//  reg              reset_n;
//  wire             sclk_to_the_spislave_inst_for_spichain;
//  wire             waitrequest_to_the_altera_avalon_packets_to_master_inst_for_spichain;
//  wire             write_from_the_altera_avalon_packets_to_master_inst_for_spichain;
//  wire    [ 31: 0] writedata_from_the_altera_avalon_packets_to_master_inst_for_spichain;


// <ALTERA_NOTE> CODE INSERTED BETWEEN HERE
//  add your signals and additional architecture here
// AND HERE WILL BE PRESERVED </ALTERA_NOTE>

  //Set us up the Dut
//  SPISlaveToAvalonMasterBridge DUT
//    (
//      .address_from_the_altera_avalon_packets_to_master_inst_for_spichain     (address_from_the_altera_avalon_packets_to_master_inst_for_spichain),
//      .byteenable_from_the_altera_avalon_packets_to_master_inst_for_spichain  (byteenable_from_the_altera_avalon_packets_to_master_inst_for_spichain),
//      .clk                                                                    (clk),
//      .miso_to_and_from_the_spislave_inst_for_spichain                        (miso_to_and_from_the_spislave_inst_for_spichain),
//      .mosi_to_the_spislave_inst_for_spichain                                 (mosi_to_the_spislave_inst_for_spichain),
//      .nss_to_the_spislave_inst_for_spichain                                  (nss_to_the_spislave_inst_for_spichain),
//      .read_from_the_altera_avalon_packets_to_master_inst_for_spichain        (read_from_the_altera_avalon_packets_to_master_inst_for_spichain),
//      .readdata_to_the_altera_avalon_packets_to_master_inst_for_spichain      (readdata_to_the_altera_avalon_packets_to_master_inst_for_spichain),
//      .readdatavalid_to_the_altera_avalon_packets_to_master_inst_for_spichain (readdatavalid_to_the_altera_avalon_packets_to_master_inst_for_spichain),
//      .reset_n                                                                (reset_n),
//      .sclk_to_the_spislave_inst_for_spichain                                 (sclk_to_the_spislave_inst_for_spichain),
//      .waitrequest_to_the_altera_avalon_packets_to_master_inst_for_spichain   (waitrequest_to_the_altera_avalon_packets_to_master_inst_for_spichain),
//      .write_from_the_altera_avalon_packets_to_master_inst_for_spichain       (write_from_the_altera_avalon_packets_to_master_inst_for_spichain),
//      .writedata_from_the_altera_avalon_packets_to_master_inst_for_spichain   (writedata_from_the_altera_avalon_packets_to_master_inst_for_spichain)
//    );

//  initial
//    clk = 1'b0;
//  always
//    #10 clk <= ~clk;
  
//  initial 
//    begin
//      reset_n <= 0;
//      #200 reset_n <= 1;
//    end

//endmodule


//synthesis translate_on
