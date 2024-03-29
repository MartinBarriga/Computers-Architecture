library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.all;

package packagediv00 is

	component osc00
		port(osc_int: out std_logic);	
	end component;
		
	component div00
			port(
			 clkdiv: in std_logic;
			 cdiv: in std_logic_vector(4 downto 0);
			 oscout: inout std_logic);
	end component;

end packagediv00;