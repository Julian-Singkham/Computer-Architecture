--RegSRCBmux	TODO definition
--Choose between ALU and memory
library ieee;
use ieee.std_logic_1164.all;

----------------------------Schematic block symbol---------------------------------------
entity RegSRCBmux is
	port(
		D0, D1: in std_logic_vector(3 downto 0);
		S: in std_logic;
		Y: out std_logic_vector(3 downto 0)
	);
end entity RegSRCBmux;
-----------------------------Circuit description-----------------------------------------
architecture behavioral of RegSRCBmux is
begin
	process(s)
	begin
		if S='1' then 
			Y <= D1;
		else
			Y <= D0;
		end if;
	end process;
end architecture behavioral;