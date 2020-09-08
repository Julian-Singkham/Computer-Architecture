--binary to hex to 7seg
--This takes in the B value, converts it into Hex and displays it
library ieee;
use ieee.std_logic_1164.all;

entity seg7decode is
	port(
		Data: in std_logic_vector(31 downto 0);
		HEX5, HEX4, HEX3, HEX2, HEX1, HEX0: out std_logic_vector(7 downto 0) -- 7-segment
	);
end entity;

architecture behav of seg7decode is
-----------Signals------------------------
	signal d0: std_logic_vector(7 downto 0);
	signal d1: std_logic_vector(7 downto 0);
-----------Hex Display outputs-----------------------------
--Numbers
	constant seg_0 : std_logic_vector(7 downto 0) := "11000000";
	constant seg_1 : std_logic_vector(7 downto 0) := "11111001";  
	constant seg_2 : std_logic_vector(7 downto 0) := "10100100";
	constant seg_3 : std_logic_vector(7 downto 0) := "10110000";
	constant seg_4 : std_logic_vector(7 downto 0) := "10011001";
	constant seg_5 : std_logic_vector(7 downto 0) := "10010010";
	constant seg_6 : std_logic_vector(7 downto 0) := "10000010";
	constant seg_7 : std_logic_vector(7 downto 0) := "11111000";
	constant seg_8 : std_logic_vector(7 downto 0) := "10000000";
	constant seg_9 : std_logic_vector(7 downto 0) := "10010000";
	--Letters
	constant seg_a : std_logic_vector(7 downto 0) := "10001000";
	constant seg_b : std_logic_vector(7 downto 0) := "10000011";
	constant seg_C : std_logic_vector(7 downto 0) := "10100111";
	constant seg_d : std_logic_vector(7 downto 0) := "10100001";
	constant seg_E : std_logic_vector(7 downto 0) := "10000110";
	constant seg_F : std_logic_vector(7 downto 0) := "10001110";
	constant seg_n : std_logic_vector(7 downto 0) := "10101011";
	constant seg_o : std_logic_vector(7 downto 0) := "10100011";
	constant seg_P : std_logic_vector(7 downto 0) := "10001100";
	constant seg_r : std_logic_vector(7 downto 0) := "10101111";
	constant seg_s : std_logic_vector(7 downto 0) := "10010011";
	constant seg_y : std_logic_vector(7 downto 0) := "10010001";
	constant seg_empty : std_logic_vector(7 downto 0) := "11111111";

	begin
-----------OL----------------------------------
		--6 7-segment displays (0 is right most)
		--Binary to Hex
	with data(23 downto 20) select HEX5 <=
		seg_1 when "0001",
		seg_2 when "0010",
		seg_3 when "0011",
		seg_4 when "0100",
		seg_5 when "0101",
		seg_6 when "0110",
		seg_7 when "0111",
		seg_8 when "1000",
		seg_9 when "1001",
		seg_a when "1010",
		seg_b when "1011",
		seg_c when "1100",
		seg_d when "1101",
		seg_e when "1110",
		seg_f when "1111",
		seg_0 when others;
	with data(19 downto 16) select HEX4 <=
		seg_1 when "0001",
		seg_2 when "0010",
		seg_3 when "0011",
		seg_4 when "0100",
		seg_5 when "0101",
		seg_6 when "0110",
		seg_7 when "0111",
		seg_8 when "1000",
		seg_9 when "1001",
		seg_a when "1010",
		seg_b when "1011",
		seg_c when "1100",
		seg_d when "1101",
		seg_e when "1110",
		seg_f when "1111",
		seg_0 when others;
	with data(15 downto 12) select HEX3 <=
		seg_1 when "0001",
		seg_2 when "0010",
		seg_3 when "0011",
		seg_4 when "0100",
		seg_5 when "0101",
		seg_6 when "0110",
		seg_7 when "0111",
		seg_8 when "1000",
		seg_9 when "1001",
		seg_a when "1010",
		seg_b when "1011",
		seg_c when "1100",
		seg_d when "1101",
		seg_e when "1110",
		seg_f when "1111",
		seg_0 when others;
	with data(11 downto 8) select HEX2 <=
		seg_1 when "0001",
		seg_2 when "0010",
		seg_3 when "0011",
		seg_4 when "0100",
		seg_5 when "0101",
		seg_6 when "0110",
		seg_7 when "0111",
		seg_8 when "1000",
		seg_9 when "1001",
		seg_a when "1010",
		seg_b when "1011",
		seg_c when "1100",
		seg_d when "1101",
		seg_e when "1110",
		seg_f when "1111",
		seg_0 when others;
	with data(7 downto 4) select HEX1 <=
		seg_1 when "0001",
		seg_2 when "0010",
		seg_3 when "0011",
		seg_4 when "0100",
		seg_5 when "0101",
		seg_6 when "0110",
		seg_7 when "0111",
		seg_8 when "1000",
		seg_9 when "1001",
		seg_a when "1010",
		seg_b when "1011",
		seg_c when "1100",
		seg_d when "1101",
		seg_e when "1110",
		seg_f when "1111",
		seg_0 when others;
	with data(3 downto 0) select HEX0 <=
		seg_1 when "0001",
		seg_2 when "0010",
		seg_3 when "0011",
		seg_4 when "0100",
		seg_5 when "0101",
		seg_6 when "0110",
		seg_7 when "0111",
		seg_8 when "1000",
		seg_9 when "1001",
		seg_a when "1010",
		seg_b when "1011",
		seg_c when "1100",
		seg_d when "1101",
		seg_e when "1110",
		seg_f when "1111",
		seg_0 when others;
end architecture;