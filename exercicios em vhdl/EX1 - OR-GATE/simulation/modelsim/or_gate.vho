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
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "03/18/2020 00:15:42"

-- 
-- Device: Altera EP3C5E144C7 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	or_gate IS
    PORT (
	g_portA : IN std_logic;
	g_portB : IN std_logic;
	g_portC : IN std_logic;
	g_portD : OUT std_logic
	);
END or_gate;

-- Design Ports Information
-- g_portD	=>  Location: PIN_30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- g_portC	=>  Location: PIN_24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- g_portB	=>  Location: PIN_25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- g_portA	=>  Location: PIN_28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF or_gate IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_g_portA : std_logic;
SIGNAL ww_g_portB : std_logic;
SIGNAL ww_g_portC : std_logic;
SIGNAL ww_g_portD : std_logic;
SIGNAL \g_portD~output_o\ : std_logic;
SIGNAL \g_portA~input_o\ : std_logic;
SIGNAL \g_portC~input_o\ : std_logic;
SIGNAL \g_portB~input_o\ : std_logic;
SIGNAL \g_portD~0_combout\ : std_logic;
SIGNAL \ALT_INV_g_portD~0_combout\ : std_logic;

BEGIN

ww_g_portA <= g_portA;
ww_g_portB <= g_portB;
ww_g_portC <= g_portC;
g_portD <= ww_g_portD;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_g_portD~0_combout\ <= NOT \g_portD~0_combout\;

-- Location: IOOBUF_X0_Y8_N16
\g_portD~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_g_portD~0_combout\,
	devoe => ww_devoe,
	o => \g_portD~output_o\);

-- Location: IOIBUF_X0_Y9_N8
\g_portA~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_g_portA,
	o => \g_portA~input_o\);

-- Location: IOIBUF_X0_Y11_N15
\g_portC~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_g_portC,
	o => \g_portC~input_o\);

-- Location: IOIBUF_X0_Y11_N22
\g_portB~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_g_portB,
	o => \g_portB~input_o\);

-- Location: LCCOMB_X1_Y11_N16
\g_portD~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \g_portD~0_combout\ = (\g_portA~input_o\ & (\g_portC~input_o\)) # (!\g_portA~input_o\ & ((\g_portB~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g_portA~input_o\,
	datab => \g_portC~input_o\,
	datad => \g_portB~input_o\,
	combout => \g_portD~0_combout\);

ww_g_portD <= \g_portD~output_o\;
END structure;


