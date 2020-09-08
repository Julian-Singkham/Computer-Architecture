--Constant4
--This component outputs a constant 0x00000004
--This allows the PC to tell the IROM to advance to the next instruction in memory
library ieee;
use ieee.std_logic_1164.all;

----------------------------Schematic block symbol---------------------------------------
entity Constant4 is
	port(
		Y: out std_logic_vector(31 downto 0)
	);
end entity Constant4;
-----------------------------Circuit description-----------------------------------------
architecture dataflow of Constant4 is
begin
	Y<=x"00000004";
end architecture dataflow;