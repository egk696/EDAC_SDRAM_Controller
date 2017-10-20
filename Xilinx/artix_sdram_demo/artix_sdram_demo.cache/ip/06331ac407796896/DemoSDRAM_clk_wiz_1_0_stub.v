// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
// Date        : Mon Aug 21 22:02:27 2017
// Host        : EMA-VAIO running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ DemoSDRAM_clk_wiz_1_0_stub.v
// Design      : DemoSDRAM_clk_wiz_1_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a200tfbg676-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk_blaze, clk_sdram, locked, clk_in1)
/* synthesis syn_black_box black_box_pad_pin="clk_blaze,clk_sdram,locked,clk_in1" */;
  output clk_blaze;
  output clk_sdram;
  output locked;
  input clk_in1;
endmodule
