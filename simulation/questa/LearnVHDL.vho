-- Copyright (C) 2022  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 22.1std.0 Build 915 10/25/2022 SC Lite Edition"

-- DATE "11/26/2023 15:26:05"

-- 
-- Device: Altera 10CL025YU256C8G Package UFBGA256
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY CYCLONE10LP;
LIBRARY IEEE;
USE CYCLONE10LP.CYCLONE10LP_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_C1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONE10LP;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONE10LP.CYCLONE10LP_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	LearnVHDL IS
    PORT (
	CLK12M : IN std_logic;
	LED0 : OUT std_logic;
	CLK12_OUT : OUT std_logic;
	COUNT_0 : OUT std_logic
	);
END LearnVHDL;

-- Design Ports Information
-- LED0	=>  Location: PIN_M6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- CLK12_OUT	=>  Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- COUNT_0	=>  Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- CLK12M	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF LearnVHDL IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLK12M : std_logic;
SIGNAL ww_LED0 : std_logic;
SIGNAL ww_CLK12_OUT : std_logic;
SIGNAL ww_COUNT_0 : std_logic;
SIGNAL \CLK12M~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LED0~output_o\ : std_logic;
SIGNAL \CLK12_OUT~output_o\ : std_logic;
SIGNAL \COUNT_0~output_o\ : std_logic;
SIGNAL \CLK12M~input_o\ : std_logic;
SIGNAL \CLK12M~inputclkctrl_outclk\ : std_logic;
SIGNAL \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ : std_logic;
SIGNAL \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ : std_logic;
SIGNAL \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\ : std_logic;
SIGNAL \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\ : std_logic;
SIGNAL \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ : std_logic;
SIGNAL \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\ : std_logic;
SIGNAL \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\ : std_logic;
SIGNAL \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\ : std_logic;
SIGNAL \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ : std_logic;
SIGNAL \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\ : std_logic;
SIGNAL \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\ : std_logic;
SIGNAL \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\ : std_logic;
SIGNAL \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\ : std_logic;
SIGNAL \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita8~combout\ : std_logic;
SIGNAL \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\ : std_logic;
SIGNAL \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita9~combout\ : std_logic;
SIGNAL \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\ : std_logic;
SIGNAL \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita10~combout\ : std_logic;
SIGNAL \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\ : std_logic;
SIGNAL \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita11~combout\ : std_logic;
SIGNAL \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\ : std_logic;
SIGNAL \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita12~combout\ : std_logic;
SIGNAL \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\ : std_logic;
SIGNAL \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita13~combout\ : std_logic;
SIGNAL \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\ : std_logic;
SIGNAL \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita14~combout\ : std_logic;
SIGNAL \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\ : std_logic;
SIGNAL \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita15~combout\ : std_logic;
SIGNAL \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\ : std_logic;
SIGNAL \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita16~combout\ : std_logic;
SIGNAL \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita16~COUT\ : std_logic;
SIGNAL \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita17~combout\ : std_logic;
SIGNAL \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita17~COUT\ : std_logic;
SIGNAL \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita18~combout\ : std_logic;
SIGNAL \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita18~COUT\ : std_logic;
SIGNAL \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita19~combout\ : std_logic;
SIGNAL \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita19~COUT\ : std_logic;
SIGNAL \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita20~combout\ : std_logic;
SIGNAL \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita20~COUT\ : std_logic;
SIGNAL \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita21~combout\ : std_logic;
SIGNAL \counter_1|LPM_COUNTER_component|auto_generated|counter_reg_bit\ : std_logic_vector(31 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLK12M <= CLK12M;
LED0 <= ww_LED0;
CLK12_OUT <= ww_CLK12_OUT;
COUNT_0 <= ww_COUNT_0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLK12M~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK12M~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X7_Y0_N9
\LED0~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \counter_1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(21),
	devoe => ww_devoe,
	o => \LED0~output_o\);

-- Location: IOOBUF_X53_Y21_N23
\CLK12_OUT~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CLK12M~input_o\,
	devoe => ww_devoe,
	o => \CLK12_OUT~output_o\);

-- Location: IOOBUF_X53_Y22_N9
\COUNT_0~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \counter_1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	devoe => ww_devoe,
	o => \COUNT_0~output_o\);

-- Location: IOIBUF_X0_Y16_N15
\CLK12M~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK12M,
	o => \CLK12M~input_o\);

-- Location: CLKCTRL_G4
\CLK12M~inputclkctrl\ : cyclone10lp_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK12M~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK12M~inputclkctrl_outclk\);

-- Location: LCCOMB_X52_Y22_N10
\counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ = \counter_1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) $ (VCC)
-- \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ = CARRY(\counter_1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter_1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datad => VCC,
	combout => \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	cout => \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\);

-- Location: FF_X52_Y22_N11
\counter_1|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK12M~inputclkctrl_outclk\,
	d => \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0));

-- Location: LCCOMB_X52_Y22_N12
\counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ = (\counter_1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & (!\counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\)) # 
-- (!\counter_1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & ((\counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\) # (GND)))
-- \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ = CARRY((!\counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\) # (!\counter_1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter_1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datad => VCC,
	cin => \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\,
	combout => \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\,
	cout => \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\);

-- Location: FF_X52_Y22_N13
\counter_1|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK12M~inputclkctrl_outclk\,
	d => \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1));

-- Location: LCCOMB_X52_Y22_N14
\counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\ = (\counter_1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & (\counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ $ (GND))) # 
-- (!\counter_1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & (!\counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ & VCC))
-- \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ = CARRY((\counter_1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & !\counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter_1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datad => VCC,
	cin => \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\,
	combout => \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\,
	cout => \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\);

-- Location: FF_X52_Y22_N15
\counter_1|LPM_COUNTER_component|auto_generated|counter_reg_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK12M~inputclkctrl_outclk\,
	d => \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2));

-- Location: LCCOMB_X52_Y22_N16
\counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\ = (\counter_1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & (!\counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\)) # 
-- (!\counter_1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & ((\counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\) # (GND)))
-- \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ = CARRY((!\counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\) # (!\counter_1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter_1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	datad => VCC,
	cin => \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\,
	combout => \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\,
	cout => \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\);

-- Location: FF_X52_Y22_N17
\counter_1|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK12M~inputclkctrl_outclk\,
	d => \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3));

-- Location: LCCOMB_X52_Y22_N18
\counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita4\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\ = (\counter_1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) & (\counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ $ (GND))) # 
-- (!\counter_1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) & (!\counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ & VCC))
-- \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\ = CARRY((\counter_1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) & !\counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter_1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4),
	datad => VCC,
	cin => \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\,
	combout => \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\,
	cout => \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\);

-- Location: FF_X52_Y22_N19
\counter_1|LPM_COUNTER_component|auto_generated|counter_reg_bit[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK12M~inputclkctrl_outclk\,
	d => \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4));

-- Location: LCCOMB_X52_Y22_N20
\counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita5\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\ = (\counter_1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5) & (!\counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\)) # 
-- (!\counter_1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5) & ((\counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\) # (GND)))
-- \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ = CARRY((!\counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\) # (!\counter_1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter_1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5),
	datad => VCC,
	cin => \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\,
	combout => \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\,
	cout => \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\);

-- Location: FF_X52_Y22_N21
\counter_1|LPM_COUNTER_component|auto_generated|counter_reg_bit[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK12M~inputclkctrl_outclk\,
	d => \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5));

-- Location: LCCOMB_X52_Y22_N22
\counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita6\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\ = (\counter_1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) & (\counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ $ (GND))) # 
-- (!\counter_1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) & (!\counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ & VCC))
-- \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\ = CARRY((\counter_1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) & !\counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter_1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6),
	datad => VCC,
	cin => \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\,
	combout => \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\,
	cout => \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\);

-- Location: FF_X52_Y22_N23
\counter_1|LPM_COUNTER_component|auto_generated|counter_reg_bit[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK12M~inputclkctrl_outclk\,
	d => \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6));

-- Location: LCCOMB_X52_Y22_N24
\counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita7\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\ = (\counter_1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7) & (!\counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\)) # 
-- (!\counter_1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7) & ((\counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\) # (GND)))
-- \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\ = CARRY((!\counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\) # (!\counter_1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter_1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7),
	datad => VCC,
	cin => \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\,
	combout => \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\,
	cout => \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\);

-- Location: FF_X52_Y22_N25
\counter_1|LPM_COUNTER_component|auto_generated|counter_reg_bit[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK12M~inputclkctrl_outclk\,
	d => \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7));

-- Location: LCCOMB_X52_Y22_N26
\counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita8\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita8~combout\ = (\counter_1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8) & (\counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\ $ (GND))) # 
-- (!\counter_1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8) & (!\counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\ & VCC))
-- \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\ = CARRY((\counter_1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8) & !\counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter_1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8),
	datad => VCC,
	cin => \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\,
	combout => \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita8~combout\,
	cout => \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\);

-- Location: FF_X52_Y22_N27
\counter_1|LPM_COUNTER_component|auto_generated|counter_reg_bit[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK12M~inputclkctrl_outclk\,
	d => \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8));

-- Location: LCCOMB_X52_Y22_N28
\counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita9\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita9~combout\ = (\counter_1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9) & (!\counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\)) # 
-- (!\counter_1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9) & ((\counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\) # (GND)))
-- \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\ = CARRY((!\counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\) # (!\counter_1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter_1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9),
	datad => VCC,
	cin => \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\,
	combout => \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita9~combout\,
	cout => \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\);

-- Location: FF_X52_Y22_N29
\counter_1|LPM_COUNTER_component|auto_generated|counter_reg_bit[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK12M~inputclkctrl_outclk\,
	d => \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita9~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9));

-- Location: LCCOMB_X52_Y22_N30
\counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita10\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita10~combout\ = (\counter_1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(10) & (\counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\ $ (GND))) # 
-- (!\counter_1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(10) & (!\counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\ & VCC))
-- \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\ = CARRY((\counter_1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(10) & !\counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter_1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(10),
	datad => VCC,
	cin => \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\,
	combout => \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita10~combout\,
	cout => \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\);

-- Location: FF_X52_Y22_N31
\counter_1|LPM_COUNTER_component|auto_generated|counter_reg_bit[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK12M~inputclkctrl_outclk\,
	d => \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(10));

-- Location: LCCOMB_X52_Y21_N0
\counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita11\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita11~combout\ = (\counter_1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(11) & (!\counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\)) # 
-- (!\counter_1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(11) & ((\counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\) # (GND)))
-- \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\ = CARRY((!\counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\) # (!\counter_1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter_1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(11),
	datad => VCC,
	cin => \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\,
	combout => \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita11~combout\,
	cout => \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\);

-- Location: FF_X52_Y21_N1
\counter_1|LPM_COUNTER_component|auto_generated|counter_reg_bit[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK12M~inputclkctrl_outclk\,
	d => \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita11~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(11));

-- Location: LCCOMB_X52_Y21_N2
\counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita12\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita12~combout\ = (\counter_1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(12) & (\counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\ $ (GND))) # 
-- (!\counter_1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(12) & (!\counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\ & VCC))
-- \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\ = CARRY((\counter_1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(12) & !\counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter_1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(12),
	datad => VCC,
	cin => \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\,
	combout => \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita12~combout\,
	cout => \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\);

-- Location: FF_X52_Y21_N3
\counter_1|LPM_COUNTER_component|auto_generated|counter_reg_bit[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK12M~inputclkctrl_outclk\,
	d => \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita12~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(12));

-- Location: LCCOMB_X52_Y21_N4
\counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita13\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita13~combout\ = (\counter_1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(13) & (!\counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\)) # 
-- (!\counter_1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(13) & ((\counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\) # (GND)))
-- \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\ = CARRY((!\counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\) # (!\counter_1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter_1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(13),
	datad => VCC,
	cin => \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\,
	combout => \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita13~combout\,
	cout => \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\);

-- Location: FF_X52_Y21_N5
\counter_1|LPM_COUNTER_component|auto_generated|counter_reg_bit[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK12M~inputclkctrl_outclk\,
	d => \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita13~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(13));

-- Location: LCCOMB_X52_Y21_N6
\counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita14\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita14~combout\ = (\counter_1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(14) & (\counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\ $ (GND))) # 
-- (!\counter_1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(14) & (!\counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\ & VCC))
-- \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\ = CARRY((\counter_1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(14) & !\counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter_1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(14),
	datad => VCC,
	cin => \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\,
	combout => \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita14~combout\,
	cout => \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\);

-- Location: FF_X52_Y21_N7
\counter_1|LPM_COUNTER_component|auto_generated|counter_reg_bit[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK12M~inputclkctrl_outclk\,
	d => \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita14~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(14));

-- Location: LCCOMB_X52_Y21_N8
\counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita15\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita15~combout\ = (\counter_1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(15) & (!\counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\)) # 
-- (!\counter_1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(15) & ((\counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\) # (GND)))
-- \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\ = CARRY((!\counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\) # (!\counter_1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter_1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(15),
	datad => VCC,
	cin => \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\,
	combout => \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita15~combout\,
	cout => \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\);

-- Location: FF_X52_Y21_N9
\counter_1|LPM_COUNTER_component|auto_generated|counter_reg_bit[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK12M~inputclkctrl_outclk\,
	d => \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita15~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(15));

-- Location: LCCOMB_X52_Y21_N10
\counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita16\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita16~combout\ = (\counter_1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(16) & (\counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\ $ (GND))) # 
-- (!\counter_1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(16) & (!\counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\ & VCC))
-- \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita16~COUT\ = CARRY((\counter_1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(16) & !\counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter_1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(16),
	datad => VCC,
	cin => \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\,
	combout => \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita16~combout\,
	cout => \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita16~COUT\);

-- Location: FF_X52_Y21_N11
\counter_1|LPM_COUNTER_component|auto_generated|counter_reg_bit[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK12M~inputclkctrl_outclk\,
	d => \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita16~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(16));

-- Location: LCCOMB_X52_Y21_N12
\counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita17\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita17~combout\ = (\counter_1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(17) & (!\counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita16~COUT\)) # 
-- (!\counter_1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(17) & ((\counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita16~COUT\) # (GND)))
-- \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita17~COUT\ = CARRY((!\counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita16~COUT\) # (!\counter_1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter_1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(17),
	datad => VCC,
	cin => \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita16~COUT\,
	combout => \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita17~combout\,
	cout => \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita17~COUT\);

-- Location: FF_X52_Y21_N13
\counter_1|LPM_COUNTER_component|auto_generated|counter_reg_bit[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK12M~inputclkctrl_outclk\,
	d => \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita17~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(17));

-- Location: LCCOMB_X52_Y21_N14
\counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita18\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita18~combout\ = (\counter_1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(18) & (\counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita17~COUT\ $ (GND))) # 
-- (!\counter_1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(18) & (!\counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita17~COUT\ & VCC))
-- \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita18~COUT\ = CARRY((\counter_1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(18) & !\counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita17~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter_1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(18),
	datad => VCC,
	cin => \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita17~COUT\,
	combout => \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita18~combout\,
	cout => \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita18~COUT\);

-- Location: FF_X52_Y21_N15
\counter_1|LPM_COUNTER_component|auto_generated|counter_reg_bit[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK12M~inputclkctrl_outclk\,
	d => \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita18~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(18));

-- Location: LCCOMB_X52_Y21_N16
\counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita19\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita19~combout\ = (\counter_1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(19) & (!\counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita18~COUT\)) # 
-- (!\counter_1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(19) & ((\counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita18~COUT\) # (GND)))
-- \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita19~COUT\ = CARRY((!\counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita18~COUT\) # (!\counter_1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter_1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(19),
	datad => VCC,
	cin => \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita18~COUT\,
	combout => \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita19~combout\,
	cout => \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita19~COUT\);

-- Location: FF_X52_Y21_N17
\counter_1|LPM_COUNTER_component|auto_generated|counter_reg_bit[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK12M~inputclkctrl_outclk\,
	d => \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita19~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(19));

-- Location: LCCOMB_X52_Y21_N18
\counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita20\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita20~combout\ = (\counter_1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(20) & (\counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita19~COUT\ $ (GND))) # 
-- (!\counter_1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(20) & (!\counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita19~COUT\ & VCC))
-- \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita20~COUT\ = CARRY((\counter_1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(20) & !\counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita19~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter_1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(20),
	datad => VCC,
	cin => \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita19~COUT\,
	combout => \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita20~combout\,
	cout => \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita20~COUT\);

-- Location: FF_X52_Y21_N19
\counter_1|LPM_COUNTER_component|auto_generated|counter_reg_bit[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK12M~inputclkctrl_outclk\,
	d => \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita20~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(20));

-- Location: LCCOMB_X52_Y21_N20
\counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita21\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita21~combout\ = \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita20~COUT\ $ (\counter_1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \counter_1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(21),
	cin => \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita20~COUT\,
	combout => \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita21~combout\);

-- Location: FF_X52_Y21_N21
\counter_1|LPM_COUNTER_component|auto_generated|counter_reg_bit[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK12M~inputclkctrl_outclk\,
	d => \counter_1|LPM_COUNTER_component|auto_generated|counter_comb_bita21~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(21));

ww_LED0 <= \LED0~output_o\;

ww_CLK12_OUT <= \CLK12_OUT~output_o\;

ww_COUNT_0 <= \COUNT_0~output_o\;
END structure;


