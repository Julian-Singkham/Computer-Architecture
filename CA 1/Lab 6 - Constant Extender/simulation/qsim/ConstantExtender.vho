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

-- DATE "04/11/2019 12:58:32"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ConstantExtender IS
    PORT (
	imm : IN std_logic_vector(23 DOWNTO 0);
	exts : IN std_logic_vector(1 DOWNTO 0);
	imm32 : OUT std_logic_vector(31 DOWNTO 0)
	);
END ConstantExtender;

ARCHITECTURE structure OF ConstantExtender IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_imm : std_logic_vector(23 DOWNTO 0);
SIGNAL ww_exts : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_imm32 : std_logic_vector(31 DOWNTO 0);
SIGNAL \imm32[0]~output_o\ : std_logic;
SIGNAL \imm32[1]~output_o\ : std_logic;
SIGNAL \imm32[2]~output_o\ : std_logic;
SIGNAL \imm32[3]~output_o\ : std_logic;
SIGNAL \imm32[4]~output_o\ : std_logic;
SIGNAL \imm32[5]~output_o\ : std_logic;
SIGNAL \imm32[6]~output_o\ : std_logic;
SIGNAL \imm32[7]~output_o\ : std_logic;
SIGNAL \imm32[8]~output_o\ : std_logic;
SIGNAL \imm32[9]~output_o\ : std_logic;
SIGNAL \imm32[10]~output_o\ : std_logic;
SIGNAL \imm32[11]~output_o\ : std_logic;
SIGNAL \imm32[12]~output_o\ : std_logic;
SIGNAL \imm32[13]~output_o\ : std_logic;
SIGNAL \imm32[14]~output_o\ : std_logic;
SIGNAL \imm32[15]~output_o\ : std_logic;
SIGNAL \imm32[16]~output_o\ : std_logic;
SIGNAL \imm32[17]~output_o\ : std_logic;
SIGNAL \imm32[18]~output_o\ : std_logic;
SIGNAL \imm32[19]~output_o\ : std_logic;
SIGNAL \imm32[20]~output_o\ : std_logic;
SIGNAL \imm32[21]~output_o\ : std_logic;
SIGNAL \imm32[22]~output_o\ : std_logic;
SIGNAL \imm32[23]~output_o\ : std_logic;
SIGNAL \imm32[24]~output_o\ : std_logic;
SIGNAL \imm32[25]~output_o\ : std_logic;
SIGNAL \imm32[26]~output_o\ : std_logic;
SIGNAL \imm32[27]~output_o\ : std_logic;
SIGNAL \imm32[28]~output_o\ : std_logic;
SIGNAL \imm32[29]~output_o\ : std_logic;
SIGNAL \imm32[30]~output_o\ : std_logic;
SIGNAL \imm32[31]~output_o\ : std_logic;
SIGNAL \imm[0]~input_o\ : std_logic;
SIGNAL \exts[1]~input_o\ : std_logic;
SIGNAL \imm32~0_combout\ : std_logic;
SIGNAL \imm[1]~input_o\ : std_logic;
SIGNAL \imm32~1_combout\ : std_logic;
SIGNAL \imm[2]~input_o\ : std_logic;
SIGNAL \imm32~2_combout\ : std_logic;
SIGNAL \imm[3]~input_o\ : std_logic;
SIGNAL \imm32~3_combout\ : std_logic;
SIGNAL \imm[4]~input_o\ : std_logic;
SIGNAL \imm32~4_combout\ : std_logic;
SIGNAL \imm[5]~input_o\ : std_logic;
SIGNAL \imm32~5_combout\ : std_logic;
SIGNAL \imm[6]~input_o\ : std_logic;
SIGNAL \imm32~6_combout\ : std_logic;
SIGNAL \imm[7]~input_o\ : std_logic;
SIGNAL \imm32~7_combout\ : std_logic;
SIGNAL \imm[8]~input_o\ : std_logic;
SIGNAL \exts[0]~input_o\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \imm[9]~input_o\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \imm[10]~input_o\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \imm[11]~input_o\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \imm32~8_combout\ : std_logic;
SIGNAL \imm32~9_combout\ : std_logic;
SIGNAL \imm[12]~input_o\ : std_logic;
SIGNAL \imm32~10_combout\ : std_logic;
SIGNAL \imm[13]~input_o\ : std_logic;
SIGNAL \imm32~11_combout\ : std_logic;
SIGNAL \imm[14]~input_o\ : std_logic;
SIGNAL \imm32~12_combout\ : std_logic;
SIGNAL \imm[15]~input_o\ : std_logic;
SIGNAL \imm32~13_combout\ : std_logic;
SIGNAL \imm[16]~input_o\ : std_logic;
SIGNAL \imm32~14_combout\ : std_logic;
SIGNAL \imm[17]~input_o\ : std_logic;
SIGNAL \imm32~15_combout\ : std_logic;
SIGNAL \imm[18]~input_o\ : std_logic;
SIGNAL \imm32~16_combout\ : std_logic;
SIGNAL \imm[19]~input_o\ : std_logic;
SIGNAL \imm32~17_combout\ : std_logic;
SIGNAL \imm[20]~input_o\ : std_logic;
SIGNAL \imm32~18_combout\ : std_logic;
SIGNAL \imm[21]~input_o\ : std_logic;
SIGNAL \imm32~19_combout\ : std_logic;
SIGNAL \imm[22]~input_o\ : std_logic;
SIGNAL \imm32~20_combout\ : std_logic;
SIGNAL \imm[23]~input_o\ : std_logic;
SIGNAL \imm32~21_combout\ : std_logic;
SIGNAL \ALT_INV_imm[23]~input_o\ : std_logic;
SIGNAL \ALT_INV_imm[22]~input_o\ : std_logic;
SIGNAL \ALT_INV_imm[21]~input_o\ : std_logic;
SIGNAL \ALT_INV_imm[20]~input_o\ : std_logic;
SIGNAL \ALT_INV_imm[19]~input_o\ : std_logic;
SIGNAL \ALT_INV_imm[18]~input_o\ : std_logic;
SIGNAL \ALT_INV_imm[17]~input_o\ : std_logic;
SIGNAL \ALT_INV_imm[16]~input_o\ : std_logic;
SIGNAL \ALT_INV_imm[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_imm[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_imm[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_imm[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_imm[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_imm[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_imm[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_exts[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_imm[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_imm[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_imm[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_imm[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_imm[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_imm[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_imm[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_imm[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_exts[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_imm[0]~input_o\ : std_logic;

BEGIN

ww_imm <= imm;
ww_exts <= exts;
imm32 <= ww_imm32;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_imm[23]~input_o\ <= NOT \imm[23]~input_o\;
\ALT_INV_imm[22]~input_o\ <= NOT \imm[22]~input_o\;
\ALT_INV_imm[21]~input_o\ <= NOT \imm[21]~input_o\;
\ALT_INV_imm[20]~input_o\ <= NOT \imm[20]~input_o\;
\ALT_INV_imm[19]~input_o\ <= NOT \imm[19]~input_o\;
\ALT_INV_imm[18]~input_o\ <= NOT \imm[18]~input_o\;
\ALT_INV_imm[17]~input_o\ <= NOT \imm[17]~input_o\;
\ALT_INV_imm[16]~input_o\ <= NOT \imm[16]~input_o\;
\ALT_INV_imm[15]~input_o\ <= NOT \imm[15]~input_o\;
\ALT_INV_imm[14]~input_o\ <= NOT \imm[14]~input_o\;
\ALT_INV_imm[13]~input_o\ <= NOT \imm[13]~input_o\;
\ALT_INV_imm[12]~input_o\ <= NOT \imm[12]~input_o\;
\ALT_INV_imm[11]~input_o\ <= NOT \imm[11]~input_o\;
\ALT_INV_imm[10]~input_o\ <= NOT \imm[10]~input_o\;
\ALT_INV_imm[9]~input_o\ <= NOT \imm[9]~input_o\;
\ALT_INV_exts[0]~input_o\ <= NOT \exts[0]~input_o\;
\ALT_INV_imm[8]~input_o\ <= NOT \imm[8]~input_o\;
\ALT_INV_imm[7]~input_o\ <= NOT \imm[7]~input_o\;
\ALT_INV_imm[6]~input_o\ <= NOT \imm[6]~input_o\;
\ALT_INV_imm[5]~input_o\ <= NOT \imm[5]~input_o\;
\ALT_INV_imm[4]~input_o\ <= NOT \imm[4]~input_o\;
\ALT_INV_imm[3]~input_o\ <= NOT \imm[3]~input_o\;
\ALT_INV_imm[2]~input_o\ <= NOT \imm[2]~input_o\;
\ALT_INV_imm[1]~input_o\ <= NOT \imm[1]~input_o\;
\ALT_INV_exts[1]~input_o\ <= NOT \exts[1]~input_o\;
\ALT_INV_imm[0]~input_o\ <= NOT \imm[0]~input_o\;

\imm32[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \imm32~0_combout\,
	devoe => ww_devoe,
	o => \imm32[0]~output_o\);

\imm32[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \imm32~1_combout\,
	devoe => ww_devoe,
	o => \imm32[1]~output_o\);

\imm32[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \imm32~2_combout\,
	devoe => ww_devoe,
	o => \imm32[2]~output_o\);

\imm32[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \imm32~3_combout\,
	devoe => ww_devoe,
	o => \imm32[3]~output_o\);

\imm32[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \imm32~4_combout\,
	devoe => ww_devoe,
	o => \imm32[4]~output_o\);

\imm32[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \imm32~5_combout\,
	devoe => ww_devoe,
	o => \imm32[5]~output_o\);

\imm32[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \imm32~6_combout\,
	devoe => ww_devoe,
	o => \imm32[6]~output_o\);

\imm32[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \imm32~7_combout\,
	devoe => ww_devoe,
	o => \imm32[7]~output_o\);

\imm32[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~0_combout\,
	devoe => ww_devoe,
	o => \imm32[8]~output_o\);

\imm32[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~0_combout\,
	devoe => ww_devoe,
	o => \imm32[9]~output_o\);

\imm32[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~0_combout\,
	devoe => ww_devoe,
	o => \imm32[10]~output_o\);

\imm32[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~0_combout\,
	devoe => ww_devoe,
	o => \imm32[11]~output_o\);

\imm32[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \imm32~8_combout\,
	devoe => ww_devoe,
	o => \imm32[12]~output_o\);

\imm32[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \imm32~9_combout\,
	devoe => ww_devoe,
	o => \imm32[13]~output_o\);

\imm32[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \imm32~10_combout\,
	devoe => ww_devoe,
	o => \imm32[14]~output_o\);

\imm32[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \imm32~11_combout\,
	devoe => ww_devoe,
	o => \imm32[15]~output_o\);

\imm32[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \imm32~12_combout\,
	devoe => ww_devoe,
	o => \imm32[16]~output_o\);

\imm32[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \imm32~13_combout\,
	devoe => ww_devoe,
	o => \imm32[17]~output_o\);

\imm32[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \imm32~14_combout\,
	devoe => ww_devoe,
	o => \imm32[18]~output_o\);

\imm32[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \imm32~15_combout\,
	devoe => ww_devoe,
	o => \imm32[19]~output_o\);

\imm32[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \imm32~16_combout\,
	devoe => ww_devoe,
	o => \imm32[20]~output_o\);

\imm32[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \imm32~17_combout\,
	devoe => ww_devoe,
	o => \imm32[21]~output_o\);

\imm32[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \imm32~18_combout\,
	devoe => ww_devoe,
	o => \imm32[22]~output_o\);

\imm32[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \imm32~19_combout\,
	devoe => ww_devoe,
	o => \imm32[23]~output_o\);

\imm32[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \imm32~20_combout\,
	devoe => ww_devoe,
	o => \imm32[24]~output_o\);

\imm32[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \imm32~21_combout\,
	devoe => ww_devoe,
	o => \imm32[25]~output_o\);

\imm32[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \imm32~21_combout\,
	devoe => ww_devoe,
	o => \imm32[26]~output_o\);

\imm32[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \imm32~21_combout\,
	devoe => ww_devoe,
	o => \imm32[27]~output_o\);

\imm32[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \imm32~21_combout\,
	devoe => ww_devoe,
	o => \imm32[28]~output_o\);

\imm32[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \imm32~21_combout\,
	devoe => ww_devoe,
	o => \imm32[29]~output_o\);

\imm32[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \imm32~21_combout\,
	devoe => ww_devoe,
	o => \imm32[30]~output_o\);

\imm32[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \imm32~21_combout\,
	devoe => ww_devoe,
	o => \imm32[31]~output_o\);

\imm[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_imm(0),
	o => \imm[0]~input_o\);

\exts[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_exts(1),
	o => \exts[1]~input_o\);

\imm32~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \imm32~0_combout\ = (\imm[0]~input_o\ & !\exts[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_imm[0]~input_o\,
	datab => \ALT_INV_exts[1]~input_o\,
	combout => \imm32~0_combout\);

\imm[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_imm(1),
	o => \imm[1]~input_o\);

\imm32~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \imm32~1_combout\ = (!\exts[1]~input_o\ & \imm[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_exts[1]~input_o\,
	datab => \ALT_INV_imm[1]~input_o\,
	combout => \imm32~1_combout\);

\imm[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_imm(2),
	o => \imm[2]~input_o\);

\imm32~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \imm32~2_combout\ = (!\exts[1]~input_o\ & ((\imm[2]~input_o\))) # (\exts[1]~input_o\ & (\imm[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_imm[0]~input_o\,
	datab => \ALT_INV_exts[1]~input_o\,
	datac => \ALT_INV_imm[2]~input_o\,
	combout => \imm32~2_combout\);

\imm[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_imm(3),
	o => \imm[3]~input_o\);

\imm32~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \imm32~3_combout\ = (!\exts[1]~input_o\ & ((\imm[3]~input_o\))) # (\exts[1]~input_o\ & (\imm[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_exts[1]~input_o\,
	datab => \ALT_INV_imm[1]~input_o\,
	datac => \ALT_INV_imm[3]~input_o\,
	combout => \imm32~3_combout\);

\imm[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_imm(4),
	o => \imm[4]~input_o\);

\imm32~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \imm32~4_combout\ = (!\exts[1]~input_o\ & ((\imm[4]~input_o\))) # (\exts[1]~input_o\ & (\imm[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_exts[1]~input_o\,
	datab => \ALT_INV_imm[2]~input_o\,
	datac => \ALT_INV_imm[4]~input_o\,
	combout => \imm32~4_combout\);

\imm[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_imm(5),
	o => \imm[5]~input_o\);

\imm32~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \imm32~5_combout\ = (!\exts[1]~input_o\ & ((\imm[5]~input_o\))) # (\exts[1]~input_o\ & (\imm[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_exts[1]~input_o\,
	datab => \ALT_INV_imm[3]~input_o\,
	datac => \ALT_INV_imm[5]~input_o\,
	combout => \imm32~5_combout\);

\imm[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_imm(6),
	o => \imm[6]~input_o\);

\imm32~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \imm32~6_combout\ = (!\exts[1]~input_o\ & ((\imm[6]~input_o\))) # (\exts[1]~input_o\ & (\imm[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_exts[1]~input_o\,
	datab => \ALT_INV_imm[4]~input_o\,
	datac => \ALT_INV_imm[6]~input_o\,
	combout => \imm32~6_combout\);

\imm[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_imm(7),
	o => \imm[7]~input_o\);

\imm32~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \imm32~7_combout\ = (!\exts[1]~input_o\ & ((\imm[7]~input_o\))) # (\exts[1]~input_o\ & (\imm[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_exts[1]~input_o\,
	datab => \ALT_INV_imm[5]~input_o\,
	datac => \ALT_INV_imm[7]~input_o\,
	combout => \imm32~7_combout\);

\imm[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_imm(8),
	o => \imm[8]~input_o\);

\exts[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_exts(0),
	o => \exts[0]~input_o\);

\Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (!\exts[1]~input_o\ & (((\imm[8]~input_o\ & \exts[0]~input_o\)))) # (\exts[1]~input_o\ & (\imm[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100011011000100010001101100010001000110110001000100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_exts[1]~input_o\,
	datab => \ALT_INV_imm[6]~input_o\,
	datac => \ALT_INV_imm[8]~input_o\,
	datad => \ALT_INV_exts[0]~input_o\,
	combout => \Mux3~0_combout\);

\imm[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_imm(9),
	o => \imm[9]~input_o\);

\Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (!\exts[1]~input_o\ & (((\exts[0]~input_o\ & \imm[9]~input_o\)))) # (\exts[1]~input_o\ & (\imm[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100011011000100010001101100010001000110110001000100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_exts[1]~input_o\,
	datab => \ALT_INV_imm[7]~input_o\,
	datac => \ALT_INV_exts[0]~input_o\,
	datad => \ALT_INV_imm[9]~input_o\,
	combout => \Mux2~0_combout\);

\imm[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_imm(10),
	o => \imm[10]~input_o\);

\Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (!\exts[1]~input_o\ & (((\exts[0]~input_o\ & \imm[10]~input_o\)))) # (\exts[1]~input_o\ & (\imm[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100011011000100010001101100010001000110110001000100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_exts[1]~input_o\,
	datab => \ALT_INV_imm[8]~input_o\,
	datac => \ALT_INV_exts[0]~input_o\,
	datad => \ALT_INV_imm[10]~input_o\,
	combout => \Mux1~0_combout\);

\imm[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_imm(11),
	o => \imm[11]~input_o\);

\Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (!\exts[1]~input_o\ & (\exts[0]~input_o\ & ((\imm[11]~input_o\)))) # (\exts[1]~input_o\ & (((\imm[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100100111000001010010011100000101001001110000010100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_exts[1]~input_o\,
	datab => \ALT_INV_exts[0]~input_o\,
	datac => \ALT_INV_imm[9]~input_o\,
	datad => \ALT_INV_imm[11]~input_o\,
	combout => \Mux0~0_combout\);

\imm32~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \imm32~8_combout\ = (\exts[1]~input_o\ & \imm[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_exts[1]~input_o\,
	datab => \ALT_INV_imm[10]~input_o\,
	combout => \imm32~8_combout\);

\imm32~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \imm32~9_combout\ = (\exts[1]~input_o\ & \imm[11]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_exts[1]~input_o\,
	datab => \ALT_INV_imm[11]~input_o\,
	combout => \imm32~9_combout\);

\imm[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_imm(12),
	o => \imm[12]~input_o\);

\imm32~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \imm32~10_combout\ = (\exts[1]~input_o\ & \imm[12]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_exts[1]~input_o\,
	datab => \ALT_INV_imm[12]~input_o\,
	combout => \imm32~10_combout\);

\imm[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_imm(13),
	o => \imm[13]~input_o\);

\imm32~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \imm32~11_combout\ = (\exts[1]~input_o\ & \imm[13]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_exts[1]~input_o\,
	datab => \ALT_INV_imm[13]~input_o\,
	combout => \imm32~11_combout\);

\imm[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_imm(14),
	o => \imm[14]~input_o\);

\imm32~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \imm32~12_combout\ = (\exts[1]~input_o\ & \imm[14]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_exts[1]~input_o\,
	datab => \ALT_INV_imm[14]~input_o\,
	combout => \imm32~12_combout\);

\imm[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_imm(15),
	o => \imm[15]~input_o\);

\imm32~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \imm32~13_combout\ = (\exts[1]~input_o\ & \imm[15]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_exts[1]~input_o\,
	datab => \ALT_INV_imm[15]~input_o\,
	combout => \imm32~13_combout\);

\imm[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_imm(16),
	o => \imm[16]~input_o\);

\imm32~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \imm32~14_combout\ = (\exts[1]~input_o\ & \imm[16]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_exts[1]~input_o\,
	datab => \ALT_INV_imm[16]~input_o\,
	combout => \imm32~14_combout\);

\imm[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_imm(17),
	o => \imm[17]~input_o\);

\imm32~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \imm32~15_combout\ = (\exts[1]~input_o\ & \imm[17]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_exts[1]~input_o\,
	datab => \ALT_INV_imm[17]~input_o\,
	combout => \imm32~15_combout\);

\imm[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_imm(18),
	o => \imm[18]~input_o\);

\imm32~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \imm32~16_combout\ = (\exts[1]~input_o\ & \imm[18]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_exts[1]~input_o\,
	datab => \ALT_INV_imm[18]~input_o\,
	combout => \imm32~16_combout\);

\imm[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_imm(19),
	o => \imm[19]~input_o\);

\imm32~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \imm32~17_combout\ = (\exts[1]~input_o\ & \imm[19]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_exts[1]~input_o\,
	datab => \ALT_INV_imm[19]~input_o\,
	combout => \imm32~17_combout\);

\imm[20]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_imm(20),
	o => \imm[20]~input_o\);

\imm32~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \imm32~18_combout\ = (\exts[1]~input_o\ & \imm[20]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_exts[1]~input_o\,
	datab => \ALT_INV_imm[20]~input_o\,
	combout => \imm32~18_combout\);

\imm[21]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_imm(21),
	o => \imm[21]~input_o\);

\imm32~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \imm32~19_combout\ = (\exts[1]~input_o\ & \imm[21]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_exts[1]~input_o\,
	datab => \ALT_INV_imm[21]~input_o\,
	combout => \imm32~19_combout\);

\imm[22]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_imm(22),
	o => \imm[22]~input_o\);

\imm32~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \imm32~20_combout\ = (\exts[1]~input_o\ & \imm[22]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_exts[1]~input_o\,
	datab => \ALT_INV_imm[22]~input_o\,
	combout => \imm32~20_combout\);

\imm[23]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_imm(23),
	o => \imm[23]~input_o\);

\imm32~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \imm32~21_combout\ = (\exts[1]~input_o\ & \imm[23]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_exts[1]~input_o\,
	datab => \ALT_INV_imm[23]~input_o\,
	combout => \imm32~21_combout\);

ww_imm32(0) <= \imm32[0]~output_o\;

ww_imm32(1) <= \imm32[1]~output_o\;

ww_imm32(2) <= \imm32[2]~output_o\;

ww_imm32(3) <= \imm32[3]~output_o\;

ww_imm32(4) <= \imm32[4]~output_o\;

ww_imm32(5) <= \imm32[5]~output_o\;

ww_imm32(6) <= \imm32[6]~output_o\;

ww_imm32(7) <= \imm32[7]~output_o\;

ww_imm32(8) <= \imm32[8]~output_o\;

ww_imm32(9) <= \imm32[9]~output_o\;

ww_imm32(10) <= \imm32[10]~output_o\;

ww_imm32(11) <= \imm32[11]~output_o\;

ww_imm32(12) <= \imm32[12]~output_o\;

ww_imm32(13) <= \imm32[13]~output_o\;

ww_imm32(14) <= \imm32[14]~output_o\;

ww_imm32(15) <= \imm32[15]~output_o\;

ww_imm32(16) <= \imm32[16]~output_o\;

ww_imm32(17) <= \imm32[17]~output_o\;

ww_imm32(18) <= \imm32[18]~output_o\;

ww_imm32(19) <= \imm32[19]~output_o\;

ww_imm32(20) <= \imm32[20]~output_o\;

ww_imm32(21) <= \imm32[21]~output_o\;

ww_imm32(22) <= \imm32[22]~output_o\;

ww_imm32(23) <= \imm32[23]~output_o\;

ww_imm32(24) <= \imm32[24]~output_o\;

ww_imm32(25) <= \imm32[25]~output_o\;

ww_imm32(26) <= \imm32[26]~output_o\;

ww_imm32(27) <= \imm32[27]~output_o\;

ww_imm32(28) <= \imm32[28]~output_o\;

ww_imm32(29) <= \imm32[29]~output_o\;

ww_imm32(30) <= \imm32[30]~output_o\;

ww_imm32(31) <= \imm32[31]~output_o\;
END structure;


