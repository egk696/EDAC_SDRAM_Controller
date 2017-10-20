// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
// Date        : Wed Jul 05 23:27:31 2017
// Host        : egk-pc running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ DemoSDRAM_axi_amm_bridge_0_0_sim_netlist.v
// Design      : DemoSDRAM_axi_amm_bridge_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "DemoSDRAM_axi_amm_bridge_0_0,axi_amm_bridge_v1_0_1_top,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "axi_amm_bridge_v1_0_1_top,Vivado 2016.4" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (s_axi_aclk,
    s_axi_aresetn,
    s_axi_awaddr,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    avm_address,
    avm_write,
    avm_read,
    avm_writedata,
    avm_readdata,
    avm_readdatavalid,
    avm_waitrequest);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 s_axi_aclk CLK" *) input s_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 s_axi_aresetn RST" *) input s_axi_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE AWADDR" *) input [23:0]s_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE AWVALID" *) input s_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE AWREADY" *) output s_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE WDATA" *) input [31:0]s_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE WSTRB" *) input [3:0]s_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE WVALID" *) input s_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE WREADY" *) output s_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE BRESP" *) output [1:0]s_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE BVALID" *) output s_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE BREADY" *) input s_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE ARADDR" *) input [23:0]s_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE ARVALID" *) input s_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE ARREADY" *) output s_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE RDATA" *) output [31:0]s_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE RRESP" *) output [1:0]s_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE RVALID" *) output s_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE RREADY" *) input s_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:avalon:1.0 M_AVALON ADDRESS" *) output [23:0]avm_address;
  (* X_INTERFACE_INFO = "xilinx.com:interface:avalon:1.0 M_AVALON WRITE" *) output avm_write;
  (* X_INTERFACE_INFO = "xilinx.com:interface:avalon:1.0 M_AVALON READ" *) output avm_read;
  (* X_INTERFACE_INFO = "xilinx.com:interface:avalon:1.0 M_AVALON WRITEDATA" *) output [31:0]avm_writedata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:avalon:1.0 M_AVALON READDATA" *) input [31:0]avm_readdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:avalon:1.0 M_AVALON READDATAVALID" *) input avm_readdatavalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:avalon:1.0 M_AVALON WAITREQUEST" *) input avm_waitrequest;

  wire [23:0]avm_address;
  wire avm_read;
  wire [31:0]avm_readdata;
  wire avm_readdatavalid;
  wire avm_waitrequest;
  wire avm_write;
  wire [31:0]avm_writedata;
  wire s_axi_aclk;
  wire [23:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [23:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire [1:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire NLW_inst_avm_beginbursttransfer_UNCONNECTED;
  wire NLW_inst_s_axi_rlast_UNCONNECTED;
  wire [0:0]NLW_inst_avm_burstcount_UNCONNECTED;
  wire [3:0]NLW_inst_avm_byteenable_UNCONNECTED;
  wire [3:0]NLW_inst_s_axi_bid_UNCONNECTED;
  wire [3:0]NLW_inst_s_axi_rid_UNCONNECTED;

  (* All_zero = "1'b0" *) 
  (* C_ADDRESS_MODE = "0" *) 
  (* C_AVM_BURST_WIDTH = "1" *) 
  (* C_AXI_LOCK_WIDTH = "1" *) 
  (* C_BASE1_ADDR = "64'b0000000000000000000000000000000000000000000000000000000000000000" *) 
  (* C_BASE2_ADDR = "64'b0000000000000000000000000000000000000000000000000000000000000000" *) 
  (* C_BASE3_ADDR = "64'b0000000000000000000000000000000000000000000000000000000000000000" *) 
  (* C_BASE4_ADDR = "64'b0000000000000000000000000000000000000000000000000000000000000000" *) 
  (* C_BURST_LENGTH = "4" *) 
  (* C_DPHASE_TIMEOUT = "256" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_FIXED_READ_WAIT = "1" *) 
  (* C_FIXED_WRITE_WAIT = "1" *) 
  (* C_HAS_FIXED_READ_LATENCY = "0" *) 
  (* C_HAS_FIXED_WAIT = "0" *) 
  (* C_HAS_RESPONSE = "0" *) 
  (* C_HIGH1_ADDR = "64'b0000000000000000000000000000000000001111111111111111111111111111" *) 
  (* C_HIGH2_ADDR = "64'b1111111111111111111111111111111111111111111111111111111111111111" *) 
  (* C_HIGH3_ADDR = "64'b1111111111111111111111111111111111111111111111111111111111111111" *) 
  (* C_HIGH4_ADDR = "64'b1111111111111111111111111111111111111111111111111111111111111111" *) 
  (* C_NUM_ADDRESS_RANGES = "0" *) 
  (* C_NUM_OUTSTANDING = "2" *) 
  (* C_PROTOCOL = "0" *) 
  (* C_READ_LATENCY = "1" *) 
  (* C_S_AXI_ADDR_WIDTH = "24" *) 
  (* C_S_AXI_DATA_WIDTH = "32" *) 
  (* C_S_AXI_ID_WIDTH = "4" *) 
  (* C_USE_WSTRB = "0" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_amm_bridge_v1_0_1_top inst
       (.avm_address(avm_address),
        .avm_beginbursttransfer(NLW_inst_avm_beginbursttransfer_UNCONNECTED),
        .avm_burstcount(NLW_inst_avm_burstcount_UNCONNECTED[0]),
        .avm_byteenable(NLW_inst_avm_byteenable_UNCONNECTED[3:0]),
        .avm_read(avm_read),
        .avm_readdata(avm_readdata),
        .avm_readdatavalid(avm_readdatavalid),
        .avm_resp({1'b0,1'b0}),
        .avm_waitrequest(avm_waitrequest),
        .avm_write(avm_write),
        .avm_writedata(avm_writedata),
        .avm_writeresponsevalid(1'b0),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(s_axi_arready),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(s_axi_awready),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bid(NLW_inst_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rid(NLW_inst_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_inst_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wlast(1'b0),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_amm_bridge_v1_0_1_lite
   (s_axi_rvalid,
    s_axi_bvalid,
    s_axi_rdata,
    avm_address,
    avm_byteenable,
    avm_writedata,
    avm_beginbursttransfer,
    avm_read,
    s_axi_awready,
    s_axi_wready,
    avm_write,
    s_axi_rresp,
    s_axi_arready,
    s_axi_bresp,
    s_axi_aclk,
    s_axi_rready,
    avm_waitrequest,
    s_axi_arvalid,
    avm_readdatavalid,
    s_axi_awvalid,
    s_axi_wvalid,
    s_axi_wstrb,
    s_axi_wdata,
    s_axi_araddr,
    s_axi_awaddr,
    s_axi_bready,
    avm_readdata,
    s_axi_aresetn);
  output s_axi_rvalid;
  output s_axi_bvalid;
  output [31:0]s_axi_rdata;
  output [23:0]avm_address;
  output [3:0]avm_byteenable;
  output [31:0]avm_writedata;
  output avm_beginbursttransfer;
  output avm_read;
  output s_axi_awready;
  output s_axi_wready;
  output avm_write;
  output [0:0]s_axi_rresp;
  output s_axi_arready;
  output [0:0]s_axi_bresp;
  input s_axi_aclk;
  input s_axi_rready;
  input avm_waitrequest;
  input s_axi_arvalid;
  input avm_readdatavalid;
  input s_axi_awvalid;
  input s_axi_wvalid;
  input [3:0]s_axi_wstrb;
  input [31:0]s_axi_wdata;
  input [23:0]s_axi_araddr;
  input [23:0]s_axi_awaddr;
  input s_axi_bready;
  input [31:0]avm_readdata;
  input s_axi_aresetn;

  wire \FSM_onehot_current_state[0]_i_1_n_0 ;
  wire \FSM_onehot_current_state[0]_i_2_n_0 ;
  wire \FSM_onehot_current_state[0]_i_3_n_0 ;
  wire \FSM_onehot_current_state[0]_i_4_n_0 ;
  wire \FSM_onehot_current_state[1]_i_1_n_0 ;
  wire \FSM_onehot_current_state[2]_i_1_n_0 ;
  wire \FSM_onehot_current_state[3]_i_1_n_0 ;
  wire \FSM_onehot_current_state[4]_i_1_n_0 ;
  wire \FSM_onehot_current_state[5]_i_1_n_0 ;
  wire \FSM_onehot_current_state[5]_i_3_n_0 ;
  wire \FSM_onehot_current_state[5]_i_4_n_0 ;
  wire \FSM_onehot_current_state[5]_i_5_n_0 ;
  wire \FSM_onehot_current_state[6]_i_1_n_0 ;
  wire \FSM_onehot_current_state[6]_i_2_n_0 ;
  wire \FSM_onehot_current_state[7]_i_1_n_0 ;
  wire \FSM_onehot_current_state[8]_i_1_n_0 ;
  wire \FSM_onehot_current_state[8]_i_3_n_0 ;
  wire \FSM_onehot_current_state[8]_i_4_n_0 ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_current_state_reg_n_0_[0] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_current_state_reg_n_0_[1] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_current_state_reg_n_0_[2] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_current_state_reg_n_0_[3] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_current_state_reg_n_0_[4] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_current_state_reg_n_0_[6] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_current_state_reg_n_0_[7] ;
  wire [23:0]avm_address;
  wire \avm_address[0]_i_1_n_0 ;
  wire \avm_address[0]_i_2_n_0 ;
  wire \avm_address[10]_i_1_n_0 ;
  wire \avm_address[10]_i_2_n_0 ;
  wire \avm_address[11]_i_1_n_0 ;
  wire \avm_address[11]_i_2_n_0 ;
  wire \avm_address[12]_i_1_n_0 ;
  wire \avm_address[12]_i_2_n_0 ;
  wire \avm_address[13]_i_1_n_0 ;
  wire \avm_address[13]_i_2_n_0 ;
  wire \avm_address[14]_i_1_n_0 ;
  wire \avm_address[14]_i_2_n_0 ;
  wire \avm_address[15]_i_1_n_0 ;
  wire \avm_address[15]_i_2_n_0 ;
  wire \avm_address[16]_i_1_n_0 ;
  wire \avm_address[16]_i_2_n_0 ;
  wire \avm_address[17]_i_1_n_0 ;
  wire \avm_address[17]_i_2_n_0 ;
  wire \avm_address[18]_i_1_n_0 ;
  wire \avm_address[18]_i_2_n_0 ;
  wire \avm_address[19]_i_1_n_0 ;
  wire \avm_address[19]_i_2_n_0 ;
  wire \avm_address[1]_i_1_n_0 ;
  wire \avm_address[1]_i_2_n_0 ;
  wire \avm_address[20]_i_1_n_0 ;
  wire \avm_address[20]_i_2_n_0 ;
  wire \avm_address[21]_i_1_n_0 ;
  wire \avm_address[21]_i_2_n_0 ;
  wire \avm_address[22]_i_1_n_0 ;
  wire \avm_address[22]_i_2_n_0 ;
  wire \avm_address[23]_i_1_n_0 ;
  wire \avm_address[23]_i_2_n_0 ;
  wire \avm_address[23]_i_4_n_0 ;
  wire \avm_address[2]_i_1_n_0 ;
  wire \avm_address[2]_i_2_n_0 ;
  wire \avm_address[3]_i_1_n_0 ;
  wire \avm_address[3]_i_2_n_0 ;
  wire \avm_address[4]_i_1_n_0 ;
  wire \avm_address[4]_i_2_n_0 ;
  wire \avm_address[5]_i_1_n_0 ;
  wire \avm_address[5]_i_2_n_0 ;
  wire \avm_address[6]_i_1_n_0 ;
  wire \avm_address[6]_i_2_n_0 ;
  wire \avm_address[7]_i_1_n_0 ;
  wire \avm_address[7]_i_2_n_0 ;
  wire \avm_address[8]_i_1_n_0 ;
  wire \avm_address[8]_i_2_n_0 ;
  wire \avm_address[9]_i_1_n_0 ;
  wire \avm_address[9]_i_2_n_0 ;
  wire avm_beginbursttransfer;
  wire avm_beginbursttransfer_i_1_n_0;
  wire [3:0]avm_byteenable;
  wire \avm_byteenable[0]_i_1_n_0 ;
  wire \avm_byteenable[1]_i_1_n_0 ;
  wire \avm_byteenable[2]_i_1_n_0 ;
  wire \avm_byteenable[3]_i_1_n_0 ;
  wire \avm_byteenable[3]_i_2_n_0 ;
  wire \avm_byteenable[3]_i_3_n_0 ;
  wire avm_read;
  wire avm_read_i_1_n_0;
  wire [31:0]avm_readdata;
  (* RTL_KEEP = "yes" *) wire avm_readdata_i;
  wire avm_readdatavalid;
  wire avm_readdatavalid_i0;
  wire avm_waitrequest;
  wire avm_write;
  wire avm_write_i_1_n_0;
  wire avm_write_i_2_n_0;
  wire [31:0]avm_writedata;
  wire \avm_writedata[0]_i_1_n_0 ;
  wire \avm_writedata[10]_i_1_n_0 ;
  wire \avm_writedata[11]_i_1_n_0 ;
  wire \avm_writedata[12]_i_1_n_0 ;
  wire \avm_writedata[13]_i_1_n_0 ;
  wire \avm_writedata[14]_i_1_n_0 ;
  wire \avm_writedata[15]_i_1_n_0 ;
  wire \avm_writedata[16]_i_1_n_0 ;
  wire \avm_writedata[17]_i_1_n_0 ;
  wire \avm_writedata[18]_i_1_n_0 ;
  wire \avm_writedata[19]_i_1_n_0 ;
  wire \avm_writedata[1]_i_1_n_0 ;
  wire \avm_writedata[20]_i_1_n_0 ;
  wire \avm_writedata[21]_i_1_n_0 ;
  wire \avm_writedata[22]_i_1_n_0 ;
  wire \avm_writedata[23]_i_1_n_0 ;
  wire \avm_writedata[24]_i_1_n_0 ;
  wire \avm_writedata[25]_i_1_n_0 ;
  wire \avm_writedata[26]_i_1_n_0 ;
  wire \avm_writedata[27]_i_1_n_0 ;
  wire \avm_writedata[28]_i_1_n_0 ;
  wire \avm_writedata[29]_i_1_n_0 ;
  wire \avm_writedata[2]_i_1_n_0 ;
  wire \avm_writedata[30]_i_1_n_0 ;
  wire \avm_writedata[31]_i_1_n_0 ;
  wire \avm_writedata[31]_i_2_n_0 ;
  wire \avm_writedata[3]_i_1_n_0 ;
  wire \avm_writedata[4]_i_1_n_0 ;
  wire \avm_writedata[5]_i_1_n_0 ;
  wire \avm_writedata[6]_i_1_n_0 ;
  wire \avm_writedata[7]_i_1_n_0 ;
  wire \avm_writedata[8]_i_1_n_0 ;
  wire \avm_writedata[9]_i_1_n_0 ;
  wire clear;
  wire current_state1;
  wire current_state115_out;
  wire current_state116_out;
  wire done_read;
  wire done_write;
  wire [8:0]p_0_in;
  (* RTL_KEEP = "yes" *) wire p_1_in;
  wire s_axi_aclk;
  wire [23:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arready_i_1_n_0;
  wire s_axi_arvalid;
  wire [23:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awready_i_1_n_0;
  wire s_axi_awready_i_2_n_0;
  wire s_axi_awready_i_3_n_0;
  wire s_axi_awready_i_4_n_0;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [0:0]s_axi_bresp;
  wire \s_axi_bresp[1]_i_1_n_0 ;
  wire \s_axi_bresp[1]_i_2_n_0 ;
  wire s_axi_bvalid;
  wire s_axi_bvalid_i_1_n_0;
  wire [31:0]s_axi_rdata;
  wire \s_axi_rdata[0]_i_1_n_0 ;
  wire \s_axi_rdata[10]_i_1_n_0 ;
  wire \s_axi_rdata[11]_i_1_n_0 ;
  wire \s_axi_rdata[12]_i_1_n_0 ;
  wire \s_axi_rdata[13]_i_1_n_0 ;
  wire \s_axi_rdata[14]_i_1_n_0 ;
  wire \s_axi_rdata[15]_i_1_n_0 ;
  wire \s_axi_rdata[16]_i_1_n_0 ;
  wire \s_axi_rdata[17]_i_1_n_0 ;
  wire \s_axi_rdata[18]_i_1_n_0 ;
  wire \s_axi_rdata[19]_i_1_n_0 ;
  wire \s_axi_rdata[1]_i_1_n_0 ;
  wire \s_axi_rdata[20]_i_1_n_0 ;
  wire \s_axi_rdata[21]_i_1_n_0 ;
  wire \s_axi_rdata[22]_i_1_n_0 ;
  wire \s_axi_rdata[23]_i_1_n_0 ;
  wire \s_axi_rdata[24]_i_1_n_0 ;
  wire \s_axi_rdata[25]_i_1_n_0 ;
  wire \s_axi_rdata[26]_i_1_n_0 ;
  wire \s_axi_rdata[27]_i_1_n_0 ;
  wire \s_axi_rdata[28]_i_1_n_0 ;
  wire \s_axi_rdata[29]_i_1_n_0 ;
  wire \s_axi_rdata[2]_i_1_n_0 ;
  wire \s_axi_rdata[30]_i_1_n_0 ;
  wire \s_axi_rdata[31]_i_1_n_0 ;
  wire \s_axi_rdata[31]_i_2_n_0 ;
  wire \s_axi_rdata[31]_i_3_n_0 ;
  wire \s_axi_rdata[3]_i_1_n_0 ;
  wire \s_axi_rdata[4]_i_1_n_0 ;
  wire \s_axi_rdata[5]_i_1_n_0 ;
  wire \s_axi_rdata[6]_i_1_n_0 ;
  wire \s_axi_rdata[7]_i_1_n_0 ;
  wire \s_axi_rdata[8]_i_1_n_0 ;
  wire \s_axi_rdata[9]_i_1_n_0 ;
  wire s_axi_rready;
  wire [0:0]s_axi_rresp;
  wire \s_axi_rresp[1]_i_1_n_0 ;
  wire \s_axi_rresp[1]_i_2_n_0 ;
  wire s_axi_rvalid;
  wire s_axi_rvalid_i_1_n_0;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire s_axi_wready_i_1_n_0;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire start;
  wire start_i_1_n_0;
  wire start_i_2_n_0;
  wire start_i_3_n_0;
  wire start_i_4_n_0;
  wire start_i_6_n_0;
  wire start_reg_n_0;
  wire \tout_counter[8]_i_3_n_0 ;
  wire [8:0]tout_counter_reg__0;

  LUT6 #(
    .INIT(64'h4444444477777444)) 
    \FSM_onehot_current_state[0]_i_1 
       (.I0(\avm_byteenable[3]_i_3_n_0 ),
        .I1(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I2(\FSM_onehot_current_state[0]_i_2_n_0 ),
        .I3(\FSM_onehot_current_state[0]_i_3_n_0 ),
        .I4(\FSM_onehot_current_state[0]_i_4_n_0 ),
        .I5(\FSM_onehot_current_state_reg_n_0_[2] ),
        .O(\FSM_onehot_current_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000800F8F)) 
    \FSM_onehot_current_state[0]_i_2 
       (.I0(s_axi_rvalid),
        .I1(s_axi_rready),
        .I2(\FSM_onehot_current_state_reg_n_0_[6] ),
        .I3(\FSM_onehot_current_state_reg_n_0_[3] ),
        .I4(\FSM_onehot_current_state_reg_n_0_[7] ),
        .I5(\FSM_onehot_current_state_reg_n_0_[1] ),
        .O(\FSM_onehot_current_state[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hA0A0AAAA000000F3)) 
    \FSM_onehot_current_state[0]_i_3 
       (.I0(done_read),
        .I1(p_1_in),
        .I2(done_write),
        .I3(\FSM_onehot_current_state_reg_n_0_[4] ),
        .I4(\FSM_onehot_current_state_reg_n_0_[3] ),
        .I5(avm_readdata_i),
        .O(\FSM_onehot_current_state[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h8888B888)) 
    \FSM_onehot_current_state[0]_i_4 
       (.I0(done_write),
        .I1(\FSM_onehot_current_state_reg_n_0_[3] ),
        .I2(\FSM_onehot_current_state_reg_n_0_[6] ),
        .I3(done_read),
        .I4(\FSM_onehot_current_state_reg_n_0_[1] ),
        .O(\FSM_onehot_current_state[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h888888888F888888)) 
    \FSM_onehot_current_state[1]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I1(s_axi_arvalid),
        .I2(\FSM_onehot_current_state[6]_i_2_n_0 ),
        .I3(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I4(avm_waitrequest),
        .I5(current_state116_out),
        .O(\FSM_onehot_current_state[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h550055C0)) 
    \FSM_onehot_current_state[2]_i_1 
       (.I0(avm_write_i_2_n_0),
        .I1(avm_waitrequest),
        .I2(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I3(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I4(current_state116_out),
        .O(\FSM_onehot_current_state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000550000005530)) 
    \FSM_onehot_current_state[3]_i_1 
       (.I0(avm_waitrequest),
        .I1(done_write),
        .I2(\FSM_onehot_current_state_reg_n_0_[3] ),
        .I3(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I4(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I5(current_state115_out),
        .O(\FSM_onehot_current_state[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0800)) 
    \FSM_onehot_current_state[4]_i_1 
       (.I0(avm_waitrequest),
        .I1(current_state116_out),
        .I2(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I3(\FSM_onehot_current_state_reg_n_0_[2] ),
        .O(\FSM_onehot_current_state[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0040004F00400040)) 
    \FSM_onehot_current_state[5]_i_1 
       (.I0(done_write),
        .I1(current_state115_out),
        .I2(\FSM_onehot_current_state_reg_n_0_[3] ),
        .I3(\FSM_onehot_current_state[5]_i_3_n_0 ),
        .I4(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I5(\FSM_onehot_current_state[5]_i_4_n_0 ),
        .O(\FSM_onehot_current_state[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000004)) 
    \FSM_onehot_current_state[5]_i_2 
       (.I0(s_axi_awready_i_4_n_0),
        .I1(\FSM_onehot_current_state[5]_i_5_n_0 ),
        .I2(p_1_in),
        .I3(\FSM_onehot_current_state_reg_n_0_[3] ),
        .I4(s_axi_bvalid),
        .O(current_state115_out));
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_onehot_current_state[5]_i_3 
       (.I0(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_current_state_reg_n_0_[2] ),
        .O(\FSM_onehot_current_state[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0100010001010100)) 
    \FSM_onehot_current_state[5]_i_4 
       (.I0(avm_readdata_i),
        .I1(\FSM_onehot_current_state_reg_n_0_[7] ),
        .I2(\FSM_onehot_current_state_reg_n_0_[6] ),
        .I3(\FSM_onehot_current_state_reg_n_0_[4] ),
        .I4(p_1_in),
        .I5(done_write),
        .O(\FSM_onehot_current_state[5]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \FSM_onehot_current_state[5]_i_5 
       (.I0(tout_counter_reg__0[4]),
        .I1(tout_counter_reg__0[8]),
        .I2(start_reg_n_0),
        .I3(tout_counter_reg__0[5]),
        .O(\FSM_onehot_current_state[5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h1100110311001100)) 
    \FSM_onehot_current_state[6]_i_1 
       (.I0(avm_waitrequest),
        .I1(\FSM_onehot_current_state[6]_i_2_n_0 ),
        .I2(current_state1),
        .I3(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I4(done_read),
        .I5(\FSM_onehot_current_state_reg_n_0_[6] ),
        .O(\FSM_onehot_current_state[6]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \FSM_onehot_current_state[6]_i_2 
       (.I0(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I1(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I2(\FSM_onehot_current_state_reg_n_0_[3] ),
        .O(\FSM_onehot_current_state[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \FSM_onehot_current_state[7]_i_1 
       (.I0(current_state116_out),
        .I1(avm_waitrequest),
        .I2(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I3(\FSM_onehot_current_state_reg_n_0_[3] ),
        .I4(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I5(\FSM_onehot_current_state_reg_n_0_[2] ),
        .O(\FSM_onehot_current_state[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000004F4F4540)) 
    \FSM_onehot_current_state[8]_i_1 
       (.I0(done_read),
        .I1(current_state1),
        .I2(\FSM_onehot_current_state_reg_n_0_[6] ),
        .I3(avm_readdata_i),
        .I4(\FSM_onehot_current_state_reg_n_0_[7] ),
        .I5(\FSM_onehot_current_state[8]_i_3_n_0 ),
        .O(\FSM_onehot_current_state[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    \FSM_onehot_current_state[8]_i_2 
       (.I0(s_axi_awready_i_4_n_0),
        .I1(tout_counter_reg__0[4]),
        .I2(tout_counter_reg__0[8]),
        .I3(start_reg_n_0),
        .I4(tout_counter_reg__0[5]),
        .I5(\FSM_onehot_current_state[8]_i_4_n_0 ),
        .O(current_state1));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_current_state[8]_i_3 
       (.I0(\FSM_onehot_current_state_reg_n_0_[3] ),
        .I1(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I2(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I3(\FSM_onehot_current_state_reg_n_0_[1] ),
        .O(\FSM_onehot_current_state[8]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFEEE)) 
    \FSM_onehot_current_state[8]_i_4 
       (.I0(s_axi_rvalid),
        .I1(avm_readdata_i),
        .I2(\FSM_onehot_current_state_reg_n_0_[6] ),
        .I3(avm_readdatavalid),
        .O(\FSM_onehot_current_state[8]_i_4_n_0 ));
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_current_state_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_current_state[0]_i_1_n_0 ),
        .Q(\FSM_onehot_current_state_reg_n_0_[0] ),
        .S(s_axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_current_state[1]_i_1_n_0 ),
        .Q(\FSM_onehot_current_state_reg_n_0_[1] ),
        .R(s_axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_current_state[2]_i_1_n_0 ),
        .Q(\FSM_onehot_current_state_reg_n_0_[2] ),
        .R(s_axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_current_state[3]_i_1_n_0 ),
        .Q(\FSM_onehot_current_state_reg_n_0_[3] ),
        .R(s_axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_current_state[4]_i_1_n_0 ),
        .Q(\FSM_onehot_current_state_reg_n_0_[4] ),
        .R(s_axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_current_state[5]_i_1_n_0 ),
        .Q(p_1_in),
        .R(s_axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_current_state[6]_i_1_n_0 ),
        .Q(\FSM_onehot_current_state_reg_n_0_[6] ),
        .R(s_axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_current_state[7]_i_1_n_0 ),
        .Q(\FSM_onehot_current_state_reg_n_0_[7] ),
        .R(s_axi_awready_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_current_state[8]_i_1_n_0 ),
        .Q(avm_readdata_i),
        .R(s_axi_awready_i_1_n_0));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \avm_address[0]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I1(s_axi_araddr[0]),
        .I2(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I3(s_axi_awaddr[0]),
        .I4(\avm_address[0]_i_2_n_0 ),
        .O(\avm_address[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA280808080808080)) 
    \avm_address[0]_i_2 
       (.I0(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I1(s_axi_arvalid),
        .I2(s_axi_araddr[0]),
        .I3(s_axi_awaddr[0]),
        .I4(s_axi_awvalid),
        .I5(s_axi_wvalid),
        .O(\avm_address[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \avm_address[10]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I1(s_axi_araddr[10]),
        .I2(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I3(s_axi_awaddr[10]),
        .I4(\avm_address[10]_i_2_n_0 ),
        .O(\avm_address[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA280808080808080)) 
    \avm_address[10]_i_2 
       (.I0(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I1(s_axi_arvalid),
        .I2(s_axi_araddr[10]),
        .I3(s_axi_awaddr[10]),
        .I4(s_axi_awvalid),
        .I5(s_axi_wvalid),
        .O(\avm_address[10]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \avm_address[11]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I1(s_axi_araddr[11]),
        .I2(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I3(s_axi_awaddr[11]),
        .I4(\avm_address[11]_i_2_n_0 ),
        .O(\avm_address[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA280808080808080)) 
    \avm_address[11]_i_2 
       (.I0(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I1(s_axi_arvalid),
        .I2(s_axi_araddr[11]),
        .I3(s_axi_awaddr[11]),
        .I4(s_axi_awvalid),
        .I5(s_axi_wvalid),
        .O(\avm_address[11]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \avm_address[12]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I1(s_axi_araddr[12]),
        .I2(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I3(s_axi_awaddr[12]),
        .I4(\avm_address[12]_i_2_n_0 ),
        .O(\avm_address[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA280808080808080)) 
    \avm_address[12]_i_2 
       (.I0(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I1(s_axi_arvalid),
        .I2(s_axi_araddr[12]),
        .I3(s_axi_awaddr[12]),
        .I4(s_axi_awvalid),
        .I5(s_axi_wvalid),
        .O(\avm_address[12]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \avm_address[13]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I1(s_axi_araddr[13]),
        .I2(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I3(s_axi_awaddr[13]),
        .I4(\avm_address[13]_i_2_n_0 ),
        .O(\avm_address[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA280808080808080)) 
    \avm_address[13]_i_2 
       (.I0(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I1(s_axi_arvalid),
        .I2(s_axi_araddr[13]),
        .I3(s_axi_awaddr[13]),
        .I4(s_axi_awvalid),
        .I5(s_axi_wvalid),
        .O(\avm_address[13]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \avm_address[14]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I1(s_axi_araddr[14]),
        .I2(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I3(s_axi_awaddr[14]),
        .I4(\avm_address[14]_i_2_n_0 ),
        .O(\avm_address[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA280808080808080)) 
    \avm_address[14]_i_2 
       (.I0(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I1(s_axi_arvalid),
        .I2(s_axi_araddr[14]),
        .I3(s_axi_awaddr[14]),
        .I4(s_axi_awvalid),
        .I5(s_axi_wvalid),
        .O(\avm_address[14]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \avm_address[15]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I1(s_axi_araddr[15]),
        .I2(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I3(s_axi_awaddr[15]),
        .I4(\avm_address[15]_i_2_n_0 ),
        .O(\avm_address[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA280808080808080)) 
    \avm_address[15]_i_2 
       (.I0(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I1(s_axi_arvalid),
        .I2(s_axi_araddr[15]),
        .I3(s_axi_awaddr[15]),
        .I4(s_axi_awvalid),
        .I5(s_axi_wvalid),
        .O(\avm_address[15]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \avm_address[16]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I1(s_axi_araddr[16]),
        .I2(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I3(s_axi_awaddr[16]),
        .I4(\avm_address[16]_i_2_n_0 ),
        .O(\avm_address[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA280808080808080)) 
    \avm_address[16]_i_2 
       (.I0(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I1(s_axi_arvalid),
        .I2(s_axi_araddr[16]),
        .I3(s_axi_awaddr[16]),
        .I4(s_axi_awvalid),
        .I5(s_axi_wvalid),
        .O(\avm_address[16]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \avm_address[17]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I1(s_axi_araddr[17]),
        .I2(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I3(s_axi_awaddr[17]),
        .I4(\avm_address[17]_i_2_n_0 ),
        .O(\avm_address[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA280808080808080)) 
    \avm_address[17]_i_2 
       (.I0(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I1(s_axi_arvalid),
        .I2(s_axi_araddr[17]),
        .I3(s_axi_awaddr[17]),
        .I4(s_axi_awvalid),
        .I5(s_axi_wvalid),
        .O(\avm_address[17]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \avm_address[18]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I1(s_axi_araddr[18]),
        .I2(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I3(s_axi_awaddr[18]),
        .I4(\avm_address[18]_i_2_n_0 ),
        .O(\avm_address[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA280808080808080)) 
    \avm_address[18]_i_2 
       (.I0(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I1(s_axi_arvalid),
        .I2(s_axi_araddr[18]),
        .I3(s_axi_awaddr[18]),
        .I4(s_axi_awvalid),
        .I5(s_axi_wvalid),
        .O(\avm_address[18]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \avm_address[19]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I1(s_axi_araddr[19]),
        .I2(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I3(s_axi_awaddr[19]),
        .I4(\avm_address[19]_i_2_n_0 ),
        .O(\avm_address[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA280808080808080)) 
    \avm_address[19]_i_2 
       (.I0(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I1(s_axi_arvalid),
        .I2(s_axi_araddr[19]),
        .I3(s_axi_awaddr[19]),
        .I4(s_axi_awvalid),
        .I5(s_axi_wvalid),
        .O(\avm_address[19]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \avm_address[1]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I1(s_axi_araddr[1]),
        .I2(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I3(s_axi_awaddr[1]),
        .I4(\avm_address[1]_i_2_n_0 ),
        .O(\avm_address[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA280808080808080)) 
    \avm_address[1]_i_2 
       (.I0(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I1(s_axi_arvalid),
        .I2(s_axi_araddr[1]),
        .I3(s_axi_awaddr[1]),
        .I4(s_axi_awvalid),
        .I5(s_axi_wvalid),
        .O(\avm_address[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \avm_address[20]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I1(s_axi_araddr[20]),
        .I2(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I3(s_axi_awaddr[20]),
        .I4(\avm_address[20]_i_2_n_0 ),
        .O(\avm_address[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA280808080808080)) 
    \avm_address[20]_i_2 
       (.I0(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I1(s_axi_arvalid),
        .I2(s_axi_araddr[20]),
        .I3(s_axi_awaddr[20]),
        .I4(s_axi_awvalid),
        .I5(s_axi_wvalid),
        .O(\avm_address[20]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \avm_address[21]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I1(s_axi_araddr[21]),
        .I2(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I3(s_axi_awaddr[21]),
        .I4(\avm_address[21]_i_2_n_0 ),
        .O(\avm_address[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA280808080808080)) 
    \avm_address[21]_i_2 
       (.I0(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I1(s_axi_arvalid),
        .I2(s_axi_araddr[21]),
        .I3(s_axi_awaddr[21]),
        .I4(s_axi_awvalid),
        .I5(s_axi_wvalid),
        .O(\avm_address[21]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \avm_address[22]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I1(s_axi_araddr[22]),
        .I2(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I3(s_axi_awaddr[22]),
        .I4(\avm_address[22]_i_2_n_0 ),
        .O(\avm_address[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA280808080808080)) 
    \avm_address[22]_i_2 
       (.I0(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I1(s_axi_arvalid),
        .I2(s_axi_araddr[22]),
        .I3(s_axi_awaddr[22]),
        .I4(s_axi_awvalid),
        .I5(s_axi_wvalid),
        .O(\avm_address[22]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAEFEAEEE)) 
    \avm_address[23]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I2(avm_waitrequest),
        .I3(current_state116_out),
        .I4(\FSM_onehot_current_state_reg_n_0_[2] ),
        .O(\avm_address[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \avm_address[23]_i_2 
       (.I0(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I1(s_axi_araddr[23]),
        .I2(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I3(s_axi_awaddr[23]),
        .I4(\avm_address[23]_i_4_n_0 ),
        .O(\avm_address[23]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00000040)) 
    \avm_address[23]_i_3 
       (.I0(tout_counter_reg__0[5]),
        .I1(start_reg_n_0),
        .I2(tout_counter_reg__0[8]),
        .I3(tout_counter_reg__0[4]),
        .I4(s_axi_awready_i_4_n_0),
        .O(current_state116_out));
  LUT6 #(
    .INIT(64'hA280808080808080)) 
    \avm_address[23]_i_4 
       (.I0(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I1(s_axi_arvalid),
        .I2(s_axi_araddr[23]),
        .I3(s_axi_awaddr[23]),
        .I4(s_axi_awvalid),
        .I5(s_axi_wvalid),
        .O(\avm_address[23]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \avm_address[2]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I1(s_axi_araddr[2]),
        .I2(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I3(s_axi_awaddr[2]),
        .I4(\avm_address[2]_i_2_n_0 ),
        .O(\avm_address[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA280808080808080)) 
    \avm_address[2]_i_2 
       (.I0(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I1(s_axi_arvalid),
        .I2(s_axi_araddr[2]),
        .I3(s_axi_awaddr[2]),
        .I4(s_axi_awvalid),
        .I5(s_axi_wvalid),
        .O(\avm_address[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \avm_address[3]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I1(s_axi_araddr[3]),
        .I2(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I3(s_axi_awaddr[3]),
        .I4(\avm_address[3]_i_2_n_0 ),
        .O(\avm_address[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA280808080808080)) 
    \avm_address[3]_i_2 
       (.I0(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I1(s_axi_arvalid),
        .I2(s_axi_araddr[3]),
        .I3(s_axi_awaddr[3]),
        .I4(s_axi_awvalid),
        .I5(s_axi_wvalid),
        .O(\avm_address[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \avm_address[4]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I1(s_axi_araddr[4]),
        .I2(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I3(s_axi_awaddr[4]),
        .I4(\avm_address[4]_i_2_n_0 ),
        .O(\avm_address[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA280808080808080)) 
    \avm_address[4]_i_2 
       (.I0(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I1(s_axi_arvalid),
        .I2(s_axi_araddr[4]),
        .I3(s_axi_awaddr[4]),
        .I4(s_axi_awvalid),
        .I5(s_axi_wvalid),
        .O(\avm_address[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \avm_address[5]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I1(s_axi_araddr[5]),
        .I2(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I3(s_axi_awaddr[5]),
        .I4(\avm_address[5]_i_2_n_0 ),
        .O(\avm_address[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA280808080808080)) 
    \avm_address[5]_i_2 
       (.I0(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I1(s_axi_arvalid),
        .I2(s_axi_araddr[5]),
        .I3(s_axi_awaddr[5]),
        .I4(s_axi_awvalid),
        .I5(s_axi_wvalid),
        .O(\avm_address[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \avm_address[6]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I1(s_axi_araddr[6]),
        .I2(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I3(s_axi_awaddr[6]),
        .I4(\avm_address[6]_i_2_n_0 ),
        .O(\avm_address[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA280808080808080)) 
    \avm_address[6]_i_2 
       (.I0(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I1(s_axi_arvalid),
        .I2(s_axi_araddr[6]),
        .I3(s_axi_awaddr[6]),
        .I4(s_axi_awvalid),
        .I5(s_axi_wvalid),
        .O(\avm_address[6]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \avm_address[7]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I1(s_axi_araddr[7]),
        .I2(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I3(s_axi_awaddr[7]),
        .I4(\avm_address[7]_i_2_n_0 ),
        .O(\avm_address[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA280808080808080)) 
    \avm_address[7]_i_2 
       (.I0(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I1(s_axi_arvalid),
        .I2(s_axi_araddr[7]),
        .I3(s_axi_awaddr[7]),
        .I4(s_axi_awvalid),
        .I5(s_axi_wvalid),
        .O(\avm_address[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \avm_address[8]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I1(s_axi_araddr[8]),
        .I2(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I3(s_axi_awaddr[8]),
        .I4(\avm_address[8]_i_2_n_0 ),
        .O(\avm_address[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA280808080808080)) 
    \avm_address[8]_i_2 
       (.I0(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I1(s_axi_arvalid),
        .I2(s_axi_araddr[8]),
        .I3(s_axi_awaddr[8]),
        .I4(s_axi_awvalid),
        .I5(s_axi_wvalid),
        .O(\avm_address[8]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \avm_address[9]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I1(s_axi_araddr[9]),
        .I2(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I3(s_axi_awaddr[9]),
        .I4(\avm_address[9]_i_2_n_0 ),
        .O(\avm_address[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA280808080808080)) 
    \avm_address[9]_i_2 
       (.I0(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I1(s_axi_arvalid),
        .I2(s_axi_araddr[9]),
        .I3(s_axi_awaddr[9]),
        .I4(s_axi_awvalid),
        .I5(s_axi_wvalid),
        .O(\avm_address[9]_i_2_n_0 ));
  FDRE \avm_address_reg[0] 
       (.C(s_axi_aclk),
        .CE(\avm_address[23]_i_1_n_0 ),
        .D(\avm_address[0]_i_1_n_0 ),
        .Q(avm_address[0]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \avm_address_reg[10] 
       (.C(s_axi_aclk),
        .CE(\avm_address[23]_i_1_n_0 ),
        .D(\avm_address[10]_i_1_n_0 ),
        .Q(avm_address[10]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \avm_address_reg[11] 
       (.C(s_axi_aclk),
        .CE(\avm_address[23]_i_1_n_0 ),
        .D(\avm_address[11]_i_1_n_0 ),
        .Q(avm_address[11]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \avm_address_reg[12] 
       (.C(s_axi_aclk),
        .CE(\avm_address[23]_i_1_n_0 ),
        .D(\avm_address[12]_i_1_n_0 ),
        .Q(avm_address[12]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \avm_address_reg[13] 
       (.C(s_axi_aclk),
        .CE(\avm_address[23]_i_1_n_0 ),
        .D(\avm_address[13]_i_1_n_0 ),
        .Q(avm_address[13]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \avm_address_reg[14] 
       (.C(s_axi_aclk),
        .CE(\avm_address[23]_i_1_n_0 ),
        .D(\avm_address[14]_i_1_n_0 ),
        .Q(avm_address[14]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \avm_address_reg[15] 
       (.C(s_axi_aclk),
        .CE(\avm_address[23]_i_1_n_0 ),
        .D(\avm_address[15]_i_1_n_0 ),
        .Q(avm_address[15]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \avm_address_reg[16] 
       (.C(s_axi_aclk),
        .CE(\avm_address[23]_i_1_n_0 ),
        .D(\avm_address[16]_i_1_n_0 ),
        .Q(avm_address[16]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \avm_address_reg[17] 
       (.C(s_axi_aclk),
        .CE(\avm_address[23]_i_1_n_0 ),
        .D(\avm_address[17]_i_1_n_0 ),
        .Q(avm_address[17]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \avm_address_reg[18] 
       (.C(s_axi_aclk),
        .CE(\avm_address[23]_i_1_n_0 ),
        .D(\avm_address[18]_i_1_n_0 ),
        .Q(avm_address[18]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \avm_address_reg[19] 
       (.C(s_axi_aclk),
        .CE(\avm_address[23]_i_1_n_0 ),
        .D(\avm_address[19]_i_1_n_0 ),
        .Q(avm_address[19]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \avm_address_reg[1] 
       (.C(s_axi_aclk),
        .CE(\avm_address[23]_i_1_n_0 ),
        .D(\avm_address[1]_i_1_n_0 ),
        .Q(avm_address[1]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \avm_address_reg[20] 
       (.C(s_axi_aclk),
        .CE(\avm_address[23]_i_1_n_0 ),
        .D(\avm_address[20]_i_1_n_0 ),
        .Q(avm_address[20]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \avm_address_reg[21] 
       (.C(s_axi_aclk),
        .CE(\avm_address[23]_i_1_n_0 ),
        .D(\avm_address[21]_i_1_n_0 ),
        .Q(avm_address[21]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \avm_address_reg[22] 
       (.C(s_axi_aclk),
        .CE(\avm_address[23]_i_1_n_0 ),
        .D(\avm_address[22]_i_1_n_0 ),
        .Q(avm_address[22]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \avm_address_reg[23] 
       (.C(s_axi_aclk),
        .CE(\avm_address[23]_i_1_n_0 ),
        .D(\avm_address[23]_i_2_n_0 ),
        .Q(avm_address[23]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \avm_address_reg[2] 
       (.C(s_axi_aclk),
        .CE(\avm_address[23]_i_1_n_0 ),
        .D(\avm_address[2]_i_1_n_0 ),
        .Q(avm_address[2]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \avm_address_reg[3] 
       (.C(s_axi_aclk),
        .CE(\avm_address[23]_i_1_n_0 ),
        .D(\avm_address[3]_i_1_n_0 ),
        .Q(avm_address[3]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \avm_address_reg[4] 
       (.C(s_axi_aclk),
        .CE(\avm_address[23]_i_1_n_0 ),
        .D(\avm_address[4]_i_1_n_0 ),
        .Q(avm_address[4]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \avm_address_reg[5] 
       (.C(s_axi_aclk),
        .CE(\avm_address[23]_i_1_n_0 ),
        .D(\avm_address[5]_i_1_n_0 ),
        .Q(avm_address[5]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \avm_address_reg[6] 
       (.C(s_axi_aclk),
        .CE(\avm_address[23]_i_1_n_0 ),
        .D(\avm_address[6]_i_1_n_0 ),
        .Q(avm_address[6]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \avm_address_reg[7] 
       (.C(s_axi_aclk),
        .CE(\avm_address[23]_i_1_n_0 ),
        .D(\avm_address[7]_i_1_n_0 ),
        .Q(avm_address[7]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \avm_address_reg[8] 
       (.C(s_axi_aclk),
        .CE(\avm_address[23]_i_1_n_0 ),
        .D(\avm_address[8]_i_1_n_0 ),
        .Q(avm_address[8]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \avm_address_reg[9] 
       (.C(s_axi_aclk),
        .CE(\avm_address[23]_i_1_n_0 ),
        .D(\avm_address[9]_i_1_n_0 ),
        .Q(avm_address[9]),
        .R(s_axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'hAA80)) 
    avm_beginbursttransfer_i_1
       (.I0(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I1(s_axi_awvalid),
        .I2(s_axi_wvalid),
        .I3(s_axi_arvalid),
        .O(avm_beginbursttransfer_i_1_n_0));
  FDRE avm_beginbursttransfer_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(avm_beginbursttransfer_i_1_n_0),
        .Q(avm_beginbursttransfer),
        .R(s_axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFEEEAEAEEEEEAEA)) 
    \avm_byteenable[0]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I1(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I2(s_axi_arvalid),
        .I3(avm_waitrequest),
        .I4(s_axi_wstrb[0]),
        .I5(\FSM_onehot_current_state_reg_n_0_[2] ),
        .O(\avm_byteenable[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEEEAEAEEEEEAEA)) 
    \avm_byteenable[1]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I1(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I2(s_axi_arvalid),
        .I3(avm_waitrequest),
        .I4(s_axi_wstrb[1]),
        .I5(\FSM_onehot_current_state_reg_n_0_[2] ),
        .O(\avm_byteenable[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEEEAEAEEEEEAEA)) 
    \avm_byteenable[2]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I1(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I2(s_axi_arvalid),
        .I3(avm_waitrequest),
        .I4(s_axi_wstrb[2]),
        .I5(\FSM_onehot_current_state_reg_n_0_[2] ),
        .O(\avm_byteenable[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8FFF8FFF8FFF8888)) 
    \avm_byteenable[3]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I1(\avm_byteenable[3]_i_3_n_0 ),
        .I2(avm_waitrequest),
        .I3(current_state116_out),
        .I4(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I5(\FSM_onehot_current_state_reg_n_0_[2] ),
        .O(\avm_byteenable[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEEEAEAEEEEEAEA)) 
    \avm_byteenable[3]_i_2 
       (.I0(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I1(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I2(s_axi_arvalid),
        .I3(avm_waitrequest),
        .I4(s_axi_wstrb[3]),
        .I5(\FSM_onehot_current_state_reg_n_0_[2] ),
        .O(\avm_byteenable[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \avm_byteenable[3]_i_3 
       (.I0(s_axi_arvalid),
        .I1(s_axi_wvalid),
        .I2(s_axi_awvalid),
        .O(\avm_byteenable[3]_i_3_n_0 ));
  FDSE \avm_byteenable_reg[0] 
       (.C(s_axi_aclk),
        .CE(\avm_byteenable[3]_i_1_n_0 ),
        .D(\avm_byteenable[0]_i_1_n_0 ),
        .Q(avm_byteenable[0]),
        .S(s_axi_awready_i_1_n_0));
  FDSE \avm_byteenable_reg[1] 
       (.C(s_axi_aclk),
        .CE(\avm_byteenable[3]_i_1_n_0 ),
        .D(\avm_byteenable[1]_i_1_n_0 ),
        .Q(avm_byteenable[1]),
        .S(s_axi_awready_i_1_n_0));
  FDSE \avm_byteenable_reg[2] 
       (.C(s_axi_aclk),
        .CE(\avm_byteenable[3]_i_1_n_0 ),
        .D(\avm_byteenable[2]_i_1_n_0 ),
        .Q(avm_byteenable[2]),
        .S(s_axi_awready_i_1_n_0));
  FDSE \avm_byteenable_reg[3] 
       (.C(s_axi_aclk),
        .CE(\avm_byteenable[3]_i_1_n_0 ),
        .D(\avm_byteenable[3]_i_2_n_0 ),
        .Q(avm_byteenable[3]),
        .S(s_axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'hF222F0FFF222F000)) 
    avm_read_i_1
       (.I0(avm_waitrequest),
        .I1(current_state116_out),
        .I2(s_axi_arvalid),
        .I3(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I4(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I5(avm_read),
        .O(avm_read_i_1_n_0));
  FDRE avm_read_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(avm_read_i_1_n_0),
        .Q(avm_read),
        .R(s_axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h2F220FFF2F220F00)) 
    avm_write_i_1
       (.I0(avm_waitrequest),
        .I1(current_state116_out),
        .I2(avm_write_i_2_n_0),
        .I3(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I4(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I5(avm_write),
        .O(avm_write_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hBF)) 
    avm_write_i_2
       (.I0(s_axi_arvalid),
        .I1(s_axi_wvalid),
        .I2(s_axi_awvalid),
        .O(avm_write_i_2_n_0));
  FDRE avm_write_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(avm_write_i_1_n_0),
        .Q(avm_write),
        .R(s_axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'hF080)) 
    \avm_writedata[0]_i_1 
       (.I0(avm_waitrequest),
        .I1(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I2(s_axi_wdata[0]),
        .I3(\FSM_onehot_current_state_reg_n_0_[0] ),
        .O(\avm_writedata[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF080)) 
    \avm_writedata[10]_i_1 
       (.I0(avm_waitrequest),
        .I1(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I2(s_axi_wdata[10]),
        .I3(\FSM_onehot_current_state_reg_n_0_[0] ),
        .O(\avm_writedata[10]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF080)) 
    \avm_writedata[11]_i_1 
       (.I0(avm_waitrequest),
        .I1(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I2(s_axi_wdata[11]),
        .I3(\FSM_onehot_current_state_reg_n_0_[0] ),
        .O(\avm_writedata[11]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF080)) 
    \avm_writedata[12]_i_1 
       (.I0(avm_waitrequest),
        .I1(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I2(s_axi_wdata[12]),
        .I3(\FSM_onehot_current_state_reg_n_0_[0] ),
        .O(\avm_writedata[12]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF080)) 
    \avm_writedata[13]_i_1 
       (.I0(avm_waitrequest),
        .I1(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I2(s_axi_wdata[13]),
        .I3(\FSM_onehot_current_state_reg_n_0_[0] ),
        .O(\avm_writedata[13]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF080)) 
    \avm_writedata[14]_i_1 
       (.I0(avm_waitrequest),
        .I1(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I2(s_axi_wdata[14]),
        .I3(\FSM_onehot_current_state_reg_n_0_[0] ),
        .O(\avm_writedata[14]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF080)) 
    \avm_writedata[15]_i_1 
       (.I0(avm_waitrequest),
        .I1(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I2(s_axi_wdata[15]),
        .I3(\FSM_onehot_current_state_reg_n_0_[0] ),
        .O(\avm_writedata[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF080)) 
    \avm_writedata[16]_i_1 
       (.I0(avm_waitrequest),
        .I1(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I2(s_axi_wdata[16]),
        .I3(\FSM_onehot_current_state_reg_n_0_[0] ),
        .O(\avm_writedata[16]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF080)) 
    \avm_writedata[17]_i_1 
       (.I0(avm_waitrequest),
        .I1(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I2(s_axi_wdata[17]),
        .I3(\FSM_onehot_current_state_reg_n_0_[0] ),
        .O(\avm_writedata[17]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF080)) 
    \avm_writedata[18]_i_1 
       (.I0(avm_waitrequest),
        .I1(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I2(s_axi_wdata[18]),
        .I3(\FSM_onehot_current_state_reg_n_0_[0] ),
        .O(\avm_writedata[18]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF080)) 
    \avm_writedata[19]_i_1 
       (.I0(avm_waitrequest),
        .I1(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I2(s_axi_wdata[19]),
        .I3(\FSM_onehot_current_state_reg_n_0_[0] ),
        .O(\avm_writedata[19]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF080)) 
    \avm_writedata[1]_i_1 
       (.I0(avm_waitrequest),
        .I1(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I2(s_axi_wdata[1]),
        .I3(\FSM_onehot_current_state_reg_n_0_[0] ),
        .O(\avm_writedata[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF080)) 
    \avm_writedata[20]_i_1 
       (.I0(avm_waitrequest),
        .I1(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I2(s_axi_wdata[20]),
        .I3(\FSM_onehot_current_state_reg_n_0_[0] ),
        .O(\avm_writedata[20]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF080)) 
    \avm_writedata[21]_i_1 
       (.I0(avm_waitrequest),
        .I1(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I2(s_axi_wdata[21]),
        .I3(\FSM_onehot_current_state_reg_n_0_[0] ),
        .O(\avm_writedata[21]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF080)) 
    \avm_writedata[22]_i_1 
       (.I0(avm_waitrequest),
        .I1(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I2(s_axi_wdata[22]),
        .I3(\FSM_onehot_current_state_reg_n_0_[0] ),
        .O(\avm_writedata[22]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF080)) 
    \avm_writedata[23]_i_1 
       (.I0(avm_waitrequest),
        .I1(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I2(s_axi_wdata[23]),
        .I3(\FSM_onehot_current_state_reg_n_0_[0] ),
        .O(\avm_writedata[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF080)) 
    \avm_writedata[24]_i_1 
       (.I0(avm_waitrequest),
        .I1(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I2(s_axi_wdata[24]),
        .I3(\FSM_onehot_current_state_reg_n_0_[0] ),
        .O(\avm_writedata[24]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF080)) 
    \avm_writedata[25]_i_1 
       (.I0(avm_waitrequest),
        .I1(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I2(s_axi_wdata[25]),
        .I3(\FSM_onehot_current_state_reg_n_0_[0] ),
        .O(\avm_writedata[25]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF080)) 
    \avm_writedata[26]_i_1 
       (.I0(avm_waitrequest),
        .I1(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I2(s_axi_wdata[26]),
        .I3(\FSM_onehot_current_state_reg_n_0_[0] ),
        .O(\avm_writedata[26]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF080)) 
    \avm_writedata[27]_i_1 
       (.I0(avm_waitrequest),
        .I1(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I2(s_axi_wdata[27]),
        .I3(\FSM_onehot_current_state_reg_n_0_[0] ),
        .O(\avm_writedata[27]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF080)) 
    \avm_writedata[28]_i_1 
       (.I0(avm_waitrequest),
        .I1(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I2(s_axi_wdata[28]),
        .I3(\FSM_onehot_current_state_reg_n_0_[0] ),
        .O(\avm_writedata[28]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF080)) 
    \avm_writedata[29]_i_1 
       (.I0(avm_waitrequest),
        .I1(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I2(s_axi_wdata[29]),
        .I3(\FSM_onehot_current_state_reg_n_0_[0] ),
        .O(\avm_writedata[29]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF080)) 
    \avm_writedata[2]_i_1 
       (.I0(avm_waitrequest),
        .I1(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I2(s_axi_wdata[2]),
        .I3(\FSM_onehot_current_state_reg_n_0_[0] ),
        .O(\avm_writedata[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF080)) 
    \avm_writedata[30]_i_1 
       (.I0(avm_waitrequest),
        .I1(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I2(s_axi_wdata[30]),
        .I3(\FSM_onehot_current_state_reg_n_0_[0] ),
        .O(\avm_writedata[30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h22F2F2F200000000)) 
    \avm_writedata[31]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I1(avm_write_i_2_n_0),
        .I2(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I3(current_state116_out),
        .I4(avm_waitrequest),
        .I5(s_axi_aresetn),
        .O(\avm_writedata[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF080)) 
    \avm_writedata[31]_i_2 
       (.I0(avm_waitrequest),
        .I1(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I2(s_axi_wdata[31]),
        .I3(\FSM_onehot_current_state_reg_n_0_[0] ),
        .O(\avm_writedata[31]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF080)) 
    \avm_writedata[3]_i_1 
       (.I0(avm_waitrequest),
        .I1(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I2(s_axi_wdata[3]),
        .I3(\FSM_onehot_current_state_reg_n_0_[0] ),
        .O(\avm_writedata[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF080)) 
    \avm_writedata[4]_i_1 
       (.I0(avm_waitrequest),
        .I1(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I2(s_axi_wdata[4]),
        .I3(\FSM_onehot_current_state_reg_n_0_[0] ),
        .O(\avm_writedata[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF080)) 
    \avm_writedata[5]_i_1 
       (.I0(avm_waitrequest),
        .I1(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I2(s_axi_wdata[5]),
        .I3(\FSM_onehot_current_state_reg_n_0_[0] ),
        .O(\avm_writedata[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF080)) 
    \avm_writedata[6]_i_1 
       (.I0(avm_waitrequest),
        .I1(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I2(s_axi_wdata[6]),
        .I3(\FSM_onehot_current_state_reg_n_0_[0] ),
        .O(\avm_writedata[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF080)) 
    \avm_writedata[7]_i_1 
       (.I0(avm_waitrequest),
        .I1(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I2(s_axi_wdata[7]),
        .I3(\FSM_onehot_current_state_reg_n_0_[0] ),
        .O(\avm_writedata[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF080)) 
    \avm_writedata[8]_i_1 
       (.I0(avm_waitrequest),
        .I1(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I2(s_axi_wdata[8]),
        .I3(\FSM_onehot_current_state_reg_n_0_[0] ),
        .O(\avm_writedata[8]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF080)) 
    \avm_writedata[9]_i_1 
       (.I0(avm_waitrequest),
        .I1(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I2(s_axi_wdata[9]),
        .I3(\FSM_onehot_current_state_reg_n_0_[0] ),
        .O(\avm_writedata[9]_i_1_n_0 ));
  FDRE \avm_writedata_reg[0] 
       (.C(s_axi_aclk),
        .CE(\avm_writedata[31]_i_1_n_0 ),
        .D(\avm_writedata[0]_i_1_n_0 ),
        .Q(avm_writedata[0]),
        .R(1'b0));
  FDRE \avm_writedata_reg[10] 
       (.C(s_axi_aclk),
        .CE(\avm_writedata[31]_i_1_n_0 ),
        .D(\avm_writedata[10]_i_1_n_0 ),
        .Q(avm_writedata[10]),
        .R(1'b0));
  FDRE \avm_writedata_reg[11] 
       (.C(s_axi_aclk),
        .CE(\avm_writedata[31]_i_1_n_0 ),
        .D(\avm_writedata[11]_i_1_n_0 ),
        .Q(avm_writedata[11]),
        .R(1'b0));
  FDRE \avm_writedata_reg[12] 
       (.C(s_axi_aclk),
        .CE(\avm_writedata[31]_i_1_n_0 ),
        .D(\avm_writedata[12]_i_1_n_0 ),
        .Q(avm_writedata[12]),
        .R(1'b0));
  FDRE \avm_writedata_reg[13] 
       (.C(s_axi_aclk),
        .CE(\avm_writedata[31]_i_1_n_0 ),
        .D(\avm_writedata[13]_i_1_n_0 ),
        .Q(avm_writedata[13]),
        .R(1'b0));
  FDRE \avm_writedata_reg[14] 
       (.C(s_axi_aclk),
        .CE(\avm_writedata[31]_i_1_n_0 ),
        .D(\avm_writedata[14]_i_1_n_0 ),
        .Q(avm_writedata[14]),
        .R(1'b0));
  FDRE \avm_writedata_reg[15] 
       (.C(s_axi_aclk),
        .CE(\avm_writedata[31]_i_1_n_0 ),
        .D(\avm_writedata[15]_i_1_n_0 ),
        .Q(avm_writedata[15]),
        .R(1'b0));
  FDRE \avm_writedata_reg[16] 
       (.C(s_axi_aclk),
        .CE(\avm_writedata[31]_i_1_n_0 ),
        .D(\avm_writedata[16]_i_1_n_0 ),
        .Q(avm_writedata[16]),
        .R(1'b0));
  FDRE \avm_writedata_reg[17] 
       (.C(s_axi_aclk),
        .CE(\avm_writedata[31]_i_1_n_0 ),
        .D(\avm_writedata[17]_i_1_n_0 ),
        .Q(avm_writedata[17]),
        .R(1'b0));
  FDRE \avm_writedata_reg[18] 
       (.C(s_axi_aclk),
        .CE(\avm_writedata[31]_i_1_n_0 ),
        .D(\avm_writedata[18]_i_1_n_0 ),
        .Q(avm_writedata[18]),
        .R(1'b0));
  FDRE \avm_writedata_reg[19] 
       (.C(s_axi_aclk),
        .CE(\avm_writedata[31]_i_1_n_0 ),
        .D(\avm_writedata[19]_i_1_n_0 ),
        .Q(avm_writedata[19]),
        .R(1'b0));
  FDRE \avm_writedata_reg[1] 
       (.C(s_axi_aclk),
        .CE(\avm_writedata[31]_i_1_n_0 ),
        .D(\avm_writedata[1]_i_1_n_0 ),
        .Q(avm_writedata[1]),
        .R(1'b0));
  FDRE \avm_writedata_reg[20] 
       (.C(s_axi_aclk),
        .CE(\avm_writedata[31]_i_1_n_0 ),
        .D(\avm_writedata[20]_i_1_n_0 ),
        .Q(avm_writedata[20]),
        .R(1'b0));
  FDRE \avm_writedata_reg[21] 
       (.C(s_axi_aclk),
        .CE(\avm_writedata[31]_i_1_n_0 ),
        .D(\avm_writedata[21]_i_1_n_0 ),
        .Q(avm_writedata[21]),
        .R(1'b0));
  FDRE \avm_writedata_reg[22] 
       (.C(s_axi_aclk),
        .CE(\avm_writedata[31]_i_1_n_0 ),
        .D(\avm_writedata[22]_i_1_n_0 ),
        .Q(avm_writedata[22]),
        .R(1'b0));
  FDRE \avm_writedata_reg[23] 
       (.C(s_axi_aclk),
        .CE(\avm_writedata[31]_i_1_n_0 ),
        .D(\avm_writedata[23]_i_1_n_0 ),
        .Q(avm_writedata[23]),
        .R(1'b0));
  FDRE \avm_writedata_reg[24] 
       (.C(s_axi_aclk),
        .CE(\avm_writedata[31]_i_1_n_0 ),
        .D(\avm_writedata[24]_i_1_n_0 ),
        .Q(avm_writedata[24]),
        .R(1'b0));
  FDRE \avm_writedata_reg[25] 
       (.C(s_axi_aclk),
        .CE(\avm_writedata[31]_i_1_n_0 ),
        .D(\avm_writedata[25]_i_1_n_0 ),
        .Q(avm_writedata[25]),
        .R(1'b0));
  FDRE \avm_writedata_reg[26] 
       (.C(s_axi_aclk),
        .CE(\avm_writedata[31]_i_1_n_0 ),
        .D(\avm_writedata[26]_i_1_n_0 ),
        .Q(avm_writedata[26]),
        .R(1'b0));
  FDRE \avm_writedata_reg[27] 
       (.C(s_axi_aclk),
        .CE(\avm_writedata[31]_i_1_n_0 ),
        .D(\avm_writedata[27]_i_1_n_0 ),
        .Q(avm_writedata[27]),
        .R(1'b0));
  FDRE \avm_writedata_reg[28] 
       (.C(s_axi_aclk),
        .CE(\avm_writedata[31]_i_1_n_0 ),
        .D(\avm_writedata[28]_i_1_n_0 ),
        .Q(avm_writedata[28]),
        .R(1'b0));
  FDRE \avm_writedata_reg[29] 
       (.C(s_axi_aclk),
        .CE(\avm_writedata[31]_i_1_n_0 ),
        .D(\avm_writedata[29]_i_1_n_0 ),
        .Q(avm_writedata[29]),
        .R(1'b0));
  FDRE \avm_writedata_reg[2] 
       (.C(s_axi_aclk),
        .CE(\avm_writedata[31]_i_1_n_0 ),
        .D(\avm_writedata[2]_i_1_n_0 ),
        .Q(avm_writedata[2]),
        .R(1'b0));
  FDRE \avm_writedata_reg[30] 
       (.C(s_axi_aclk),
        .CE(\avm_writedata[31]_i_1_n_0 ),
        .D(\avm_writedata[30]_i_1_n_0 ),
        .Q(avm_writedata[30]),
        .R(1'b0));
  FDRE \avm_writedata_reg[31] 
       (.C(s_axi_aclk),
        .CE(\avm_writedata[31]_i_1_n_0 ),
        .D(\avm_writedata[31]_i_2_n_0 ),
        .Q(avm_writedata[31]),
        .R(1'b0));
  FDRE \avm_writedata_reg[3] 
       (.C(s_axi_aclk),
        .CE(\avm_writedata[31]_i_1_n_0 ),
        .D(\avm_writedata[3]_i_1_n_0 ),
        .Q(avm_writedata[3]),
        .R(1'b0));
  FDRE \avm_writedata_reg[4] 
       (.C(s_axi_aclk),
        .CE(\avm_writedata[31]_i_1_n_0 ),
        .D(\avm_writedata[4]_i_1_n_0 ),
        .Q(avm_writedata[4]),
        .R(1'b0));
  FDRE \avm_writedata_reg[5] 
       (.C(s_axi_aclk),
        .CE(\avm_writedata[31]_i_1_n_0 ),
        .D(\avm_writedata[5]_i_1_n_0 ),
        .Q(avm_writedata[5]),
        .R(1'b0));
  FDRE \avm_writedata_reg[6] 
       (.C(s_axi_aclk),
        .CE(\avm_writedata[31]_i_1_n_0 ),
        .D(\avm_writedata[6]_i_1_n_0 ),
        .Q(avm_writedata[6]),
        .R(1'b0));
  FDRE \avm_writedata_reg[7] 
       (.C(s_axi_aclk),
        .CE(\avm_writedata[31]_i_1_n_0 ),
        .D(\avm_writedata[7]_i_1_n_0 ),
        .Q(avm_writedata[7]),
        .R(1'b0));
  FDRE \avm_writedata_reg[8] 
       (.C(s_axi_aclk),
        .CE(\avm_writedata[31]_i_1_n_0 ),
        .D(\avm_writedata[8]_i_1_n_0 ),
        .Q(avm_writedata[8]),
        .R(1'b0));
  FDRE \avm_writedata_reg[9] 
       (.C(s_axi_aclk),
        .CE(\avm_writedata[31]_i_1_n_0 ),
        .D(\avm_writedata[9]_i_1_n_0 ),
        .Q(avm_writedata[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h5555000355550000)) 
    s_axi_arready_i_1
       (.I0(s_axi_awready_i_3_n_0),
        .I1(\FSM_onehot_current_state_reg_n_0_[7] ),
        .I2(\FSM_onehot_current_state_reg_n_0_[6] ),
        .I3(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I4(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I5(s_axi_arready),
        .O(s_axi_arready_i_1_n_0));
  FDRE s_axi_arready_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_axi_arready_i_1_n_0),
        .Q(s_axi_arready),
        .R(s_axi_awready_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    s_axi_awready_i_1
       (.I0(s_axi_aresetn),
        .O(s_axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h5500550355005500)) 
    s_axi_awready_i_2
       (.I0(s_axi_awready_i_3_n_0),
        .I1(\FSM_onehot_current_state_reg_n_0_[3] ),
        .I2(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I3(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I4(\FSM_onehot_current_state_reg_n_0_[4] ),
        .I5(s_axi_awready),
        .O(s_axi_awready_i_2_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAAA8AAAAAA)) 
    s_axi_awready_i_3
       (.I0(avm_waitrequest),
        .I1(s_axi_awready_i_4_n_0),
        .I2(tout_counter_reg__0[4]),
        .I3(tout_counter_reg__0[8]),
        .I4(start_reg_n_0),
        .I5(tout_counter_reg__0[5]),
        .O(s_axi_awready_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    s_axi_awready_i_4
       (.I0(tout_counter_reg__0[0]),
        .I1(tout_counter_reg__0[1]),
        .I2(tout_counter_reg__0[2]),
        .I3(tout_counter_reg__0[7]),
        .I4(tout_counter_reg__0[3]),
        .I5(tout_counter_reg__0[6]),
        .O(s_axi_awready_i_4_n_0));
  FDRE s_axi_awready_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_axi_awready_i_2_n_0),
        .Q(s_axi_awready),
        .R(s_axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000F7000000F400)) 
    \s_axi_bresp[1]_i_1 
       (.I0(\s_axi_bresp[1]_i_2_n_0 ),
        .I1(\FSM_onehot_current_state_reg_n_0_[3] ),
        .I2(p_1_in),
        .I3(s_axi_aresetn),
        .I4(done_write),
        .I5(s_axi_bresp),
        .O(\s_axi_bresp[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h8F)) 
    \s_axi_bresp[1]_i_2 
       (.I0(s_axi_rready),
        .I1(s_axi_rvalid),
        .I2(avm_readdata_i),
        .O(\s_axi_bresp[1]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_bresp[1]_i_3 
       (.I0(s_axi_bvalid),
        .I1(s_axi_bready),
        .O(done_write));
  FDRE \s_axi_bresp_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\s_axi_bresp[1]_i_1_n_0 ),
        .Q(s_axi_bresp),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h7774)) 
    s_axi_bvalid_i_1
       (.I0(s_axi_bready),
        .I1(s_axi_bvalid),
        .I2(\FSM_onehot_current_state_reg_n_0_[3] ),
        .I3(p_1_in),
        .O(s_axi_bvalid_i_1_n_0));
  FDRE s_axi_bvalid_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_axi_bvalid_i_1_n_0),
        .Q(s_axi_bvalid),
        .R(s_axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h80AAAAAA80808080)) 
    \s_axi_rdata[0]_i_1 
       (.I0(avm_readdata[0]),
        .I1(\FSM_onehot_current_state_reg_n_0_[6] ),
        .I2(avm_readdatavalid),
        .I3(s_axi_rready),
        .I4(s_axi_rvalid),
        .I5(avm_readdata_i),
        .O(\s_axi_rdata[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h80AAAAAA80808080)) 
    \s_axi_rdata[10]_i_1 
       (.I0(avm_readdata[10]),
        .I1(\FSM_onehot_current_state_reg_n_0_[6] ),
        .I2(avm_readdatavalid),
        .I3(s_axi_rready),
        .I4(s_axi_rvalid),
        .I5(avm_readdata_i),
        .O(\s_axi_rdata[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h80AAAAAA80808080)) 
    \s_axi_rdata[11]_i_1 
       (.I0(avm_readdata[11]),
        .I1(\FSM_onehot_current_state_reg_n_0_[6] ),
        .I2(avm_readdatavalid),
        .I3(s_axi_rready),
        .I4(s_axi_rvalid),
        .I5(avm_readdata_i),
        .O(\s_axi_rdata[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h80AAAAAA80808080)) 
    \s_axi_rdata[12]_i_1 
       (.I0(avm_readdata[12]),
        .I1(\FSM_onehot_current_state_reg_n_0_[6] ),
        .I2(avm_readdatavalid),
        .I3(s_axi_rready),
        .I4(s_axi_rvalid),
        .I5(avm_readdata_i),
        .O(\s_axi_rdata[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h80AAAAAA80808080)) 
    \s_axi_rdata[13]_i_1 
       (.I0(avm_readdata[13]),
        .I1(\FSM_onehot_current_state_reg_n_0_[6] ),
        .I2(avm_readdatavalid),
        .I3(s_axi_rready),
        .I4(s_axi_rvalid),
        .I5(avm_readdata_i),
        .O(\s_axi_rdata[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h80AAAAAA80808080)) 
    \s_axi_rdata[14]_i_1 
       (.I0(avm_readdata[14]),
        .I1(\FSM_onehot_current_state_reg_n_0_[6] ),
        .I2(avm_readdatavalid),
        .I3(s_axi_rready),
        .I4(s_axi_rvalid),
        .I5(avm_readdata_i),
        .O(\s_axi_rdata[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h80AAAAAA80808080)) 
    \s_axi_rdata[15]_i_1 
       (.I0(avm_readdata[15]),
        .I1(\FSM_onehot_current_state_reg_n_0_[6] ),
        .I2(avm_readdatavalid),
        .I3(s_axi_rready),
        .I4(s_axi_rvalid),
        .I5(avm_readdata_i),
        .O(\s_axi_rdata[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h80AAAAAA80808080)) 
    \s_axi_rdata[16]_i_1 
       (.I0(avm_readdata[16]),
        .I1(\FSM_onehot_current_state_reg_n_0_[6] ),
        .I2(avm_readdatavalid),
        .I3(s_axi_rready),
        .I4(s_axi_rvalid),
        .I5(avm_readdata_i),
        .O(\s_axi_rdata[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h80AAAAAA80808080)) 
    \s_axi_rdata[17]_i_1 
       (.I0(avm_readdata[17]),
        .I1(\FSM_onehot_current_state_reg_n_0_[6] ),
        .I2(avm_readdatavalid),
        .I3(s_axi_rready),
        .I4(s_axi_rvalid),
        .I5(avm_readdata_i),
        .O(\s_axi_rdata[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h80AAAAAA80808080)) 
    \s_axi_rdata[18]_i_1 
       (.I0(avm_readdata[18]),
        .I1(\FSM_onehot_current_state_reg_n_0_[6] ),
        .I2(avm_readdatavalid),
        .I3(s_axi_rready),
        .I4(s_axi_rvalid),
        .I5(avm_readdata_i),
        .O(\s_axi_rdata[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h80AAAAAA80808080)) 
    \s_axi_rdata[19]_i_1 
       (.I0(avm_readdata[19]),
        .I1(\FSM_onehot_current_state_reg_n_0_[6] ),
        .I2(avm_readdatavalid),
        .I3(s_axi_rready),
        .I4(s_axi_rvalid),
        .I5(avm_readdata_i),
        .O(\s_axi_rdata[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h80AAAAAA80808080)) 
    \s_axi_rdata[1]_i_1 
       (.I0(avm_readdata[1]),
        .I1(\FSM_onehot_current_state_reg_n_0_[6] ),
        .I2(avm_readdatavalid),
        .I3(s_axi_rready),
        .I4(s_axi_rvalid),
        .I5(avm_readdata_i),
        .O(\s_axi_rdata[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h80AAAAAA80808080)) 
    \s_axi_rdata[20]_i_1 
       (.I0(avm_readdata[20]),
        .I1(\FSM_onehot_current_state_reg_n_0_[6] ),
        .I2(avm_readdatavalid),
        .I3(s_axi_rready),
        .I4(s_axi_rvalid),
        .I5(avm_readdata_i),
        .O(\s_axi_rdata[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h80AAAAAA80808080)) 
    \s_axi_rdata[21]_i_1 
       (.I0(avm_readdata[21]),
        .I1(\FSM_onehot_current_state_reg_n_0_[6] ),
        .I2(avm_readdatavalid),
        .I3(s_axi_rready),
        .I4(s_axi_rvalid),
        .I5(avm_readdata_i),
        .O(\s_axi_rdata[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h80AAAAAA80808080)) 
    \s_axi_rdata[22]_i_1 
       (.I0(avm_readdata[22]),
        .I1(\FSM_onehot_current_state_reg_n_0_[6] ),
        .I2(avm_readdatavalid),
        .I3(s_axi_rready),
        .I4(s_axi_rvalid),
        .I5(avm_readdata_i),
        .O(\s_axi_rdata[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h80AAAAAA80808080)) 
    \s_axi_rdata[23]_i_1 
       (.I0(avm_readdata[23]),
        .I1(\FSM_onehot_current_state_reg_n_0_[6] ),
        .I2(avm_readdatavalid),
        .I3(s_axi_rready),
        .I4(s_axi_rvalid),
        .I5(avm_readdata_i),
        .O(\s_axi_rdata[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h80AAAAAA80808080)) 
    \s_axi_rdata[24]_i_1 
       (.I0(avm_readdata[24]),
        .I1(\FSM_onehot_current_state_reg_n_0_[6] ),
        .I2(avm_readdatavalid),
        .I3(s_axi_rready),
        .I4(s_axi_rvalid),
        .I5(avm_readdata_i),
        .O(\s_axi_rdata[24]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h80AAAAAA80808080)) 
    \s_axi_rdata[25]_i_1 
       (.I0(avm_readdata[25]),
        .I1(\FSM_onehot_current_state_reg_n_0_[6] ),
        .I2(avm_readdatavalid),
        .I3(s_axi_rready),
        .I4(s_axi_rvalid),
        .I5(avm_readdata_i),
        .O(\s_axi_rdata[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h80AAAAAA80808080)) 
    \s_axi_rdata[26]_i_1 
       (.I0(avm_readdata[26]),
        .I1(\FSM_onehot_current_state_reg_n_0_[6] ),
        .I2(avm_readdatavalid),
        .I3(s_axi_rready),
        .I4(s_axi_rvalid),
        .I5(avm_readdata_i),
        .O(\s_axi_rdata[26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h80AAAAAA80808080)) 
    \s_axi_rdata[27]_i_1 
       (.I0(avm_readdata[27]),
        .I1(\FSM_onehot_current_state_reg_n_0_[6] ),
        .I2(avm_readdatavalid),
        .I3(s_axi_rready),
        .I4(s_axi_rvalid),
        .I5(avm_readdata_i),
        .O(\s_axi_rdata[27]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h80AAAAAA80808080)) 
    \s_axi_rdata[28]_i_1 
       (.I0(avm_readdata[28]),
        .I1(\FSM_onehot_current_state_reg_n_0_[6] ),
        .I2(avm_readdatavalid),
        .I3(s_axi_rready),
        .I4(s_axi_rvalid),
        .I5(avm_readdata_i),
        .O(\s_axi_rdata[28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h80AAAAAA80808080)) 
    \s_axi_rdata[29]_i_1 
       (.I0(avm_readdata[29]),
        .I1(\FSM_onehot_current_state_reg_n_0_[6] ),
        .I2(avm_readdatavalid),
        .I3(s_axi_rready),
        .I4(s_axi_rvalid),
        .I5(avm_readdata_i),
        .O(\s_axi_rdata[29]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h80AAAAAA80808080)) 
    \s_axi_rdata[2]_i_1 
       (.I0(avm_readdata[2]),
        .I1(\FSM_onehot_current_state_reg_n_0_[6] ),
        .I2(avm_readdatavalid),
        .I3(s_axi_rready),
        .I4(s_axi_rvalid),
        .I5(avm_readdata_i),
        .O(\s_axi_rdata[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h80AAAAAA80808080)) 
    \s_axi_rdata[30]_i_1 
       (.I0(avm_readdata[30]),
        .I1(\FSM_onehot_current_state_reg_n_0_[6] ),
        .I2(avm_readdatavalid),
        .I3(s_axi_rready),
        .I4(s_axi_rvalid),
        .I5(avm_readdata_i),
        .O(\s_axi_rdata[30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF7770000FFFFFFFF)) 
    \s_axi_rdata[31]_i_1 
       (.I0(s_axi_rvalid),
        .I1(s_axi_rready),
        .I2(avm_readdatavalid),
        .I3(\FSM_onehot_current_state_reg_n_0_[6] ),
        .I4(avm_readdata_i),
        .I5(s_axi_aresetn),
        .O(\s_axi_rdata[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFF8F8F8)) 
    \s_axi_rdata[31]_i_2 
       (.I0(s_axi_rready),
        .I1(s_axi_rvalid),
        .I2(avm_readdata_i),
        .I3(\FSM_onehot_current_state_reg_n_0_[6] ),
        .I4(avm_readdatavalid),
        .O(\s_axi_rdata[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h80AAAAAA80808080)) 
    \s_axi_rdata[31]_i_3 
       (.I0(avm_readdata[31]),
        .I1(\FSM_onehot_current_state_reg_n_0_[6] ),
        .I2(avm_readdatavalid),
        .I3(s_axi_rready),
        .I4(s_axi_rvalid),
        .I5(avm_readdata_i),
        .O(\s_axi_rdata[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h80AAAAAA80808080)) 
    \s_axi_rdata[3]_i_1 
       (.I0(avm_readdata[3]),
        .I1(\FSM_onehot_current_state_reg_n_0_[6] ),
        .I2(avm_readdatavalid),
        .I3(s_axi_rready),
        .I4(s_axi_rvalid),
        .I5(avm_readdata_i),
        .O(\s_axi_rdata[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h80AAAAAA80808080)) 
    \s_axi_rdata[4]_i_1 
       (.I0(avm_readdata[4]),
        .I1(\FSM_onehot_current_state_reg_n_0_[6] ),
        .I2(avm_readdatavalid),
        .I3(s_axi_rready),
        .I4(s_axi_rvalid),
        .I5(avm_readdata_i),
        .O(\s_axi_rdata[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h80AAAAAA80808080)) 
    \s_axi_rdata[5]_i_1 
       (.I0(avm_readdata[5]),
        .I1(\FSM_onehot_current_state_reg_n_0_[6] ),
        .I2(avm_readdatavalid),
        .I3(s_axi_rready),
        .I4(s_axi_rvalid),
        .I5(avm_readdata_i),
        .O(\s_axi_rdata[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h80AAAAAA80808080)) 
    \s_axi_rdata[6]_i_1 
       (.I0(avm_readdata[6]),
        .I1(\FSM_onehot_current_state_reg_n_0_[6] ),
        .I2(avm_readdatavalid),
        .I3(s_axi_rready),
        .I4(s_axi_rvalid),
        .I5(avm_readdata_i),
        .O(\s_axi_rdata[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h80AAAAAA80808080)) 
    \s_axi_rdata[7]_i_1 
       (.I0(avm_readdata[7]),
        .I1(\FSM_onehot_current_state_reg_n_0_[6] ),
        .I2(avm_readdatavalid),
        .I3(s_axi_rready),
        .I4(s_axi_rvalid),
        .I5(avm_readdata_i),
        .O(\s_axi_rdata[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h80AAAAAA80808080)) 
    \s_axi_rdata[8]_i_1 
       (.I0(avm_readdata[8]),
        .I1(\FSM_onehot_current_state_reg_n_0_[6] ),
        .I2(avm_readdatavalid),
        .I3(s_axi_rready),
        .I4(s_axi_rvalid),
        .I5(avm_readdata_i),
        .O(\s_axi_rdata[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h80AAAAAA80808080)) 
    \s_axi_rdata[9]_i_1 
       (.I0(avm_readdata[9]),
        .I1(\FSM_onehot_current_state_reg_n_0_[6] ),
        .I2(avm_readdatavalid),
        .I3(s_axi_rready),
        .I4(s_axi_rvalid),
        .I5(avm_readdata_i),
        .O(\s_axi_rdata[9]_i_1_n_0 ));
  FDRE \s_axi_rdata_reg[0] 
       (.C(s_axi_aclk),
        .CE(\s_axi_rdata[31]_i_2_n_0 ),
        .D(\s_axi_rdata[0]_i_1_n_0 ),
        .Q(s_axi_rdata[0]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  FDRE \s_axi_rdata_reg[10] 
       (.C(s_axi_aclk),
        .CE(\s_axi_rdata[31]_i_2_n_0 ),
        .D(\s_axi_rdata[10]_i_1_n_0 ),
        .Q(s_axi_rdata[10]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  FDRE \s_axi_rdata_reg[11] 
       (.C(s_axi_aclk),
        .CE(\s_axi_rdata[31]_i_2_n_0 ),
        .D(\s_axi_rdata[11]_i_1_n_0 ),
        .Q(s_axi_rdata[11]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  FDRE \s_axi_rdata_reg[12] 
       (.C(s_axi_aclk),
        .CE(\s_axi_rdata[31]_i_2_n_0 ),
        .D(\s_axi_rdata[12]_i_1_n_0 ),
        .Q(s_axi_rdata[12]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  FDRE \s_axi_rdata_reg[13] 
       (.C(s_axi_aclk),
        .CE(\s_axi_rdata[31]_i_2_n_0 ),
        .D(\s_axi_rdata[13]_i_1_n_0 ),
        .Q(s_axi_rdata[13]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  FDRE \s_axi_rdata_reg[14] 
       (.C(s_axi_aclk),
        .CE(\s_axi_rdata[31]_i_2_n_0 ),
        .D(\s_axi_rdata[14]_i_1_n_0 ),
        .Q(s_axi_rdata[14]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  FDRE \s_axi_rdata_reg[15] 
       (.C(s_axi_aclk),
        .CE(\s_axi_rdata[31]_i_2_n_0 ),
        .D(\s_axi_rdata[15]_i_1_n_0 ),
        .Q(s_axi_rdata[15]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  FDRE \s_axi_rdata_reg[16] 
       (.C(s_axi_aclk),
        .CE(\s_axi_rdata[31]_i_2_n_0 ),
        .D(\s_axi_rdata[16]_i_1_n_0 ),
        .Q(s_axi_rdata[16]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  FDRE \s_axi_rdata_reg[17] 
       (.C(s_axi_aclk),
        .CE(\s_axi_rdata[31]_i_2_n_0 ),
        .D(\s_axi_rdata[17]_i_1_n_0 ),
        .Q(s_axi_rdata[17]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  FDRE \s_axi_rdata_reg[18] 
       (.C(s_axi_aclk),
        .CE(\s_axi_rdata[31]_i_2_n_0 ),
        .D(\s_axi_rdata[18]_i_1_n_0 ),
        .Q(s_axi_rdata[18]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  FDRE \s_axi_rdata_reg[19] 
       (.C(s_axi_aclk),
        .CE(\s_axi_rdata[31]_i_2_n_0 ),
        .D(\s_axi_rdata[19]_i_1_n_0 ),
        .Q(s_axi_rdata[19]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  FDRE \s_axi_rdata_reg[1] 
       (.C(s_axi_aclk),
        .CE(\s_axi_rdata[31]_i_2_n_0 ),
        .D(\s_axi_rdata[1]_i_1_n_0 ),
        .Q(s_axi_rdata[1]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  FDRE \s_axi_rdata_reg[20] 
       (.C(s_axi_aclk),
        .CE(\s_axi_rdata[31]_i_2_n_0 ),
        .D(\s_axi_rdata[20]_i_1_n_0 ),
        .Q(s_axi_rdata[20]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  FDRE \s_axi_rdata_reg[21] 
       (.C(s_axi_aclk),
        .CE(\s_axi_rdata[31]_i_2_n_0 ),
        .D(\s_axi_rdata[21]_i_1_n_0 ),
        .Q(s_axi_rdata[21]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  FDRE \s_axi_rdata_reg[22] 
       (.C(s_axi_aclk),
        .CE(\s_axi_rdata[31]_i_2_n_0 ),
        .D(\s_axi_rdata[22]_i_1_n_0 ),
        .Q(s_axi_rdata[22]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  FDRE \s_axi_rdata_reg[23] 
       (.C(s_axi_aclk),
        .CE(\s_axi_rdata[31]_i_2_n_0 ),
        .D(\s_axi_rdata[23]_i_1_n_0 ),
        .Q(s_axi_rdata[23]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  FDRE \s_axi_rdata_reg[24] 
       (.C(s_axi_aclk),
        .CE(\s_axi_rdata[31]_i_2_n_0 ),
        .D(\s_axi_rdata[24]_i_1_n_0 ),
        .Q(s_axi_rdata[24]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  FDRE \s_axi_rdata_reg[25] 
       (.C(s_axi_aclk),
        .CE(\s_axi_rdata[31]_i_2_n_0 ),
        .D(\s_axi_rdata[25]_i_1_n_0 ),
        .Q(s_axi_rdata[25]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  FDRE \s_axi_rdata_reg[26] 
       (.C(s_axi_aclk),
        .CE(\s_axi_rdata[31]_i_2_n_0 ),
        .D(\s_axi_rdata[26]_i_1_n_0 ),
        .Q(s_axi_rdata[26]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  FDRE \s_axi_rdata_reg[27] 
       (.C(s_axi_aclk),
        .CE(\s_axi_rdata[31]_i_2_n_0 ),
        .D(\s_axi_rdata[27]_i_1_n_0 ),
        .Q(s_axi_rdata[27]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  FDRE \s_axi_rdata_reg[28] 
       (.C(s_axi_aclk),
        .CE(\s_axi_rdata[31]_i_2_n_0 ),
        .D(\s_axi_rdata[28]_i_1_n_0 ),
        .Q(s_axi_rdata[28]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  FDRE \s_axi_rdata_reg[29] 
       (.C(s_axi_aclk),
        .CE(\s_axi_rdata[31]_i_2_n_0 ),
        .D(\s_axi_rdata[29]_i_1_n_0 ),
        .Q(s_axi_rdata[29]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  FDRE \s_axi_rdata_reg[2] 
       (.C(s_axi_aclk),
        .CE(\s_axi_rdata[31]_i_2_n_0 ),
        .D(\s_axi_rdata[2]_i_1_n_0 ),
        .Q(s_axi_rdata[2]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  FDRE \s_axi_rdata_reg[30] 
       (.C(s_axi_aclk),
        .CE(\s_axi_rdata[31]_i_2_n_0 ),
        .D(\s_axi_rdata[30]_i_1_n_0 ),
        .Q(s_axi_rdata[30]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  FDRE \s_axi_rdata_reg[31] 
       (.C(s_axi_aclk),
        .CE(\s_axi_rdata[31]_i_2_n_0 ),
        .D(\s_axi_rdata[31]_i_3_n_0 ),
        .Q(s_axi_rdata[31]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  FDRE \s_axi_rdata_reg[3] 
       (.C(s_axi_aclk),
        .CE(\s_axi_rdata[31]_i_2_n_0 ),
        .D(\s_axi_rdata[3]_i_1_n_0 ),
        .Q(s_axi_rdata[3]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  FDRE \s_axi_rdata_reg[4] 
       (.C(s_axi_aclk),
        .CE(\s_axi_rdata[31]_i_2_n_0 ),
        .D(\s_axi_rdata[4]_i_1_n_0 ),
        .Q(s_axi_rdata[4]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  FDRE \s_axi_rdata_reg[5] 
       (.C(s_axi_aclk),
        .CE(\s_axi_rdata[31]_i_2_n_0 ),
        .D(\s_axi_rdata[5]_i_1_n_0 ),
        .Q(s_axi_rdata[5]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  FDRE \s_axi_rdata_reg[6] 
       (.C(s_axi_aclk),
        .CE(\s_axi_rdata[31]_i_2_n_0 ),
        .D(\s_axi_rdata[6]_i_1_n_0 ),
        .Q(s_axi_rdata[6]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  FDRE \s_axi_rdata_reg[7] 
       (.C(s_axi_aclk),
        .CE(\s_axi_rdata[31]_i_2_n_0 ),
        .D(\s_axi_rdata[7]_i_1_n_0 ),
        .Q(s_axi_rdata[7]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  FDRE \s_axi_rdata_reg[8] 
       (.C(s_axi_aclk),
        .CE(\s_axi_rdata[31]_i_2_n_0 ),
        .D(\s_axi_rdata[8]_i_1_n_0 ),
        .Q(s_axi_rdata[8]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  FDRE \s_axi_rdata_reg[9] 
       (.C(s_axi_aclk),
        .CE(\s_axi_rdata[31]_i_2_n_0 ),
        .D(\s_axi_rdata[9]_i_1_n_0 ),
        .Q(s_axi_rdata[9]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h44F7444444F44444)) 
    \s_axi_rresp[1]_i_1 
       (.I0(\s_axi_rresp[1]_i_2_n_0 ),
        .I1(avm_readdatavalid_i0),
        .I2(avm_readdata_i),
        .I3(done_read),
        .I4(s_axi_aresetn),
        .I5(s_axi_rresp),
        .O(\s_axi_rresp[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hD5FF)) 
    \s_axi_rresp[1]_i_2 
       (.I0(s_axi_aresetn),
        .I1(s_axi_bvalid),
        .I2(s_axi_bready),
        .I3(p_1_in),
        .O(\s_axi_rresp[1]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_rresp[1]_i_3 
       (.I0(\FSM_onehot_current_state_reg_n_0_[6] ),
        .I1(avm_readdatavalid),
        .O(avm_readdatavalid_i0));
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_rresp[1]_i_4 
       (.I0(s_axi_rvalid),
        .I1(s_axi_rready),
        .O(done_read));
  FDRE \s_axi_rresp_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\s_axi_rresp[1]_i_1_n_0 ),
        .Q(s_axi_rresp),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFF747474)) 
    s_axi_rvalid_i_1
       (.I0(s_axi_rready),
        .I1(s_axi_rvalid),
        .I2(avm_readdata_i),
        .I3(\FSM_onehot_current_state_reg_n_0_[6] ),
        .I4(avm_readdatavalid),
        .O(s_axi_rvalid_i_1_n_0));
  FDRE s_axi_rvalid_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_axi_rvalid_i_1_n_0),
        .Q(s_axi_rvalid),
        .R(s_axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h5500550355005500)) 
    s_axi_wready_i_1
       (.I0(s_axi_awready_i_3_n_0),
        .I1(\FSM_onehot_current_state_reg_n_0_[3] ),
        .I2(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I3(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I4(\FSM_onehot_current_state_reg_n_0_[4] ),
        .I5(s_axi_wready),
        .O(s_axi_wready_i_1_n_0));
  FDRE s_axi_wready_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_axi_wready_i_1_n_0),
        .Q(s_axi_wready),
        .R(s_axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'hFEFCFFFFFEFC0000)) 
    start_i_1
       (.I0(s_axi_awready_i_3_n_0),
        .I1(start_i_2_n_0),
        .I2(start_i_3_n_0),
        .I3(start_i_4_n_0),
        .I4(start),
        .I5(start_reg_n_0),
        .O(start_i_1_n_0));
  LUT3 #(
    .INIT(8'h70)) 
    start_i_2
       (.I0(s_axi_bvalid),
        .I1(s_axi_bready),
        .I2(\FSM_onehot_current_state_reg_n_0_[3] ),
        .O(start_i_2_n_0));
  LUT6 #(
    .INIT(64'h00FBFFFB00000000)) 
    start_i_3
       (.I0(s_axi_awready_i_4_n_0),
        .I1(\FSM_onehot_current_state[5]_i_5_n_0 ),
        .I2(start_i_6_n_0),
        .I3(s_axi_rvalid),
        .I4(s_axi_rready),
        .I5(\FSM_onehot_current_state_reg_n_0_[6] ),
        .O(start_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    start_i_4
       (.I0(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I1(\FSM_onehot_current_state_reg_n_0_[2] ),
        .O(start_i_4_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEAAA)) 
    start_i_5
       (.I0(\FSM_onehot_current_state_reg_n_0_[6] ),
        .I1(avm_readdata_i),
        .I2(s_axi_rready),
        .I3(s_axi_rvalid),
        .I4(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I5(\FSM_onehot_current_state[6]_i_2_n_0 ),
        .O(start));
  LUT3 #(
    .INIT(8'hF8)) 
    start_i_6
       (.I0(avm_readdatavalid),
        .I1(\FSM_onehot_current_state_reg_n_0_[6] ),
        .I2(avm_readdata_i),
        .O(start_i_6_n_0));
  FDRE start_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(start_i_1_n_0),
        .Q(start_reg_n_0),
        .R(s_axi_awready_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \tout_counter[0]_i_1 
       (.I0(tout_counter_reg__0[0]),
        .O(p_0_in[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \tout_counter[1]_i_1 
       (.I0(tout_counter_reg__0[1]),
        .I1(tout_counter_reg__0[0]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \tout_counter[2]_i_1 
       (.I0(tout_counter_reg__0[2]),
        .I1(tout_counter_reg__0[1]),
        .I2(tout_counter_reg__0[0]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \tout_counter[3]_i_1 
       (.I0(tout_counter_reg__0[0]),
        .I1(tout_counter_reg__0[1]),
        .I2(tout_counter_reg__0[2]),
        .I3(tout_counter_reg__0[3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \tout_counter[4]_i_1 
       (.I0(tout_counter_reg__0[4]),
        .I1(tout_counter_reg__0[0]),
        .I2(tout_counter_reg__0[1]),
        .I3(tout_counter_reg__0[2]),
        .I4(tout_counter_reg__0[3]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \tout_counter[5]_i_1 
       (.I0(tout_counter_reg__0[5]),
        .I1(tout_counter_reg__0[3]),
        .I2(tout_counter_reg__0[2]),
        .I3(tout_counter_reg__0[1]),
        .I4(tout_counter_reg__0[0]),
        .I5(tout_counter_reg__0[4]),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \tout_counter[6]_i_1 
       (.I0(tout_counter_reg__0[6]),
        .I1(tout_counter_reg__0[4]),
        .I2(\tout_counter[8]_i_3_n_0 ),
        .I3(tout_counter_reg__0[5]),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \tout_counter[7]_i_1 
       (.I0(tout_counter_reg__0[7]),
        .I1(tout_counter_reg__0[5]),
        .I2(\tout_counter[8]_i_3_n_0 ),
        .I3(tout_counter_reg__0[4]),
        .I4(tout_counter_reg__0[6]),
        .O(p_0_in[7]));
  LUT1 #(
    .INIT(2'h1)) 
    \tout_counter[8]_i_1 
       (.I0(start_reg_n_0),
        .O(clear));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \tout_counter[8]_i_2 
       (.I0(tout_counter_reg__0[8]),
        .I1(tout_counter_reg__0[6]),
        .I2(tout_counter_reg__0[4]),
        .I3(\tout_counter[8]_i_3_n_0 ),
        .I4(tout_counter_reg__0[5]),
        .I5(tout_counter_reg__0[7]),
        .O(p_0_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \tout_counter[8]_i_3 
       (.I0(tout_counter_reg__0[3]),
        .I1(tout_counter_reg__0[2]),
        .I2(tout_counter_reg__0[1]),
        .I3(tout_counter_reg__0[0]),
        .O(\tout_counter[8]_i_3_n_0 ));
  FDSE \tout_counter_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_0_in[0]),
        .Q(tout_counter_reg__0[0]),
        .S(clear));
  FDRE \tout_counter_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_0_in[1]),
        .Q(tout_counter_reg__0[1]),
        .R(clear));
  FDRE \tout_counter_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_0_in[2]),
        .Q(tout_counter_reg__0[2]),
        .R(clear));
  FDRE \tout_counter_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_0_in[3]),
        .Q(tout_counter_reg__0[3]),
        .R(clear));
  FDRE \tout_counter_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_0_in[4]),
        .Q(tout_counter_reg__0[4]),
        .R(clear));
  FDRE \tout_counter_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_0_in[5]),
        .Q(tout_counter_reg__0[5]),
        .R(clear));
  FDRE \tout_counter_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_0_in[6]),
        .Q(tout_counter_reg__0[6]),
        .R(clear));
  FDRE \tout_counter_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_0_in[7]),
        .Q(tout_counter_reg__0[7]),
        .R(clear));
  FDRE \tout_counter_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_0_in[8]),
        .Q(tout_counter_reg__0[8]),
        .R(clear));
endmodule

(* All_zero = "1'b0" *) (* C_ADDRESS_MODE = "0" *) (* C_AVM_BURST_WIDTH = "1" *) 
(* C_AXI_LOCK_WIDTH = "1" *) (* C_BASE1_ADDR = "64'b0000000000000000000000000000000000000000000000000000000000000000" *) (* C_BASE2_ADDR = "64'b0000000000000000000000000000000000000000000000000000000000000000" *) 
(* C_BASE3_ADDR = "64'b0000000000000000000000000000000000000000000000000000000000000000" *) (* C_BASE4_ADDR = "64'b0000000000000000000000000000000000000000000000000000000000000000" *) (* C_BURST_LENGTH = "4" *) 
(* C_DPHASE_TIMEOUT = "256" *) (* C_FAMILY = "artix7" *) (* C_FIXED_READ_WAIT = "1" *) 
(* C_FIXED_WRITE_WAIT = "1" *) (* C_HAS_FIXED_READ_LATENCY = "0" *) (* C_HAS_FIXED_WAIT = "0" *) 
(* C_HAS_RESPONSE = "0" *) (* C_HIGH1_ADDR = "64'b0000000000000000000000000000000000001111111111111111111111111111" *) (* C_HIGH2_ADDR = "64'b1111111111111111111111111111111111111111111111111111111111111111" *) 
(* C_HIGH3_ADDR = "64'b1111111111111111111111111111111111111111111111111111111111111111" *) (* C_HIGH4_ADDR = "64'b1111111111111111111111111111111111111111111111111111111111111111" *) (* C_NUM_ADDRESS_RANGES = "0" *) 
(* C_NUM_OUTSTANDING = "2" *) (* C_PROTOCOL = "0" *) (* C_READ_LATENCY = "1" *) 
(* C_S_AXI_ADDR_WIDTH = "24" *) (* C_S_AXI_DATA_WIDTH = "32" *) (* C_S_AXI_ID_WIDTH = "4" *) 
(* C_USE_WSTRB = "0" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_amm_bridge_v1_0_1_top
   (s_axi_aclk,
    s_axi_aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    avm_address,
    avm_write,
    avm_read,
    avm_byteenable,
    avm_writedata,
    avm_readdata,
    avm_resp,
    avm_readdatavalid,
    avm_burstcount,
    avm_beginbursttransfer,
    avm_writeresponsevalid,
    avm_waitrequest);
  input s_axi_aclk;
  input s_axi_aresetn;
  input [3:0]s_axi_awid;
  input [23:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [3:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [3:0]s_axi_arid;
  input [23:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input s_axi_arvalid;
  output s_axi_arready;
  output [3:0]s_axi_rid;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  output [23:0]avm_address;
  output avm_write;
  output avm_read;
  output [3:0]avm_byteenable;
  output [31:0]avm_writedata;
  input [31:0]avm_readdata;
  input [1:0]avm_resp;
  input avm_readdatavalid;
  output [0:0]avm_burstcount;
  output avm_beginbursttransfer;
  input avm_writeresponsevalid;
  input avm_waitrequest;

  wire \<const0> ;
  wire \<const1> ;
  wire [23:0]avm_address;
  wire avm_beginbursttransfer;
  wire [3:0]avm_byteenable;
  wire avm_read;
  wire [31:0]avm_readdata;
  wire avm_readdatavalid;
  wire avm_waitrequest;
  wire avm_write;
  wire [31:0]avm_writedata;
  wire s_axi_aclk;
  wire [23:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [23:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [1:1]\^s_axi_bresp ;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire [1:1]\^s_axi_rresp ;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;

  assign avm_burstcount[0] = \<const1> ;
  assign s_axi_bid[3] = \<const0> ;
  assign s_axi_bid[2] = \<const0> ;
  assign s_axi_bid[1] = \<const0> ;
  assign s_axi_bid[0] = \<const0> ;
  assign s_axi_bresp[1] = \^s_axi_bresp [1];
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_rid[3] = \<const0> ;
  assign s_axi_rid[2] = \<const0> ;
  assign s_axi_rid[1] = \<const0> ;
  assign s_axi_rid[0] = \<const0> ;
  assign s_axi_rlast = \<const0> ;
  assign s_axi_rresp[1] = \^s_axi_rresp [1];
  assign s_axi_rresp[0] = \<const0> ;
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_amm_bridge_v1_0_1_lite \AXI_LITE.I_AVA_MASTER_LITE 
       (.avm_address(avm_address),
        .avm_beginbursttransfer(avm_beginbursttransfer),
        .avm_byteenable(avm_byteenable),
        .avm_read(avm_read),
        .avm_readdata(avm_readdata),
        .avm_readdatavalid(avm_readdatavalid),
        .avm_waitrequest(avm_waitrequest),
        .avm_write(avm_write),
        .avm_writedata(avm_writedata),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(\^s_axi_bresp ),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(\^s_axi_rresp ),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid));
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
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
