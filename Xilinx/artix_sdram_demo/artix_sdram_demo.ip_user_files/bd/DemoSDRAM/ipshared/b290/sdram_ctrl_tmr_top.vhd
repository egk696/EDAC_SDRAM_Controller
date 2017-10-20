----------------------------------------------------------------------------------
-- Company: KTH Department of Electronics
-- Engineer: Lefteris Kyriakakis
-- 
-- Create Date: 01/22/2016 08:26:19 PM
-- Design Name: SDRAM SDR Controller with SEU mitigation mechanisms
-- Module Name: sdram_ctrl_tmr_top - behave
-- Project Name: SEUD
-- Target Devices:
-- 	Boards: Artix-7, DE2-115
--		Memories: IS42/45R86400D/16320D/32160D, IS42/45S86400D/16320D/32160D, IS42/45SM/RM/VM16160K 
-- Comments:
-- 	Requires sdram_ctrl_tmr.vhd, tmr_voter.vhd
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity sdram_ctrl_tmr_top is
  generic(
        DATA_WIDTH : Integer := 16;
        DQM_WIDTH : Integer := 4;
        ROW_WIDTH : Integer := 13;
		COLS_WIDTH : Integer := 9;
        BANK_WIDTH : Integer := 2;
        NOP_BOOT_CYCLES : Integer := 10000; --at 50MHz covers 200us
        REF_PERIOD : Integer := 390; --refresh command every to 7.8125 microseconds
		REF_COMMAND_COUNT : Integer := 2; --How many refresh commands should be issued during initialization
		REF_COMMAND_PERIOD : Integer := 8; -- at 50MHz covers 60ns (tRC Command Period)
		PRECH_COMMAND_PERIOD : Integer := 2; -- tRP Command Period PRECHARGE TO ACTIVATE/REFRESH
		ACT_TO_RW_CYCLES : Integer := 2; --tRCD Active Command To Read/Write Command Delay Time
		IN_DATA_TO_PRE : Integer := 2; --tDPL Input Data To Precharge Command Delay
        CAS_LAT_CYCLES  : Integer := 2; --based on CAS Latency setting
		MODE_REG_CYCLES : Integer := 2; --tMRD (Mode Register Set To Command Delay Time 2 cycle)
		BURST_LENGTH : Integer := 0; --SEUD requires this to be set to 0 for single accesses
		DRIVE_STRENGTH : Integer := 0; --Controls the drive strength of the output. 0(max) to 4(min)
        RAM_COLS : Integer := 512;
        RAM_ROWS : Integer := 8192;
        RAM_BANKS : Integer := 4;
        TMR_COLS : Integer := 768;
        SCRUBBER_WAIT_CYCLES : Integer := 4; --should not be less than 1
		EXT_MODE_REG_EN : Boolean := TRUE;
        GEN_ERR_INJ : Boolean := TRUE
    ); 
	PORT (
		 --SDRAM Interface
        cke_o : out std_logic := '1';
        bank_o : out std_logic_vector(BANK_WIDTH-1 downto 0)    := (others=>'0');
        addr_o : out std_logic_vector(ROW_WIDTH-1 downto 0)     := (others=>'0');
        cs_o : out std_logic := '1';
        ras_o : out std_logic := '1';
        cas_o : out std_logic := '1';
        we_o : out std_logic := '1';
        dqm_o : out std_logic_vector (DQM_WIDTH-1 DOWNTO 0) := (others=>'1');
        dataQ_io : inout std_logic_vector(DATA_WIDTH-1 downto 0) := (others=>'0');
        
        --Testing interface
        en_scrubbing_i : in std_logic := '1';
        en_err_test_i : in std_logic := '0';
		err_detect_o : out std_logic := '0';
		err_counter_o : out std_logic_vector(DATA_WIDTH-1 downto 0);
		rst_err_counter_i : in std_logic := '0';
		scrubbing_proc_run : out std_logic := '0';
		healing_proc_run : out std_logic := '0';
        
        --Controller Interface
        rstn_i : in std_logic := '1';
        clk_i : in std_logic := '0';
        wr_req_i : in std_logic := '0';
        rd_req_i : in std_logic := '0';
        wr_data_i : in std_logic_vector(DATA_WIDTH-1 downto 0) := (others=>'0');
        rw_addr_i : in std_logic_vector((BANK_WIDTH+ROW_WIDTH+COLS_WIDTH-1)-1 downto 0) := (others=>'0');
        wr_grnt_o : out std_logic := '0';
        rd_grnt_o : out std_logic := '0';
        rd_data_o : out std_logic_vector(DATA_WIDTH-1 downto 0) := (others=>'0');
        wr_op_done_o : out std_logic := '0';
		rd_op_done_o : out std_logic := '0';
        mem_ready_o : out std_logic := '0';
        ctrl_state_o : out std_logic_vector(26 downto 0) := (others=>'0')
	);
end sdram_ctrl_tmr_top;

architecture behave of sdram_ctrl_tmr_top is
attribute keep_hierarchy : string;
attribute keep_hierarchy of behave : architecture is "yes";
component sdram_ctrl_tmr
    generic(
        DATA_WIDTH : Integer;
        DQM_WIDTH : Integer;
        ROW_WIDTH : Integer;
		COLS_WIDTH : Integer;
        BANK_WIDTH : Integer;
        NOP_BOOT_CYCLES : Integer;
        REF_PERIOD : Integer;
		REF_COMMAND_COUNT : Integer;
		REF_COMMAND_PERIOD : Integer;
		PRECH_COMMAND_PERIOD : Integer;
		ACT_TO_RW_CYCLES : Integer;
		IN_DATA_TO_PRE : Integer;
        CAS_LAT_CYCLES  : Integer;
		MODE_REG_CYCLES : Integer;
		BURST_LENGTH : Integer;
		DRIVE_STRENGTH : Integer;
        RAM_COLS : Integer;
        RAM_ROWS : Integer;
        RAM_BANKS : Integer;
        TMR_COLS : Integer;
		EXT_MODE_REG_EN : Boolean
    );
    port(
        --SDRAM Interface
        cke_o : out std_logic := '1';
        bank_o : out std_logic_vector(BANK_WIDTH-1 downto 0)    := (others=>'0');
        addr_o : out std_logic_vector(ROW_WIDTH-1 downto 0)     := (others=>'0');
        cs_o : out std_logic := '1';
        ras_o : out std_logic := '1';
        cas_o : out std_logic := '1';
        we_o : out std_logic := '1';
        dqm_o : out std_logic_vector (DQM_WIDTH-1 DOWNTO 0) := (others=>'1');
        dataQ_io : inout std_logic_vector(DATA_WIDTH-1 downto 0) := (others=>'0');
        
        --Controller Interface
        rstn_i : in std_logic := '1';
        clk_i : in std_logic := '0';
        wr_req_i : in std_logic := '0';
        rd_req_i : in std_logic := '0';
        wr_data_i : in std_logic_vector(DATA_WIDTH-1 downto 0) := (others=>'0');
        rw_addr_i : in std_logic_vector((COLS_WIDTH+ROW_WIDTH+BANK_WIDTH)-1 downto 0) := (others=>'0');
        wr_grnt_o : out std_logic := '0';
        rd_grnt_o : out std_logic := '0';
        rd_data_o_1 : out std_logic_vector(DATA_WIDTH-1 downto 0) := (others=>'0');
		rd_data_o_2 : out std_logic_vector(DATA_WIDTH-1 downto 0) := (others=>'0');
		rd_data_o_3 : out std_logic_vector(DATA_WIDTH-1 downto 0) := (others=>'0');
		rw_addr_feedback_o : out std_logic_vector((COLS_WIDTH+ROW_WIDTH+BANK_WIDTH)-1 downto 0) := (others=>'0');
        wr_op_done_o : out std_logic := '0';
		rd_op_done_o : out std_logic := '0'; 
        rd_tmr_vote_o : out std_logic := '0';
        mem_ready_o : out std_logic := '0';
        ctrl_state_o : out std_logic_vector(26 downto 0) := (others=>'0')
    );
end component sdram_ctrl_tmr;

component tmr_address_mask is
    generic(
        DATA_WIDTH : Integer;
        DQM_WIDTH : Integer;
        ROW_WIDTH : Integer;
        COLS_WIDTH : Integer;
        BANK_WIDTH : Integer;
        COLS_LIMIT : Integer;
        ROWS_LIMIT : Integer;
        BANKS_LIMIT : Integer
    );
    port(
        cpu_rw_addr : in std_logic_vector((BANK_WIDTH+ROW_WIDTH+COLS_WIDTH-1)-1 downto 0) := (others=>'0'); --is smaller as the high bit cause is shifted in the LSB of actual
        mask_rw_addr : out std_logic_vector((BANK_WIDTH+ROW_WIDTH+COLS_WIDTH)-1 downto 0) := (others=>'0') --is bigger due to shift
    );
end component;

component tmr_voter is
	generic(
        DATA_WIDTH : Integer;
        GEN_ERR_INJ : Boolean
    );
	port(
		clk_i : in std_logic := '0';
    	en_i : in std_logic := '0';
    	en_err_test_i : in std_logic := '0';
		rd_data_1_i, rd_data_2_i, rd_data_3_i : in std_logic_vector(DATA_WIDTH-1 downto 0) := (others=>'0');
    	voted_data_o : out std_logic_vector(DATA_WIDTH-1 downto 0) := (others=>'0');
		err_count_o : out std_logic_vector(DATA_WIDTH-1 downto 0) := (others=>'0')
    );
end component tmr_voter;

component sdram_ctrl_tmr_healer is
  generic(
        DATA_WIDTH : Integer;
        DQM_WIDTH : Integer;
        ROW_WIDTH : Integer;
		COLS_WIDTH : Integer;
        BANK_WIDTH : Integer;
        RAM_COLS : Integer;
        RAM_ROWS : Integer;
        RAM_BANKS : Integer;
        TMR_COLS : Integer
    ); 
	PORT (
		rstn_i : in std_logic;
        clk_i : in std_logic;
        mem_ready_i : in std_logic;
        wr_grnt_i : in std_logic;
        wr_done_i : in std_logic;
      	rst_err_counter_i : in std_logic;
        voted_error_count_i: in std_logic_vector(DATA_WIDTH-1 downto 0);
        voted_data_i : in std_logic_vector(DATA_WIDTH-1 downto 0);
        feedback_addr_i : in std_logic_vector((COLS_WIDTH+ROW_WIDTH+BANK_WIDTH)-1 downto 0);
        healing_o : out std_logic;
        healing_wr_req_o : out std_logic;
        healing_addr_o : out std_logic_vector((COLS_WIDTH+ROW_WIDTH+BANK_WIDTH)-1 downto 0);
        healing_data_o : out std_logic_vector(DATA_WIDTH-1 downto 0);
        healing_state_o : out std_logic_vector(2 downto 0);
        error_count_o : out std_logic_vector(DATA_WIDTH-1 downto 0)
	);
end component;

component sdram_ctrl_tmr_scrubber is
  generic(
        DATA_WIDTH : Integer;
        DQM_WIDTH : Integer;
        ROW_WIDTH : Integer;
		COLS_WIDTH : Integer;
        BANK_WIDTH : Integer;
        RAM_COLS : Integer;
        RAM_ROWS : Integer;
        RAM_BANKS : Integer;
        TMR_COLS : Integer;
		SCRUBBER_WAIT_CYCLES : Integer
    ); 
	PORT (
		rstn_i : in std_logic;
        clk_i : in std_logic;
        en_i : in std_logic;
        mem_ready_i : in std_logic;
        rd_grnt_i : in std_logic;
        rd_done_i : in std_logic;
        scrub_rd_req_o : out std_logic;
        scrubbing_o : out std_logic;
        scrubbing_addr_o : out std_logic_vector((COLS_WIDTH+ROW_WIDTH+BANK_WIDTH)-1 downto 0);
        scrubbing_state_o : out std_logic_vector(2 downto 0)
	);
end component;

component tmr_fsm_watchdog is
    generic(
        RST_POLARITY : Std_logic;
        EXCLUDE_STATE : std_logic_vector;
        FSM_WIDTH : Integer;
        DATA_WIDTH : Integer;
        COUNT_WIDTH : Integer
    );
    port(
        clk_i : in std_logic;
        rstn_i : in std_logic;
        fsm_state_i : in std_logic_vector(FSM_WIDTH-1 downto 0);
        rst_fsm_o : out std_logic;
        err_detect_o : out std_logic
    );
end component;

type tmr_std_logic_buffer is array (0 to 2) of std_logic_vector(DATA_WIDTH-1 downto 0);

--internal scrubber/healer signals
signal heal_wr_req_int  : std_logic := '0';
signal scrub_rd_req_int  : std_logic := '0';
signal heal_wr_data_int : std_logic_vector(DATA_WIDTH-1 downto 0) := (others=>'0');
signal scrubbing_addr_int, healing_addr_int : std_logic_vector((COLS_WIDTH+ROW_WIDTH+BANK_WIDTH)-1 downto 0) := (others=>'0');
signal healing_state_int, scrubbing_state_int : std_logic_vector(2 downto 0) := (others=>'0');

--control the controller signals
signal rw_addr_int, mask_rw_addr_int : std_logic_vector((COLS_WIDTH+ROW_WIDTH+BANK_WIDTH)-1 downto 0) := (others=>'0');
signal feedback_addr_int : std_logic_vector((COLS_WIDTH+ROW_WIDTH+BANK_WIDTH)-1 downto 0) := (others=>'0');
signal wr_data_int : std_logic_vector(DATA_WIDTH-1 downto 0) := (others=>'0');
signal rd_data_int : tmr_std_logic_buffer := (others=>(others=>'0'));
signal wr_req_int, wr_grnt_int, wr_done_int : std_logic := '0';
signal rd_req_int, rd_grnt_int, rd_done_int : std_logic := '0';
signal mem_ready_int : std_logic := '0';
signal rd_tmr_vote_int : std_logic := '1';
signal ctrl_state_int : std_logic_vector(26 downto 0) := (others=>'0');

--voter/error logic
signal scrubbing_int, healing_int : std_logic := '0';
signal voted_data_int : std_logic_vector(DATA_WIDTH-1 downto 0) := (others=>'0');
signal voted_data_errors_int : std_logic_vector(DATA_WIDTH-1 downto 0) := (others=>'0');
signal en_err_test_int : std_logic := '0';
signal en_scrubbing_int : std_logic := '0';
signal en_voting_int : std_logic := '0';

--watchdog signals
--signal wdt_ctrl_rst : std_logic := '1';
--signal wdt_heal_rst : std_logic := '1';
--signal wdt_scrub_rst : std_logic := '1'; 
--signal wdt_ctrl_err : std_logic := '0';
--signal wdt_heal_err : std_logic := '0';
--signal wdt_scrub_err : std_logic := '0';

begin

--modified input signals
wr_req_int <= heal_wr_req_int when healing_int='1' else wr_req_i and not(scrubbing_int);
rd_req_int <= scrub_rd_req_int when scrubbing_int='1' else rd_req_i and not(healing_int);
wr_data_int <= heal_wr_data_int when healing_int='1' else wr_data_i;
rw_addr_int <= healing_addr_int when healing_int='1' else 
				scrubbing_addr_int when scrubbing_int='1' else mask_rw_addr_int;

--healing scrubbing
en_err_test_int <= en_err_test_i when GEN_ERR_INJ=TRUE else '0';
en_scrubbing_int <= en_scrubbing_i and not(healing_int) and not(rd_req_i) and not(rd_grnt_int) and not(wr_req_i) and not(wr_grnt_int); --only scrub if system is idle, no external requests
en_voting_int <= rd_done_int and rd_tmr_vote_int;

--output overriden signals
rd_op_done_o <= '0' when scrubbing_int='1' else rd_done_int;	--hide internal rd_op_done from the users when scrubbing
rd_grnt_o <= '0' when scrubbing_int='1' else rd_grnt_int;		--hide internal rd_grnt from the users when scrubbing
wr_op_done_o <= '0' when healing_int='1' else wr_done_int;		--hide internal wr_op_done from the users when healing 
wr_grnt_o <= '0' when healing_int='1' else wr_grnt_int;			--hide internal wr_grnt from the users when healing
err_detect_o <= '1' when unsigned(voted_data_errors_int) > 0 else '0';	--boolean: error detected at the current read/scrub
rd_data_o <= voted_data_int;	--voted data out
mem_ready_o <= mem_ready_int;	--booelan: memory is ready
scrubbing_proc_run <= scrubbing_int;	--boolean: scrubbing is running
healing_proc_run <= healing_int;		--boolean: healing is running
ctrl_state_o <= ctrl_state_int;

tmr_address_mask_inst: tmr_address_mask 
generic map(
    DATA_WIDTH => DATA_WIDTH,
    DQM_WIDTH => DQM_WIDTH,
    ROW_WIDTH => ROW_WIDTH,
    COLS_WIDTH => COLS_WIDTH,
    BANK_WIDTH => BANK_WIDTH,
    COLS_LIMIT => RAM_COLS,
    ROWS_LIMIT => RAM_ROWS,
    BANKS_LIMIT => RAM_BANKS
)
port map(cpu_rw_addr=>rw_addr_i, mask_rw_addr=>mask_rw_addr_int);

--instantiate components
sdram_ctrl_tmr_scrubber_inst: sdram_ctrl_tmr_scrubber
generic map(
    DATA_WIDTH => DATA_WIDTH,
    DQM_WIDTH => DQM_WIDTH,
    ROW_WIDTH => ROW_WIDTH,
	COLS_WIDTH => COLS_WIDTH,
    BANK_WIDTH => BANK_WIDTH,
    RAM_COLS => RAM_COLS,
    RAM_ROWS => RAM_ROWS,
    RAM_BANKS => RAM_BANKS,
    TMR_COLS => TMR_COLS,
	 SCRUBBER_WAIT_CYCLES => SCRUBBER_WAIT_CYCLES
)
port map (
	rstn_i => rstn_i,
    clk_i => clk_i,
    en_i => en_scrubbing_int,
    mem_ready_i => mem_ready_int,
    rd_grnt_i => rd_grnt_int,
    rd_done_i => rd_done_int,
    scrub_rd_req_o => scrub_rd_req_int,
    scrubbing_o => scrubbing_int,
    scrubbing_addr_o => scrubbing_addr_int,
    scrubbing_state_o => scrubbing_state_int
);

sdram_ctrl_tmr_healer_inst:	sdram_ctrl_tmr_healer
generic map(
    DATA_WIDTH => DATA_WIDTH,
    DQM_WIDTH => DQM_WIDTH,
    ROW_WIDTH => ROW_WIDTH,
	COLS_WIDTH => COLS_WIDTH,
    BANK_WIDTH => BANK_WIDTH,
    RAM_COLS => RAM_COLS,
    RAM_ROWS => RAM_ROWS,
    RAM_BANKS => RAM_BANKS,
    TMR_COLS => TMR_COLS
)
port map (
	rstn_i => rstn_i,
    clk_i => clk_i,
    mem_ready_i => mem_ready_int,
    wr_grnt_i => wr_grnt_int,
    wr_done_i => wr_done_int,
  	rst_err_counter_i => rst_err_counter_i,
    voted_error_count_i => voted_data_errors_int,
    voted_data_i => voted_data_int,
    feedback_addr_i => feedback_addr_int,
    healing_o => healing_int,
    healing_wr_req_o => heal_wr_req_int,
    healing_addr_o => healing_addr_int,
    healing_data_o => heal_wr_data_int,
    healing_state_o => healing_state_int,
    error_count_o => err_counter_o
);

tmr_voter_inst: tmr_voter
generic map(DATA_WIDTH => DATA_WIDTH, GEN_ERR_INJ => GEN_ERR_INJ)
port map(
	en_i => en_voting_int,
	clk_i => clk_i,
	en_err_test_i => en_err_test_int,
	rd_data_1_i => rd_data_int(0),
	rd_data_2_i => rd_data_int(1),
	rd_data_3_i => rd_data_int(2),
	voted_data_o => voted_data_int,
	err_count_o => voted_data_errors_int
);

sdram_ctrl_inst: sdram_ctrl_tmr
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
	EXT_MODE_REG_EN => EXT_MODE_REG_EN
)
port map(
	--SDRAM Interface
	cke_o => cke_o,
	bank_o => bank_o,
	addr_o => addr_o,
	cs_o => cs_o,
	ras_o => ras_o,
	cas_o => cas_o,
	we_o => we_o,
	dqm_o => dqm_o,
	dataQ_io => dataQ_io,

	--Controller Interface
	rstn_i => rstn_i,
	clk_i => clk_i,
	wr_req_i => wr_req_int,
	wr_grnt_o => wr_grnt_int,
	wr_data_i => wr_data_int,
	rd_data_o_1 => rd_data_int(0),
	rd_data_o_2 => rd_data_int(1),
	rd_data_o_3 => rd_data_int(2),
	rw_addr_feedback_o => feedback_addr_int,
	rd_req_i => rd_req_int,
	rd_grnt_o => rd_grnt_int,
	wr_op_done_o => wr_done_int,
	rd_op_done_o => rd_done_int,
    rd_tmr_vote_o => rd_tmr_vote_int,
	rw_addr_i => rw_addr_int,
	mem_ready_o => mem_ready_int,
	ctrl_state_o => ctrl_state_int
  );

--wdt_ctrl_inst: tmr_fsm_watchdog
--    generic map(
--        RST_POLARITY => '0',
--        EXCLUDE_STATE => "000000000000000000000000010",
--        FSM_WIDTH => 27,
--        DATA_WIDTH => DATA_WIDTH,
--        COUNT_WIDTH => REF_COMMAND_PERIOD
--    )
--    port map(
--        clk_i => clk_i,
--        rstn_i => rstn_i,
--        fsm_state_i => ctrl_state_int,
--        rst_fsm_o => wdt_ctrl_rst,
--        err_detect_o => wdt_ctrl_err
--    );

--wdt_heal_inst: tmr_fsm_watchdog
--    generic map(
--        RST_POLARITY => '0',
--        EXCLUDE_STATE => "001",
--        FSM_WIDTH => 3,
--        DATA_WIDTH => DATA_WIDTH,
--        COUNT_WIDTH => 3
--    )
--    port map(
--        clk_i => clk_i,
--        rstn_i => rstn_i,
--        fsm_state_i => healing_state_int,
--        rst_fsm_o => wdt_heal_rst,
--        err_detect_o => wdt_heal_err
--    );

--wdt_scrub_inst: tmr_fsm_watchdog
--    generic map(
--        RST_POLARITY => '0',
--        EXCLUDE_STATE => "001",
--        FSM_WIDTH => 3,
--        DATA_WIDTH => DATA_WIDTH,
--        COUNT_WIDTH => 3
--    )
--    port map(
--        clk_i => clk_i,
--        rstn_i => rstn_i,
--        fsm_state_i => scrubbing_state_int,
--        rst_fsm_o => wdt_scrub_rst,
--        err_detect_o => wdt_scrub_err
--    );
  
end behave;