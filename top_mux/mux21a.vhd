----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:04:39 12/29/2017 
-- Design Name: 
-- Module Name:    lbe2to1mux - 2to1mux 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Example 5a: 2-to-1 MUX using logic equation
entity mux21a is
    Port ( 
			 a : in  STD_LOGIC;
          b : in  STD_LOGIC;
          s : in  STD_LOGIC;
          y : out STD_LOGIC
			 );
end mux21a;

architecture amux21a of mux21a is

signal aout : STD_LOGIC;
signal bout : STD_LOGIC;
signal nots : STD_LOGIC;

begin
	aout <= nots and a;
	bout <= s and b;
	nots <= not(s);
	y <= bout or aout;
end amux21a;





