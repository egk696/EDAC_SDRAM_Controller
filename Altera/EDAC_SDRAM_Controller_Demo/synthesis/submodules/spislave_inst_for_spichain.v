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

module spislave_inst_for_spichain (
                                    // inputs:
                                     mosi,
                                     nreset,
                                     nss,
                                     sclk,
                                     stsinkdata,
                                     stsinkvalid,
                                     stsourceready,
                                     sysclk,

                                    // outputs:
                                     miso,
                                     stsinkready,
                                     stsourcedata,
                                     stsourcevalid
                                  )
;

  parameter  SYNC_DEPTH = 2; /* Number of synchronizer stages for clock crossing */

  inout            miso;
  output           stsinkready;
  output  [  7: 0] stsourcedata;
  output           stsourcevalid;
  input            mosi;
  input            nreset;
  input            nss;
  input            sclk;
  input   [  7: 0] stsinkdata;
  input            stsinkvalid;
  input            stsourceready;
  input            sysclk;

  wire             miso;
  wire             stsinkready;
  wire    [  7: 0] stsourcedata;
  wire             stsourcevalid;
  SPIPhy the_SPIPhy
    (
      .miso          (miso),
      .mosi          (mosi),
      .nreset        (nreset),
      .nss           (nss),
      .sclk          (sclk),
      .stsinkdata    (stsinkdata),
      .stsinkready   (stsinkready),
      .stsinkvalid   (stsinkvalid),
      .stsourcedata  (stsourcedata),
      .stsourceready (stsourceready),
      .stsourcevalid (stsourcevalid),
      .sysclk        (sysclk)
    );
  defparam the_SPIPhy.SYNC_DEPTH = SYNC_DEPTH;
  //defparam the_SPIPhy.CPOL = 0;


endmodule

