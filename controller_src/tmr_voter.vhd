----------------------------------------------------------------------------------
-- Created By: Eleftherios Kyriakakis
-- 
-- Design Name: SDRAM Controller with SEU EDAC (Error-Detection-And-Correction) mechanisms
-- Module Name: tmr_voter - behave
-- Project Name: SEUD-MIST KTH Royal Institute Of Technology
-- Tested Devices:
-- 	FPGA: Cyclone IV, Artix-7
--	Memories:  IS42/45S16320B, IS42/45R86400D/16320D/32160D, IS42/45S86400D/16320D/32160D, IS42/45SM/RM/VM16160K 
-- Comments:
--  Requires tmr_error_generator.vhd 
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.utils_pack.all;

entity tmr_voter is
	generic(
        DATA_WIDTH : Integer := 32;
        GEN_ERR_INJ : Boolean := FALSE
    );
	port(
		clk_i : in std_logic := '0';
    	en_i : in std_logic := '0';
    	en_err_test_i: in std_logic := '0';
		rd_data_1_i, rd_data_2_i, rd_data_3_i : in std_logic_vector(DATA_WIDTH-1 downto 0) := (others=>'0');
    	voted_data_o : out std_logic_vector(DATA_WIDTH-1 downto 0) := (others=>'0');
		err_count_o : out std_logic_vector(DATA_WIDTH-1 downto 0) := (others=>'0')
    );
end tmr_voter;

architecture behave of tmr_voter is
attribute keep_hierarchy : string;
attribute keep_hierarchy of behave : architecture is "yes";
component tmr_random_generator is
  generic ( DATA_WIDTH : integer :=  32; INDEX_WIDTH : integer := 2; INDEX_MAX : integer := 2 ); 
	port (
      clk, en : in std_logic :='0';
      random_num : out std_logic_vector (DATA_WIDTH-1 downto 0) := (others=>'0');   --output vector  
	  random_index : out integer range 0 to INDEX_MAX := 0   --output index   	  
    );
end component tmr_random_generator;

signal rand_num : std_logic_vector(DATA_WIDTH-1 downto 0) := (others=>'0');
signal rand_ind : integer range 0 to 3 := 0;
begin
  
--majority voter


latch_voting : process(en_i, en_err_test_i, rd_data_1_i, rd_data_2_i, rd_data_3_i, rand_ind, rand_num)
  variable rd_data_w_err_int_1, rd_data_w_err_int_2, rd_data_w_err_int_3 : std_logic_vector(DATA_WIDTH-1 downto 0) := (others=>'0');
  variable diff_data : std_logic_vector(DATA_WIDTH-1 downto 0) := (others=>'0');
begin
	if GEN_ERR_INJ=TRUE then
		if en_err_test_i='1'  then
			case rand_ind is
				when 0=> rd_data_w_err_int_1 := rand_num;
				when others=> rd_data_w_err_int_1 := rd_data_1_i;
			end case;
			case rand_ind is
				when 1=> rd_data_w_err_int_2 := rand_num;
				when others=> rd_data_w_err_int_2 := rd_data_2_i;
			end case;
			case rand_ind is
				when 2=> rd_data_w_err_int_3 := rand_num;
				when others=> rd_data_w_err_int_3 := rd_data_3_i;
			end case;
		else
			rd_data_w_err_int_1 := rd_data_1_i;
			rd_data_w_err_int_2 := rd_data_2_i;
			rd_data_w_err_int_3 := rd_data_3_i;
		end if;
	else
		rd_data_w_err_int_1 := rd_data_1_i;
		rd_data_w_err_int_2 := rd_data_2_i;
		rd_data_w_err_int_3 := rd_data_3_i;
	end if;
	voted_data_o <= majority_vote(rd_data_w_err_int_1, rd_data_w_err_int_2, rd_data_w_err_int_3);
	diff_data := majority_err_detect(rd_data_w_err_int_1, rd_data_w_err_int_2, rd_data_w_err_int_3);
	if en_i='1' then
		err_count_o <= std_logic_vector(count_ones_in_vector(diff_data));
	else
		err_count_o <= (others=>'0');
	end if;
end process;

ERROR_INJ: if GEN_ERR_INJ=TRUE generate
tmr_rand_gen_inst : tmr_random_generator generic map( DATA_WIDTH=>DATA_WIDTH, INDEX_WIDTH=>2, INDEX_MAX=>2) port map(clk=>clk_i, en=>en_err_test_i, random_num=>rand_num, random_index=> rand_ind);
end generate ERROR_INJ;

end behave;