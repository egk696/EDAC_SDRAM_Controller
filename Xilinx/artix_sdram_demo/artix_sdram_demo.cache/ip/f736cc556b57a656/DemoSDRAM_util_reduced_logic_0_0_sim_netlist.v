// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
// Date        : Wed Jul 05 13:11:31 2017
// Host        : egk-pc running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ DemoSDRAM_util_reduced_logic_0_0_sim_netlist.v
// Design      : DemoSDRAM_util_reduced_logic_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tlfbg676-2L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "DemoSDRAM_util_reduced_logic_0_0,util_reduced_logic,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "util_reduced_logic,Vivado 2016.4" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (Op1,
    Res);
  input [15:0]Op1;
  output Res;

  wire [15:0]Op1;
  wire Res;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_util_reduced_logic U0
       (.Op1(Op1),
        .Res(Res));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_util_reduced_logic
   (Res,
    Op1);
  output Res;
  input [15:0]Op1;

  wire [15:0]Op1;
  wire Res;
  wire Res_INST_0_i_1_n_0;
  wire Res_INST_0_i_2_n_0;

  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    Res_INST_0
       (.I0(Op1[2]),
        .I1(Op1[3]),
        .I2(Op1[0]),
        .I3(Op1[1]),
        .I4(Res_INST_0_i_1_n_0),
        .I5(Res_INST_0_i_2_n_0),
        .O(Res));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    Res_INST_0_i_1
       (.I0(Op1[14]),
        .I1(Op1[15]),
        .I2(Op1[12]),
        .I3(Op1[13]),
        .I4(Op1[11]),
        .I5(Op1[10]),
        .O(Res_INST_0_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    Res_INST_0_i_2
       (.I0(Op1[8]),
        .I1(Op1[9]),
        .I2(Op1[6]),
        .I3(Op1[7]),
        .I4(Op1[5]),
        .I5(Op1[4]),
        .O(Res_INST_0_i_2_n_0));
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
