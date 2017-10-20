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

module altera_avalon_st_packets_to_bytes_inst_for_spichain (
                                                             // inputs:
                                                              clk,
                                                              in_channel,
                                                              in_data,
                                                              in_endofpacket,
                                                              in_startofpacket,
                                                              in_valid,
                                                              out_ready,
                                                              reset_n,

                                                             // outputs:
                                                              in_ready,
                                                              out_data,
                                                              out_valid
                                                           )
;

  output           in_ready;
  output  [  7: 0] out_data;
  output           out_valid;
  input            clk;
  input   [  7: 0] in_channel;
  input   [  7: 0] in_data;
  input            in_endofpacket;
  input            in_startofpacket;
  input            in_valid;
  input            out_ready;
  input            reset_n;

  wire             in_ready;
  wire    [  7: 0] out_data;
  wire             out_valid;
  altera_avalon_st_packets_to_bytes the_altera_avalon_st_packets_to_bytes
    (
      .clk              (clk),
      .in_channel       (in_channel),
      .in_data          (in_data),
      .in_endofpacket   (in_endofpacket),
      .in_ready         (in_ready),
      .in_startofpacket (in_startofpacket),
      .in_valid         (in_valid),
      .out_data         (out_data),
      .out_ready        (out_ready),
      .out_valid        (out_valid),
      .reset_n          (reset_n)
    );


endmodule

