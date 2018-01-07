-- Example 17: N-bit comparator using relational operators
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity comp_nbit is
	generic (N:integer := 8);
	port(
			x : in STD_LOGIC_VECTOR(N-1 downto 0);
			y : in STD_LOGIC_VECTOR(N-1 downto 0);
			gt : out STD_LOGIC;
			eq : out STD_LOGIC;
			lt : out STD_LOGIC
			);
end comp_nbit;

architecture comp_nbit of comp_nbit is
	begin
	process(x, y)
		begin
		gt <= '0';
		eq <= '0';
		lt <= '0';
		if (x > y) then
			gt <= '1';
		elsif (x = y) then
			eq <= '1';
		elsif (x < y) then
			lt <= '1';
		end if;
	end process;
end comp_nbit;