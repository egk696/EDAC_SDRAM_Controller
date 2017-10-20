----------------------------------------------------------------------------------
-- Created By: Eleftherios Kyriakakis
-- 
-- Design Name: SDRAM Controller with SEU EDAC (Error-Detection-And-Correction) mechanisms
-- Module Name: tmr_random_generator - behave
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

entity tmr_random_generator is
    generic ( DATA_WIDTH : integer :=  32; INDEX_WIDTH : integer := 2; INDEX_MAX : integer := 3 ); 
port (
      clk, en : in std_logic;
      random_num : out std_logic_vector (DATA_WIDTH-1 downto 0);   --output vector  
	    random_index : out integer range 0 to INDEX_MAX   --output index   	  
    );
end tmr_random_generator;

architecture behave of tmr_random_generator is
signal random_num_int : std_logic_vector (DATA_WIDTH-1 downto 0) := (others=>'0');
begin
	process(clk, en)
		variable rand_temp : std_logic_vector(DATA_WIDTH-1 downto 0):=(DATA_WIDTH-1 => '1',others => '0');
		variable temp : std_logic := '0';
	begin
		if(rising_edge(clk) and en='1') then
			temp := rand_temp(DATA_WIDTH-1) xor rand_temp(DATA_WIDTH-2);
			rand_temp(DATA_WIDTH-1 downto 1) := rand_temp(DATA_WIDTH-2 downto 0);
			rand_temp(0) := temp;
		end if;
	  random_num_int <= rand_temp;
	end process;
	
	random_num <= random_num_int;
	
	process(clk, en, random_num_int)
		variable rand_temp : std_logic_vector(INDEX_WIDTH-1 downto 0):=(INDEX_WIDTH-1 => '1',others => '0');
		variable temp : std_logic := '0';
	begin
		if(rising_edge(clk) and en='1') then
			temp := rand_temp(INDEX_WIDTH-1) xor rand_temp(INDEX_WIDTH-2);
			rand_temp(INDEX_WIDTH-1 downto 1) := rand_temp(INDEX_WIDTH-2 downto 0);
			rand_temp(0) := temp;
		end if;
		if unsigned(rand_temp) > INDEX_MAX then
		  random_index <= to_integer(unsigned(random_num_int(INDEX_WIDTH-1 downto 0) and not(rand_temp)));
		else
	    random_index <= to_integer(unsigned(rand_temp));
	  end if;
	end process;
end behave;