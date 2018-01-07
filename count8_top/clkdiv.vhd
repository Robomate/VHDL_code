-- Example 8b: clock divider
library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_unsigned.all;

entity clkdiv is
	port(
			mclk : in STD_LOGIC;
			clr : in STD_LOGIC;
			clk190 : out STD_LOGIC;
			clk48 : out STD_LOGIC;
			clk3 : out STD_LOGIC
			);
end clkdiv;

architecture clkdiv of clkdiv is
	signal q:STD_LOGIC_VECTOR(25 downto 0); --q(23):6hz use 23 downto 0
	
	begin
	-- clock divider
	process(mclk, clr)
		begin
		if clr = '1' then
			--q <= X"0000000"; -- init q vector with zeros (in: Hex)
			q(25 downto 0) <= (others => '0'); -- init q vector with zeros
		elsif mclk'event and mclk = '1' then --D FlipFlop
			q <= q + 1; --save counter state
		end if;
	end process;
	clk48 <= q(20); -- 48 Hz * 2
	clk190 <= q(18); -- 190 Hz * 2
	clk3 <= q(25); -- 3 Hz * 2
end clkdiv;

