--
library ieee;
use ieee.std_logic_1164.all;

----------------------------Schematic block symbol---------------------------------------
entity ConstantExtender is
	port(
		imm: in std_logic_vector(23 downto 0);	
		exts: in std_logic_vector(1 downto 0);		
		imm32: out std_logic_vector(31 downto 0)
	);
end entity ConstantExtender;
-----------------------------Circuit description-----------------------------------------
architecture dataflow of ConstantExtender is
begin

	with exts select imm32 <=
	--Long zero extended. imm= 8-bits, add 24 zeros to the left
	X"000000" & imm(7 downto 0) when "00",
	--Short zero extended. imm== 12-bits, add 20 zeros to the left
	X"00000" & imm(11 downto 0) when "01",
	--In branch, the imm is signed. To keep the sign, the zeros are added to the right.
	imm(23) & imm(23) & imm(23) & imm(23) & imm(23) & imm(23) & imm(23 downto 0) & B"00" when others;
end architecture dataflow;