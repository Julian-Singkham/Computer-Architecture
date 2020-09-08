--
library ieee;
use ieee.std_logic_1164.all;

--Schematic block symbol
entity busMux2 is
	generic(n: positive := 32);
	port(
		D1,D0: in std_logic_vector(n-1 downto 0);
		S: in std_logic_vector(1 downto 0);
		Y: out std_logic_vector(n-1 downto 0)
	);
end entity busMux2;
--Circuit description
architecture dataflow of busMux2 is
begin
	
	--mux: with-select
	with S select Y <= 
		D1 when B"01",
		D0 when others;
	
end architecture dataflow;