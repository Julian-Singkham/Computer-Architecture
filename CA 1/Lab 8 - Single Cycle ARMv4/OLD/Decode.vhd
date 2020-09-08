--Decode
--This circuit prepares the data for the execution circuit by breaking the Instruction into the pieces, Rd Rn RM/IMM.
--Additionally this circuit handles how Immediate values are interpreted
library ieee;
use ieee.std_logic_1164.all;

----------------------------Schematic block symbol---------------------------------------
entity Decode is
	port(
		PC8, INSTR, WDR_Rd: in std_logic_vector(31 downto 0);
		RegDST, RegWR: in std_logic;
		EXTS: in std_logic_vector(1 downto 0);
		Rotate: in std_logic_vector(3 downto 0);
		RST, CLK: in std_logic;
		BRADDR, R_Rn, R_Rd, IMM32: out std_logic_vector(31 downto 0)
	);
end entity;

-----------------------------Circuit description-----------------------------------------
architecture dataflow of Decode is
------------------Signal------------------
	signal Rd_Rm: std_logic_vector(3 downto 0);
	signal imm32_PreShift: std_logic_vector(31 downto 0);
	signal imm32_PostShift: std_logic_vector(31 downto 0);
		
	begin
		RegSRCBmux_0: entity work.RegSRCBmux
			port map(D0 => INSTR(15 downto 12), D1 => INSTR(3 downto 0), S => RegDST, Y => Rd_Rm);
		Extender_0: entity work.Extender
			port map(imm => INSTR(23 downto 0), EXTS => EXTS, imm32 => imm32_PreShift);
		barrelShifter_0: entity work.barrelShifter
			port map(IN_SRC2 => imm32_PreShift, ROTATE => ROTATE, OUT_SRC2 => imm32_PostShift);
		Adder_0: entity work.Adder
			port map(A => PC8, B => imm32_PostShift, S => BRADDR);
		regfile_0: entity work.regfile
			port map(Rn => INSTR(19 downto 16), Rm => Rd_Rm, Rd => INSTR(15 downto 12), WDR_Rd => WDR_Rd, RegWR => RegWR, RST => RST, CLK => CLK, R_Rn => R_Rn, R_Rd => R_Rd);
		IMM32 <= imm32_PostShift;
end architecture;