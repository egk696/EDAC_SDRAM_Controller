library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.NUMERIC_STD.ALL;

entity sevensegmentdecoder is
  port(
    bcdin : IN std_logic_vector(3 downto 0);
    sys_clk : IN std_logic;
    en : IN std_logic;
	 reset_n : IN std_logic;
    output : OUT std_logic_vector(6 downto 0)
  );
end sevensegmentdecoder;

architecture behave of sevensegmentdecoder is
  signal segment7 : std_logic_vector(6 downto 0) := (others => '1');
begin
  output <= segment7;
  process(sys_clk, bcdin, segment7, reset_n, en)
  begin
    if reset_n = '0' then
      segment7 <= "1000001";
    elsif falling_edge(sys_clk) and en='1' then
      case bcdin is
		------------------------------6543210------
      when "0000" => segment7 <= "1000000"; --0
      when "0001" => segment7 <= "1111001"; --1
      when "0010" => segment7 <= "0100100"; --2
      when "0011" => segment7 <= "0110000"; --3
      when "0100" => segment7 <= "0011001"; --4
      when "0101" => segment7 <= "0010010"; --5
      when "0110" => segment7 <= "0000010"; --6
      when "0111" => segment7 <= "1111000"; --7
      when "1000" => segment7 <= "0000000"; --8
      when "1001" => segment7 <= "0011000"; --9
		  when "1010" => segment7 <= "0001000"; --A
		  when "1011" => segment7 <= "0000011"; --B
		  when "1100" => segment7 <= "1000110"; --C
		  when "1101" => segment7 <= "0100001"; --D
		  when "1110" => segment7 <= "0000110"; --E
		  when "1111" => segment7 <= "0001110"; --F
      when others=> segment7  <= "1000001"; --U
		------------------------------6543210------
      end case;
    end if;
  end process;
  
end behave;


