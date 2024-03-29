library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.all;

entity shiftRL00 is
	port(
		clkRL: in std_logic;
		inrsRL: in std_logic_vector(7 downto 0);
		resetRL: in std_logic;
		outrsRL: out std_logic_vector(7 downto 0));
end shiftRL00;

architecture shiftRL0 of shiftRL00 is
signal ssr: std_logic_vector(7 downto 0);
begin
	psr: process(clkRL)
	begin
		if(clkRL'event and clkRL = '1') then
			case resetRL is
				when '0' => 
					outrsRL <= (others => '0'); --con esto le digo que llene a outsRL con ceros
					ssr <= inrsRL;
				when '1' =>
					ssr(0) <= '0';
					ssr(7 downto 1) <= ssr(6 downto 0);
					outrsRL<= ssr;
				when others => null;
			end case;
		end if;
	end process psr;
end shiftRL0;