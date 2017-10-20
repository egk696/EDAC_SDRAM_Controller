// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
// Date        : Thu Jul 27 15:33:13 2017
// Host        : EMA-VAIO running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ DemoSDRAM_microblaze_0_0_stub.v
// Design      : DemoSDRAM_microblaze_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a200tfbg676-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "MicroBlaze,Vivado 2016.4" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(Clk, Reset, Interrupt, Interrupt_Address, 
  Interrupt_Ack, Instr_Addr, Instr, IFetch, I_AS, IReady, IWAIT, ICE, IUE, Data_Addr, Data_Read, 
  Data_Write, D_AS, Read_Strobe, Write_Strobe, DReady, DWait, DCE, DUE, Byte_Enable, M_AXI_DP_AWADDR, 
  M_AXI_DP_AWPROT, M_AXI_DP_AWVALID, M_AXI_DP_AWREADY, M_AXI_DP_WDATA, M_AXI_DP_WSTRB, 
  M_AXI_DP_WVALID, M_AXI_DP_WREADY, M_AXI_DP_BRESP, M_AXI_DP_BVALID, M_AXI_DP_BREADY, 
  M_AXI_DP_ARADDR, M_AXI_DP_ARPROT, M_AXI_DP_ARVALID, M_AXI_DP_ARREADY, M_AXI_DP_RDATA, 
  M_AXI_DP_RRESP, M_AXI_DP_RVALID, M_AXI_DP_RREADY, Dbg_Clk, Dbg_TDI, Dbg_TDO, Dbg_Reg_En, 
  Dbg_Shift, Dbg_Capture, Dbg_Update, Debug_Rst, Dbg_Disable, Trace_Instruction, 
  Trace_Valid_Instr, Trace_PC, Trace_Reg_Write, Trace_Reg_Addr, Trace_MSR_Reg, Trace_PID_Reg, 
  Trace_New_Reg_Value, Trace_Exception_Taken, Trace_Exception_Kind, Trace_Jump_Taken, 
  Trace_Delay_Slot, Trace_Data_Address, Trace_Data_Write_Value, Trace_Data_Byte_Enable, 
  Trace_Data_Access, Trace_Data_Read, Trace_Data_Write, Trace_DCache_Req, Trace_DCache_Hit, 
  Trace_DCache_Rdy, Trace_DCache_Read, Trace_ICache_Req, Trace_ICache_Hit, 
  Trace_ICache_Rdy, Trace_OF_PipeRun, Trace_EX_PipeRun, Trace_MEM_PipeRun, Trace_MB_Halted, 
  Trace_Jump_Hit)
/* synthesis syn_black_box black_box_pad_pin="Clk,Reset,Interrupt,Interrupt_Address[0:31],Interrupt_Ack[0:1],Instr_Addr[0:31],Instr[0:31],IFetch,I_AS,IReady,IWAIT,ICE,IUE,Data_Addr[0:31],Data_Read[0:31],Data_Write[0:31],D_AS,Read_Strobe,Write_Strobe,DReady,DWait,DCE,DUE,Byte_Enable[0:3],M_AXI_DP_AWADDR[31:0],M_AXI_DP_AWPROT[2:0],M_AXI_DP_AWVALID,M_AXI_DP_AWREADY,M_AXI_DP_WDATA[31:0],M_AXI_DP_WSTRB[3:0],M_AXI_DP_WVALID,M_AXI_DP_WREADY,M_AXI_DP_BRESP[1:0],M_AXI_DP_BVALID,M_AXI_DP_BREADY,M_AXI_DP_ARADDR[31:0],M_AXI_DP_ARPROT[2:0],M_AXI_DP_ARVALID,M_AXI_DP_ARREADY,M_AXI_DP_RDATA[31:0],M_AXI_DP_RRESP[1:0],M_AXI_DP_RVALID,M_AXI_DP_RREADY,Dbg_Clk,Dbg_TDI,Dbg_TDO,Dbg_Reg_En[0:7],Dbg_Shift,Dbg_Capture,Dbg_Update,Debug_Rst,Dbg_Disable,Trace_Instruction[0:31],Trace_Valid_Instr,Trace_PC[0:31],Trace_Reg_Write,Trace_Reg_Addr[0:4],Trace_MSR_Reg[0:14],Trace_PID_Reg[0:7],Trace_New_Reg_Value[0:31],Trace_Exception_Taken,Trace_Exception_Kind[0:4],Trace_Jump_Taken,Trace_Delay_Slot,Trace_Data_Address[0:31],Trace_Data_Write_Value[0:31],Trace_Data_Byte_Enable[0:3],Trace_Data_Access,Trace_Data_Read,Trace_Data_Write,Trace_DCache_Req,Trace_DCache_Hit,Trace_DCache_Rdy,Trace_DCache_Read,Trace_ICache_Req,Trace_ICache_Hit,Trace_ICache_Rdy,Trace_OF_PipeRun,Trace_EX_PipeRun,Trace_MEM_PipeRun,Trace_MB_Halted,Trace_Jump_Hit" */;
  input Clk;
  input Reset;
  input Interrupt;
  input [0:31]Interrupt_Address;
  output [0:1]Interrupt_Ack;
  output [0:31]Instr_Addr;
  input [0:31]Instr;
  output IFetch;
  output I_AS;
  input IReady;
  input IWAIT;
  input ICE;
  input IUE;
  output [0:31]Data_Addr;
  input [0:31]Data_Read;
  output [0:31]Data_Write;
  output D_AS;
  output Read_Strobe;
  output Write_Strobe;
  input DReady;
  input DWait;
  input DCE;
  input DUE;
  output [0:3]Byte_Enable;
  output [31:0]M_AXI_DP_AWADDR;
  output [2:0]M_AXI_DP_AWPROT;
  output M_AXI_DP_AWVALID;
  input M_AXI_DP_AWREADY;
  output [31:0]M_AXI_DP_WDATA;
  output [3:0]M_AXI_DP_WSTRB;
  output M_AXI_DP_WVALID;
  input M_AXI_DP_WREADY;
  input [1:0]M_AXI_DP_BRESP;
  input M_AXI_DP_BVALID;
  output M_AXI_DP_BREADY;
  output [31:0]M_AXI_DP_ARADDR;
  output [2:0]M_AXI_DP_ARPROT;
  output M_AXI_DP_ARVALID;
  input M_AXI_DP_ARREADY;
  input [31:0]M_AXI_DP_RDATA;
  input [1:0]M_AXI_DP_RRESP;
  input M_AXI_DP_RVALID;
  output M_AXI_DP_RREADY;
  input Dbg_Clk;
  input Dbg_TDI;
  output Dbg_TDO;
  input [0:7]Dbg_Reg_En;
  input Dbg_Shift;
  input Dbg_Capture;
  input Dbg_Update;
  input Debug_Rst;
  input Dbg_Disable;
  output [0:31]Trace_Instruction;
  output Trace_Valid_Instr;
  output [0:31]Trace_PC;
  output Trace_Reg_Write;
  output [0:4]Trace_Reg_Addr;
  output [0:14]Trace_MSR_Reg;
  output [0:7]Trace_PID_Reg;
  output [0:31]Trace_New_Reg_Value;
  output Trace_Exception_Taken;
  output [0:4]Trace_Exception_Kind;
  output Trace_Jump_Taken;
  output Trace_Delay_Slot;
  output [0:31]Trace_Data_Address;
  output [0:31]Trace_Data_Write_Value;
  output [0:3]Trace_Data_Byte_Enable;
  output Trace_Data_Access;
  output Trace_Data_Read;
  output Trace_Data_Write;
  output Trace_DCache_Req;
  output Trace_DCache_Hit;
  output Trace_DCache_Rdy;
  output Trace_DCache_Read;
  output Trace_ICache_Req;
  output Trace_ICache_Hit;
  output Trace_ICache_Rdy;
  output Trace_OF_PipeRun;
  output Trace_EX_PipeRun;
  output Trace_MEM_PipeRun;
  output Trace_MB_Halted;
  output Trace_Jump_Hit;
endmodule
