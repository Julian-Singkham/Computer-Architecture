--Constant8
--This component outputs a constant 0x00000008
--This allows the PC to use branch because branch has an addresses that is PC+8+imm24<<2. 
--This tells the IROM to advance two instructions in memory
library ieee;
use ieee.std_logic_1164.all;

----------------------------Schematic block symbol---------------------------------------
entity Constant8 is
	port(
		Y: out std_logic_vector(31 downto 0)
	);
end entity Constant8;
-----------------------------Circuit description-----------------------------------------
architecture dataflow of Constant8 is
begin
	Y<=x"00000008";
end architecture dataflow;