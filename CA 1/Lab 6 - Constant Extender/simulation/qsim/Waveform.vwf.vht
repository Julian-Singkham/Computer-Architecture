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
-- Generated on "04/11/2019 12:58:30"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          ConstantExtender
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY ConstantExtender_vhd_vec_tst IS
END ConstantExtender_vhd_vec_tst;
ARCHITECTURE ConstantExtender_arch OF ConstantExtender_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL exts : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL imm : STD_LOGIC_VECTOR(23 DOWNTO 0);
SIGNAL imm32 : STD_LOGIC_VECTOR(31 DOWNTO 0);
COMPONENT ConstantExtender
	PORT (
	exts : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	imm : IN STD_LOGIC_VECTOR(23 DOWNTO 0);
	imm32 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : ConstantExtender
	PORT MAP (
-- list connections between master ports and signals
	exts => exts,
	imm => imm,
	imm32 => imm32
	);
-- exts[1]
t_prcs_exts_1: PROCESS
BEGIN
	exts(1) <= '0';
	WAIT FOR 666000 ps;
	exts(1) <= '1';
WAIT;
END PROCESS t_prcs_exts_1;
-- exts[0]
t_prcs_exts_0: PROCESS
BEGIN
	exts(0) <= '0';
	WAIT FOR 333000 ps;
	exts(0) <= '1';
	WAIT FOR 333000 ps;
	exts(0) <= '0';
	WAIT FOR 333000 ps;
	exts(0) <= '1';
WAIT;
END PROCESS t_prcs_exts_0;
-- imm[23]
t_prcs_imm_23: PROCESS
BEGIN
	imm(23) <= '0';
	WAIT FOR 666000 ps;
	imm(23) <= '1';
	WAIT FOR 333000 ps;
	imm(23) <= '0';
WAIT;
END PROCESS t_prcs_imm_23;
-- imm[22]
t_prcs_imm_22: PROCESS
BEGIN
	imm(22) <= '0';
WAIT;
END PROCESS t_prcs_imm_22;
-- imm[21]
t_prcs_imm_21: PROCESS
BEGIN
	imm(21) <= '0';
WAIT;
END PROCESS t_prcs_imm_21;
-- imm[20]
t_prcs_imm_20: PROCESS
BEGIN
	imm(20) <= '0';
WAIT;
END PROCESS t_prcs_imm_20;
-- imm[19]
t_prcs_imm_19: PROCESS
BEGIN
	imm(19) <= '0';
WAIT;
END PROCESS t_prcs_imm_19;
-- imm[18]
t_prcs_imm_18: PROCESS
BEGIN
	imm(18) <= '0';
WAIT;
END PROCESS t_prcs_imm_18;
-- imm[17]
t_prcs_imm_17: PROCESS
BEGIN
	imm(17) <= '0';
WAIT;
END PROCESS t_prcs_imm_17;
-- imm[16]
t_prcs_imm_16: PROCESS
BEGIN
	imm(16) <= '0';
WAIT;
END PROCESS t_prcs_imm_16;
-- imm[15]
t_prcs_imm_15: PROCESS
BEGIN
	imm(15) <= '0';
	WAIT FOR 666000 ps;
	imm(15) <= '1';
	WAIT FOR 333000 ps;
	imm(15) <= '0';
WAIT;
END PROCESS t_prcs_imm_15;
-- imm[14]
t_prcs_imm_14: PROCESS
BEGIN
	imm(14) <= '0';
	WAIT FOR 666000 ps;
	imm(14) <= '1';
	WAIT FOR 333000 ps;
	imm(14) <= '0';
WAIT;
END PROCESS t_prcs_imm_14;
-- imm[13]
t_prcs_imm_13: PROCESS
BEGIN
	imm(13) <= '0';
	WAIT FOR 666000 ps;
	imm(13) <= '1';
	WAIT FOR 333000 ps;
	imm(13) <= '0';
WAIT;
END PROCESS t_prcs_imm_13;
-- imm[12]
t_prcs_imm_12: PROCESS
BEGIN
	imm(12) <= '0';
	WAIT FOR 666000 ps;
	imm(12) <= '1';
	WAIT FOR 333000 ps;
	imm(12) <= '0';
WAIT;
END PROCESS t_prcs_imm_12;
-- imm[11]
t_prcs_imm_11: PROCESS
BEGIN
	imm(11) <= '0';
	WAIT FOR 333000 ps;
	imm(11) <= '1';
	WAIT FOR 666000 ps;
	imm(11) <= '0';
WAIT;
END PROCESS t_prcs_imm_11;
-- imm[10]
t_prcs_imm_10: PROCESS
BEGIN
	imm(10) <= '0';
WAIT;
END PROCESS t_prcs_imm_10;
-- imm[9]
t_prcs_imm_9: PROCESS
BEGIN
	imm(9) <= '0';
	WAIT FOR 333000 ps;
	imm(9) <= '1';
	WAIT FOR 666000 ps;
	imm(9) <= '0';
WAIT;
END PROCESS t_prcs_imm_9;
-- imm[8]
t_prcs_imm_8: PROCESS
BEGIN
	imm(8) <= '0';
WAIT;
END PROCESS t_prcs_imm_8;
-- imm[7]
t_prcs_imm_7: PROCESS
BEGIN
	imm(7) <= '1';
WAIT;
END PROCESS t_prcs_imm_7;
-- imm[6]
t_prcs_imm_6: PROCESS
BEGIN
	imm(6) <= '0';
WAIT;
END PROCESS t_prcs_imm_6;
-- imm[5]
t_prcs_imm_5: PROCESS
BEGIN
	imm(5) <= '1';
	WAIT FOR 333000 ps;
	imm(5) <= '0';
	WAIT FOR 666000 ps;
	imm(5) <= '1';
WAIT;
END PROCESS t_prcs_imm_5;
-- imm[4]
t_prcs_imm_4: PROCESS
BEGIN
	imm(4) <= '0';
	WAIT FOR 333000 ps;
	imm(4) <= '1';
	WAIT FOR 666000 ps;
	imm(4) <= '0';
WAIT;
END PROCESS t_prcs_imm_4;
-- imm[3]
t_prcs_imm_3: PROCESS
BEGIN
	imm(3) <= '1';
WAIT;
END PROCESS t_prcs_imm_3;
-- imm[2]
t_prcs_imm_2: PROCESS
BEGIN
	imm(2) <= '0';
	WAIT FOR 333000 ps;
	imm(2) <= '1';
	WAIT FOR 666000 ps;
	imm(2) <= '0';
WAIT;
END PROCESS t_prcs_imm_2;
-- imm[1]
t_prcs_imm_1: PROCESS
BEGIN
	imm(1) <= '0';
	WAIT FOR 999000 ps;
	imm(1) <= '1';
WAIT;
END PROCESS t_prcs_imm_1;
-- imm[0]
t_prcs_imm_0: PROCESS
BEGIN
	imm(0) <= '0';
	WAIT FOR 333000 ps;
	imm(0) <= '1';
WAIT;
END PROCESS t_prcs_imm_0;
END ConstantExtender_arch;
