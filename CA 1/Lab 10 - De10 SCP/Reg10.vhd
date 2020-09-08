--Reg10
--This component holds the values for the switches
library ieee;
use ieee.std_logic_1164.all;
----------------------------Schematic block symbol---------------------------------------
entity Reg10 is
	port(
		D: in std_logic_vector(9 downto 0);
		Ld, RST, CLK: in std_logic;
		Q: out std_logic_vector(31 downto 0)
	);
end entity Reg10;

-----------------------------Circuit description-----------------------------------------
architecture behavioral of Reg10 is
begin
	memory: process(clk, rst, ld)
	begin
		if rst='0' then 
				Q <= x"00000000";
		elsif rising_edge(clk) then
			if ld='1' then 
				Q <= "0000000000000000000000" & D(9 downto 0);
			end if;
		end if;
	end process memory;
end architecture behavioral;