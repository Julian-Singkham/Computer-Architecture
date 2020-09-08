--Reg4
--This component holds the CVNZ value
library ieee;
use ieee.std_logic_1164.all;
----------------------------Schematic block symbol---------------------------------------
entity Reg4 is
	port(
		D3, D2, D1, D0, Ld, RST, CLK: in std_logic;
		Q3, Q2, Q1, Q0: out std_logic
	);
end entity Reg4;

-----------------------------Circuit description-----------------------------------------
architecture behavioral of Reg4 is
begin
	memory: process(clk, rst, ld)
	begin
		if rst='0' then 
				Q3 <= '0';
				Q2 <= '0';
				Q1 <= '0';
				Q0 <= '0';
		elsif rising_edge(clk) then
			if ld='1' then 
				Q3 <= D3;
				Q2 <= D2;
				Q1 <= D1;
				Q0 <= D0;
			end if;
		end if;
	end process memory;
end architecture behavioral;