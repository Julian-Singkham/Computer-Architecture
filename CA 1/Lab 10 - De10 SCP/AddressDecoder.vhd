--AddressDecoder
--This component handles the loading aspect of dmem, LED, Seg7, and input data
library ieee;
use ieee.std_logic_1164.all;
----------------------------Schematic block symbol---------------------------------------
entity AddressDecoder is
	port(
		ADDR: in std_logic_vector(31 downto 0);
		MEMRD, MEMWR: in std_logic;
		LD2, LD1, LD0, DATAS: out std_logic
	--Main memory
	--LEDS above the switches
	--The 5 7-segment displays
	--The System level input data mux.
	);
end entity AddressDecoder;

-----------------------------Circuit description-----------------------------------------
architecture dataflow of AddressDecoder is
	signal CMD: std_logic_vector(3 downto 0);
	signal I: std_logic;
	signal P: std_logic;
	signal U: std_logic;
	signal B: std_logic;
	signal W: std_logic;
	signal L: std_logic;
	
	begin
	LD2		<= '1' when ADDR < X"0000001F" and MEMRD = '0' and MEMWR = '1' else
					'0';
					
	LD1		<= '1' when ADDR = X"000000F8" and MEMRD = '0' and MEMWR = '1' else
					'0';
					
	LD0		<= '1' when ADDR = X"000000FC" and MEMRD = '0' and MEMWR = '1' else
					'0';
					
	DATAS		<= '1' when ADDR < X"0000001F" and MEMRD = '1' and MEMWR = '0' else
					'0' when ADDR = X"000000F4" and MEMRD = '1' and MEMWR = '0';

end architecture dataflow;