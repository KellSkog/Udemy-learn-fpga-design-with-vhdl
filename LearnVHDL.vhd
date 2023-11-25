Library ieee;
use ieee.std_logic_1164.all;

entity LearnVHDL is
	port(
		clkIn	: in	STD_LOGIC;
		clkOut	: out	STD_LOGIC
		);

end entity;

architecture a_LearnVHDL of LearnVHDL is
begin
	clkOut <= clkIn;
end architecture;