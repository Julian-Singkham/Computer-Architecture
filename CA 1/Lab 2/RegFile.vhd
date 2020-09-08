library ieee;
use ieee.std_logic_1164.all;

--Schematic block symbol
entity regfile is
	generic(n: positive := 8);
	port(
		addr_a, addr_b: in std_logic_vector(1 downto 0);
		wraddr: in std_logic_vector(1 downto 0);
		wrdata: in std_logic_vector(n-1 downto 0);
		ld, rst, clk: in std_logic;
		a, b: out std_logic_vector(n-1 downto 0)
	);
end entity regfile;

--Circuit Description
architecture structural of regfile is
	signal y3, y2, y1, y0: std_logic;
	signal q3, q2 ,q1, q0: std_logic_vector(n-1 downto 0);
begin
	u0: entity work.decoder port map(wraddr, ld, y3, y2, y1, y0);
	u1: entity work.reg	generic map(n)
								port map(wrdata, y3, rst, clk, q3);
	u2: entity work.reg 	generic map(n)
								port map(wrdata, y2, rst, clk, q2);
	u3: entity work.reg 	generic map(n)
								port map(wrdata, y1, rst, clk, q1);
	u4: entity work.reg 	generic map(n)
								port map(wrdata, y0, rst, clk, q0);
	u5: entity work.busmux4	generic map(n)
									port map(q3, q2, q1, q0, addr_a, a);
	u6: entity work.busmux4	generic map(n) 
									port map(q3, q2, q1, q0, addr_b, b);
end architecture structural;