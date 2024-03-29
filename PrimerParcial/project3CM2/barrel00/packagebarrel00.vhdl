library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library lattice;
use lattice.all;

package packagebarrel00 is

  component topdiv00
    port(
       cdiv0: in std_logic_vector(4 downto 0);
		oscout0: inout std_logic);
  end component;
  
  component barrel00
    port(
		sel: in std_logic_vector(1 downto 0);
       clks: in std_logic;
	   enables: in std_logic;
	   ins: in std_logic_vector(7 downto 0);
       outs: out std_logic_vector(7 downto 0);
	   control: in std_logic_vector(3 downto 0));
  end component;

end packagebarrel00;