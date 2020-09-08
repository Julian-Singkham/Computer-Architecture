--Fetch
--This circuit handles the instruction reading and advancement.
library ieee;
use ieee.std_logic_1164.all;

----------------------------Schematic block symbol---------------------------------------
entity Fetch is
	port(
		PCWD: in std_logic_vector(31 downto 0);
		PCWR, RST, CLK: in std_logic;
		PC4, PC8, INSTR: out std_logic_vector(31 downto 0)
	);
end entity;

-----------------------------Circuit description-----------------------------------------
architecture dataflow of Fetch is
------------------Signal------------------
	signal PC, Y8, Y4: std_logic_vector(31 downto 0);
		
	begin
		PC_0: entity work.PC
			port map(D => PCWD, LD => PCWR, RST => RST, CLK => CLK, Q => PC);
		Constant8_0: entity work.Constant8
			port map(Y => Y8);
		Constant4_0: entity work.Constant4
			port map(Y => Y4);
		Adder8: entity work.Adder
			port map(A => Y8, B => PC, S => PC8);
		Adder4: entity work.Adder
			port map(A => Y4, B => PC, S => PC4);
		IROM_0: entity work.irom
			port map(A => PC, RD => INSTR);
end architecture;