Library ieee;
use ieee.std_logic_1164.all;

entity LearnVHDL is
	port(
		CLK12M		: in	STD_LOGIC; --Confirmed 12 MHz
		LED0			: out	STD_LOGIC;
		CLK12_OUT	: out	STD_LOGIC;
		COUNT_0		: out	STD_LOGIC
		);

end entity;

architecture a_LearnVHDL of LearnVHDL is
/*
The input is divided by 2 to the powr of (pin + 1), i.e. pin 0 => 12M / 2^1 = 6M!
e.g. 12 MHz in divided by 2^22 (= 4M) gives 12/4 = 3 Hz on pin 21*/
COMPONENT Counter IS
	PORT
	(
		clock		: IN STD_LOGIC ;
		q			: OUT STD_LOGIC_VECTOR (31 DOWNTO 0)
	);
END COMPONENT Counter;

begin
	--clkOut <= clkIn;
	counter_1 : Counter port map( clock => CLK12M,
											q(21) => LED0, -- Measured to 355 ms
											q(0) => COUNT_0);
	CLK12_OUT	<= CLK12M;
end architecture;