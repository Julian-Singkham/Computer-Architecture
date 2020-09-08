--Program Counter
--This program tells the IROM what instruction to use.
library ieee;
use ieee.std_logic_1164.all;

----------------------------Schematic block symbol---------------------------------------
entity PC is
	port(
		D: in std_logic_vector(31 downto 0);	
		LD, RST, CLK: in std_logic;
		Q: out std_logic_vector(31 downto 0)
	);
end entity PC;
-----------------------------Circuit description-----------------------------------------
architecture dataflow of PC is
begin
	--On the clock rise & LD=1, q<=d
	--else if RST=0 then Q<=0's
	process(clk, rst, ld)
	begin
		if rst='0' then q<=X"00000000";
		elsif rising_edge(clk) then 
			if ld='1' then q<=d;
			end if;
		end if;
	end process;
end architecture dataflow;