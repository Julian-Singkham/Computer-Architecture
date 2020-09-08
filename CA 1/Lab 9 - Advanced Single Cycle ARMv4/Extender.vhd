--Extender
--This componenet allows the processor to use immediate values by appending zeros to the left of the 32-bit value.
--Branch values are signed and is explained below.
library ieee;
use ieee.std_logic_1164.all;

----------------------------Schematic block symbol---------------------------------------
entity Extender is
	port(
		imm: in std_logic_vector(23 downto 0);	
		exts: in std_logic_vector(1 downto 0);		
		imm32: out std_logic_vector(31 downto 0)
	);
end entity Extender;
-----------------------------Circuit description-----------------------------------------
architecture dataflow of Extender is
begin

	with exts select imm32 <=
	--Long zero extended. imm= 8-bits, add 24 zeros to the left
	X"000000" & imm(7 downto 0) when "00",
	--Short zero extended. imm== 12-bits, add 20 zeros to the left
	X"00000" & imm(11 downto 0) when "01",
	--In branch, the imm is signed. To keep the sign, the most sig bit is copied to the left and 2 zeros are added to the right.
	imm(23) & imm(23) & imm(23) & imm(23) & imm(23) & imm(23) & imm(23 downto 0) & B"00" when others;
end architecture dataflow;