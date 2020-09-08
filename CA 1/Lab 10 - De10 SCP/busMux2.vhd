--busMux2
library ieee;
use ieee.std_logic_1164.all;
----------------------------Schematic block symbol---------------------------------------
entity busMux2 is
	port(
		D1,D0: in std_logic_vector(31 downto 0);--D1 RM D0 Imm
		S: in std_logic;
		Y: out std_logic_vector(31 downto 0)
	);
end entity busMux2;
-----------------------------Circuit description-----------------------------------------
architecture dataflow of busMux2 is
begin
	with S select Y <= 
		D1 when '1',
		D0 when others;
end architecture dataflow;