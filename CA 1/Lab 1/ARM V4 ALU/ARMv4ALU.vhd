-- ARMv4 Arthimatic Logic Uit
--TODO
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity ARMv4_ALU is
	port(
	A, B: in std_logic_vector(31 downto 0);
	ALUS: in std_logic_vector(2 downto 0);
	F: 	out std_logic_vector(31 downto 0);
	C: 	out std_logic;	--Carry
	V:		out std_logic;	--oVerflow: 
	N:		out std_logic;	--Negative
	Z:		out std_logic 	--Zero
	);
end entity;

architecture behav of ARMv4_ALU is
	signal INTA: std_logic_vector(32 downto 0);
	signal INTB: std_logic_vector(32 downto 0);
	signal INTF: std_logic_vector(32 downto 0);
	
	begin
	INTA(31 downto 0) <= A;
	INTA(32) 		  <= '0';
	
	INTB(31 downto 0) <= B;
	INTB(32) 		  <= '0';
	
	--Functions
	with ALUS select INTF <= 
		INTA + INTB	  when "000",
		INTA - INTB   when "001",
		INTA and INTB when "010",
		INTA or INTB  when "011",
		INTA xor INTB when "100",
		INTA		  	  when "101",
		INTB	  	  	  when "110",
		x"1" 	  		  when others;

	C <=	INTF(32);
	
	with ALUS select V <= 
		(INTA(31) and INTB(31) and (NOT INTF(31))) or ((NOT INTA(31)) and (NOT INTB(31)) and INTF(31)) when "000", -- during add, two +=-, two -=+
		(INTA(31) and (NOT INTB(31)) and (NOT INTF(31))) or ((NOT INTA(31)) and INTB(31) and INTF(31)) when "001"; -- during sub, --+=+, +-1=-
	
	--Since this signed, the 32-bit denotes sign
	n <= INTF(32);

	
	--If the first bit is zero then z=1
	z <= not INTF(0);
	F <= INTF(31 downto 0);
		
end architecture;