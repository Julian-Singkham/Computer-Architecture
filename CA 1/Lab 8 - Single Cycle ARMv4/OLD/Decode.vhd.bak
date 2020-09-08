library ieee;
use ieee.std_logic_1164.all;

--schematic block symbol
entity decoder is
port(
	wradder: in std_logic_vector(1 downto 0);
	ld: in std_logic;
	y3, y2, y1, y0: out std_logic
);
end entity decoder;

--circuit design
architecture dataflow of decoder is
begin
	y3 <= wradder(1) and wradder(0) and ld;
	y2 <= wradder(1) and not wradder(0) and ld;
	y1 <= not wradder(1) and wradder(0) and ld;
	y0 <= not wradder(1) and not wradder(0) and ld;
	
	
end architecture dataflow;