--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:13:48 12/30/2017
-- Design Name:   
-- Module Name:   /home/roboball/Desktop/HSNR_Master_ET/ECP/01_lbe/top_genmux/testb_mux21.vhd
-- Project Name:  top_genmux
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: mux2gen
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
 
ENTITY testb_mux21 IS
END testb_mux21;
 
ARCHITECTURE behavior OF testb_mux21 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT mux2gen
    PORT(
         a : IN  std_logic_vector(-1 to 0);
         b : IN  std_logic_vector(-1 to 0);
         s : IN  std_logic;
         y : OUT  std_logic_vector(-1 to 0)
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic_vector(-1 to 0) := (others => '0');
   signal b : std_logic_vector(-1 to 0) := (others => '0');
   signal s : std_logic := '0';

 	--Outputs
   signal y : std_logic_vector(-1 to 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: mux2gen PORT MAP (
          a => a,
          b => b,
          s => s,
          y => y
        );
		  
   -- Stimulus process
   stim_proc: process
   begin		
      -- insert stimulus here 
		a<='1'; b<='0';
		s<='0'; wait for 200 ns;
		s<='1'; wait for 200 ns;
		a<='0'; b<='1';
		s<='0'; wait for 200 ns;
		s<='1'; wait for 200 ns; 
   end process;

END;
