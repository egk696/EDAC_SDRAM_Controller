----------------------------------------------------------------------------------
-- Created By: Eleftherios Kyriakakis
-- 
-- Design Name: SDRAM Controller with SEU EDAC (Error-Detection-And-Correction) mechanisms
-- Module Name: sdram_ctrl_tmr - behave
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

entity sdram_ctrl_tmr is
    generic(
        DATA_WIDTH : Integer := 32;
        DQM_WIDTH : Integer := 4;
        ROW_WIDTH : Integer := 13;
		COLS_WIDTH : Integer := 10;
        BANK_WIDTH : Integer := 2;
        NOP_BOOT_CYCLES : Integer := 10000; --at 50MHz covers 100us
        REF_PERIOD : Integer := 390; --refresh command every to 7.8125 microseconds
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
		EXT_MODE_REG_EN : Boolean := FALSE
    );
    port(
        --SDRAM Interface
        cke_o : out std_logic := '1';
        bank_o : out std_logic_vector(BANK_WIDTH-1 downto 0)	:= (others=>'0');
        addr_o : out std_logic_vector(ROW_WIDTH-1 downto 0)		:= (others=>'0');
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
        wr_grnt_o : out std_logic := '0';
        wr_data_i : in std_logic_vector(DATA_WIDTH-1 downto 0) := (others=>'0');
        rd_data_o_1 : out std_logic_vector(DATA_WIDTH-1 downto 0) := (others=>'0');
		rd_data_o_2 : out std_logic_vector(DATA_WIDTH-1 downto 0) := (others=>'0');
		rd_data_o_3 : out std_logic_vector(DATA_WIDTH-1 downto 0) := (others=>'0');
		rw_addr_feedback_o : out std_logic_vector((COLS_WIDTH+ROW_WIDTH+BANK_WIDTH)-1 downto 0) := (others=>'0');
        rd_req_i : in std_logic := '0';
        rd_grnt_o : out std_logic := '0';
        wr_op_done_o : out std_logic := '0';
		rd_op_done_o : out std_logic := '0';
		rd_tmr_vote_o : out std_logic := '0';
        rw_addr_i : in std_logic_vector((COLS_WIDTH+ROW_WIDTH+BANK_WIDTH)-1 downto 0) := (others=>'0');
        mem_ready_o : out std_logic := '0';
        ctrl_state_o : out std_logic_vector(26 downto 0) := (others=>'0')
    );
end sdram_ctrl_tmr;

architecture behave of sdram_ctrl_tmr is
--Controller types.
type tmr_std_logic_buffer is array (0 to 2) of std_logic_vector(DATA_WIDTH-1 downto 0);
 
--Controller states.
type fsm_state_type is
(
    ST_BOOTING, 
	ST_INIT_NOP, 
	ST_REF1, 
	ST_REF1_NOP, 
	ST_REF2, 
	ST_REF2_NOP, 
	ST_PRECHARGE, 
	ST_MRS, 
	ST_MRS_NOP, 
	ST_EMRS, 
	ST_EMRS_NOP, 
	ST_IDLE, 
	ST_ACTIVATE, 
	ST_ACT_TO_RW,
	ST_SINGLE_READ,
	ST_SINGLE_WRITE,
	ST_TMR_READ_0,
	ST_TMR_READ_1,
	ST_TMR_READ_2, 
	ST_TMR_CAS_0,
	ST_TMR_CAS_1,
	ST_TMR_CAS_2,
	ST_TMR_WRITE_0,
	ST_TMR_WRITE_1,
	ST_TMR_WRITE_2, 
	ST_WRITE_NOP,
	ST_RESET
);
attribute keep : string;
attribute syn_preserve : string;
attribute enum_encoding : string;
attribute enum_encoding of fsm_state_type : type is "000000000000000000000000001 000000000000000000000000010 000000000000000000000000100  000000000000000000000001000 000000000000000000000010000 000000000000000000000100000 000000000000000000001000000 000000000000000000010000000  000000000000000000100000000 000000000000000001000000000 000000000000000010000000000 000000000000000100000000000 000000000000001000000000000  000000000000010000000000000 000000000000100000000000000 000000000001000000000000000 000000000010000000000000000 000000000100000000000000000 000000001000000000000000000 000000010000000000000000000 000000100000000000000000000 000001000000000000000000000 000010000000000000000000000 000100000000000000000000000 001000000000000000000000000 010000000000000000000000000 100000000000000000000000000";
signal current_state : fsm_state_type := ST_BOOTING;
signal next_state : fsm_state_type := ST_BOOTING;

constant REFRESH_LOOK_AHEAD_CYCLES : Integer := 11; 
-- synthesis translate_off
constant MOCKUP_READ_VAL_0 : std_logic_vector(31 downto 0) := X"FFABCDEF";
constant MOCKUP_READ_VAL_1 : std_logic_vector(31 downto 0) := X"FFABCDEF";
constant MOCKUP_READ_VAL_2 : std_logic_vector(31 downto 0) := X"FFABCDEF";
-- synthesis translate_on

--Counters
signal current_nop_boot_count, next_nop_boot_count : integer range 0 to NOP_BOOT_CYCLES+1 := 0;
signal current_auto_ref_count, next_auto_ref_count : integer range 0 to REF_COMMAND_PERIOD+1 := 0;
signal current_precharge_count, next_precharge_count : integer range 0 to PRECH_COMMAND_PERIOD+1 := 0;
signal current_act_to_rw_count, next_act_to_rw_count : integer range 0 to ACT_TO_RW_CYCLES+1 := 0;
signal current_cas_rd_count, next_cas_rd_count : integer range 0 to CAS_LAT_CYCLES+1 := 0;
signal current_nop_wr_count, next_nop_wr_count : integer range 0 to IN_DATA_TO_PRE+1 := 0;
signal current_pend_ref_count, next_pend_ref_count : integer range 0 to REF_PERIOD+1 := 0;
signal current_ref_cmd_count, next_ref_cmd_count : integer range 0 to REF_COMMAND_COUNT+1 := 0;
--
attribute keep					of current_nop_boot_count, current_auto_ref_count, current_precharge_count, current_act_to_rw_count  : signal is "true";
attribute keep					of current_cas_rd_count, current_nop_wr_count, current_pend_ref_count, current_ref_cmd_count : signal is "true";
attribute syn_preserve			of current_nop_boot_count, current_auto_ref_count, current_precharge_count, current_act_to_rw_count  : signal is "true";
attribute syn_preserve			of current_cas_rd_count, current_nop_wr_count, current_pend_ref_count, current_ref_cmd_count : signal is "true";
--Internal logic signals
signal current_pending_refresh, next_pending_refresh : std_logic := '0';
signal current_first_access,  next_first_access: std_logic_vector(RAM_BANKS-1 downto 0) := (others=>'1'); --initialize to first access every bank
signal current_rd_tmr_vote, next_rd_tmr_vote : std_logic := '1';
--
attribute keep 			of current_pending_refresh, current_first_access, current_rd_tmr_vote : signal is "true";
attribute syn_preserve	of current_pending_refresh, current_first_access, current_rd_tmr_vote : signal is "true";
--HOST
signal current_mem_ready, next_mem_ready : std_logic := '0';
signal current_wr_op_done, next_wr_op_done, current_rd_op_done, next_rd_op_done : std_logic := '0';
signal current_rw_addr, next_rw_addr : std_logic_vector((COLS_WIDTH+ROW_WIDTH+BANK_WIDTH)-1 downto 0) := (others=>'0');
signal current_rd_grnt, next_rd_grnt : std_logic := '0';
signal current_wr_grnt, next_wr_grnt : std_logic := '0';
signal current_rd_buffer, next_rd_buffer : tmr_std_logic_buffer := (others=>(others=>'0'));
signal current_wr_buffer, next_wr_buffer : std_logic_vector(DATA_WIDTH-1 downto 0) := (others=>'0');
--
attribute keep			of current_mem_ready, current_wr_op_done, current_rd_op_done, current_rw_addr, current_rd_grnt : signal is "true" ;
attribute keep			of current_wr_grnt, current_rd_buffer, current_wr_buffer : signal is "true";
attribute syn_preserve	of current_mem_ready, current_wr_op_done, current_rd_op_done, current_rw_addr, current_rd_grnt : signal is "true" ;
attribute syn_preserve	of current_wr_grnt, current_rd_buffer, current_wr_buffer : signal is "true";
--SDRAM commands
constant MRS_OPCODE 	: std_logic_vector(14 downto 0) := "00000"&"1"&"00"&std_logic_vector(to_unsigned(CAS_LAT_CYCLES, 3))&"0"&std_logic_vector(to_unsigned(BURST_LENGTH, 3));
constant EMRS_OPCODE 	: std_logic_vector(14 downto 0) := "10000"&"0"&"0"&std_logic_vector(to_unsigned(DRIVE_STRENGTH, 3))&"00"&"000";
constant NOP_CMD 		: std_logic_vector(3 downto 0) := "0111";   --/CS/RAS/CAS/WE
constant MRS_EMRS_CMD	: std_logic_vector(3 downto 0) := "0000";   --/CS/RAS/CAS/WE
constant AUTO_REF_CMD	: std_logic_vector(3 downto 0) := "0001";  --/CS/RAS/CAS/WE
constant PRECH_ALL_CMD	: std_logic_vector(3 downto 0) := "0010";  --/CS/RAS/CAS/WE
constant ACTIVATE_CMD	: std_logic_vector(3 downto 0) := "0011"; --CS/RAS/CAS/WE
constant READ_CMD		: std_logic_vector(3 downto 0) := "0101";  --/CS/RAS/CAS/WE
constant WRITE_CMD		: std_logic_vector(3 downto 0) := "0100";  --/CS/RAS/CAS/WE
--SDRAM
signal current_cke, next_cke : std_logic := '1';
signal current_address_bus, next_address_bus : std_logic_vector((ROW_WIDTH+BANK_WIDTH)-1 downto 0) := (others=>'0');
signal current_cs, next_cs : std_logic := NOP_CMD(3);
signal current_ras, next_ras : std_logic := NOP_CMD(2);
signal current_cas, next_cas : std_logic := NOP_CMD(1);
signal current_we, next_we : std_logic := NOP_CMD(0);
signal current_dqm, next_dqm : std_logic_vector(DQM_WIDTH-1 downto 0) := (others=>'1');
--
attribute keep of 			current_cke, current_address_bus, current_cs, current_ras, current_cas, current_we, current_dqm : signal is "true";
attribute syn_preserve of	current_cke, current_address_bus, current_cs, current_ras, current_cas, current_we, current_dqm : signal is "true";

--EASY ALIASES
alias rw_addr_i_column:std_logic_vector(COLS_WIDTH-1 downto 0) is rw_addr_i(COLS_WIDTH-1 downto 0);
alias rw_addr_i_row:std_logic_vector(ROW_WIDTH-1 downto 0) is rw_addr_i(ROW_WIDTH+COLS_WIDTH-1 downto COLS_WIDTH);
alias rw_addr_i_bank:std_logic_vector(BANK_WIDTH-1 downto 0) is rw_addr_i(COLS_WIDTH+ROW_WIDTH+BANK_WIDTH-1 downto COLS_WIDTH+ROW_WIDTH);

alias current_rw_addr_column:std_logic_vector(COLS_WIDTH-1 downto 0) is current_rw_addr(COLS_WIDTH-1 downto 0);
alias current_rw_addr_row:std_logic_vector(ROW_WIDTH-1 downto 0) is current_rw_addr(ROW_WIDTH+COLS_WIDTH-1 downto COLS_WIDTH);
alias current_rw_addr_bank:std_logic_vector(BANK_WIDTH-1 downto 0) is current_rw_addr(COLS_WIDTH+ROW_WIDTH+BANK_WIDTH-1 downto COLS_WIDTH+ROW_WIDTH);
alias next_rw_addr_column:std_logic_vector(COLS_WIDTH-1 downto 0) is next_rw_addr(COLS_WIDTH-1 downto 0);
alias next_rw_addr_row:std_logic_vector(ROW_WIDTH-1 downto 0) is next_rw_addr(ROW_WIDTH+COLS_WIDTH-1 downto COLS_WIDTH);
alias next_rw_addr_bank:std_logic_vector(BANK_WIDTH-1 downto 0) is next_rw_addr(COLS_WIDTH+ROW_WIDTH+BANK_WIDTH-1 downto COLS_WIDTH+ROW_WIDTH);


begin
--Register signals	
current_state_registers: process(clk_i, rstn_i)
begin
	if rstn_i = '0' then
        current_state <= ST_RESET;
        --internal
        --current_pending_refresh <= '0';
        current_rd_tmr_vote <= '1';
        --counters
        --current_pend_ref_count<=0;
        current_precharge_count <= 0;
        current_nop_boot_count <= 0;
        current_auto_ref_count <= 0;
        current_cas_rd_count <= 0;
        current_nop_wr_count <= 0;
        current_act_to_rw_count <= 0;
        current_ref_cmd_count <=0;
        --sdram
        current_cke <= '1';
        current_address_bus <= (others=>'0');
        current_cs <= NOP_CMD(3);
        current_ras <= NOP_CMD(2);
        current_cas <= NOP_CMD(1);
        current_we <= NOP_CMD(0);
        current_dqm <= (others=>'1');
        --host
        current_wr_op_done <= '0';
        current_rd_op_done <= '0';
        current_rw_addr <= (others=>'0');
        --current_rd_req <= '0';
        current_rd_grnt <= '0';
        --current_wr_req <= '0';
        current_wr_grnt <= '0';
        current_rd_buffer <= (others=>(others=>'0'));
        current_wr_buffer <= (others=>'0');
        current_first_access <= (others=>'1');
        elsif rising_edge(clk_i) then
        current_state <= next_state;
        --counters
        current_nop_boot_count <= next_nop_boot_count;
        current_auto_ref_count <= next_auto_ref_count;
        current_precharge_count <= next_precharge_count;
        current_act_to_rw_count <= next_act_to_rw_count;
        current_cas_rd_count <= next_cas_rd_count;
        current_nop_wr_count <= next_nop_wr_count;
        current_pend_ref_count <= next_pend_ref_count;
        current_ref_cmd_count <= next_ref_cmd_count;
        --internal
        current_pending_refresh <= next_pending_refresh;
        current_first_access <= next_first_access;
        current_rd_tmr_vote <= next_rd_tmr_vote;
        --sdram
        current_cke <= next_cke;
        current_address_bus <= next_address_bus;
        current_cs <= next_cs;
        current_ras <= next_ras;
        current_cas <= next_cas;
        current_we <= next_we;
        current_dqm <= next_dqm;
        --host
        current_mem_ready <= next_mem_ready;
        current_wr_op_done <= next_wr_op_done;
        current_rd_op_done <= next_rd_op_done;
        current_rw_addr <= next_rw_addr;
        --current_rd_req <= next_rd_req;
        current_rd_grnt <= next_rd_grnt;
        --current_wr_req <= next_wr_req;
        current_wr_grnt <= next_wr_grnt;
        current_rd_buffer <= next_rd_buffer;
        current_wr_buffer <= next_wr_buffer;
	end if;
end process;

--Drive next state
next_state_logic: process(current_state, rw_addr_i, rd_req_i, wr_req_i, wr_data_i, 
		current_pending_refresh, current_nop_boot_count, current_auto_ref_count, current_precharge_count,
		current_act_to_rw_count, current_ref_cmd_count, current_nop_wr_count, current_cas_rd_count, current_pend_ref_count, current_mem_ready,
		current_cke, current_address_bus, current_cs, current_ras, current_cas, current_we, current_dqm, current_rd_op_done, current_wr_op_done, current_rw_addr, current_rd_grnt, current_first_access,
		current_wr_grnt, current_rd_buffer, current_wr_buffer, dataQ_io, current_rd_tmr_vote)
begin
	--avoid latches
	next_state <= current_state;
	--counters
	next_nop_boot_count <= current_nop_boot_count;
	next_auto_ref_count <= current_auto_ref_count;
	next_precharge_count <= current_precharge_count;
	next_act_to_rw_count <= current_act_to_rw_count;
	next_cas_rd_count <= current_cas_rd_count;
	next_nop_wr_count <= current_nop_wr_count;
	next_ref_cmd_count <= current_ref_cmd_count;
	--internal
	if current_mem_ready = '1' and current_pending_refresh = '0' then
		if current_pend_ref_count >= REF_PERIOD-REFRESH_LOOK_AHEAD_CYCLES-1 then
			next_pend_ref_count <= 0;
			next_pending_refresh <= '1';
		else
			next_pend_ref_count <= current_pend_ref_count + 1;
			next_pending_refresh <= current_pending_refresh;
		end if;
	else
		next_pend_ref_count <= current_pend_ref_count;
		next_pending_refresh <= current_pending_refresh;
	end if;
	next_first_access <= current_first_access;
	next_rd_tmr_vote <= current_rd_tmr_vote;
	--sdram
	next_cke <= current_cke;
	next_address_bus <= current_address_bus;
	next_cs <= current_cs;
	next_ras <= current_ras;
	next_cas <= current_cas;
	next_we <= current_we;
	next_dqm <= current_dqm;
	--host
	next_mem_ready <= current_mem_ready;
	next_wr_op_done <= current_wr_op_done;
	next_rd_op_done <= current_rd_op_done;
	next_rw_addr <= current_rw_addr;
	--next_rd_req <= current_rd_req;
	next_rd_grnt <= current_rd_grnt;
	--next_wr_req <= current_wr_req;
	next_wr_grnt <= current_wr_grnt;
	next_rd_buffer <= current_rd_buffer;
	next_wr_buffer <= current_wr_buffer;
	--drive the logic
	case current_state is
--Reset FSM
		when ST_RESET=>
			if current_mem_ready = '0' then
				next_state <= ST_BOOTING;
			else
				next_state <= ST_IDLE;
			end if;
			ctrl_state_o <= "100000000000000000000000000";
			
--Init FSM Start
		when ST_BOOTING=>
			next_state <= ST_INIT_NOP;
			--sdram
			next_cke <= '1';
			next_we <= NOP_CMD(0);
			next_cas <= NOP_CMD(1);
			next_ras <= NOP_CMD(2);
			next_cs <= NOP_CMD(3);
			next_dqm <= (others=>'1');
			next_address_bus <= (others=>'0');
			--host
			next_rd_buffer <= (others=>(others=>'0'));
			next_wr_buffer <= (others=>'0');
			next_mem_ready <= '0';
			next_rd_grnt <= '0';
			next_wr_grnt <= '0';
			next_wr_op_done <= '0';
			next_rd_op_done <= '0';
			--internal
			next_first_access <= (others=>'1');
			ctrl_state_o <= "000000000000000000000000001";
			
		when ST_INIT_NOP=>
			if current_nop_boot_count = NOP_BOOT_CYCLES-1 then
				next_nop_boot_count <= 0;
				next_state <= ST_PRECHARGE;
				--sdram
				next_cke <= '1';
				next_we <= PRECH_ALL_CMD(0);
				next_cas <= PRECH_ALL_CMD(1);
				next_ras <= PRECH_ALL_CMD(2);
				next_cs <= PRECH_ALL_CMD(3);
				next_dqm <= (others=>'1');
				next_address_bus <= (others=>'0');
				next_address_bus(10) <= '1';
			else
				next_nop_boot_count <= current_nop_boot_count + 1;
			end if;
			ctrl_state_o <= "000000000000000000000000010";
			
		when ST_PRECHARGE=>
			if current_precharge_count = PRECH_COMMAND_PERIOD-1 then
				next_precharge_count <= 0;
				if current_mem_ready = '0' or current_pending_refresh = '1' then
					next_state <= ST_REF1;
					--sdram
					next_cke <= '1';
					next_we <= AUTO_REF_CMD(0);
					next_cas <= AUTO_REF_CMD(1);
					next_ras <= AUTO_REF_CMD(2);
					next_cs <= AUTO_REF_CMD(3);
					next_dqm <= (others=>'1');
					next_address_bus <= (others => '0');
				elsif current_rd_grnt='1' or current_wr_grnt='1' then
					next_state <= ST_ACTIVATE;
					--sdram
					next_cke <= '1';
					next_we <= ACTIVATE_CMD(0);
					next_cas <= ACTIVATE_CMD(1);
					next_ras <= ACTIVATE_CMD(2);
					next_cs <= ACTIVATE_CMD(3);
					next_dqm <= (others=>'1');
					next_address_bus(ROW_WIDTH-1 downto 0) <= current_rw_addr_row; --select row
					next_address_bus(BANK_WIDTH+ROW_WIDTH-1 downto ROW_WIDTH) <= current_rw_addr_bank; --select bank
				else
					next_state <= ST_IDLE;
					--sdram
					next_cke <= '1';
					next_we <= NOP_CMD(0);
					next_cas <= NOP_CMD(1);
					next_ras <= NOP_CMD(2);
					next_cs <= NOP_CMD(3);
					next_dqm <= (others=>'1');
					next_address_bus <= (others=>'0');
				end if;
			else
				next_precharge_count <= current_precharge_count + 1;
				--sdram
				next_cke <= '1';
				next_we <= NOP_CMD(0);
				next_cas <= NOP_CMD(1);
				next_ras <= NOP_CMD(2);
				next_cs <= NOP_CMD(3);
				next_dqm <= (others=>'1');
				next_address_bus <= (others=>'0');
			end if;
			ctrl_state_o <= "000000000000000000000000100";
			
		when ST_REF1=>
			next_state <= ST_REF1_NOP;
			next_first_access <= (others=>'1');
			--sdram
			next_cke <= '1';
			next_we <= NOP_CMD(0);
			next_cas <= NOP_CMD(1);
			next_ras <= NOP_CMD(2);
			next_cs <= NOP_CMD(3);
			next_dqm <= (others=>'1');
			next_address_bus <= (others=>'0');
			ctrl_state_o <= "000000000000000000000001000";
			
		when ST_REF1_NOP=>
			if current_auto_ref_count = REF_COMMAND_PERIOD-1 then
				next_auto_ref_count <= 0;
				if current_mem_ready = '0' then
					next_state <= ST_REF2;
					--sdram
					next_cke <= '1';
					next_we <= AUTO_REF_CMD(0);
					next_cas <= AUTO_REF_CMD(1);
					next_ras <= AUTO_REF_CMD(2);
					next_cs <= AUTO_REF_CMD(3);
					next_dqm <= (others=>'1');
					next_address_bus <= (others => '0');
				elsif current_rd_grnt='1' or current_wr_grnt='1' then
					next_state <= ST_ACTIVATE;
					next_pending_refresh <= '0';
					--sdram
					next_cke <= '1';
					next_we <= ACTIVATE_CMD(0);
					next_cas <= ACTIVATE_CMD(1);
					next_ras <= ACTIVATE_CMD(2);
					next_cs <= ACTIVATE_CMD(3);
					next_dqm <= (others=>'1');
					next_address_bus(ROW_WIDTH-1 downto 0) <= current_rw_addr_row; --select row
					next_address_bus(BANK_WIDTH+ROW_WIDTH-1 downto ROW_WIDTH) <= current_rw_addr_bank; --select bank
				else
					next_state <= ST_IDLE;
					next_pending_refresh <= '0';
					--sdram
					next_cke <= '1';
					next_we <= NOP_CMD(0);
					next_cas <= NOP_CMD(1);
					next_ras <= NOP_CMD(2);
					next_cs <= NOP_CMD(3);
					next_dqm <= (others=>'1');
					next_address_bus <= (others=>'0');
				end if;				
			else
				next_auto_ref_count <= current_auto_ref_count + 1;
			end if;
			ctrl_state_o <= "000000000000000000000010000";
			
		when ST_REF2=>
			next_state <= ST_REF2_NOP;
			--sdram
			next_cke <= '1';
			next_we <= NOP_CMD(0);
			next_cas <= NOP_CMD(1);
			next_ras <= NOP_CMD(2);
			next_cs <= NOP_CMD(3);
			next_dqm <= (others=>'1');
			next_address_bus <= (others=>'0');
			ctrl_state_o <= "000000000000000000000100000";
			
		when ST_REF2_NOP=>
			if current_auto_ref_count = REF_COMMAND_PERIOD-1 then
				next_auto_ref_count <= 0;
				if current_ref_cmd_count = (REF_COMMAND_COUNT/2)-1 then
					next_ref_cmd_count <= 0;
					next_state <= ST_MRS;
					--sdram
					next_cke <= '1';
					next_we <= MRS_EMRS_CMD(0);
					next_cas <= MRS_EMRS_CMD(1);
					next_ras <= MRS_EMRS_CMD(2);
					next_cs <= MRS_EMRS_CMD(3);
					next_dqm <= (others=>'1');
					next_address_bus <= MRS_OPCODE;
				else
					next_ref_cmd_count <= current_ref_cmd_count + 1;
					next_state <= ST_REF1;
					--sdram
					next_cke <= '1';
					next_we <= AUTO_REF_CMD(0);
					next_cas <= AUTO_REF_CMD(1);
					next_ras <= AUTO_REF_CMD(2);
					next_cs <= AUTO_REF_CMD(3);
					next_dqm <= (others=>'1');
					next_address_bus <= (others => '0');
				end if;
				next_pending_refresh <= '0';
			else
				next_auto_ref_count <= current_auto_ref_count + 1;
			end if;
			ctrl_state_o <= "000000000000000000001000000";
			
		when ST_MRS=>
			next_state <= ST_MRS_NOP;
			--sdram
			next_cke <= '1';
			next_we <= NOP_CMD(0);
			next_cas <= NOP_CMD(1);
			next_ras <= NOP_CMD(2);
			next_cs <= NOP_CMD(3);
			next_dqm <= (others=>'1');
			next_address_bus <= (others=>'0');
			ctrl_state_o <= "000000000000000000010000000";
			
		when ST_MRS_NOP=> --MRS needs 2 cycles tMRD
			if EXT_MODE_REG_EN then
				next_state <= ST_EMRS;
				--sdram
				next_cke <= '1';
				next_we <= MRS_EMRS_CMD(0);
				next_cas <= MRS_EMRS_CMD(1);
				next_ras <= MRS_EMRS_CMD(2);
				next_cs <= MRS_EMRS_CMD(3);
				next_dqm <= (others=>'1');
				next_address_bus <= EMRS_OPCODE;
			else
				next_state <= ST_IDLE; 
				--sdram
				next_cke <= '1';
				next_we <= NOP_CMD(0);
				next_cas <= NOP_CMD(1);
				next_ras <= NOP_CMD(2);
				next_cs <= NOP_CMD(3);
				next_dqm <= (others=>'1');
				next_address_bus <= (others=>'0');
				--host
				next_mem_ready <= '1';
			end if;
			ctrl_state_o <= "000000000000000000100000000";
			
			
		when ST_EMRS=>
			next_state <= ST_EMRS_NOP;
			--sdram
			next_cke <= '1';
			next_we <= NOP_CMD(0);
			next_cas <= NOP_CMD(1);
			next_ras <= NOP_CMD(2);
			next_cs <= NOP_CMD(3);
			next_dqm <= (others=>'1');
			next_address_bus <= (others=>'0');
			ctrl_state_o <= "000000000000000001000000000";
			
		when ST_EMRS_NOP=> --EMRS needs 2 cycles tMRD
			next_state <= ST_IDLE; 
			--sdram
			next_cke <= '1';
			next_we <= NOP_CMD(0);
			next_cas <= NOP_CMD(1);
			next_ras <= NOP_CMD(2);
			next_cs <= NOP_CMD(3);
			next_dqm <= (others=>'1');
			next_address_bus <= (others=>'0');
			--host
			next_mem_ready <= '1';
			ctrl_state_o <= "000000000000000010000000000";

--Init FSM End
--Main FSM Start
		when ST_IDLE=>
			--host
			next_rd_grnt <= rd_req_i;
			next_wr_grnt <= wr_req_i;
			--next_rd_req <= rd_req_i;
			--next_wr_req <= wr_req_i;
			next_rd_op_done <= '0';
			next_wr_op_done <= '0';
			if wr_req_i = '1' then
				next_wr_buffer <= wr_data_i;
			else
				next_wr_buffer <= (others=>'0');
			end if;
			--next_wr_buffer <= (others=>'0');
			--next_rd_buffer <= (others=>(others=>'0'));

			if current_pending_refresh = '1' then
				next_state <= ST_PRECHARGE;
				next_first_access <= (others=>'1');
				--sdram
				next_cke <= '1';
				next_we <= PRECH_ALL_CMD(0);
				next_cas <= PRECH_ALL_CMD(1);
				next_ras <= PRECH_ALL_CMD(2);
				next_cs <= PRECH_ALL_CMD(3);
				next_dqm <= (others=>'1');
				next_address_bus <= (others=>'0');
				next_address_bus(10) <= '1'; --precharge all banks on refresh

			elsif rd_req_i = '1' OR wr_req_i = '1' then
				next_rw_addr <= rw_addr_i; --register requrested R/W Address
				if current_first_access(to_integer(unsigned(rw_addr_i_bank)))='1' then  --if first access to bank or bank has been precharged  
					next_state <= ST_ACTIVATE;
					--sdram
					next_cke <= '1';
					next_we <= ACTIVATE_CMD(0);
					next_cas <= ACTIVATE_CMD(1);
					next_ras <= ACTIVATE_CMD(2);
					next_cs <= ACTIVATE_CMD(3);
					next_dqm <= (others=>'1');
					next_address_bus(ROW_WIDTH-1 downto 0) <= rw_addr_i_row; --select row
					next_address_bus(BANK_WIDTH+ROW_WIDTH-1 downto ROW_WIDTH) <= rw_addr_i_bank; --select bank

				elsif current_rw_addr_row=rw_addr_i_row and current_rw_addr_bank=rw_addr_i_bank and rd_req_i='1' then
					if rw_addr_i_column(1 downto 0)="00" then
						next_state <= ST_TMR_READ_0;
						next_rd_tmr_vote <= '1';
					else
						next_state <= ST_SINGLE_READ;
						next_rd_tmr_vote <= '0';
					end if;
					--sdram
					next_cke <= '1';
					next_we <= READ_CMD(0);
					next_cas <= READ_CMD(1);
					next_ras <= READ_CMD(2);
					next_cs <= READ_CMD(3);
					next_dqm <= (others=>'0');
					next_address_bus <= (others=>'0');
					next_address_bus(COLS_WIDTH-1 downto 0) <= rw_addr_i_column;
					next_address_bus(10) <= '0'; --auto-precharche cmd
					next_address_bus(BANK_WIDTH+ROW_WIDTH-1 downto ROW_WIDTH) <= rw_addr_i_bank; --select bank

				--elsif current_rw_addr_row=rw_addr_i_row and current_rw_addr_bank=rw_addr_i_bank and wr_req_i='1' then --if row is currently been accessed is the same as before
				--	next_rd_tmr_vote <= '0';
				--	if rw_addr_i_column(1 downto 0)="00" then
				--		next_state <= ST_TMR_WRITE_0;
				--	else
				--		next_state <= ST_SINGLE_WRITE;
				--	end if;
				--	--sdram
				--	next_cke <= '1';
				--	next_we <= WRITE_CMD(0);
				--	next_cas <= WRITE_CMD(1);
				--	next_ras <= WRITE_CMD(2);
				--	next_cs <= WRITE_CMD(3);
				--	next_dqm <= (others=>'0');
				--	next_address_bus <= (others=>'0');
				--	next_address_bus(COLS_WIDTH-1 downto 0) <= rw_addr_i_column;
				--	next_address_bus(10) <= '0'; --auto-precharche cmd
				--	next_address_bus(BANK_WIDTH+ROW_WIDTH-1 downto ROW_WIDTH) <= rw_addr_i_bank; --select bank
				
				else --first PRECHARGE(close) currently ACTIVE ROW then ACTIVATE
					next_state <= ST_PRECHARGE;
					next_first_access(to_integer(unsigned(current_rw_addr_bank))) <= '1';
					--sdram
					next_cke <= '1';
					next_we <= PRECH_ALL_CMD(0);
					next_cas <= PRECH_ALL_CMD(1);
					next_ras <= PRECH_ALL_CMD(2);
					next_cs <= PRECH_ALL_CMD(3);
					next_dqm <= (others=>'1');
					next_address_bus <= (others=>'0');
					next_address_bus(10) <= '0';
					next_address_bus(BANK_WIDTH+ROW_WIDTH-1 downto ROW_WIDTH) <= current_rw_addr_bank; --select bank to precharge
				end if;
			end if;
			ctrl_state_o <= "000000000000000100000000000";
			
		when ST_ACTIVATE=>
			next_state <= ST_ACT_TO_RW;
			--sdram
			next_cke <= '1';
			next_we <= NOP_CMD(0);
			next_cas <= NOP_CMD(1);
			next_ras <= NOP_CMD(2);
			next_cs <= NOP_CMD(3);
			next_dqm <= (others=>'1');
			next_address_bus <= (others=>'0');
			--internal
			next_first_access(to_integer(unsigned(current_rw_addr_bank))) <= '0';
			ctrl_state_o <= "000000000000001000000000000";
			
		when ST_ACT_TO_RW=>
			if current_act_to_rw_count = ACT_TO_RW_CYCLES-1 then
				next_act_to_rw_count <= 0;
				if current_rd_grnt = '1' then
					if current_rw_addr_column(1 downto 0)="00" then
						next_state <= ST_TMR_READ_0;
						next_rd_tmr_vote <= '1';
					else
						next_state <= ST_SINGLE_READ;
						next_rd_tmr_vote <= '0';
					end if;
					--sdram
					next_cke <= '1';
					next_we <= READ_CMD(0);
					next_cas <= READ_CMD(1);
					next_ras <= READ_CMD(2);
					next_cs <= READ_CMD(3);
					next_dqm <= (others=>'0');
					next_address_bus <= (others=>'0');
					next_address_bus(COLS_WIDTH-1 downto 0) <= current_rw_addr_column;
					next_address_bus(10) <= '0'; --auto-precharche cmd
					next_address_bus(BANK_WIDTH+ROW_WIDTH-1 downto ROW_WIDTH) <= current_rw_addr_bank; --select bank
				elsif current_wr_grnt = '1' then
					next_rd_tmr_vote <= '0';
					if current_rw_addr_column(1 downto 0)="00" then
						next_state <= ST_TMR_WRITE_0;
					else
						next_state <= ST_SINGLE_WRITE;
					end if;
					--sdram
					next_cke <= '1';
					next_we <= WRITE_CMD(0);
					next_cas <= WRITE_CMD(1);
					next_ras <= WRITE_CMD(2);
					next_cs <= WRITE_CMD(3);
					next_dqm <= (others=>'0');
					next_address_bus <= (others=>'0');
					next_address_bus(COLS_WIDTH-1 downto 0) <= current_rw_addr_column;
					next_address_bus(10) <= '0'; --auto-precharche cmd
					next_address_bus(BANK_WIDTH+ROW_WIDTH-1 downto ROW_WIDTH) <= current_rw_addr_bank; --select bank
				else
					next_state <= ST_IDLE;
					next_pending_refresh <= '0';
					--sdram
					next_cke <= '1';
					next_we <= NOP_CMD(0);
					next_cas <= NOP_CMD(1);
					next_ras <= NOP_CMD(2);
					next_cs <= NOP_CMD(3);
					next_dqm <= (others=>'1');
					next_address_bus <= (others=>'0');
				end if;
			else
				next_act_to_rw_count <= current_act_to_rw_count + 1;
			end if;
			ctrl_state_o <= "000000000000010000000000000";

		when ST_SINGLE_READ=>
			if current_cas_rd_count = CAS_LAT_CYCLES then
				next_cas_rd_count <= 0;
				next_rd_op_done <= '1';
				next_state <= ST_IDLE;
				--sdram
				next_cke <= '1';
				next_we <= NOP_CMD(0);
				next_cas <= NOP_CMD(1);
				next_ras <= NOP_CMD(2);
				next_cs <= NOP_CMD(3);
				next_dqm <= (others=>'1');
				next_rd_buffer <= (others=>dataQ_io);
			else
				next_cas_rd_count <= current_cas_rd_count + 1;
				--sdram
				next_cke <= '1';
				next_we <= NOP_CMD(0);
				next_cas <= NOP_CMD(1);
				next_ras <= NOP_CMD(2);
				next_cs <= NOP_CMD(3);
				next_dqm <= (others=>'0');
			end if;
			ctrl_state_o <= "000000000000100000000000000";

		when ST_SINGLE_WRITE=>
			next_state <= ST_WRITE_NOP;
			--sdram
			next_cke <= '1';
			next_we <= NOP_CMD(0);
			next_cas <= NOP_CMD(1);
			next_ras <= NOP_CMD(2);
			next_cs <= NOP_CMD(3);
			next_dqm <= (others=>'1');
			ctrl_state_o <= "000000000001000000000000000";
			
		when ST_TMR_READ_0=>
			next_state <= ST_TMR_READ_1;
			--sdram
			next_cke <= '1';
			next_we <= READ_CMD(0);
			next_cas <= READ_CMD(1);
			next_ras <= READ_CMD(2);
			next_cs <= READ_CMD(3);
			next_dqm <= (others=>'0');
			next_address_bus <= (others=>'0');
			next_address_bus(COLS_WIDTH-1 downto 0) <= current_rw_addr_column(COLS_WIDTH-1 downto 2) & "01";
			next_address_bus(10) <= '0';
			next_address_bus(BANK_WIDTH+ROW_WIDTH-1 downto ROW_WIDTH) <= current_rw_addr_bank; --select bank
			ctrl_state_o <= "000000000010000000000000000";

		when ST_TMR_READ_1=>
			next_state <= ST_TMR_READ_2;
			--sdram
			next_cke <= '1';
			next_we <= READ_CMD(0);
			next_cas <= READ_CMD(1);
			next_ras <= READ_CMD(2);
			next_cs <= READ_CMD(3);
			next_dqm <= (others=>'0');
			next_address_bus <= (others=>'0');
			next_address_bus(COLS_WIDTH-1 downto 0) <= current_rw_addr_column(COLS_WIDTH-1 downto 2) & "10";
			next_address_bus(10) <= '0';
			next_address_bus(BANK_WIDTH+ROW_WIDTH-1 downto ROW_WIDTH) <= current_rw_addr_bank; --select bank
			ctrl_state_o <= "000000000100000000000000000";

		when ST_TMR_READ_2=>
			next_state <= ST_TMR_CAS_0;
			--sdram
			next_cke <= '1';
			next_we <= NOP_CMD(0);
			next_cas <= NOP_CMD(1);
			next_ras <= NOP_CMD(2);
			next_cs <= NOP_CMD(3);
			next_dqm <= (others=>'0');
			next_rd_buffer(0) <= dataQ_io;
			ctrl_state_o <= "000000001000000000000000000";
			
		when ST_TMR_CAS_0=>
			next_state <= ST_TMR_CAS_1;
			-- synthesis read_comments_as_HDL on
			next_rd_buffer(1) <= dataQ_io;
			-- synthesis read_comments_as_HDL off
			-- synthesis translate_off
			-- next_rd_buffer(1) <= MOCKUP_READ_VAL_1(DATA_WIDTH-1 downto 0);
			-- synthesis translate_on
			ctrl_state_o <= "000000010000000000000000000";

		when ST_TMR_CAS_1=>
			next_state <= ST_TMR_CAS_2;
			next_rd_buffer(2) <= dataQ_io;
			ctrl_state_o <= "000000100000000000000000000";

		when ST_TMR_CAS_2=>
			next_state <= ST_IDLE;
			next_rd_op_done <= '1';
			--sdram
			next_cke <= '1';
			next_we <= NOP_CMD(0);
			next_cas <= NOP_CMD(1);
			next_ras <= NOP_CMD(2);
			next_cs <= NOP_CMD(3);
			next_dqm <= (others=>'1');
			ctrl_state_o <= "000001000000000000000000000";

		when ST_TMR_WRITE_0=>
			next_state <= ST_TMR_WRITE_1;
			--sdram
			next_cke <= '1';
			next_we <= WRITE_CMD(0);
			next_cas <= WRITE_CMD(1);
			next_ras <= WRITE_CMD(2);
			next_cs <= WRITE_CMD(3);
			next_dqm <= (others=>'0');
			next_address_bus <= (others=>'0');
			next_address_bus(COLS_WIDTH-1 downto 0) <= current_rw_addr_column(COLS_WIDTH-1 downto 2) & "01";
			next_address_bus(10) <= '0'; --auto-precharche cmd
			next_address_bus(BANK_WIDTH+ROW_WIDTH-1 downto ROW_WIDTH) <= current_rw_addr_bank; --select bank
			ctrl_state_o <= "000010000000000000000000000";

		when ST_TMR_WRITE_1=>
			next_state <= ST_TMR_WRITE_2;
			--sdram
			next_cke <= '1';
			next_we <= WRITE_CMD(0);
			next_cas <= WRITE_CMD(1);
			next_ras <= WRITE_CMD(2);
			next_cs <= WRITE_CMD(3);
			next_dqm <= (others=>'0');
			next_address_bus <= (others=>'0');
			next_address_bus(COLS_WIDTH-1 downto 0) <= current_rw_addr_column(COLS_WIDTH-1 downto 2) & "10";
			next_address_bus(10) <= '0'; --auto-precharche cmd
			next_address_bus(BANK_WIDTH+ROW_WIDTH-1 downto ROW_WIDTH) <= current_rw_addr_bank; --select bank
			ctrl_state_o <= "000100000000000000000000000";

		when ST_TMR_WRITE_2=>
			next_state <= ST_WRITE_NOP;
			--next_wr_op_done <= '1';
			--sdram
			next_cke <= '1';
			next_we <= NOP_CMD(0);
			next_cas <= NOP_CMD(1);
			next_ras <= NOP_CMD(2);
			next_cs <= NOP_CMD(3);
			next_dqm <= (others=>'1');
			ctrl_state_o <= "001000000000000000000000000";

		when ST_WRITE_NOP=>	
			if current_nop_wr_count = IN_DATA_TO_PRE-1 then
				next_nop_wr_count <= 0;
				next_state <= ST_IDLE;
				next_wr_op_done <= '1';
			else
				next_nop_wr_count <= current_nop_wr_count + 1;
			end if;
			ctrl_state_o <= "010000000000000000000000000";
		
	--Main FSM End
		when others=>
			next_state <= ST_RESET;
			next_cas_rd_count <= 0;
			next_nop_boot_count <= 0;
			next_nop_wr_count <= 0;
			next_rd_op_done <= '0';
			next_wr_op_done <= '0';
			next_rd_grnt <= '0';
			next_wr_grnt <= '0';
			--sdram
			next_cke <= '1';
			next_we <= NOP_CMD(0);
			next_cas <= NOP_CMD(1);
			next_ras <= NOP_CMD(2);
			next_cs <= NOP_CMD(3);
			next_dqm <= (others=>'1');
			next_address_bus <= (others=>'0');
			ctrl_state_o <= "000000000000000000000000000";
	end case;
end process;


--Drive Output pins

--host Interface
wr_grnt_o <= current_wr_grnt;
rd_data_o_1 <= current_rd_buffer(0);
rd_data_o_2 <= current_rd_buffer(1);
rd_data_o_3 <= current_rd_buffer(2);
rw_addr_feedback_o <= current_rw_addr;
rd_grnt_o <= current_rd_grnt;
wr_op_done_o <= current_wr_op_done;
rd_op_done_o <= current_rd_op_done;
rd_tmr_vote_o <= current_rd_tmr_vote;
mem_ready_o <= current_mem_ready;

--memory Interface
cke_o <= current_cke;
bank_o <= current_address_bus(BANK_WIDTH+ROW_WIDTH-1 downto ROW_WIDTH);
addr_o <= current_address_bus(ROW_WIDTH-1 downto 0);
cs_o <= current_cs;
ras_o <= current_ras;
cas_o <= current_cas;
we_o <= current_we;
dqm_o <= current_dqm;
dataQ_io <= current_wr_buffer when current_wr_grnt='1' else (others=>'Z');
end behave;