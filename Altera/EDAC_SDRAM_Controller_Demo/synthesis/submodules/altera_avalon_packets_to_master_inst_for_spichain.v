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

module altera_avalon_packets_to_master_inst_for_spichain (
                                                           // inputs:
                                                            clk,
                                                            in_data,
                                                            in_endofpacket,
                                                            in_startofpacket,
                                                            in_valid,
                                                            out_ready,
                                                            readdata,
                                                            readdatavalid,
                                                            reset_n,
                                                            waitrequest,

                                                           // outputs:
                                                            address,
                                                            byteenable,
                                                            in_ready,
                                                            out_data,
                                                            out_endofpacket,
                                                            out_startofpacket,
                                                            out_valid,
                                                            read,
                                                            write,
                                                            writedata
                                                         )
;

  output  [ 31: 0] address;
  output  [  3: 0] byteenable;
  output           in_ready;
  output  [  7: 0] out_data;
  output           out_endofpacket;
  output           out_startofpacket;
  output           out_valid;
  output           read;
  output           write;
  output  [ 31: 0] writedata;
  input            clk;
  input   [  7: 0] in_data;
  input            in_endofpacket;
  input            in_startofpacket;
  input            in_valid;
  input            out_ready;
  input   [ 31: 0] readdata;
  input            readdatavalid;
  input            reset_n;
  input            waitrequest;

  wire    [ 31: 0] address;
  wire    [  3: 0] byteenable;
  wire             in_ready;
  wire    [  7: 0] out_data;
  wire             out_endofpacket;
  wire             out_startofpacket;
  wire             out_valid;
  wire             read;
  wire             write;
  wire    [ 31: 0] writedata;
  altera_avalon_packets_to_master the_altera_avalon_packets_to_master
    (
      .address           (address),
      .byteenable        (byteenable),
      .clk               (clk),
      .in_data           (in_data),
      .in_endofpacket    (in_endofpacket),
      .in_ready          (in_ready),
      .in_startofpacket  (in_startofpacket),
      .in_valid          (in_valid),
      .out_data          (out_data),
      .out_endofpacket   (out_endofpacket),
      .out_ready         (out_ready),
      .out_startofpacket (out_startofpacket),
      .out_valid         (out_valid),
      .read              (read),
      .readdata          (readdata),
      .readdatavalid     (readdatavalid),
      .reset_n           (reset_n),
      .waitrequest       (waitrequest),
      .write             (write),
      .writedata         (writedata)
    );
  defparam the_altera_avalon_packets_to_master.EXPORT_MASTER_SIGNALS = 1;


endmodule

