--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:02:27 12/30/2017
-- Design Name:   
-- Module Name:   /home/roboball/Desktop/HSNR_Master_ET/ECP/01_lbe/top_genmux/testb_mux.vhd
-- Project Name:  top_genmux
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: top_mux24
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY testb_mux IS
END testb_mux;
 
ARCHITECTURE behavior OF testb_mux IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT top_mux24
    PORT(
         sw : IN  std_logic_vector(7 downto 0);
         btnd : IN  std_logic;
         led : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal sw : std_logic_vector(7 downto 0) := (others => '0');
   signal btnd : std_logic := '0';

 	--Outputs
   signal led : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: top_mux24 PORT MAP (
          sw => sw,
          btnd => btnd,
          led => led
        );

   -- Stimulus process
   stim_proc: process
   begin	
	a<='1'; b<='0';
	s<='0'; wait for 200 ns;
	s<='1'; wait for 200 ns;
	a<='0'; b<='1';
	s<='0'; wait for 200 ns;
	s<='1'; wait for 200 ns;  
   end process;

END;
