-- Example 4b: 2-to-1 MUX using if statement
library IEEE;
use IEEE.STD_LOGIC_1164.all;
entity mux21b is
	port(
			a : in STD_LOGIC;
			b : in STD_LOGIC;
			s : in STD_LOGIC;
			y : out STD_LOGIC
			);
end mux21b;

architecture mux21b of mux21b is
	begin
		p1: process (a, b, s)
			begin
				if s = '0' then
					y <= a;
				else
					y <= b;
				end if;
		end process;
end mux21b; 



