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

-- DATE "02/27/2025 17:33:01"

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

ENTITY 	test_restador IS
    PORT (
	x : IN std_logic_vector(3 DOWNTO 0);
	y : IN std_logic_vector(3 DOWNTO 0);
	s : BUFFER std_logic;
	display0 : BUFFER std_logic_vector(6 DOWNTO 0);
	display1 : BUFFER std_logic_vector(6 DOWNTO 0);
	display2 : BUFFER std_logic_vector(6 DOWNTO 0);
	display3 : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END test_restador;

-- Design Ports Information
-- s	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display0[0]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display0[1]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display0[2]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display0[3]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display0[4]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display0[5]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display0[6]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display1[0]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display1[1]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display1[2]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display1[3]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display1[4]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display1[5]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display1[6]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display2[0]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display2[1]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display2[2]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display2[3]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display2[4]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display2[5]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display2[6]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display3[0]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display3[1]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display3[2]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display3[3]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display3[4]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display3[5]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display3[6]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[3]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[3]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[2]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[2]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[1]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[0]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[0]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[1]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF test_restador IS
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
SIGNAL ww_s : std_logic;
SIGNAL ww_display0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_display1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_display2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_display3 : std_logic_vector(6 DOWNTO 0);
SIGNAL \s~output_o\ : std_logic;
SIGNAL \display0[0]~output_o\ : std_logic;
SIGNAL \display0[1]~output_o\ : std_logic;
SIGNAL \display0[2]~output_o\ : std_logic;
SIGNAL \display0[3]~output_o\ : std_logic;
SIGNAL \display0[4]~output_o\ : std_logic;
SIGNAL \display0[5]~output_o\ : std_logic;
SIGNAL \display0[6]~output_o\ : std_logic;
SIGNAL \display1[0]~output_o\ : std_logic;
SIGNAL \display1[1]~output_o\ : std_logic;
SIGNAL \display1[2]~output_o\ : std_logic;
SIGNAL \display1[3]~output_o\ : std_logic;
SIGNAL \display1[4]~output_o\ : std_logic;
SIGNAL \display1[5]~output_o\ : std_logic;
SIGNAL \display1[6]~output_o\ : std_logic;
SIGNAL \display2[0]~output_o\ : std_logic;
SIGNAL \display2[1]~output_o\ : std_logic;
SIGNAL \display2[2]~output_o\ : std_logic;
SIGNAL \display2[3]~output_o\ : std_logic;
SIGNAL \display2[4]~output_o\ : std_logic;
SIGNAL \display2[5]~output_o\ : std_logic;
SIGNAL \display2[6]~output_o\ : std_logic;
SIGNAL \display3[0]~output_o\ : std_logic;
SIGNAL \display3[1]~output_o\ : std_logic;
SIGNAL \display3[2]~output_o\ : std_logic;
SIGNAL \display3[3]~output_o\ : std_logic;
SIGNAL \display3[4]~output_o\ : std_logic;
SIGNAL \display3[5]~output_o\ : std_logic;
SIGNAL \display3[6]~output_o\ : std_logic;
SIGNAL \x[3]~input_o\ : std_logic;
SIGNAL \y[3]~input_o\ : std_logic;
SIGNAL \x[2]~input_o\ : std_logic;
SIGNAL \y[2]~input_o\ : std_logic;
SIGNAL \x[1]~input_o\ : std_logic;
SIGNAL \x[0]~input_o\ : std_logic;
SIGNAL \y[1]~input_o\ : std_logic;
SIGNAL \y[0]~input_o\ : std_logic;
SIGNAL \U0|LessThan0~0_combout\ : std_logic;
SIGNAL \U0|LessThan0~1_combout\ : std_logic;
SIGNAL \U0|LessThan0~2_combout\ : std_logic;
SIGNAL \U2|Mux6~0_combout\ : std_logic;
SIGNAL \U2|Mux5~0_combout\ : std_logic;
SIGNAL \U2|Mux4~0_combout\ : std_logic;
SIGNAL \U2|Mux3~0_combout\ : std_logic;
SIGNAL \U2|Mux2~0_combout\ : std_logic;
SIGNAL \U2|Mux1~0_combout\ : std_logic;
SIGNAL \U2|Mux0~0_combout\ : std_logic;
SIGNAL \U3|Mux6~0_combout\ : std_logic;
SIGNAL \U3|Mux5~0_combout\ : std_logic;
SIGNAL \U3|Mux4~0_combout\ : std_logic;
SIGNAL \U3|Mux3~0_combout\ : std_logic;
SIGNAL \U3|Mux2~0_combout\ : std_logic;
SIGNAL \U3|Mux1~0_combout\ : std_logic;
SIGNAL \U3|Mux0~0_combout\ : std_logic;
SIGNAL \U0|x_minus_y[0]~1\ : std_logic;
SIGNAL \U0|x_minus_y[1]~3\ : std_logic;
SIGNAL \U0|x_minus_y[2]~5\ : std_logic;
SIGNAL \U0|x_minus_y[3]~6_combout\ : std_logic;
SIGNAL \U0|y_minus_x[0]~1\ : std_logic;
SIGNAL \U0|y_minus_x[1]~3\ : std_logic;
SIGNAL \U0|y_minus_x[2]~5\ : std_logic;
SIGNAL \U0|y_minus_x[3]~6_combout\ : std_logic;
SIGNAL \U0|Add0~2_combout\ : std_logic;
SIGNAL \U0|x_minus_y[2]~4_combout\ : std_logic;
SIGNAL \U0|y_minus_x[2]~4_combout\ : std_logic;
SIGNAL \U0|Add0~3_combout\ : std_logic;
SIGNAL \U0|y_minus_x[1]~2_combout\ : std_logic;
SIGNAL \U0|x_minus_y[1]~2_combout\ : std_logic;
SIGNAL \U0|Add0~1_combout\ : std_logic;
SIGNAL \U1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \U1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \U1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \U1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \U1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \U1|Mod0|auto_generated|divider|divider|StageOut[15]~2_combout\ : std_logic;
SIGNAL \U1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \U1|Mod0|auto_generated|divider|divider|StageOut[13]~0_combout\ : std_logic;
SIGNAL \U1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \U1|Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\ : std_logic;
SIGNAL \U0|x_minus_y[0]~0_combout\ : std_logic;
SIGNAL \U0|y_minus_x[0]~0_combout\ : std_logic;
SIGNAL \U0|Add0~0_combout\ : std_logic;
SIGNAL \U4|Mux6~0_combout\ : std_logic;
SIGNAL \U4|Mux5~0_combout\ : std_logic;
SIGNAL \U4|Mux4~0_combout\ : std_logic;
SIGNAL \U4|Mux3~0_combout\ : std_logic;
SIGNAL \U4|Mux2~0_combout\ : std_logic;
SIGNAL \U4|Mux1~0_combout\ : std_logic;
SIGNAL \U4|Mux0~0_combout\ : std_logic;
SIGNAL \U1|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1_cout\ : std_logic;
SIGNAL \U1|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3_cout\ : std_logic;
SIGNAL \U1|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5_cout\ : std_logic;
SIGNAL \U1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \U2|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \U1|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \U4|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \U3|ALT_INV_Mux6~0_combout\ : std_logic;

BEGIN

ww_x <= x;
ww_y <= y;
s <= ww_s;
display0 <= ww_display0;
display1 <= ww_display1;
display2 <= ww_display2;
display3 <= ww_display3;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\U2|ALT_INV_Mux6~0_combout\ <= NOT \U2|Mux6~0_combout\;
\U1|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~6_combout\ <= NOT \U1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\;
\U4|ALT_INV_Mux6~0_combout\ <= NOT \U4|Mux6~0_combout\;
\U3|ALT_INV_Mux6~0_combout\ <= NOT \U3|Mux6~0_combout\;

-- Location: IOOBUF_X0_Y27_N16
\s~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U0|LessThan0~2_combout\,
	devoe => ww_devoe,
	o => \s~output_o\);

-- Location: IOOBUF_X26_Y29_N16
\display0[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \display0[0]~output_o\);

-- Location: IOOBUF_X28_Y29_N23
\display0[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \display0[1]~output_o\);

-- Location: IOOBUF_X26_Y29_N9
\display0[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \display0[2]~output_o\);

-- Location: IOOBUF_X28_Y29_N30
\display0[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \display0[3]~output_o\);

-- Location: IOOBUF_X26_Y29_N2
\display0[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \display0[4]~output_o\);

-- Location: IOOBUF_X21_Y29_N30
\display0[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \display0[5]~output_o\);

-- Location: IOOBUF_X21_Y29_N23
\display0[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \display0[6]~output_o\);

-- Location: IOOBUF_X26_Y29_N23
\display1[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \display1[0]~output_o\);

-- Location: IOOBUF_X28_Y29_N16
\display1[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \display1[1]~output_o\);

-- Location: IOOBUF_X23_Y29_N30
\display1[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \display1[2]~output_o\);

-- Location: IOOBUF_X23_Y29_N23
\display1[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \display1[3]~output_o\);

-- Location: IOOBUF_X23_Y29_N2
\display1[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \display1[4]~output_o\);

-- Location: IOOBUF_X21_Y29_N9
\display1[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \display1[5]~output_o\);

-- Location: IOOBUF_X21_Y29_N2
\display1[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \display1[6]~output_o\);

-- Location: IOOBUF_X37_Y29_N2
\display2[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \display2[0]~output_o\);

-- Location: IOOBUF_X30_Y29_N23
\display2[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \display2[1]~output_o\);

-- Location: IOOBUF_X30_Y29_N16
\display2[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \display2[2]~output_o\);

-- Location: IOOBUF_X30_Y29_N2
\display2[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \display2[3]~output_o\);

-- Location: IOOBUF_X28_Y29_N2
\display2[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \display2[4]~output_o\);

-- Location: IOOBUF_X30_Y29_N30
\display2[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \display2[5]~output_o\);

-- Location: IOOBUF_X32_Y29_N30
\display2[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \display2[6]~output_o\);

-- Location: IOOBUF_X39_Y29_N30
\display3[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \display3[0]~output_o\);

-- Location: IOOBUF_X37_Y29_N30
\display3[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~6_combout\,
	devoe => ww_devoe,
	o => \display3[1]~output_o\);

-- Location: IOOBUF_X37_Y29_N23
\display3[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~6_combout\,
	devoe => ww_devoe,
	o => \display3[2]~output_o\);

-- Location: IOOBUF_X32_Y29_N2
\display3[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~6_combout\,
	devoe => ww_devoe,
	o => \display3[3]~output_o\);

-- Location: IOOBUF_X32_Y29_N9
\display3[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \display3[4]~output_o\);

-- Location: IOOBUF_X39_Y29_N16
\display3[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \display3[5]~output_o\);

-- Location: IOOBUF_X32_Y29_N23
\display3[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~6_combout\,
	devoe => ww_devoe,
	o => \display3[6]~output_o\);

-- Location: IOIBUF_X0_Y23_N8
\x[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(3),
	o => \x[3]~input_o\);

-- Location: IOIBUF_X0_Y26_N8
\y[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(3),
	o => \y[3]~input_o\);

-- Location: IOIBUF_X0_Y25_N22
\x[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(2),
	o => \x[2]~input_o\);

-- Location: IOIBUF_X0_Y25_N15
\y[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(2),
	o => \y[2]~input_o\);

-- Location: IOIBUF_X0_Y27_N1
\x[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(1),
	o => \x[1]~input_o\);

-- Location: IOIBUF_X0_Y24_N1
\x[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(0),
	o => \x[0]~input_o\);

-- Location: IOIBUF_X0_Y22_N15
\y[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(1),
	o => \y[1]~input_o\);

-- Location: IOIBUF_X0_Y27_N22
\y[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(0),
	o => \y[0]~input_o\);

-- Location: LCCOMB_X19_Y26_N24
\U0|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|LessThan0~0_combout\ = (\x[1]~input_o\ & (!\x[0]~input_o\ & (\y[1]~input_o\ & \y[0]~input_o\))) # (!\x[1]~input_o\ & ((\y[1]~input_o\) # ((!\x[0]~input_o\ & \y[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[1]~input_o\,
	datab => \x[0]~input_o\,
	datac => \y[1]~input_o\,
	datad => \y[0]~input_o\,
	combout => \U0|LessThan0~0_combout\);

-- Location: LCCOMB_X20_Y27_N24
\U0|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|LessThan0~1_combout\ = (\x[2]~input_o\ & (\y[2]~input_o\ & \U0|LessThan0~0_combout\)) # (!\x[2]~input_o\ & ((\y[2]~input_o\) # (\U0|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \x[2]~input_o\,
	datac => \y[2]~input_o\,
	datad => \U0|LessThan0~0_combout\,
	combout => \U0|LessThan0~1_combout\);

-- Location: LCCOMB_X20_Y27_N26
\U0|LessThan0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|LessThan0~2_combout\ = (\x[3]~input_o\ & (\y[3]~input_o\ & \U0|LessThan0~1_combout\)) # (!\x[3]~input_o\ & ((\y[3]~input_o\) # (\U0|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[3]~input_o\,
	datac => \y[3]~input_o\,
	datad => \U0|LessThan0~1_combout\,
	combout => \U0|LessThan0~2_combout\);

-- Location: LCCOMB_X19_Y26_N26
\U2|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Mux6~0_combout\ = (\x[1]~input_o\ & (!\x[3]~input_o\ & ((!\x[2]~input_o\) # (!\x[0]~input_o\)))) # (!\x[1]~input_o\ & ((\x[3]~input_o\ $ (\x[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[1]~input_o\,
	datab => \x[0]~input_o\,
	datac => \x[3]~input_o\,
	datad => \x[2]~input_o\,
	combout => \U2|Mux6~0_combout\);

-- Location: LCCOMB_X19_Y26_N20
\U2|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Mux5~0_combout\ = (\x[0]~input_o\ & ((\x[1]~input_o\) # (\x[3]~input_o\ $ (!\x[2]~input_o\)))) # (!\x[0]~input_o\ & ((\x[2]~input_o\ & ((\x[3]~input_o\))) # (!\x[2]~input_o\ & (\x[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[1]~input_o\,
	datab => \x[0]~input_o\,
	datac => \x[3]~input_o\,
	datad => \x[2]~input_o\,
	combout => \U2|Mux5~0_combout\);

-- Location: LCCOMB_X19_Y26_N30
\U2|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Mux4~0_combout\ = (\x[0]~input_o\) # ((\x[1]~input_o\ & (\x[3]~input_o\)) # (!\x[1]~input_o\ & ((\x[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[1]~input_o\,
	datab => \x[0]~input_o\,
	datac => \x[3]~input_o\,
	datad => \x[2]~input_o\,
	combout => \U2|Mux4~0_combout\);

-- Location: LCCOMB_X19_Y26_N16
\U2|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Mux3~0_combout\ = (\x[1]~input_o\ & ((\x[3]~input_o\) # ((\x[0]~input_o\ & \x[2]~input_o\)))) # (!\x[1]~input_o\ & (\x[2]~input_o\ $ (((\x[0]~input_o\ & !\x[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[1]~input_o\,
	datab => \x[0]~input_o\,
	datac => \x[3]~input_o\,
	datad => \x[2]~input_o\,
	combout => \U2|Mux3~0_combout\);

-- Location: LCCOMB_X19_Y26_N18
\U2|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Mux2~0_combout\ = (\x[2]~input_o\ & (((\x[3]~input_o\)))) # (!\x[2]~input_o\ & (\x[1]~input_o\ & ((\x[3]~input_o\) # (!\x[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[1]~input_o\,
	datab => \x[0]~input_o\,
	datac => \x[3]~input_o\,
	datad => \x[2]~input_o\,
	combout => \U2|Mux2~0_combout\);

-- Location: LCCOMB_X19_Y26_N28
\U2|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Mux1~0_combout\ = (\x[3]~input_o\ & ((\x[1]~input_o\) # ((\x[2]~input_o\)))) # (!\x[3]~input_o\ & (\x[2]~input_o\ & (\x[1]~input_o\ $ (\x[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[1]~input_o\,
	datab => \x[0]~input_o\,
	datac => \x[3]~input_o\,
	datad => \x[2]~input_o\,
	combout => \U2|Mux1~0_combout\);

-- Location: LCCOMB_X19_Y26_N22
\U2|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Mux0~0_combout\ = (\x[1]~input_o\ & (((\x[3]~input_o\)))) # (!\x[1]~input_o\ & (\x[2]~input_o\ $ (((\x[0]~input_o\ & !\x[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[1]~input_o\,
	datab => \x[0]~input_o\,
	datac => \x[3]~input_o\,
	datad => \x[2]~input_o\,
	combout => \U2|Mux0~0_combout\);

-- Location: LCCOMB_X20_Y27_N4
\U3|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|Mux6~0_combout\ = (\y[1]~input_o\ & (!\y[3]~input_o\ & ((!\y[2]~input_o\) # (!\y[0]~input_o\)))) # (!\y[1]~input_o\ & ((\y[3]~input_o\ $ (\y[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[0]~input_o\,
	datab => \y[1]~input_o\,
	datac => \y[3]~input_o\,
	datad => \y[2]~input_o\,
	combout => \U3|Mux6~0_combout\);

-- Location: LCCOMB_X20_Y27_N6
\U3|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|Mux5~0_combout\ = (\y[0]~input_o\ & ((\y[1]~input_o\) # (\y[3]~input_o\ $ (!\y[2]~input_o\)))) # (!\y[0]~input_o\ & ((\y[2]~input_o\ & ((\y[3]~input_o\))) # (!\y[2]~input_o\ & (\y[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[0]~input_o\,
	datab => \y[1]~input_o\,
	datac => \y[3]~input_o\,
	datad => \y[2]~input_o\,
	combout => \U3|Mux5~0_combout\);

-- Location: LCCOMB_X20_Y27_N0
\U3|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|Mux4~0_combout\ = (\y[0]~input_o\) # ((\y[1]~input_o\ & (\y[3]~input_o\)) # (!\y[1]~input_o\ & ((\y[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[0]~input_o\,
	datab => \y[1]~input_o\,
	datac => \y[3]~input_o\,
	datad => \y[2]~input_o\,
	combout => \U3|Mux4~0_combout\);

-- Location: LCCOMB_X20_Y27_N2
\U3|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|Mux3~0_combout\ = (\y[1]~input_o\ & ((\y[3]~input_o\) # ((\y[0]~input_o\ & \y[2]~input_o\)))) # (!\y[1]~input_o\ & (\y[2]~input_o\ $ (((\y[0]~input_o\ & !\y[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[0]~input_o\,
	datab => \y[1]~input_o\,
	datac => \y[3]~input_o\,
	datad => \y[2]~input_o\,
	combout => \U3|Mux3~0_combout\);

-- Location: LCCOMB_X20_Y27_N20
\U3|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|Mux2~0_combout\ = (\y[2]~input_o\ & (((\y[3]~input_o\)))) # (!\y[2]~input_o\ & (\y[1]~input_o\ & ((\y[3]~input_o\) # (!\y[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[0]~input_o\,
	datab => \y[1]~input_o\,
	datac => \y[3]~input_o\,
	datad => \y[2]~input_o\,
	combout => \U3|Mux2~0_combout\);

-- Location: LCCOMB_X20_Y27_N22
\U3|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|Mux1~0_combout\ = (\y[3]~input_o\ & (((\y[1]~input_o\) # (\y[2]~input_o\)))) # (!\y[3]~input_o\ & (\y[2]~input_o\ & (\y[0]~input_o\ $ (\y[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[0]~input_o\,
	datab => \y[1]~input_o\,
	datac => \y[3]~input_o\,
	datad => \y[2]~input_o\,
	combout => \U3|Mux1~0_combout\);

-- Location: LCCOMB_X20_Y27_N8
\U3|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|Mux0~0_combout\ = (\y[1]~input_o\ & (((\y[3]~input_o\)))) # (!\y[1]~input_o\ & (\y[2]~input_o\ $ (((\y[0]~input_o\ & !\y[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[0]~input_o\,
	datab => \y[1]~input_o\,
	datac => \y[3]~input_o\,
	datad => \y[2]~input_o\,
	combout => \U3|Mux0~0_combout\);

-- Location: LCCOMB_X19_Y26_N8
\U0|x_minus_y[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|x_minus_y[0]~0_combout\ = (\x[0]~input_o\ & ((GND) # (!\y[0]~input_o\))) # (!\x[0]~input_o\ & (\y[0]~input_o\ $ (GND)))
-- \U0|x_minus_y[0]~1\ = CARRY((\x[0]~input_o\) # (!\y[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[0]~input_o\,
	datab => \y[0]~input_o\,
	datad => VCC,
	combout => \U0|x_minus_y[0]~0_combout\,
	cout => \U0|x_minus_y[0]~1\);

-- Location: LCCOMB_X19_Y26_N10
\U0|x_minus_y[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|x_minus_y[1]~2_combout\ = (\x[1]~input_o\ & ((\y[1]~input_o\ & (!\U0|x_minus_y[0]~1\)) # (!\y[1]~input_o\ & (\U0|x_minus_y[0]~1\ & VCC)))) # (!\x[1]~input_o\ & ((\y[1]~input_o\ & ((\U0|x_minus_y[0]~1\) # (GND))) # (!\y[1]~input_o\ & 
-- (!\U0|x_minus_y[0]~1\))))
-- \U0|x_minus_y[1]~3\ = CARRY((\x[1]~input_o\ & (\y[1]~input_o\ & !\U0|x_minus_y[0]~1\)) # (!\x[1]~input_o\ & ((\y[1]~input_o\) # (!\U0|x_minus_y[0]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \x[1]~input_o\,
	datab => \y[1]~input_o\,
	datad => VCC,
	cin => \U0|x_minus_y[0]~1\,
	combout => \U0|x_minus_y[1]~2_combout\,
	cout => \U0|x_minus_y[1]~3\);

-- Location: LCCOMB_X19_Y26_N12
\U0|x_minus_y[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|x_minus_y[2]~4_combout\ = ((\y[2]~input_o\ $ (\x[2]~input_o\ $ (\U0|x_minus_y[1]~3\)))) # (GND)
-- \U0|x_minus_y[2]~5\ = CARRY((\y[2]~input_o\ & (\x[2]~input_o\ & !\U0|x_minus_y[1]~3\)) # (!\y[2]~input_o\ & ((\x[2]~input_o\) # (!\U0|x_minus_y[1]~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \y[2]~input_o\,
	datab => \x[2]~input_o\,
	datad => VCC,
	cin => \U0|x_minus_y[1]~3\,
	combout => \U0|x_minus_y[2]~4_combout\,
	cout => \U0|x_minus_y[2]~5\);

-- Location: LCCOMB_X19_Y26_N14
\U0|x_minus_y[3]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|x_minus_y[3]~6_combout\ = \x[3]~input_o\ $ (\U0|x_minus_y[2]~5\ $ (!\y[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \x[3]~input_o\,
	datad => \y[3]~input_o\,
	cin => \U0|x_minus_y[2]~5\,
	combout => \U0|x_minus_y[3]~6_combout\);

-- Location: LCCOMB_X19_Y26_N0
\U0|y_minus_x[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|y_minus_x[0]~0_combout\ = (\x[0]~input_o\ & (\y[0]~input_o\ $ (VCC))) # (!\x[0]~input_o\ & ((\y[0]~input_o\) # (GND)))
-- \U0|y_minus_x[0]~1\ = CARRY((\y[0]~input_o\) # (!\x[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[0]~input_o\,
	datab => \y[0]~input_o\,
	datad => VCC,
	combout => \U0|y_minus_x[0]~0_combout\,
	cout => \U0|y_minus_x[0]~1\);

-- Location: LCCOMB_X19_Y26_N2
\U0|y_minus_x[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|y_minus_x[1]~2_combout\ = (\x[1]~input_o\ & ((\y[1]~input_o\ & (!\U0|y_minus_x[0]~1\)) # (!\y[1]~input_o\ & ((\U0|y_minus_x[0]~1\) # (GND))))) # (!\x[1]~input_o\ & ((\y[1]~input_o\ & (\U0|y_minus_x[0]~1\ & VCC)) # (!\y[1]~input_o\ & 
-- (!\U0|y_minus_x[0]~1\))))
-- \U0|y_minus_x[1]~3\ = CARRY((\x[1]~input_o\ & ((!\U0|y_minus_x[0]~1\) # (!\y[1]~input_o\))) # (!\x[1]~input_o\ & (!\y[1]~input_o\ & !\U0|y_minus_x[0]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \x[1]~input_o\,
	datab => \y[1]~input_o\,
	datad => VCC,
	cin => \U0|y_minus_x[0]~1\,
	combout => \U0|y_minus_x[1]~2_combout\,
	cout => \U0|y_minus_x[1]~3\);

-- Location: LCCOMB_X19_Y26_N4
\U0|y_minus_x[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|y_minus_x[2]~4_combout\ = ((\y[2]~input_o\ $ (\x[2]~input_o\ $ (\U0|y_minus_x[1]~3\)))) # (GND)
-- \U0|y_minus_x[2]~5\ = CARRY((\y[2]~input_o\ & ((!\U0|y_minus_x[1]~3\) # (!\x[2]~input_o\))) # (!\y[2]~input_o\ & (!\x[2]~input_o\ & !\U0|y_minus_x[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \y[2]~input_o\,
	datab => \x[2]~input_o\,
	datad => VCC,
	cin => \U0|y_minus_x[1]~3\,
	combout => \U0|y_minus_x[2]~4_combout\,
	cout => \U0|y_minus_x[2]~5\);

-- Location: LCCOMB_X19_Y26_N6
\U0|y_minus_x[3]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|y_minus_x[3]~6_combout\ = \x[3]~input_o\ $ (\U0|y_minus_x[2]~5\ $ (!\y[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \x[3]~input_o\,
	datad => \y[3]~input_o\,
	cin => \U0|y_minus_x[2]~5\,
	combout => \U0|y_minus_x[3]~6_combout\);

-- Location: LCCOMB_X20_Y26_N4
\U0|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|Add0~2_combout\ = (\U0|LessThan0~2_combout\ & ((\U0|y_minus_x[3]~6_combout\))) # (!\U0|LessThan0~2_combout\ & (\U0|x_minus_y[3]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|x_minus_y[3]~6_combout\,
	datac => \U0|y_minus_x[3]~6_combout\,
	datad => \U0|LessThan0~2_combout\,
	combout => \U0|Add0~2_combout\);

-- Location: LCCOMB_X20_Y26_N14
\U0|Add0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|Add0~3_combout\ = (\U0|LessThan0~2_combout\ & ((\U0|y_minus_x[2]~4_combout\))) # (!\U0|LessThan0~2_combout\ & (\U0|x_minus_y[2]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|x_minus_y[2]~4_combout\,
	datac => \U0|y_minus_x[2]~4_combout\,
	datad => \U0|LessThan0~2_combout\,
	combout => \U0|Add0~3_combout\);

-- Location: LCCOMB_X20_Y26_N2
\U0|Add0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|Add0~1_combout\ = (\U0|LessThan0~2_combout\ & (\U0|y_minus_x[1]~2_combout\)) # (!\U0|LessThan0~2_combout\ & ((\U0|x_minus_y[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|y_minus_x[1]~2_combout\,
	datab => \U0|x_minus_y[1]~2_combout\,
	datad => \U0|LessThan0~2_combout\,
	combout => \U0|Add0~1_combout\);

-- Location: LCCOMB_X20_Y26_N6
\U1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = \U0|Add0~1_combout\ $ (VCC)
-- \U1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(\U0|Add0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|Add0~1_combout\,
	datad => VCC,
	combout => \U1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \U1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X20_Y26_N8
\U1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\U0|Add0~3_combout\ & (\U1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!\U0|Add0~3_combout\ & 
-- (!\U1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \U1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\U0|Add0~3_combout\ & !\U1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|Add0~3_combout\,
	datad => VCC,
	cin => \U1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \U1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \U1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X20_Y26_N10
\U1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\U0|Add0~2_combout\ & (\U1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # (!\U0|Add0~2_combout\ & 
-- (!\U1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \U1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((\U0|Add0~2_combout\ & !\U1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|Add0~2_combout\,
	datad => VCC,
	cin => \U1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \U1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \U1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X20_Y26_N12
\U1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\U1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \U1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \U1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X20_Y26_N28
\U1|Mod0|auto_generated|divider|divider|StageOut[15]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Mod0|auto_generated|divider|divider|StageOut[15]~2_combout\ = (\U1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\U0|Add0~2_combout\))) # (!\U1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- (\U1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datac => \U0|Add0~2_combout\,
	datad => \U1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \U1|Mod0|auto_generated|divider|divider|StageOut[15]~2_combout\);

-- Location: LCCOMB_X20_Y26_N24
\U1|Mod0|auto_generated|divider|divider|StageOut[13]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Mod0|auto_generated|divider|divider|StageOut[13]~0_combout\ = (\U1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\U0|Add0~1_combout\))) # (!\U1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- (\U1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datab => \U0|Add0~1_combout\,
	datad => \U1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \U1|Mod0|auto_generated|divider|divider|StageOut[13]~0_combout\);

-- Location: LCCOMB_X20_Y26_N26
\U1|Mod0|auto_generated|divider|divider|StageOut[14]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\ = (\U1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\U0|Add0~3_combout\)) # (!\U1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- ((\U1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|Add0~3_combout\,
	datac => \U1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \U1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \U1|Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\);

-- Location: LCCOMB_X20_Y26_N0
\U0|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|Add0~0_combout\ = (\U0|LessThan0~2_combout\ & ((\U0|y_minus_x[0]~0_combout\))) # (!\U0|LessThan0~2_combout\ & (\U0|x_minus_y[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|x_minus_y[0]~0_combout\,
	datac => \U0|y_minus_x[0]~0_combout\,
	datad => \U0|LessThan0~2_combout\,
	combout => \U0|Add0~0_combout\);

-- Location: LCCOMB_X31_Y28_N8
\U4|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|Mux6~0_combout\ = (\U1|Mod0|auto_generated|divider|divider|StageOut[13]~0_combout\ & (!\U1|Mod0|auto_generated|divider|divider|StageOut[15]~2_combout\ & ((!\U0|Add0~0_combout\) # (!\U1|Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\)))) # 
-- (!\U1|Mod0|auto_generated|divider|divider|StageOut[13]~0_combout\ & (\U1|Mod0|auto_generated|divider|divider|StageOut[15]~2_combout\ $ ((\U1|Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011001010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mod0|auto_generated|divider|divider|StageOut[15]~2_combout\,
	datab => \U1|Mod0|auto_generated|divider|divider|StageOut[13]~0_combout\,
	datac => \U1|Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\,
	datad => \U0|Add0~0_combout\,
	combout => \U4|Mux6~0_combout\);

-- Location: LCCOMB_X31_Y28_N2
\U4|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|Mux5~0_combout\ = (\U1|Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\ & ((\U1|Mod0|auto_generated|divider|divider|StageOut[15]~2_combout\) # ((\U1|Mod0|auto_generated|divider|divider|StageOut[13]~0_combout\ & \U0|Add0~0_combout\)))) # 
-- (!\U1|Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\ & ((\U1|Mod0|auto_generated|divider|divider|StageOut[13]~0_combout\) # ((!\U1|Mod0|auto_generated|divider|divider|StageOut[15]~2_combout\ & \U0|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mod0|auto_generated|divider|divider|StageOut[15]~2_combout\,
	datab => \U1|Mod0|auto_generated|divider|divider|StageOut[13]~0_combout\,
	datac => \U1|Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\,
	datad => \U0|Add0~0_combout\,
	combout => \U4|Mux5~0_combout\);

-- Location: LCCOMB_X31_Y28_N4
\U4|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|Mux4~0_combout\ = (\U0|Add0~0_combout\) # ((\U1|Mod0|auto_generated|divider|divider|StageOut[13]~0_combout\ & (\U1|Mod0|auto_generated|divider|divider|StageOut[15]~2_combout\)) # (!\U1|Mod0|auto_generated|divider|divider|StageOut[13]~0_combout\ & 
-- ((\U1|Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mod0|auto_generated|divider|divider|StageOut[15]~2_combout\,
	datab => \U1|Mod0|auto_generated|divider|divider|StageOut[13]~0_combout\,
	datac => \U1|Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\,
	datad => \U0|Add0~0_combout\,
	combout => \U4|Mux4~0_combout\);

-- Location: LCCOMB_X31_Y28_N6
\U4|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|Mux3~0_combout\ = (\U1|Mod0|auto_generated|divider|divider|StageOut[13]~0_combout\ & ((\U1|Mod0|auto_generated|divider|divider|StageOut[15]~2_combout\) # ((\U1|Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\ & \U0|Add0~0_combout\)))) # 
-- (!\U1|Mod0|auto_generated|divider|divider|StageOut[13]~0_combout\ & (\U1|Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\ $ (((!\U1|Mod0|auto_generated|divider|divider|StageOut[15]~2_combout\ & \U0|Add0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mod0|auto_generated|divider|divider|StageOut[15]~2_combout\,
	datab => \U1|Mod0|auto_generated|divider|divider|StageOut[13]~0_combout\,
	datac => \U1|Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\,
	datad => \U0|Add0~0_combout\,
	combout => \U4|Mux3~0_combout\);

-- Location: LCCOMB_X31_Y28_N24
\U4|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|Mux2~0_combout\ = (\U1|Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\ & (\U1|Mod0|auto_generated|divider|divider|StageOut[15]~2_combout\)) # (!\U1|Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\ & 
-- (\U1|Mod0|auto_generated|divider|divider|StageOut[13]~0_combout\ & ((\U1|Mod0|auto_generated|divider|divider|StageOut[15]~2_combout\) # (!\U0|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mod0|auto_generated|divider|divider|StageOut[15]~2_combout\,
	datab => \U1|Mod0|auto_generated|divider|divider|StageOut[13]~0_combout\,
	datac => \U1|Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\,
	datad => \U0|Add0~0_combout\,
	combout => \U4|Mux2~0_combout\);

-- Location: LCCOMB_X31_Y28_N10
\U4|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|Mux1~0_combout\ = (\U1|Mod0|auto_generated|divider|divider|StageOut[15]~2_combout\ & ((\U1|Mod0|auto_generated|divider|divider|StageOut[13]~0_combout\) # ((\U1|Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\)))) # 
-- (!\U1|Mod0|auto_generated|divider|divider|StageOut[15]~2_combout\ & (\U1|Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\ & (\U1|Mod0|auto_generated|divider|divider|StageOut[13]~0_combout\ $ (\U0|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mod0|auto_generated|divider|divider|StageOut[15]~2_combout\,
	datab => \U1|Mod0|auto_generated|divider|divider|StageOut[13]~0_combout\,
	datac => \U1|Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\,
	datad => \U0|Add0~0_combout\,
	combout => \U4|Mux1~0_combout\);

-- Location: LCCOMB_X20_Y26_N30
\U4|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|Mux0~0_combout\ = (\U1|Mod0|auto_generated|divider|divider|StageOut[13]~0_combout\ & (\U1|Mod0|auto_generated|divider|divider|StageOut[15]~2_combout\)) # (!\U1|Mod0|auto_generated|divider|divider|StageOut[13]~0_combout\ & 
-- (\U1|Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\ $ (((!\U1|Mod0|auto_generated|divider|divider|StageOut[15]~2_combout\ & \U0|Add0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mod0|auto_generated|divider|divider|StageOut[15]~2_combout\,
	datab => \U1|Mod0|auto_generated|divider|divider|StageOut[13]~0_combout\,
	datac => \U1|Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\,
	datad => \U0|Add0~0_combout\,
	combout => \U4|Mux0~0_combout\);

-- Location: LCCOMB_X20_Y26_N16
\U1|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1_cout\ = CARRY(\U0|Add0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|Add0~1_combout\,
	datad => VCC,
	cout => \U1|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1_cout\);

-- Location: LCCOMB_X20_Y26_N18
\U1|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3_cout\ = CARRY((!\U0|Add0~3_combout\ & !\U1|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|Add0~3_combout\,
	datad => VCC,
	cin => \U1|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1_cout\,
	cout => \U1|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3_cout\);

-- Location: LCCOMB_X20_Y26_N20
\U1|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5_cout\ = CARRY((\U0|Add0~2_combout\ & !\U1|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|Add0~2_combout\,
	datad => VCC,
	cin => \U1|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3_cout\,
	cout => \U1|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5_cout\);

-- Location: LCCOMB_X20_Y26_N22
\U1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\U1|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \U1|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5_cout\,
	combout => \U1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

ww_s <= \s~output_o\;

ww_display0(0) <= \display0[0]~output_o\;

ww_display0(1) <= \display0[1]~output_o\;

ww_display0(2) <= \display0[2]~output_o\;

ww_display0(3) <= \display0[3]~output_o\;

ww_display0(4) <= \display0[4]~output_o\;

ww_display0(5) <= \display0[5]~output_o\;

ww_display0(6) <= \display0[6]~output_o\;

ww_display1(0) <= \display1[0]~output_o\;

ww_display1(1) <= \display1[1]~output_o\;

ww_display1(2) <= \display1[2]~output_o\;

ww_display1(3) <= \display1[3]~output_o\;

ww_display1(4) <= \display1[4]~output_o\;

ww_display1(5) <= \display1[5]~output_o\;

ww_display1(6) <= \display1[6]~output_o\;

ww_display2(0) <= \display2[0]~output_o\;

ww_display2(1) <= \display2[1]~output_o\;

ww_display2(2) <= \display2[2]~output_o\;

ww_display2(3) <= \display2[3]~output_o\;

ww_display2(4) <= \display2[4]~output_o\;

ww_display2(5) <= \display2[5]~output_o\;

ww_display2(6) <= \display2[6]~output_o\;

ww_display3(0) <= \display3[0]~output_o\;

ww_display3(1) <= \display3[1]~output_o\;

ww_display3(2) <= \display3[2]~output_o\;

ww_display3(3) <= \display3[3]~output_o\;

ww_display3(4) <= \display3[4]~output_o\;

ww_display3(5) <= \display3[5]~output_o\;

ww_display3(6) <= \display3[6]~output_o\;
END structure;


