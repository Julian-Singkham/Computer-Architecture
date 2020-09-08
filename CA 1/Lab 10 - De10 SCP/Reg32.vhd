--Reg32
--This component holds values for the 7-seg display.
library ieee;
use ieee.std_logic_1164.all;
----------------------------Schematic block symbol---------------------------------------
entity Reg32 is
	port(
		D: in std_logic_vector(31 downto 0);
		Ld, RST, CLK: in std_logic;
		Q: out std_logic_vector(31 downto 0)
	);
end entity Reg32;

-----------------------------Circuit description-----------------------------------------
architecture behavioral of Reg32 is
begin
	memory: process(clk, rst, ld)
	begin
		if rst='0' then 
				Q <= X"00000000";
		elsif rising_edge(clk) then
			if ld='1' then 
				Q <= D;
			end if;
		end if;
	end process memory;
end architecture behavioral;