----------------------------------------------------------------------------------
-- Created By: Eleftherios Kyriakakis
-- 
-- Design Name: SDRAM Controller with SEU EDAC (Error-Detection-And-Correction) mechanisms
-- Module Name: sdram_ctrl_tmr_healer - behave
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

entity sdram_ctrl_tmr_healer is
  generic(
        DATA_WIDTH : Integer := 32;
        DQM_WIDTH : Integer := 4;
        ROW_WIDTH : Integer := 13;
		COLS_WIDTH : Integer := 10;
        BANK_WIDTH : Integer := 2;
        RAM_COLS : Integer := 1024;
        RAM_ROWS : Integer := 8192;
        RAM_BANKS : Integer := 4;
        TMR_COLS : Integer := 768
    ); 
	PORT (
		rstn_i : in std_logic := '1';
        clk_i : in std_logic := '0';
        mem_ready_i : in std_logic := '0';
        wr_grnt_i : in std_logic := '0';
        wr_done_i : in std_logic := '0';
      	rst_err_counter_i : in std_logic := '0';
        voted_error_count_i: in std_logic_vector(DATA_WIDTH-1 downto 0) := (others=>'0');
        voted_data_i : in std_logic_vector(DATA_WIDTH-1 downto 0) := (others=>'0');
        feedback_addr_i : in std_logic_vector((COLS_WIDTH+ROW_WIDTH+BANK_WIDTH)-1 downto 0) := (others=>'0');
        healing_o : out std_logic := '0';
        healing_wr_req_o : out std_logic := '0';
        healing_addr_o : out std_logic_vector((COLS_WIDTH+ROW_WIDTH+BANK_WIDTH)-1 downto 0) := (others=>'0');
        healing_data_o : out std_logic_vector(DATA_WIDTH-1 downto 0) := (others=>'0');
        healing_state_o : out std_logic_vector(2 downto 0) := (others=>'0');
        error_count_o : out std_logic_vector(DATA_WIDTH-1 downto 0) := (others=>'0')
	);
end sdram_ctrl_tmr_healer;

architecture behave of sdram_ctrl_tmr_healer is

--attributes
attribute keep_hierarchy : string;
attribute keep_hierarchy of behave : architecture is "yes";
attribute keep : string;
attribute syn_preserve : string;

--types
type tmr_std_logic_buffer is array (0 to 2) of std_logic_vector(DATA_WIDTH-1 downto 0);

--internal healer signals
--signal current_heal_op_done, next_heal_op_done : std_logic := '0';
signal current_heal_wr_req, next_heal_wr_req : std_logic := '0';
--signal current_heal_wr_data, next_heal_wr_data : std_logic_vector(DATA_WIDTH-1 downto 0) := (others=>'0');
--signal current_healing_addr, next_healing_addr : std_logic_vector((COLS_WIDTH+ROW_WIDTH+BANK_WIDTH)-1 downto 0) := (others=>'0');

--Healing module states.
type healing_state_type is (ST_WAIT, ST_REQ_HEAL, ST_HEAL);
attribute enum_encoding : string;
attribute enum_encoding of healing_state_type :  type is "001 010 100"; --Choose an encoding based on the number of states in the enumeration type. If there are fewer than five states, use the s"sequential" encoding. If there are more than five but fewer than 50 states, use a "one-hot" encoding. Otherwise, use a "gray" encoding.
signal current_healing_state : healing_state_type := ST_WAIT;
signal next_healing_state : healing_state_type := ST_WAIT;

--voter/error logic
signal current_healing, next_healing : std_logic := '0';
signal current_err_count, next_err_count : std_logic_vector(DATA_WIDTH-1 downto 0) := (others=>'0');

--apply attributes
attribute syn_preserve of current_healing, current_healing_state : signal is "true";

begin

--drive outputs
healing_o <= current_healing;
healing_wr_req_o <= current_heal_wr_req;
healing_addr_o <= feedback_addr_i;
healing_data_o <= voted_data_i;
error_count_o <= current_err_count;

--register healing signals
regs_healing: process(clk_i, rstn_i, mem_ready_i)
begin
	if rstn_i = '0' then
            --healing registers
            current_healing_state <= ST_WAIT;
            --current_heal_op_done <= '0';
            current_heal_wr_req <= '0';
            --current_heal_wr_data <= (others=>'0');
            --current_healing_addr <= (others=>'0');
            current_healing <= '0';
            current_err_count <= (others=>'0');
	elsif rising_edge(clk_i) then
	   if mem_ready_i = '1' then
			--healing registers
			current_healing_state <= next_healing_state;
			--current_heal_op_done <= next_heal_op_done;
			current_heal_wr_req <= next_heal_wr_req;
			--current_heal_wr_data <= next_heal_wr_data;
			--current_healing_addr <= next_healing_addr;
			current_healing <= next_healing;
			--error registers
			if rst_err_counter_i = '0' then
				current_err_count <= (others=>'0');
			else
				current_err_count <= next_err_count;
			end if;
		end if;
	end if;
end process;

--healing fsm
healing_proc : process(voted_error_count_i, wr_grnt_i, wr_done_i, current_healing_state, current_heal_wr_req, current_healing, current_err_count)
begin
	--avoid latches
	next_healing_state <= current_healing_state;
	--next_heal_op_done <= current_heal_op_done;
	next_heal_wr_req <= current_heal_wr_req;
	--next_heal_wr_data <= current_heal_wr_data;
	--next_healing_addr <= current_healing_addr;
	next_healing <= current_healing;
	next_err_count <= current_err_count;
	--control fsm
	case current_healing_state is
	when ST_WAIT=>
		next_healing <= '0';
		if unsigned(voted_error_count_i) > 0 then
			--next_heal_op_done <= '0';
			next_healing <= '1';
			next_err_count <= std_logic_vector(unsigned(current_err_count) + unsigned(voted_error_count_i));
			next_healing_state <= ST_REQ_HEAL;
			next_heal_wr_req <= '1';
			--next_healing_addr <= feedback_addr_i;
			--next_heal_wr_data <= voted_data_i;
		end if;
		healing_state_o <= "001";
	when ST_REQ_HEAL=>
		if wr_grnt_i = '1' then
			next_healing_state <= ST_HEAL;
			next_heal_wr_req <= '0';
			--next_healing_addr <= (others=>'0');
			--next_heal_wr_data <= (others=>'0');
		end if;
		healing_state_o <= "010";
	when ST_HEAL=>
		if wr_done_i = '1' then
			next_healing_state <= ST_WAIT;
			next_heal_wr_req <= '0';
			next_healing <= '0';
			--next_heal_op_done <= '1';
			--next_heal_wr_data <= (others=>'0');
		end if;
		healing_state_o <= "100";
	when others=>
		next_healing_state <= ST_WAIT;
		--next_heal_op_done <= '0';
		next_heal_wr_req <= '0';
		--next_heal_wr_data <= (others=>'0');
		--next_healing_addr<= (others=>'0');
		next_healing <= '0';
		healing_state_o <= "000";
	end case;
end process;

end behave;