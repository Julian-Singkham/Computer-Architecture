--Adder
--This component adds 2 inputs together.
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
----------------------------Schematic block symbol---------------------------------------
entity Adder is
	port(
		A: in std_logic_vector(31 downto 0);
		B: in std_logic_vector(31 downto 0);
		S: out std_logic_vector(31 downto 0)	
	);
end entity Adder;
-----------------------------Circuit description-----------------------------------------
architecture dataflow of Adder is
begin
	S<=A + B;
end architecture dataflow;