----------------------------------------------------------------------------------
-- Created By: Eleftherios Kyriakakis
-- 
-- Design Name: SDRAM Controller with SEU EDAC (Error-Detection-And-Correction) mechanisms
-- Module Name: sdram_ctrl_tmr_ahblite_interface - behave
-- Project Name: SEUD-MIST KTH Royal Institute Of Technology
-- Tested Devices:
-- 	FPGA: Cyclone IV, Artix-7
--	Memories:  IS42/45S16320B, IS42/45R86400D/16320D/32160D, IS42/45S86400D/16320D/32160D, IS42/45SM/RM/VM16160K 
-- Comments:
-- 	Currently supports only single data rate r/w accesses with no burst mode.
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity sdram_ctrl_tmr_ahblite_interface is
    generic(
        DATA_WIDTH : Integer := 32;
        DQM_WIDTH : Integer := 2;
        ROW_WIDTH : Integer := 13;
		COLS_WIDTH : Integer := 9;
        BANK_WIDTH : Integer := 2;
        NOP_BOOT_CYCLES : Integer := 20000; --at 50MHz covers 200us
        REF_PERIOD : Integer := 32; --refresh command every to 7.8125 microseconds
		REF_COMMAND_COUNT : Integer := 8; --How many refresh commands should be issued during initialization
		REF_COMMAND_PERIOD : Integer := 8; -- at 50MHz covers 60ns (tRC Command Period)
		PRECH_COMMAND_PERIOD : Integer := 2; -- tRP Command Period PRECHARGE TO ACTIVATE/REFRESH
		ACT_TO_RW_CYCLES : Integer := 2; --tRCD Active Command To Read/Write Command Delay Time
		IN_DATA_TO_PRE : Integer := 2; --tDPL Input Data To Precharge Command Delay
        CAS_LAT_CYCLES  : Integer := 2; --based on CAS Latency setting
		MODE_REG_CYCLES : Integer := 2; --tMRD (Mode Register Set To Command Delay Time 2 cycle)
		BURST_LENGTH : Integer := 0; --SEUD requires this to be set to 0 for single accesses
		DRIVE_STRENGTH : Integer := 0; --Controls the drive strength of the output. 0(max) to 4(min)
        RAM_COLS : Integer := 512; --A full page is 512 columns
        RAM_ROWS : Integer := 8192;
        RAM_BANKS : Integer := 4;
        TMR_COLS : Integer := 768;
		SCRUBBER_WAIT_CYCLES : Integer := 64;
		EXT_MODE_REG_EN : Boolean := FALSE;
		GEN_ERR_INJ : Boolean := TRUE
    );
    port(
        --SDRAM Interface
        clk_o	: out std_logic := '0';
        cke_o	: out std_logic := '0';
        bank_o	: out std_logic_vector(BANK_WIDTH-1 downto 0) := (others=>'0');
        addr_o	: out std_logic_vector(ROW_WIDTH-1 downto 0) := (others=>'0');
        cs_o	: out std_logic := '0';
        ras_o	: out std_logic := '0';
        cas_o	: out std_logic := '0';
        we_o	: out std_logic := '0';
        dqm_o	: out std_logic_vector (DQM_WIDTH-1 DOWNTO 0) := (others=>'0');
        dataQ_io	: inout std_logic_vector(DATA_WIDTH-1 downto 0) := (others=>'Z');
		
		--Debug Interface
		err_detect_o	: out std_logic := '0';
		err_counter_o	: out std_logic_vector(DATA_WIDTH-1 downto 0) := (others=>'0');
		voted_data_o	: out std_logic_vector(DATA_WIDTH-1 downto 0) := (others=>'0');
		scrubbing_proc_run_o	: out std_logic := '0';
		healing_proc_run_o		: out std_logic := '0';
        
        --AHB-Lite Interface
        --master generated signals
        HCLK	: in std_logic := '0';	--Clock rising edge for all transfers
		HRESETn : in std_logic := '1';	--Reset active Low. Directly connected to the system bus reset signal
		HADDR	: in std_logic_vector((BANK_WIDTH+ROW_WIDTH+COLS_WIDTH-1) downto 0) := (others=>'0');	--Address upto 32bits driven by the peripheral bus bridge unit
		HBURST	: in std_logic_vector(2 downto 0) := (others=>'0');
		HMASTLOCK	: in std_logic := '0';	--When HIGH indicates that the current transfer is a locked sequence
		HPROT	: in std_logic_vector(3 downto 0) := (others=>'0');
		HSIZE	: in std_logic_vector(2 downto 0) := (others=>'0');
		HTRANS	: in std_logic_vector(1 downto 0) := (others=>'0');
		HWDATA	: in std_logic_vector(DATA_WIDTH-1 downto 0) := (others=>'0');	--Write data driven by the bridge unit during write cycles. Upto 32bits
		HWRITE	: in std_logic := '0';	--Write when High, Read when Low.
		--decoder
		HSEL	: in std_logic := '0';
		--mux
		HREADY : In std_logic := '0';
		--slave generated
		HRDATA	: out std_logic_vector(DATA_WIDTH-1 downto 0) := (others=>'0');	--Read data driven by slave during read cycles. Upto 32bits
		HREADYOUT	: out std_logic := '0';	--Ready. The slave uses this signal with LOW to extend an AHB transfer.
		HRESP	: out std_logic := '0'	--LOW indicates that the transfer status is OKAY otherwise ERROR.
	);	
end sdram_ctrl_tmr_ahblite_interface;

architecture behave of sdram_ctrl_tmr_ahblite_interface is
	
	component sdram_ctrl_tmr_avalon_interface is
    generic(
        DATA_WIDTH : Integer := 32;
        DQM_WIDTH : Integer := 4;
        ROW_WIDTH : Integer := 13;
		COLS_WIDTH : Integer := 10;
        BANK_WIDTH : Integer := 2;
        NOP_BOOT_CYCLES : Integer := 10000; --at 50MHz covers 200us
        REF_PERIOD : Integer := 180; --refresh command every to 7.8125 microseconds
		REF_COMMAND_COUNT : Integer := 8; --How many refresh commands should be issued during initialization
		REF_COMMAND_PERIOD : Integer := 8; -- at 50MHz covers 60ns (tRC Command Period)
		PRECH_COMMAND_PERIOD : Integer := 2; -- tRP Command Period PRECHARGE TO ACTIVATE/REFRESH
		ACT_TO_RW_CYCLES : Integer := 2; --tRCD Active Command To Read/Write Command Delay Time
		IN_DATA_TO_PRE : Integer := 2; --tDPL Input Data To Precharge Command Delay
        CAS_LAT_CYCLES  : Integer := 3; --based on CAS Latency setting
		MODE_REG_CYCLES : Integer := 2; --tMRD (Mode Register Set To Command Delay Time 2 cycle)
		BURST_LENGTH : Integer := 0; --SEUD requires this to be set to 0 for single accesses
		DRIVE_STRENGTH : Integer := 0; --Controls the drive strength of the output. 0(max) to 4(min)
        RAM_COLS : Integer := 1024; --A full page is 512 columns
        RAM_ROWS : Integer := 8192;
        RAM_BANKS : Integer := 4;
        TMR_COLS : Integer := 768;
		SCRUBBER_WAIT_CYCLES : Integer := 339;
		EXT_MODE_REG_EN : Boolean := FALSE;
		GEN_ERR_INJ : Boolean := TRUE
    );
    port(
        --SDRAM Interface
        clk_o : out std_logic := '0';
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
		err_detect_o : out std_logic := '0';
		err_counter_o : out std_logic_vector(DATA_WIDTH-1 downto 0) := (others=>'0');
		voted_data_o : out std_logic_vector(DATA_WIDTH-1 downto 0) := (others=>'0');
		scrubbing_proc_run_o : out std_logic := '0';
		healing_proc_run_o : out std_logic := '0';
        
        --Avalon Interface
        avs_address : in std_logic_vector((BANK_WIDTH+ROW_WIDTH+COLS_WIDTH-1) downto 0) := (others=>'0');
		avs_read : in std_logic := '0';
		avs_readdata : out std_logic_vector(DATA_WIDTH-1 downto 0) := (others=>'0');
		avs_write : in std_logic := '0';
		avs_writedata : in std_logic_vector(DATA_WIDTH-1 downto 0) := (others=>'0');
		avs_waitrequest : out std_logic := '0';
		rsi_reset_n : in std_logic := '1';
		csi_clock : in std_logic := '0'
    );
	end component;
	
	type apb3_fsm_type is
	(
		ST_IDLE,
		ST_SETUP,
		ST_ACCESS
	);
	signal current_state : apb3_fsm_type := ST_IDLE;
	signal next_state : apb3_fsm_type;
	--apb3 signals
	--signal current_pready, next_pready : std_logic := '0';
	--signal current_prdata, next_prdata : std_logic_vector(DATA_WIDTH-1 downto 0) := (others>'0');
	--signal current_slverr, next_slverr : std_logic := '0';
	--avalon signals
    signal avs_address : std_logic_vector((BANK_WIDTH+ROW_WIDTH+COLS_WIDTH-1) downto 0) := (others=>'0');
	signal avs_read : std_logic := '0';
	signal avs_readdata : std_logic_vector(DATA_WIDTH-1 downto 0) := (others=>'0');
	signal avs_write : std_logic := '0';
	signal avs_writedata : std_logic_vector(DATA_WIDTH-1 downto 0) := (others=>'0');
	signal avs_waitrequest : std_logic := '0';
	signal rsi_reset_n : std_logic := '1';
	signal csi_clock : std_logic := '0';
	
begin

csi_clock <= HCLK;
rsi_reset_n <= HRESETn;
avs_address <= HADDR((COLS_WIDTH+ROW_WIDTH+BANK_WIDTH+3)-1 downto 0);
avs_writedata <= HWDATA;
avs_write <= HWRITE and HSEL and HREADY;
avs_read <= not(HWRITE) and HSEL and HREADY;
HRDATA <= avs_readdata;
HREADYOUT <= not(avs_waitrequest);

register_fsm: process(HCLK, HRESETn)
begin
	if HRESETn = '0' then
		--apb3 signals
		current_state <= ST_IDLE;
	elsif rising_edge(HCLK) then
		--apb3 signals
		current_state <= next_state;
	end if;
end process;

fsm_logic: process(current_state, HSEL, HADDR, HWDATA, HWRITE, avs_waitrequest)
begin
	next_state <= current_state;
	case current_state is
		when ST_IDLE=>
			HRESP <= '0';
			if HSEL='1' and HREADY='1' then
				next_state <= ST_SETUP;
			end if;
		when ST_ACCESS=>
			HRESP <= '0';
			if avs_waitrequest = '0' then
				next_state <= ST_IDLE;
			end if;
		when others=>
			next_state <= ST_IDLE;
			HRESP <= '1';
	end case;
end process;

sdram_ctrl_0: sdram_ctrl_tmr_avalon_interface 
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
	SCRUBBER_WAIT_CYCLES => SCRUBBER_WAIT_CYCLES,
	EXT_MODE_REG_EN => EXT_MODE_REG_EN,
	GEN_ERR_INJ => GEN_ERR_INJ
)
port map(
	--SDRAM Interface
	clk_o => clk_o,
	cke_o => cke_o,
	bank_o => bank_o,
	addr_o => addr_o,
	cs_o => cs_o,
	ras_o => ras_o,
	cas_o => cas_o,
	we_o => we_o,
	dqm_o => dqm_o,
	dataQ_io => dataQ_io,
	
	--Debug Interface
	err_detect_o => err_detect_o,
	err_counter_o => err_counter_o,
	voted_data_o => voted_data_o,
	scrubbing_proc_run_o => scrubbing_proc_run_o,
	healing_proc_run_o => healing_proc_run_o,
	
	--Avalon Interface
	avs_address => avs_address,
	avs_read => avs_read,
	avs_readdata => avs_readdata,
	avs_write => avs_write,
	avs_writedata => avs_writedata,
	avs_waitrequest => avs_waitrequest,
	rsi_reset_n => rsi_reset_n,
	csi_clock => csi_clock
);

end behave;