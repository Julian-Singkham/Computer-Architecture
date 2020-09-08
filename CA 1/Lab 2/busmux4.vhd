--
library ieee;
use ieee.std_logic_1164.all;

--Schematic block symbol
entity busmux4 is
	generic(n: positive := 8);
	port(
		D3,D2,D1,D0: in std_logic_vector(n-1 downto 0);
		S: in std_logic_vector(1 downto 0);
		Y: out std_logic_vector(n-1 downto 0)
	);
end entity busmux4;
--Circuit description
architecture dataflow of busmux4 is
begin
	
	--mux: with-select
	with S select Y <= 
		D3 when B"11",
		D2 when B"10",
		D1 when B"01",
		D0 when others;
	
end architecture dataflow;