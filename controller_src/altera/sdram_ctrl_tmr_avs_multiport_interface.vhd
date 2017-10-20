----------------------------------------------------------------------------------
-- Created By: Eleftherios Kyriakakis
-- 
-- Design Name: SDRAM Controller with SEU EDAC (Error-Detection-And-Correction) mechanisms
-- Module Name: sdram_ctrl_tmr_avs_multiport_interface - behave
-- Project Name: SEUD-MIST KTH Royal Institute Of Technology
-- Tested Devices:
-- 	FPGA: Cyclone IV, Artix-7
--	Memories:  IS42/45S16320B, IS42/45R86400D/16320D/32160D, IS42/45S86400D/16320D/32160D, IS42/45SM/RM/VM16160K 
-- Comments:
-- 	Multi-Port Avalon-MM Slave Wrapper for sdram_ctrl_tmr_top, requires sdram_ctrl_port_fixed_arbiter
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.utils_pack.all;

entity sdram_ctrl_tmr_avs_multiport_interface is
    generic(
        DATA_WIDTH : Integer := 32;
        DQM_WIDTH : Integer := 2;
        ROW_WIDTH : Integer := 13;
		COLS_WIDTH : Integer := 10;
        BANK_WIDTH : Integer := 2;
        NOP_BOOT_CYCLES : Integer := 10000; --at 50MHz covers 200us
        REF_PERIOD : Integer := 92; --refresh command every to 7.8125 microseconds (not less than 12)
		REF_COMMAND_COUNT : Integer := 8; --How many refresh commands should be issued during initialization
		REF_COMMAND_PERIOD : Integer := 8; -- at 50MHz covers 60ns (tRC Command Period)
		PRECH_COMMAND_PERIOD : Integer := 2; -- tRP Command Period PRECHARGE TO ACTIVATE/REFRESH
		ACT_TO_RW_CYCLES : Integer := 2; --tRCD Active Command To Read/Write Command Delay Time
		IN_DATA_TO_PRE : Integer := 2; --tDPL Input Data To Precharge Command Delay
        CAS_LAT_CYCLES  : Integer := 2; --based on CAS Latency setting
		MODE_REG_CYCLES : Integer := 2; --tMRD (Mode Register Set To Command Delay Time 2 cycle)
		BURST_LENGTH : Integer := 0; --SEUD requires this to be set to 0 for single accesses
		DRIVE_STRENGTH : Integer := 0; --Controls the drive strength of the output. 0(max) to 4(min)
        RAM_COLS : Integer := 1024; --A full page is 512 columns
        RAM_ROWS : Integer := 8192;
        RAM_BANKS : Integer := 4;
        TMR_COLS : Integer := 768;
		SCRUBBER_WAIT_CYCLES : Integer := 64; --should not be less than 1
		EXT_MODE_REG_EN : Boolean := TRUE;
		GEN_ERR_INJ : Boolean := FALSE
    );
    port(
        --SDRAM Interface
        cke_o : out std_logic := '0';
        bank_o : out std_logic_vector(BANK_WIDTH-1 downto 0) := (others=>'0');
        addr_o : out std_logic_vector(ROW_WIDTH-1 downto 0) := (others=>'0');
        cs_o : out std_logic := '0';
        ras_o : out std_logic := '0';
        cas_o : out std_logic := '0';
        we_o : out std_logic := '0';
        dqm_o : out std_logic_vector (DQM_WIDTH-1 DOWNTO 0) := (others=>'0');
        dataQ_io : inout std_logic_vector(DATA_WIDTH-1 downto 0) := (others=>'Z');
		
		--Debug Interface
        mem_ready_o : out std_logic := '0';
		err_detect_o : out std_logic := '0';
		err_counter_o : out std_logic_vector(DATA_WIDTH-1 downto 0) := (others=>'0');
		voted_data_o : out std_logic_vector(DATA_WIDTH-1 downto 0) := (others=>'0');
		scrubbing_proc_run_o : out std_logic := '0';
		healing_proc_run_o : out std_logic := '0';

		--Clock Interface
		rsi_reset_n : in std_logic := '1';
		csi_clock : in std_logic := '0';
        
        --Avalon Interface
        portA_address : in std_logic_vector((BANK_WIDTH+ROW_WIDTH+COLS_WIDTH-1) downto 0) := (others=>'0');
		portA_read : in std_logic := '0';
		portA_readdata : out std_logic_vector(DATA_WIDTH-1 downto 0) := (others=>'0');
		portA_write : in std_logic := '0';
		portA_byteen : in std_logic_vector((DATA_WIDTH/8)-1 downto 0) := (others=>'0');
		portA_writedata : in std_logic_vector(DATA_WIDTH-1 downto 0) := (others=>'0');
		portA_waitrequest : out std_logic := '0';
		portA_readdatavalid : out std_logic := '0';
		
		--Direct access interface
		portB_address : in std_logic_vector((BANK_WIDTH+ROW_WIDTH+COLS_WIDTH-1) downto 0) := (others=>'0');
		portB_read : in std_logic := '0';
		portB_readdata : out std_logic_vector(DATA_WIDTH-1 downto 0) := (others=>'0');
		portB_write : in std_logic := '0';
		portB_byteen : in std_logic_vector((DATA_WIDTH/8)-1 downto 0) := (others=>'0');
		portB_writedata : in std_logic_vector(DATA_WIDTH-1 downto 0) := (others=>'0');
		portB_waitrequest : out std_logic := '0';
		portB_readdatavalid : out std_logic := '0'

    );
end sdram_ctrl_tmr_avs_multiport_interface;

architecture behave of sdram_ctrl_tmr_avs_multiport_interface is

	--Avalon Interface
	signal avs_address_wire : std_logic_vector((BANK_WIDTH+ROW_WIDTH+COLS_WIDTH-1) downto 0) := (others=>'0');
	signal avs_read_wire : std_logic := '0';
	signal avs_readdata_wire : std_logic_vector(31 downto 0) := (others=>'0');
	signal avs_write_wire : std_logic := '0';
	signal avs_writedata_wire : std_logic_vector(31 downto 0) := (others=>'0');
	signal avs_waitrequest_wire : std_logic := '0';
	signal avs_readdatavalid_wire : std_logic := '0';

begin

fixed_prio_arbiter_inst: entity work.avs_dualport_fixed_arbiter	
	generic map(
        DATA_WIDTH=>DATA_WIDTH,
        DQM_WIDTH=>DQM_WIDTH,
        ROW_WIDTH=>ROW_WIDTH,
		COLS_WIDTH=>COLS_WIDTH,
        BANK_WIDTH=>BANK_WIDTH
    )
	port map(
		--Global
		clk=>csi_clock,
		rstn=>rsi_reset_n,
		--Avalon Interface
        portA_address=>portA_address,
		portA_read=>portA_read,
		portA_readdata=>portA_readdata,
		portA_write=>portA_write,
		--portA_byteen : in std_logic_vector((DATA_WIDTH/8)-1 downto 0) := (others=>'0');
		portA_writedata=>portA_writedata,
		portA_waitrequest=>portA_waitrequest,
		portA_readdatavalid=>portA_readdatavalid,
		
		--Direct access interface
		portB_address=>portB_address,
		portB_read=>portB_read,
		portB_readdata=>portB_readdata,
		portB_write=>portB_write,
		--portB_byteen : in std_logic_vector((DATA_WIDTH/8)-1 downto 0) := (others=>'0');
		portB_writedata=>portB_writedata,
		portB_waitrequest=>portB_waitrequest,
		portB_readdatavalid=>portB_readdatavalid,

		--Arbitrated access signals
 		ram_address=>avs_address_wire,
 		ram_read=>avs_read_wire,
 		ram_readdata=>avs_readdata_wire,
 		ram_write=>avs_write_wire,
 		--arb_byteen : out std_logic_vector((DATA_WIDTH/8)-1 downto 0) := (others=>'0');
 		ram_writedata=>avs_writedata_wire,
 		ram_waitrequest=>avs_waitrequest_wire,
 		ram_readdatavalid=>avs_readdatavalid_wire
	); 

avs_interface_inst: entity work.sdram_ctrl_tmr_avs_interface
generic map(
	DATA_WIDTH => DATA_WIDTH,
	DQM_WIDTH => DQM_WIDTH,
	ROW_WIDTH => ROW_WIDTH,
	COLS_WIDTH => COLS_WIDTH,
	BANK_WIDTH => BANK_WIDTH,
	NOP_BOOT_CYCLES => NOP_BOOT_CYCLES,
	REF_PERIOD => REF_PERIOD,
	REF_COMMAND_COUNT => REF_COMMAND_COUNT,
	REF_COMMAND_PERIOD => REF_COMMAND_PERIOD,
	PRECH_COMMAND_PERIOD => PRECH_COMMAND_PERIOD,
	ACT_TO_RW_CYCLES => ACT_TO_RW_CYCLES,
	IN_DATA_TO_PRE => IN_DATA_TO_PRE,
	CAS_LAT_CYCLES => CAS_LAT_CYCLES,
	MODE_REG_CYCLES => MODE_REG_CYCLES,
	BURST_LENGTH => BURST_LENGTH,
	DRIVE_STRENGTH => DRIVE_STRENGTH,
	RAM_COLS => RAM_COLS,
	RAM_ROWS => RAM_ROWS,
	RAM_BANKS => RAM_BANKS,
	TMR_COLS => TMR_COLS,
	EXT_MODE_REG_EN => EXT_MODE_REG_EN,
	SCRUBBER_WAIT_CYCLES => SCRUBBER_WAIT_CYCLES,
	GEN_ERR_INJ => GEN_ERR_INJ
)
port map(
	--SDRAM Interface
	cke_o=>cke_o,
	bank_o=>bank_o,
	addr_o=>addr_o,
	cs_o=>cs_o,
	ras_o=>ras_o,
	cas_o=>cas_o,
	we_o=>we_o,
	dqm_o=>dqm_o,
	dataQ_io=>dataQ_io,
	
	--Debug Interface
	mem_ready_o=>mem_ready_o,
	err_detect_o=>err_detect_o,
	err_counter_o=>err_counter_o,
	voted_data_o=>voted_data_o,
	scrubbing_proc_run_o=>scrubbing_proc_run_o,
	healing_proc_run_o=>healing_proc_run_o,

	--Global Interface
	rsi_reset_n=>rsi_reset_n,
	csi_clock=>csi_clock,

	--Avalon Interface
	avs_address=>avs_address_wire,
	avs_read=>avs_read_wire,
	avs_readdata=>avs_readdata_wire,
	avs_write=>avs_write_wire,
	avs_writedata=>avs_writedata_wire,
	avs_waitrequest=>avs_waitrequest_wire,
	avs_readdatavalid=>avs_readdatavalid_wire
	
);

end behave;
