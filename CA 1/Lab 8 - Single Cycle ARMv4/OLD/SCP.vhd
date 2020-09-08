--SCP
--
library ieee;
use ieee.std_logic_1164.all;
----------------------------Schematic block symbol---------------------------------------
entity SCP is
	port(
		RST, CLK: in std_logic;
		PCSRC, PCWR, REGDST, REGWR, ALUSRCB, CPSRWR, MEMWR, REGSRC: inout std_logic;
		EXTS: inout std_logic_vector(1 downto 0);
		ALUS: inout std_logic_vector(2 downto 0);
		ROTATE: inout std_logic_vector(3 downto 0);
		MEMADDR: inout std_logic_vector(31 downto 0);
		R_Rd: inout std_logic_vector(31 downto 0);
		PC4: inout std_logic_vector(31 downto 0);
		WDR_Rd: inout std_logic_vector(31 downto 0);
		BRadderOut: out STD_logic_vector(31 downto 0);
		INSTRUCT: out STD_logic_vector(31 downto 0)
	);
end entity;

-----------------------------Circuit description-----------------------------------------
architecture dataflow of SCP is
------------------Signal------------------
	--R_Rd singal
	signal R_Rn: std_logic_vector(31 downto 0);
	signal Imm32: std_logic_vector(31 downto 0);
	signal PCWD_Signal: std_logic_vector(31 downto 0);
	signal PC8_Signal: std_logic_vector(31 downto 0);
	signal INSTR: std_logic_vector(31 downto 0);
	signal C: std_logic;
	signal V: std_logic;
	signal N: std_logic;
	signal Z: std_logic;
	signal RD: std_logic_vector(31 downto 0);
	signal BRADDR: std_logic_vector(31 downto 0);
	
	begin
		busmux2_0: entity work.busmux2
			port map(D1 => PC4, D0 => BRADDR, S => PCSRC, Y => PCWD_Signal);
		Fetch_0: entity work.Fetch
			port map(PCWD => PCWD_Signal, PCWR => PCWR, RST => RST, CLK => CLK, PC4 => PC4, PC8 => PC8_Signal, INSTR => INSTR);
		Decode_0: entity work.Decode
			port map(PC8 => PC8_Signal, INSTR => INSTR, WDR_Rd => WDR_Rd, REGDST => REGDST, REGWR => REGWR, EXTS => EXTS, ROTATE => ROTATE, RST => RST, CLK => CLK, 
				BRADDR => BRADDR, R_Rn => R_Rn, R_Rd => R_Rd, Imm32 => Imm32);
		Controller_0: entity work.Controller
			port map(COND => INSTR(31 downto 28), OP => INSTR(27 downto 26), FUNCT => INSTR(25 downto 20), ROT => INSTR(11 downto 8), C => C, V => V, N => N, Z => Z, 
				PCSRC => PCSRC, PCWR => PCWR, REGDST => REGDST, REGWR => REGWR, EXTS => EXTS, ALUSRCB => ALUSRCB, ALUS => ALUS, CPSRWR => CPSRWR, MEMWR => MEMWR, REGSRC => REGSRC, ROTATE => ROTATE);
		Execute_0: entity work.Execute
			port map(R_Rn => R_Rn, R_Rd => R_Rd, Imm32 => Imm32, ALUSRCB => ALUSRCB, ALUS => ALUS, CPSRWR => CPSRWR, RST => RST, CLK => CLK,
				F => MEMADDR, C => C, V => V, N => N, Z => Z);
		Dmem: entity work.Dmem
			port map(A => MEMADDR, WD => R_Rd, MEMWR => MEMWR, RST => RST, CLK => CLK, RD => RD);
		busmux2_1: entity work.busmux2
			port map(D1 => MEMADDR, D0 => RD, S => REGSRC, Y => WDR_Rd);
			
		InsTRUCT <= insTR;
		BRadderOut <= BRADDR;
	end architecture;