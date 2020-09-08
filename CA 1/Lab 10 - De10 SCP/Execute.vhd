--Execute
--This circuit takes in the decoded instruciton and computes the operation
library ieee;
use ieee.std_logic_1164.all;

----------------------------Schematic block symbol---------------------------------------
entity Execute is
	port(--R_Rn=1 R_Rd=2
		R_Rn, R_Rd, Imm32: in std_logic_vector(31 downto 0);
		ALUSRCB: in std_logic;
		ALUS: in std_logic_vector(2 downto 0);
		CPSRWR, RST, CLK: in std_logic;
		F: out std_logic_vector(31 downto 0);
		C, V, N, Z: out std_logic
	);
end entity;

-----------------------------Circuit description-----------------------------------------
architecture dataflow of Execute is
------------------Signal------------------
	signal B: std_logic_vector(31 downto 0);
	signal C_signal: std_logic;
	signal V_signal: std_logic;
	signal N_signal: std_logic;
	signal Z_signal: std_logic;
	
	begin
		busmux2_0: entity work.busmux2
			port map(D1 => R_Rd, D0 => IMM32, S => ALUSRCB, Y => B);
		ALU_0: entity work.ALU
			port map(A => R_Rn, B => B, ALUS => ALUS, F => F, C => C_signal, V => v_signal, N => N_Signal, Z => Z_signal);
		Reg4_0: entity work.Reg4
			port map(D3 => C_signal, D2 => V_Signal, D1 => N_Signal, D0 => Z_signal, LD => CPSRWR, RST => RST, CLK => CLK, Q3 => C, Q2 => V, Q1 => N, Q0 => z);
end architecture;