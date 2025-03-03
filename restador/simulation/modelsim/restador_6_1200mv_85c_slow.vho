-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "02/27/2025 17:17:03"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	restador IS
    PORT (
	x : IN std_logic_vector(3 DOWNTO 0);
	y : IN std_logic_vector(3 DOWNTO 0);
	M : OUT std_logic_vector(3 DOWNTO 0);
	S : OUT std_logic
	);
END restador;

-- Design Ports Information
-- M[0]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[1]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[2]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[3]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[0]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[0]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[3]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[3]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[2]	=>  Location: PIN_N17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[2]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[1]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[1]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF restador IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_x : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_y : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_M : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_S : std_logic;
SIGNAL \M[0]~output_o\ : std_logic;
SIGNAL \M[1]~output_o\ : std_logic;
SIGNAL \M[2]~output_o\ : std_logic;
SIGNAL \M[3]~output_o\ : std_logic;
SIGNAL \S~output_o\ : std_logic;
SIGNAL \x[0]~input_o\ : std_logic;
SIGNAL \y[0]~input_o\ : std_logic;
SIGNAL \y_minus_x[0]~0_combout\ : std_logic;
SIGNAL \x_minus_y[0]~0_combout\ : std_logic;
SIGNAL \y[3]~input_o\ : std_logic;
SIGNAL \x[2]~input_o\ : std_logic;
SIGNAL \y[2]~input_o\ : std_logic;
SIGNAL \x[1]~input_o\ : std_logic;
SIGNAL \y[1]~input_o\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \x[3]~input_o\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \x_minus_y[0]~1\ : std_logic;
SIGNAL \x_minus_y[1]~2_combout\ : std_logic;
SIGNAL \y_minus_x[0]~1\ : std_logic;
SIGNAL \y_minus_x[1]~2_combout\ : std_logic;
SIGNAL \Add0~1_combout\ : std_logic;
SIGNAL \x_minus_y[1]~3\ : std_logic;
SIGNAL \x_minus_y[2]~4_combout\ : std_logic;
SIGNAL \y_minus_x[1]~3\ : std_logic;
SIGNAL \y_minus_x[2]~4_combout\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \y_minus_x[2]~5\ : std_logic;
SIGNAL \y_minus_x[3]~6_combout\ : std_logic;
SIGNAL \x_minus_y[2]~5\ : std_logic;
SIGNAL \x_minus_y[3]~6_combout\ : std_logic;
SIGNAL \Add0~3_combout\ : std_logic;

BEGIN

ww_x <= x;
ww_y <= y;
M <= ww_M;
S <= ww_S;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X0_Y23_N9
\M[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~0_combout\,
	devoe => ww_devoe,
	o => \M[0]~output_o\);

-- Location: IOOBUF_X1_Y29_N2
\M[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~1_combout\,
	devoe => ww_devoe,
	o => \M[1]~output_o\);

-- Location: IOOBUF_X0_Y20_N2
\M[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~2_combout\,
	devoe => ww_devoe,
	o => \M[2]~output_o\);

-- Location: IOOBUF_X1_Y0_N30
\M[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~3_combout\,
	devoe => ww_devoe,
	o => \M[3]~output_o\);

-- Location: IOOBUF_X0_Y12_N2
\S~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LessThan0~2_combout\,
	devoe => ww_devoe,
	o => \S~output_o\);

-- Location: IOIBUF_X28_Y0_N22
\x[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(0),
	o => \x[0]~input_o\);

-- Location: IOIBUF_X0_Y11_N15
\y[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(0),
	o => \y[0]~input_o\);

-- Location: LCCOMB_X1_Y13_N0
\y_minus_x[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \y_minus_x[0]~0_combout\ = (\x[0]~input_o\ & (\y[0]~input_o\ $ (VCC))) # (!\x[0]~input_o\ & ((\y[0]~input_o\) # (GND)))
-- \y_minus_x[0]~1\ = CARRY((\y[0]~input_o\) # (!\x[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[0]~input_o\,
	datab => \y[0]~input_o\,
	datad => VCC,
	combout => \y_minus_x[0]~0_combout\,
	cout => \y_minus_x[0]~1\);

-- Location: LCCOMB_X1_Y13_N8
\x_minus_y[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \x_minus_y[0]~0_combout\ = (\x[0]~input_o\ & ((GND) # (!\y[0]~input_o\))) # (!\x[0]~input_o\ & (\y[0]~input_o\ $ (GND)))
-- \x_minus_y[0]~1\ = CARRY((\x[0]~input_o\) # (!\y[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[0]~input_o\,
	datab => \y[0]~input_o\,
	datad => VCC,
	combout => \x_minus_y[0]~0_combout\,
	cout => \x_minus_y[0]~1\);

-- Location: IOIBUF_X0_Y11_N1
\y[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(3),
	o => \y[3]~input_o\);

-- Location: IOIBUF_X0_Y13_N8
\x[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(2),
	o => \x[2]~input_o\);

-- Location: IOIBUF_X41_Y12_N1
\y[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(2),
	o => \y[2]~input_o\);

-- Location: IOIBUF_X0_Y7_N22
\x[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(1),
	o => \x[1]~input_o\);

-- Location: IOIBUF_X41_Y14_N1
\y[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(1),
	o => \y[1]~input_o\);

-- Location: LCCOMB_X1_Y13_N24
\LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (\x[1]~input_o\ & (!\x[0]~input_o\ & (\y[0]~input_o\ & \y[1]~input_o\))) # (!\x[1]~input_o\ & ((\y[1]~input_o\) # ((!\x[0]~input_o\ & \y[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[0]~input_o\,
	datab => \x[1]~input_o\,
	datac => \y[0]~input_o\,
	datad => \y[1]~input_o\,
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X1_Y13_N26
\LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (\x[2]~input_o\ & (\y[2]~input_o\ & \LessThan0~0_combout\)) # (!\x[2]~input_o\ & ((\y[2]~input_o\) # (\LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[2]~input_o\,
	datac => \y[2]~input_o\,
	datad => \LessThan0~0_combout\,
	combout => \LessThan0~1_combout\);

-- Location: IOIBUF_X0_Y12_N15
\x[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(3),
	o => \x[3]~input_o\);

-- Location: LCCOMB_X1_Y13_N20
\LessThan0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (\y[3]~input_o\ & ((\LessThan0~1_combout\) # (!\x[3]~input_o\))) # (!\y[3]~input_o\ & (\LessThan0~1_combout\ & !\x[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[3]~input_o\,
	datac => \LessThan0~1_combout\,
	datad => \x[3]~input_o\,
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X1_Y13_N22
\Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (\LessThan0~2_combout\ & (\y_minus_x[0]~0_combout\)) # (!\LessThan0~2_combout\ & ((\x_minus_y[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \y_minus_x[0]~0_combout\,
	datac => \x_minus_y[0]~0_combout\,
	datad => \LessThan0~2_combout\,
	combout => \Add0~0_combout\);

-- Location: LCCOMB_X1_Y13_N10
\x_minus_y[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \x_minus_y[1]~2_combout\ = (\x[1]~input_o\ & ((\y[1]~input_o\ & (!\x_minus_y[0]~1\)) # (!\y[1]~input_o\ & (\x_minus_y[0]~1\ & VCC)))) # (!\x[1]~input_o\ & ((\y[1]~input_o\ & ((\x_minus_y[0]~1\) # (GND))) # (!\y[1]~input_o\ & (!\x_minus_y[0]~1\))))
-- \x_minus_y[1]~3\ = CARRY((\x[1]~input_o\ & (\y[1]~input_o\ & !\x_minus_y[0]~1\)) # (!\x[1]~input_o\ & ((\y[1]~input_o\) # (!\x_minus_y[0]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \x[1]~input_o\,
	datab => \y[1]~input_o\,
	datad => VCC,
	cin => \x_minus_y[0]~1\,
	combout => \x_minus_y[1]~2_combout\,
	cout => \x_minus_y[1]~3\);

-- Location: LCCOMB_X1_Y13_N2
\y_minus_x[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \y_minus_x[1]~2_combout\ = (\x[1]~input_o\ & ((\y[1]~input_o\ & (!\y_minus_x[0]~1\)) # (!\y[1]~input_o\ & ((\y_minus_x[0]~1\) # (GND))))) # (!\x[1]~input_o\ & ((\y[1]~input_o\ & (\y_minus_x[0]~1\ & VCC)) # (!\y[1]~input_o\ & (!\y_minus_x[0]~1\))))
-- \y_minus_x[1]~3\ = CARRY((\x[1]~input_o\ & ((!\y_minus_x[0]~1\) # (!\y[1]~input_o\))) # (!\x[1]~input_o\ & (!\y[1]~input_o\ & !\y_minus_x[0]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \x[1]~input_o\,
	datab => \y[1]~input_o\,
	datad => VCC,
	cin => \y_minus_x[0]~1\,
	combout => \y_minus_x[1]~2_combout\,
	cout => \y_minus_x[1]~3\);

-- Location: LCCOMB_X1_Y13_N16
\Add0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~1_combout\ = (\LessThan0~2_combout\ & ((\y_minus_x[1]~2_combout\))) # (!\LessThan0~2_combout\ & (\x_minus_y[1]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_minus_y[1]~2_combout\,
	datab => \y_minus_x[1]~2_combout\,
	datad => \LessThan0~2_combout\,
	combout => \Add0~1_combout\);

-- Location: LCCOMB_X1_Y13_N12
\x_minus_y[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \x_minus_y[2]~4_combout\ = ((\y[2]~input_o\ $ (\x[2]~input_o\ $ (\x_minus_y[1]~3\)))) # (GND)
-- \x_minus_y[2]~5\ = CARRY((\y[2]~input_o\ & (\x[2]~input_o\ & !\x_minus_y[1]~3\)) # (!\y[2]~input_o\ & ((\x[2]~input_o\) # (!\x_minus_y[1]~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \y[2]~input_o\,
	datab => \x[2]~input_o\,
	datad => VCC,
	cin => \x_minus_y[1]~3\,
	combout => \x_minus_y[2]~4_combout\,
	cout => \x_minus_y[2]~5\);

-- Location: LCCOMB_X1_Y13_N4
\y_minus_x[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \y_minus_x[2]~4_combout\ = ((\y[2]~input_o\ $ (\x[2]~input_o\ $ (\y_minus_x[1]~3\)))) # (GND)
-- \y_minus_x[2]~5\ = CARRY((\y[2]~input_o\ & ((!\y_minus_x[1]~3\) # (!\x[2]~input_o\))) # (!\y[2]~input_o\ & (!\x[2]~input_o\ & !\y_minus_x[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \y[2]~input_o\,
	datab => \x[2]~input_o\,
	datad => VCC,
	cin => \y_minus_x[1]~3\,
	combout => \y_minus_x[2]~4_combout\,
	cout => \y_minus_x[2]~5\);

-- Location: LCCOMB_X1_Y13_N18
\Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\LessThan0~2_combout\ & ((\y_minus_x[2]~4_combout\))) # (!\LessThan0~2_combout\ & (\x_minus_y[2]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_minus_y[2]~4_combout\,
	datac => \y_minus_x[2]~4_combout\,
	datad => \LessThan0~2_combout\,
	combout => \Add0~2_combout\);

-- Location: LCCOMB_X1_Y13_N6
\y_minus_x[3]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \y_minus_x[3]~6_combout\ = \y[3]~input_o\ $ (\y_minus_x[2]~5\ $ (!\x[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \y[3]~input_o\,
	datad => \x[3]~input_o\,
	cin => \y_minus_x[2]~5\,
	combout => \y_minus_x[3]~6_combout\);

-- Location: LCCOMB_X1_Y13_N14
\x_minus_y[3]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \x_minus_y[3]~6_combout\ = \y[3]~input_o\ $ (\x_minus_y[2]~5\ $ (!\x[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \y[3]~input_o\,
	datad => \x[3]~input_o\,
	cin => \x_minus_y[2]~5\,
	combout => \x_minus_y[3]~6_combout\);

-- Location: LCCOMB_X1_Y13_N28
\Add0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~3_combout\ = (\LessThan0~2_combout\ & (\y_minus_x[3]~6_combout\)) # (!\LessThan0~2_combout\ & ((\x_minus_y[3]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_minus_x[3]~6_combout\,
	datac => \x_minus_y[3]~6_combout\,
	datad => \LessThan0~2_combout\,
	combout => \Add0~3_combout\);

ww_M(0) <= \M[0]~output_o\;

ww_M(1) <= \M[1]~output_o\;

ww_M(2) <= \M[2]~output_o\;

ww_M(3) <= \M[3]~output_o\;

ww_S <= \S~output_o\;
END structure;


