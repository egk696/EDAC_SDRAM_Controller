//////////////////////////////////////////////////////////////////-
// (c) Copyright 1984 - 2016 Xilinx, Inc. All rights reserved.
//
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
//
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
//
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
//
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
//////////////////////////////////////////////////////////////////-
// ************************************************************************
//
//////////////////////////////////////////////////////////////////////////////-
// Filename:        axi_amm_top.v
// Version:         v1.0
// Description:     This is the top level design file for the AXI2AMM bridge IP.
//////////////////////////////////////////////////////////////////////////////-
// Structure:   This section shows the hierarchical structure of axi_lite_ipif.
//
//              //axi_amm_top.v
//                    //axi_amm_lite.v
//                    //axi_amm_full.v/
//////////////////////////////////////////////////////////////////////////////-
// Author:      Karthee
//
// History:
//
//  Karthee      07/10/16      // First version
// ~~~~~~
//////////////////////////////////////////////////////////////////////////////-
// Naming Conventions:
//      active low signals:                     "*_n"
//      clock signals:                          "clk", "clk_div#", "clk_#x"
//      reset signals:                          "rst", "rst_n"
//      generics:                               "C_*"
//      user defined types:                     "*_TYPE"
//      state machine next state:               "*_ns"
//      state machine current state:            "*_cs"
//      combinatorial signals:                  "*_cmb"
//      pipelined or register delay signals:    "*_d#"
//      counter signals:                        "*cnt*"
//      clock enable signals:                   "*_ce"
//      internal version of output port         "*_i"
//      device pins:                            "*_pin"
//      ports:                                  - Names begin with Uppercase
//      processes:                              "*_PROCESS"
//      component instantiations:               "<ENTITY_>I_<#|FUNC>
//////////////////////////////////////////////////////////////////////////////-

//////////////////////////////////////////////////////////////////////////////-
//                     Definition of Generics
//////////////////////////////////////////////////////////////////////////////-
// C_S_AXI_DATA_WIDTH    // AXI data bus width
// C_S_AXI_ADDR_WIDTH    // AXI address bus width
// C_S_AXI_MIN_SIZE      // Minimum address range of the IP
// C_USE_WSTRB           // Use write strobs or not
// C_DPHASE_TIMEOUT      // Data phase time out counter
// C_ARD_ADDR_RANGE_ARRAY// Base /High Address Pair for each Address Range
// C_ARD_NUM_CE_ARRAY    // Desired number of chip enables for an address range
// C_FAMILY              // Target FPGA family
//////////////////////////////////////////////////////////////////////////////-
//                  Definition of Ports
//////////////////////////////////////////////////////////////////////////////-
// S_AXI_ACLK            // AXI Clock
// S_AXI_ARESETN         // AXI Reset
// S_AXI_AWADDR          // AXI Write address
// S_AXI_AWVALID         // Write address valid
// S_AXI_AWREADY         // Write address ready
// S_AXI_WDATA           // Write data
// S_AXI_WSTRB           // Write strobes
// S_AXI_WVALID          // Write valid
// S_AXI_WREADY          // Write ready
// S_AXI_BRESP           // Write response
// S_AXI_BVALID          // Write response valid
// S_AXI_BREADY          // Response ready
// S_AXI_ARADDR          // Read address
// S_AXI_ARVALID         // Read address valid
// S_AXI_ARREADY         // Read address ready
// S_AXI_RDATA           // Read data
// S_AXI_RRESP           // Read response
// S_AXI_RVALID          // Read valid
// S_AXI_RREADY          // Read ready
// avm_clk            // Synchronization clock provided to User IP
// avm_Reset          // Active high reset for use by the User IP
// avm_addr           // Desired address of read or write operation
// avm_RNW            // Read or write indicator for the transaction
// avm_BE             // Byte enables for the data bus
// avm_CS             // Chip select for the transcations
// avm_RdCE           // Chip enables for the read
// avm_WrCE           // Chip enables for the write
// avm_Data           // Write data bus to the User IP
// avm_Data           // Input Read Data bus from the User IP
// avm_WrAck          // Active high Write Data qualifier from the IP
// avm_RdAck          // Active high Read Data qualifier from the IP
// avm_Error          // Error signal from the IP
//////////////////////////////////////////////////////////////////////////////-

`timescale 1ps/1ps
(* DowngradeIPIdentifiedWarnings="yes" *)

module axi_amm_bridge_v1_0_1_lite 
  # (
parameter                              C_ADDRESS_MODE = 0,
parameter                              C_HAS_FIXED_WAIT = 0,//1,
parameter                              C_HAS_RESPONSE = 1,//1,
parameter                              C_FIXED_WRITE_WAIT = 5,
parameter                              C_FIXED_READ_WAIT = 1,
parameter                              C_HAS_FIXED_READ_LATENCY = 0,//1,
parameter                              C_READ_LATENCY = 3,
parameter                              C_S_AXI_DATA_WIDTH   = 32,
parameter                              C_S_AXI_ID_WIDTH   = 4,
parameter                              C_S_AXI_ADDR_WIDTH   = 32,
parameter                              C_USE_WSTRB          = 0,
parameter                              C_DPHASE_TIMEOUT     = 32, //Valid values for timeout 32,64,128,256
parameter                              C_NUM_ADDRESS_RANGES = 1,
parameter                              C_PROTOCOL           = 0,
parameter [63:0]                       C_BASE1_ADDR         = 64'h0000000000000000,
parameter [63:0]                       C_BASE2_ADDR         = 64'h0000000000000000,
parameter [63:0]                       C_BASE3_ADDR         = 64'h0000000000000000,
parameter [63:0]                       C_BASE4_ADDR         = 64'h0000000000000000,
parameter [63:0]                       C_HIGH1_ADDR         = 64'hFFFFFFFFFFFFFFFF,
parameter [63:0]                       C_HIGH2_ADDR         = 64'hFFFFFFFFFFFFFFFF,
parameter [63:0]                       C_HIGH3_ADDR         = 64'hFFFFFFFFFFFFFFFF,
parameter [63:0]                       C_HIGH4_ADDR         = 64'hFFFFFFFFFFFFFFFF,
parameter                              C_FAMILY            = "virtex7"
)
(
    input                                   s_axi_aclk,
    input                                   s_axi_aresetn,
    input [C_S_AXI_ADDR_WIDTH-1:0]     s_axi_awaddr,
    input                                   s_axi_awvalid,
    output reg                                  s_axi_awready,
    input [C_S_AXI_DATA_WIDTH-1:0]     s_axi_wdata,
    input [C_S_AXI_DATA_WIDTH/8-1:0]   s_axi_wstrb,
    input                                   s_axi_wvalid,
    output reg                                  s_axi_wready,
    output reg [1:0]                             s_axi_bresp,
    output reg                                  s_axi_bvalid,
    input                                   s_axi_bready,
    input [C_S_AXI_ADDR_WIDTH-1:0]     s_axi_araddr,
    input                                   s_axi_arvalid,
    output reg                                  s_axi_arready,
    output reg [C_S_AXI_DATA_WIDTH-1:0]     s_axi_rdata,
    output reg [1:0]                             s_axi_rresp,
    output  reg                                 s_axi_rvalid,
    input                                   s_axi_rready,


output reg [C_S_AXI_ADDR_WIDTH-1:0]         avm_address,  
output reg                                avm_write, 
output reg                                avm_read, 
output reg [((C_S_AXI_DATA_WIDTH / 8)-1):0] avm_byteenable, 
output reg [(C_S_AXI_DATA_WIDTH - 1):0]     avm_writedata,    
input [(C_S_AXI_DATA_WIDTH - 1):0]     avm_readdata, 
input [1:0]                            avm_resp,
input                                  avm_readdatavalid,
output reg                             avm_beginbursttransfer,
input                                  avm_writeresponsevalid,
input                                  avm_waitrequest

);
//-----------------------------------------------------------------------------
// Begin architecture logic
//-----------------------------------------------------------------------------
//-----------------------------------------------------------------------------
// Slave Attachment
//-----------------------------------------------------------------------------
  // State Definitions
   localparam IDLE            = 4'h0;
   localparam WRITE_AD_DATA   = 4'h1;
   localparam WRITE_RESP      = 4'h2;
   localparam READ_ADDRESS    = 4'h3;
   localparam READ_DATA       = 4'h4;
   localparam INV_WRITE_ADDRESS   = 4'h5;
   localparam INV_READ_ADDRESS   = 4'h6;
   localparam INV_WRITE_DATA  = 4'h7;
   localparam INV_READ_DATA   = 4'h8;

 // States
   reg [3:0]  current_state;//   = IDLE;
   reg [3:0]  current_state_d;//   = IDLE;
   wire avm_writeresponsevalid_i,avm_readdatavalid_i;
   wire [1:0] avm_resp_i;
   reg [1:0] avm_resp_id;
   reg avm_readdatavalid_ii; 
   reg avm_waitrequest_i; 
   reg start; 
   reg [8:0] tout_counter;
   reg done_write,done_read;
   wire valid_ar,valid_aw;
   wire [(C_S_AXI_DATA_WIDTH - 1):0] avm_readdata_i;
   reg [5:0] rd_lat_count;
   reg [7:0] fix_wait_count;
   reg [(C_S_AXI_DATA_WIDTH - 1):0] avm_readdata_id;

//In word addressing , address will be sent in word aligned manner

wire [C_S_AXI_ADDR_WIDTH-1:0]         s_axi_awaddr_l;  
wire [C_S_AXI_ADDR_WIDTH-1:0]         s_axi_araddr_l;  

generate if (C_ADDRESS_MODE == 1 && C_S_AXI_ADDR_WIDTH > 2) begin : ADDR_MODE_0
assign s_axi_awaddr_l = {2'b00,s_axi_awaddr[C_S_AXI_ADDR_WIDTH-1:2]};
assign s_axi_araddr_l = {2'b00,s_axi_araddr[C_S_AXI_ADDR_WIDTH-1:2]};
end
endgenerate

generate if (C_ADDRESS_MODE == 1 && C_S_AXI_ADDR_WIDTH < 3) begin : ADDR_MODE_02
assign s_axi_awaddr_l = 0;
assign s_axi_araddr_l = 0;
end 
endgenerate

generate if (C_ADDRESS_MODE == 0) begin : ADDR_MODE_1
assign s_axi_awaddr_l = s_axi_awaddr;
assign s_axi_araddr_l = s_axi_araddr;
end 
endgenerate
   always @(posedge s_axi_aclk) begin
     if(start) begin
          tout_counter <= tout_counter+1'b1;
     end else begin
          tout_counter <= 9'h001;
     end
   
   end

   assign avm_readdata_i = (current_state == INV_READ_DATA)? 0: avm_readdata_id;
   //Address validation check 
   generate if(C_NUM_ADDRESS_RANGES  == 0 ) begin : NUM_CE0
   assign valid_ar = 1'b1;
   assign valid_aw = 1'b1;
   end
   endgenerate

   generate if(C_NUM_ADDRESS_RANGES  == 1 ) begin : NUM_CE1
   assign valid_ar = (s_axi_araddr[C_S_AXI_ADDR_WIDTH-1:0]>=C_BASE1_ADDR[C_S_AXI_ADDR_WIDTH-1:0] && s_axi_araddr[C_S_AXI_ADDR_WIDTH-1:0]<=C_HIGH1_ADDR[C_S_AXI_ADDR_WIDTH-1:0])? 1'b1:1'b0;
   assign valid_aw = (s_axi_awaddr[C_S_AXI_ADDR_WIDTH-1:0]>=C_BASE1_ADDR[C_S_AXI_ADDR_WIDTH-1:0] && s_axi_awaddr[C_S_AXI_ADDR_WIDTH-1:0]<=C_HIGH1_ADDR[C_S_AXI_ADDR_WIDTH-1:0])? 1'b1:1'b0;
 
   end
   endgenerate   
   generate if(C_NUM_ADDRESS_RANGES  == 2 ) begin : NUM_CE2
   assign valid_ar = (s_axi_araddr[C_S_AXI_ADDR_WIDTH-1:0]>=C_BASE1_ADDR[C_S_AXI_ADDR_WIDTH-1:0] && s_axi_araddr[C_S_AXI_ADDR_WIDTH-1:0]<=C_HIGH1_ADDR[C_S_AXI_ADDR_WIDTH-1:0])? 1'b1:((s_axi_araddr[C_S_AXI_ADDR_WIDTH-1:0]>=C_BASE2_ADDR[C_S_AXI_ADDR_WIDTH-1:0] && s_axi_araddr[C_S_AXI_ADDR_WIDTH-1:0]<=C_HIGH2_ADDR[C_S_AXI_ADDR_WIDTH-1:0])? 1'b1: 1'b0);
   assign valid_aw = (s_axi_awaddr[C_S_AXI_ADDR_WIDTH-1:0]>=C_BASE1_ADDR[C_S_AXI_ADDR_WIDTH-1:0] && s_axi_awaddr[C_S_AXI_ADDR_WIDTH-1:0]<=C_HIGH1_ADDR[C_S_AXI_ADDR_WIDTH-1:0])? 1'b1:((s_axi_awaddr[C_S_AXI_ADDR_WIDTH-1:0]>=C_BASE2_ADDR[C_S_AXI_ADDR_WIDTH-1:0] && s_axi_awaddr[C_S_AXI_ADDR_WIDTH-1:0]<=C_HIGH2_ADDR[C_S_AXI_ADDR_WIDTH-1:0])? 1'b1: 1'b0);

   end
   endgenerate 

   generate if(C_NUM_ADDRESS_RANGES  == 3 ) begin : NUM_CE3
   assign valid_ar = (s_axi_araddr[C_S_AXI_ADDR_WIDTH-1:0]>=C_BASE1_ADDR[C_S_AXI_ADDR_WIDTH-1:0] && s_axi_araddr[C_S_AXI_ADDR_WIDTH-1:0]<=C_HIGH1_ADDR[C_S_AXI_ADDR_WIDTH-1:0])? 1'b1:((s_axi_araddr[C_S_AXI_ADDR_WIDTH-1:0]>=C_BASE2_ADDR[C_S_AXI_ADDR_WIDTH-1:0] && s_axi_araddr[C_S_AXI_ADDR_WIDTH-1:0]<=C_HIGH2_ADDR[C_S_AXI_ADDR_WIDTH-1:0])? 1'b1: ((s_axi_araddr[C_S_AXI_ADDR_WIDTH-1:0]>=C_BASE3_ADDR[C_S_AXI_ADDR_WIDTH-1:0] && s_axi_araddr[C_S_AXI_ADDR_WIDTH-1:0]<=C_HIGH3_ADDR[C_S_AXI_ADDR_WIDTH-1:0])?1'b1:1'b0));
   assign valid_aw = (s_axi_awaddr[C_S_AXI_ADDR_WIDTH-1:0]>=C_BASE1_ADDR[C_S_AXI_ADDR_WIDTH-1:0] && s_axi_awaddr[C_S_AXI_ADDR_WIDTH-1:0]<=C_HIGH1_ADDR[C_S_AXI_ADDR_WIDTH-1:0])? 1'b1:((s_axi_awaddr[C_S_AXI_ADDR_WIDTH-1:0]>=C_BASE2_ADDR[C_S_AXI_ADDR_WIDTH-1:0] && s_axi_awaddr[C_S_AXI_ADDR_WIDTH-1:0]<=C_HIGH2_ADDR[C_S_AXI_ADDR_WIDTH-1:0])? 1'b1: ((s_axi_awaddr[C_S_AXI_ADDR_WIDTH-1:0]>=C_BASE3_ADDR[C_S_AXI_ADDR_WIDTH-1:0] && s_axi_awaddr[C_S_AXI_ADDR_WIDTH-1:0]<=C_HIGH3_ADDR[C_S_AXI_ADDR_WIDTH-1:0])?1'b1:1'b0));

   end
   endgenerate 
generate if(C_NUM_ADDRESS_RANGES  == 4 ) begin : NUM_CE4

   assign valid_ar = (s_axi_araddr[C_S_AXI_ADDR_WIDTH-1:0]>=C_BASE1_ADDR[C_S_AXI_ADDR_WIDTH-1:0] && s_axi_araddr[C_S_AXI_ADDR_WIDTH-1:0]<=C_HIGH1_ADDR[C_S_AXI_ADDR_WIDTH-1:0])? 1'b1:((s_axi_araddr[C_S_AXI_ADDR_WIDTH-1:0]>=C_BASE2_ADDR[C_S_AXI_ADDR_WIDTH-1:0] && s_axi_araddr[C_S_AXI_ADDR_WIDTH-1:0]<=C_HIGH2_ADDR[C_S_AXI_ADDR_WIDTH-1:0])? 1'b1: ((s_axi_araddr[C_S_AXI_ADDR_WIDTH-1:0]>=C_BASE3_ADDR[C_S_AXI_ADDR_WIDTH-1:0] && s_axi_araddr[C_S_AXI_ADDR_WIDTH-1:0]<=C_HIGH3_ADDR[C_S_AXI_ADDR_WIDTH-1:0])?1'b1:((s_axi_araddr[C_S_AXI_ADDR_WIDTH-1:0]>=C_BASE4_ADDR[C_S_AXI_ADDR_WIDTH-1:0] && s_axi_araddr[C_S_AXI_ADDR_WIDTH-1:0]<=C_HIGH4_ADDR[C_S_AXI_ADDR_WIDTH-1:0])?1'b1:1'b0)));
   
      assign valid_aw = (s_axi_awaddr[C_S_AXI_ADDR_WIDTH-1:0]>=C_BASE1_ADDR[C_S_AXI_ADDR_WIDTH-1:0] && s_axi_awaddr[C_S_AXI_ADDR_WIDTH-1:0]<=C_HIGH1_ADDR[C_S_AXI_ADDR_WIDTH-1:0])? 1'b1:((s_axi_awaddr[C_S_AXI_ADDR_WIDTH-1:0]>=C_BASE2_ADDR[C_S_AXI_ADDR_WIDTH-1:0] && s_axi_awaddr[C_S_AXI_ADDR_WIDTH-1:0]<=C_HIGH2_ADDR[C_S_AXI_ADDR_WIDTH-1:0])? 1'b1: ((s_axi_awaddr[C_S_AXI_ADDR_WIDTH-1:0]>=C_BASE3_ADDR[C_S_AXI_ADDR_WIDTH-1:0] && s_axi_awaddr[C_S_AXI_ADDR_WIDTH-1:0]<=C_HIGH3_ADDR[C_S_AXI_ADDR_WIDTH-1:0])?1'b1:((s_axi_awaddr[C_S_AXI_ADDR_WIDTH-1:0]>=C_BASE4_ADDR[C_S_AXI_ADDR_WIDTH-1:0] && s_axi_awaddr[C_S_AXI_ADDR_WIDTH-1:0]<=C_HIGH4_ADDR[C_S_AXI_ADDR_WIDTH-1:0])?1'b1:1'b0)));
   end
   endgenerate 
//Response generation when slave supports response
   generate if(C_HAS_RESPONSE  == 1'b1 ) begin : HAS_RESP
   
   assign avm_writeresponsevalid_i = (current_state == INV_WRITE_DATA && done_write == 1'b0)?1'b1:((current_state == WRITE_RESP && done_write == 1'b0)?avm_writeresponsevalid:1'b0);
   assign avm_resp_i = ((current_state == INV_WRITE_DATA && done_write == 1'b0)||(current_state == INV_READ_DATA && done_read == 1'b0))?2'b10:avm_resp; //10 --> Slave error
 end
 endgenerate
//Response generation when slave does not supports response

 generate if(C_HAS_RESPONSE  == 1'b0 ) begin : HAS_NO_RESP
   assign avm_writeresponsevalid_i = ((current_state == WRITE_RESP || current_state == INV_WRITE_DATA) && done_write == 1'b0)? 1'b1: 1'b0;
   assign avm_resp_i = ((current_state == INV_WRITE_DATA && done_write == 1'b0)||(current_state == INV_READ_DATA && done_read == 1'b0))?2'b10:2'b00; 
 end
 endgenerate

 //Fixed read latency
 generate if(C_HAS_FIXED_READ_LATENCY  == 1'b0 ) begin : VAR_RL  
   always @(*) begin
         avm_readdata_id <= avm_readdata;
         avm_resp_id <= avm_resp_i;
   end
 assign avm_readdatavalid_i = (current_state == INV_READ_DATA && done_read == 1'b0)? 1'b1:((current_state == READ_DATA) ? avm_readdatavalid:1'b0);
  end
 endgenerate


 generate if(C_HAS_FIXED_READ_LATENCY  == 1'b1 ) begin : FIX_RL
 //Read data valid generation
 //C_READ_LATENCY
   always @(posedge s_axi_aclk) begin
         avm_readdata_id <= avm_readdata;
         avm_resp_id <= avm_resp_i;         
         current_state_d <= current_state;         
   end
   always @(posedge s_axi_aclk) begin
       if(s_axi_aresetn == 1'b0) begin
         avm_readdatavalid_ii <= 1'b0;
         rd_lat_count <= 8'h01; 
       end else if(current_state == READ_DATA && s_axi_rvalid == 1'b0) begin
          rd_lat_count <= rd_lat_count+1'b1;
          if(rd_lat_count == C_READ_LATENCY) begin
            avm_readdatavalid_ii <= 1'b1;
          end else begin
            avm_readdatavalid_ii <= 1'b0;
          end
       end else begin
            rd_lat_count <= 8'h01; 
            avm_readdatavalid_ii <= 1'b0;
       end
   end
   assign avm_readdatavalid_i = (current_state_d == INV_READ_DATA && current_state == INV_READ_DATA &&  done_read == 1'b0)? 1'b1:((current_state == READ_DATA) ? avm_readdatavalid_ii:1'b0);
 end
 endgenerate

 generate if(C_HAS_FIXED_WAIT  == 1'b0 ) begin : FIX_WT
   always @(*) begin
     avm_waitrequest_i <= avm_waitrequest;
   end
   end
 endgenerate

 generate if(C_HAS_FIXED_WAIT  == 1'b1 ) begin : NO_FIX_WT
 //Fixed wait request generation
 always @(posedge s_axi_aclk) begin
     if(s_axi_aresetn == 1'b0) begin
          avm_waitrequest_i <= 1'b1;
       fix_wait_count <= 8'h01; 
     end else if(current_state == WRITE_AD_DATA) begin
        fix_wait_count <= fix_wait_count+1'b1;
        if(fix_wait_count == C_FIXED_WRITE_WAIT) begin
          avm_waitrequest_i <= 1'b0;
         end else begin
          avm_waitrequest_i <= 1'b1;
         end
     end else if(current_state == READ_ADDRESS) begin
        fix_wait_count <= fix_wait_count+1'b1;
        if(fix_wait_count == C_FIXED_READ_WAIT) begin
          avm_waitrequest_i <= 1'b0;
         end else begin
          avm_waitrequest_i <= 1'b1;
         end
     end else begin
          fix_wait_count <= 8'h01; 
          avm_waitrequest_i <= 1'b1;
         
     end
 end
 end
 endgenerate


 //Main statemachine

   always @(posedge s_axi_aclk) begin
      // Setup the default values
      //avm_address  <= 0;
      //avm_writedata     <= 0;
      //avm_byteenable     <= 0;
      if(s_axi_aresetn == 1'b0) begin
                current_state <= IDLE;
                avm_write <= 1'b0;
                avm_read <= 1'b0;
                start <= 1'b0;
                avm_address <= 0;
                s_axi_arready <= 1'b0;
                s_axi_wready <= 1'b0;
                s_axi_awready <= 1'b0;
                avm_byteenable <= 4'hF;
                avm_beginbursttransfer <= 1'b0;
      end else begin
        case (current_state)
         // If RST is asserted reset the machine
         IDLE: begin
               start <= 1'b0;
             if(s_axi_arvalid == 1'b1 && valid_ar == 1'b1) begin
               s_axi_arready <= 1'b0;
               s_axi_wready <= 1'b0;
               s_axi_awready <= 1'b0;
               avm_write <= 1'b0;
               avm_read <= 1'b1;
               avm_address <= s_axi_araddr_l;
               avm_byteenable <= 4'hF;
               avm_beginbursttransfer <= 1'b1;
               current_state <= READ_ADDRESS;
             end else if(s_axi_awvalid == 1'b1 && s_axi_wvalid == 1'b1 && valid_aw == 1'b1) begin
               s_axi_arready <= 1'b0;
               s_axi_wready <= 1'b0;
               s_axi_awready <= 1'b0;
               avm_read <= 1'b0;
               avm_write <= 1'b1;
               avm_address <= s_axi_awaddr_l;
               avm_byteenable <= s_axi_wstrb;
               avm_writedata    <= s_axi_wdata;
               avm_beginbursttransfer <= 1'b1;
               current_state <= WRITE_AD_DATA;
              end else if(s_axi_arvalid == 1'b1 && valid_ar == 1'b0) begin
               s_axi_arready <= 1'b1;
               s_axi_wready <= 1'b0;
               s_axi_awready <= 1'b0;
               avm_address <= 0;
               avm_write <= 1'b0;
               avm_read <= 1'b0;
               avm_beginbursttransfer <= 1'b0;
               current_state <= INV_READ_ADDRESS;
			  end else if(s_axi_awvalid == 1'b1 && s_axi_wvalid == 1'b1 && valid_aw == 1'b0) begin
               s_axi_awready <= 1'b1;
               s_axi_wready <= 1'b1;
               s_axi_arready <= 1'b0;
               avm_address <= 0;
               avm_write <= 1'b0;
               avm_read <= 1'b0;
               avm_beginbursttransfer <= 1'b0;
               current_state <= INV_WRITE_ADDRESS;
			  end else begin
               s_axi_arready <= 1'b0;
               s_axi_awready <= 1'b0;
               s_axi_wready <= 1'b0;
               avm_address <= 0;
               avm_write <= 1'b0;
               avm_read <= 1'b0;
               avm_beginbursttransfer <= 1'b0;
               current_state <= IDLE;
             end
         end
         WRITE_AD_DATA: begin
               avm_beginbursttransfer <= 1'b0;
                 if(avm_waitrequest_i == 1'b0)begin
                  s_axi_awready <= 1'b1;
                  s_axi_wready <= 1'b1;
                  avm_write <= 1'b0;
                  avm_writedata    <= 0;
                  start <= 1'b0;
                  avm_byteenable <= 0;
                  current_state <= WRITE_RESP;
                 end else if(tout_counter == C_DPHASE_TIMEOUT && start == 1'b1)begin
                  s_axi_awready <= 1'b1;
                  s_axi_wready <= 1'b1;
                  avm_write <= 1'b0;
                  start <= 1'b0;
                  current_state <= INV_WRITE_ADDRESS;
                 end else begin
                  s_axi_awready <= 1'b0;
                  s_axi_wready <= 1'b0;
                  avm_write <= 1'b1;
                  avm_address <= s_axi_awaddr_l;
                  avm_writedata    <= s_axi_wdata;
                  avm_byteenable <= s_axi_wstrb;
                  start <= 1'b1;
                  current_state <= WRITE_AD_DATA;
                 end
         end
         WRITE_RESP: begin
               avm_beginbursttransfer <= 1'b0;
                 s_axi_awready <= 1'b0;
                 s_axi_wready <= 1'b0;
                 if(done_write == 1'b1)begin
                  start <= 1'b0;
                  current_state <= IDLE;
                 end else if(tout_counter == C_DPHASE_TIMEOUT && avm_writeresponsevalid_i == 1'b0 && s_axi_bvalid == 1'b0 && start == 1'b1)begin
                  start <= 1'b0;
                  current_state <= INV_WRITE_DATA;
                 end else begin
                  start <= 1'b1;
                  current_state <= WRITE_RESP;
                end
         end
         READ_ADDRESS: begin
               avm_beginbursttransfer <= 1'b0;
               if(avm_waitrequest_i == 1'b0)begin
                  s_axi_arready <= 1'b1;
                  avm_read <= 1'b0;
                  avm_address <= s_axi_araddr_l;
                  avm_byteenable <= 4'hF;
                  start <= 1'b0;
                  current_state <= READ_DATA;
               end else if(tout_counter == C_DPHASE_TIMEOUT && start == 1'b1)begin
                  s_axi_arready <= 1'b1;
                  avm_read <= 1'b0;
                  start <= 1'b0;
                  current_state <= INV_READ_ADDRESS;
                 end else begin
                  s_axi_arready <= 1'b0;
                  avm_read <= 1'b1;
                  avm_address <= s_axi_araddr_l;
                  avm_byteenable <= 4'hF;
                  start <= 1'b1;
                  current_state <= READ_ADDRESS;
               end
         end
         READ_DATA: begin
               avm_beginbursttransfer <= 1'b0;
                 s_axi_arready <= 1'b0;
                 if(done_read == 1'b1) begin
                  start <= 1'b0;
                  current_state <= IDLE;
                 end else if(tout_counter == C_DPHASE_TIMEOUT && avm_readdatavalid_i == 1'b0 && s_axi_rvalid == 1'b0 && start == 1'b1)begin
                  start <= 1'b0;
                  current_state <= INV_READ_DATA;
                 end else begin
                  start <= 1'b1;
                  current_state <= READ_DATA;
               end
        end
		  INV_READ_ADDRESS: begin
               avm_beginbursttransfer <= 1'b0;
               s_axi_arready <= 1'b0;
               current_state <= INV_READ_DATA;           
        end
		  INV_READ_DATA: begin
               avm_beginbursttransfer <= 1'b0;
               if(done_read == 1'b1) begin
                  start <= 1'b0;
                  current_state <= IDLE;
               end else begin
                  current_state <= INV_READ_DATA;
               end

        end
		  INV_WRITE_ADDRESS: begin
               avm_beginbursttransfer <= 1'b0;
               s_axi_awready <= 1'b0;
               s_axi_wready <= 1'b0;
               current_state <= INV_WRITE_DATA;           
        end
		  INV_WRITE_DATA: begin
               avm_beginbursttransfer <= 1'b0;
                if(done_write == 1'b1)begin
                  current_state <= IDLE;
                 end else begin
                  current_state <= INV_WRITE_DATA;
                end
         end
		  default: begin
               avm_beginbursttransfer <= 1'b0;
               avm_write <= 1'b0;
               avm_read <= 1'b0;
               s_axi_arready <= 1'b0;
               s_axi_awready <= 1'b0;
               current_state <= IDLE;           
               avm_byteenable <= 4'hF;
        end

     endcase
 end
 end

 
  // This block creates temp buffer to the master axi ready signals (bready,rready).
   always @(posedge s_axi_aclk) begin
      if(s_axi_aresetn == 1'b0) begin
         s_axi_rvalid <= 1'b0;
         s_axi_rdata  <= 0;
         s_axi_rresp  <= 0;
      end else begin
         if(avm_readdatavalid_i) begin
            s_axi_rvalid <= 1'b1;
            s_axi_rdata  <= avm_readdata_i;
            s_axi_rresp  <= avm_resp_id;
            //done_read  <= 1'b1;
         end else if(done_read == 1'b1) begin
            s_axi_rvalid <= 1'b0;
            s_axi_rdata  <= 0;
            s_axi_rresp  <= 0;
            //done_read  <= 1'b0;
         end else begin
            s_axi_rvalid <= s_axi_rvalid;
            s_axi_rdata  <= s_axi_rdata;
            s_axi_rresp  <= s_axi_rresp;
            //done_read  <= done_read;
         end
      end
   end
   always @(*) begin
    done_read <= (s_axi_rvalid == 1'b1 && s_axi_rready == 1'b1)?1'b1:1'b0;
end

//Write response

always @(posedge s_axi_aclk) begin
      if(s_axi_aresetn == 1'b0) begin
         s_axi_bvalid <= 1'b0;
         s_axi_bresp  <= 2'b00;
         //done_write  <= 1'b0;
      end else begin
         if(avm_writeresponsevalid_i == 1'b1) begin
            s_axi_bvalid <= 1'b1;
            s_axi_bresp  <= avm_resp_i;
            //done_write  <= 1'b1;
         end else if(done_write == 1'b1) begin
            s_axi_bvalid <= 1'b0;
            s_axi_bresp  <= 2'b00;
            //done_write  <= 1'b0;
         end else begin
            s_axi_bvalid <= s_axi_bvalid;
            s_axi_bresp  <= s_axi_bresp;
            //done_write  <= done_write;
         end
      end
   end
   always @(*) begin
    done_write <= (s_axi_bvalid == 1'b1 && s_axi_bready == 1'b1)?1'b1:1'b0;
end

endmodule



//////////////////////////////////////////////////////////////////-
// (c) Copyright 1984 - 2016 Xilinx, Inc. All rights reserved.
//
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
//
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
//
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
//
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
//////////////////////////////////////////////////////////////////-
// ************************************************************************
//
//////////////////////////////////////////////////////////////////////////////-
// Filename:        axi_amm_top.v
// Version:         v1.0
// Description:     This is the top level design file for the AXI2AMM bridge IP.
//////////////////////////////////////////////////////////////////////////////-
// Structure:   This section shows the hierarchical structure of axi_lite_ipif.
//
// axi_amm_bridge_v1_0_1
//              axi_amm_top.v
//                    // axi_amm_lite.v
//                    // axi_amm_full.v
//                       // axi_amm_sync_fifo.v
//                       // axi_amm_xpm_fifo.v
//////////////////////////////////////////////////////////////////////////////-
// Author:      Karthee
//
// History:
//
//  Karthee      07/10/16      // First version
// ~~~~~~
//////////////////////////////////////////////////////////////////////////////-
// Naming Conventions:
//      active low signals:                     "*_n"
//      clock signals:                          "clk", "clk_div#", "clk_#x"
//      reset signals:                          "rst", "rst_n"
//      generics:                               "C_*"
//      user defined types:                     "*_TYPE"
//      state machine next state:               "*_ns"
//      state machine current state:            "*_cs"
//      combinatorial signals:                  "*_cmb"
//      pipelined or register delay signals:    "*_d#"
//      counter signals:                        "*cnt*"
//      clock enable signals:                   "*_ce"
//      internal version of output port         "*_i"
//      device pins:                            "*_pin"
//      ports:                                  - Names begin with Uppercase
//      processes:                              "*_PROCESS"
//      component instantiations:               "<ENTITY_>I_<#|FUNC>
//////////////////////////////////////////////////////////////////////////////-

`timescale 1ps/1ps
(* DowngradeIPIdentifiedWarnings="yes" *)

module axi_amm_bridge_v1_0_1_fifo 
  # (

  // Common module parameters
  parameter                         C_CLOCK_DOMAIN       = "COMMON",
  parameter                         C_RELATED_CLOCKS     = 0,
  parameter                         C_FIFO_MEMORY_TYPE   = "BRAM",
  parameter                         C_ECC_MODE           = "NO_ECC",

  parameter integer                 C_FIFO_WRITE_DEPTH   = 2048,
  parameter integer                 C_WRITE_DATA_WIDTH   = 32,
  parameter integer                 C_WR_DATA_COUNT_WIDTH = 10,
  parameter integer                 C_PROG_FULL_THRESH   = 10,
  parameter integer                 C_FULL_RESET_VALUE   = 0,

  parameter                         C_READ_MODE          = "FWFT",
  parameter integer                 C_FIFO_READ_LATENCY  = 0,
  parameter integer                 C_READ_DATA_WIDTH    = C_WRITE_DATA_WIDTH,
  parameter                         C_RD_DATA_COUNT_WIDTH = 10,
  parameter integer                 C_PROG_EMPTY_THRESH  = 10,
  parameter                         C_DOUT_RESET_VALUE   = "",
  parameter integer                 C_RDCLK_FASTER       = 0,
  parameter integer                 C_CDC_SYNC_STAGES    = 2,
  parameter integer                 C_REMOVE_WR_RD_PROT_LOGIC  = 0,

  parameter integer                 C_EN_ECC_PIPE        = 0,

  parameter                         C_WAKEUP_TIME        = 0,
  parameter integer                 C_AUTO_SLEEP_TIME    = 0,
  parameter integer                 C_VERSION            = 0

) (

  // Common module ports
  
  input  wire                                               rstn,

  // Write Domain ports
  input  wire                                               wr_clk,
  input  wire                                               wr_en,
  input  wire [C_WRITE_DATA_WIDTH-1:0]                      din,
  output wire                                               full,
  // Read Domain ports
  input  wire                                               rd_en,
  output wire [C_READ_DATA_WIDTH-1:0]                       dout,
  output wire                                               empty
);
  function integer clogb2;
    input [31:0] value;
    begin
        value = value - 1;
        for (clogb2 = 0; value > 0; clogb2 = clogb2 + 1) begin
            value = value >> 1;
        end
    end
endfunction
   localparam C_WR_DATA_COUNT_WIDTH_I = clogb2 (C_FIFO_WRITE_DEPTH);
   wire                                               prog_empty;
   wire [C_RD_DATA_COUNT_WIDTH-1:0]                     rd_data_count;
   wire                                               underflow;
   wire                                               rd_rst_busy;

  // ECC Related ports
   wire                                               injectsbiterr = 0;
   wire                                               injectdbiterr= 0;
   wire                                               sbiterr;
   wire                                               dbiterr;
   wire                                               prog_full;
   wire [C_WR_DATA_COUNT_WIDTH-1:0]                   wr_data_count;
   wire [C_WR_DATA_COUNT_WIDTH-1:0]                   data_count;
   wire                                               overflow;
   wire                                               wr_rst_busy;
   wire                                               sleep = 0;

xpm_fifo_sync # (
        .FIFO_MEMORY_TYPE    ("auto"  ),
        .ECC_MODE            ("no_ecc"          ),
        .FIFO_WRITE_DEPTH    (C_FIFO_WRITE_DEPTH  ),
        .WRITE_DATA_WIDTH    (C_WRITE_DATA_WIDTH  ),
        .WR_DATA_COUNT_WIDTH (C_WR_DATA_COUNT_WIDTH_I),
        .FULL_RESET_VALUE    (C_FULL_RESET_VALUE  ),
        .PROG_FULL_THRESH    (C_PROG_FULL_THRESH  ),
        .READ_MODE           (C_READ_MODE         ),
        .FIFO_READ_LATENCY   (C_FIFO_READ_LATENCY ),
        .READ_DATA_WIDTH     (C_WRITE_DATA_WIDTH   ),
        .RD_DATA_COUNT_WIDTH (C_WR_DATA_COUNT_WIDTH_I),
        .PROG_EMPTY_THRESH   (10 ),
        .DOUT_RESET_VALUE    (C_DOUT_RESET_VALUE  ),
//        .REMOVE_WR_RD_PROT_LOGIC    (C_REMOVE_WR_RD_PROT_LOGIC),
//        .EN_ECC_PIPE         (C_EN_ECC_PIPE       ),
        .WAKEUP_TIME         (C_WAKEUP_TIME       ),
//        .AUTO_SLEEP_TIME     (C_AUTO_SLEEP_TIME   ),
        .VERSION             (C_VERSION           )

      ) xpm_fifo_sync_inst (
        .sleep            (sleep),
        .rst              (!rstn),
        .wr_clk           (wr_clk),
        .wr_en            (wr_en),
        .din              (din),
        .full             (full),
        .prog_full        (prog_full),
        .wr_data_count    (),
        .overflow         (overflow),
        .wr_rst_busy      (wr_rst_busy),
        .rd_en            (rd_en),
        .dout             (dout),
        .empty            (empty),
        .prog_empty       (prog_empty),
        .rd_data_count    (),
        .underflow        (underflow),
        .rd_rst_busy      (rd_rst_busy),
        .injectsbiterr    (injectsbiterr),
        .injectdbiterr    (injectdbiterr),
        .sbiterr          (sbiterr),
        .dbiterr          (dbiterr)
      );
endmodule


//////////////////////////////////////////////////////////////////-
// (c) Copyright 1984 - 2016 Xilinx, Inc. All rights reserved.
//
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
//
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
//
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
//
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
//////////////////////////////////////////////////////////////////-
// ************************************************************************
//
//////////////////////////////////////////////////////////////////////////////-
// Filename:        axi_amm_top.v
// Version:         v1.0
// Description:     This is the top level design file for the AXI2AMM bridge IP.
//////////////////////////////////////////////////////////////////////////////-
// Structure:   This section shows the hierarchical structure of axi_lite_ipif.
//
//              //axi_amm_top.v
//                    //axi_amm_lite.v
//                    //axi_amm_full.v/
//////////////////////////////////////////////////////////////////////////////-
// Author:      Karthee
//
// History:
//
//  Karthee      07/10/16      // First version
// ~~~~~~
//////////////////////////////////////////////////////////////////////////////-
// Naming Conventions:
//      active low signals:                     "*_n"
//      clock signals:                          "clk", "clk_div#", "clk_#x"
//      reset signals:                          "rst", "rst_n"
//      generics:                               "C_*"
//      user defined types:                     "*_TYPE"
//      state machine next state:               "*_ns"
//      state machine current state:            "*_cs"
//      combinatorial signals:                  "*_cmb"
//      pipelined or register delay signals:    "*_d#"
//      counter signals:                        "*cnt*"
//      clock enable signals:                   "*_ce"
//      internal version of output port         "*_i"
//      device pins:                            "*_pin"
//      ports:                                  - Names begin with Uppercase
//      processes:                              "*_PROCESS"
//      component instantiations:               "<ENTITY_>I_<#|FUNC>
//////////////////////////////////////////////////////////////////////////////-

//////////////////////////////////////////////////////////////////////////////-
//                     Definition of Generics
//////////////////////////////////////////////////////////////////////////////-
// C_S_AXI_DATA_WIDTH    // AXI data bus width
// C_S_AXI_ADDR_WIDTH    // AXI address bus width
// C_S_AXI_MIN_SIZE      // Minimum address range of the IP
// C_USE_WSTRB           // Use write strobs or not
// C_DPHASE_TIMEOUT      // Data phase time out counter
// C_ARD_ADDR_RANGE_ARRAY// Base /High Address Pair for each Address Range
// C_ARD_NUM_CE_ARRAY    // Desired number of chip enables for an address range
// C_FAMILY              // Target FPGA family
//////////////////////////////////////////////////////////////////////////////-
//                  Definition of Ports
//////////////////////////////////////////////////////////////////////////////-
// S_AXI_ACLK            // AXI Clock
// S_AXI_ARESETN         // AXI Reset
// S_AXI_AWADDR          // AXI Write address
// S_AXI_AWVALID         // Write address valid
// S_AXI_AWREADY         // Write address ready
// S_AXI_WDATA           // Write data
// S_AXI_WSTRB           // Write strobes
// S_AXI_WVALID          // Write valid
// S_AXI_WREADY          // Write ready
// S_AXI_BRESP           // Write response
// S_AXI_BVALID          // Write response valid
// S_AXI_BREADY          // Response ready
// S_AXI_ARADDR          // Read address
// S_AXI_ARVALID         // Read address valid
// S_AXI_ARREADY         // Read address ready
// S_AXI_RDATA           // Read data
// S_AXI_RRESP           // Read response
// S_AXI_RVALID          // Read valid
// S_AXI_RREADY          // Read ready
// avm_clk            // Synchronization clock provided to User IP
// avm_Reset          // Active high reset for use by the User IP
// avm_addr           // Desired address of read or write operation
// avm_RNW            // Read or write indicator for the transaction
// avm_BE             // Byte enables for the data bus
// avm_CS             // Chip select for the transcations
// avm_RdCE           // Chip enables for the read
// avm_WrCE           // Chip enables for the write
// avm_Data           // Write data bus to the User IP
// avm_Data           // Input Read Data bus from the User IP
// avm_WrAck          // Active high Write Data qualifier from the IP
// avm_RdAck          // Active high Read Data qualifier from the IP
// avm_Error          // Error signal from the IP
//////////////////////////////////////////////////////////////////////////////-

`timescale 1ps/1ps
(* DowngradeIPIdentifiedWarnings="yes" *)

module axi_amm_bridge_v1_0_1_full 
  # (
parameter                              C_ADDRESS_MODE = 0,
parameter                              C_HAS_FIXED_WAIT = 0,//1,
parameter                              C_HAS_RESPONSE = 1,//1,
parameter                              C_FIXED_WRITE_WAIT = 5,
parameter                              C_FIXED_READ_WAIT = 1,
parameter                              C_HAS_FIXED_READ_LATENCY = 0,//1,
parameter                              C_READ_LATENCY = 3,
parameter                              C_BURST_LENGTH       = 4,
parameter                              C_AVM_BURST_WIDTH       = 4, // this should be 1 more than AXI
parameter                              C_S_AXI_DATA_WIDTH   = 32,
parameter                              C_S_AXI_ID_WIDTH   = 4,
parameter                              C_S_AXI_ADDR_WIDTH   = 32,
parameter                              C_USE_WSTRB          = 0,
parameter                              C_DPHASE_TIMEOUT     = 32, //Valid values for timeout 32,64,128,256
parameter                              C_NUM_OUTSTANDING    = 4,
parameter                              C_PROTOCOL           = 0,
parameter                              C_FAMILY            = "virtex7"
)
(
    input                                   s_axi_aclk,
    input                                   s_axi_aresetn,
    input [C_S_AXI_ID_WIDTH-1:0]            s_axi_awid,
    input [C_S_AXI_ADDR_WIDTH-1:0]          s_axi_awaddr,
    input [7:0]                             s_axi_awlen,
    input [2:0]                             s_axi_awsize,
    input [1:0]                             s_axi_awburst,
    //input [C_AXI_LOCK_WIDTH : 0]          s_axi_awlock,
    input                                   s_axi_awvalid,
    output reg                              s_axi_awready,
    input [C_S_AXI_DATA_WIDTH-1:0]          s_axi_wdata,
    input [C_S_AXI_DATA_WIDTH/8-1:0]        s_axi_wstrb,
    input                                   s_axi_wlast,
    input                                   s_axi_wvalid,
    output                                  s_axi_wready,
    output reg [C_S_AXI_ID_WIDTH-1:0]       s_axi_bid,
    output reg [1:0]                        s_axi_bresp,
    output reg                              s_axi_bvalid,
    input                                   s_axi_bready,
    input [C_S_AXI_ID_WIDTH-1:0]            s_axi_arid,
    input [C_S_AXI_ADDR_WIDTH-1:0]          s_axi_araddr,
    input [7:0]                             s_axi_arlen,
    input [2:0]                             s_axi_arsize,
    input [1:0]                             s_axi_arburst,
    //input [C_AXI_LOCK_WIDTH : 0]           s_axi_arlock,
    input                                   s_axi_arvalid,
    output reg                              s_axi_arready,
    output     [C_S_AXI_ID_WIDTH-1:0]       s_axi_rid,
    output     [C_S_AXI_DATA_WIDTH-1:0]     s_axi_rdata,
    output     [1:0]                        s_axi_rresp,
    output                                  s_axi_rlast,
    output                                  s_axi_rvalid,
    input                                   s_axi_rready,


//output                                    avm_clk,    
//output                                    avm_resetn,  
output [C_S_AXI_ADDR_WIDTH-1:0]             avm_address,  
output                                      avm_write, 
output reg                                  avm_read, 
output [((C_S_AXI_DATA_WIDTH / 8)-1):0]     avm_byteenable, 
output     [(C_S_AXI_DATA_WIDTH - 1):0]     avm_writedata,    
input [(C_S_AXI_DATA_WIDTH - 1):0]          avm_readdata, 
input [1:0]                                 avm_resp,
input                                       avm_readdatavalid,
output [C_AVM_BURST_WIDTH-1:0]          avm_burstcount,
output                                   avm_beginbursttransfer,
input                                       avm_writeresponsevalid,
input                                       avm_waitrequest


);
//-----------------------------------------------------------------------------
// Begin architecture logic
//-----------------------------------------------------------------------------
//-----------------------------------------------------------------------------
// Slave Attachment
//-----------------------------------------------------------------------------
  // State Definitions
   localparam IDLE            = 2'h0;
   localparam IDLE1  = 2'h1;
   //localparam IDLE2  = 3'h2;
   localparam IDLE3  = 2'h2;
   localparam READ_ADDRESS    = 2'h3;
//   localparam READ_DATA       = 2'h1;

   localparam IDLE_DATA       = 2'h0;
   localparam WRITE_AD_DATA   = 2'h1;
   localparam WRITE_DATA      = 2'h2;
   localparam WRITE_RESP      = 2'h3;
   localparam RD_FIFO_WIDTH = C_S_AXI_DATA_WIDTH+C_S_AXI_ID_WIDTH+3;
   localparam RD_FIFO_DEPTH = (C_NUM_OUTSTANDING==3)?1024:(C_NUM_OUTSTANDING*256);//2048; //(C_NUM_OUTSTANDING+1)*256;
   localparam STRB_CNT = C_S_AXI_DATA_WIDTH / 8;

 // States
   reg [1:0]  current_state   = IDLE;
   reg [1:0]  current_wr_state   = IDLE;
   reg [C_AVM_BURST_WIDTH-1:0]          avm_wrburstcount;
   reg [C_AVM_BURST_WIDTH-1:0]          avm_rdburstcount;

 //Singals  
   wire rdata_fifo_wr_en;
   wire rdata_fifo_rd_en;
   wire avm_rlast_i;
   wire [RD_FIFO_WIDTH-1:0] rd_fifo_din;
   wire avm_writeresponsevalid_i;
   wire  avm_readdatavalid_i;
   reg  avm_readdatavalid_i2;
   wire [1:0] avm_resp_i;
   wire [1:0] avm_resp_i2;
   reg [1:0] avm_resp_i3;
   reg avm_readdatavalid_ii; 
   wire avm_waitrequest_i; 
   reg start; 
   reg [2:0] Or_s;
   reg done_read;
   wire done_write;
   wire valid_ar,valid_aw;
   wire [(C_S_AXI_DATA_WIDTH - 1):0] avm_readdata_i;
   reg [(C_S_AXI_DATA_WIDTH - 1):0] avm_readdata_i2;
   reg [5:0] rd_lat_count;
   reg [7:0] fix_wait_count;
   reg [(C_S_AXI_DATA_WIDTH - 1):0] avm_readdata_id;
  
   //ID LEN FIFO signal declaration
   wire rid_fifo_rd_en,rid_fifo_wr_en,len_id_fifo_full,len_id_fifo_empty;
   wire [C_S_AXI_ID_WIDTH+8-1:0] id_fifo_dout;
   reg rd_fsm_busy;
   reg wr_fsm_busy;
   reg wr_p;
   reg addr_seen;
   reg data_seen;
   reg resp_seen;
   reg [C_S_AXI_ADDR_WIDTH-1:0] avm_rd_address;
   reg [C_S_AXI_ADDR_WIDTH-1:0] avm_wr_address;
   reg [3:0] rd_avm_cnt;
   reg [C_S_AXI_ID_WIDTH-1:0] write_id;
   reg [7:0]  rd_tr_cnt;
   wire rd_fifo_empty;
   wire [RD_FIFO_WIDTH-1:0] rd_fifo_dout;
   wire [((C_S_AXI_DATA_WIDTH / 8)-1):0]     avm_wr_byteenable; 
   //wire [((C_S_AXI_DATA_WIDTH / 8)-1):0]     avm_rd_byteenable = {STRB_CNT{1'b1}}; 
   reg avm_rd_beginbursttransfer;
   reg wr_beginbursttransfer;
   reg avm_wr_beginbursttransfer;

   //In word addressing , address will be sent in word aligned manner

wire [C_S_AXI_ADDR_WIDTH-1:0]         s_axi_awaddr_l;  
wire [C_S_AXI_ADDR_WIDTH-1:0]         s_axi_araddr_l;  

generate if (C_ADDRESS_MODE == 1 && C_S_AXI_DATA_WIDTH == 32) begin : ADDR_MODE_0
assign s_axi_awaddr_l = {2'b00,s_axi_awaddr[C_S_AXI_ADDR_WIDTH-1:2]};
assign s_axi_araddr_l = {2'b00,s_axi_araddr[C_S_AXI_ADDR_WIDTH-1:2]};
end
endgenerate

generate if (C_ADDRESS_MODE == 1 && C_S_AXI_DATA_WIDTH == 64) begin : ADDR_MODE_10
assign s_axi_awaddr_l = {3'b000,s_axi_awaddr[C_S_AXI_ADDR_WIDTH-1:3]};
assign s_axi_araddr_l = {3'b000,s_axi_araddr[C_S_AXI_ADDR_WIDTH-1:3]};
end
endgenerate

generate if (C_ADDRESS_MODE == 1 && C_S_AXI_DATA_WIDTH == 128) begin : ADDR_MODE_20
assign s_axi_awaddr_l = {4'b0000,s_axi_awaddr[C_S_AXI_ADDR_WIDTH-1:4]};
assign s_axi_araddr_l = {4'b0000,s_axi_araddr[C_S_AXI_ADDR_WIDTH-1:4]};
end
endgenerate

generate if (C_ADDRESS_MODE == 1 && C_S_AXI_DATA_WIDTH == 256) begin : ADDR_MODE_30
assign s_axi_awaddr_l = {5'b00000,s_axi_awaddr[C_S_AXI_ADDR_WIDTH-1:5]};
assign s_axi_araddr_l = {5'b00000,s_axi_araddr[C_S_AXI_ADDR_WIDTH-1:5]};
end
endgenerate

generate if (C_ADDRESS_MODE == 1 && C_S_AXI_DATA_WIDTH == 512) begin : ADDR_MODE_40
assign s_axi_awaddr_l = {6'b000000,s_axi_awaddr[C_S_AXI_ADDR_WIDTH-1:6]};
assign s_axi_araddr_l = {6'b000000,s_axi_araddr[C_S_AXI_ADDR_WIDTH-1:6]};
end
endgenerate

generate if (C_ADDRESS_MODE == 1 && C_S_AXI_DATA_WIDTH == 1024) begin : ADDR_MODE_50
assign s_axi_awaddr_l = {7'b0000000,s_axi_awaddr[C_S_AXI_ADDR_WIDTH-1:7]};
assign s_axi_araddr_l = {7'b0000000,s_axi_araddr[C_S_AXI_ADDR_WIDTH-1:7]};
end
endgenerate


generate if (C_ADDRESS_MODE == 0) begin : ADDR_MODE_1
assign s_axi_awaddr_l = s_axi_awaddr;
assign s_axi_araddr_l = s_axi_araddr;
end 
endgenerate

    
    generate if(C_HAS_RESPONSE  == 1'b1 ) begin : HAS_RESP
   assign avm_writeresponsevalid_i = avm_writeresponsevalid;
   assign avm_resp_i = avm_resp; //10 --> Slave error
 end
 endgenerate

 generate if(C_HAS_RESPONSE  == 1'b0 ) begin : HAS_NO_RESP
   assign avm_writeresponsevalid_i = (current_wr_state == WRITE_RESP && done_write == 1'b0)? 1'b1: 1'b0;
   assign avm_resp_i = 2'b00; 
 end
 endgenerate


// the incoming read data has to be delayed by 3 so match the latency of FIFO
// that stores the arlen and arid

         assign avm_readdatavalid_i = avm_readdatavalid;
         assign avm_readdata_i = avm_readdata;
         assign avm_resp_i2 = avm_resp;
//   always @(posedge s_axi_aclk) begin
//      // Setup the default values
//      if(s_axi_aresetn == 1'b0) begin
//         avm_readdatavalid_i <= 0;
//         avm_readdatavalid_i2 <= 0;
//         avm_readdata_i <= 0;
//         avm_readdata_i2 <= 0;
//         avm_resp_i2 <= 0;
//         avm_resp_i3 <= 0;

//      end else begin
//         avm_readdatavalid_i2 <= avm_readdatavalid;
//         avm_readdatavalid_i <= avm_readdatavalid_i2;
//         avm_readdata_i2 <= avm_readdata;
//         avm_readdata_i <= avm_readdata_i2;
//         avm_resp_i3 <= avm_resp;
//         avm_resp_i2 <= avm_resp_i3;
//      end
//   end

 assign avm_waitrequest_i = avm_waitrequest;

//Start of read logic   

   always @(posedge s_axi_aclk) begin
      // Setup the default values
      if(s_axi_aresetn == 1'b0) begin
                current_state <= IDLE;
                avm_read <= 1'b0;
                start <= 1'b0;
                avm_rdburstcount <= 0;
                avm_rd_address <= 0;
                s_axi_arready <= 1'b0;
                rd_fsm_busy <= 1'b0;
                wr_p <= 1'b0;
                avm_rd_beginbursttransfer <= 1'b0;
      end else begin
        case (current_state)
         // If RST is asserted reset the machine
         IDLE: begin
             if(wr_p == 1'b1) begin
               avm_rdburstcount <= 0;
               avm_rd_address <= 0;
               rd_fsm_busy <= 1'b0;
               s_axi_arready <= 1'b0;
               avm_read <= 1'b0;
               if (wr_fsm_busy) begin
                  wr_p <= 1'b0; // means the pending write request is processed
               end
               current_state <= IDLE;
             end else if(s_axi_arvalid == 1'b1 && wr_fsm_busy == 1'b0 && Or_s < C_NUM_OUTSTANDING && rd_avm_cnt < C_NUM_OUTSTANDING) begin
               s_axi_arready <= 1'b1;
               avm_read <= 1'b0;
               avm_rd_address <= s_axi_araddr_l;
               avm_rd_beginbursttransfer <= 1'b0;
               avm_rdburstcount <= s_axi_arlen +1;
               rd_fsm_busy <= 1'b1;
               //current_state <= READ_ADDRESS;
               current_state <= IDLE1;
             end else begin
               s_axi_arready <= 1'b0;
               avm_rd_address <= 0;
               avm_read <= 1'b0;
               avm_rd_beginbursttransfer <= 1'b0;
               current_state <= IDLE;
             end
         end
// The FIFO has a delay of 2 clk
// hence two idle cycles have been added
         IDLE1: begin
                  s_axi_arready <= 1'b0;
                  current_state <= IDLE3;
         end       
         IDLE3: begin
//               avm_read <= 1'b1;
                  s_axi_arready <= 1'b0;
//               current_state <= READ_ADDRESS;
//                  current_state <= IDLE3;
                  avm_read <= 1'b1;
                  avm_rd_beginbursttransfer <= 1'b1;
                  current_state <= READ_ADDRESS;

         end       

         READ_ADDRESS: begin
               avm_rd_beginbursttransfer <= 1'b0;
               if(avm_waitrequest_i == 1'b0 && s_axi_awvalid == 1'b1 && s_axi_wvalid == 1'b1)begin
                  s_axi_arready <= 1'b0;
                  avm_read <= 1'b0;
                  avm_rdburstcount <= 0;
                  avm_rd_address <= avm_rd_address;
                  start <= 1'b0;
		  wr_p = 1'b1;           // a write request is seen while accepting read
                                         // if not addressed then there are chances that write channel would be stalled
                                         // if we get continuous reads
                  current_state <= IDLE; //READ_AD_OUTS;
               rd_fsm_busy <= 1'b0;
               end else if(avm_waitrequest_i == 1'b0)begin
                  avm_rdburstcount <= 0;
                  s_axi_arready <= 1'b0;
                  avm_read <= 1'b0;
                  avm_rd_address <= s_axi_araddr_l;
                  start <= 1'b0;
	          wr_p = 1'b0;
                  current_state <= IDLE; //READ_AD_OUTS;
               rd_fsm_busy <= 1'b0;
               end else begin
                  avm_rdburstcount <= avm_rdburstcount;
                  s_axi_arready <= 1'b0;
                  avm_read <= 1'b1;
                  avm_rd_address <= avm_rd_address;
                  start <= 1'b1;
               rd_fsm_busy <= rd_fsm_busy;
                  current_state <= READ_ADDRESS;
               end
         end
           default: begin

               avm_read <= 1'b0;
               s_axi_arready <= 1'b0;
               rd_fsm_busy <= 1'b0;
               current_state <= IDLE;           
        end

     endcase
 end
 end

// ID FIFO LOGIC BEGIN
wire [C_S_AXI_ID_WIDTH+7:0] id_fifo_din;

    assign rid_fifo_wr_en = s_axi_arvalid && s_axi_arready;
    assign rid_fifo_rd_en = avm_rlast_i & ~len_id_fifo_empty;
    assign id_fifo_din = {s_axi_arlen,s_axi_arid};

// this counter keeps track of number of transactions received and completed at AXI side 

    always @(posedge s_axi_aclk) begin
      if(s_axi_aresetn == 1'b0) begin
         Or_s <= 0;
      end else if(s_axi_arvalid == 1'b1 && s_axi_arready == 1'b1 && s_axi_rlast == 1'b1 && s_axi_rready == 1'b1 && s_axi_rvalid == 1'b1) begin
            // When read address of one transaction and rlast of other transaction happens at the same time
            Or_s <= Or_s;
      end else if(s_axi_arvalid == 1'b1 && s_axi_arready == 1'b1) begin
            // When read address is accepted 
            Or_s <= Or_s + 1'b1;
      end else if(s_axi_rlast == 1'b1 && s_axi_rready == 1'b1 && s_axi_rvalid == 1'b1) begin
            // When last transaction is readut from fifo 
            Or_s <= Or_s - 1'b1;
      end 

   end

   
//axi_amm_bridge_v1_0_1_sync_fifo #(.WIDTH(C_S_AXI_ID_WIDTH+8),
//.DEPTH_LOG2(4)) ava_sync_rid_fifo
//(     
//       .rst_n    (s_axi_aresetn),
//       .clk      (s_axi_aclk),
//       .wren     (rid_fifo_wr_en   ),
//       .rden     (rid_fifo_rd_en   ),
//       .din      (id_fifo_din ),
//       .dout     (id_fifo_dout ),
//       .full     (len_id_fifo_full ),
//       .empty    (len_id_fifo_empty)
//);

axi_amm_bridge_v1_0_1_fifo #(.C_WRITE_DATA_WIDTH(C_S_AXI_ID_WIDTH+8),
.C_FIFO_WRITE_DEPTH(16)
) ava_sync_rid_fifo
(
       .rstn      (s_axi_aresetn),
       .wr_clk   (s_axi_aclk),
       .wr_en    (rid_fifo_wr_en), //rdata_fifo_wr_en   ),
       .rd_en    (rid_fifo_rd_en), //rdata_fifo_rd_en   ),
       .din      (id_fifo_din), //rd_fifo_din ),
       .dout     (id_fifo_dout), //rd_fifo_dout ),
       .full     (len_id_fifo_full), //rd_fifo_full ),
       .empty    (len_id_fifo_empty) //rd_fifo_empty)
);




// ID FIFO LOGIC END

// DATA FIFO LOGIC BEGIN
assign rdata_fifo_wr_en = avm_readdatavalid_i;
assign rdata_fifo_rd_en = s_axi_rready & ~rd_fifo_empty;
assign rd_fifo_din = {avm_readdata_i,id_fifo_dout[C_S_AXI_ID_WIDTH-1:0],avm_resp_i2,avm_rlast_i};


// this counter keeps track of number of beats coming from AMM side
// rlast is also generated here when beats equal to arlen
assign avm_rlast_i = (avm_readdatavalid_i && (rd_tr_cnt == id_fifo_dout[C_S_AXI_ID_WIDTH+7:C_S_AXI_ID_WIDTH])); // && ~len_id_fifo_empty);

   always @(posedge s_axi_aclk) begin
      if(s_axi_aresetn == 1'b0) begin
         rd_tr_cnt <= 0;
      end else if(avm_readdatavalid_i == 1'b1 && rd_tr_cnt == id_fifo_dout[C_S_AXI_ID_WIDTH+7:C_S_AXI_ID_WIDTH]) begin // && !len_id_fifo_empty) begin
         rd_tr_cnt <= 0;
      end else if(avm_readdatavalid_i == 1'b1) begin
         rd_tr_cnt <= rd_tr_cnt+1'h1;
      end
   end

// this counter keeps track of number of reads completed at AMM side
// When this counter is 0, bridge is free to accept write or read
  always @(posedge s_axi_aclk) begin
      if(s_axi_aresetn == 1'b0) begin
         rd_avm_cnt <= 0;
      end else if(avm_read == 1'b1 && avm_waitrequest_i == 1'b0 && avm_rlast_i == 1'b1) begin
         rd_avm_cnt <= rd_avm_cnt;
      end else if(avm_read == 1'b1 && avm_waitrequest_i == 1'b0) begin
         rd_avm_cnt <= rd_avm_cnt + 1'h1;
      end else if(avm_rlast_i == 1'b1) begin
         rd_avm_cnt <= rd_avm_cnt-1'h1;
      end
   end

axi_amm_bridge_v1_0_1_fifo #(.C_WRITE_DATA_WIDTH(C_S_AXI_DATA_WIDTH),
.C_FIFO_WRITE_DEPTH(RD_FIFO_DEPTH)
) ava_sync_rdata_fifo
(     
       .rstn      (s_axi_aresetn),
       .wr_clk   (s_axi_aclk),
       .wr_en    (rdata_fifo_wr_en   ),
       .rd_en    (rdata_fifo_rd_en   ),
       .din      (rd_fifo_din[RD_FIFO_WIDTH-1:C_S_AXI_ID_WIDTH+3]),
       .dout     (rd_fifo_dout[RD_FIFO_WIDTH-1:C_S_AXI_ID_WIDTH+3] ),
       .full     (rd_fifo_full ),
       .empty    (rd_fifo_empty)
);

//using a parallel fifo for rresp and rlast as max width supported by
//xpm_fifo is 1024
axi_amm_bridge_v1_0_1_fifo #(.C_WRITE_DATA_WIDTH(C_S_AXI_ID_WIDTH+3),
.C_FIFO_WRITE_DEPTH(RD_FIFO_DEPTH)
) ava_sync_rresp_fifo
(     
       .rstn      (s_axi_aresetn),
       .wr_clk   (s_axi_aclk),
       .wr_en    (rdata_fifo_wr_en   ),
       .rd_en    (rdata_fifo_rd_en   ),
       .din      (rd_fifo_din[C_S_AXI_ID_WIDTH+3-1:0]),
       .dout     (rd_fifo_dout[C_S_AXI_ID_WIDTH+3-1:0]),
       .full     (),
       .empty    ()
);

assign s_axi_rvalid = ~rd_fifo_empty;
assign s_axi_rdata  = rd_fifo_dout[RD_FIFO_WIDTH-1:C_S_AXI_ID_WIDTH+3];
assign s_axi_rlast  = rd_fifo_dout[0];

assign s_axi_rid    = rd_fifo_dout[C_S_AXI_ID_WIDTH-1+3:3];
assign s_axi_rresp  = rd_fifo_dout[2:1];

//end of read

 assign avm_address = (wr_fsm_busy == 1'b1) ? avm_wr_address : avm_rd_address;
 assign avm_burstcount = (wr_fsm_busy == 1'b1) ? avm_wrburstcount : avm_rdburstcount;
 assign avm_byteenable = (wr_fsm_busy == 1'b1) ? avm_wr_byteenable : {STRB_CNT{1'b1}};
 assign avm_beginbursttransfer = avm_wr_beginbursttransfer | avm_rd_beginbursttransfer;

//Start of write logic
                    assign avm_writedata    = s_axi_wdata;
                    assign avm_write        = s_axi_wvalid & addr_seen & data_seen; // write asserted only when address and data is present 
                    assign avm_wr_byteenable = s_axi_wstrb;
                    assign s_axi_wready     = ~avm_waitrequest_i & data_seen & addr_seen; // data path ack only when addr and data is present


//   always @(posedge s_axi_aclk) begin
//      if (s_axi_aresetn == 1'b0) begin
//         wr_beginbursttransfer <= 0;
//      end
//      else begin 
//         wr_beginbursttransfer <= s_axi_wvalid & addr_seen & data_seen;
//      end
//   end   
// generate a single pulse when avm_write is asserted
//assign avm_wr_beginbursttransfer = (s_axi_wvalid & addr_seen & data_seen) & !wr_beginbursttransfer;

   always @(posedge s_axi_aclk) begin
      if (s_axi_aresetn == 1'b0) begin
         wr_fsm_busy <=1'b0;
         current_wr_state <= IDLE;
         addr_seen <= 0;
         data_seen <= 0;
         avm_wr_address <= 0;
     //    avm_wr_byteenable <= 0;
         avm_wrburstcount <= 0;
         s_axi_awready <= 1'b0;
         write_id <= 0;
         resp_seen <= 0;
         avm_wr_beginbursttransfer <= 0;
      end
      else begin 
         case (current_wr_state)
             IDLE: begin
                 if (s_axi_awvalid == 1'b1 && s_axi_wvalid == 1'b1 && rd_fsm_busy ==1'b0 && (s_axi_arvalid == 1'b0 || wr_p == 1'b1) && rd_avm_cnt == 0) begin // Master has put addr and data
                 // in this state i can assert the awready on AXI side and free it up
                    wr_fsm_busy <=1'b1;
                    addr_seen <= 1'b1;
                    data_seen <= 1'b1;
                    avm_wr_beginbursttransfer <= 1'b1;
                    current_wr_state <= WRITE_DATA;
                    avm_wr_address <= s_axi_awaddr_l; // latch the address
                 //   avm_wr_byteenable <= s_axi_wstrb; // latch the wstrb
                    avm_wrburstcount <= s_axi_awlen + 1; // latch awlen
                    write_id <= s_axi_awid;
//                    avm_wr_beginbursttransfer <= 1'b1; // to be asserted for 1 clk
                    s_axi_awready <= 1'b1;
                 end
                 else if (s_axi_awvalid == 1'b1 && rd_fsm_busy ==1'b0 && (s_axi_arvalid == 1'b0 || wr_p == 1'b1) && rd_avm_cnt == 0) begin // Master has put only address
                 // in this state i can assert the awready on AXI side and free it up
                    wr_fsm_busy <=1'b1;
                    addr_seen <= 1'b1;
                    data_seen <= 1'b0;
                    current_wr_state <= WRITE_AD_DATA;
                    avm_wr_address <= s_axi_awaddr_l; // latch the address
              //      avm_wr_byteenable <= s_axi_wstrb; // latch the wstrb
                    avm_wrburstcount <= s_axi_awlen +1; // latch awlen
                    write_id <= s_axi_awid;
                    s_axi_awready <= 1'b1;
                 end
                 else begin
                    wr_fsm_busy <=1'b0;
                    addr_seen <= 1'b0;
                    data_seen <= 1'b0;
                    current_wr_state <= IDLE;
                 end
             end

             WRITE_AD_DATA: begin // when address is accepted and data is awaited
                    s_axi_awready <= 1'b0;
                 if (s_axi_wvalid == 1'b1) begin
                    current_wr_state <= WRITE_DATA;
                    data_seen <= 1'b1;
                    avm_wr_beginbursttransfer <= 1'b1;
                 end
                 else begin
                    current_wr_state <= WRITE_AD_DATA;
                 end
        
             end

             WRITE_DATA: begin
             // slave captures addr, burstcount and data when waitrequest is low
             // on subsequent cycles addr and burstcount are ignored
             // hence ~waitrequest can be used for wready
                    avm_wr_beginbursttransfer <= 1'b0;
                    s_axi_awready <= 1'b0;
                    if (s_axi_wvalid == 1'b1 && s_axi_wlast == 1'b1 && s_axi_wready == 1'b1) begin
                       current_wr_state <= WRITE_RESP;
                       data_seen <= 1'b0;
                       addr_seen <= 1'b0;
                       resp_seen <= 1'b1;
                    end
                    else begin
                       current_wr_state <= WRITE_DATA;
                       resp_seen <= 1'b0;
                    end
             end

             WRITE_RESP: begin
                    if (done_write == 1'b1) begin
                       wr_fsm_busy <=1'b0;
                       current_wr_state <= IDLE;
                       resp_seen <= 1'b0;
                    end
                    else begin
                       current_wr_state <= WRITE_RESP;
                    end
             end
           default: begin
                    wr_fsm_busy <=1'b0;
                    addr_seen <= 1'b0;
                    data_seen <= 1'b0;
                       resp_seen <= 1'b0;
                    current_wr_state <= IDLE;

           end
       endcase
   end
   end


 
  // This block creates temp buffer to the master axi ready signals (bready,rready).

   always @(posedge s_axi_aclk) begin
      if(s_axi_aresetn == 1'b0) begin
         s_axi_bvalid <= 1'b0;
         s_axi_bresp  <= 2'b00;
		   s_axi_bid <= 0;
         //done_write  <= 1'b0;
      end else begin
            s_axi_bid <= write_id;
        if(avm_writeresponsevalid_i == 1'b1) begin
            s_axi_bvalid <= 1'b1;
            s_axi_bresp  <= avm_resp_i;
            //done_write  <= 1'b1;
         end else if(done_write == 1'b1) begin
            s_axi_bvalid <= 1'b0;
            s_axi_bresp  <= 2'b00;
            //done_write  <= 1'b0;
         end else begin
            s_axi_bvalid <= s_axi_bvalid;
            s_axi_bresp  <= s_axi_bresp;
            //done_write  <= done_write;
         end
      end
   end

    assign done_write = (s_axi_bvalid & s_axi_bready);

// end of write

endmodule




//////////////////////////////////////////////////////////////////-
// (c) Copyright 1984 - 2016 Xilinx, Inc. All rights reserved.
//
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
//
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
//
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
//
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
//////////////////////////////////////////////////////////////////-
// ************************************************************************
//
//////////////////////////////////////////////////////////////////////////////-
// Filename:        axi_amm_bridge_v1_0_1_top.v
// Version:         v1.0
// Description:     This is the top level design file for the AXI2AMM bridge IP.
//////////////////////////////////////////////////////////////////////////////-
// Structure:   This section shows the hierarchical structure of axi_lite_ipif.
//
//              //axi_amm_bridge_v1_0_1_top.v
//                    //axi_amm_lite.v
//                    //axi_amm_full.v/
//////////////////////////////////////////////////////////////////////////////-
// Author:      Karthee
//
// History:
//
//  Karthee      07/10/16      // First version
// ~~~~~~
//////////////////////////////////////////////////////////////////////////////-
// Naming Conventions:
//      active low signals:                     "*_n"
//      clock signals:                          "clk", "clk_div#", "clk_#x"
//      reset signals:                          "rst", "rst_n"
//      generics:                               "C_*"
//      user defined types:                     "*_TYPE"
//      state machine next state:               "*_ns"
//      state machine current state:            "*_cs"
//      combinatorial signals:                  "*_cmb"
//      pipelined or register delay signals:    "*_d#"
//      counter signals:                        "*cnt*"
//      clock enable signals:                   "*_ce"
//      internal version of output port         "*_i"
//      device pins:                            "*_pin"
//      ports:                                  - Names begin with Uppercase
//      processes:                              "*_PROCESS"
//      component instantiations:               "<ENTITY_>I_<#|FUNC>
//////////////////////////////////////////////////////////////////////////////-

//////////////////////////////////////////////////////////////////////////////-
//                     Definition of Generics
//////////////////////////////////////////////////////////////////////////////-
// C_S_AXI_DATA_WIDTH    // AXI data bus width
// C_S_AXI_ADDR_WIDTH    // AXI address bus width
// C_USE_WSTRB           // Use write strobs or not
// C_DPHASE_TIMEOUT      // Data phase time out counter
// C_ARD_ADDR_RANGE_ARRAY// Base /High Address Pair for each Address Range
// C_ARD_NUM_CE_ARRAY    // Desired number of chip enables for an address range
// C_FAMILY              // Target FPGA family
//////////////////////////////////////////////////////////////////////////////-
//                  Definition of Ports
//////////////////////////////////////////////////////////////////////////////-
// S_AXI_ACLK            // AXI Clock
// S_AXI_ARESETN         // AXI Reset
// S_AXI_AWADDR          // AXI Write address
// S_AXI_AWVALID         // Write address valid
// S_AXI_AWREADY         // Write address ready
// S_AXI_WDATA           // Write data
// S_AXI_WSTRB           // Write strobes
// S_AXI_WVALID          // Write valid
// S_AXI_WREADY          // Write ready
// S_AXI_BRESP           // Write response
// S_AXI_BVALID          // Write response valid
// S_AXI_BREADY          // Response ready
// S_AXI_ARADDR          // Read address
// S_AXI_ARVALID         // Read address valid
// S_AXI_ARREADY         // Read address ready
// S_AXI_RDATA           // Read data
// S_AXI_RRESP           // Read response
// S_AXI_RVALID          // Read valid
// S_AXI_RREADY          // Read ready
// avm_clk            // Synchronization clock provided to User IP
// avm_Reset          // Active high reset for use by the User IP
// avm_address           // Desired address of read or write operation
// avm_RNW            // Read or write indicator for the transaction
// avm_BE             // Byte enables for the data bus
// avm_CS             // Chip select for the transcations
// avm_RdCE           // Chip enables for the read
// avm_WrCE           // Chip enables for the write
// avm_Data           // Write data bus to the User IP
// avm_Data           // Input Read Data bus from the User IP
// avm_WrAck          // Active high Write Data qualifier from the IP
// avm_RdAck          // Active high Read Data qualifier from the IP
// avm_Error          // Error signal from the IP
//////////////////////////////////////////////////////////////////////////////-

`timescale 1ps/1ps
(* DowngradeIPIdentifiedWarnings="yes" *)

module axi_amm_bridge_v1_0_1_top 
  # (
parameter                              C_ADDRESS_MODE = 0,
parameter                              C_HAS_FIXED_WAIT = 0,
parameter                              C_HAS_RESPONSE = 1,
parameter                              C_FIXED_WRITE_WAIT = 1,
parameter                              C_FIXED_READ_WAIT = 1,
parameter                              C_HAS_FIXED_READ_LATENCY = 0,
parameter                              C_READ_LATENCY = 1,
parameter                              C_S_AXI_DATA_WIDTH   = 32,
parameter                              C_S_AXI_ID_WIDTH   = 4,
parameter                              C_S_AXI_ADDR_WIDTH   = 10,
parameter                              C_USE_WSTRB          = 0,
parameter                              C_AVM_BURST_WIDTH    = 1,
parameter                              C_AXI_LOCK_WIDTH     = 1,
parameter                              C_BURST_LENGTH       = 4,
parameter                              C_DPHASE_TIMEOUT     = 256,
parameter                              C_NUM_ADDRESS_RANGES = 0,
parameter                              C_NUM_OUTSTANDING    =4,
parameter                              C_PROTOCOL           = 0,
parameter [63:0]                       C_BASE1_ADDR         = 64'h0000000000000000,
parameter [63:0]                       C_BASE2_ADDR         = 64'h0000000000000000,
parameter [63:0]                       C_BASE3_ADDR         = 64'h0000000000000000,
parameter [63:0]                       C_BASE4_ADDR         = 64'h0000000000000000,
parameter [63:0]                       C_HIGH1_ADDR         = 64'hFFFFFFFFFFFFFFFF,
parameter [63:0]                       C_HIGH2_ADDR         = 64'hFFFFFFFFFFFFFFFF,
parameter [63:0]                       C_HIGH3_ADDR         = 64'hFFFFFFFFFFFFFFFF,
parameter [63:0]                       C_HIGH4_ADDR         = 64'hFFFFFFFFFFFFFFFF,
//parameter [0:32*2*C_NUM_ADDRESS_RANGES-1]   C_ARD_ADDR_RANGE_ARRAY  = 
//                                             {2*C_NUM_ADDRESS_RANGES
//                                              {32'h00000000}
//                                             },
//parameter [0:8*C_NUM_ADDRESS_RANGES-1] C_ARD_NUM_CE_ARRAY  = 
//                                            {
//                                             C_NUM_ADDRESS_RANGES{8'd1}
//                                             },
parameter                              C_FAMILY            = "virtex7"
)
(
    input                                   s_axi_aclk,
    input                                   s_axi_aresetn,
    input [C_S_AXI_ID_WIDTH-1:0]       s_axi_awid,
    input [C_S_AXI_ADDR_WIDTH-1:0]     s_axi_awaddr,
    input [7:0]                            s_axi_awlen,
    input [2:0]                             s_axi_awsize,
    input [1:0]                             s_axi_awburst,
    //input [C_AXI_LOCK_WIDTH : 0]           s_axi_awlock,
    input                                   s_axi_awvalid,
    output                                   s_axi_awready,
    input [C_S_AXI_DATA_WIDTH-1:0]     s_axi_wdata,
    input [C_S_AXI_DATA_WIDTH/8-1:0]   s_axi_wstrb,
    input                                   s_axi_wlast,
    input                                   s_axi_wvalid,
    output                                   s_axi_wready,
    output [C_S_AXI_ID_WIDTH-1:0]       s_axi_bid,
    output [1:0]                             s_axi_bresp,
    output                                   s_axi_bvalid,
    input                                   s_axi_bready,
    input [C_S_AXI_ID_WIDTH-1:0]       s_axi_arid,
    input [C_S_AXI_ADDR_WIDTH-1:0]     s_axi_araddr,
    input [7:0]                            s_axi_arlen,
    input [2:0]                             s_axi_arsize,
    input [1:0]                             s_axi_arburst,
    //input [C_AXI_LOCK_WIDTH : 0]           s_axi_arlock,
    input                                   s_axi_arvalid,
    output                                   s_axi_arready,
    output [C_S_AXI_ID_WIDTH-1:0]       s_axi_rid,
    output [C_S_AXI_DATA_WIDTH-1:0]     s_axi_rdata,
    output [1:0]                             s_axi_rresp,
    output                                   s_axi_rlast,
    output                                   s_axi_rvalid,
    input                                   s_axi_rready,


//output                                 avm_clk,    
//output                                 avm_resetn,  
output[C_S_AXI_ADDR_WIDTH-1:0]         avm_address,  
output                                 avm_write, 
output                                 avm_read, 
output[((C_S_AXI_DATA_WIDTH / 8)-1):0] avm_byteenable, 
output[(C_S_AXI_DATA_WIDTH - 1):0]     avm_writedata,    
input [(C_S_AXI_DATA_WIDTH - 1):0]     avm_readdata, 
input [1:0]                            avm_resp,
input                                  avm_readdatavalid,
output [C_AVM_BURST_WIDTH-1:0]         avm_burstcount,
output                                 avm_beginbursttransfer,
input                                  avm_writeresponsevalid,
input                                  avm_waitrequest

);
localparam [C_AVM_BURST_WIDTH-1:0] All_zero = 0;


//-----------------------------------------------------------------------------
// Begin architecture logic
//-----------------------------------------------------------------------------
//-----------------------------------------------------------------------------
// Lite Module
//-----------------------------------------------------------------------------
generate if (C_PROTOCOL == 0) begin : AXI_LITE
assign avm_burstcount = All_zero+1'b1;

axi_amm_bridge_v1_0_1_lite 
#(
.C_NUM_ADDRESS_RANGES(C_NUM_ADDRESS_RANGES),
.C_BASE1_ADDR(C_BASE1_ADDR),
.C_BASE2_ADDR(C_BASE2_ADDR),
.C_BASE3_ADDR(C_BASE3_ADDR),
.C_BASE4_ADDR(C_BASE4_ADDR),
.C_HIGH1_ADDR(C_HIGH1_ADDR),
.C_HIGH2_ADDR(C_HIGH2_ADDR),
.C_HIGH3_ADDR(C_HIGH3_ADDR),
.C_HIGH4_ADDR(C_HIGH4_ADDR),
.C_S_AXI_ADDR_WIDTH(C_S_AXI_ADDR_WIDTH),
.C_S_AXI_DATA_WIDTH(C_S_AXI_DATA_WIDTH), 
.C_ADDRESS_MODE(C_ADDRESS_MODE), 
.C_USE_WSTRB(C_USE_WSTRB), 
.C_DPHASE_TIMEOUT(C_DPHASE_TIMEOUT),
.C_HAS_FIXED_WAIT(C_HAS_FIXED_WAIT),
.C_HAS_RESPONSE(C_HAS_RESPONSE),
.C_FIXED_WRITE_WAIT(C_FIXED_WRITE_WAIT),
.C_FIXED_READ_WAIT(C_FIXED_READ_WAIT),
.C_HAS_FIXED_READ_LATENCY(C_HAS_FIXED_READ_LATENCY),
.C_READ_LATENCY(C_READ_LATENCY),
.C_FAMILY(C_FAMILY)
) 
I_AVA_MASTER_LITE
(
// AXI signals
.s_axi_aclk(s_axi_aclk), 
.s_axi_aresetn(s_axi_aresetn),
.s_axi_awaddr(s_axi_awaddr), 
.s_axi_awvalid(s_axi_awvalid),
.s_axi_awready(s_axi_awready), 
.s_axi_wdata(s_axi_wdata),
.s_axi_wstrb(s_axi_wstrb), 
.s_axi_wvalid(s_axi_wvalid),
.s_axi_wready(s_axi_wready), 
.s_axi_bresp(s_axi_bresp),
.s_axi_bvalid(s_axi_bvalid), 
.s_axi_bready(s_axi_bready),
.s_axi_araddr(s_axi_araddr), 
.s_axi_arvalid(s_axi_arvalid),
.s_axi_arready(s_axi_arready), 
.s_axi_rdata(s_axi_rdata),
.s_axi_rresp(s_axi_rresp), 
.s_axi_rvalid(s_axi_rvalid),
.s_axi_rready(s_axi_rready), 
// AMM signals
// AMM signals
//.avm_clk(avm_clk),    
//.avm_resetn(avm_resetn),  
.avm_address(avm_address),  
.avm_write(avm_write), 
.avm_read(avm_read), 
.avm_byteenable(avm_byteenable), 
//.avm_CS(avm_CS), 
//.avm_RdCE(avm_RdCE),   
//.avm_WrCE(avm_WrCE),   
.avm_beginbursttransfer(avm_beginbursttransfer),
.avm_writedata(avm_writedata),    
.avm_readdata(avm_readdata), 
.avm_resp(avm_resp),
.avm_readdatavalid(avm_readdatavalid),
.avm_writeresponsevalid(avm_writeresponsevalid),
.avm_waitrequest(avm_waitrequest)
);
end
endgenerate

// Full Module

generate if (C_PROTOCOL == 1) begin : AXI_FULL

axi_amm_bridge_v1_0_1_full 
#(
.C_S_AXI_ADDR_WIDTH(C_S_AXI_ADDR_WIDTH),
.C_S_AXI_DATA_WIDTH(C_S_AXI_DATA_WIDTH), 
.C_S_AXI_ID_WIDTH(C_S_AXI_ID_WIDTH),
.C_NUM_OUTSTANDING(C_NUM_OUTSTANDING),
.C_USE_WSTRB(C_USE_WSTRB), 
.C_HAS_RESPONSE(C_HAS_RESPONSE),
.C_AVM_BURST_WIDTH(C_AVM_BURST_WIDTH),
.C_BURST_LENGTH(C_BURST_LENGTH),
.C_FAMILY(C_FAMILY)
)
I_AVA_MASTER_FULL
(
// AXI signals
.s_axi_aclk(s_axi_aclk),
.s_axi_aresetn(s_axi_aresetn),
.s_axi_awid(s_axi_awid),
.s_axi_awaddr(s_axi_awaddr),
.s_axi_awlen(s_axi_awlen),
.s_axi_awsize(s_axi_awsize),
.s_axi_awburst(s_axi_awburst),
.s_axi_awvalid(s_axi_awvalid),
.s_axi_awready(s_axi_awready),
.s_axi_wdata(s_axi_wdata),
.s_axi_wstrb(s_axi_wstrb),
.s_axi_wlast(s_axi_wlast),
.s_axi_wvalid(s_axi_wvalid),
.s_axi_wready(s_axi_wready),
.s_axi_bid(s_axi_bid),
.s_axi_bresp(s_axi_bresp),
.s_axi_bvalid(s_axi_bvalid),
.s_axi_bready(s_axi_bready),
.s_axi_arid(s_axi_arid),
.s_axi_araddr(s_axi_araddr),
.s_axi_arlen(s_axi_arlen),
.s_axi_arsize(s_axi_arsize),
.s_axi_arburst(s_axi_arburst),
.s_axi_arvalid(s_axi_arvalid),
.s_axi_arready(s_axi_arready),
.s_axi_rid(s_axi_rid),
.s_axi_rdata(s_axi_rdata),
.s_axi_rresp(s_axi_rresp),
.s_axi_rlast(s_axi_rlast),
.s_axi_rvalid(s_axi_rvalid),
.s_axi_rready(s_axi_rready), 

// AMM signals
//.avm_clk(avm_clk),    
//.avm_resetn(avm_resetn),  
.avm_address(avm_address),  
.avm_write(avm_write), 
.avm_read(avm_read), 
.avm_byteenable(avm_byteenable), 
.avm_writedata(avm_writedata),    
.avm_readdata(avm_readdata), 
.avm_resp(avm_resp),
.avm_readdatavalid(avm_readdatavalid),
.avm_writeresponsevalid(avm_writeresponsevalid),
.avm_burstcount(avm_burstcount),
.avm_beginbursttransfer(avm_beginbursttransfer),
.avm_waitrequest(avm_waitrequest)
);
end
endgenerate


endmodule


