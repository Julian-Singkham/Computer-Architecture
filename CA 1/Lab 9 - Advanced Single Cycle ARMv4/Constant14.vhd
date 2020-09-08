--Constant4
--This component outputs a constant 14
--This BL to store PC+4 into the LR Register
library ieee;
use ieee.std_logic_1164.all;

----------------------------Schematic block symbol---------------------------------------
entity Constant14 is
	port(
		Y: out std_logic_vector(3 downto 0)
	);
end entity Constant14;
-----------------------------Circuit description-----------------------------------------
architecture dataflow of Constant14 is
begin
	Y<=x"E";
end architecture dataflow;