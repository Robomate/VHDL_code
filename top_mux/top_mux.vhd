------------------------------------------------------------------
-- Create Date:    13:31:58 12/29/2017 
-- Module Name:    top_mux - mux_structure 
-- Project Name: 	 xc6slx16 - 3csg324
------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

------------------------------------------------------------------	
-- Init global interface (I/O)
------------------------------------------------------------------
entity top_mux is
     Port ( 
	        btnu : in  STD_LOGIC;	-- Button Up (control signal)
           sw: in  STD_LOGIC_VECTOR (7 downto 6); -- Switches (always vector)
			  led : out  STD_LOGIC_VECTOR (4 downto 4) -- LEDs (always vector)
			  ); 
end top_mux;

architecture mux_structure of top_mux is
------------------------------------------------------------------	
-- Insert Components (Sub-Modules)
------------------------------------------------------------------
component mux21b is
-- 2to1 mux based on logic eqns
    port ( 
			 a : in  STD_LOGIC;
          b : in  STD_LOGIC;
          s : in  STD_LOGIC;
          y : out STD_LOGIC
			 );
end component;
------------------------------------------------------------------
-- Internal Signals
------------------------------------------------------------------
--signal a_sig,b_sig,s_sig: std_logic;

begin
------------------------------------------------------------------
-- Create Instances with Portmap
------------------------------------------------------------------
	m1 : mux21b
		port map(
					a => sw(6), 
					b => sw(7), 
					s => btnu, 
					y => led(4) 
					);								
end mux_structure;

