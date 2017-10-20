----------------------------------------------------------------------------------
-- Company: KTH Department of Electronics
-- Engineer: Lefteris Kyriakakis
-- 
-- Create Date: 01/22/2016 08:26:19 PM
-- Design Name: SDRAM SDR Controller with TMR
-- Module Name: sdram_ctrl_tmr_avs_interface - Behavioral
-- Project Name: SUED
-- Target Devices:
-- 	Boards: Avalon Bus
--		Memories:  IS42/45S16320B, IS42/45R86400D/16320D/32160D, IS42/45S86400D/16320D/32160D, IS42/45SM/RM/VM16160K 
-- Comments:
-- 	Currently supports only single r/w accesses, no burst mode has been implemented.
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.utils_pack.all;

entity sdram_ctrl_tmr_avs_interface is
    generic(
        DATA_WIDTH : Integer := 16;
        DQM_WIDTH : Integer := 2;
        ROW_WIDTH : Integer := 13;
		COLS_WIDTH : Integer := 9;
        BANK_WIDTH : Integer := 2;
        NOP_BOOT_CYCLES : Integer := 10000; --at 50MHz covers 200us
        REF_PERIOD : Integer := 32; --refresh command every to 7.8125 microseconds (not less than 12)
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
        TMR_COLS : Integer := 384;
		SCRUBBER_WAIT_CYCLES : Integer := 10; --should not be less than 1
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
        
        --Avalon Interface
        avs_address : in std_logic_vector((BANK_WIDTH+ROW_WIDTH+COLS_WIDTH-1) downto 0) := (others=>'0');
		avs_read : in std_logic := '0';
		avs_readdata : out std_logic_vector(31 downto 0) := (others=>'0');
		avs_write : in std_logic := '0';
		avs_writedata : in std_logic_vector(31 downto 0) := (others=>'0');
		avs_waitrequest : out std_logic := '0';
		avs_readdatavalid : out std_logic := '0';
		rsi_reset_n : in std_logic := '1';
		csi_clock : in std_logic := '0'
    );
end sdram_ctrl_tmr_avs_interface;

architecture behave of sdram_ctrl_tmr_avs_interface is

--internal signals
signal err_detected_int : std_logic := '0';
signal rst_err_counter_int : std_logic := '1';
signal err_counter_int : std_logic_vector(DATA_WIDTH-1 downto 0) := (others=>'0');
signal heal_scrub_status : std_logic_vector(1 downto 0) := (others=>'0');
signal mem_ready_int, rd_op_done_int, wr_op_done_int, rd_grnt_int, wr_grnt_int, rd_req_int, wr_req_int : std_logic := '0';
signal rd_data_int, wr_data_int : std_logic_vector(DATA_WIDTH-1 downto 0) := (others=>'0');
signal cpu_rw_addr_int : std_logic_vector((COLS_WIDTH-1+ROW_WIDTH+BANK_WIDTH) downto 0) := (others=>'0');
signal ctrl_state_int : std_logic_vector(26 downto 0) := (others=>'0');
signal current_en_scrubbing, next_en_scrubbing : tmr_std_logic_bit := (others=>'1');
signal voted_en_scrubbing : std_logic := '1';
signal current_en_err_test, next_en_err_test : tmr_std_logic_bit := (others=>'0');
signal voted_en_err_test : std_logic := '0';
signal current_ctrl_state : std_logic_vector(26 downto 0) := (others=>'0');
signal current_rd_data : std_logic_vector(31 downto 0) := (others=>'0');
--attribute syn_preserve of current_en_scrubbing, current_en_err_test : signal is "true";

alias cpu_rw_addr_cmd : std_logic_vector(0 downto 0) is cpu_rw_addr_int((COLS_WIDTH+ROW_WIDTH+BANK_WIDTH-1) downto COLS_WIDTH+ROW_WIDTH+BANK_WIDTH-1);

begin
--outputs logic
mem_ready_o <= mem_ready_int;
--inputs logic
cpu_rw_addr_int <= avs_address;
--debug signals
err_detect_o <= err_detected_int;
err_counter_o <= err_counter_int;
scrubbing_proc_run_o <= heal_scrub_status(0);
healing_proc_run_o <= heal_scrub_status(1);
voted_data_o <= rd_data_int;
--internal wires
voted_en_scrubbing <= majority_vote(current_en_scrubbing(0), current_en_scrubbing(1), current_en_scrubbing(2));
voted_en_err_test <= majority_vote(current_en_err_test(0), current_en_err_test(1), current_en_err_test(2));
--slave signals

mux_rw_req: process(cpu_rw_addr_cmd, avs_read, avs_write)
begin
	if cpu_rw_addr_cmd="0" then
		rd_req_int <= avs_read; 
		wr_req_int <= avs_write;
	else
		rd_req_int <= '0';
		wr_req_int <= '0';
	end if;
end process;

demux_avs_writedata: process(cpu_rw_addr_cmd, cpu_rw_addr_int, avs_writedata, voted_en_scrubbing, avs_write)
begin
    next_en_scrubbing <= (others=>voted_en_scrubbing);
    if GEN_ERR_INJ=TRUE then
        next_en_err_test <= (others=>voted_en_err_test);
    end if;
	if avs_write='1' and cpu_rw_addr_cmd="1" then
		case cpu_rw_addr_int(4 downto 0) is
			when "00001"=> --reset counter when reading to this address
				wr_data_int <= (others=>'0');
				rst_err_counter_int <= '0';
			when "00010"=> --control error injection
				if GEN_ERR_INJ=TRUE then
					next_en_err_test <= (others=>avs_writedata(0));
				end if;
				wr_data_int <= (others=>'0');
				rst_err_counter_int <= '1';
			when "00100"=> --control scrubbing
				next_en_scrubbing <= (others=>avs_writedata(0));
				wr_data_int <= (others=>'0');
				rst_err_counter_int <= '1';
			when others=> --NOT USED by write
				wr_data_int <= (others=>'0');
				rst_err_counter_int <= '1';
		end case;
	else
		wr_data_int <= avs_writedata(DATA_WIDTH-1 downto 0);
		rst_err_counter_int <= '1';
	end if;
end process;

mux_avs_readdata: process(csi_clock, rd_op_done_int, avs_read, cpu_rw_addr_cmd, cpu_rw_addr_int, err_counter_int, voted_en_err_test, voted_en_scrubbing, ctrl_state_int, heal_scrub_status, rd_data_int)
	variable delay_read_req, delay_read_done : std_logic := '0';
begin
    if cpu_rw_addr_cmd="1" then
        case cpu_rw_addr_int(4 downto 0) is
            when "00001"=>	--read counter when reading to this address
                avs_readdata <= (31 downto DATA_WIDTH=>'0') & err_counter_int;
            when "00010"=>	--read error injection register	
                avs_readdata <= (31 downto 1=>'0') & voted_en_err_test;
            when "00100"=>	--read enable scrubbing register
                avs_readdata <= (31 downto 1=>'0') & voted_en_scrubbing;
            when "01000"=>	--readout healing/scrubbing/idle state
                avs_readdata <= (31 downto 27=>'0') & current_ctrl_state;
            when others=>
                avs_readdata <= (others=>'0');
        end case;
    else
        avs_readdata <= current_rd_data;--(31 downto DATA_WIDTH=>'0') & rd_data_int;
    end if;
end process;

mux_avs_waitrequest: process(mem_ready_int, rd_req_int, rd_grnt_int, rd_op_done_int, wr_grnt_int, wr_op_done_int)
    variable temp_waitrequest : std_logic := '0';
begin
	if mem_ready_int='0' then
		avs_waitrequest <= (rd_req_int or wr_req_int); --if memory not ready and cpu tries to access it, it has to wait
	elsif cpu_rw_addr_cmd="1" then
	   	if rising_edge(csi_clock) then
           if temp_waitrequest = '1' then
              temp_waitrequest := '0';
           else
              temp_waitrequest := avs_write or avs_read;
           end if;
        end if;
        avs_waitrequest <= '0';
        avs_readdatavalid <= not(temp_waitrequest);
	elsif cpu_rw_addr_cmd="0" then
        avs_waitrequest <= (rd_req_int and not(rd_grnt_int)) or (wr_req_int and not(wr_grnt_int));
        avs_readdatavalid <= rd_op_done_int;
	end if;
end process;

status_registers: process(csi_clock, rsi_reset_n, next_en_scrubbing, next_en_err_test)
begin
	if rsi_reset_n = '0' then
        current_en_scrubbing <= (others=>'1');
        if GEN_ERR_INJ=TRUE then
            current_en_err_test <= (others=>'0');
        end if;
    elsif rising_edge(csi_clock) then
        current_ctrl_state <= ctrl_state_int;
        current_rd_data <= (31 downto DATA_WIDTH=>'0') & rd_data_int;
        current_en_scrubbing <= (others=>majority_vote(next_en_scrubbing(0), next_en_scrubbing(1), next_en_scrubbing(2)));
        if GEN_ERR_INJ=TRUE then
            current_en_err_test <= (others=>majority_vote(next_en_err_test(0), next_en_err_test(1), next_en_err_test(2)));
        end if;
	end if;
end process;

sdram_ctrl_tmr_inst : entity work.sdram_ctrl_tmr_top 
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
	cke_o => cke_o,
	bank_o => bank_o,
	addr_o => addr_o,
	cs_o => cs_o,
	ras_o => ras_o,
	cas_o => cas_o,
	we_o => we_o,
	dqm_o => dqm_o,
	dataQ_io => dataQ_io,
	--Testing interface
	en_scrubbing_i => voted_en_scrubbing,
	en_err_test_i => voted_en_err_test,
	err_detect_o => err_detected_int,
	err_counter_o => err_counter_int,
	rst_err_counter_i => rst_err_counter_int,
	scrubbing_proc_run => heal_scrub_status(0),
	healing_proc_run => heal_scrub_status(1),
	--Controller Interface
	rstn_i => rsi_reset_n,
	clk_i => csi_clock,
	wr_req_i => wr_req_int,
	wr_grnt_o => wr_grnt_int,
	wr_data_i => wr_data_int,
	rd_data_o => rd_data_int,
	rd_req_i => rd_req_int,
	rd_grnt_o => rd_grnt_int,
	wr_op_done_o => wr_op_done_int,
	rd_op_done_o => rd_op_done_int,
	rw_addr_i => cpu_rw_addr_int(COLS_WIDTH+ROW_WIDTH+BANK_WIDTH-1-1 downto 0),
	mem_ready_o => mem_ready_int,
	ctrl_state_o => ctrl_state_int
);
end behave;