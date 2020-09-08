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

-- DATE "03/15/2019 09:48:55"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ARMv4_ALU IS
    PORT (
	A : IN std_logic_vector(31 DOWNTO 0);
	B : IN std_logic_vector(31 DOWNTO 0);
	ALUS : IN std_logic_vector(2 DOWNTO 0);
	F : INOUT std_logic_vector(31 DOWNTO 0);
	C : OUT std_logic;
	V : OUT std_logic;
	N : OUT std_logic;
	Z : OUT std_logic
	);
END ARMv4_ALU;

ARCHITECTURE structure OF ARMv4_ALU IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_ALUS : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_C : std_logic;
SIGNAL ww_V : std_logic;
SIGNAL ww_N : std_logic;
SIGNAL ww_Z : std_logic;
SIGNAL \F[0]~input_o\ : std_logic;
SIGNAL \F[1]~input_o\ : std_logic;
SIGNAL \F[2]~input_o\ : std_logic;
SIGNAL \F[3]~input_o\ : std_logic;
SIGNAL \F[4]~input_o\ : std_logic;
SIGNAL \F[5]~input_o\ : std_logic;
SIGNAL \F[6]~input_o\ : std_logic;
SIGNAL \F[7]~input_o\ : std_logic;
SIGNAL \F[8]~input_o\ : std_logic;
SIGNAL \F[9]~input_o\ : std_logic;
SIGNAL \F[10]~input_o\ : std_logic;
SIGNAL \F[11]~input_o\ : std_logic;
SIGNAL \F[12]~input_o\ : std_logic;
SIGNAL \F[13]~input_o\ : std_logic;
SIGNAL \F[14]~input_o\ : std_logic;
SIGNAL \F[15]~input_o\ : std_logic;
SIGNAL \F[16]~input_o\ : std_logic;
SIGNAL \F[17]~input_o\ : std_logic;
SIGNAL \F[18]~input_o\ : std_logic;
SIGNAL \F[19]~input_o\ : std_logic;
SIGNAL \F[20]~input_o\ : std_logic;
SIGNAL \F[21]~input_o\ : std_logic;
SIGNAL \F[22]~input_o\ : std_logic;
SIGNAL \F[23]~input_o\ : std_logic;
SIGNAL \F[24]~input_o\ : std_logic;
SIGNAL \F[25]~input_o\ : std_logic;
SIGNAL \F[26]~input_o\ : std_logic;
SIGNAL \F[27]~input_o\ : std_logic;
SIGNAL \F[28]~input_o\ : std_logic;
SIGNAL \F[29]~input_o\ : std_logic;
SIGNAL \F[30]~input_o\ : std_logic;
SIGNAL \F[31]~input_o\ : std_logic;
SIGNAL \F[0]~output_o\ : std_logic;
SIGNAL \F[1]~output_o\ : std_logic;
SIGNAL \F[2]~output_o\ : std_logic;
SIGNAL \F[3]~output_o\ : std_logic;
SIGNAL \F[4]~output_o\ : std_logic;
SIGNAL \F[5]~output_o\ : std_logic;
SIGNAL \F[6]~output_o\ : std_logic;
SIGNAL \F[7]~output_o\ : std_logic;
SIGNAL \F[8]~output_o\ : std_logic;
SIGNAL \F[9]~output_o\ : std_logic;
SIGNAL \F[10]~output_o\ : std_logic;
SIGNAL \F[11]~output_o\ : std_logic;
SIGNAL \F[12]~output_o\ : std_logic;
SIGNAL \F[13]~output_o\ : std_logic;
SIGNAL \F[14]~output_o\ : std_logic;
SIGNAL \F[15]~output_o\ : std_logic;
SIGNAL \F[16]~output_o\ : std_logic;
SIGNAL \F[17]~output_o\ : std_logic;
SIGNAL \F[18]~output_o\ : std_logic;
SIGNAL \F[19]~output_o\ : std_logic;
SIGNAL \F[20]~output_o\ : std_logic;
SIGNAL \F[21]~output_o\ : std_logic;
SIGNAL \F[22]~output_o\ : std_logic;
SIGNAL \F[23]~output_o\ : std_logic;
SIGNAL \F[24]~output_o\ : std_logic;
SIGNAL \F[25]~output_o\ : std_logic;
SIGNAL \F[26]~output_o\ : std_logic;
SIGNAL \F[27]~output_o\ : std_logic;
SIGNAL \F[28]~output_o\ : std_logic;
SIGNAL \F[29]~output_o\ : std_logic;
SIGNAL \F[30]~output_o\ : std_logic;
SIGNAL \F[31]~output_o\ : std_logic;
SIGNAL \C~output_o\ : std_logic;
SIGNAL \V~output_o\ : std_logic;
SIGNAL \N~output_o\ : std_logic;
SIGNAL \Z~output_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \ALUS[0]~input_o\ : std_logic;
SIGNAL \Add0~31_combout\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \Add0~33_cout\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \ALUS[1]~input_o\ : std_logic;
SIGNAL \ALUS[2]~input_o\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \Mux15~1_combout\ : std_logic;
SIGNAL \Mux32~0_combout\ : std_logic;
SIGNAL \Mux15~2_combout\ : std_logic;
SIGNAL \Mux32~1_combout\ : std_logic;
SIGNAL \Mux32~2_combout\ : std_logic;
SIGNAL \Mux32~3_combout\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \Mux31~0_combout\ : std_logic;
SIGNAL \Mux31~1_combout\ : std_logic;
SIGNAL \Mux31~2_combout\ : std_logic;
SIGNAL \Mux31~3_combout\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \Add0~29_combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \Mux30~0_combout\ : std_logic;
SIGNAL \Mux30~1_combout\ : std_logic;
SIGNAL \Mux30~2_combout\ : std_logic;
SIGNAL \Mux30~3_combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \Add0~39\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \Mux29~0_combout\ : std_logic;
SIGNAL \Mux29~1_combout\ : std_logic;
SIGNAL \Mux29~2_combout\ : std_logic;
SIGNAL \Mux29~3_combout\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \Add0~27_combout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \Add0~41\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \Mux28~0_combout\ : std_logic;
SIGNAL \Mux28~1_combout\ : std_logic;
SIGNAL \Mux28~2_combout\ : std_logic;
SIGNAL \Mux28~3_combout\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \Mux27~0_combout\ : std_logic;
SIGNAL \Mux27~1_combout\ : std_logic;
SIGNAL \Mux27~2_combout\ : std_logic;
SIGNAL \Mux27~3_combout\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \Add0~25_combout\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \Add0~45\ : std_logic;
SIGNAL \Add0~46_combout\ : std_logic;
SIGNAL \Mux26~0_combout\ : std_logic;
SIGNAL \Mux26~1_combout\ : std_logic;
SIGNAL \Mux26~2_combout\ : std_logic;
SIGNAL \Mux26~3_combout\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~48_combout\ : std_logic;
SIGNAL \Mux25~0_combout\ : std_logic;
SIGNAL \Mux25~1_combout\ : std_logic;
SIGNAL \Mux25~2_combout\ : std_logic;
SIGNAL \Mux25~3_combout\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \Add0~23_combout\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \Add0~49\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \Mux24~0_combout\ : std_logic;
SIGNAL \Mux24~1_combout\ : std_logic;
SIGNAL \Mux24~2_combout\ : std_logic;
SIGNAL \Mux24~3_combout\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \Add0~51\ : std_logic;
SIGNAL \Add0~52_combout\ : std_logic;
SIGNAL \Mux23~0_combout\ : std_logic;
SIGNAL \Mux23~1_combout\ : std_logic;
SIGNAL \Mux23~2_combout\ : std_logic;
SIGNAL \Mux23~3_combout\ : std_logic;
SIGNAL \B[10]~input_o\ : std_logic;
SIGNAL \Add0~21_combout\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \Add0~53\ : std_logic;
SIGNAL \Add0~54_combout\ : std_logic;
SIGNAL \Mux22~0_combout\ : std_logic;
SIGNAL \Mux22~1_combout\ : std_logic;
SIGNAL \Mux22~2_combout\ : std_logic;
SIGNAL \Mux22~3_combout\ : std_logic;
SIGNAL \B[11]~input_o\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \Add0~55\ : std_logic;
SIGNAL \Add0~56_combout\ : std_logic;
SIGNAL \Mux21~0_combout\ : std_logic;
SIGNAL \Mux21~1_combout\ : std_logic;
SIGNAL \Mux21~2_combout\ : std_logic;
SIGNAL \Mux21~3_combout\ : std_logic;
SIGNAL \B[12]~input_o\ : std_logic;
SIGNAL \Add0~19_combout\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \Add0~57\ : std_logic;
SIGNAL \Add0~58_combout\ : std_logic;
SIGNAL \Mux20~0_combout\ : std_logic;
SIGNAL \Mux20~1_combout\ : std_logic;
SIGNAL \Mux20~2_combout\ : std_logic;
SIGNAL \Mux20~3_combout\ : std_logic;
SIGNAL \B[13]~input_o\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \Add0~59\ : std_logic;
SIGNAL \Add0~60_combout\ : std_logic;
SIGNAL \Mux19~0_combout\ : std_logic;
SIGNAL \Mux19~1_combout\ : std_logic;
SIGNAL \Mux19~2_combout\ : std_logic;
SIGNAL \Mux19~3_combout\ : std_logic;
SIGNAL \B[14]~input_o\ : std_logic;
SIGNAL \Add0~17_combout\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \Add0~61\ : std_logic;
SIGNAL \Add0~62_combout\ : std_logic;
SIGNAL \Mux18~0_combout\ : std_logic;
SIGNAL \Mux18~1_combout\ : std_logic;
SIGNAL \Mux18~2_combout\ : std_logic;
SIGNAL \Mux18~3_combout\ : std_logic;
SIGNAL \B[15]~input_o\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \Add0~63\ : std_logic;
SIGNAL \Add0~64_combout\ : std_logic;
SIGNAL \Mux17~0_combout\ : std_logic;
SIGNAL \Mux17~1_combout\ : std_logic;
SIGNAL \Mux17~2_combout\ : std_logic;
SIGNAL \Mux17~3_combout\ : std_logic;
SIGNAL \B[16]~input_o\ : std_logic;
SIGNAL \Add0~15_combout\ : std_logic;
SIGNAL \A[16]~input_o\ : std_logic;
SIGNAL \Add0~65\ : std_logic;
SIGNAL \Add0~66_combout\ : std_logic;
SIGNAL \Mux16~0_combout\ : std_logic;
SIGNAL \Mux16~1_combout\ : std_logic;
SIGNAL \Mux16~2_combout\ : std_logic;
SIGNAL \Mux16~3_combout\ : std_logic;
SIGNAL \B[17]~input_o\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \A[17]~input_o\ : std_logic;
SIGNAL \Add0~67\ : std_logic;
SIGNAL \Add0~68_combout\ : std_logic;
SIGNAL \Mux15~3_combout\ : std_logic;
SIGNAL \Mux15~4_combout\ : std_logic;
SIGNAL \Mux15~5_combout\ : std_logic;
SIGNAL \Mux15~6_combout\ : std_logic;
SIGNAL \B[18]~input_o\ : std_logic;
SIGNAL \Add0~13_combout\ : std_logic;
SIGNAL \A[18]~input_o\ : std_logic;
SIGNAL \Add0~69\ : std_logic;
SIGNAL \Add0~70_combout\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \Mux14~1_combout\ : std_logic;
SIGNAL \Mux14~2_combout\ : std_logic;
SIGNAL \Mux14~3_combout\ : std_logic;
SIGNAL \B[19]~input_o\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \A[19]~input_o\ : std_logic;
SIGNAL \Add0~71\ : std_logic;
SIGNAL \Add0~72_combout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Mux13~1_combout\ : std_logic;
SIGNAL \Mux13~2_combout\ : std_logic;
SIGNAL \Mux13~3_combout\ : std_logic;
SIGNAL \B[20]~input_o\ : std_logic;
SIGNAL \Add0~11_combout\ : std_logic;
SIGNAL \A[20]~input_o\ : std_logic;
SIGNAL \Add0~73\ : std_logic;
SIGNAL \Add0~74_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \Mux12~1_combout\ : std_logic;
SIGNAL \Mux12~2_combout\ : std_logic;
SIGNAL \Mux12~3_combout\ : std_logic;
SIGNAL \B[21]~input_o\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \A[21]~input_o\ : std_logic;
SIGNAL \Add0~75\ : std_logic;
SIGNAL \Add0~76_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux11~1_combout\ : std_logic;
SIGNAL \Mux11~2_combout\ : std_logic;
SIGNAL \Mux11~3_combout\ : std_logic;
SIGNAL \B[22]~input_o\ : std_logic;
SIGNAL \Add0~9_combout\ : std_logic;
SIGNAL \A[22]~input_o\ : std_logic;
SIGNAL \Add0~77\ : std_logic;
SIGNAL \Add0~78_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux10~1_combout\ : std_logic;
SIGNAL \Mux10~2_combout\ : std_logic;
SIGNAL \Mux10~3_combout\ : std_logic;
SIGNAL \B[23]~input_o\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \A[23]~input_o\ : std_logic;
SIGNAL \Add0~79\ : std_logic;
SIGNAL \Add0~80_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux9~1_combout\ : std_logic;
SIGNAL \Mux9~2_combout\ : std_logic;
SIGNAL \Mux9~3_combout\ : std_logic;
SIGNAL \B[24]~input_o\ : std_logic;
SIGNAL \Add0~7_combout\ : std_logic;
SIGNAL \A[24]~input_o\ : std_logic;
SIGNAL \Add0~81\ : std_logic;
SIGNAL \Add0~82_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux8~1_combout\ : std_logic;
SIGNAL \Mux8~2_combout\ : std_logic;
SIGNAL \Mux8~3_combout\ : std_logic;
SIGNAL \B[25]~input_o\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \A[25]~input_o\ : std_logic;
SIGNAL \Add0~83\ : std_logic;
SIGNAL \Add0~84_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL \Mux7~2_combout\ : std_logic;
SIGNAL \Mux7~3_combout\ : std_logic;
SIGNAL \B[26]~input_o\ : std_logic;
SIGNAL \Add0~5_combout\ : std_logic;
SIGNAL \A[26]~input_o\ : std_logic;
SIGNAL \Add0~85\ : std_logic;
SIGNAL \Add0~86_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \Mux6~2_combout\ : std_logic;
SIGNAL \Mux6~3_combout\ : std_logic;
SIGNAL \B[27]~input_o\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \A[27]~input_o\ : std_logic;
SIGNAL \Add0~87\ : std_logic;
SIGNAL \Add0~88_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \Mux5~2_combout\ : std_logic;
SIGNAL \Mux5~3_combout\ : std_logic;
SIGNAL \B[28]~input_o\ : std_logic;
SIGNAL \Add0~3_combout\ : std_logic;
SIGNAL \A[28]~input_o\ : std_logic;
SIGNAL \Add0~89\ : std_logic;
SIGNAL \Add0~90_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \Mux4~2_combout\ : std_logic;
SIGNAL \Mux4~3_combout\ : std_logic;
SIGNAL \B[29]~input_o\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \A[29]~input_o\ : std_logic;
SIGNAL \Add0~91\ : std_logic;
SIGNAL \Add0~92_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \Mux3~3_combout\ : std_logic;
SIGNAL \B[30]~input_o\ : std_logic;
SIGNAL \Add0~1_combout\ : std_logic;
SIGNAL \A[30]~input_o\ : std_logic;
SIGNAL \Add0~93\ : std_logic;
SIGNAL \Add0~94_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \Mux2~2_combout\ : std_logic;
SIGNAL \Mux2~3_combout\ : std_logic;
SIGNAL \B[31]~input_o\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \A[31]~input_o\ : std_logic;
SIGNAL \Add0~95\ : std_logic;
SIGNAL \Add0~96_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \Mux1~3_combout\ : std_logic;
SIGNAL \Add0~97\ : std_logic;
SIGNAL \Add0~98_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux33~0_combout\ : std_logic;
SIGNAL \Mux33~1_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \Equal0~10_combout\ : std_logic;

BEGIN

ww_A <= A;
ww_B <= B;
ww_ALUS <= ALUS;
C <= ww_C;
V <= ww_V;
N <= ww_N;
Z <= ww_Z;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\F[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux32~3_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \F[0]~output_o\);

\F[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux31~3_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \F[1]~output_o\);

\F[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux30~3_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \F[2]~output_o\);

\F[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux29~3_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \F[3]~output_o\);

\F[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux28~3_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \F[4]~output_o\);

\F[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux27~3_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \F[5]~output_o\);

\F[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux26~3_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \F[6]~output_o\);

\F[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux25~3_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \F[7]~output_o\);

\F[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux24~3_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \F[8]~output_o\);

\F[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux23~3_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \F[9]~output_o\);

\F[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux22~3_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \F[10]~output_o\);

\F[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux21~3_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \F[11]~output_o\);

\F[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux20~3_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \F[12]~output_o\);

\F[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux19~3_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \F[13]~output_o\);

\F[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux18~3_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \F[14]~output_o\);

\F[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux17~3_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \F[15]~output_o\);

\F[16]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux16~3_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \F[16]~output_o\);

\F[17]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux15~6_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \F[17]~output_o\);

\F[18]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux14~3_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \F[18]~output_o\);

\F[19]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux13~3_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \F[19]~output_o\);

\F[20]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux12~3_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \F[20]~output_o\);

\F[21]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux11~3_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \F[21]~output_o\);

\F[22]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux10~3_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \F[22]~output_o\);

\F[23]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux9~3_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \F[23]~output_o\);

\F[24]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux8~3_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \F[24]~output_o\);

\F[25]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux7~3_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \F[25]~output_o\);

\F[26]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~3_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \F[26]~output_o\);

\F[27]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~3_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \F[27]~output_o\);

\F[28]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~3_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \F[28]~output_o\);

\F[29]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~3_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \F[29]~output_o\);

\F[30]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~3_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \F[30]~output_o\);

\F[31]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~3_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \F[31]~output_o\);

\C~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~0_combout\,
	devoe => ww_devoe,
	o => \C~output_o\);

\V~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux33~1_combout\,
	devoe => ww_devoe,
	o => \V~output_o\);

\N~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~3_combout\,
	devoe => ww_devoe,
	o => \N~output_o\);

\Z~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal0~10_combout\,
	devoe => ww_devoe,
	o => \Z~output_o\);

\B[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

\ALUS[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALUS(0),
	o => \ALUS[0]~input_o\);

\Add0~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~31_combout\ = \ALUS[0]~input_o\ $ (\B[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALUS[0]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Add0~31_combout\);

\A[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

\Add0~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~33_cout\ = CARRY(\ALUS[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUS[0]~input_o\,
	datad => VCC,
	cout => \Add0~33_cout\);

\Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (\Add0~31_combout\ & ((\A[0]~input_o\ & (\Add0~33_cout\ & VCC)) # (!\A[0]~input_o\ & (!\Add0~33_cout\)))) # (!\Add0~31_combout\ & ((\A[0]~input_o\ & (!\Add0~33_cout\)) # (!\A[0]~input_o\ & ((\Add0~33_cout\) # (GND)))))
-- \Add0~35\ = CARRY((\Add0~31_combout\ & (!\A[0]~input_o\ & !\Add0~33_cout\)) # (!\Add0~31_combout\ & ((!\Add0~33_cout\) # (!\A[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~31_combout\,
	datab => \A[0]~input_o\,
	datad => VCC,
	cin => \Add0~33_cout\,
	combout => \Add0~34_combout\,
	cout => \Add0~35\);

\ALUS[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALUS(1),
	o => \ALUS[1]~input_o\);

\ALUS[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALUS(2),
	o => \ALUS[2]~input_o\);

\Mux15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = ((\ALUS[1]~input_o\ & !\ALUS[0]~input_o\)) # (!\ALUS[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUS[1]~input_o\,
	datac => \ALUS[0]~input_o\,
	datad => \ALUS[2]~input_o\,
	combout => \Mux15~0_combout\);

\Mux15~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux15~1_combout\ = (\ALUS[2]~input_o\ & ((\ALUS[0]~input_o\) # (\ALUS[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUS[2]~input_o\,
	datab => \ALUS[0]~input_o\,
	datac => \ALUS[1]~input_o\,
	combout => \Mux15~1_combout\);

\Mux32~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux32~0_combout\ = (\Mux15~0_combout\ & ((\Mux15~1_combout\ & (\B[0]~input_o\)) # (!\Mux15~1_combout\ & ((\Add0~34_combout\))))) # (!\Mux15~0_combout\ & (((\Mux15~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \Add0~34_combout\,
	datac => \Mux15~0_combout\,
	datad => \Mux15~1_combout\,
	combout => \Mux32~0_combout\);

\Mux15~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux15~2_combout\ = (\ALUS[1]~input_o\) # (!\ALUS[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUS[1]~input_o\,
	datad => \ALUS[2]~input_o\,
	combout => \Mux15~2_combout\);

\Mux32~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux32~1_combout\ = (\Mux15~2_combout\ & (((\Mux32~0_combout\)))) # (!\Mux15~2_combout\ & (\A[0]~input_o\ $ (((\B[0]~input_o\ & !\Mux32~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \Mux32~0_combout\,
	datac => \Mux15~2_combout\,
	datad => \A[0]~input_o\,
	combout => \Mux32~1_combout\);

\Mux32~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux32~2_combout\ = (\ALUS[0]~input_o\ & ((\B[0]~input_o\) # (\A[0]~input_o\))) # (!\ALUS[0]~input_o\ & (\B[0]~input_o\ & \A[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUS[0]~input_o\,
	datab => \B[0]~input_o\,
	datac => \A[0]~input_o\,
	combout => \Mux32~2_combout\);

\Mux32~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux32~3_combout\ = (\ALUS[1]~input_o\ & ((\ALUS[2]~input_o\ & (\Mux32~1_combout\)) # (!\ALUS[2]~input_o\ & ((\Mux32~2_combout\))))) # (!\ALUS[1]~input_o\ & (\Mux32~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux32~1_combout\,
	datab => \Mux32~2_combout\,
	datac => \ALUS[1]~input_o\,
	datad => \ALUS[2]~input_o\,
	combout => \Mux32~3_combout\);

\B[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

\Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = \ALUS[0]~input_o\ $ (\B[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALUS[0]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Add0~30_combout\);

\A[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

\Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = ((\Add0~30_combout\ $ (\A[1]~input_o\ $ (!\Add0~35\)))) # (GND)
-- \Add0~37\ = CARRY((\Add0~30_combout\ & ((\A[1]~input_o\) # (!\Add0~35\))) # (!\Add0~30_combout\ & (\A[1]~input_o\ & !\Add0~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~30_combout\,
	datab => \A[1]~input_o\,
	datad => VCC,
	cin => \Add0~35\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

\Mux31~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux31~0_combout\ = (\Mux15~0_combout\ & ((\Mux15~1_combout\ & (\B[1]~input_o\)) # (!\Mux15~1_combout\ & ((\Add0~36_combout\))))) # (!\Mux15~0_combout\ & (((!\Mux15~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \Add0~36_combout\,
	datac => \Mux15~0_combout\,
	datad => \Mux15~1_combout\,
	combout => \Mux31~0_combout\);

\Mux31~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux31~1_combout\ = (\Mux15~2_combout\ & (((\Mux31~0_combout\)))) # (!\Mux15~2_combout\ & (\A[1]~input_o\ $ (((\B[1]~input_o\ & \Mux31~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \Mux31~0_combout\,
	datac => \Mux15~2_combout\,
	datad => \A[1]~input_o\,
	combout => \Mux31~1_combout\);

\Mux31~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux31~2_combout\ = (\ALUS[0]~input_o\ & ((\B[1]~input_o\) # (\A[1]~input_o\))) # (!\ALUS[0]~input_o\ & (\B[1]~input_o\ & \A[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUS[0]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[1]~input_o\,
	combout => \Mux31~2_combout\);

\Mux31~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux31~3_combout\ = (\ALUS[1]~input_o\ & ((\ALUS[2]~input_o\ & (\Mux31~1_combout\)) # (!\ALUS[2]~input_o\ & ((\Mux31~2_combout\))))) # (!\ALUS[1]~input_o\ & (\Mux31~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~1_combout\,
	datab => \Mux31~2_combout\,
	datac => \ALUS[1]~input_o\,
	datad => \ALUS[2]~input_o\,
	combout => \Mux31~3_combout\);

\B[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

\Add0~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~29_combout\ = \ALUS[0]~input_o\ $ (\B[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALUS[0]~input_o\,
	datad => \B[2]~input_o\,
	combout => \Add0~29_combout\);

\A[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

\Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = (\Add0~29_combout\ & ((\A[2]~input_o\ & (\Add0~37\ & VCC)) # (!\A[2]~input_o\ & (!\Add0~37\)))) # (!\Add0~29_combout\ & ((\A[2]~input_o\ & (!\Add0~37\)) # (!\A[2]~input_o\ & ((\Add0~37\) # (GND)))))
-- \Add0~39\ = CARRY((\Add0~29_combout\ & (!\A[2]~input_o\ & !\Add0~37\)) # (!\Add0~29_combout\ & ((!\Add0~37\) # (!\A[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~29_combout\,
	datab => \A[2]~input_o\,
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~38_combout\,
	cout => \Add0~39\);

\Mux30~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux30~0_combout\ = (\Mux15~0_combout\ & ((\Mux15~1_combout\ & (\B[2]~input_o\)) # (!\Mux15~1_combout\ & ((\Add0~38_combout\))))) # (!\Mux15~0_combout\ & (((!\Mux15~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Add0~38_combout\,
	datac => \Mux15~0_combout\,
	datad => \Mux15~1_combout\,
	combout => \Mux30~0_combout\);

\Mux30~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux30~1_combout\ = (\Mux15~2_combout\ & (((\Mux30~0_combout\)))) # (!\Mux15~2_combout\ & (\A[2]~input_o\ $ (((\B[2]~input_o\ & \Mux30~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Mux30~0_combout\,
	datac => \Mux15~2_combout\,
	datad => \A[2]~input_o\,
	combout => \Mux30~1_combout\);

\Mux30~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux30~2_combout\ = (\ALUS[0]~input_o\ & ((\B[2]~input_o\) # (\A[2]~input_o\))) # (!\ALUS[0]~input_o\ & (\B[2]~input_o\ & \A[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUS[0]~input_o\,
	datab => \B[2]~input_o\,
	datac => \A[2]~input_o\,
	combout => \Mux30~2_combout\);

\Mux30~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux30~3_combout\ = (\ALUS[1]~input_o\ & ((\ALUS[2]~input_o\ & (\Mux30~1_combout\)) # (!\ALUS[2]~input_o\ & ((\Mux30~2_combout\))))) # (!\ALUS[1]~input_o\ & (\Mux30~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux30~1_combout\,
	datab => \Mux30~2_combout\,
	datac => \ALUS[1]~input_o\,
	datad => \ALUS[2]~input_o\,
	combout => \Mux30~3_combout\);

\B[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

\Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = \ALUS[0]~input_o\ $ (\B[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALUS[0]~input_o\,
	datad => \B[3]~input_o\,
	combout => \Add0~28_combout\);

\A[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

\Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~40_combout\ = ((\Add0~28_combout\ $ (\A[3]~input_o\ $ (!\Add0~39\)))) # (GND)
-- \Add0~41\ = CARRY((\Add0~28_combout\ & ((\A[3]~input_o\) # (!\Add0~39\))) # (!\Add0~28_combout\ & (\A[3]~input_o\ & !\Add0~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~28_combout\,
	datab => \A[3]~input_o\,
	datad => VCC,
	cin => \Add0~39\,
	combout => \Add0~40_combout\,
	cout => \Add0~41\);

\Mux29~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux29~0_combout\ = (\Mux15~0_combout\ & ((\Mux15~1_combout\ & (\B[3]~input_o\)) # (!\Mux15~1_combout\ & ((\Add0~40_combout\))))) # (!\Mux15~0_combout\ & (((!\Mux15~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Add0~40_combout\,
	datac => \Mux15~0_combout\,
	datad => \Mux15~1_combout\,
	combout => \Mux29~0_combout\);

\Mux29~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux29~1_combout\ = (\Mux15~2_combout\ & (((\Mux29~0_combout\)))) # (!\Mux15~2_combout\ & (\A[3]~input_o\ $ (((\B[3]~input_o\ & \Mux29~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Mux29~0_combout\,
	datac => \Mux15~2_combout\,
	datad => \A[3]~input_o\,
	combout => \Mux29~1_combout\);

\Mux29~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux29~2_combout\ = (\ALUS[0]~input_o\ & ((\B[3]~input_o\) # (\A[3]~input_o\))) # (!\ALUS[0]~input_o\ & (\B[3]~input_o\ & \A[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUS[0]~input_o\,
	datab => \B[3]~input_o\,
	datac => \A[3]~input_o\,
	combout => \Mux29~2_combout\);

\Mux29~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux29~3_combout\ = (\ALUS[1]~input_o\ & ((\ALUS[2]~input_o\ & (\Mux29~1_combout\)) # (!\ALUS[2]~input_o\ & ((\Mux29~2_combout\))))) # (!\ALUS[1]~input_o\ & (\Mux29~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~1_combout\,
	datab => \Mux29~2_combout\,
	datac => \ALUS[1]~input_o\,
	datad => \ALUS[2]~input_o\,
	combout => \Mux29~3_combout\);

\B[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

\Add0~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~27_combout\ = \ALUS[0]~input_o\ $ (\B[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALUS[0]~input_o\,
	datad => \B[4]~input_o\,
	combout => \Add0~27_combout\);

\A[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

\Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = (\Add0~27_combout\ & ((\A[4]~input_o\ & (\Add0~41\ & VCC)) # (!\A[4]~input_o\ & (!\Add0~41\)))) # (!\Add0~27_combout\ & ((\A[4]~input_o\ & (!\Add0~41\)) # (!\A[4]~input_o\ & ((\Add0~41\) # (GND)))))
-- \Add0~43\ = CARRY((\Add0~27_combout\ & (!\A[4]~input_o\ & !\Add0~41\)) # (!\Add0~27_combout\ & ((!\Add0~41\) # (!\A[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~27_combout\,
	datab => \A[4]~input_o\,
	datad => VCC,
	cin => \Add0~41\,
	combout => \Add0~42_combout\,
	cout => \Add0~43\);

\Mux28~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux28~0_combout\ = (\Mux15~0_combout\ & ((\Mux15~1_combout\ & (\B[4]~input_o\)) # (!\Mux15~1_combout\ & ((\Add0~42_combout\))))) # (!\Mux15~0_combout\ & (((!\Mux15~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \Add0~42_combout\,
	datac => \Mux15~0_combout\,
	datad => \Mux15~1_combout\,
	combout => \Mux28~0_combout\);

\Mux28~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux28~1_combout\ = (\Mux15~2_combout\ & (((\Mux28~0_combout\)))) # (!\Mux15~2_combout\ & (\A[4]~input_o\ $ (((\B[4]~input_o\ & \Mux28~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \Mux28~0_combout\,
	datac => \Mux15~2_combout\,
	datad => \A[4]~input_o\,
	combout => \Mux28~1_combout\);

\Mux28~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux28~2_combout\ = (\ALUS[0]~input_o\ & ((\B[4]~input_o\) # (\A[4]~input_o\))) # (!\ALUS[0]~input_o\ & (\B[4]~input_o\ & \A[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUS[0]~input_o\,
	datab => \B[4]~input_o\,
	datac => \A[4]~input_o\,
	combout => \Mux28~2_combout\);

\Mux28~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux28~3_combout\ = (\ALUS[1]~input_o\ & ((\ALUS[2]~input_o\ & (\Mux28~1_combout\)) # (!\ALUS[2]~input_o\ & ((\Mux28~2_combout\))))) # (!\ALUS[1]~input_o\ & (\Mux28~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~1_combout\,
	datab => \Mux28~2_combout\,
	datac => \ALUS[1]~input_o\,
	datad => \ALUS[2]~input_o\,
	combout => \Mux28~3_combout\);

\B[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

\Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = \ALUS[0]~input_o\ $ (\B[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALUS[0]~input_o\,
	datad => \B[5]~input_o\,
	combout => \Add0~26_combout\);

\A[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

\Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = ((\Add0~26_combout\ $ (\A[5]~input_o\ $ (!\Add0~43\)))) # (GND)
-- \Add0~45\ = CARRY((\Add0~26_combout\ & ((\A[5]~input_o\) # (!\Add0~43\))) # (!\Add0~26_combout\ & (\A[5]~input_o\ & !\Add0~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~26_combout\,
	datab => \A[5]~input_o\,
	datad => VCC,
	cin => \Add0~43\,
	combout => \Add0~44_combout\,
	cout => \Add0~45\);

\Mux27~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux27~0_combout\ = (\Mux15~0_combout\ & ((\Mux15~1_combout\ & (\B[5]~input_o\)) # (!\Mux15~1_combout\ & ((\Add0~44_combout\))))) # (!\Mux15~0_combout\ & (((!\Mux15~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \Add0~44_combout\,
	datac => \Mux15~0_combout\,
	datad => \Mux15~1_combout\,
	combout => \Mux27~0_combout\);

\Mux27~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux27~1_combout\ = (\Mux15~2_combout\ & (((\Mux27~0_combout\)))) # (!\Mux15~2_combout\ & (\A[5]~input_o\ $ (((\B[5]~input_o\ & \Mux27~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \Mux27~0_combout\,
	datac => \Mux15~2_combout\,
	datad => \A[5]~input_o\,
	combout => \Mux27~1_combout\);

\Mux27~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux27~2_combout\ = (\ALUS[0]~input_o\ & ((\B[5]~input_o\) # (\A[5]~input_o\))) # (!\ALUS[0]~input_o\ & (\B[5]~input_o\ & \A[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUS[0]~input_o\,
	datab => \B[5]~input_o\,
	datac => \A[5]~input_o\,
	combout => \Mux27~2_combout\);

\Mux27~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux27~3_combout\ = (\ALUS[1]~input_o\ & ((\ALUS[2]~input_o\ & (\Mux27~1_combout\)) # (!\ALUS[2]~input_o\ & ((\Mux27~2_combout\))))) # (!\ALUS[1]~input_o\ & (\Mux27~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux27~1_combout\,
	datab => \Mux27~2_combout\,
	datac => \ALUS[1]~input_o\,
	datad => \ALUS[2]~input_o\,
	combout => \Mux27~3_combout\);

\B[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

\Add0~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~25_combout\ = \ALUS[0]~input_o\ $ (\B[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALUS[0]~input_o\,
	datad => \B[6]~input_o\,
	combout => \Add0~25_combout\);

\A[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

\Add0~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~46_combout\ = (\Add0~25_combout\ & ((\A[6]~input_o\ & (\Add0~45\ & VCC)) # (!\A[6]~input_o\ & (!\Add0~45\)))) # (!\Add0~25_combout\ & ((\A[6]~input_o\ & (!\Add0~45\)) # (!\A[6]~input_o\ & ((\Add0~45\) # (GND)))))
-- \Add0~47\ = CARRY((\Add0~25_combout\ & (!\A[6]~input_o\ & !\Add0~45\)) # (!\Add0~25_combout\ & ((!\Add0~45\) # (!\A[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~25_combout\,
	datab => \A[6]~input_o\,
	datad => VCC,
	cin => \Add0~45\,
	combout => \Add0~46_combout\,
	cout => \Add0~47\);

\Mux26~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux26~0_combout\ = (\Mux15~0_combout\ & ((\Mux15~1_combout\ & (\B[6]~input_o\)) # (!\Mux15~1_combout\ & ((\Add0~46_combout\))))) # (!\Mux15~0_combout\ & (((!\Mux15~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datab => \Add0~46_combout\,
	datac => \Mux15~0_combout\,
	datad => \Mux15~1_combout\,
	combout => \Mux26~0_combout\);

\Mux26~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux26~1_combout\ = (\Mux15~2_combout\ & (((\Mux26~0_combout\)))) # (!\Mux15~2_combout\ & (\A[6]~input_o\ $ (((\B[6]~input_o\ & \Mux26~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datab => \Mux26~0_combout\,
	datac => \Mux15~2_combout\,
	datad => \A[6]~input_o\,
	combout => \Mux26~1_combout\);

\Mux26~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux26~2_combout\ = (\ALUS[0]~input_o\ & ((\B[6]~input_o\) # (\A[6]~input_o\))) # (!\ALUS[0]~input_o\ & (\B[6]~input_o\ & \A[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUS[0]~input_o\,
	datab => \B[6]~input_o\,
	datac => \A[6]~input_o\,
	combout => \Mux26~2_combout\);

\Mux26~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux26~3_combout\ = (\ALUS[1]~input_o\ & ((\ALUS[2]~input_o\ & (\Mux26~1_combout\)) # (!\ALUS[2]~input_o\ & ((\Mux26~2_combout\))))) # (!\ALUS[1]~input_o\ & (\Mux26~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux26~1_combout\,
	datab => \Mux26~2_combout\,
	datac => \ALUS[1]~input_o\,
	datad => \ALUS[2]~input_o\,
	combout => \Mux26~3_combout\);

\B[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

\Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = \ALUS[0]~input_o\ $ (\B[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALUS[0]~input_o\,
	datad => \B[7]~input_o\,
	combout => \Add0~24_combout\);

\A[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

\Add0~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~48_combout\ = ((\Add0~24_combout\ $ (\A[7]~input_o\ $ (!\Add0~47\)))) # (GND)
-- \Add0~49\ = CARRY((\Add0~24_combout\ & ((\A[7]~input_o\) # (!\Add0~47\))) # (!\Add0~24_combout\ & (\A[7]~input_o\ & !\Add0~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~24_combout\,
	datab => \A[7]~input_o\,
	datad => VCC,
	cin => \Add0~47\,
	combout => \Add0~48_combout\,
	cout => \Add0~49\);

\Mux25~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux25~0_combout\ = (\Mux15~0_combout\ & ((\Mux15~1_combout\ & (\B[7]~input_o\)) # (!\Mux15~1_combout\ & ((\Add0~48_combout\))))) # (!\Mux15~0_combout\ & (((!\Mux15~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[7]~input_o\,
	datab => \Add0~48_combout\,
	datac => \Mux15~0_combout\,
	datad => \Mux15~1_combout\,
	combout => \Mux25~0_combout\);

\Mux25~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux25~1_combout\ = (\Mux15~2_combout\ & (((\Mux25~0_combout\)))) # (!\Mux15~2_combout\ & (\A[7]~input_o\ $ (((\B[7]~input_o\ & \Mux25~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[7]~input_o\,
	datab => \Mux25~0_combout\,
	datac => \Mux15~2_combout\,
	datad => \A[7]~input_o\,
	combout => \Mux25~1_combout\);

\Mux25~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux25~2_combout\ = (\ALUS[0]~input_o\ & ((\B[7]~input_o\) # (\A[7]~input_o\))) # (!\ALUS[0]~input_o\ & (\B[7]~input_o\ & \A[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUS[0]~input_o\,
	datab => \B[7]~input_o\,
	datac => \A[7]~input_o\,
	combout => \Mux25~2_combout\);

\Mux25~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux25~3_combout\ = (\ALUS[1]~input_o\ & ((\ALUS[2]~input_o\ & (\Mux25~1_combout\)) # (!\ALUS[2]~input_o\ & ((\Mux25~2_combout\))))) # (!\ALUS[1]~input_o\ & (\Mux25~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux25~1_combout\,
	datab => \Mux25~2_combout\,
	datac => \ALUS[1]~input_o\,
	datad => \ALUS[2]~input_o\,
	combout => \Mux25~3_combout\);

\B[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

\Add0~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~23_combout\ = \ALUS[0]~input_o\ $ (\B[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALUS[0]~input_o\,
	datad => \B[8]~input_o\,
	combout => \Add0~23_combout\);

\A[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

\Add0~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~50_combout\ = (\Add0~23_combout\ & ((\A[8]~input_o\ & (\Add0~49\ & VCC)) # (!\A[8]~input_o\ & (!\Add0~49\)))) # (!\Add0~23_combout\ & ((\A[8]~input_o\ & (!\Add0~49\)) # (!\A[8]~input_o\ & ((\Add0~49\) # (GND)))))
-- \Add0~51\ = CARRY((\Add0~23_combout\ & (!\A[8]~input_o\ & !\Add0~49\)) # (!\Add0~23_combout\ & ((!\Add0~49\) # (!\A[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~23_combout\,
	datab => \A[8]~input_o\,
	datad => VCC,
	cin => \Add0~49\,
	combout => \Add0~50_combout\,
	cout => \Add0~51\);

\Mux24~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux24~0_combout\ = (\Mux15~0_combout\ & ((\Mux15~1_combout\ & (\B[8]~input_o\)) # (!\Mux15~1_combout\ & ((\Add0~50_combout\))))) # (!\Mux15~0_combout\ & (((!\Mux15~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[8]~input_o\,
	datab => \Add0~50_combout\,
	datac => \Mux15~0_combout\,
	datad => \Mux15~1_combout\,
	combout => \Mux24~0_combout\);

\Mux24~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux24~1_combout\ = (\Mux15~2_combout\ & (((\Mux24~0_combout\)))) # (!\Mux15~2_combout\ & (\A[8]~input_o\ $ (((\B[8]~input_o\ & \Mux24~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[8]~input_o\,
	datab => \Mux24~0_combout\,
	datac => \Mux15~2_combout\,
	datad => \A[8]~input_o\,
	combout => \Mux24~1_combout\);

\Mux24~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux24~2_combout\ = (\ALUS[0]~input_o\ & ((\B[8]~input_o\) # (\A[8]~input_o\))) # (!\ALUS[0]~input_o\ & (\B[8]~input_o\ & \A[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUS[0]~input_o\,
	datab => \B[8]~input_o\,
	datac => \A[8]~input_o\,
	combout => \Mux24~2_combout\);

\Mux24~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux24~3_combout\ = (\ALUS[1]~input_o\ & ((\ALUS[2]~input_o\ & (\Mux24~1_combout\)) # (!\ALUS[2]~input_o\ & ((\Mux24~2_combout\))))) # (!\ALUS[1]~input_o\ & (\Mux24~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux24~1_combout\,
	datab => \Mux24~2_combout\,
	datac => \ALUS[1]~input_o\,
	datad => \ALUS[2]~input_o\,
	combout => \Mux24~3_combout\);

\B[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

\Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = \ALUS[0]~input_o\ $ (\B[9]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALUS[0]~input_o\,
	datad => \B[9]~input_o\,
	combout => \Add0~22_combout\);

\A[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

\Add0~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~52_combout\ = ((\Add0~22_combout\ $ (\A[9]~input_o\ $ (!\Add0~51\)))) # (GND)
-- \Add0~53\ = CARRY((\Add0~22_combout\ & ((\A[9]~input_o\) # (!\Add0~51\))) # (!\Add0~22_combout\ & (\A[9]~input_o\ & !\Add0~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~22_combout\,
	datab => \A[9]~input_o\,
	datad => VCC,
	cin => \Add0~51\,
	combout => \Add0~52_combout\,
	cout => \Add0~53\);

\Mux23~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux23~0_combout\ = (\Mux15~0_combout\ & ((\Mux15~1_combout\ & (\B[9]~input_o\)) # (!\Mux15~1_combout\ & ((\Add0~52_combout\))))) # (!\Mux15~0_combout\ & (((!\Mux15~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[9]~input_o\,
	datab => \Add0~52_combout\,
	datac => \Mux15~0_combout\,
	datad => \Mux15~1_combout\,
	combout => \Mux23~0_combout\);

\Mux23~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux23~1_combout\ = (\Mux15~2_combout\ & (((\Mux23~0_combout\)))) # (!\Mux15~2_combout\ & (\A[9]~input_o\ $ (((\B[9]~input_o\ & \Mux23~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[9]~input_o\,
	datab => \Mux23~0_combout\,
	datac => \Mux15~2_combout\,
	datad => \A[9]~input_o\,
	combout => \Mux23~1_combout\);

\Mux23~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux23~2_combout\ = (\ALUS[0]~input_o\ & ((\B[9]~input_o\) # (\A[9]~input_o\))) # (!\ALUS[0]~input_o\ & (\B[9]~input_o\ & \A[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUS[0]~input_o\,
	datab => \B[9]~input_o\,
	datac => \A[9]~input_o\,
	combout => \Mux23~2_combout\);

\Mux23~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux23~3_combout\ = (\ALUS[1]~input_o\ & ((\ALUS[2]~input_o\ & (\Mux23~1_combout\)) # (!\ALUS[2]~input_o\ & ((\Mux23~2_combout\))))) # (!\ALUS[1]~input_o\ & (\Mux23~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux23~1_combout\,
	datab => \Mux23~2_combout\,
	datac => \ALUS[1]~input_o\,
	datad => \ALUS[2]~input_o\,
	combout => \Mux23~3_combout\);

\B[10]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

\Add0~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~21_combout\ = \ALUS[0]~input_o\ $ (\B[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALUS[0]~input_o\,
	datad => \B[10]~input_o\,
	combout => \Add0~21_combout\);

\A[10]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

\Add0~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~54_combout\ = (\Add0~21_combout\ & ((\A[10]~input_o\ & (\Add0~53\ & VCC)) # (!\A[10]~input_o\ & (!\Add0~53\)))) # (!\Add0~21_combout\ & ((\A[10]~input_o\ & (!\Add0~53\)) # (!\A[10]~input_o\ & ((\Add0~53\) # (GND)))))
-- \Add0~55\ = CARRY((\Add0~21_combout\ & (!\A[10]~input_o\ & !\Add0~53\)) # (!\Add0~21_combout\ & ((!\Add0~53\) # (!\A[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~21_combout\,
	datab => \A[10]~input_o\,
	datad => VCC,
	cin => \Add0~53\,
	combout => \Add0~54_combout\,
	cout => \Add0~55\);

\Mux22~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux22~0_combout\ = (\Mux15~0_combout\ & ((\Mux15~1_combout\ & (\B[10]~input_o\)) # (!\Mux15~1_combout\ & ((\Add0~54_combout\))))) # (!\Mux15~0_combout\ & (((!\Mux15~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[10]~input_o\,
	datab => \Add0~54_combout\,
	datac => \Mux15~0_combout\,
	datad => \Mux15~1_combout\,
	combout => \Mux22~0_combout\);

\Mux22~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux22~1_combout\ = (\Mux15~2_combout\ & (((\Mux22~0_combout\)))) # (!\Mux15~2_combout\ & (\A[10]~input_o\ $ (((\B[10]~input_o\ & \Mux22~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[10]~input_o\,
	datab => \Mux22~0_combout\,
	datac => \Mux15~2_combout\,
	datad => \A[10]~input_o\,
	combout => \Mux22~1_combout\);

\Mux22~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux22~2_combout\ = (\ALUS[0]~input_o\ & ((\B[10]~input_o\) # (\A[10]~input_o\))) # (!\ALUS[0]~input_o\ & (\B[10]~input_o\ & \A[10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUS[0]~input_o\,
	datab => \B[10]~input_o\,
	datac => \A[10]~input_o\,
	combout => \Mux22~2_combout\);

\Mux22~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux22~3_combout\ = (\ALUS[1]~input_o\ & ((\ALUS[2]~input_o\ & (\Mux22~1_combout\)) # (!\ALUS[2]~input_o\ & ((\Mux22~2_combout\))))) # (!\ALUS[1]~input_o\ & (\Mux22~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux22~1_combout\,
	datab => \Mux22~2_combout\,
	datac => \ALUS[1]~input_o\,
	datad => \ALUS[2]~input_o\,
	combout => \Mux22~3_combout\);

\B[11]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

\Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = \ALUS[0]~input_o\ $ (\B[11]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALUS[0]~input_o\,
	datad => \B[11]~input_o\,
	combout => \Add0~20_combout\);

\A[11]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

\Add0~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~56_combout\ = ((\Add0~20_combout\ $ (\A[11]~input_o\ $ (!\Add0~55\)))) # (GND)
-- \Add0~57\ = CARRY((\Add0~20_combout\ & ((\A[11]~input_o\) # (!\Add0~55\))) # (!\Add0~20_combout\ & (\A[11]~input_o\ & !\Add0~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~20_combout\,
	datab => \A[11]~input_o\,
	datad => VCC,
	cin => \Add0~55\,
	combout => \Add0~56_combout\,
	cout => \Add0~57\);

\Mux21~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux21~0_combout\ = (\Mux15~0_combout\ & ((\Mux15~1_combout\ & (\B[11]~input_o\)) # (!\Mux15~1_combout\ & ((\Add0~56_combout\))))) # (!\Mux15~0_combout\ & (((!\Mux15~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[11]~input_o\,
	datab => \Add0~56_combout\,
	datac => \Mux15~0_combout\,
	datad => \Mux15~1_combout\,
	combout => \Mux21~0_combout\);

\Mux21~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux21~1_combout\ = (\Mux15~2_combout\ & (((\Mux21~0_combout\)))) # (!\Mux15~2_combout\ & (\A[11]~input_o\ $ (((\B[11]~input_o\ & \Mux21~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[11]~input_o\,
	datab => \Mux21~0_combout\,
	datac => \Mux15~2_combout\,
	datad => \A[11]~input_o\,
	combout => \Mux21~1_combout\);

\Mux21~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux21~2_combout\ = (\ALUS[0]~input_o\ & ((\B[11]~input_o\) # (\A[11]~input_o\))) # (!\ALUS[0]~input_o\ & (\B[11]~input_o\ & \A[11]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUS[0]~input_o\,
	datab => \B[11]~input_o\,
	datac => \A[11]~input_o\,
	combout => \Mux21~2_combout\);

\Mux21~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux21~3_combout\ = (\ALUS[1]~input_o\ & ((\ALUS[2]~input_o\ & (\Mux21~1_combout\)) # (!\ALUS[2]~input_o\ & ((\Mux21~2_combout\))))) # (!\ALUS[1]~input_o\ & (\Mux21~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux21~1_combout\,
	datab => \Mux21~2_combout\,
	datac => \ALUS[1]~input_o\,
	datad => \ALUS[2]~input_o\,
	combout => \Mux21~3_combout\);

\B[12]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

\Add0~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~19_combout\ = \ALUS[0]~input_o\ $ (\B[12]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALUS[0]~input_o\,
	datad => \B[12]~input_o\,
	combout => \Add0~19_combout\);

\A[12]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

\Add0~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~58_combout\ = (\Add0~19_combout\ & ((\A[12]~input_o\ & (\Add0~57\ & VCC)) # (!\A[12]~input_o\ & (!\Add0~57\)))) # (!\Add0~19_combout\ & ((\A[12]~input_o\ & (!\Add0~57\)) # (!\A[12]~input_o\ & ((\Add0~57\) # (GND)))))
-- \Add0~59\ = CARRY((\Add0~19_combout\ & (!\A[12]~input_o\ & !\Add0~57\)) # (!\Add0~19_combout\ & ((!\Add0~57\) # (!\A[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~19_combout\,
	datab => \A[12]~input_o\,
	datad => VCC,
	cin => \Add0~57\,
	combout => \Add0~58_combout\,
	cout => \Add0~59\);

\Mux20~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux20~0_combout\ = (\Mux15~0_combout\ & ((\Mux15~1_combout\ & (\B[12]~input_o\)) # (!\Mux15~1_combout\ & ((\Add0~58_combout\))))) # (!\Mux15~0_combout\ & (((!\Mux15~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[12]~input_o\,
	datab => \Add0~58_combout\,
	datac => \Mux15~0_combout\,
	datad => \Mux15~1_combout\,
	combout => \Mux20~0_combout\);

\Mux20~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux20~1_combout\ = (\Mux15~2_combout\ & (((\Mux20~0_combout\)))) # (!\Mux15~2_combout\ & (\A[12]~input_o\ $ (((\B[12]~input_o\ & \Mux20~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[12]~input_o\,
	datab => \Mux20~0_combout\,
	datac => \Mux15~2_combout\,
	datad => \A[12]~input_o\,
	combout => \Mux20~1_combout\);

\Mux20~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux20~2_combout\ = (\ALUS[0]~input_o\ & ((\B[12]~input_o\) # (\A[12]~input_o\))) # (!\ALUS[0]~input_o\ & (\B[12]~input_o\ & \A[12]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUS[0]~input_o\,
	datab => \B[12]~input_o\,
	datac => \A[12]~input_o\,
	combout => \Mux20~2_combout\);

\Mux20~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux20~3_combout\ = (\ALUS[1]~input_o\ & ((\ALUS[2]~input_o\ & (\Mux20~1_combout\)) # (!\ALUS[2]~input_o\ & ((\Mux20~2_combout\))))) # (!\ALUS[1]~input_o\ & (\Mux20~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux20~1_combout\,
	datab => \Mux20~2_combout\,
	datac => \ALUS[1]~input_o\,
	datad => \ALUS[2]~input_o\,
	combout => \Mux20~3_combout\);

\B[13]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

\Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = \ALUS[0]~input_o\ $ (\B[13]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALUS[0]~input_o\,
	datad => \B[13]~input_o\,
	combout => \Add0~18_combout\);

\A[13]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

\Add0~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~60_combout\ = ((\Add0~18_combout\ $ (\A[13]~input_o\ $ (!\Add0~59\)))) # (GND)
-- \Add0~61\ = CARRY((\Add0~18_combout\ & ((\A[13]~input_o\) # (!\Add0~59\))) # (!\Add0~18_combout\ & (\A[13]~input_o\ & !\Add0~59\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~18_combout\,
	datab => \A[13]~input_o\,
	datad => VCC,
	cin => \Add0~59\,
	combout => \Add0~60_combout\,
	cout => \Add0~61\);

\Mux19~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux19~0_combout\ = (\Mux15~0_combout\ & ((\Mux15~1_combout\ & (\B[13]~input_o\)) # (!\Mux15~1_combout\ & ((\Add0~60_combout\))))) # (!\Mux15~0_combout\ & (((!\Mux15~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[13]~input_o\,
	datab => \Add0~60_combout\,
	datac => \Mux15~0_combout\,
	datad => \Mux15~1_combout\,
	combout => \Mux19~0_combout\);

\Mux19~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux19~1_combout\ = (\Mux15~2_combout\ & (((\Mux19~0_combout\)))) # (!\Mux15~2_combout\ & (\A[13]~input_o\ $ (((\B[13]~input_o\ & \Mux19~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[13]~input_o\,
	datab => \Mux19~0_combout\,
	datac => \Mux15~2_combout\,
	datad => \A[13]~input_o\,
	combout => \Mux19~1_combout\);

\Mux19~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux19~2_combout\ = (\ALUS[0]~input_o\ & ((\B[13]~input_o\) # (\A[13]~input_o\))) # (!\ALUS[0]~input_o\ & (\B[13]~input_o\ & \A[13]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUS[0]~input_o\,
	datab => \B[13]~input_o\,
	datac => \A[13]~input_o\,
	combout => \Mux19~2_combout\);

\Mux19~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux19~3_combout\ = (\ALUS[1]~input_o\ & ((\ALUS[2]~input_o\ & (\Mux19~1_combout\)) # (!\ALUS[2]~input_o\ & ((\Mux19~2_combout\))))) # (!\ALUS[1]~input_o\ & (\Mux19~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux19~1_combout\,
	datab => \Mux19~2_combout\,
	datac => \ALUS[1]~input_o\,
	datad => \ALUS[2]~input_o\,
	combout => \Mux19~3_combout\);

\B[14]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

\Add0~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~17_combout\ = \ALUS[0]~input_o\ $ (\B[14]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALUS[0]~input_o\,
	datad => \B[14]~input_o\,
	combout => \Add0~17_combout\);

\A[14]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

\Add0~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~62_combout\ = (\Add0~17_combout\ & ((\A[14]~input_o\ & (\Add0~61\ & VCC)) # (!\A[14]~input_o\ & (!\Add0~61\)))) # (!\Add0~17_combout\ & ((\A[14]~input_o\ & (!\Add0~61\)) # (!\A[14]~input_o\ & ((\Add0~61\) # (GND)))))
-- \Add0~63\ = CARRY((\Add0~17_combout\ & (!\A[14]~input_o\ & !\Add0~61\)) # (!\Add0~17_combout\ & ((!\Add0~61\) # (!\A[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~17_combout\,
	datab => \A[14]~input_o\,
	datad => VCC,
	cin => \Add0~61\,
	combout => \Add0~62_combout\,
	cout => \Add0~63\);

\Mux18~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux18~0_combout\ = (\Mux15~0_combout\ & ((\Mux15~1_combout\ & (\B[14]~input_o\)) # (!\Mux15~1_combout\ & ((\Add0~62_combout\))))) # (!\Mux15~0_combout\ & (((!\Mux15~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[14]~input_o\,
	datab => \Add0~62_combout\,
	datac => \Mux15~0_combout\,
	datad => \Mux15~1_combout\,
	combout => \Mux18~0_combout\);

\Mux18~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux18~1_combout\ = (\Mux15~2_combout\ & (((\Mux18~0_combout\)))) # (!\Mux15~2_combout\ & (\A[14]~input_o\ $ (((\B[14]~input_o\ & \Mux18~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[14]~input_o\,
	datab => \Mux18~0_combout\,
	datac => \Mux15~2_combout\,
	datad => \A[14]~input_o\,
	combout => \Mux18~1_combout\);

\Mux18~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux18~2_combout\ = (\ALUS[0]~input_o\ & ((\B[14]~input_o\) # (\A[14]~input_o\))) # (!\ALUS[0]~input_o\ & (\B[14]~input_o\ & \A[14]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUS[0]~input_o\,
	datab => \B[14]~input_o\,
	datac => \A[14]~input_o\,
	combout => \Mux18~2_combout\);

\Mux18~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux18~3_combout\ = (\ALUS[1]~input_o\ & ((\ALUS[2]~input_o\ & (\Mux18~1_combout\)) # (!\ALUS[2]~input_o\ & ((\Mux18~2_combout\))))) # (!\ALUS[1]~input_o\ & (\Mux18~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux18~1_combout\,
	datab => \Mux18~2_combout\,
	datac => \ALUS[1]~input_o\,
	datad => \ALUS[2]~input_o\,
	combout => \Mux18~3_combout\);

\B[15]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

\Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = \ALUS[0]~input_o\ $ (\B[15]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALUS[0]~input_o\,
	datad => \B[15]~input_o\,
	combout => \Add0~16_combout\);

\A[15]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

\Add0~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~64_combout\ = ((\Add0~16_combout\ $ (\A[15]~input_o\ $ (!\Add0~63\)))) # (GND)
-- \Add0~65\ = CARRY((\Add0~16_combout\ & ((\A[15]~input_o\) # (!\Add0~63\))) # (!\Add0~16_combout\ & (\A[15]~input_o\ & !\Add0~63\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~16_combout\,
	datab => \A[15]~input_o\,
	datad => VCC,
	cin => \Add0~63\,
	combout => \Add0~64_combout\,
	cout => \Add0~65\);

\Mux17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux17~0_combout\ = (\Mux15~0_combout\ & ((\Mux15~1_combout\ & (\B[15]~input_o\)) # (!\Mux15~1_combout\ & ((\Add0~64_combout\))))) # (!\Mux15~0_combout\ & (((!\Mux15~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[15]~input_o\,
	datab => \Add0~64_combout\,
	datac => \Mux15~0_combout\,
	datad => \Mux15~1_combout\,
	combout => \Mux17~0_combout\);

\Mux17~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux17~1_combout\ = (\Mux15~2_combout\ & (((\Mux17~0_combout\)))) # (!\Mux15~2_combout\ & (\A[15]~input_o\ $ (((\B[15]~input_o\ & \Mux17~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[15]~input_o\,
	datab => \Mux17~0_combout\,
	datac => \Mux15~2_combout\,
	datad => \A[15]~input_o\,
	combout => \Mux17~1_combout\);

\Mux17~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux17~2_combout\ = (\ALUS[0]~input_o\ & ((\B[15]~input_o\) # (\A[15]~input_o\))) # (!\ALUS[0]~input_o\ & (\B[15]~input_o\ & \A[15]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUS[0]~input_o\,
	datab => \B[15]~input_o\,
	datac => \A[15]~input_o\,
	combout => \Mux17~2_combout\);

\Mux17~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux17~3_combout\ = (\ALUS[1]~input_o\ & ((\ALUS[2]~input_o\ & (\Mux17~1_combout\)) # (!\ALUS[2]~input_o\ & ((\Mux17~2_combout\))))) # (!\ALUS[1]~input_o\ & (\Mux17~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux17~1_combout\,
	datab => \Mux17~2_combout\,
	datac => \ALUS[1]~input_o\,
	datad => \ALUS[2]~input_o\,
	combout => \Mux17~3_combout\);

\B[16]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(16),
	o => \B[16]~input_o\);

\Add0~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~15_combout\ = \ALUS[0]~input_o\ $ (\B[16]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALUS[0]~input_o\,
	datad => \B[16]~input_o\,
	combout => \Add0~15_combout\);

\A[16]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(16),
	o => \A[16]~input_o\);

\Add0~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~66_combout\ = (\Add0~15_combout\ & ((\A[16]~input_o\ & (\Add0~65\ & VCC)) # (!\A[16]~input_o\ & (!\Add0~65\)))) # (!\Add0~15_combout\ & ((\A[16]~input_o\ & (!\Add0~65\)) # (!\A[16]~input_o\ & ((\Add0~65\) # (GND)))))
-- \Add0~67\ = CARRY((\Add0~15_combout\ & (!\A[16]~input_o\ & !\Add0~65\)) # (!\Add0~15_combout\ & ((!\Add0~65\) # (!\A[16]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~15_combout\,
	datab => \A[16]~input_o\,
	datad => VCC,
	cin => \Add0~65\,
	combout => \Add0~66_combout\,
	cout => \Add0~67\);

\Mux16~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux16~0_combout\ = (\Mux15~0_combout\ & ((\Mux15~1_combout\ & (\B[16]~input_o\)) # (!\Mux15~1_combout\ & ((\Add0~66_combout\))))) # (!\Mux15~0_combout\ & (((!\Mux15~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[16]~input_o\,
	datab => \Add0~66_combout\,
	datac => \Mux15~0_combout\,
	datad => \Mux15~1_combout\,
	combout => \Mux16~0_combout\);

\Mux16~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux16~1_combout\ = (\Mux15~2_combout\ & (((\Mux16~0_combout\)))) # (!\Mux15~2_combout\ & (\A[16]~input_o\ $ (((\B[16]~input_o\ & \Mux16~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[16]~input_o\,
	datab => \Mux16~0_combout\,
	datac => \Mux15~2_combout\,
	datad => \A[16]~input_o\,
	combout => \Mux16~1_combout\);

\Mux16~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux16~2_combout\ = (\ALUS[0]~input_o\ & ((\B[16]~input_o\) # (\A[16]~input_o\))) # (!\ALUS[0]~input_o\ & (\B[16]~input_o\ & \A[16]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUS[0]~input_o\,
	datab => \B[16]~input_o\,
	datac => \A[16]~input_o\,
	combout => \Mux16~2_combout\);

\Mux16~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux16~3_combout\ = (\ALUS[1]~input_o\ & ((\ALUS[2]~input_o\ & (\Mux16~1_combout\)) # (!\ALUS[2]~input_o\ & ((\Mux16~2_combout\))))) # (!\ALUS[1]~input_o\ & (\Mux16~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux16~1_combout\,
	datab => \Mux16~2_combout\,
	datac => \ALUS[1]~input_o\,
	datad => \ALUS[2]~input_o\,
	combout => \Mux16~3_combout\);

\B[17]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(17),
	o => \B[17]~input_o\);

\Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = \ALUS[0]~input_o\ $ (\B[17]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALUS[0]~input_o\,
	datad => \B[17]~input_o\,
	combout => \Add0~14_combout\);

\A[17]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(17),
	o => \A[17]~input_o\);

\Add0~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~68_combout\ = ((\Add0~14_combout\ $ (\A[17]~input_o\ $ (!\Add0~67\)))) # (GND)
-- \Add0~69\ = CARRY((\Add0~14_combout\ & ((\A[17]~input_o\) # (!\Add0~67\))) # (!\Add0~14_combout\ & (\A[17]~input_o\ & !\Add0~67\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~14_combout\,
	datab => \A[17]~input_o\,
	datad => VCC,
	cin => \Add0~67\,
	combout => \Add0~68_combout\,
	cout => \Add0~69\);

\Mux15~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux15~3_combout\ = (\Mux15~0_combout\ & ((\Mux15~1_combout\ & (\B[17]~input_o\)) # (!\Mux15~1_combout\ & ((\Add0~68_combout\))))) # (!\Mux15~0_combout\ & (((!\Mux15~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[17]~input_o\,
	datab => \Add0~68_combout\,
	datac => \Mux15~0_combout\,
	datad => \Mux15~1_combout\,
	combout => \Mux15~3_combout\);

\Mux15~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux15~4_combout\ = (\Mux15~2_combout\ & (((\Mux15~3_combout\)))) # (!\Mux15~2_combout\ & (\A[17]~input_o\ $ (((\B[17]~input_o\ & \Mux15~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[17]~input_o\,
	datab => \Mux15~3_combout\,
	datac => \Mux15~2_combout\,
	datad => \A[17]~input_o\,
	combout => \Mux15~4_combout\);

\Mux15~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux15~5_combout\ = (\ALUS[0]~input_o\ & ((\B[17]~input_o\) # (\A[17]~input_o\))) # (!\ALUS[0]~input_o\ & (\B[17]~input_o\ & \A[17]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUS[0]~input_o\,
	datab => \B[17]~input_o\,
	datac => \A[17]~input_o\,
	combout => \Mux15~5_combout\);

\Mux15~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux15~6_combout\ = (\ALUS[1]~input_o\ & ((\ALUS[2]~input_o\ & (\Mux15~4_combout\)) # (!\ALUS[2]~input_o\ & ((\Mux15~5_combout\))))) # (!\ALUS[1]~input_o\ & (\Mux15~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~4_combout\,
	datab => \Mux15~5_combout\,
	datac => \ALUS[1]~input_o\,
	datad => \ALUS[2]~input_o\,
	combout => \Mux15~6_combout\);

\B[18]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(18),
	o => \B[18]~input_o\);

\Add0~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~13_combout\ = \ALUS[0]~input_o\ $ (\B[18]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALUS[0]~input_o\,
	datad => \B[18]~input_o\,
	combout => \Add0~13_combout\);

\A[18]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(18),
	o => \A[18]~input_o\);

\Add0~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~70_combout\ = (\Add0~13_combout\ & ((\A[18]~input_o\ & (\Add0~69\ & VCC)) # (!\A[18]~input_o\ & (!\Add0~69\)))) # (!\Add0~13_combout\ & ((\A[18]~input_o\ & (!\Add0~69\)) # (!\A[18]~input_o\ & ((\Add0~69\) # (GND)))))
-- \Add0~71\ = CARRY((\Add0~13_combout\ & (!\A[18]~input_o\ & !\Add0~69\)) # (!\Add0~13_combout\ & ((!\Add0~69\) # (!\A[18]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~13_combout\,
	datab => \A[18]~input_o\,
	datad => VCC,
	cin => \Add0~69\,
	combout => \Add0~70_combout\,
	cout => \Add0~71\);

\Mux14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = (\Mux15~0_combout\ & ((\Mux15~1_combout\ & (\B[18]~input_o\)) # (!\Mux15~1_combout\ & ((\Add0~70_combout\))))) # (!\Mux15~0_combout\ & (((!\Mux15~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[18]~input_o\,
	datab => \Add0~70_combout\,
	datac => \Mux15~0_combout\,
	datad => \Mux15~1_combout\,
	combout => \Mux14~0_combout\);

\Mux14~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux14~1_combout\ = (\Mux15~2_combout\ & (((\Mux14~0_combout\)))) # (!\Mux15~2_combout\ & (\A[18]~input_o\ $ (((\B[18]~input_o\ & \Mux14~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[18]~input_o\,
	datab => \Mux14~0_combout\,
	datac => \Mux15~2_combout\,
	datad => \A[18]~input_o\,
	combout => \Mux14~1_combout\);

\Mux14~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux14~2_combout\ = (\ALUS[0]~input_o\ & ((\B[18]~input_o\) # (\A[18]~input_o\))) # (!\ALUS[0]~input_o\ & (\B[18]~input_o\ & \A[18]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUS[0]~input_o\,
	datab => \B[18]~input_o\,
	datac => \A[18]~input_o\,
	combout => \Mux14~2_combout\);

\Mux14~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux14~3_combout\ = (\ALUS[1]~input_o\ & ((\ALUS[2]~input_o\ & (\Mux14~1_combout\)) # (!\ALUS[2]~input_o\ & ((\Mux14~2_combout\))))) # (!\ALUS[1]~input_o\ & (\Mux14~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~1_combout\,
	datab => \Mux14~2_combout\,
	datac => \ALUS[1]~input_o\,
	datad => \ALUS[2]~input_o\,
	combout => \Mux14~3_combout\);

\B[19]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(19),
	o => \B[19]~input_o\);

\Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = \ALUS[0]~input_o\ $ (\B[19]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALUS[0]~input_o\,
	datad => \B[19]~input_o\,
	combout => \Add0~12_combout\);

\A[19]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(19),
	o => \A[19]~input_o\);

\Add0~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~72_combout\ = ((\Add0~12_combout\ $ (\A[19]~input_o\ $ (!\Add0~71\)))) # (GND)
-- \Add0~73\ = CARRY((\Add0~12_combout\ & ((\A[19]~input_o\) # (!\Add0~71\))) # (!\Add0~12_combout\ & (\A[19]~input_o\ & !\Add0~71\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~12_combout\,
	datab => \A[19]~input_o\,
	datad => VCC,
	cin => \Add0~71\,
	combout => \Add0~72_combout\,
	cout => \Add0~73\);

\Mux13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (\Mux15~0_combout\ & ((\Mux15~1_combout\ & (\B[19]~input_o\)) # (!\Mux15~1_combout\ & ((\Add0~72_combout\))))) # (!\Mux15~0_combout\ & (((!\Mux15~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[19]~input_o\,
	datab => \Add0~72_combout\,
	datac => \Mux15~0_combout\,
	datad => \Mux15~1_combout\,
	combout => \Mux13~0_combout\);

\Mux13~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux13~1_combout\ = (\Mux15~2_combout\ & (((\Mux13~0_combout\)))) # (!\Mux15~2_combout\ & (\A[19]~input_o\ $ (((\B[19]~input_o\ & \Mux13~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[19]~input_o\,
	datab => \Mux13~0_combout\,
	datac => \Mux15~2_combout\,
	datad => \A[19]~input_o\,
	combout => \Mux13~1_combout\);

\Mux13~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux13~2_combout\ = (\ALUS[0]~input_o\ & ((\B[19]~input_o\) # (\A[19]~input_o\))) # (!\ALUS[0]~input_o\ & (\B[19]~input_o\ & \A[19]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUS[0]~input_o\,
	datab => \B[19]~input_o\,
	datac => \A[19]~input_o\,
	combout => \Mux13~2_combout\);

\Mux13~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux13~3_combout\ = (\ALUS[1]~input_o\ & ((\ALUS[2]~input_o\ & (\Mux13~1_combout\)) # (!\ALUS[2]~input_o\ & ((\Mux13~2_combout\))))) # (!\ALUS[1]~input_o\ & (\Mux13~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~1_combout\,
	datab => \Mux13~2_combout\,
	datac => \ALUS[1]~input_o\,
	datad => \ALUS[2]~input_o\,
	combout => \Mux13~3_combout\);

\B[20]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(20),
	o => \B[20]~input_o\);

\Add0~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~11_combout\ = \ALUS[0]~input_o\ $ (\B[20]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALUS[0]~input_o\,
	datad => \B[20]~input_o\,
	combout => \Add0~11_combout\);

\A[20]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(20),
	o => \A[20]~input_o\);

\Add0~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~74_combout\ = (\Add0~11_combout\ & ((\A[20]~input_o\ & (\Add0~73\ & VCC)) # (!\A[20]~input_o\ & (!\Add0~73\)))) # (!\Add0~11_combout\ & ((\A[20]~input_o\ & (!\Add0~73\)) # (!\A[20]~input_o\ & ((\Add0~73\) # (GND)))))
-- \Add0~75\ = CARRY((\Add0~11_combout\ & (!\A[20]~input_o\ & !\Add0~73\)) # (!\Add0~11_combout\ & ((!\Add0~73\) # (!\A[20]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~11_combout\,
	datab => \A[20]~input_o\,
	datad => VCC,
	cin => \Add0~73\,
	combout => \Add0~74_combout\,
	cout => \Add0~75\);

\Mux12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (\Mux15~0_combout\ & ((\Mux15~1_combout\ & (\B[20]~input_o\)) # (!\Mux15~1_combout\ & ((\Add0~74_combout\))))) # (!\Mux15~0_combout\ & (((!\Mux15~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[20]~input_o\,
	datab => \Add0~74_combout\,
	datac => \Mux15~0_combout\,
	datad => \Mux15~1_combout\,
	combout => \Mux12~0_combout\);

\Mux12~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux12~1_combout\ = (\Mux15~2_combout\ & (((\Mux12~0_combout\)))) # (!\Mux15~2_combout\ & (\A[20]~input_o\ $ (((\B[20]~input_o\ & \Mux12~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[20]~input_o\,
	datab => \Mux12~0_combout\,
	datac => \Mux15~2_combout\,
	datad => \A[20]~input_o\,
	combout => \Mux12~1_combout\);

\Mux12~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux12~2_combout\ = (\ALUS[0]~input_o\ & ((\B[20]~input_o\) # (\A[20]~input_o\))) # (!\ALUS[0]~input_o\ & (\B[20]~input_o\ & \A[20]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUS[0]~input_o\,
	datab => \B[20]~input_o\,
	datac => \A[20]~input_o\,
	combout => \Mux12~2_combout\);

\Mux12~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux12~3_combout\ = (\ALUS[1]~input_o\ & ((\ALUS[2]~input_o\ & (\Mux12~1_combout\)) # (!\ALUS[2]~input_o\ & ((\Mux12~2_combout\))))) # (!\ALUS[1]~input_o\ & (\Mux12~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~1_combout\,
	datab => \Mux12~2_combout\,
	datac => \ALUS[1]~input_o\,
	datad => \ALUS[2]~input_o\,
	combout => \Mux12~3_combout\);

\B[21]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(21),
	o => \B[21]~input_o\);

\Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = \ALUS[0]~input_o\ $ (\B[21]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALUS[0]~input_o\,
	datad => \B[21]~input_o\,
	combout => \Add0~10_combout\);

\A[21]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(21),
	o => \A[21]~input_o\);

\Add0~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~76_combout\ = ((\Add0~10_combout\ $ (\A[21]~input_o\ $ (!\Add0~75\)))) # (GND)
-- \Add0~77\ = CARRY((\Add0~10_combout\ & ((\A[21]~input_o\) # (!\Add0~75\))) # (!\Add0~10_combout\ & (\A[21]~input_o\ & !\Add0~75\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~10_combout\,
	datab => \A[21]~input_o\,
	datad => VCC,
	cin => \Add0~75\,
	combout => \Add0~76_combout\,
	cout => \Add0~77\);

\Mux11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (\Mux15~0_combout\ & ((\Mux15~1_combout\ & (\B[21]~input_o\)) # (!\Mux15~1_combout\ & ((\Add0~76_combout\))))) # (!\Mux15~0_combout\ & (((!\Mux15~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[21]~input_o\,
	datab => \Add0~76_combout\,
	datac => \Mux15~0_combout\,
	datad => \Mux15~1_combout\,
	combout => \Mux11~0_combout\);

\Mux11~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux11~1_combout\ = (\Mux15~2_combout\ & (((\Mux11~0_combout\)))) # (!\Mux15~2_combout\ & (\A[21]~input_o\ $ (((\B[21]~input_o\ & \Mux11~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[21]~input_o\,
	datab => \Mux11~0_combout\,
	datac => \Mux15~2_combout\,
	datad => \A[21]~input_o\,
	combout => \Mux11~1_combout\);

\Mux11~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux11~2_combout\ = (\ALUS[0]~input_o\ & ((\B[21]~input_o\) # (\A[21]~input_o\))) # (!\ALUS[0]~input_o\ & (\B[21]~input_o\ & \A[21]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUS[0]~input_o\,
	datab => \B[21]~input_o\,
	datac => \A[21]~input_o\,
	combout => \Mux11~2_combout\);

\Mux11~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux11~3_combout\ = (\ALUS[1]~input_o\ & ((\ALUS[2]~input_o\ & (\Mux11~1_combout\)) # (!\ALUS[2]~input_o\ & ((\Mux11~2_combout\))))) # (!\ALUS[1]~input_o\ & (\Mux11~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~1_combout\,
	datab => \Mux11~2_combout\,
	datac => \ALUS[1]~input_o\,
	datad => \ALUS[2]~input_o\,
	combout => \Mux11~3_combout\);

\B[22]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(22),
	o => \B[22]~input_o\);

\Add0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~9_combout\ = \ALUS[0]~input_o\ $ (\B[22]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALUS[0]~input_o\,
	datad => \B[22]~input_o\,
	combout => \Add0~9_combout\);

\A[22]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(22),
	o => \A[22]~input_o\);

\Add0~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~78_combout\ = (\Add0~9_combout\ & ((\A[22]~input_o\ & (\Add0~77\ & VCC)) # (!\A[22]~input_o\ & (!\Add0~77\)))) # (!\Add0~9_combout\ & ((\A[22]~input_o\ & (!\Add0~77\)) # (!\A[22]~input_o\ & ((\Add0~77\) # (GND)))))
-- \Add0~79\ = CARRY((\Add0~9_combout\ & (!\A[22]~input_o\ & !\Add0~77\)) # (!\Add0~9_combout\ & ((!\Add0~77\) # (!\A[22]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~9_combout\,
	datab => \A[22]~input_o\,
	datad => VCC,
	cin => \Add0~77\,
	combout => \Add0~78_combout\,
	cout => \Add0~79\);

\Mux10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (\Mux15~0_combout\ & ((\Mux15~1_combout\ & (\B[22]~input_o\)) # (!\Mux15~1_combout\ & ((\Add0~78_combout\))))) # (!\Mux15~0_combout\ & (((!\Mux15~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[22]~input_o\,
	datab => \Add0~78_combout\,
	datac => \Mux15~0_combout\,
	datad => \Mux15~1_combout\,
	combout => \Mux10~0_combout\);

\Mux10~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux10~1_combout\ = (\Mux15~2_combout\ & (((\Mux10~0_combout\)))) # (!\Mux15~2_combout\ & (\A[22]~input_o\ $ (((\B[22]~input_o\ & \Mux10~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[22]~input_o\,
	datab => \Mux10~0_combout\,
	datac => \Mux15~2_combout\,
	datad => \A[22]~input_o\,
	combout => \Mux10~1_combout\);

\Mux10~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux10~2_combout\ = (\ALUS[0]~input_o\ & ((\B[22]~input_o\) # (\A[22]~input_o\))) # (!\ALUS[0]~input_o\ & (\B[22]~input_o\ & \A[22]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUS[0]~input_o\,
	datab => \B[22]~input_o\,
	datac => \A[22]~input_o\,
	combout => \Mux10~2_combout\);

\Mux10~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux10~3_combout\ = (\ALUS[1]~input_o\ & ((\ALUS[2]~input_o\ & (\Mux10~1_combout\)) # (!\ALUS[2]~input_o\ & ((\Mux10~2_combout\))))) # (!\ALUS[1]~input_o\ & (\Mux10~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~1_combout\,
	datab => \Mux10~2_combout\,
	datac => \ALUS[1]~input_o\,
	datad => \ALUS[2]~input_o\,
	combout => \Mux10~3_combout\);

\B[23]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(23),
	o => \B[23]~input_o\);

\Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = \ALUS[0]~input_o\ $ (\B[23]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALUS[0]~input_o\,
	datad => \B[23]~input_o\,
	combout => \Add0~8_combout\);

\A[23]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(23),
	o => \A[23]~input_o\);

\Add0~80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~80_combout\ = ((\Add0~8_combout\ $ (\A[23]~input_o\ $ (!\Add0~79\)))) # (GND)
-- \Add0~81\ = CARRY((\Add0~8_combout\ & ((\A[23]~input_o\) # (!\Add0~79\))) # (!\Add0~8_combout\ & (\A[23]~input_o\ & !\Add0~79\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~8_combout\,
	datab => \A[23]~input_o\,
	datad => VCC,
	cin => \Add0~79\,
	combout => \Add0~80_combout\,
	cout => \Add0~81\);

\Mux9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (\Mux15~0_combout\ & ((\Mux15~1_combout\ & (\B[23]~input_o\)) # (!\Mux15~1_combout\ & ((\Add0~80_combout\))))) # (!\Mux15~0_combout\ & (((!\Mux15~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[23]~input_o\,
	datab => \Add0~80_combout\,
	datac => \Mux15~0_combout\,
	datad => \Mux15~1_combout\,
	combout => \Mux9~0_combout\);

\Mux9~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux9~1_combout\ = (\Mux15~2_combout\ & (((\Mux9~0_combout\)))) # (!\Mux15~2_combout\ & (\A[23]~input_o\ $ (((\B[23]~input_o\ & \Mux9~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[23]~input_o\,
	datab => \Mux9~0_combout\,
	datac => \Mux15~2_combout\,
	datad => \A[23]~input_o\,
	combout => \Mux9~1_combout\);

\Mux9~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux9~2_combout\ = (\ALUS[0]~input_o\ & ((\B[23]~input_o\) # (\A[23]~input_o\))) # (!\ALUS[0]~input_o\ & (\B[23]~input_o\ & \A[23]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUS[0]~input_o\,
	datab => \B[23]~input_o\,
	datac => \A[23]~input_o\,
	combout => \Mux9~2_combout\);

\Mux9~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux9~3_combout\ = (\ALUS[1]~input_o\ & ((\ALUS[2]~input_o\ & (\Mux9~1_combout\)) # (!\ALUS[2]~input_o\ & ((\Mux9~2_combout\))))) # (!\ALUS[1]~input_o\ & (\Mux9~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux9~1_combout\,
	datab => \Mux9~2_combout\,
	datac => \ALUS[1]~input_o\,
	datad => \ALUS[2]~input_o\,
	combout => \Mux9~3_combout\);

\B[24]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(24),
	o => \B[24]~input_o\);

\Add0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~7_combout\ = \ALUS[0]~input_o\ $ (\B[24]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALUS[0]~input_o\,
	datad => \B[24]~input_o\,
	combout => \Add0~7_combout\);

\A[24]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(24),
	o => \A[24]~input_o\);

\Add0~82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~82_combout\ = (\Add0~7_combout\ & ((\A[24]~input_o\ & (\Add0~81\ & VCC)) # (!\A[24]~input_o\ & (!\Add0~81\)))) # (!\Add0~7_combout\ & ((\A[24]~input_o\ & (!\Add0~81\)) # (!\A[24]~input_o\ & ((\Add0~81\) # (GND)))))
-- \Add0~83\ = CARRY((\Add0~7_combout\ & (!\A[24]~input_o\ & !\Add0~81\)) # (!\Add0~7_combout\ & ((!\Add0~81\) # (!\A[24]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~7_combout\,
	datab => \A[24]~input_o\,
	datad => VCC,
	cin => \Add0~81\,
	combout => \Add0~82_combout\,
	cout => \Add0~83\);

\Mux8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (\Mux15~0_combout\ & ((\Mux15~1_combout\ & (\B[24]~input_o\)) # (!\Mux15~1_combout\ & ((\Add0~82_combout\))))) # (!\Mux15~0_combout\ & (((!\Mux15~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[24]~input_o\,
	datab => \Add0~82_combout\,
	datac => \Mux15~0_combout\,
	datad => \Mux15~1_combout\,
	combout => \Mux8~0_combout\);

\Mux8~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux8~1_combout\ = (\Mux15~2_combout\ & (((\Mux8~0_combout\)))) # (!\Mux15~2_combout\ & (\A[24]~input_o\ $ (((\B[24]~input_o\ & \Mux8~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[24]~input_o\,
	datab => \Mux8~0_combout\,
	datac => \Mux15~2_combout\,
	datad => \A[24]~input_o\,
	combout => \Mux8~1_combout\);

\Mux8~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux8~2_combout\ = (\ALUS[0]~input_o\ & ((\B[24]~input_o\) # (\A[24]~input_o\))) # (!\ALUS[0]~input_o\ & (\B[24]~input_o\ & \A[24]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUS[0]~input_o\,
	datab => \B[24]~input_o\,
	datac => \A[24]~input_o\,
	combout => \Mux8~2_combout\);

\Mux8~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux8~3_combout\ = (\ALUS[1]~input_o\ & ((\ALUS[2]~input_o\ & (\Mux8~1_combout\)) # (!\ALUS[2]~input_o\ & ((\Mux8~2_combout\))))) # (!\ALUS[1]~input_o\ & (\Mux8~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~1_combout\,
	datab => \Mux8~2_combout\,
	datac => \ALUS[1]~input_o\,
	datad => \ALUS[2]~input_o\,
	combout => \Mux8~3_combout\);

\B[25]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(25),
	o => \B[25]~input_o\);

\Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = \ALUS[0]~input_o\ $ (\B[25]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALUS[0]~input_o\,
	datad => \B[25]~input_o\,
	combout => \Add0~6_combout\);

\A[25]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(25),
	o => \A[25]~input_o\);

\Add0~84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~84_combout\ = ((\Add0~6_combout\ $ (\A[25]~input_o\ $ (!\Add0~83\)))) # (GND)
-- \Add0~85\ = CARRY((\Add0~6_combout\ & ((\A[25]~input_o\) # (!\Add0~83\))) # (!\Add0~6_combout\ & (\A[25]~input_o\ & !\Add0~83\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datab => \A[25]~input_o\,
	datad => VCC,
	cin => \Add0~83\,
	combout => \Add0~84_combout\,
	cout => \Add0~85\);

\Mux7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (\Mux15~0_combout\ & ((\Mux15~1_combout\ & (\B[25]~input_o\)) # (!\Mux15~1_combout\ & ((\Add0~84_combout\))))) # (!\Mux15~0_combout\ & (((!\Mux15~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[25]~input_o\,
	datab => \Add0~84_combout\,
	datac => \Mux15~0_combout\,
	datad => \Mux15~1_combout\,
	combout => \Mux7~0_combout\);

\Mux7~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~1_combout\ = (\Mux15~2_combout\ & (((\Mux7~0_combout\)))) # (!\Mux15~2_combout\ & (\A[25]~input_o\ $ (((\B[25]~input_o\ & \Mux7~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[25]~input_o\,
	datab => \Mux7~0_combout\,
	datac => \Mux15~2_combout\,
	datad => \A[25]~input_o\,
	combout => \Mux7~1_combout\);

\Mux7~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~2_combout\ = (\ALUS[0]~input_o\ & ((\B[25]~input_o\) # (\A[25]~input_o\))) # (!\ALUS[0]~input_o\ & (\B[25]~input_o\ & \A[25]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUS[0]~input_o\,
	datab => \B[25]~input_o\,
	datac => \A[25]~input_o\,
	combout => \Mux7~2_combout\);

\Mux7~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~3_combout\ = (\ALUS[1]~input_o\ & ((\ALUS[2]~input_o\ & (\Mux7~1_combout\)) # (!\ALUS[2]~input_o\ & ((\Mux7~2_combout\))))) # (!\ALUS[1]~input_o\ & (\Mux7~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~1_combout\,
	datab => \Mux7~2_combout\,
	datac => \ALUS[1]~input_o\,
	datad => \ALUS[2]~input_o\,
	combout => \Mux7~3_combout\);

\B[26]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(26),
	o => \B[26]~input_o\);

\Add0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~5_combout\ = \ALUS[0]~input_o\ $ (\B[26]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALUS[0]~input_o\,
	datad => \B[26]~input_o\,
	combout => \Add0~5_combout\);

\A[26]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(26),
	o => \A[26]~input_o\);

\Add0~86\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~86_combout\ = (\Add0~5_combout\ & ((\A[26]~input_o\ & (\Add0~85\ & VCC)) # (!\A[26]~input_o\ & (!\Add0~85\)))) # (!\Add0~5_combout\ & ((\A[26]~input_o\ & (!\Add0~85\)) # (!\A[26]~input_o\ & ((\Add0~85\) # (GND)))))
-- \Add0~87\ = CARRY((\Add0~5_combout\ & (!\A[26]~input_o\ & !\Add0~85\)) # (!\Add0~5_combout\ & ((!\Add0~85\) # (!\A[26]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~5_combout\,
	datab => \A[26]~input_o\,
	datad => VCC,
	cin => \Add0~85\,
	combout => \Add0~86_combout\,
	cout => \Add0~87\);

\Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\Mux15~0_combout\ & ((\Mux15~1_combout\ & (\B[26]~input_o\)) # (!\Mux15~1_combout\ & ((\Add0~86_combout\))))) # (!\Mux15~0_combout\ & (((!\Mux15~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[26]~input_o\,
	datab => \Add0~86_combout\,
	datac => \Mux15~0_combout\,
	datad => \Mux15~1_combout\,
	combout => \Mux6~0_combout\);

\Mux6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = (\Mux15~2_combout\ & (((\Mux6~0_combout\)))) # (!\Mux15~2_combout\ & (\A[26]~input_o\ $ (((\B[26]~input_o\ & \Mux6~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[26]~input_o\,
	datab => \Mux6~0_combout\,
	datac => \Mux15~2_combout\,
	datad => \A[26]~input_o\,
	combout => \Mux6~1_combout\);

\Mux6~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~2_combout\ = (\ALUS[0]~input_o\ & ((\B[26]~input_o\) # (\A[26]~input_o\))) # (!\ALUS[0]~input_o\ & (\B[26]~input_o\ & \A[26]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUS[0]~input_o\,
	datab => \B[26]~input_o\,
	datac => \A[26]~input_o\,
	combout => \Mux6~2_combout\);

\Mux6~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~3_combout\ = (\ALUS[1]~input_o\ & ((\ALUS[2]~input_o\ & (\Mux6~1_combout\)) # (!\ALUS[2]~input_o\ & ((\Mux6~2_combout\))))) # (!\ALUS[1]~input_o\ & (\Mux6~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~1_combout\,
	datab => \Mux6~2_combout\,
	datac => \ALUS[1]~input_o\,
	datad => \ALUS[2]~input_o\,
	combout => \Mux6~3_combout\);

\B[27]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(27),
	o => \B[27]~input_o\);

\Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = \ALUS[0]~input_o\ $ (\B[27]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALUS[0]~input_o\,
	datad => \B[27]~input_o\,
	combout => \Add0~4_combout\);

\A[27]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(27),
	o => \A[27]~input_o\);

\Add0~88\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~88_combout\ = ((\Add0~4_combout\ $ (\A[27]~input_o\ $ (!\Add0~87\)))) # (GND)
-- \Add0~89\ = CARRY((\Add0~4_combout\ & ((\A[27]~input_o\) # (!\Add0~87\))) # (!\Add0~4_combout\ & (\A[27]~input_o\ & !\Add0~87\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datab => \A[27]~input_o\,
	datad => VCC,
	cin => \Add0~87\,
	combout => \Add0~88_combout\,
	cout => \Add0~89\);

\Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\Mux15~0_combout\ & ((\Mux15~1_combout\ & (\B[27]~input_o\)) # (!\Mux15~1_combout\ & ((\Add0~88_combout\))))) # (!\Mux15~0_combout\ & (((!\Mux15~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[27]~input_o\,
	datab => \Add0~88_combout\,
	datac => \Mux15~0_combout\,
	datad => \Mux15~1_combout\,
	combout => \Mux5~0_combout\);

\Mux5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = (\Mux15~2_combout\ & (((\Mux5~0_combout\)))) # (!\Mux15~2_combout\ & (\A[27]~input_o\ $ (((\B[27]~input_o\ & \Mux5~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[27]~input_o\,
	datab => \Mux5~0_combout\,
	datac => \Mux15~2_combout\,
	datad => \A[27]~input_o\,
	combout => \Mux5~1_combout\);

\Mux5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~2_combout\ = (\ALUS[0]~input_o\ & ((\B[27]~input_o\) # (\A[27]~input_o\))) # (!\ALUS[0]~input_o\ & (\B[27]~input_o\ & \A[27]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUS[0]~input_o\,
	datab => \B[27]~input_o\,
	datac => \A[27]~input_o\,
	combout => \Mux5~2_combout\);

\Mux5~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~3_combout\ = (\ALUS[1]~input_o\ & ((\ALUS[2]~input_o\ & (\Mux5~1_combout\)) # (!\ALUS[2]~input_o\ & ((\Mux5~2_combout\))))) # (!\ALUS[1]~input_o\ & (\Mux5~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~1_combout\,
	datab => \Mux5~2_combout\,
	datac => \ALUS[1]~input_o\,
	datad => \ALUS[2]~input_o\,
	combout => \Mux5~3_combout\);

\B[28]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(28),
	o => \B[28]~input_o\);

\Add0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~3_combout\ = \ALUS[0]~input_o\ $ (\B[28]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALUS[0]~input_o\,
	datad => \B[28]~input_o\,
	combout => \Add0~3_combout\);

\A[28]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(28),
	o => \A[28]~input_o\);

\Add0~90\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~90_combout\ = (\Add0~3_combout\ & ((\A[28]~input_o\ & (\Add0~89\ & VCC)) # (!\A[28]~input_o\ & (!\Add0~89\)))) # (!\Add0~3_combout\ & ((\A[28]~input_o\ & (!\Add0~89\)) # (!\A[28]~input_o\ & ((\Add0~89\) # (GND)))))
-- \Add0~91\ = CARRY((\Add0~3_combout\ & (!\A[28]~input_o\ & !\Add0~89\)) # (!\Add0~3_combout\ & ((!\Add0~89\) # (!\A[28]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~3_combout\,
	datab => \A[28]~input_o\,
	datad => VCC,
	cin => \Add0~89\,
	combout => \Add0~90_combout\,
	cout => \Add0~91\);

\Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\Mux15~0_combout\ & ((\Mux15~1_combout\ & (\B[28]~input_o\)) # (!\Mux15~1_combout\ & ((\Add0~90_combout\))))) # (!\Mux15~0_combout\ & (((!\Mux15~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[28]~input_o\,
	datab => \Add0~90_combout\,
	datac => \Mux15~0_combout\,
	datad => \Mux15~1_combout\,
	combout => \Mux4~0_combout\);

\Mux4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = (\Mux15~2_combout\ & (((\Mux4~0_combout\)))) # (!\Mux15~2_combout\ & (\A[28]~input_o\ $ (((\B[28]~input_o\ & \Mux4~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[28]~input_o\,
	datab => \Mux4~0_combout\,
	datac => \Mux15~2_combout\,
	datad => \A[28]~input_o\,
	combout => \Mux4~1_combout\);

\Mux4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~2_combout\ = (\ALUS[0]~input_o\ & ((\B[28]~input_o\) # (\A[28]~input_o\))) # (!\ALUS[0]~input_o\ & (\B[28]~input_o\ & \A[28]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUS[0]~input_o\,
	datab => \B[28]~input_o\,
	datac => \A[28]~input_o\,
	combout => \Mux4~2_combout\);

\Mux4~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~3_combout\ = (\ALUS[1]~input_o\ & ((\ALUS[2]~input_o\ & (\Mux4~1_combout\)) # (!\ALUS[2]~input_o\ & ((\Mux4~2_combout\))))) # (!\ALUS[1]~input_o\ & (\Mux4~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~1_combout\,
	datab => \Mux4~2_combout\,
	datac => \ALUS[1]~input_o\,
	datad => \ALUS[2]~input_o\,
	combout => \Mux4~3_combout\);

\B[29]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(29),
	o => \B[29]~input_o\);

\Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = \ALUS[0]~input_o\ $ (\B[29]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALUS[0]~input_o\,
	datad => \B[29]~input_o\,
	combout => \Add0~2_combout\);

\A[29]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(29),
	o => \A[29]~input_o\);

\Add0~92\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~92_combout\ = ((\Add0~2_combout\ $ (\A[29]~input_o\ $ (!\Add0~91\)))) # (GND)
-- \Add0~93\ = CARRY((\Add0~2_combout\ & ((\A[29]~input_o\) # (!\Add0~91\))) # (!\Add0~2_combout\ & (\A[29]~input_o\ & !\Add0~91\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datab => \A[29]~input_o\,
	datad => VCC,
	cin => \Add0~91\,
	combout => \Add0~92_combout\,
	cout => \Add0~93\);

\Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\Mux15~0_combout\ & ((\Mux15~1_combout\ & (\B[29]~input_o\)) # (!\Mux15~1_combout\ & ((\Add0~92_combout\))))) # (!\Mux15~0_combout\ & (((!\Mux15~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[29]~input_o\,
	datab => \Add0~92_combout\,
	datac => \Mux15~0_combout\,
	datad => \Mux15~1_combout\,
	combout => \Mux3~0_combout\);

\Mux3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (\Mux15~2_combout\ & (((\Mux3~0_combout\)))) # (!\Mux15~2_combout\ & (\A[29]~input_o\ $ (((\B[29]~input_o\ & \Mux3~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[29]~input_o\,
	datab => \Mux3~0_combout\,
	datac => \Mux15~2_combout\,
	datad => \A[29]~input_o\,
	combout => \Mux3~1_combout\);

\Mux3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~2_combout\ = (\ALUS[0]~input_o\ & ((\B[29]~input_o\) # (\A[29]~input_o\))) # (!\ALUS[0]~input_o\ & (\B[29]~input_o\ & \A[29]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUS[0]~input_o\,
	datab => \B[29]~input_o\,
	datac => \A[29]~input_o\,
	combout => \Mux3~2_combout\);

\Mux3~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~3_combout\ = (\ALUS[1]~input_o\ & ((\ALUS[2]~input_o\ & (\Mux3~1_combout\)) # (!\ALUS[2]~input_o\ & ((\Mux3~2_combout\))))) # (!\ALUS[1]~input_o\ & (\Mux3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~1_combout\,
	datab => \Mux3~2_combout\,
	datac => \ALUS[1]~input_o\,
	datad => \ALUS[2]~input_o\,
	combout => \Mux3~3_combout\);

\B[30]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(30),
	o => \B[30]~input_o\);

\Add0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~1_combout\ = \ALUS[0]~input_o\ $ (\B[30]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALUS[0]~input_o\,
	datad => \B[30]~input_o\,
	combout => \Add0~1_combout\);

\A[30]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(30),
	o => \A[30]~input_o\);

\Add0~94\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~94_combout\ = (\Add0~1_combout\ & ((\A[30]~input_o\ & (\Add0~93\ & VCC)) # (!\A[30]~input_o\ & (!\Add0~93\)))) # (!\Add0~1_combout\ & ((\A[30]~input_o\ & (!\Add0~93\)) # (!\A[30]~input_o\ & ((\Add0~93\) # (GND)))))
-- \Add0~95\ = CARRY((\Add0~1_combout\ & (!\A[30]~input_o\ & !\Add0~93\)) # (!\Add0~1_combout\ & ((!\Add0~93\) # (!\A[30]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~1_combout\,
	datab => \A[30]~input_o\,
	datad => VCC,
	cin => \Add0~93\,
	combout => \Add0~94_combout\,
	cout => \Add0~95\);

\Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\Mux15~0_combout\ & ((\Mux15~1_combout\ & (\B[30]~input_o\)) # (!\Mux15~1_combout\ & ((\Add0~94_combout\))))) # (!\Mux15~0_combout\ & (((!\Mux15~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[30]~input_o\,
	datab => \Add0~94_combout\,
	datac => \Mux15~0_combout\,
	datad => \Mux15~1_combout\,
	combout => \Mux2~0_combout\);

\Mux2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (\Mux15~2_combout\ & (((\Mux2~0_combout\)))) # (!\Mux15~2_combout\ & (\A[30]~input_o\ $ (((\B[30]~input_o\ & \Mux2~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[30]~input_o\,
	datab => \Mux2~0_combout\,
	datac => \Mux15~2_combout\,
	datad => \A[30]~input_o\,
	combout => \Mux2~1_combout\);

\Mux2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~2_combout\ = (\ALUS[0]~input_o\ & ((\B[30]~input_o\) # (\A[30]~input_o\))) # (!\ALUS[0]~input_o\ & (\B[30]~input_o\ & \A[30]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUS[0]~input_o\,
	datab => \B[30]~input_o\,
	datac => \A[30]~input_o\,
	combout => \Mux2~2_combout\);

\Mux2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~3_combout\ = (\ALUS[1]~input_o\ & ((\ALUS[2]~input_o\ & (\Mux2~1_combout\)) # (!\ALUS[2]~input_o\ & ((\Mux2~2_combout\))))) # (!\ALUS[1]~input_o\ & (\Mux2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~1_combout\,
	datab => \Mux2~2_combout\,
	datac => \ALUS[1]~input_o\,
	datad => \ALUS[2]~input_o\,
	combout => \Mux2~3_combout\);

\B[31]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(31),
	o => \B[31]~input_o\);

\Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = \ALUS[0]~input_o\ $ (\B[31]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALUS[0]~input_o\,
	datad => \B[31]~input_o\,
	combout => \Add0~0_combout\);

\A[31]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(31),
	o => \A[31]~input_o\);

\Add0~96\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~96_combout\ = ((\Add0~0_combout\ $ (\A[31]~input_o\ $ (!\Add0~95\)))) # (GND)
-- \Add0~97\ = CARRY((\Add0~0_combout\ & ((\A[31]~input_o\) # (!\Add0~95\))) # (!\Add0~0_combout\ & (\A[31]~input_o\ & !\Add0~95\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \A[31]~input_o\,
	datad => VCC,
	cin => \Add0~95\,
	combout => \Add0~96_combout\,
	cout => \Add0~97\);

\Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\Mux15~0_combout\ & ((\Mux15~1_combout\ & (\B[31]~input_o\)) # (!\Mux15~1_combout\ & ((\Add0~96_combout\))))) # (!\Mux15~0_combout\ & (((!\Mux15~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[31]~input_o\,
	datab => \Add0~96_combout\,
	datac => \Mux15~0_combout\,
	datad => \Mux15~1_combout\,
	combout => \Mux1~0_combout\);

\Mux1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (\Mux15~2_combout\ & (((\Mux1~0_combout\)))) # (!\Mux15~2_combout\ & (\A[31]~input_o\ $ (((\B[31]~input_o\ & \Mux1~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[31]~input_o\,
	datab => \Mux1~0_combout\,
	datac => \Mux15~2_combout\,
	datad => \A[31]~input_o\,
	combout => \Mux1~1_combout\);

\Mux1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~2_combout\ = (\ALUS[0]~input_o\ & ((\B[31]~input_o\) # (\A[31]~input_o\))) # (!\ALUS[0]~input_o\ & (\B[31]~input_o\ & \A[31]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUS[0]~input_o\,
	datab => \B[31]~input_o\,
	datac => \A[31]~input_o\,
	combout => \Mux1~2_combout\);

\Mux1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~3_combout\ = (\ALUS[1]~input_o\ & ((\ALUS[2]~input_o\ & (\Mux1~1_combout\)) # (!\ALUS[2]~input_o\ & ((\Mux1~2_combout\))))) # (!\ALUS[1]~input_o\ & (\Mux1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~1_combout\,
	datab => \Mux1~2_combout\,
	datac => \ALUS[1]~input_o\,
	datad => \ALUS[2]~input_o\,
	combout => \Mux1~3_combout\);

\Add0~98\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~98_combout\ = \ALUS[0]~input_o\ $ (\Add0~97\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALUS[0]~input_o\,
	cin => \Add0~97\,
	combout => \Add0~98_combout\);

\Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\Add0~98_combout\ & (!\ALUS[1]~input_o\ & !\ALUS[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~98_combout\,
	datac => \ALUS[1]~input_o\,
	datad => \ALUS[2]~input_o\,
	combout => \Mux0~0_combout\);

\Mux33~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux33~0_combout\ = (\A[31]~input_o\ & (!\Mux1~3_combout\ & (\ALUS[0]~input_o\ $ (\B[31]~input_o\)))) # (!\A[31]~input_o\ & (\Mux1~3_combout\ & (\ALUS[0]~input_o\ $ (!\B[31]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUS[0]~input_o\,
	datab => \B[31]~input_o\,
	datac => \A[31]~input_o\,
	datad => \Mux1~3_combout\,
	combout => \Mux33~0_combout\);

\Mux33~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux33~1_combout\ = (\Mux33~0_combout\ & (!\ALUS[1]~input_o\ & !\ALUS[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux33~0_combout\,
	datac => \ALUS[1]~input_o\,
	datad => \ALUS[2]~input_o\,
	combout => \Mux33~1_combout\);

\Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\Mux1~3_combout\ & (!\Mux32~3_combout\ & (!\Mux31~3_combout\ & !\Mux30~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~3_combout\,
	datab => \Mux32~3_combout\,
	datac => \Mux31~3_combout\,
	datad => \Mux30~3_combout\,
	combout => \Equal0~0_combout\);

\Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!\Mux29~3_combout\ & (!\Mux28~3_combout\ & (!\Mux27~3_combout\ & !\Mux26~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~3_combout\,
	datab => \Mux28~3_combout\,
	datac => \Mux27~3_combout\,
	datad => \Mux26~3_combout\,
	combout => \Equal0~1_combout\);

\Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!\Mux25~3_combout\ & (!\Mux24~3_combout\ & (!\Mux23~3_combout\ & !\Mux22~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux25~3_combout\,
	datab => \Mux24~3_combout\,
	datac => \Mux23~3_combout\,
	datad => \Mux22~3_combout\,
	combout => \Equal0~2_combout\);

\Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!\Mux21~3_combout\ & (!\Mux20~3_combout\ & (!\Mux19~3_combout\ & !\Mux18~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux21~3_combout\,
	datab => \Mux20~3_combout\,
	datac => \Mux19~3_combout\,
	datad => \Mux18~3_combout\,
	combout => \Equal0~3_combout\);

\Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~0_combout\ & (\Equal0~1_combout\ & (\Equal0~2_combout\ & \Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \Equal0~1_combout\,
	datac => \Equal0~2_combout\,
	datad => \Equal0~3_combout\,
	combout => \Equal0~4_combout\);

\Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (!\Mux17~3_combout\ & (!\Mux16~3_combout\ & (!\Mux15~6_combout\ & !\Mux14~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux17~3_combout\,
	datab => \Mux16~3_combout\,
	datac => \Mux15~6_combout\,
	datad => \Mux14~3_combout\,
	combout => \Equal0~5_combout\);

\Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (!\Mux13~3_combout\ & (!\Mux12~3_combout\ & (!\Mux11~3_combout\ & !\Mux10~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~3_combout\,
	datab => \Mux12~3_combout\,
	datac => \Mux11~3_combout\,
	datad => \Mux10~3_combout\,
	combout => \Equal0~6_combout\);

\Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (\Equal0~5_combout\ & \Equal0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~5_combout\,
	datab => \Equal0~6_combout\,
	combout => \Equal0~7_combout\);

\Equal0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (!\Mux9~3_combout\ & (!\Mux8~3_combout\ & (!\Mux7~3_combout\ & !\Mux6~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux9~3_combout\,
	datab => \Mux8~3_combout\,
	datac => \Mux7~3_combout\,
	datad => \Mux6~3_combout\,
	combout => \Equal0~8_combout\);

\Equal0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~9_combout\ = (!\Mux5~3_combout\ & (!\Mux4~3_combout\ & (!\Mux3~3_combout\ & !\Mux2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~3_combout\,
	datab => \Mux4~3_combout\,
	datac => \Mux3~3_combout\,
	datad => \Mux2~3_combout\,
	combout => \Equal0~9_combout\);

\Equal0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~10_combout\ = (\Equal0~4_combout\ & (\Equal0~7_combout\ & (\Equal0~8_combout\ & \Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~4_combout\,
	datab => \Equal0~7_combout\,
	datac => \Equal0~8_combout\,
	datad => \Equal0~9_combout\,
	combout => \Equal0~10_combout\);

\F[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => F(0),
	o => \F[0]~input_o\);

\F[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => F(1),
	o => \F[1]~input_o\);

\F[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => F(2),
	o => \F[2]~input_o\);

\F[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => F(3),
	o => \F[3]~input_o\);

\F[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => F(4),
	o => \F[4]~input_o\);

\F[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => F(5),
	o => \F[5]~input_o\);

\F[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => F(6),
	o => \F[6]~input_o\);

\F[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => F(7),
	o => \F[7]~input_o\);

\F[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => F(8),
	o => \F[8]~input_o\);

\F[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => F(9),
	o => \F[9]~input_o\);

\F[10]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => F(10),
	o => \F[10]~input_o\);

\F[11]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => F(11),
	o => \F[11]~input_o\);

\F[12]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => F(12),
	o => \F[12]~input_o\);

\F[13]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => F(13),
	o => \F[13]~input_o\);

\F[14]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => F(14),
	o => \F[14]~input_o\);

\F[15]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => F(15),
	o => \F[15]~input_o\);

\F[16]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => F(16),
	o => \F[16]~input_o\);

\F[17]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => F(17),
	o => \F[17]~input_o\);

\F[18]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => F(18),
	o => \F[18]~input_o\);

\F[19]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => F(19),
	o => \F[19]~input_o\);

\F[20]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => F(20),
	o => \F[20]~input_o\);

\F[21]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => F(21),
	o => \F[21]~input_o\);

\F[22]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => F(22),
	o => \F[22]~input_o\);

\F[23]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => F(23),
	o => \F[23]~input_o\);

\F[24]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => F(24),
	o => \F[24]~input_o\);

\F[25]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => F(25),
	o => \F[25]~input_o\);

\F[26]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => F(26),
	o => \F[26]~input_o\);

\F[27]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => F(27),
	o => \F[27]~input_o\);

\F[28]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => F(28),
	o => \F[28]~input_o\);

\F[29]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => F(29),
	o => \F[29]~input_o\);

\F[30]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => F(30),
	o => \F[30]~input_o\);

\F[31]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => F(31),
	o => \F[31]~input_o\);

ww_C <= \C~output_o\;

ww_V <= \V~output_o\;

ww_N <= \N~output_o\;

ww_Z <= \Z~output_o\;

F(0) <= \F[0]~output_o\;

F(1) <= \F[1]~output_o\;

F(2) <= \F[2]~output_o\;

F(3) <= \F[3]~output_o\;

F(4) <= \F[4]~output_o\;

F(5) <= \F[5]~output_o\;

F(6) <= \F[6]~output_o\;

F(7) <= \F[7]~output_o\;

F(8) <= \F[8]~output_o\;

F(9) <= \F[9]~output_o\;

F(10) <= \F[10]~output_o\;

F(11) <= \F[11]~output_o\;

F(12) <= \F[12]~output_o\;

F(13) <= \F[13]~output_o\;

F(14) <= \F[14]~output_o\;

F(15) <= \F[15]~output_o\;

F(16) <= \F[16]~output_o\;

F(17) <= \F[17]~output_o\;

F(18) <= \F[18]~output_o\;

F(19) <= \F[19]~output_o\;

F(20) <= \F[20]~output_o\;

F(21) <= \F[21]~output_o\;

F(22) <= \F[22]~output_o\;

F(23) <= \F[23]~output_o\;

F(24) <= \F[24]~output_o\;

F(25) <= \F[25]~output_o\;

F(26) <= \F[26]~output_o\;

F(27) <= \F[27]~output_o\;

F(28) <= \F[28]~output_o\;

F(29) <= \F[29]~output_o\;

F(30) <= \F[30]~output_o\;

F(31) <= \F[31]~output_o\;
END structure;


