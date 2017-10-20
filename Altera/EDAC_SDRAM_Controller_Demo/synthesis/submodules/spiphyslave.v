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


/************************************************************************** 
*Module name: SPIPhy 
*Date Created: 2nd Oct 2007 
*Last Modified: 19th Nov 2007 
*Description: This is the SPIPhy top level file. Purpose is just 
*             to connect up the misoctl and mosictl.  
* 
*Limitation: Only support CPHA=1, support both CPOL settings.           
*              
*Clock crossing:  
* 
* MSB/LSB first: LSB first or MSB first 
* 
* 
*Parameter: BITS_PER_SYMBOL,  
*           SYMBOL_PER_BEAT,  
*           CPOL (Clock Polarity)  
*           CPHA (Clock Phase) 
* 
*Global Define:  
*Internal Parameter:  
* 
*CPOL and CPHA description: 
* 
* CPHA=0: First edge of Sclk is used to capture data, sent at second edge of Sclk 
*         This means that first (LSB) byte must be send out from MISO when nSS is low 
* CPHA=1: First edge of Sclk is used to send data, second edge of clock capture data 
*         (CPHA=1 is used when we need the first edge of Sclk before sending data) 
* 
* Below are data shifting and capturing timing for the 4 different mode for SPI 
* 
*    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ 
*    | SPI Mode | CPOL | CPHA | Shift Sclk edge   | Capture Sclk edge | 
*    | 0        | 0    | 0    | Falling (negedge) | Rising (posedge)  | 
*    | 1        | 0    | 1    | Rising (posedge)  | Falling (negedge) | 
*    | 2        | 1    | 0    | Rising (posedge)  | Falling (negedge) | 
*    | 3        | 1    | 1    | Falling (negedge) | Rising (posedge)  | 
*    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~          
* 
*Note: conditional synthesis is done by using "generate if, end generate"     
*************************************************************************/ 
 
/*simulation resolution*/ 
`timescale 1ps/1ps 
 
(* altera_attribute = {"-name SYNCHRONIZER_IDENTIFICATION OFF"} *) module SPIPhy( 
	/*input from MOSIctl*/ 
	mosi, 
	nss,
	stsourceready, 
	/*input from MISOctl*/ 
	stsinkvalid, 
	stsinkdata, 
	/*output from MOSIctl*/ 
	stsourcevalid, 
	stsourcedata, 
	/*output from MISOctl*/ 
	stsinkready, 
	/*tri-state from MISOctl*/ 
	miso, 
	/*spi clock*/ 
	sclk, 
	/*system clock*/ 
	sysclk, 
	/*reset*/ 
	nreset
); 
 
 
/*declare parameters*/ 
parameter  SYNC_DEPTH = 2; /*Number of synchronizer stages for clock crossing */
localparam CPOL = 0;       /*clock polarity for sclk (spi clock), default to 0*/ 
localparam CPHA = 1;       /*data capture phase for spi, default to 0, only support CPHA=1*/ 
 
/*declare input, output parameter*/ 
input mosi; 
input nss; 
input stsourceready; 
 
input stsinkvalid; 
input [7:0] stsinkdata; 
 
input sclk; 
input sysclk; 
input nreset; 
 
output stsourcevalid; 
output [7:0] stsourcedata; 
 
output stsinkready; 
inout miso; 
 
//internal wire to wire up MOSIctl and altera_avalon_st_idle_remover
wire MOSIctl_to_idle_remover_stsourcevalid;
wire idle_remover_to_MOSIctl_stsourceready;
wire [7:0] MOSIctl_to_idle_remover_stsourcedata;

//internal wire to wire up MISOctl and altera_avalon_st_idle_inserter
wire idle_inserter_to_MISOctl_stsinkvalid;
wire MISOctl_to_idle_inserter_stsinkready;
wire [7:0] idle_inserter_to_MISOctl_stsinkdata;

//internal wire to wire up idle_remover and output single pipeline stage
wire idle_remover_to_output_pipeline_stsourcevalid;
wire output_pipeline_to_idle_remover_stsourceready;
wire [7:0] idle_remover_to_output_pipeline_stsourcedata;
 
 
/*object instantiation, MOSIctl*/ 
MOSIctl SPIPhy_MOSIctl( 
	/*input*/ 
	.mosi( mosi),                     /*external input MOSI pin from SPI*/ 
	.nss( nss),                       /*external input slave select pin from SPI*/ 
	.stsourceready( idle_remover_to_MOSIctl_stsourceready),  /*ready signal from avalon st source port*/ 
	/*output*/ 
	.stsourcevalid( MOSIctl_to_idle_remover_stsourcevalid),   /*valid signal from avalon st source port*/ 
	.stsourcedata( MOSIctl_to_idle_remover_stsourcedata),     /*data bus from avalon st source port*/ 
	/*spi clock signal*/ 
	.sclk( sclk),                     /*spi clock*/ 
	/*sys clock signal*/ 
	.sysclk( sysclk), 
	/*reset*/ 
	.nreset( nreset)                  /*global reset signal*/ 
); 
defparam SPIPhy_MOSIctl.SYNC_DEPTH = SYNC_DEPTH; 
defparam SPIPhy_MOSIctl.CPOL = CPOL; 
defparam SPIPhy_MOSIctl.CPHA = CPHA; 
 
/*object instantiation MISOctl*/ 
MISOctl SPIPhy_MISOctl( 
	/*input*/ 
	.stsinkvalid( idle_inserter_to_MISOctl_stsinkvalid),      /*valid signal from Avalon ST sink port*/ 
	.stsinkdata( idle_inserter_to_MISOctl_stsinkdata),        /*data signal from Avalon ST sink port*/ 
	.nss( nss),                      /*slave select signal, active low*/ 
	/*output*/ 
	.stsinkready( MISOctl_to_idle_inserter_stsinkready),      /*ready signal connected to Avalon ST sink port*/ 
	.miso( miso),                    /*miso signal connected to SPI master component, tri-state*/ 
	/*input clk signal*/ 
	.sclk( sclk),                    /*sclk (spi clock) signal*/ 
	/*sys clock signal*/ 
	.sysclk( sysclk), 
	/*input reset*/ 
	.nreset( nreset)                 /*reset signal*/ 
);
defparam SPIPhy_MISOctl.SYNC_DEPTH = SYNC_DEPTH; 
defparam SPIPhy_MISOctl.CPOL = CPOL; 
defparam SPIPhy_MISOctl.CPHA = CPHA; 


/*object instantiation altera_avalon_idle_remover*/
spi_phy_internal_altera_avalon_st_idle_remover SPIPhy_altera_avalon_st_idle_remover(

      // Interface: clk
      .clk( sysclk),
      .reset_n( nreset),
      // Interface: ST in
      .in_ready( idle_remover_to_MOSIctl_stsourceready),
      .in_valid( MOSIctl_to_idle_remover_stsourcevalid),
      .in_data( MOSIctl_to_idle_remover_stsourcedata),

      // Interface: ST out 
      .out_ready( output_pipeline_to_idle_remover_stsourceready),
      .out_valid( idle_remover_to_output_pipeline_stsourcevalid),
      .out_data( idle_remover_to_output_pipeline_stsourcedata)
);

/*object instantiation for single stage output pipeline*/
single_output_pipeline_stage SPIPhy_single_output_pipeline_stage(
 
  .in_valid( idle_remover_to_output_pipeline_stsourcevalid),   
  .in_ready( output_pipeline_to_idle_remover_stsourceready),    
  .in_data( idle_remover_to_output_pipeline_stsourcedata),     
  .out_valid( stsourcevalid),   
  .out_ready( stsourceready),   
  .out_data( stsourcedata),    
  .clk (sysclk),          
  .reset_n( nreset)      
);


/*object instantiation altera_avalon_idle_inserter*/
spi_phy_internal_altera_avalon_st_idle_inserter SPIPhy_altera_avalon_st_idle_inserter(

      // Interface: clk
      .clk (sysclk),
      .reset_n( nreset),
      // Interface: ST in
      .in_ready( stsinkready),
      .in_valid( stsinkvalid),
      .in_data( stsinkdata),

      // Interface: ST out 
      .out_ready( MISOctl_to_idle_inserter_stsinkready),
      .out_valid( idle_inserter_to_MISOctl_stsinkvalid),
      .out_data( idle_inserter_to_MISOctl_stsinkdata)
);

 
endmodule



 
 
 
/************************************************************************** 
*Module name: MOSIctl 
*Date Created: 15 Nov 2007 
*Last Modified: 15 Nov 2007 
*Description: Transport Bytes downstream from SPI MOSI to avalon ST 
*             The SPI Master side consists of:  
              1)  MOSI,nSS,Sclk 
*             ST side consists of: 
*             2) An Avalon ST source port (ready, valid, data) 
*              
*Clock crossing: Clock crossing done using synchronizer and handshaking logic 
* 
*Limitation: Only support CPHA=1. 
* 
* MSB/LSB first: MSB first 
* 
* 
*Parameter: BITS_PER_SYMBOL,  
*           SYMBOL_PER_BEAT,  
*           CPOL (Clock Polarity) 
*           CPHA (Clock Phase) 
* 
*Global Define:  
*Internal Parameter:  
* 
*CPOL and CPHA description: 
* 
* CPHA=0: First edge of Sclk is used to capture data, sent at second edge of Sclk 
*         This means that first (LSB) byte must be send out from MISO when nSS is low 
* CPHA=1: First edge of Sclk is used to send data, second edge of clock capture data 
*         (CPHA=1 is used when we need the first edge of Sclk before sending data) 
* 
* 
* Below are data shifting and capturing timing for the 4 different mode for SPI 
* 
*    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ 
*    | SPI Mode | CPOL | CPHA | Shift Sclk edge   | Capture Sclk edge | 
*    | 0        | 0    | 0    | Falling (negedge) | Rising (posedge)  | 
*    | 1        | 0    | 1    | Rising (posedge)  | Falling (negedge) | 
*    | 2        | 1    | 0    | Rising (posedge)  | Falling (negedge) | 
*    | 3        | 1    | 1    | Falling (negedge) | Rising (posedge)  | 
*    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~          
* 
*Note: conditional synthesis is done by using "generate if, end generate"     
*************************************************************************/ 
/*simulation resolution*/ 
`timescale 1ps/1ps 
 
module MOSIctl( 
	/*input*/ 
	mosi,            /*external input MOSI pin from SPI*/ 
	nss,             /*external input slave select pin from SPI*/ 
	stsourceready,   /*ready signal from avalon st source port*/ 
	/*output*/ 
	stsourcevalid,   /*valid signal from avalon st source port*/ 
	stsourcedata,    /*data bus from avalon st source port*/ 
	/*sclk clock signal*/ 
	sclk,            /*spi clock*/ 
	/*sys clock signal*/ 
	sysclk,          /*system clock*/ 
	/*reset*/ 
	nreset           /*global reset signal*/ 
); 
 
/*local parameter*/ 
 
localparam COUNTERWIDTH = 3;          /*this is the counter width for sclk (spi clock) counter*/ 
localparam SCLKCOUNTERRESETVALUE = 7; /*when sclk counter counts to this value, it should reset to 0*/ 
localparam SCLKCOUNTERHOLDVALUE   = 6; 
localparam SCLKCOUNTERSETVALIDVALUE    = 7; 
 
parameter  SYNC_DEPTH = 2; /*Number of synchronizer stages for clock crossing */
parameter  CPOL = 0;       /*clock polarity for sclk (spi clock), default to 0*/ 
parameter  CPHA = 1;       /*data capture phase for spi, default to 0*/ 
 
/**************************end of parameter declaration******************************/ 
 
/*port direction declaration*/ 
input mosi; 
input nss; 
input stsourceready; 
 
input sclk; 
input sysclk; 
input nreset; 
 
output stsourcevalid; 
output [7:0] stsourcedata; 
 
/*************************end of port direction declaration**************************/ 
 
/*global reg declaration*/ 
wire stsourcevalid; 
(* altera_attribute = {"-name SDC_STATEMENT \"set_false_path -from [get_pins -no_case -compatibility_mode *|stsourcedata*|*] -to [get_registers *] \""} *) reg [7:0] stsourcedata; 
 
/*local reg declaration*/ 
reg [7:0] wrshiftreg;      /*shift register*/ 
 
reg [COUNTERWIDTH-1:0]  sclkpedgecounter; /*sclk positive edge counter*/ 
 
reg sendsetvalid; /*send request to set stsource valid signal high*/ 
 
/*reg for synchronizer (sys clock domain)*/ 
reg d3_stsrcvalid; 
wire stdsync_out_mosi_stsrcvalid;

/*reg for acknowledge signal, synchronizer (spi clock domain)*/ 
wire stdsync_out_mosi_ack;
 
/*wires declaration*/ 
wire spi_domain_reset;   /*asynchronous reset signal for SPI domain*/ 
wire sclk_selected;      /*choose sclk based on setting of CPOL=0 or CPOL=1*/ 
 
 
 
 
/**********************end of register declaration, start of code********************/ 
 
//assign statement for spi domain reset 
assign spi_domain_reset = (~nreset) | nss; 
 
//clock selection logic 
/*our working sclk is the CPOL=1 clk, cause it would be good to work on posedge*/ 
assign sclk_selected = (CPOL==1'b1) ? (sclk) : (~sclk);  
 
/*always block for sclk posedge counter*/ 
always @(posedge sclk_selected or posedge spi_domain_reset) begin 
	if(spi_domain_reset) sclkpedgecounter <= {COUNTERWIDTH{1'b0}}; 
	else if(sclkpedgecounter == SCLKCOUNTERRESETVALUE)  
			sclkpedgecounter <= {COUNTERWIDTH{1'b0}}; 
	else    sclkpedgecounter <= sclkpedgecounter +1'b1; 
end 
 
 
/*always block for sendsetvalid*/ 
always @(posedge sclk_selected or negedge nreset) begin 
	if(!nreset) sendsetvalid <= 1'b0; 
	else if(sclkpedgecounter == SCLKCOUNTERSETVALIDVALUE) 
			sendsetvalid <=1'b1; 
	else if(stdsync_out_mosi_ack == 1'b1) 
			sendsetvalid <=1'b0;  /*acknowledge received*/ 
	else	sendsetvalid <= sendsetvalid; 
end 
 
 
/*below are code for synchronizer (sys clock domain)*/ 
 
/* we cannot reset sendsetvalid asynchronously based on nss, as if we do  
   so, it would require a minimum TT requirement of minimum 1 SCLK to  
   allow the valid signal to propagate through 
   sadly, the current SPI master had a fixed TT of 0.5 SCLK. 
 
   So at times when we hit an invalid transaction where the ack signal got 
   lost because ack signal reset asynchronously with nss. Then the sendsetvalid 
   signal would be reset during the next transaction. 
*/  

altera_std_synchronizer #(.depth(SYNC_DEPTH)) sync_mosi_stsrcvalid (
    .clk(sysclk),
    .reset_n(nreset),
    .din(sendsetvalid),
    .dout(stdsync_out_mosi_stsrcvalid)
);

always @(posedge sysclk or negedge nreset) begin 
	if(!nreset) d3_stsrcvalid <=1'b0; 
	else d3_stsrcvalid <= stdsync_out_mosi_stsrcvalid; 
end 
 
//create one valid pulse at the sysclk domain 
assign stsourcevalid = ((~d3_stsrcvalid) & (stdsync_out_mosi_stsrcvalid)); 
 
/*below are code for synchronizer (spi clock domain)*/ 
altera_std_synchronizer #(.depth(SYNC_DEPTH)) sync_mosi_ack (
    .clk(sclk_selected),
    .reset_n(~spi_domain_reset),
    .din(stdsync_out_mosi_stsrcvalid),
    .dout(stdsync_out_mosi_ack)
);

/*always block for wrshiftreg*/ 
always @(posedge sclk_selected or posedge spi_domain_reset) begin 
	if(spi_domain_reset) wrshiftreg <= {8{1'b0}}; 
	else wrshiftreg <= {wrshiftreg[6:0], mosi}; 
end 
 
/*always block for stsourcedata*/ 
always @(posedge sclk_selected or negedge nreset) begin 
	if(!nreset) stsourcedata <= {8{1'b0}}; 
	else if(sclkpedgecounter == SCLKCOUNTERRESETVALUE ) 
			stsourcedata <= {wrshiftreg[6:0], mosi}; 
	else	stsourcedata <= stsourcedata; 
end 
 
endmodule 
 
 
/**********************Last Modified************************************* 
* 
*tng, 15 Nov 2007: First revision after discussion with Tim. 
* 
*************************************************************************/ 
 
 
 
 
 
/************************************************************************** 
*Module name: MISOctl 
*Date Created: 15th Nov 2007 
*Last Modified: 15th Nov 2007 
*Description: Transport Bytes upstream from Avalon Sink to SPI MISO 
*             ST interface.  
*             The SPI Master side consists of:  
              1)  MISO,nSS,Sclk 
*             ST side consists of: 
*             2) An Avalon ST sink port (ready, valid, data) 
*              
*Clock crossing: Clock crossing is done using synchronizer and handshaking 
*               
*LIMITATION:  CPHA=0 is not supported. No back pressure support. We assume that 
*             that data is always valid. In fact, we don't even look at the  
*             "valid" signal at all. 
* 
* MSB/LSB first: MSB first 
* 
* 
*Parameter: BITS_PER_SYMBOL,  
*           SYMBOL_PER_BEAT,  
*           CPOL (Clock Polarity) 
*           CPHA (Clock Phase) 
* 
*Global Define:  
*Internal Parameter:  
* 
*CPOL and CPHA description: 
* 
* CPHA=0: First edge of Sclk is used to capture data, sent at second edge of Sclk 
*         This means that first (LSB) byte must be send out from MISO when nSS is low 
* CPHA=1: First edge of Sclk is used to send data, second edge of clock capture data 
*         (CPHA=1 is used when we need the first edge of Sclk before sending data) 
*  
*MSB or LSB bit first description: 
* 
* LSBfirst: If this is set to 1, data will be sent out least significant bit first, 
*           else data will be sent out most significant bit first (not available yet) 
* 
* 
* Below are data shifting and capturing timing for the 4 different mode for SPI 
* 
*    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ 
*    | SPI Mode | CPOL | CPHA | Shift Sclk edge   | Capture Sclk edge | 
*    | 0        | 0    | 0    | Falling (negedge) | Rising (posedge)  | 
*    | 1        | 0    | 1    | Rising (posedge)  | Falling (negedge) | 
*    | 2        | 1    | 0    | Rising (posedge)  | Falling (negedge) | 
*    | 3        | 1    | 1    | Falling (negedge) | Rising (posedge)  | 
*    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~          
* 
*Note: conditional synthesis is done by using "generate if, end generate"     
*************************************************************************/ 
/*simulation resolution*/ 
`timescale 1ps/1ps 
 
module MISOctl( 
	/*input*/ 
	stsinkvalid,  /*valid signal from Avalon ST sink port*/ 
	stsinkdata,   /*data signal from Avalon ST sink port*/ 
	nss,          /*slave select signal, active low*/ 
	/*output*/ 
	stsinkready,       /*ready signal connected to Avalon ST sink port*/ 
	miso,         /*miso signal connected to SPI master component, tri-state*/ 
	/*input clk signal*/ 
	sclk,         /*sclk (spi clock) signal*/ 
	sysclk,       /*system clock*/ 
	/*input reset*/ 
	nreset       /*reset signal*/ 
); 
 
/*global parameter*/ 
parameter SYNC_DEPTH = 2; /*Number of synchronizer stages for clock crossing */
parameter CPOL = 0;       /*clock polarity for sclk (spi clock), default to 0*/ 
parameter CPHA = 1;       /*data capture phase for spi, default to 0*/ 
 
/*local parameter*/ 
localparam COUNTERWIDTH = 3; 
 
localparam STSINKDATALOADCOUNT = 0; /*if sclk counter counts to this value, we will send  
                                      the load signal back to stsink to indicate that it should 
                                      load the next byte*/ 
localparam COUNTERRELOADVALUE = 7;  /*if sclk counter counts to this value, reload it back to zero*/ 
localparam SCHARIDLE = 8'b01001010; /*IDLE character, 0x4a*/ 
 
/******************end of parameter declaration***************************/ 
 
/*input declaration*/ 
input stsinkvalid; 
input [7:0] stsinkdata; 
input nss; 
input sclk; /*spi clk*/ 
input sysclk; 
input nreset;      
 
/*output declaration*/ 
output stsinkready; 
/*tri-state*/ 
inout miso; 
 
/*global reg*/ 
wire stsinkready; 
/*local reg*/ 
reg [COUNTERWIDTH-1:0] sclkpedgecounter; /*spi clock positive edge counter*/ 
reg loadstsinkdata; /*this signals stsink to load the next byte*/ 
 
/*local reg for synchronizer*/ 
reg d3_stsinkready; 
wire stdsync_out_miso_stsinkready;

/*local reg for synchronizer, acknowledge signal*/ 
wire stdsync_out_miso_ack;

/*local reg for shift register*/ 
(* altera_attribute = {"-name SDC_STATEMENT \"set_false_path -from [get_pins -no_case -compatibility_mode *SPIPhy_altera_avalon_st_idle_inserter|received_esc*|*] -to [get_pins -no_case -compatibility_mode *|rdshiftreg*|*]\" "} *) reg [7:0] rdshiftreg;    
 
 
/*wires declaration*/ 
wire spi_domain_reset; /*reset signal for spi clock domain*/ 
wire sclk_selected;    /*this is the output of mux to select sclk, to cater for  
                         CPOL=0 and CPOL=1*/ 
 
 
 
/*****************end of port declaration, start of code*******************/ 
 
//clock selection logic 
assign sclk_selected = (CPOL==1'b1) ? (~sclk) : (sclk); 
 
 
//assign statement for spi domain reset 
assign spi_domain_reset = (~nreset) | nss; 
 
/*always block for sclk posedge edge counter*/ 
always @(posedge sclk_selected or posedge spi_domain_reset) begin 
	if(spi_domain_reset) sclkpedgecounter <= {COUNTERWIDTH{1'b0}}; 
	else if(sclkpedgecounter == COUNTERRELOADVALUE)    
		 sclkpedgecounter <= {COUNTERWIDTH{1'b0}}; 
	else sclkpedgecounter <= sclkpedgecounter +1'b1; 
end 
 
/*always block for loadstsinkdata*/ 
always @(posedge sclk_selected or posedge spi_domain_reset) begin 
	if(spi_domain_reset)loadstsinkdata <= 1'b0; 
	else if(sclkpedgecounter == STSINKDATALOADCOUNT) 
	      loadstsinkdata <= 1'b1; 
	else if(stdsync_out_miso_ack ==1'b1) 
	      loadstsinkdata <= 1'b0; 
	else  loadstsinkdata <= loadstsinkdata; 
end 
 
/*always block for synchronizer (stsinkready)*/ 
altera_std_synchronizer #(.depth(SYNC_DEPTH)) sync_miso_stsinkready (
    .clk(sysclk),
    .reset_n(~spi_domain_reset),
    .din(loadstsinkdata),
    .dout(stdsync_out_miso_stsinkready)
); 

/*d3 is used for pulse generation*/ 
always @(posedge sysclk or posedge spi_domain_reset) begin 
	if(spi_domain_reset) d3_stsinkready <= 1'b0; 
	else d3_stsinkready <= stdsync_out_miso_stsinkready; 
end 
 
//assign statement for pulse generation (posedge detection) 
assign stsinkready = ((~d3_stsinkready) & (stdsync_out_miso_stsinkready)); 
 
/*always block for synchronizer (acknowledge signal)*/ 
altera_std_synchronizer #(.depth(SYNC_DEPTH)) sync_miso_ack (
    .clk(sclk_selected),
    .reset_n(~spi_domain_reset),
    .din(stdsync_out_miso_stsinkready),
    .dout(stdsync_out_miso_ack)
); 

/*always block for rdshiftreg (shift register)*/ 
always @(posedge sclk_selected or posedge spi_domain_reset) begin 
	if(spi_domain_reset) rdshiftreg <= SCHARIDLE; 
	else if(sclkpedgecounter == STSINKDATALOADCOUNT)  
				rdshiftreg <= stsinkdata; 
    else        rdshiftreg <= {rdshiftreg[6:0],1'b0}; /*do the shifting*/ 
end 
 
/*assign statement for miso (tristate)*/ 
assign miso = (nss==1'b1) ? 1'bz : rdshiftreg[7]; 
 
endmodule

/**************************************************************************
*Module name: spi_phy_internal_altera_avalon_st_idle_remover
*Date Created: Nov 2007
*Last Modified: 11th Jan 2008
*Description: connected to the ST source (output) of MOSIctl. Remove IDLE 
*             character from the byte stream data
*              
*LIMITATION:  None
*****************************************************************************/

module spi_phy_internal_altera_avalon_st_idle_remover (

      // Interface: clk
      input              clk,
      input              reset_n,
      // Interface: ST in
      output reg         in_ready,
      input              in_valid,
      input      [7: 0]  in_data,

      // Interface: ST out 
      input              out_ready,
      output reg         out_valid,
      output reg [7: 0]  out_data
);

   // ---------------------------------------------------------------------
   //| Signal Declarations
   // ---------------------------------------------------------------------

   reg  received_esc;
   wire escape_char, idle_char;

   // ---------------------------------------------------------------------
   //| Thingofamagick
   // ---------------------------------------------------------------------

   assign idle_char = (in_data == 8'h4a);
   assign escape_char = (in_data == 8'h4d);

   always @(posedge clk or negedge reset_n) begin
      if (!reset_n) begin
         received_esc <= 0; 
      end else begin
         if (in_valid & in_ready) begin
            if (escape_char & ~received_esc) begin
                 received_esc <= 1;
            end else if (out_valid) begin
                 received_esc <= 0;
            end
         end
      end
   end

   always @* begin
      in_ready = out_ready;
      //out valid when in_valid.  Except when we get idle or escape
      //however, if we have received an escape character, then we are valid
      out_valid = in_valid & ~idle_char & (received_esc | ~escape_char);
      out_data = received_esc ? (in_data ^ 8'h20) : in_data;
   end
endmodule

/**************************************************************************
*Module name: spi_phy_internal_altera_avalon_st_idle_inserter
*Date Created: Nov 2007
*Last Modified: 11th Jan 2008
*Description: connected to the ST sink (input) of MISOctl. Insert IDLE 
*             character into the byte stream data
*              
*LIMITATION:  None
*****************************************************************************/

module spi_phy_internal_altera_avalon_st_idle_inserter (

      // Interface: clk
      input              clk,
      input              reset_n,
      // Interface: ST in
      output reg         in_ready,
      input              in_valid,
      input      [7: 0]  in_data,

      // Interface: ST out 
      input              out_ready,
      output reg         out_valid,
      output reg [7: 0]  out_data
);

   // ---------------------------------------------------------------------
   //| Signal Declarations
   // ---------------------------------------------------------------------

   reg  received_esc;
   wire escape_char, idle_char;

   // ---------------------------------------------------------------------
   //| Thingofamagick
   // ---------------------------------------------------------------------

   assign idle_char = (in_data == 8'h4a);
   assign escape_char = (in_data == 8'h4d);

   always @(posedge clk or negedge reset_n) begin
      if (!reset_n) begin
         received_esc <= 0; 
      end else begin
         if (in_valid & out_ready) begin
            if ((idle_char | escape_char) & ~received_esc & out_ready) begin
                 received_esc <= 1;
            end else begin
                 received_esc <= 0;
            end
         end
      end
   end

   always @* begin
      //we are always valid
      out_valid = 1'b1;
      in_ready = out_ready & (~in_valid | ((~idle_char & ~escape_char) | received_esc));
      out_data = (~in_valid) ? 8'h4a :    //if input is not valid, insert idle
                 (received_esc) ? in_data ^ 8'h20 : //escaped once, send data XOR'd
                 (idle_char | escape_char) ? 8'h4d : //input needs escaping, send escape_char
                 in_data; //send data
   end
endmodule


 /**************************************************************************
*Module name: single_output_pipeline_stage
*Date Created: Feb 2008
*Last Modified: 11th Feb 2008
*Description: Register the output of ST interface with zero out-ready latency
*LIMITATION:  None
*****************************************************************************/
module single_output_pipeline_stage (
 
  in_valid,    /*input valid signal*/
  in_ready,    /*input ready signal*/
  in_data,     /*input data signal*/
  out_valid,   /*output valid signal*/
  out_ready,   /*output ready signal*/
  out_data,    /*output data signal*/
  clk,          /*clock signal*/
  reset_n      /*reset signal*/
);

/*parameter declaration*/
parameter DATAWIDTH=8;


/*input, output declaration*/
input  clk;
input  reset_n;
input  in_valid;
output in_ready;
input  [DATAWIDTH-1:0] in_data;

output out_valid;
input  out_ready;
output [DATAWIDTH-1:0] out_data;

reg out_valid;
reg [DATAWIDTH-1:0] out_data;

/*internal wires*/
wire internal_out_ready;

/*comb logic*/
assign internal_out_ready = out_ready || (!out_valid);
assign in_ready = out_ready; /*ready signal is pass through*/

/*always block for output valid signal and data signal*/
always @(posedge clk or negedge reset_n) begin
	if(!reset_n) begin
		out_valid <=0;
	end
	else begin
		if(internal_out_ready) begin
			out_valid <= in_valid;
		end
	end
end

always @(posedge clk or negedge reset_n) begin
	if(!reset_n) begin
		out_data <= {DATAWIDTH{1'b0}};
	end
	else begin
		if(internal_out_ready) begin
			out_data <= in_data;
		end
	end
end
 

endmodule
 
/************************Last Modified*********************************** 
* tng, 15th Nov 2007: First revision after discussion with Tim. 
* tng, 11th Jan 2008: Included Idle inserter/remover into SPI slave module 
* tng, 11th Feb 2008: Added single output pipeline stage 
* khphuah, 27th Nov 2009: Retrofit spi phy with altera_std_synchronizer
*                         and added parameter for synchronizer stages
* 
*************************************************************************/ 
 
