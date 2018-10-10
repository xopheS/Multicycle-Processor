-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.0.0 Build 614 04/24/2018 SJ Lite Edition"

-- DATE "09/26/2018 09:50:40"

-- 
-- Device: Altera EP4CE22F17C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


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


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ALU IS
    PORT (
	s : OUT std_logic_vector(31 DOWNTO 0);
	op : IN std_logic_vector(5 DOWNTO 0);
	a : IN std_logic_vector(31 DOWNTO 0);
	b : IN std_logic_vector(31 DOWNTO 0)
	);
END ALU;

-- Design Ports Information
-- s[31]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[30]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[29]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[28]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[27]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[26]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[25]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[24]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[23]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[22]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[21]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[20]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[19]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[18]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[17]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[16]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[15]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[14]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[13]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[12]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[11]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[10]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[9]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[8]	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[7]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[6]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[5]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[4]	=>  Location: PIN_T6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[3]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[2]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[1]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[0]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op[5]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op[4]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op[3]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op[2]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op[1]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op[0]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[31]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[30]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[29]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[28]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[27]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[26]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[25]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[24]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[23]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[22]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[21]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[20]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[19]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[18]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[17]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[16]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[15]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[14]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[13]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[12]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[11]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[10]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[9]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[8]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[7]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[6]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[5]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[4]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[3]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[2]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[1]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[0]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[31]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[30]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[29]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[28]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[27]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[26]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[25]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[24]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[23]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[22]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[21]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[20]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[19]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[18]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[17]	=>  Location: PIN_M10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[16]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[15]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[14]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[13]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[12]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[11]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[10]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[9]	=>  Location: PIN_M15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[8]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[7]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[6]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[5]	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[4]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[3]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[2]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[1]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[0]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ALU IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_s : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_op : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_a : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_b : std_logic_vector(31 DOWNTO 0);
SIGNAL \op[5]~input_o\ : std_logic;
SIGNAL \op[4]~input_o\ : std_logic;
SIGNAL \op[3]~input_o\ : std_logic;
SIGNAL \op[2]~input_o\ : std_logic;
SIGNAL \op[1]~input_o\ : std_logic;
SIGNAL \op[0]~input_o\ : std_logic;
SIGNAL \a[31]~input_o\ : std_logic;
SIGNAL \a[30]~input_o\ : std_logic;
SIGNAL \a[29]~input_o\ : std_logic;
SIGNAL \a[28]~input_o\ : std_logic;
SIGNAL \a[27]~input_o\ : std_logic;
SIGNAL \a[26]~input_o\ : std_logic;
SIGNAL \a[25]~input_o\ : std_logic;
SIGNAL \a[24]~input_o\ : std_logic;
SIGNAL \a[23]~input_o\ : std_logic;
SIGNAL \a[22]~input_o\ : std_logic;
SIGNAL \a[21]~input_o\ : std_logic;
SIGNAL \a[20]~input_o\ : std_logic;
SIGNAL \a[19]~input_o\ : std_logic;
SIGNAL \a[18]~input_o\ : std_logic;
SIGNAL \a[17]~input_o\ : std_logic;
SIGNAL \a[16]~input_o\ : std_logic;
SIGNAL \a[15]~input_o\ : std_logic;
SIGNAL \a[14]~input_o\ : std_logic;
SIGNAL \a[13]~input_o\ : std_logic;
SIGNAL \a[12]~input_o\ : std_logic;
SIGNAL \a[11]~input_o\ : std_logic;
SIGNAL \a[10]~input_o\ : std_logic;
SIGNAL \a[9]~input_o\ : std_logic;
SIGNAL \a[8]~input_o\ : std_logic;
SIGNAL \a[7]~input_o\ : std_logic;
SIGNAL \a[6]~input_o\ : std_logic;
SIGNAL \a[5]~input_o\ : std_logic;
SIGNAL \a[4]~input_o\ : std_logic;
SIGNAL \a[3]~input_o\ : std_logic;
SIGNAL \a[2]~input_o\ : std_logic;
SIGNAL \a[1]~input_o\ : std_logic;
SIGNAL \a[0]~input_o\ : std_logic;
SIGNAL \b[31]~input_o\ : std_logic;
SIGNAL \b[30]~input_o\ : std_logic;
SIGNAL \b[29]~input_o\ : std_logic;
SIGNAL \b[28]~input_o\ : std_logic;
SIGNAL \b[27]~input_o\ : std_logic;
SIGNAL \b[26]~input_o\ : std_logic;
SIGNAL \b[25]~input_o\ : std_logic;
SIGNAL \b[24]~input_o\ : std_logic;
SIGNAL \b[23]~input_o\ : std_logic;
SIGNAL \b[22]~input_o\ : std_logic;
SIGNAL \b[21]~input_o\ : std_logic;
SIGNAL \b[20]~input_o\ : std_logic;
SIGNAL \b[19]~input_o\ : std_logic;
SIGNAL \b[18]~input_o\ : std_logic;
SIGNAL \b[17]~input_o\ : std_logic;
SIGNAL \b[16]~input_o\ : std_logic;
SIGNAL \b[15]~input_o\ : std_logic;
SIGNAL \b[14]~input_o\ : std_logic;
SIGNAL \b[13]~input_o\ : std_logic;
SIGNAL \b[12]~input_o\ : std_logic;
SIGNAL \b[11]~input_o\ : std_logic;
SIGNAL \b[10]~input_o\ : std_logic;
SIGNAL \b[9]~input_o\ : std_logic;
SIGNAL \b[8]~input_o\ : std_logic;
SIGNAL \b[7]~input_o\ : std_logic;
SIGNAL \b[6]~input_o\ : std_logic;
SIGNAL \b[5]~input_o\ : std_logic;
SIGNAL \b[4]~input_o\ : std_logic;
SIGNAL \b[3]~input_o\ : std_logic;
SIGNAL \b[2]~input_o\ : std_logic;
SIGNAL \b[1]~input_o\ : std_logic;
SIGNAL \b[0]~input_o\ : std_logic;
SIGNAL \s[31]~output_o\ : std_logic;
SIGNAL \s[30]~output_o\ : std_logic;
SIGNAL \s[29]~output_o\ : std_logic;
SIGNAL \s[28]~output_o\ : std_logic;
SIGNAL \s[27]~output_o\ : std_logic;
SIGNAL \s[26]~output_o\ : std_logic;
SIGNAL \s[25]~output_o\ : std_logic;
SIGNAL \s[24]~output_o\ : std_logic;
SIGNAL \s[23]~output_o\ : std_logic;
SIGNAL \s[22]~output_o\ : std_logic;
SIGNAL \s[21]~output_o\ : std_logic;
SIGNAL \s[20]~output_o\ : std_logic;
SIGNAL \s[19]~output_o\ : std_logic;
SIGNAL \s[18]~output_o\ : std_logic;
SIGNAL \s[17]~output_o\ : std_logic;
SIGNAL \s[16]~output_o\ : std_logic;
SIGNAL \s[15]~output_o\ : std_logic;
SIGNAL \s[14]~output_o\ : std_logic;
SIGNAL \s[13]~output_o\ : std_logic;
SIGNAL \s[12]~output_o\ : std_logic;
SIGNAL \s[11]~output_o\ : std_logic;
SIGNAL \s[10]~output_o\ : std_logic;
SIGNAL \s[9]~output_o\ : std_logic;
SIGNAL \s[8]~output_o\ : std_logic;
SIGNAL \s[7]~output_o\ : std_logic;
SIGNAL \s[6]~output_o\ : std_logic;
SIGNAL \s[5]~output_o\ : std_logic;
SIGNAL \s[4]~output_o\ : std_logic;
SIGNAL \s[3]~output_o\ : std_logic;
SIGNAL \s[2]~output_o\ : std_logic;
SIGNAL \s[1]~output_o\ : std_logic;
SIGNAL \s[0]~output_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

s <= ww_s;
ww_op <= op;
ww_a <= a;
ww_b <= b;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X14_Y0_N16
\s[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \s[31]~output_o\);

-- Location: IOOBUF_X49_Y0_N2
\s[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \s[30]~output_o\);

-- Location: IOOBUF_X36_Y0_N9
\s[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \s[29]~output_o\);

-- Location: IOOBUF_X11_Y0_N23
\s[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \s[28]~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\s[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \s[27]~output_o\);

-- Location: IOOBUF_X16_Y34_N16
\s[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \s[26]~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\s[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \s[25]~output_o\);

-- Location: IOOBUF_X7_Y34_N9
\s[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \s[24]~output_o\);

-- Location: IOOBUF_X49_Y0_N9
\s[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \s[23]~output_o\);

-- Location: IOOBUF_X0_Y12_N9
\s[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \s[22]~output_o\);

-- Location: IOOBUF_X0_Y25_N9
\s[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \s[21]~output_o\);

-- Location: IOOBUF_X36_Y0_N23
\s[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \s[20]~output_o\);

-- Location: IOOBUF_X0_Y12_N2
\s[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \s[19]~output_o\);

-- Location: IOOBUF_X20_Y34_N23
\s[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \s[18]~output_o\);

-- Location: IOOBUF_X45_Y0_N16
\s[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \s[17]~output_o\);

-- Location: IOOBUF_X1_Y0_N2
\s[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \s[16]~output_o\);

-- Location: IOOBUF_X7_Y0_N9
\s[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \s[15]~output_o\);

-- Location: IOOBUF_X38_Y34_N2
\s[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \s[14]~output_o\);

-- Location: IOOBUF_X9_Y34_N9
\s[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \s[13]~output_o\);

-- Location: IOOBUF_X25_Y0_N16
\s[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \s[12]~output_o\);

-- Location: IOOBUF_X20_Y34_N16
\s[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \s[11]~output_o\);

-- Location: IOOBUF_X16_Y0_N16
\s[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \s[10]~output_o\);

-- Location: IOOBUF_X53_Y9_N16
\s[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \s[9]~output_o\);

-- Location: IOOBUF_X53_Y11_N9
\s[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \s[8]~output_o\);

-- Location: IOOBUF_X18_Y0_N9
\s[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \s[7]~output_o\);

-- Location: IOOBUF_X40_Y0_N23
\s[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \s[6]~output_o\);

-- Location: IOOBUF_X34_Y0_N23
\s[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \s[5]~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\s[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \s[4]~output_o\);

-- Location: IOOBUF_X9_Y34_N23
\s[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \s[3]~output_o\);

-- Location: IOOBUF_X43_Y34_N16
\s[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \s[2]~output_o\);

-- Location: IOOBUF_X31_Y34_N2
\s[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \s[1]~output_o\);

-- Location: IOOBUF_X45_Y34_N9
\s[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \s[0]~output_o\);

-- Location: IOIBUF_X45_Y0_N22
\op[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op(5),
	o => \op[5]~input_o\);

-- Location: IOIBUF_X1_Y0_N8
\op[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op(4),
	o => \op[4]~input_o\);

-- Location: IOIBUF_X53_Y6_N15
\op[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op(3),
	o => \op[3]~input_o\);

-- Location: IOIBUF_X1_Y0_N15
\op[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op(2),
	o => \op[2]~input_o\);

-- Location: IOIBUF_X45_Y34_N1
\op[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op(1),
	o => \op[1]~input_o\);

-- Location: IOIBUF_X53_Y15_N8
\op[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op(0),
	o => \op[0]~input_o\);

-- Location: IOIBUF_X0_Y8_N22
\a[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(31),
	o => \a[31]~input_o\);

-- Location: IOIBUF_X20_Y0_N1
\a[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(30),
	o => \a[30]~input_o\);

-- Location: IOIBUF_X11_Y0_N15
\a[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(29),
	o => \a[29]~input_o\);

-- Location: IOIBUF_X16_Y34_N8
\a[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(28),
	o => \a[28]~input_o\);

-- Location: IOIBUF_X0_Y15_N1
\a[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(27),
	o => \a[27]~input_o\);

-- Location: IOIBUF_X5_Y0_N1
\a[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(26),
	o => \a[26]~input_o\);

-- Location: IOIBUF_X53_Y21_N22
\a[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(25),
	o => \a[25]~input_o\);

-- Location: IOIBUF_X0_Y15_N8
\a[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(24),
	o => \a[24]~input_o\);

-- Location: IOIBUF_X31_Y34_N8
\a[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(23),
	o => \a[23]~input_o\);

-- Location: IOIBUF_X51_Y34_N1
\a[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(22),
	o => \a[22]~input_o\);

-- Location: IOIBUF_X14_Y0_N22
\a[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(21),
	o => \a[21]~input_o\);

-- Location: IOIBUF_X38_Y34_N15
\a[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(20),
	o => \a[20]~input_o\);

-- Location: IOIBUF_X16_Y34_N1
\a[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(19),
	o => \a[19]~input_o\);

-- Location: IOIBUF_X29_Y0_N1
\a[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(18),
	o => \a[18]~input_o\);

-- Location: IOIBUF_X43_Y34_N22
\a[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(17),
	o => \a[17]~input_o\);

-- Location: IOIBUF_X25_Y34_N1
\a[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(16),
	o => \a[16]~input_o\);

-- Location: IOIBUF_X25_Y34_N8
\a[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(15),
	o => \a[15]~input_o\);

-- Location: IOIBUF_X53_Y25_N1
\a[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(14),
	o => \a[14]~input_o\);

-- Location: IOIBUF_X27_Y0_N8
\a[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(13),
	o => \a[13]~input_o\);

-- Location: IOIBUF_X27_Y0_N1
\a[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(12),
	o => \a[12]~input_o\);

-- Location: IOIBUF_X18_Y34_N22
\a[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(11),
	o => \a[11]~input_o\);

-- Location: IOIBUF_X34_Y34_N1
\a[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(10),
	o => \a[10]~input_o\);

-- Location: IOIBUF_X53_Y30_N1
\a[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(9),
	o => \a[9]~input_o\);

-- Location: IOIBUF_X1_Y34_N8
\a[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(8),
	o => \a[8]~input_o\);

-- Location: IOIBUF_X47_Y34_N22
\a[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(7),
	o => \a[7]~input_o\);

-- Location: IOIBUF_X36_Y0_N15
\a[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(6),
	o => \a[6]~input_o\);

-- Location: IOIBUF_X53_Y22_N8
\a[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(5),
	o => \a[5]~input_o\);

-- Location: IOIBUF_X7_Y34_N15
\a[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(4),
	o => \a[4]~input_o\);

-- Location: IOIBUF_X29_Y34_N15
\a[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(3),
	o => \a[3]~input_o\);

-- Location: IOIBUF_X0_Y11_N8
\a[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(2),
	o => \a[2]~input_o\);

-- Location: IOIBUF_X51_Y34_N15
\a[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(1),
	o => \a[1]~input_o\);

-- Location: IOIBUF_X20_Y0_N8
\a[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(0),
	o => \a[0]~input_o\);

-- Location: IOIBUF_X0_Y23_N1
\b[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(31),
	o => \b[31]~input_o\);

-- Location: IOIBUF_X51_Y34_N8
\b[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(30),
	o => \b[30]~input_o\);

-- Location: IOIBUF_X53_Y20_N15
\b[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(29),
	o => \b[29]~input_o\);

-- Location: IOIBUF_X3_Y34_N1
\b[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(28),
	o => \b[28]~input_o\);

-- Location: IOIBUF_X38_Y0_N8
\b[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(27),
	o => \b[27]~input_o\);

-- Location: IOIBUF_X51_Y34_N22
\b[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(26),
	o => \b[26]~input_o\);

-- Location: IOIBUF_X49_Y34_N8
\b[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(25),
	o => \b[25]~input_o\);

-- Location: IOIBUF_X53_Y20_N22
\b[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(24),
	o => \b[24]~input_o\);

-- Location: IOIBUF_X34_Y0_N15
\b[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(23),
	o => \b[23]~input_o\);

-- Location: IOIBUF_X0_Y27_N1
\b[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(22),
	o => \b[22]~input_o\);

-- Location: IOIBUF_X53_Y7_N8
\b[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(21),
	o => \b[21]~input_o\);

-- Location: IOIBUF_X53_Y12_N1
\b[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(20),
	o => \b[20]~input_o\);

-- Location: IOIBUF_X16_Y0_N22
\b[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(19),
	o => \b[19]~input_o\);

-- Location: IOIBUF_X40_Y34_N8
\b[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(18),
	o => \b[18]~input_o\);

-- Location: IOIBUF_X43_Y0_N22
\b[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(17),
	o => \b[17]~input_o\);

-- Location: IOIBUF_X1_Y34_N1
\b[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(16),
	o => \b[16]~input_o\);

-- Location: IOIBUF_X7_Y34_N1
\b[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(15),
	o => \b[15]~input_o\);

-- Location: IOIBUF_X53_Y13_N8
\b[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(14),
	o => \b[14]~input_o\);

-- Location: IOIBUF_X34_Y34_N8
\b[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(13),
	o => \b[13]~input_o\);

-- Location: IOIBUF_X23_Y34_N22
\b[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(12),
	o => \b[12]~input_o\);

-- Location: IOIBUF_X49_Y34_N1
\b[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(11),
	o => \b[11]~input_o\);

-- Location: IOIBUF_X53_Y17_N22
\b[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(10),
	o => \b[10]~input_o\);

-- Location: IOIBUF_X53_Y17_N15
\b[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(9),
	o => \b[9]~input_o\);

-- Location: IOIBUF_X0_Y4_N22
\b[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(8),
	o => \b[8]~input_o\);

-- Location: IOIBUF_X53_Y17_N8
\b[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(7),
	o => \b[7]~input_o\);

-- Location: IOIBUF_X53_Y17_N1
\b[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(6),
	o => \b[6]~input_o\);

-- Location: IOIBUF_X5_Y0_N8
\b[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(5),
	o => \b[5]~input_o\);

-- Location: IOIBUF_X53_Y9_N22
\b[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(4),
	o => \b[4]~input_o\);

-- Location: IOIBUF_X34_Y34_N15
\b[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(3),
	o => \b[3]~input_o\);

-- Location: IOIBUF_X34_Y0_N1
\b[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(2),
	o => \b[2]~input_o\);

-- Location: IOIBUF_X40_Y0_N15
\b[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(1),
	o => \b[1]~input_o\);

-- Location: IOIBUF_X0_Y23_N15
\b[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(0),
	o => \b[0]~input_o\);

ww_s(31) <= \s[31]~output_o\;

ww_s(30) <= \s[30]~output_o\;

ww_s(29) <= \s[29]~output_o\;

ww_s(28) <= \s[28]~output_o\;

ww_s(27) <= \s[27]~output_o\;

ww_s(26) <= \s[26]~output_o\;

ww_s(25) <= \s[25]~output_o\;

ww_s(24) <= \s[24]~output_o\;

ww_s(23) <= \s[23]~output_o\;

ww_s(22) <= \s[22]~output_o\;

ww_s(21) <= \s[21]~output_o\;

ww_s(20) <= \s[20]~output_o\;

ww_s(19) <= \s[19]~output_o\;

ww_s(18) <= \s[18]~output_o\;

ww_s(17) <= \s[17]~output_o\;

ww_s(16) <= \s[16]~output_o\;

ww_s(15) <= \s[15]~output_o\;

ww_s(14) <= \s[14]~output_o\;

ww_s(13) <= \s[13]~output_o\;

ww_s(12) <= \s[12]~output_o\;

ww_s(11) <= \s[11]~output_o\;

ww_s(10) <= \s[10]~output_o\;

ww_s(9) <= \s[9]~output_o\;

ww_s(8) <= \s[8]~output_o\;

ww_s(7) <= \s[7]~output_o\;

ww_s(6) <= \s[6]~output_o\;

ww_s(5) <= \s[5]~output_o\;

ww_s(4) <= \s[4]~output_o\;

ww_s(3) <= \s[3]~output_o\;

ww_s(2) <= \s[2]~output_o\;

ww_s(1) <= \s[1]~output_o\;

ww_s(0) <= \s[0]~output_o\;
END structure;


