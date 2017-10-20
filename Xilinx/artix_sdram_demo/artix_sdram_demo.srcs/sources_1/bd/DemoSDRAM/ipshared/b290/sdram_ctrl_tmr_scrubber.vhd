----------------------------------------------------------------------------------
-- Company: KTH Department of Electronics
-- Engineer: Lefteris Kyriakakis
-- 
-- Create Date: 01/22/2016 08:26:19 PM
-- Design Name: SDRAM SDR Controller with SEU mitigation mechanisms
-- Module Name: sdram_ctrl_tmr_scrubber - behave
-- Project Name: SEUD
-- Target Devices:
-- 	Boards: Artix-7, DE2-115
--		Memories: IS42/45R86400D/16320D/32160D, IS42/45S86400D/16320D/32160D, IS42/45SM/RM/VM16160K 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity sdram_ctrl_tmr_scrubber is
  generic(
        DATA_WIDTH : Integer := 32;
        DQM_WIDTH : Integer := 4;
        ROW_WIDTH : Integer := 13;
		COLS_WIDTH : Integer := 10;
        BANK_WIDTH : Integer := 2;
        RAM_COLS : Integer := 1024;
        RAM_ROWS : Integer := 8192;
        RAM_BANKS : Integer := 4;
        TMR_COLS : Integer := 768;
		SCRUBBER_WAIT_CYCLES : Integer := 1 --should not be less than 1
    ); 
	port (
		rstn_i : in std_logic := '1';
        clk_i : in std_logic := '0';
        en_i : in std_logic := '0';
        mem_ready_i : in std_logic := '0';
        rd_grnt_i : in std_logic := '0';
        rd_done_i : in std_logic := '0';
        scrub_rd_req_o : out std_logic := '0';
        scrubbing_o : out std_logic := '0';
        scrubbing_addr_o : out std_logic_vector((COLS_WIDTH+ROW_WIDTH+BANK_WIDTH)-1 downto 0) := (others=>'0');
        scrubbing_state_o : out std_logic_vector(2 downto 0) := (others=>'0')
	);
end sdram_ctrl_tmr_scrubber;

architecture behave of sdram_ctrl_tmr_scrubber is
attribute keep_hierarchy : string;
attribute keep_hierarchy of behave : architecture is "yes";
--attributes
attribute keep : string;
attribute syn_preserve : string;

--HOST TMR
--constant TMR_RANGE : std_logic_vector(COLS_WIDTH-1 downto 0) := std_logic_vector(to_unsigned(TMR_COLS/3, COLS_WIDTH));

--internal scrubber/healer signals
signal current_scrub_rd_req, next_scrub_rd_req : std_logic := '0';
--signal current_scrubbing_addr, next_scrubbing_addr : std_logic_vector((COLS_WIDTH+ROW_WIDTH+BANK_WIDTH)-1 downto 0) := (others=>'0');
signal current_scrub_wait_count, next_scrub_wait_count : integer range 0 to SCRUBBER_WAIT_CYCLES+1 := 0;
signal current_scrub_col_index, next_scrub_col_index : std_logic_vector(COLS_WIDTH-1 downto 0) := (others=>'0');--std_logic_vector(to_unsigned(TMR_COLS, COLS_WIDTH));
signal current_scrub_row_index, next_scrub_row_index : std_logic_vector(ROW_WIDTH-1 downto 0) := (others=>'0');
signal current_scrub_bank_index, next_scrub_bank_index : std_logic_vector(BANK_WIDTH-1 downto 0) := (others=>'0');

attribute syn_preserve of current_scrub_rd_req, current_scrub_wait_count, current_scrub_col_index, current_scrub_row_index, current_scrub_bank_index : signal is "true";

--Scrubbing module states.
type scrubbing_state_type is (ST_WAIT, ST_REQ_SCRUB, ST_SCRUB);
attribute enum_encoding : string;
attribute enum_encoding of scrubbing_state_type :  type is "001 010 100"; --Choose an encoding based on the number of states in the enumeration type. If there are fewer than five states, use the s"sequential" encoding. If there are more than five but fewer than 50 states, use a "one-hot" encoding. Otherwise, use a "gray" encoding.
signal current_scrubbing_state : scrubbing_state_type := ST_WAIT;
signal next_scrubbing_state : scrubbing_state_type := ST_WAIT;

--voter/error logic
signal current_scrubbing, next_scrubbing : std_logic := '0';

--applying attributes
attribute syn_preserve of current_scrubbing, current_scrubbing_state : signal is "true";

begin

--drive outputs
scrub_rd_req_o <= current_scrub_rd_req;
scrubbing_o <= current_scrubbing;
scrubbing_addr_o <= current_scrub_bank_index & current_scrub_row_index & current_scrub_col_index;

--register healing signals
regs_healing: process(clk_i, rstn_i)
begin
	if rising_edge(clk_i)  then
	   if rstn_i = '0' then
            --scrubbing registers
            current_scrubbing_state <= ST_WAIT;
            --current_scrubbing_addr <= (others=>'0');
            current_scrub_rd_req <= '0';
            current_scrubbing <= '0';
            current_scrub_wait_count <= 0;
            current_scrub_col_index <= (others=>'0');
            current_scrub_row_index <= (others=>'0');
            current_scrub_bank_index <= (others=>'0');
        elsif mem_ready_i = '1' then
			--scrubbing registers
			current_scrubbing_state <= next_scrubbing_state;
			--current_scrubbing_addr <= next_scrubbing_addr;
			current_scrub_rd_req<= next_scrub_rd_req;
			current_scrubbing <= next_scrubbing;
			current_scrub_wait_count <= next_scrub_wait_count;
			current_scrub_col_index <= next_scrub_col_index;
			current_scrub_row_index <= next_scrub_row_index;
			current_scrub_bank_index <= next_scrub_bank_index;
		end if;
	end if;
end process;

--scrubbing fsm
scrubbing_proc: process(rd_grnt_i, rd_done_i, en_i, current_scrubbing_state,
current_scrub_rd_req, current_scrubbing, current_scrub_wait_count, current_scrub_col_index, current_scrub_row_index, current_scrub_bank_index)
begin
	next_scrubbing_state <= current_scrubbing_state;
	--next_scrubbing_addr <= current_scrub_bank_index & current_scrub_row_index & current_scrub_col_index;
	next_scrub_rd_req <= current_scrub_rd_req;
	next_scrubbing <= current_scrubbing;
	next_scrub_wait_count <= current_scrub_wait_count;
	next_scrub_col_index <= current_scrub_col_index;
	next_scrub_row_index <= current_scrub_row_index;
	next_scrub_bank_index <= current_scrub_bank_index;
	case current_scrubbing_state is
		when ST_WAIT=>
		    next_scrubbing <= '0';
			if current_scrub_wait_count=SCRUBBER_WAIT_CYCLES-1 then
			  next_scrub_wait_count <= 0;
			  if  en_i='1' then
				  next_scrubbing_state <= ST_REQ_SCRUB;
				  next_scrub_rd_req <= '1';
				  next_scrubbing <= '1';
			  end if;
			else
				next_scrub_wait_count <= current_scrub_wait_count + 1;
			end if;
			scrubbing_state_o <= "001";
		when ST_REQ_SCRUB=>
			if rd_grnt_i='1' then
				next_scrubbing_state <= ST_SCRUB;
				next_scrub_rd_req <= '0';
			end if;
			scrubbing_state_o <= "010";
		when ST_SCRUB=>
			if rd_done_i = '1' then
				next_scrubbing_state <= ST_WAIT;
				next_scrub_rd_req <= '0';
				next_scrubbing <= '0';
				if unsigned(current_scrub_col_index)>=RAM_COLS-4 then
					next_scrub_col_index <= (others=>'0');
					if unsigned(current_scrub_row_index)>=RAM_ROWS-1 then
						next_scrub_row_index <= (others=>'0');
						if unsigned(current_scrub_bank_index)>=RAM_BANKS-1 then
							next_scrub_bank_index <= (others=>'0');
						else
							next_scrub_bank_index <= std_logic_vector(unsigned(current_scrub_bank_index) + 1);
						end if;
					else
						next_scrub_row_index <= std_logic_vector(unsigned(current_scrub_row_index) + 1);
					end if;
				else
					next_scrub_col_index <= std_logic_vector(unsigned(current_scrub_col_index) + 4);
				end if;
			end if;
			scrubbing_state_o <= "100";
		when others=>
			next_scrubbing_state <= ST_WAIT;
			--next_scrubbing_addr <= (others=>'0');
			next_scrub_rd_req <= '0';
			next_scrubbing <= '0';
			next_scrub_wait_count <= 0;
			next_scrub_col_index <= (others=>'0');
			next_scrub_row_index <= (others=>'0');
			next_scrub_bank_index <= (others=>'0');
			scrubbing_state_o <= "000";
	end case;
end process;
  
end behave;