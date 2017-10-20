library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.NUMERIC_STD.ALL;

entity sevensegment_avalon_master_interface is
  generic(
    DATA_WIDTH : integer := 32;
    ADDRESS_WIDTH : integer := 25;
    UPDATE_RATE : integer := 128
  );
  port(
    --Avalon Interface
    avm_address : out std_logic_vector(ADDRESS_WIDTH-1 downto 0) := (others=>'0');
    avm_read : out std_logic := '0';
    avm_readdata : in std_logic_vector(DATA_WIDTH-1 downto 0) := (others=>'0');
    avm_write : out std_logic := '0';
    avm_writedata : out std_logic_vector(DATA_WIDTH-1 downto 0) := (others=>'0');
    avm_waitrequest : in std_logic := '0';
    avm_readdatavalid : in std_logic := '0';
    --clock sink
    rsi_reset_n : in std_logic := '1';
    csi_clock : in std_logic := '0';
    --export conduit
    HEX7,HEX6,HEX5,HEX4,HEX3,HEX2,HEX1,HEX0 : OUT std_logic_vector(6 downto 0)
  );
end sevensegment_avalon_master_interface;

architecture behave of sevensegment_avalon_master_interface is
  constant SEU_COUNTER_ADDRESS : std_logic_vector(ADDRESS_WIDTH-1 downto 0) := B"1_0000_0000_0000_0000_0000_0001";
  signal current_read, current_write : std_logic := '0';
  signal current_readdata, current_writedata : std_logic_vector(DATA_WIDTH-1 downto 0) := (others=>'0');
  signal update_counter : integer range 0 to UPDATE_RATE := UPDATE_RATE-1;
begin

-- register_data: process(csi_clock, rsi_reset_n)
-- begin
--   if rsi_reset_n='0' then
--   elsif rising_edge(csi_clock) then
--     if avm_readdatavalid='1' then
--       current_readdata <= avm_readdata;
--     end if;
--   end if;
-- end process;

issue_req: process(csi_clock, rsi_reset_n)
begin
  if rising_edge(csi_clock) then
    if update_counter = 0 or avm_waitrequest='1' then
        current_read <= '1';
    else
        current_read <= '0';
    end if;
  end if;
end process;

ctrl_rate: process(rsi_reset_n, csi_clock)
begin
    if rsi_reset_n='0' then
      update_counter <= 0;
    elsif rising_edge(csi_clock) then
      if update_counter = 0 then
        update_counter <= UPDATE_RATE-1;
      elsif avm_waitrequest='0' then
        update_counter <= update_counter - 1;
      end if;
    end if;
end process;

dig0 : entity work.sevensegmentdecoder port map(bcdin=>avm_readdata(3 downto 0), en=>avm_readdatavalid, reset_n=>rsi_reset_n, sys_clk=>csi_clock, output=>HEX0);
dig1 : entity work.sevensegmentdecoder port map(bcdin=>avm_readdata(7 downto 4), en=>avm_readdatavalid, reset_n=>rsi_reset_n, sys_clk=>csi_clock, output=>HEX1);
dig2 : entity work.sevensegmentdecoder port map(bcdin=>avm_readdata(11 downto 8), en=>avm_readdatavalid, reset_n=>rsi_reset_n, sys_clk=>csi_clock, output=>HEX2);
dig3 : entity work.sevensegmentdecoder port map(bcdin=>avm_readdata(15 downto 12), en=>avm_readdatavalid, reset_n=>rsi_reset_n, sys_clk=>csi_clock, output=>HEX3);
dig4 : entity work.sevensegmentdecoder port map(bcdin=>avm_readdata(19 downto 16), en=>avm_readdatavalid, reset_n=>rsi_reset_n, sys_clk=>csi_clock, output=>HEX4);
dig5 : entity work.sevensegmentdecoder port map(bcdin=>avm_readdata(23 downto 20), en=>avm_readdatavalid, reset_n=>rsi_reset_n, sys_clk=>csi_clock, output=>HEX5);
dig6 : entity work.sevensegmentdecoder port map(bcdin=>avm_readdata(27 downto 24), en=>avm_readdatavalid, reset_n=>rsi_reset_n, sys_clk=>csi_clock, output=>HEX6);
dig7 : entity work.sevensegmentdecoder port map(bcdin=>avm_readdata(31 downto 28), en=>avm_readdatavalid, reset_n=>rsi_reset_n, sys_clk=>csi_clock, output=>HEX7);

avm_address <= SEU_COUNTER_ADDRESS;
avm_read <= current_read;
avm_write <= current_write;
avm_writedata <= current_writedata;

end behave;


