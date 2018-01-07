-- Example 8c: count8_top
library IEEE;
use IEEE.std_logic_1164.all;
library EXAMPLE8;

entity count8_top is
-- init interface toplevel entity: counter
	port(
			clk : in std_logic; -- Clock 100 Mhz from FPGA
			btnd : in std_logic; -- Button
			led : out std_logic_vector(7 downto 0) -- LEDs for counting
			);
end count8_top;

architecture count8_top of count8_top is
	-- init components
	component clkdiv
	-- Clock divider
		port (
				mclk : in STD_LOGIC;
				clr : in STD_LOGIC;
				clk190 : out STD_LOGIC;
				clk48 : out STD_LOGIC;
				clk3 : out std_logic
				);
	end component;
	
	component counter_nbit
	-- nbit counter
		generic(N : INTEGER := 8);
		port (
				clk : in std_logic;
				clr : in std_logic;
				q : out std_logic_vector(N-1 downto 0)
				);
	end component;
	
	-- init internal signals
	signal clk3 : std_logic;
	
	begin
	-- init instances (port maps)
	U1 : clkdiv 
	port map(
				mclk => clk,
				clr => btnd, 
				clk3 => clk3 	
				);
	U2 : counter_nbit 
	generic map (N => 8)
	port map(
			   clk => clk3, 
			   clr => btnd, 
			   q => led( 7 downto 0 )
			   );
end count8_top;