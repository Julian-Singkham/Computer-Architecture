-- ARMv4 Arthimatic Logic Uit
-- This component handles the math and logic calculations.
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
----------------------------Schematic block symbol---------------------------------------
entity ALU is
	port(
	A, B: in std_logic_vector(31 downto 0); --Inputs
	ALUS: in std_logic_vector(3 downto 0);	 --Function select
	F: 	out std_logic_vector(31 downto 0);--Output
	C: 	out std_logic;	--Carry
	V:		out std_logic;	--oVerflow: 
	N:		out std_logic;	--Negative
	Z:		out std_logic 	--Zero
	);
end entity;
-----------------------------Circuit description-----------------------------------------
architecture dataflow of ALU is
	--Intermediate values. They are 1 bit larger inorder to detect overflow. 
	--bit(32) = overflow.	bit(31) = sign.	bit(30) most significant.
	signal INTA: std_logic_vector(32 downto 0);
	signal INTB: std_logic_vector(32 downto 0);
	signal INTF: std_logic_vector(32 downto 0);
	signal INTM: std_logic_vector(65 downto 0); --Multiply needs a 64-bit number
	
	begin
--====================Set=========================
	--Set the intermediate values to their actual values and set the overflow bit to zero.
	INTA(31 downto 0) <=  A;
	INTA(32) 		   <= '0';
	INTB(31 downto 0) <=  B;
	INTB(32) 		   <= '0';
	INTM <= INTA * INTB;
--====================Functions====================
	with ALUS select INTF <= 
		INTA	+ 	INTB 		when "0000",
		INTA	- 	INTB 		when "0001",
		INTA and	INTB 		when "0010",
		INTA or	INTB 		when "0011",
		INTA xor INTB 		when "0100",
		INTA			  		when "0101",
		INTB	  	  	  		when "0110",
		INTM(32 downto 0) when "0111",
		"000000000000000000000000000000001"	  		  when others;
--====================Outputs======================
	--Carry: INTF(32) is the overflow bit
	C <=	INTF(32);
	
	--Overflow:Basically if the bit(31) of INTA A and B are 1 and they are 
	--being added/anded together then it causes an overflow.
	with ALUS select V <= 
		(INTA(31) and INTB(31) and (NOT INTF(31))) or ((NOT INTA(31)) and (NOT INTB(31)) and INTF(31)) when B"0000", -- during add, two +=-, two -=+
		(INTA(31) and (NOT INTB(31)) and (NOT INTF(31))) or ((NOT INTA(31)) and INTB(31) and INTF(31)) when B"0001", -- during sub, --+=+, +-1=-
		'0' when others;
		
	--Negative: INTF(31) is the negative bit
	n <= INTF(31);
	
	--Zero:
	z <= '1' when INTF(31 downto 0)=X"00000000" else '0';
	F <= INTF(31 downto 0);
		
end architecture;