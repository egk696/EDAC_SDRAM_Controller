----------------------------------------------------------------------------------
-- Created By: Eleftherios Kyriakakis
-- 
-- Design Name: SDRAM Controller with SEU EDAC (Error-Detection-And-Correction) mechanisms
-- Module Name: utils_pack - packages
-- Project Name: SEUD-MIST KTH Royal Institute Of Technology
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

--declaration
package utils_pack is
-- Count ones
function count_ones_in_vector(data_in : std_logic_vector) return unsigned;
-- Count zeros
function count_zeros_in_vector(data_in : std_logic_vector) return unsigned;
--Converts a binary to BCD encoding
function to_bcd(input: std_logic_vector(7 downto 0):=(others=>'0')) return std_logic_vector;
--Converts a BCD to 7 segments display
function to_segment7(input: std_logic_vector(3 downto 0):=(others=>'0')) return std_logic_vector;
--Majority per-bit vote on 3 std_logic_vectors
function majority_vote(data1, data2, data3: std_logic_vector) return std_logic_vector;
function majority_vote(data1, data2, data3: std_logic) return std_logic;
--Majority per-bit error detection on 3 std_logic_vectors
function majority_err_detect(data1, data2, data3: std_logic_vector) return std_logic_vector;
function majority_err_detect(data1, data2, data3: std_logic) return std_logic;

--Types
type tmr_std_logic_bit is array (0 to 2) of std_logic;

end package utils_pack;

--body
package body utils_pack is

-- Count ones
function count_ones_in_vector(data_in : std_logic_vector) return unsigned is
  variable count : unsigned (data_in'left downto data_in'right) := (others=>'0');
begin
  for i in data_in'right to data_in'left loop
    if data_in(i) = '1' then
      count := count + 1;
    end if;
  end loop;
  return count;
end function count_ones_in_vector;

-- Count zeros
function count_zeros_in_vector(data_in : std_logic_vector) return unsigned is
  variable count : unsigned (data_in'left downto data_in'right) := (others=>'0');
begin
  for i in data_in'right to data_in'left loop
    if data_in(i) = '0' then
      count := count + 1;
    end if;
  end loop;
  return count;
end function count_zeros_in_vector;

--Converts a binary to BCD encoding
function to_bcd(input: std_logic_vector(7 downto 0):=(others=>'0')) return std_logic_vector is
  variable bcd: unsigned(11 downto 0) := (others => '0');
  variable bint: unsigned(7 downto 0) := (others => '0');
begin
  bint := unsigned(input);
  for i in 0 to 7 loop  -- repeating 8 times.
    bcd(11 downto 1) := bcd(10 downto 0);  --shifting the bits.
    bcd(0) := bint(7);
    bint(7 downto 1) := bint(6 downto 0);
    bint(0) :='0';
    if(i < 7 and bcd(3 downto 0) > B"0100") then --add 3 if BCD digit is greater than 4.
      bcd(3 downto 0) := bcd(3 downto 0) + "0011";
    end if;

    if(i < 7 and bcd(7 downto 4) > B"0100") then --add 3 if BCD digit is greater than 4.
      bcd(7 downto 4) := bcd(7 downto 4) + "0011";
    end if;

    if(i < 7 and bcd(11 downto 8) > B"0100") then  --add 3 if BCD digit is greater than 4.
      bcd(11 downto 8) := bcd(11 downto 8) + "0011";
    end if;
  end loop;
  return std_logic_vector(bcd);
end to_bcd;

--Converts a BCD to 7 segments display
function to_segment7(input: std_logic_vector(3 downto 0):=(others=>'0')) return std_logic_vector is
  variable segment7 : std_logic_vector(6 downto 0) := (others => '1');
  variable tmp: std_logic_vector(3 downto 0) := (others => '0');
begin
  case tmp is
    when "0000" => segment7 := "1000000";
    when "0001" => segment7 := "1111001";
    when "0010" => segment7 := "0100100";
    when "0011" => segment7 := "0110000";
    when "0100" => segment7 := "0110000";
    when "0101" => segment7 := "0110000";
    when "0110" => segment7 := "0110000";
    when "0111" => segment7 := "1111000";
    when "1000" => segment7 := "0000000";
    when "1001" => segment7 := "0011000";
    when others=> segment7 := "1111111";
  end case;
  return segment7;
end to_segment7;

--Majority per-bit vote on 3 std_logic_vectors
function majority_vote(data1, data2, data3: std_logic_vector) return std_logic_vector is
begin
  return ((data1 and data2) or (data2 and data3) or (data1 and data3));
end majority_vote;

--Majority voting based per-bit error detection on 3 std_logic_vectors
function majority_err_detect(data1, data2, data3: std_logic_vector) return std_logic_vector is
begin
    return (not(data1) and data3) or (not(data1) and data2) or (data1 and not(data2)) or (data1 and not(data3));
end majority_err_detect;

--Majority per-bit vote on 3 std_logic_vectors
function majority_vote(data1, data2, data3: std_logic) return std_logic is
begin
  return ((data1 and data2) or (data2 and data3) or (data1 and data3));
end majority_vote;

--Majority voting based per-bit error detection on 3 std_logic_vectors
function majority_err_detect(data1, data2, data3: std_logic) return std_logic is
begin
    return (not(data1) and data3) or (not(data1) and data2) or (data1 and not(data2)) or (data1 and not(data3));
end majority_err_detect;

end package body utils_pack;