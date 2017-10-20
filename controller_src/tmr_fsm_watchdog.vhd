----------------------------------------------------------------------------------
-- Created By: Eleftherios Kyriakakis
-- 
-- Design Name: SDRAM Controller with SEU EDAC (Error-Detection-And-Correction) mechanisms
-- Module Name: tmr_fsm_watchdog - behave
-- Project Name: SEUD-MIST KTH Royal Institute Of Technology
-- Tested Devices:
-- 	FPGA: Cyclone IV, Artix-7
--	Memories:  IS42/45S16320B, IS42/45R86400D/16320D/32160D, IS42/45S86400D/16320D/32160D, IS42/45SM/RM/VM16160K 
-- Comments:
--  Requires tmr_error_generator.vhd 
--  Expects one-hot encoded states
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.utils_pack.all;

entity tmr_fsm_watchdog is
    generic(
        RST_POLARITY : std_logic := '0';
        EXCLUDE_STATE : std_logic_vector := "000000000000000000000000010";
        FSM_WIDTH : Integer := 27;
        DATA_WIDTH : Integer := 32;
        COUNT_WIDTH : Integer := 4
    );
    port(
        clk_i : in std_logic := '0';
        rstn_i : in std_logic := '0';
        fsm_state_i : in std_logic_vector(FSM_WIDTH-1 downto 0) := (others=>'0');
        rst_fsm_o : out std_logic := not(RST_POLARITY);
        err_detect_o : out std_logic := '0'
    );
end tmr_fsm_watchdog;


architecture behave of tmr_fsm_watchdog is
    type tmr_fsm_state_vector is array (0 to 2) of std_logic_vector(FSM_WIDTH-1 downto 0);
    type tmr_counter_vector is array (0 to 2) of std_logic_vector(COUNT_WIDTH-1 downto 0);
    type tmr_rst_logic is array(0 to 2) of std_logic;
    type tmr_rst_vector is array(0 to 2) of std_logic_vector(COUNT_WIDTH-1 downto 0);
    signal reg_fsm_state : tmr_fsm_state_vector := (others=>(others=>'0'));
    signal voted_reg_fsm_state : std_logic_vector(FSM_WIDTH-1 downto 0) := (others=>'0');
    signal same_state_counter : tmr_counter_vector := (others=>(others=>'0'));
    signal voted_same_state_counter : std_logic_vector(COUNT_WIDTH-1 downto 0) := (others=>'0');
    signal reg_rst_fsm : tmr_rst_logic := (others=>not(RST_POLARITY));
    signal voted_rst_fsm : std_logic := not(RST_POLARITY);
    signal rst_same_state_counter : std_logic := '1';

    --signal rst_vector0, rst_vector1, rst_vector2 : std_logic_vector(COUNT_WIDTH-1 downto 0) := (others=>not(RST_POLARITY));
    --signal voted_rst_vector : std_logic_vector(COUNT_WIDTH-1 downto 0) := (others=>not(RST_POLARITY));
    --attribute keep: boolean;
    --attribute keep of rst_vector0: signal is true;
    --attribute keep of rst_vector1: signal is true;
    --attribute keep of rst_vector2: signal is true;
begin

voted_reg_fsm_state <= majority_vote(reg_fsm_state(0), reg_fsm_state(1), reg_fsm_state(2));
reg_state: process(clk_i, rstn_i, fsm_state_i)
begin
    if rstn_i = '0' then
        reg_fsm_state <= (others=>(others=>'0'));
    elsif rising_edge(clk_i) then
        reg_fsm_state <= (others=>fsm_state_i);
    end if;
end process;

--voted_rst_vector <= majority_vote(rst_vector0, rst_vector1, rst_vector2);
--shift_rst : process(clk_i, rstn_i, voted_reg_fsm_state)
--begin

--    if voted_reg_fsm_state /= fsm_state_i then
--        rst_vector0 <= (others=>not(RST_POLARITY));
--        rst_vector1 <= (others=>not(RST_POLARITY));
--        rst_vector2 <= (others=>not(RST_POLARITY));
--    elsif rising_edge(clk_i) then
--        rst_vector0(0) <= RST_POLARITY;
--        rst_vector1(0) <= RST_POLARITY;
--        rst_vector2(0) <= RST_POLARITY;
--        rst_vector0(COUNT_WIDTH-1 downto 1) <= voted_rst_vector(COUNT_WIDTH-2 downto 0);
--        rst_vector1(COUNT_WIDTH-1 downto 1) <= voted_rst_vector(COUNT_WIDTH-2 downto 0);
--        rst_vector2(COUNT_WIDTH-1 downto 1) <= voted_rst_vector(COUNT_WIDTH-2 downto 0);
--    end if;
--end process;
    
--rst_fsm_o <= voted_rst_vector(COUNT_WIDTH-1);

rst_same_state_counter <= '0' when voted_reg_fsm_state /= fsm_state_i or voted_reg_fsm_state = EXCLUDE_STATE else '1';

voted_same_state_counter <= majority_vote(same_state_counter(0), same_state_counter(1), same_state_counter(2));
count: process(clk_i, rstn_i, fsm_state_i, voted_reg_fsm_state, voted_same_state_counter)
begin
    if rstn_i = '0' or rst_same_state_counter='0' then
        same_state_counter <= (others=>(others=>'0'));
    elsif rising_edge(clk_i) then
        if voted_same_state_counter /= (COUNT_WIDTH-1 downto 0=>'1') then
            same_state_counter <= (others=>std_logic_vector(unsigned(voted_same_state_counter)+1));
        end if;
    end if;
end process;

rst: process(clk_i, rstn_i, fsm_state_i, voted_reg_fsm_state, voted_same_state_counter)
begin
    if rstn_i = '0' then
        reg_rst_fsm <= (others=>(RST_POLARITY));
    elsif rising_edge(clk_i) then
        if voted_same_state_counter = (COUNT_WIDTH-1 downto 0=>'1') then
            reg_rst_fsm <= (others=>(RST_POLARITY));
        else
            reg_rst_fsm <= (others=>not(RST_POLARITY));
        end if;
    end if;
end process;

voted_rst_fsm <= majority_vote(reg_rst_fsm(0), reg_rst_fsm(1), reg_rst_fsm(2));
rst_fsm_o <= not(RST_POLARITY);

end behave;