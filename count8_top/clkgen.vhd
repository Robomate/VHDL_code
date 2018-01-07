-- Example 8b: clock generator
library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_unsigned.all;

entity clkgen is
port ( 
       clk : in std_logic;
		 clr : in std_logic;
       clk1 : out std_logic
     );
end clkgen;

architecture clkgen of clkgen is

signal count : integer :=1;
signal clk1Hz : std_logic :='0';

	--clock generation: from 100 MHz clock to 1 Hz clock.
	begin
	process(clk) 
		begin
		if clr = '1' then -- reset, set to zero
			count <= 0;
			clk1Hz <= '0';
		elsif clk'event and clk='1' then -- save count in D flip flop
			count <= count+1;
			if(count = 50000000) then
				clk1Hz <= not clk1Hz;
				count <= 1;
			end if;
		end if;
	end process;
	clk1 <= clk1Hz;
end clkgen;

