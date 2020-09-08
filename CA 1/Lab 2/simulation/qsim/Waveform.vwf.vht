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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "04/04/2019 12:51:43"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          barrelShifter
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY barrelShifter_vhd_vec_tst IS
END barrelShifter_vhd_vec_tst;
ARCHITECTURE barrelShifter_arch OF barrelShifter_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL IN_SRC2 : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL OUT_SRC2 : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL ROTATE : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT barrelShifter
	PORT (
	IN_SRC2 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	OUT_SRC2 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	ROTATE : IN STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : barrelShifter
	PORT MAP (
-- list connections between master ports and signals
	IN_SRC2 => IN_SRC2,
	OUT_SRC2 => OUT_SRC2,
	ROTATE => ROTATE
	);
-- IN_SRC2[31]
t_prcs_IN_SRC2_31: PROCESS
BEGIN
	IN_SRC2(31) <= '0';
WAIT;
END PROCESS t_prcs_IN_SRC2_31;
-- IN_SRC2[30]
t_prcs_IN_SRC2_30: PROCESS
BEGIN
	IN_SRC2(30) <= '0';
WAIT;
END PROCESS t_prcs_IN_SRC2_30;
-- IN_SRC2[29]
t_prcs_IN_SRC2_29: PROCESS
BEGIN
	IN_SRC2(29) <= '0';
WAIT;
END PROCESS t_prcs_IN_SRC2_29;
-- IN_SRC2[28]
t_prcs_IN_SRC2_28: PROCESS
BEGIN
	IN_SRC2(28) <= '0';
WAIT;
END PROCESS t_prcs_IN_SRC2_28;
-- IN_SRC2[27]
t_prcs_IN_SRC2_27: PROCESS
BEGIN
	IN_SRC2(27) <= '0';
WAIT;
END PROCESS t_prcs_IN_SRC2_27;
-- IN_SRC2[26]
t_prcs_IN_SRC2_26: PROCESS
BEGIN
	IN_SRC2(26) <= '0';
WAIT;
END PROCESS t_prcs_IN_SRC2_26;
-- IN_SRC2[25]
t_prcs_IN_SRC2_25: PROCESS
BEGIN
	IN_SRC2(25) <= '0';
WAIT;
END PROCESS t_prcs_IN_SRC2_25;
-- IN_SRC2[24]
t_prcs_IN_SRC2_24: PROCESS
BEGIN
	IN_SRC2(24) <= '0';
WAIT;
END PROCESS t_prcs_IN_SRC2_24;
-- IN_SRC2[23]
t_prcs_IN_SRC2_23: PROCESS
BEGIN
	IN_SRC2(23) <= '0';
WAIT;
END PROCESS t_prcs_IN_SRC2_23;
-- IN_SRC2[22]
t_prcs_IN_SRC2_22: PROCESS
BEGIN
	IN_SRC2(22) <= '0';
WAIT;
END PROCESS t_prcs_IN_SRC2_22;
-- IN_SRC2[21]
t_prcs_IN_SRC2_21: PROCESS
BEGIN
	IN_SRC2(21) <= '0';
WAIT;
END PROCESS t_prcs_IN_SRC2_21;
-- IN_SRC2[20]
t_prcs_IN_SRC2_20: PROCESS
BEGIN
	IN_SRC2(20) <= '0';
WAIT;
END PROCESS t_prcs_IN_SRC2_20;
-- IN_SRC2[19]
t_prcs_IN_SRC2_19: PROCESS
BEGIN
	IN_SRC2(19) <= '0';
WAIT;
END PROCESS t_prcs_IN_SRC2_19;
-- IN_SRC2[18]
t_prcs_IN_SRC2_18: PROCESS
BEGIN
	IN_SRC2(18) <= '0';
WAIT;
END PROCESS t_prcs_IN_SRC2_18;
-- IN_SRC2[17]
t_prcs_IN_SRC2_17: PROCESS
BEGIN
	IN_SRC2(17) <= '0';
WAIT;
END PROCESS t_prcs_IN_SRC2_17;
-- IN_SRC2[16]
t_prcs_IN_SRC2_16: PROCESS
BEGIN
	IN_SRC2(16) <= '0';
WAIT;
END PROCESS t_prcs_IN_SRC2_16;
-- IN_SRC2[15]
t_prcs_IN_SRC2_15: PROCESS
BEGIN
	IN_SRC2(15) <= '0';
WAIT;
END PROCESS t_prcs_IN_SRC2_15;
-- IN_SRC2[14]
t_prcs_IN_SRC2_14: PROCESS
BEGIN
	IN_SRC2(14) <= '0';
WAIT;
END PROCESS t_prcs_IN_SRC2_14;
-- IN_SRC2[13]
t_prcs_IN_SRC2_13: PROCESS
BEGIN
	IN_SRC2(13) <= '0';
WAIT;
END PROCESS t_prcs_IN_SRC2_13;
-- IN_SRC2[12]
t_prcs_IN_SRC2_12: PROCESS
BEGIN
	IN_SRC2(12) <= '0';
WAIT;
END PROCESS t_prcs_IN_SRC2_12;
-- IN_SRC2[11]
t_prcs_IN_SRC2_11: PROCESS
BEGIN
	IN_SRC2(11) <= '0';
WAIT;
END PROCESS t_prcs_IN_SRC2_11;
-- IN_SRC2[10]
t_prcs_IN_SRC2_10: PROCESS
BEGIN
	IN_SRC2(10) <= '0';
WAIT;
END PROCESS t_prcs_IN_SRC2_10;
-- IN_SRC2[9]
t_prcs_IN_SRC2_9: PROCESS
BEGIN
	IN_SRC2(9) <= '0';
WAIT;
END PROCESS t_prcs_IN_SRC2_9;
-- IN_SRC2[8]
t_prcs_IN_SRC2_8: PROCESS
BEGIN
	IN_SRC2(8) <= '0';
WAIT;
END PROCESS t_prcs_IN_SRC2_8;
-- IN_SRC2[7]
t_prcs_IN_SRC2_7: PROCESS
BEGIN
	IN_SRC2(7) <= '0';
WAIT;
END PROCESS t_prcs_IN_SRC2_7;
-- IN_SRC2[6]
t_prcs_IN_SRC2_6: PROCESS
BEGIN
	IN_SRC2(6) <= '0';
WAIT;
END PROCESS t_prcs_IN_SRC2_6;
-- IN_SRC2[5]
t_prcs_IN_SRC2_5: PROCESS
BEGIN
	IN_SRC2(5) <= '0';
WAIT;
END PROCESS t_prcs_IN_SRC2_5;
-- IN_SRC2[4]
t_prcs_IN_SRC2_4: PROCESS
BEGIN
	IN_SRC2(4) <= '0';
WAIT;
END PROCESS t_prcs_IN_SRC2_4;
-- IN_SRC2[3]
t_prcs_IN_SRC2_3: PROCESS
BEGIN
	IN_SRC2(3) <= '0';
WAIT;
END PROCESS t_prcs_IN_SRC2_3;
-- IN_SRC2[2]
t_prcs_IN_SRC2_2: PROCESS
BEGIN
	IN_SRC2(2) <= '0';
WAIT;
END PROCESS t_prcs_IN_SRC2_2;
-- IN_SRC2[1]
t_prcs_IN_SRC2_1: PROCESS
BEGIN
	IN_SRC2(1) <= '0';
WAIT;
END PROCESS t_prcs_IN_SRC2_1;
-- IN_SRC2[0]
t_prcs_IN_SRC2_0: PROCESS
BEGIN
	IN_SRC2(0) <= '1';
WAIT;
END PROCESS t_prcs_IN_SRC2_0;
-- ROTATE[3]
t_prcs_ROTATE_3: PROCESS
BEGIN
	ROTATE(3) <= '0';
	WAIT FOR 480000 ps;
	ROTATE(3) <= '1';
	WAIT FOR 480000 ps;
	ROTATE(3) <= '0';
WAIT;
END PROCESS t_prcs_ROTATE_3;
-- ROTATE[2]
t_prcs_ROTATE_2: PROCESS
BEGIN
	FOR i IN 1 TO 2
	LOOP
		ROTATE(2) <= '0';
		WAIT FOR 240000 ps;
		ROTATE(2) <= '1';
		WAIT FOR 240000 ps;
	END LOOP;
	ROTATE(2) <= '0';
WAIT;
END PROCESS t_prcs_ROTATE_2;
-- ROTATE[1]
t_prcs_ROTATE_1: PROCESS
BEGIN
	FOR i IN 1 TO 4
	LOOP
		ROTATE(1) <= '0';
		WAIT FOR 120000 ps;
		ROTATE(1) <= '1';
		WAIT FOR 120000 ps;
	END LOOP;
	ROTATE(1) <= '0';
WAIT;
END PROCESS t_prcs_ROTATE_1;
-- ROTATE[0]
t_prcs_ROTATE_0: PROCESS
BEGIN
	FOR i IN 1 TO 8
	LOOP
		ROTATE(0) <= '0';
		WAIT FOR 60000 ps;
		ROTATE(0) <= '1';
		WAIT FOR 60000 ps;
	END LOOP;
	ROTATE(0) <= '0';
WAIT;
END PROCESS t_prcs_ROTATE_0;
END barrelShifter_arch;
