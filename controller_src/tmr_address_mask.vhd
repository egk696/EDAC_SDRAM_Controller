----------------------------------------------------------------------------------
-- Created By: Eleftherios Kyriakakis
-- 
-- Design Name: SDRAM Controller with SEU EDAC (Error-Detection-And-Correction) mechanisms
-- Module Name: tmr_address_mask - behave
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

entity tmr_address_mask is
	generic(
        DATA_WIDTH : Integer := 32;
        DQM_WIDTH : Integer := 4;
        ROW_WIDTH : Integer := 13;
		COLS_WIDTH : Integer := 9;
        BANK_WIDTH : Integer := 2;
		COLS_LIMIT : Integer := 768;
        ROWS_LIMIT : Integer := 8192;
        BANKS_LIMIT : Integer := 4
    );
	port(
        cpu_rw_addr : in std_logic_vector((BANK_WIDTH+ROW_WIDTH+COLS_WIDTH-1)-1 downto 0) := (others=>'0'); --
        mask_rw_addr : out std_logic_vector((BANK_WIDTH+ROW_WIDTH+COLS_WIDTH)-1 downto 0) := (others=>'0') --is bigger due to shift
    );
end tmr_address_mask;

architecture behave of tmr_address_mask is

constant CPU_ADDR_WIDTH : Integer := (BANK_WIDTH+ROW_WIDTH+COLS_WIDTH-1);

--original request
alias cpu_rw_addr_tmrbits : std_logic_vector(0 downto 0) is cpu_rw_addr(CPU_ADDR_WIDTH-1 downto CPU_ADDR_WIDTH-1);
alias cpu_rw_addr_column : std_logic_vector(COLS_WIDTH-3 downto 0) is cpu_rw_addr(COLS_WIDTH-3 downto 0);

--masked request
alias mask_rw_addr_tmrbits : std_logic_vector(1 downto 0) is mask_rw_addr(1 downto 0);
alias mask_rw_addr_column : std_logic_vector(COLS_WIDTH-3 downto 0) is mask_rw_addr(COLS_WIDTH-1 downto 2);
alias mask_rw_addr_row : std_logic_vector(ROW_WIDTH-1 downto 0) is mask_rw_addr(ROW_WIDTH+COLS_WIDTH-1 downto COLS_WIDTH);
alias mask_rw_addr_bank : std_logic_vector(BANK_WIDTH-1 downto 0) is mask_rw_addr(BANK_WIDTH+ROW_WIDTH+COLS_WIDTH-1 downto ROW_WIDTH+COLS_WIDTH);


begin

-- COL_ADDR -- CPU    SIDE -- CTRL   SIDE
-- COL_ADDR -- 00|00000000 -- 00000000|00
-- COL_ADDR -- 00|00000001 -- 00000001|00
-- COL_ADDR -- 01|00000000 -- 00000000|00
-- COL_ADDR -- 01|00000001 -- 00000001|00
-- COL_ADDR -- 10|00000000 -- 00000000|00
-- COL_ADDR -- 10|00000001 -- 00000001|00
-- COL_ADDR -- 11|00000000 -- 00000000|11
-- COL_ADDR -- 11|00000001 -- 00000001|11

process(cpu_rw_addr, cpu_rw_addr_tmrbits)
begin
    case cpu_rw_addr_tmrbits is
        when "1"=> mask_rw_addr_tmrbits <= "11";
        when others=> mask_rw_addr_tmrbits <= "00";
    end case;
    --mask_rw_addr_column <= cpu_rw_addr_column;
    mask_rw_addr(BANK_WIDTH+ROW_WIDTH+COLS_WIDTH-1 downto 2) <= cpu_rw_addr((BANK_WIDTH+ROW_WIDTH+COLS_WIDTH-1)-2 downto 0);
end process;


end behave;