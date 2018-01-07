--Example 10a: Generic 2 to 1 MUX using parameter N
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux2gen is
	 generic(N:integer);
    Port ( 
			  a : in  STD_LOGIC_VECTOR (N-1 downto 0);
           b : in  STD_LOGIC_VECTOR (N-1 downto 0);
           s : in  STD_LOGIC;
           y : out  STD_LOGIC_VECTOR (N-1 downto 0)
			 );
end mux2gen;

architecture mux2gen of mux2gen is
begin
	p1: process (a,b,s)
	begin
		if s = '0' then
			y <= a;
		else
			y <= b;
		end if;
	end process;

end mux2gen;




