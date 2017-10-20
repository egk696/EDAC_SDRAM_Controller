----------------------------------------------------------------------------------
-- Company: KTH Department of Electronics
-- Engineer: Lefteris Kyriakakis
-- 
-- Create Date: 01/22/2016 08:26:19 PM
-- Design Name: Fixed Arbitration for Dual Avalon-MM Slave Ports
-- Module Name: avs_dualport_fixed_arbiter - behave
-- Project Name: SEUD-MIST
-- Target Devices: Any
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity avs_dualport_fixed_arbiter is
	generic(
        DATA_WIDTH : Integer := 16;
        DQM_WIDTH : Integer := 2;
        ROW_WIDTH : Integer := 13;
		COLS_WIDTH : Integer := 9;
        BANK_WIDTH : Integer := 2
    );
	port(
		--Global
		clk : in std_logic := '0';
		rstn : in std_logic := '1';
		--Avalon Interface
        portA_address : in std_logic_vector((BANK_WIDTH+ROW_WIDTH+COLS_WIDTH-1) downto 0) := (others=>'0');
		portA_read : in std_logic := '0';
		portA_readdata : out std_logic_vector(DATA_WIDTH-1 downto 0) := (others=>'0');
		portA_write : in std_logic := '0';
		--portA_byteen : in std_logic_vector((DATA_WIDTH/8)-1 downto 0) := (others=>'0');
		portA_writedata : in std_logic_vector(DATA_WIDTH-1 downto 0) := (others=>'0');
		portA_waitrequest : out std_logic := '0';
		portA_readdatavalid : out std_logic := '0';
		
		--Direct access interface
		portB_address : in std_logic_vector((BANK_WIDTH+ROW_WIDTH+COLS_WIDTH-1) downto 0) := (others=>'0');
		portB_read : in std_logic := '0';
		portB_readdata : out std_logic_vector(DATA_WIDTH-1 downto 0) := (others=>'0');
		portB_write : in std_logic := '0';
		--portB_byteen : in std_logic_vector((DATA_WIDTH/8)-1 downto 0) := (others=>'0');
		portB_writedata : in std_logic_vector(DATA_WIDTH-1 downto 0) := (others=>'0');
		portB_waitrequest : out std_logic := '0';
		portB_readdatavalid : out std_logic := '0';

		--Arbitrated access signals
 		ram_address : out std_logic_vector((BANK_WIDTH+ROW_WIDTH+COLS_WIDTH-1) downto 0) := (others=>'0');
 		ram_read : out std_logic := '0';
 		ram_readdata : in std_logic_vector(DATA_WIDTH-1 downto 0) := (others=>'0');
 		ram_write : out std_logic := '0';
 		--arb_byteen : out std_logic_vector((DATA_WIDTH/8)-1 downto 0) := (others=>'0');
 		ram_writedata : out std_logic_vector(DATA_WIDTH-1 downto 0) := (others=>'0');
 		ram_waitrequest : in std_logic := '0';
 		ram_readdatavalid : in std_logic := '0'
	);
end avs_dualport_fixed_arbiter;

architecture behave of avs_dualport_fixed_arbiter is

--signal arb_grant : std_logic_vector(1 downto 0) := "00";
signal portA_req, portB_req : std_logic := '0';
signal portA_busy, portB_busy : std_logic := '0';

signal arb_portA_grant : std_logic;--CPU is 0 index
signal arb_portB_grant : std_logic; --DMA is 1 index

begin

--request
portA_req <= portA_write or portA_read;
portB_req <= portB_write or portB_read;

portA_busy <= (ram_waitrequest or not(arb_portA_grant)) and portA_req;
portB_busy <= (ram_waitrequest or not(arb_portB_grant)) and portB_req;

--fixed arbitration
fixed_arb: process(clk, rstn, arb_portB_grant, arb_portA_grant, arb_portB_grant, portB_req, portA_req, portA_busy, portB_busy)
begin
	if rising_edge(clk) then
		arb_portA_grant <= (portA_req or portA_busy) and not(arb_portB_grant);
		arb_portB_grant <= (portB_req or portB_busy) and not(arb_portA_grant) and not(portA_req);
	end if;
end process;

portA_waitrequest <= portA_busy;
portB_waitrequest <= portB_busy;

--mux
ram_address <=	portA_address when arb_portA_grant='1' else 
				portB_address when arb_portB_grant='1' else (others=>'0');

ram_writedata <=	portA_writedata when arb_portA_grant='1' else 
					portB_writedata when arb_portB_grant='1' else (others=>'0');

--ram_byteen <=	portA_byteen when arb_portA_grant='1' else 
--				portB_byteen when arb_portB_grant='1';


--demux
demux_signals: process(arb_portA_grant, arb_portB_grant, ram_readdatavalid, ram_readdata)
	variable arb_grant : std_logic_vector(1 downto 0) := (others=>'0');
begin
	arb_grant := arb_portB_grant & arb_portA_grant; 
	case arb_grant is
		when "01"=>
			portA_readdatavalid <= ram_readdatavalid;
			portA_readdata <= ram_readdata;
			portB_readdatavalid <= '0';
			portB_readdata <= (others=>'0');
		when "10"=>
			portA_readdatavalid <= '0';
			portA_readdata <= (others=>'0');
			portB_readdatavalid <= ram_readdatavalid;
			portB_readdata <= ram_readdata;
		when others=>
			portA_readdatavalid <= '0';
			portA_readdata <= (others=>'0');
			portB_readdatavalid <= '0';
			portB_readdata <= (others=>'0');
	end case;
end process;


end behave;