--Controller
--This component holds the CVNZ value
library ieee;
use ieee.std_logic_1164.all;
----------------------------Schematic block symbol---------------------------------------
entity Controller is
	port(
		COND: in std_logic_vector(3 downto 0);
		OP: in std_logic_vector(1 downto 0);
		FUNCT: in std_logic_vector(5 downto 0);
		ROT: in std_logic_vector(3 downto 0);
		Rd, Rm: in std_logic_vector(3 downto 0);
		C, V, N, Z, M: in std_logic;
		PCSRC, PCWR, REGDST, REGWR: out std_logic;
		EXTS: out std_logic_vector(1 downto 0);
		ALUSRCB, BL, LRToPC: out std_logic;
		ALUS: out STD_logic_vector(3 downto 0);
		CPSRWR, MEMWR, REGSRC: out std_logic; 
		ROTATE: out std_logic_vector(3 downto 0)--
	);
end entity Controller;

-----------------------------Circuit description-----------------------------------------
architecture dataflow of Controller is
	signal CMD: std_logic_vector(3 downto 0);
	signal I: std_logic;
	signal P: std_logic;
	signal U: std_logic;
	signal B: std_logic;
	signal W: std_logic;
	signal L: std_logic;
	
	begin
	cmd <= FUNCT(4 downto 1);
	I <= FUNCT(5);
	P <= FUNCT(4);
	U <= FUNCT(3);
	B <= FUNCT(2);
	W <= FUNCT(1);
	L <= FUNCT(0);

	PCSRC 	<= '0' when COND = X"E" and OP = "10" else
					'0' when COND = X"0" and Z='1' and OP = "10" else
					'0' when COND = X"1" and Z='0' and OP = "10" else
					'1';
	
	PCWR		<= '1';
	
	REGDST	<= '1' when OP = "01" else -- str
					'0'; -- everything else
	
	REGWR		<= '0' when (OP = "00" and CMD = "1010") or (OP = "01" and L = '0') or (OP = "10" and P = '0') else
					'1';
	
	EXTS		<= OP;
	
	ROTATE	<= "0000";
	
	ALUSRCB	<= I when op = "01" else
					not I;
	
	ALUS 		<=	"0111" when M	 = '1'	 else -- MUL
					"0001" when CMD = "1010" OR CMD = "0010" else -- SUB
					"0010" when CMD = "0000" else -- AND
					"0011" when CMD = "1100" else -- ORR
					"0100" when CMD = "0001" else -- XOR
					"0110" when CMD = "1101" else -- MOV
					
					"0000";--+
	
	CPSRWR	<=  L when op = "00" or M = '1' else -- Always Check CVNZ when doing math
					'0';
	
	MEMWR		<= '1' when OP = "01" and B = '0' and L = '0' else
					'0';
				
	REGSRC	<= '0' when OP = "01" and B = '0' and L = '1' else
					'1';
					
	BL			<= '1' when OP = "10" and P = '1' else
					'0';
					
	LRToPC	<= '1' when OP = "00" and CMD = "1101" and Rd = "1111" and Rm = "1110" else
					'0';

end architecture dataflow;