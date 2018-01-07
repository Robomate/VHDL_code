----------------------------------------------------------------------------------
-- Create Date:    11:00:38 12/30/2017 
-- Module Name:    top_mux24 
-- Links: 
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity top_mux24 is
    Port ( 
	        sw : in  STD_LOGIC_VECTOR (7 downto 0);
           btnd : in  STD_LOGIC;
           led : out  STD_LOGIC_VECTOR (3 downto 0)
			 );
end top_mux24;

architecture top_mux24 of top_mux24 is

	component mux2gen is
   generic(N:integer);
   Port ( 
			 a : in  STD_LOGIC_VECTOR (N-1 downto 0);
          b : in  STD_LOGIC_VECTOR (N-1 downto 0);
          s : in  STD_LOGIC;
          y : out  STD_LOGIC_VECTOR (N-1 downto 0)
			);
	end component;
	
	begin
	MUX4: mux2gen 
			generic map(N => 4) -- init N e.g. 4
			port map(
			 a => sw(3 downto 0),
          b => sw(7 downto 4),
          s => btnd,
          y	=> led(3 downto 0)
			 );
			
end top_mux24;

