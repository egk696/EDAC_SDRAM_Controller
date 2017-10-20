-- Code your design here
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity testbench_tmr_address_mask is 
	generic(
        DATA_WIDTH : Integer := 32;
        DQM_WIDTH : Integer := 4;
        ROW_WIDTH : Integer := 13;
		COLS_WIDTH : Integer := 10;
        BANK_WIDTH : Integer := 2;
		COLS_LIMIT : Integer := 768;
        ROWS_LIMIT : Integer := 8192;
        BANKS_LIMIT : Integer := 4
    );
end testbench_tmr_address_mask;

architecture behave of testbench_tmr_address_mask is

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
        cpu_rw_addr : in std_logic_vector((BANK_WIDTH+ROW_WIDTH+COLS_WIDTH-1)-1 downto 0) := (others=>'0'); --
        mask_rw_addr : out std_logic_vector((BANK_WIDTH+ROW_WIDTH+COLS_WIDTH)-1 downto 0) := (others=>'0') --is bigger due to shift
    );
end component;

	signal cpu_rw_addr_int : unsigned((BANK_WIDTH+ROW_WIDTH+COLS_WIDTH-1)-1 downto 0) := (others=>'0');
	signal mask_rw_addr_int : std_logic_vector((BANK_WIDTH+ROW_WIDTH+COLS_WIDTH)-1 downto 0) := (others=>'0');
	signal clk_int : std_logic := '1';

begin

clk_int <= not(clk_int) after 10 ns;

-- COL_ADDR -- CPU    SIDE -- CTRL   SIDE
-- COL_ADDR -- 00|00000000 -- 00000000|00
-- COL_ADDR -- 00|00000001 -- 00000001|00
-- COL_ADDR -- 01|00000000 -- 00000000|00
-- COL_ADDR -- 01|00000001 -- 00000001|00
-- COL_ADDR -- 10|00000000 -- 00000000|00
-- COL_ADDR -- 10|00000001 -- 00000001|00
-- COL_ADDR -- 11|00000000 -- 00000000|11
-- COL_ADDR -- 11|00000001 -- 00000001|11

process(clk_int)
begin
    if rising_edge(clk_int) then
        cpu_rw_addr_int <= cpu_rw_addr_int + 1;
    end if;
end process;

tmr_address_mask_inst: tmr_address_mask 
generic map(
	DATA_WIDTH => DATA_WIDTH,
    DQM_WIDTH => DQM_WIDTH,
    ROW_WIDTH => ROW_WIDTH,
	COLS_WIDTH => COLS_WIDTH,
    BANK_WIDTH => BANK_WIDTH,
	COLS_LIMIT => COLS_LIMIT,
    ROWS_LIMIT => ROWS_LIMIT,
    BANKS_LIMIT => BANKS_LIMIT
)
port map(cpu_rw_addr=>std_logic_vector(cpu_rw_addr_int), mask_rw_addr=>mask_rw_addr_int);


end behave;
