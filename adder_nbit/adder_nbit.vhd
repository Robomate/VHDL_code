-- Example 14b: N-bit adder
library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_unsigned.all;

entity adder_nbit is
	generic (N:integer := 8);
	port(
		  a : in STD_LOGIC_VECTOR(N-1 downto 0);
		  b : in STD_LOGIC_VECTOR(N-1 downto 0);
		  y : out STD_LOGIC_VECTOR(N-1 downto 0)
		 );
end adder_nbit;

architecture adder_nbit of adder_nbit is
	begin
	process(a, b)
		begin
		y <= a + b;
	end process;
end adder_nbit;
