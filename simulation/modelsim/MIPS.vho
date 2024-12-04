-- Copyright (C) 2020  Intel Corporation. All rights reserved.
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
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "12/03/2024 19:37:17"

-- 
-- Device: Altera 10M50DAF484C6GES Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ALU IS
    PORT (
	a : IN std_logic_vector(31 DOWNTO 0);
	b : IN std_logic_vector(31 DOWNTO 0);
	opsel : IN std_logic_vector(4 DOWNTO 0);
	shamt : IN std_logic_vector(4 DOWNTO 0);
	result : OUT std_logic_vector(31 DOWNTO 0);
	result_hi : OUT std_logic_vector(31 DOWNTO 0);
	branch_taken : OUT std_logic
	);
END ALU;

-- Design Ports Information
-- opsel[4]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[0]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[1]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[2]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[3]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[4]	=>  Location: PIN_K19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[5]	=>  Location: PIN_K14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[6]	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[7]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[8]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[9]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[10]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[11]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[12]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[13]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[14]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[15]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[16]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[17]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[18]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[19]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[20]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[21]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[22]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[23]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[24]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[25]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[26]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[27]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[28]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[29]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[30]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[31]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_hi[0]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_hi[1]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_hi[2]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_hi[3]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_hi[4]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_hi[5]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_hi[6]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_hi[7]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_hi[8]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_hi[9]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_hi[10]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_hi[11]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_hi[12]	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_hi[13]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_hi[14]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_hi[15]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_hi[16]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_hi[17]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_hi[18]	=>  Location: PIN_M14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_hi[19]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_hi[20]	=>  Location: PIN_M15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_hi[21]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_hi[22]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_hi[23]	=>  Location: PIN_K18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_hi[24]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_hi[25]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_hi[26]	=>  Location: PIN_J21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_hi[27]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_hi[28]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_hi[29]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_hi[30]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_hi[31]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- branch_taken	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[0]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[0]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opsel[0]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opsel[1]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[31]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[31]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[30]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[30]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[29]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[29]	=>  Location: PIN_L14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[28]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[28]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[27]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[27]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[26]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[26]	=>  Location: PIN_P20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[25]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[25]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[24]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[24]	=>  Location: PIN_R20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[23]	=>  Location: PIN_N22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[23]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[22]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[22]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[21]	=>  Location: PIN_J20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[21]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[20]	=>  Location: PIN_E20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[20]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[19]	=>  Location: PIN_L20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[19]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[18]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[18]	=>  Location: PIN_R18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[17]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[17]	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[16]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[16]	=>  Location: PIN_H20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[15]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[15]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[14]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[14]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[13]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[13]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[12]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[12]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[11]	=>  Location: PIN_H18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[11]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[10]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[10]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[9]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[9]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[8]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[8]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[7]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[7]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[6]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[6]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[5]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[5]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[4]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[4]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[3]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[3]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[2]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[2]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[1]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[1]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- shamt[0]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- shamt[1]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- shamt[2]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- shamt[3]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- shamt[4]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opsel[2]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opsel[3]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_a : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_b : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_opsel : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_shamt : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_result : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_result_hi : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_branch_taken : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult1|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult1|auto_generated|mac_out4_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult1|auto_generated|mac_out4_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult1|auto_generated|mac_out6_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult1|auto_generated|mac_out6_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_out4_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_out4_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_out6_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_out6_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult1|auto_generated|mac_out8_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult1|auto_generated|mac_out8_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_out8_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_out8_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult1|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult1|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult1|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult1|auto_generated|mac_mult3_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult1|auto_generated|mac_mult3_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult1|auto_generated|mac_mult3_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult1|auto_generated|mac_mult5_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult1|auto_generated|mac_mult5_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult1|auto_generated|mac_mult5_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult3_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult3_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult3_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult5_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult5_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult5_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult1|auto_generated|mac_mult7_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult1|auto_generated|mac_mult7_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult1|auto_generated|mac_mult7_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult7_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult7_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult7_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \Mult1|auto_generated|mac_out4~0\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out4~1\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out4~2\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out4~3\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out6~0\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out6~1\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out6~2\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out6~3\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~0\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~1\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~2\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~3\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out6~0\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out6~1\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out6~2\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out6~3\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out8~0\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out8~1\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out8~2\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out8~3\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out8~4\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out8~5\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out8~6\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out8~7\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out8~0\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out8~1\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out8~2\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out8~3\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out8~4\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out8~5\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out8~6\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out8~7\ : std_logic;
SIGNAL \opsel[4]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \result[0]~output_o\ : std_logic;
SIGNAL \result[1]~output_o\ : std_logic;
SIGNAL \result[2]~output_o\ : std_logic;
SIGNAL \result[3]~output_o\ : std_logic;
SIGNAL \result[4]~output_o\ : std_logic;
SIGNAL \result[5]~output_o\ : std_logic;
SIGNAL \result[6]~output_o\ : std_logic;
SIGNAL \result[7]~output_o\ : std_logic;
SIGNAL \result[8]~output_o\ : std_logic;
SIGNAL \result[9]~output_o\ : std_logic;
SIGNAL \result[10]~output_o\ : std_logic;
SIGNAL \result[11]~output_o\ : std_logic;
SIGNAL \result[12]~output_o\ : std_logic;
SIGNAL \result[13]~output_o\ : std_logic;
SIGNAL \result[14]~output_o\ : std_logic;
SIGNAL \result[15]~output_o\ : std_logic;
SIGNAL \result[16]~output_o\ : std_logic;
SIGNAL \result[17]~output_o\ : std_logic;
SIGNAL \result[18]~output_o\ : std_logic;
SIGNAL \result[19]~output_o\ : std_logic;
SIGNAL \result[20]~output_o\ : std_logic;
SIGNAL \result[21]~output_o\ : std_logic;
SIGNAL \result[22]~output_o\ : std_logic;
SIGNAL \result[23]~output_o\ : std_logic;
SIGNAL \result[24]~output_o\ : std_logic;
SIGNAL \result[25]~output_o\ : std_logic;
SIGNAL \result[26]~output_o\ : std_logic;
SIGNAL \result[27]~output_o\ : std_logic;
SIGNAL \result[28]~output_o\ : std_logic;
SIGNAL \result[29]~output_o\ : std_logic;
SIGNAL \result[30]~output_o\ : std_logic;
SIGNAL \result[31]~output_o\ : std_logic;
SIGNAL \result_hi[0]~output_o\ : std_logic;
SIGNAL \result_hi[1]~output_o\ : std_logic;
SIGNAL \result_hi[2]~output_o\ : std_logic;
SIGNAL \result_hi[3]~output_o\ : std_logic;
SIGNAL \result_hi[4]~output_o\ : std_logic;
SIGNAL \result_hi[5]~output_o\ : std_logic;
SIGNAL \result_hi[6]~output_o\ : std_logic;
SIGNAL \result_hi[7]~output_o\ : std_logic;
SIGNAL \result_hi[8]~output_o\ : std_logic;
SIGNAL \result_hi[9]~output_o\ : std_logic;
SIGNAL \result_hi[10]~output_o\ : std_logic;
SIGNAL \result_hi[11]~output_o\ : std_logic;
SIGNAL \result_hi[12]~output_o\ : std_logic;
SIGNAL \result_hi[13]~output_o\ : std_logic;
SIGNAL \result_hi[14]~output_o\ : std_logic;
SIGNAL \result_hi[15]~output_o\ : std_logic;
SIGNAL \result_hi[16]~output_o\ : std_logic;
SIGNAL \result_hi[17]~output_o\ : std_logic;
SIGNAL \result_hi[18]~output_o\ : std_logic;
SIGNAL \result_hi[19]~output_o\ : std_logic;
SIGNAL \result_hi[20]~output_o\ : std_logic;
SIGNAL \result_hi[21]~output_o\ : std_logic;
SIGNAL \result_hi[22]~output_o\ : std_logic;
SIGNAL \result_hi[23]~output_o\ : std_logic;
SIGNAL \result_hi[24]~output_o\ : std_logic;
SIGNAL \result_hi[25]~output_o\ : std_logic;
SIGNAL \result_hi[26]~output_o\ : std_logic;
SIGNAL \result_hi[27]~output_o\ : std_logic;
SIGNAL \result_hi[28]~output_o\ : std_logic;
SIGNAL \result_hi[29]~output_o\ : std_logic;
SIGNAL \result_hi[30]~output_o\ : std_logic;
SIGNAL \result_hi[31]~output_o\ : std_logic;
SIGNAL \branch_taken~output_o\ : std_logic;
SIGNAL \opsel[0]~input_o\ : std_logic;
SIGNAL \opsel[1]~input_o\ : std_logic;
SIGNAL \a[26]~input_o\ : std_logic;
SIGNAL \a[24]~input_o\ : std_logic;
SIGNAL \shamt[1]~input_o\ : std_logic;
SIGNAL \ShiftRight0~20_combout\ : std_logic;
SIGNAL \a[25]~input_o\ : std_logic;
SIGNAL \a[27]~input_o\ : std_logic;
SIGNAL \ShiftRight0~19_combout\ : std_logic;
SIGNAL \shamt[0]~input_o\ : std_logic;
SIGNAL \ShiftRight0~21_combout\ : std_logic;
SIGNAL \a[18]~input_o\ : std_logic;
SIGNAL \a[16]~input_o\ : std_logic;
SIGNAL \ShiftRight0~23_combout\ : std_logic;
SIGNAL \a[19]~input_o\ : std_logic;
SIGNAL \a[17]~input_o\ : std_logic;
SIGNAL \ShiftRight0~22_combout\ : std_logic;
SIGNAL \ShiftRight0~24_combout\ : std_logic;
SIGNAL \shamt[2]~input_o\ : std_logic;
SIGNAL \shamt[3]~input_o\ : std_logic;
SIGNAL \ShiftRight0~25_combout\ : std_logic;
SIGNAL \a[31]~input_o\ : std_logic;
SIGNAL \a[30]~input_o\ : std_logic;
SIGNAL \ShiftRight1~16_combout\ : std_logic;
SIGNAL \a[28]~input_o\ : std_logic;
SIGNAL \a[29]~input_o\ : std_logic;
SIGNAL \ShiftRight0~13_combout\ : std_logic;
SIGNAL \ShiftRight0~14_combout\ : std_logic;
SIGNAL \a[22]~input_o\ : std_logic;
SIGNAL \a[20]~input_o\ : std_logic;
SIGNAL \ShiftRight0~16_combout\ : std_logic;
SIGNAL \a[21]~input_o\ : std_logic;
SIGNAL \a[23]~input_o\ : std_logic;
SIGNAL \ShiftRight0~15_combout\ : std_logic;
SIGNAL \ShiftRight0~17_combout\ : std_logic;
SIGNAL \ShiftRight0~18_combout\ : std_logic;
SIGNAL \a[5]~input_o\ : std_logic;
SIGNAL \a[4]~input_o\ : std_logic;
SIGNAL \ShiftRight1~15_combout\ : std_logic;
SIGNAL \a[7]~input_o\ : std_logic;
SIGNAL \a[6]~input_o\ : std_logic;
SIGNAL \ShiftRight0~4_combout\ : std_logic;
SIGNAL \ShiftRight0~5_combout\ : std_logic;
SIGNAL \a[1]~input_o\ : std_logic;
SIGNAL \a[0]~input_o\ : std_logic;
SIGNAL \Mux31~0_combout\ : std_logic;
SIGNAL \a[3]~input_o\ : std_logic;
SIGNAL \a[2]~input_o\ : std_logic;
SIGNAL \ShiftRight1~14_combout\ : std_logic;
SIGNAL \Mux31~1_combout\ : std_logic;
SIGNAL \Mux31~2_combout\ : std_logic;
SIGNAL \a[13]~input_o\ : std_logic;
SIGNAL \a[15]~input_o\ : std_logic;
SIGNAL \ShiftRight0~6_combout\ : std_logic;
SIGNAL \a[12]~input_o\ : std_logic;
SIGNAL \a[14]~input_o\ : std_logic;
SIGNAL \ShiftRight0~7_combout\ : std_logic;
SIGNAL \ShiftRight0~8_combout\ : std_logic;
SIGNAL \a[10]~input_o\ : std_logic;
SIGNAL \a[8]~input_o\ : std_logic;
SIGNAL \ShiftRight0~10_combout\ : std_logic;
SIGNAL \a[9]~input_o\ : std_logic;
SIGNAL \a[11]~input_o\ : std_logic;
SIGNAL \ShiftRight0~9_combout\ : std_logic;
SIGNAL \ShiftRight0~11_combout\ : std_logic;
SIGNAL \ShiftRight0~12_combout\ : std_logic;
SIGNAL \shamt[4]~input_o\ : std_logic;
SIGNAL \Mux31~3_combout\ : std_logic;
SIGNAL \Mux31~4_combout\ : std_logic;
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
SIGNAL \LessThan0~1_cout\ : std_logic;
SIGNAL \LessThan0~3_cout\ : std_logic;
SIGNAL \LessThan0~5_cout\ : std_logic;
SIGNAL \LessThan0~7_cout\ : std_logic;
SIGNAL \LessThan0~9_cout\ : std_logic;
SIGNAL \LessThan0~11_cout\ : std_logic;
SIGNAL \LessThan0~13_cout\ : std_logic;
SIGNAL \LessThan0~15_cout\ : std_logic;
SIGNAL \LessThan0~17_cout\ : std_logic;
SIGNAL \LessThan0~19_cout\ : std_logic;
SIGNAL \LessThan0~21_cout\ : std_logic;
SIGNAL \LessThan0~23_cout\ : std_logic;
SIGNAL \LessThan0~25_cout\ : std_logic;
SIGNAL \LessThan0~27_cout\ : std_logic;
SIGNAL \LessThan0~29_cout\ : std_logic;
SIGNAL \LessThan0~31_cout\ : std_logic;
SIGNAL \LessThan0~33_cout\ : std_logic;
SIGNAL \LessThan0~35_cout\ : std_logic;
SIGNAL \LessThan0~37_cout\ : std_logic;
SIGNAL \LessThan0~39_cout\ : std_logic;
SIGNAL \LessThan0~41_cout\ : std_logic;
SIGNAL \LessThan0~43_cout\ : std_logic;
SIGNAL \LessThan0~45_cout\ : std_logic;
SIGNAL \LessThan0~47_cout\ : std_logic;
SIGNAL \LessThan0~49_cout\ : std_logic;
SIGNAL \LessThan0~51_cout\ : std_logic;
SIGNAL \LessThan0~53_cout\ : std_logic;
SIGNAL \LessThan0~55_cout\ : std_logic;
SIGNAL \LessThan0~57_cout\ : std_logic;
SIGNAL \LessThan0~59_cout\ : std_logic;
SIGNAL \LessThan0~61_cout\ : std_logic;
SIGNAL \LessThan0~62_combout\ : std_logic;
SIGNAL \Mux31~8_combout\ : std_logic;
SIGNAL \Mux31~9_combout\ : std_logic;
SIGNAL \opsel[2]~input_o\ : std_logic;
SIGNAL \opsel[3]~input_o\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~2_cout\ : std_logic;
SIGNAL \Add0~3_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT16\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT17\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT18\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT19\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT20\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT21\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT22\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT23\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT24\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT25\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT26\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT27\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT28\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT29\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT30\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT31\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT32\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT33\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT34\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT35\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT16\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT17\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT18\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT19\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT20\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT21\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT22\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT23\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT24\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT25\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT26\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT27\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT28\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT29\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT30\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT31\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT32\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT33\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT34\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT35\ : std_logic;
SIGNAL \Mux31~5_combout\ : std_logic;
SIGNAL \Mux31~6_combout\ : std_logic;
SIGNAL \Mux31~7_combout\ : std_logic;
SIGNAL \ShiftRight0~26_combout\ : std_logic;
SIGNAL \ShiftRight1~17_combout\ : std_logic;
SIGNAL \ShiftRight0~27_combout\ : std_logic;
SIGNAL \ShiftRight0~28_combout\ : std_logic;
SIGNAL \ShiftRight1~18_combout\ : std_logic;
SIGNAL \ShiftRight0~29_combout\ : std_logic;
SIGNAL \ShiftRight0~30_combout\ : std_logic;
SIGNAL \ShiftRight1~19_combout\ : std_logic;
SIGNAL \ShiftRight0~31_combout\ : std_logic;
SIGNAL \ShiftRight1~20_combout\ : std_logic;
SIGNAL \ShiftRight0~32_combout\ : std_logic;
SIGNAL \ShiftRight0~33_combout\ : std_logic;
SIGNAL \ShiftRight0~34_combout\ : std_logic;
SIGNAL \ShiftRight1~21_combout\ : std_logic;
SIGNAL \ShiftRight0~35_combout\ : std_logic;
SIGNAL \ShiftRight1~23_combout\ : std_logic;
SIGNAL \ShiftRight0~37_combout\ : std_logic;
SIGNAL \ShiftRight1~24_combout\ : std_logic;
SIGNAL \ShiftRight0~38_combout\ : std_logic;
SIGNAL \ShiftRight0~39_combout\ : std_logic;
SIGNAL \ShiftRight1~22_combout\ : std_logic;
SIGNAL \ShiftRight0~36_combout\ : std_logic;
SIGNAL \ShiftRight0~40_combout\ : std_logic;
SIGNAL \Mux30~1_combout\ : std_logic;
SIGNAL \Mux30~2_combout\ : std_logic;
SIGNAL \Add0~5_combout\ : std_logic;
SIGNAL \Add0~4\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Mux30~0_combout\ : std_logic;
SIGNAL \Mux30~3_combout\ : std_logic;
SIGNAL \Mux30~6_combout\ : std_logic;
SIGNAL \Mux22~0_combout\ : std_logic;
SIGNAL \ShiftRight1~25_combout\ : std_logic;
SIGNAL \ShiftRight1~26_combout\ : std_logic;
SIGNAL \ShiftRight1~27_combout\ : std_logic;
SIGNAL \Mux30~4_combout\ : std_logic;
SIGNAL \Mux30~5_combout\ : std_logic;
SIGNAL \Mux30~7_combout\ : std_logic;
SIGNAL \Mux29~9_combout\ : std_logic;
SIGNAL \Mux29~8_combout\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~9_combout\ : std_logic;
SIGNAL \Mux29~10_combout\ : std_logic;
SIGNAL \ShiftRight0~43_combout\ : std_logic;
SIGNAL \Mux29~1_combout\ : std_logic;
SIGNAL \ShiftRight1~37_combout\ : std_logic;
SIGNAL \ShiftRight1~38_combout\ : std_logic;
SIGNAL \ShiftRight1~39_combout\ : std_logic;
SIGNAL \Mux29~2_combout\ : std_logic;
SIGNAL \ShiftRight1~40_combout\ : std_logic;
SIGNAL \ShiftRight1~41_combout\ : std_logic;
SIGNAL \ShiftRight1~42_combout\ : std_logic;
SIGNAL \ShiftRight1~43_combout\ : std_logic;
SIGNAL \ShiftRight0~45_combout\ : std_logic;
SIGNAL \Mux29~3_combout\ : std_logic;
SIGNAL \ShiftRight1~28_combout\ : std_logic;
SIGNAL \ShiftRight1~29_combout\ : std_logic;
SIGNAL \ShiftRight1~34_combout\ : std_logic;
SIGNAL \ShiftRight1~35_combout\ : std_logic;
SIGNAL \ShiftRight1~32_combout\ : std_logic;
SIGNAL \ShiftRight1~33_combout\ : std_logic;
SIGNAL \ShiftRight1~30_combout\ : std_logic;
SIGNAL \ShiftRight1~31_combout\ : std_logic;
SIGNAL \Mux21~0_combout\ : std_logic;
SIGNAL \ShiftRight1~36_combout\ : std_logic;
SIGNAL \Mux29~5_combout\ : std_logic;
SIGNAL \Mux29~4_combout\ : std_logic;
SIGNAL \Mux29~6_combout\ : std_logic;
SIGNAL \ShiftRight0~42_combout\ : std_logic;
SIGNAL \ShiftRight0~41_combout\ : std_logic;
SIGNAL \ShiftRight0~44_combout\ : std_logic;
SIGNAL \Mux29~0_combout\ : std_logic;
SIGNAL \result~0_combout\ : std_logic;
SIGNAL \Mux29~7_combout\ : std_logic;
SIGNAL \Mux29~11_combout\ : std_logic;
SIGNAL \Mux29~12_combout\ : std_logic;
SIGNAL \ShiftRight1~44_combout\ : std_logic;
SIGNAL \ShiftRight1~45_combout\ : std_logic;
SIGNAL \ShiftRight0~46_combout\ : std_logic;
SIGNAL \ShiftRight0~48_combout\ : std_logic;
SIGNAL \ShiftRight1~46_combout\ : std_logic;
SIGNAL \ShiftRight1~47_combout\ : std_logic;
SIGNAL \ShiftRight0~49_combout\ : std_logic;
SIGNAL \ShiftRight0~47_combout\ : std_logic;
SIGNAL \ShiftRight0~50_combout\ : std_logic;
SIGNAL \ShiftRight1~49_combout\ : std_logic;
SIGNAL \Mux28~0_combout\ : std_logic;
SIGNAL \ShiftRight1~50_combout\ : std_logic;
SIGNAL \ShiftRight1~51_combout\ : std_logic;
SIGNAL \ShiftRight0~51_combout\ : std_logic;
SIGNAL \Mux28~1_combout\ : std_logic;
SIGNAL \ShiftRight1~48_combout\ : std_logic;
SIGNAL \Mux28~2_combout\ : std_logic;
SIGNAL \result~1_combout\ : std_logic;
SIGNAL \Mux28~3_combout\ : std_logic;
SIGNAL \Add0~11_combout\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Mux28~4_combout\ : std_logic;
SIGNAL \Mux28~5_combout\ : std_logic;
SIGNAL \Mux28~6_combout\ : std_logic;
SIGNAL \result~2_combout\ : std_logic;
SIGNAL \Mux27~3_combout\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~15_combout\ : std_logic;
SIGNAL \Mux27~4_combout\ : std_logic;
SIGNAL \Mux27~5_combout\ : std_logic;
SIGNAL \Mux27~12_combout\ : std_logic;
SIGNAL \ShiftRight0~52_combout\ : std_logic;
SIGNAL \ShiftRight0~53_combout\ : std_logic;
SIGNAL \ShiftRight1~58_combout\ : std_logic;
SIGNAL \ShiftRight0~55_combout\ : std_logic;
SIGNAL \Mux16~0_combout\ : std_logic;
SIGNAL \Mux27~7_combout\ : std_logic;
SIGNAL \Mux27~8_combout\ : std_logic;
SIGNAL \Mux27~6_combout\ : std_logic;
SIGNAL \Mux27~9_combout\ : std_logic;
SIGNAL \Mux27~10_combout\ : std_logic;
SIGNAL \Mux27~2_combout\ : std_logic;
SIGNAL \Mux27~11_combout\ : std_logic;
SIGNAL \result~3_combout\ : std_logic;
SIGNAL \ShiftRight0~56_combout\ : std_logic;
SIGNAL \ShiftRight0~57_combout\ : std_logic;
SIGNAL \Mux26~1_combout\ : std_logic;
SIGNAL \Add0~17_combout\ : std_logic;
SIGNAL \Add0~16\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \ShiftRight0~58_combout\ : std_logic;
SIGNAL \ShiftRight1~52_combout\ : std_logic;
SIGNAL \ShiftRight1~53_combout\ : std_logic;
SIGNAL \ShiftRight0~59_combout\ : std_logic;
SIGNAL \Mux26~2_combout\ : std_logic;
SIGNAL \Mux26~3_combout\ : std_logic;
SIGNAL \Mux26~4_combout\ : std_logic;
SIGNAL \Mux26~0_combout\ : std_logic;
SIGNAL \Mux26~5_combout\ : std_logic;
SIGNAL \result~4_combout\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~21_combout\ : std_logic;
SIGNAL \Mux25~1_combout\ : std_logic;
SIGNAL \ShiftRight0~60_combout\ : std_logic;
SIGNAL \ShiftRight1~54_combout\ : std_logic;
SIGNAL \ShiftRight1~55_combout\ : std_logic;
SIGNAL \ShiftRight0~62_combout\ : std_logic;
SIGNAL \Mux25~2_combout\ : std_logic;
SIGNAL \Mux25~3_combout\ : std_logic;
SIGNAL \ShiftRight0~61_combout\ : std_logic;
SIGNAL \Mux25~4_combout\ : std_logic;
SIGNAL \Mux25~0_combout\ : std_logic;
SIGNAL \Mux25~5_combout\ : std_logic;
SIGNAL \Add0~23_combout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \ShiftRight0~65_combout\ : std_logic;
SIGNAL \ShiftRight0~63_combout\ : std_logic;
SIGNAL \ShiftRight1~59_combout\ : std_logic;
SIGNAL \Mux24~2_combout\ : std_logic;
SIGNAL \Mux24~3_combout\ : std_logic;
SIGNAL \ShiftRight0~54_combout\ : std_logic;
SIGNAL \ShiftRight0~64_combout\ : std_logic;
SIGNAL \result~5_combout\ : std_logic;
SIGNAL \Mux24~1_combout\ : std_logic;
SIGNAL \Mux24~4_combout\ : std_logic;
SIGNAL \Mux24~0_combout\ : std_logic;
SIGNAL \Mux24~5_combout\ : std_logic;
SIGNAL \Mux23~6_combout\ : std_logic;
SIGNAL \Mux23~0_combout\ : std_logic;
SIGNAL \Mux23~1_combout\ : std_logic;
SIGNAL \ShiftRight0~66_combout\ : std_logic;
SIGNAL \ShiftRight1~60_combout\ : std_logic;
SIGNAL \Mux23~2_combout\ : std_logic;
SIGNAL \result~6_combout\ : std_logic;
SIGNAL \Mux23~3_combout\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~27_combout\ : std_logic;
SIGNAL \Mux23~4_combout\ : std_logic;
SIGNAL \Mux23~5_combout\ : std_logic;
SIGNAL \Mux23~7_combout\ : std_logic;
SIGNAL \ShiftRight0~67_combout\ : std_logic;
SIGNAL \ShiftRight1~61_combout\ : std_logic;
SIGNAL \Mux22~1_combout\ : std_logic;
SIGNAL \result~7_combout\ : std_logic;
SIGNAL \Mux22~2_combout\ : std_logic;
SIGNAL \Add0~29_combout\ : std_logic;
SIGNAL \Add0~28\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Mux22~3_combout\ : std_logic;
SIGNAL \Mux22~4_combout\ : std_logic;
SIGNAL \Mux22~5_combout\ : std_logic;
SIGNAL \ShiftRight0~68_combout\ : std_logic;
SIGNAL \ShiftRight0~69_combout\ : std_logic;
SIGNAL \ShiftRight1~62_combout\ : std_logic;
SIGNAL \Mux21~1_combout\ : std_logic;
SIGNAL \result~8_combout\ : std_logic;
SIGNAL \Mux21~2_combout\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~33_combout\ : std_logic;
SIGNAL \Mux21~3_combout\ : std_logic;
SIGNAL \Mux21~4_combout\ : std_logic;
SIGNAL \Mux21~5_combout\ : std_logic;
SIGNAL \Add0~35_combout\ : std_logic;
SIGNAL \Add0~34\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \Mux20~3_combout\ : std_logic;
SIGNAL \ShiftRight1~63_combout\ : std_logic;
SIGNAL \Mux20~1_combout\ : std_logic;
SIGNAL \result~9_combout\ : std_logic;
SIGNAL \ShiftRight0~70_combout\ : std_logic;
SIGNAL \ShiftRight0~71_combout\ : std_logic;
SIGNAL \Mux20~2_combout\ : std_logic;
SIGNAL \Mux20~4_combout\ : std_logic;
SIGNAL \Mux20~0_combout\ : std_logic;
SIGNAL \Mux20~5_combout\ : std_logic;
SIGNAL \ShiftRight0~72_combout\ : std_logic;
SIGNAL \result~10_combout\ : std_logic;
SIGNAL \ShiftRight1~64_combout\ : std_logic;
SIGNAL \Mux19~1_combout\ : std_logic;
SIGNAL \Mux19~2_combout\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~39_combout\ : std_logic;
SIGNAL \Mux19~3_combout\ : std_logic;
SIGNAL \Mux19~4_combout\ : std_logic;
SIGNAL \Mux19~0_combout\ : std_logic;
SIGNAL \Mux19~5_combout\ : std_logic;
SIGNAL \Mux18~0_combout\ : std_logic;
SIGNAL \Add0~41_combout\ : std_logic;
SIGNAL \Add0~40\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \Mux18~3_combout\ : std_logic;
SIGNAL \ShiftRight0~74_combout\ : std_logic;
SIGNAL \ShiftRight1~56_combout\ : std_logic;
SIGNAL \Mux18~1_combout\ : std_logic;
SIGNAL \result~11_combout\ : std_logic;
SIGNAL \Mux18~2_combout\ : std_logic;
SIGNAL \Mux18~4_combout\ : std_logic;
SIGNAL \Mux18~5_combout\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~45_combout\ : std_logic;
SIGNAL \Mux17~3_combout\ : std_logic;
SIGNAL \ShiftRight0~75_combout\ : std_logic;
SIGNAL \ShiftRight0~73_combout\ : std_logic;
SIGNAL \ShiftRight1~57_combout\ : std_logic;
SIGNAL \Mux17~1_combout\ : std_logic;
SIGNAL \result~12_combout\ : std_logic;
SIGNAL \Mux17~2_combout\ : std_logic;
SIGNAL \Mux17~4_combout\ : std_logic;
SIGNAL \Mux17~0_combout\ : std_logic;
SIGNAL \Mux17~5_combout\ : std_logic;
SIGNAL \Mux16~1_combout\ : std_logic;
SIGNAL \Mux16~2_combout\ : std_logic;
SIGNAL \Mux16~3_combout\ : std_logic;
SIGNAL \Mux16~4_combout\ : std_logic;
SIGNAL \Add0~47_combout\ : std_logic;
SIGNAL \Add0~46\ : std_logic;
SIGNAL \Add0~48_combout\ : std_logic;
SIGNAL \Mux16~5_combout\ : std_logic;
SIGNAL \Mux16~6_combout\ : std_logic;
SIGNAL \Mux16~7_combout\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \Add0~49\ : std_logic;
SIGNAL \Add0~51_combout\ : std_logic;
SIGNAL \Mux15~4_combout\ : std_logic;
SIGNAL \Mux15~3_combout\ : std_logic;
SIGNAL \Mux15~5_combout\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \Mux15~1_combout\ : std_logic;
SIGNAL \Mux15~2_combout\ : std_logic;
SIGNAL \Mux15~6_combout\ : std_logic;
SIGNAL \Add0~53_combout\ : std_logic;
SIGNAL \Add0~52\ : std_logic;
SIGNAL \Add0~54_combout\ : std_logic;
SIGNAL \Mux10~2_combout\ : std_logic;
SIGNAL \result~13_combout\ : std_logic;
SIGNAL \Mux10~1_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \Mux14~1_combout\ : std_logic;
SIGNAL \Mux14~2_combout\ : std_logic;
SIGNAL \Mux14~3_combout\ : std_logic;
SIGNAL \Mux14~4_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT18\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult5~dataout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult5~DATAOUT1\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult5~DATAOUT2\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult5~DATAOUT3\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult5~DATAOUT4\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult5~DATAOUT5\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult5~DATAOUT6\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult5~DATAOUT7\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult5~DATAOUT8\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult5~DATAOUT9\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult5~DATAOUT10\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult5~DATAOUT11\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult5~DATAOUT12\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult5~DATAOUT13\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult5~DATAOUT14\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult5~DATAOUT15\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult5~DATAOUT16\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult5~DATAOUT17\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult5~DATAOUT18\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult5~DATAOUT19\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult5~DATAOUT20\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult5~DATAOUT21\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult5~DATAOUT22\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult5~DATAOUT23\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult5~DATAOUT24\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult5~DATAOUT25\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult5~DATAOUT26\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult5~DATAOUT27\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult5~DATAOUT28\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult5~DATAOUT29\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult5~DATAOUT30\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult5~DATAOUT31\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult5~0\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult5~1\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult5~2\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult5~3\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out6~dataout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult3~dataout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult3~DATAOUT1\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult3~DATAOUT2\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult3~DATAOUT3\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult3~DATAOUT4\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult3~DATAOUT5\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult3~DATAOUT6\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult3~DATAOUT7\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult3~DATAOUT8\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult3~DATAOUT9\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult3~DATAOUT10\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult3~DATAOUT11\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult3~DATAOUT12\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult3~DATAOUT13\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult3~DATAOUT14\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult3~DATAOUT15\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult3~DATAOUT16\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult3~DATAOUT17\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult3~DATAOUT18\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult3~DATAOUT19\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult3~DATAOUT20\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult3~DATAOUT21\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult3~DATAOUT22\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult3~DATAOUT23\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult3~DATAOUT24\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult3~DATAOUT25\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult3~DATAOUT26\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult3~DATAOUT27\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult3~DATAOUT28\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult3~DATAOUT29\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult3~DATAOUT30\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult3~DATAOUT31\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult3~0\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult3~1\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult3~2\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult3~3\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out4~dataout\ : std_logic;
SIGNAL \Mult1|auto_generated|add9_result[0]~0_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \result~14_combout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Mux13~1_combout\ : std_logic;
SIGNAL \Add0~56_combout\ : std_logic;
SIGNAL \Add0~55\ : std_logic;
SIGNAL \Add0~57_combout\ : std_logic;
SIGNAL \Mux13~2_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult5~dataout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult5~DATAOUT1\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult5~DATAOUT2\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult5~DATAOUT3\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult5~DATAOUT4\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult5~DATAOUT5\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult5~DATAOUT6\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult5~DATAOUT7\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult5~DATAOUT8\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult5~DATAOUT9\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult5~DATAOUT10\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult5~DATAOUT11\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult5~DATAOUT12\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult5~DATAOUT13\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult5~DATAOUT14\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult5~DATAOUT15\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult5~DATAOUT16\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult5~DATAOUT17\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult5~DATAOUT18\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult5~DATAOUT19\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult5~DATAOUT20\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult5~DATAOUT21\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult5~DATAOUT22\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult5~DATAOUT23\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult5~DATAOUT24\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult5~DATAOUT25\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult5~DATAOUT26\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult5~DATAOUT27\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult5~DATAOUT28\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult5~DATAOUT29\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult5~DATAOUT30\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult5~DATAOUT31\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult5~0\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult5~1\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult5~2\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult5~3\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out6~dataout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~dataout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT1\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT2\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT3\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT4\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT5\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT6\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT7\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT8\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT9\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT10\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT11\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT12\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT13\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT14\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT15\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT16\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT17\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT18\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT19\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT20\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT21\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT22\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT23\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT24\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT25\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT26\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT27\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT28\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT29\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT30\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT31\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~0\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~1\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~2\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~3\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~dataout\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[0]~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT18\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \Mux13~3_combout\ : std_logic;
SIGNAL \Mux13~4_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out4~DATAOUT1\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out6~DATAOUT1\ : std_logic;
SIGNAL \Mult1|auto_generated|add9_result[0]~1\ : std_logic;
SIGNAL \Mult1|auto_generated|add9_result[1]~2_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT19\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~1\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \result~15_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \Mux12~1_combout\ : std_logic;
SIGNAL \Add0~59_combout\ : std_logic;
SIGNAL \Add0~58\ : std_logic;
SIGNAL \Add0~60_combout\ : std_logic;
SIGNAL \Mux12~2_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out6~DATAOUT1\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~DATAOUT1\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[0]~1\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[1]~2_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT19\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~1\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \Mux12~3_combout\ : std_logic;
SIGNAL \Mux12~4_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT20\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out4~DATAOUT2\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out6~DATAOUT2\ : std_logic;
SIGNAL \Mult1|auto_generated|add9_result[1]~3\ : std_logic;
SIGNAL \Mult1|auto_generated|add9_result[2]~4_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~3\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~DATAOUT2\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out6~DATAOUT2\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[1]~3\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[2]~4_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT20\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~3\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \Add0~62_combout\ : std_logic;
SIGNAL \Add0~61\ : std_logic;
SIGNAL \Add0~63_combout\ : std_logic;
SIGNAL \result~16_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux11~1_combout\ : std_logic;
SIGNAL \Mux11~2_combout\ : std_logic;
SIGNAL \Mux11~3_combout\ : std_logic;
SIGNAL \Mux11~4_combout\ : std_logic;
SIGNAL \result~17_combout\ : std_logic;
SIGNAL \Mux10~3_combout\ : std_logic;
SIGNAL \Mux10~4_combout\ : std_logic;
SIGNAL \Add0~65_combout\ : std_logic;
SIGNAL \Add0~64\ : std_logic;
SIGNAL \Add0~66_combout\ : std_logic;
SIGNAL \Mux10~5_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out6~DATAOUT3\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~DATAOUT3\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[2]~5\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[3]~6_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT21\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~5\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT21\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out6~DATAOUT3\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out4~DATAOUT3\ : std_logic;
SIGNAL \Mult1|auto_generated|add9_result[2]~5\ : std_logic;
SIGNAL \Mult1|auto_generated|add9_result[3]~6_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~5\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \Mux10~6_combout\ : std_logic;
SIGNAL \Mux10~7_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out4~DATAOUT4\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out6~DATAOUT4\ : std_logic;
SIGNAL \Mult1|auto_generated|add9_result[3]~7\ : std_logic;
SIGNAL \Mult1|auto_generated|add9_result[4]~8_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT22\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~7\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \result~18_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux9~1_combout\ : std_logic;
SIGNAL \Add0~68_combout\ : std_logic;
SIGNAL \Add0~67\ : std_logic;
SIGNAL \Add0~69_combout\ : std_logic;
SIGNAL \Mux9~2_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT22\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~DATAOUT4\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out6~DATAOUT4\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[3]~7\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[4]~8_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~7\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \Mux9~3_combout\ : std_logic;
SIGNAL \Mux9~4_combout\ : std_logic;
SIGNAL \result~19_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux8~1_combout\ : std_logic;
SIGNAL \Add0~71_combout\ : std_logic;
SIGNAL \Add0~70\ : std_logic;
SIGNAL \Add0~72_combout\ : std_logic;
SIGNAL \Mux8~2_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT23\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out6~DATAOUT5\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out4~DATAOUT5\ : std_logic;
SIGNAL \Mult1|auto_generated|add9_result[4]~9\ : std_logic;
SIGNAL \Mult1|auto_generated|add9_result[5]~10_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~9\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT23\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~DATAOUT5\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out6~DATAOUT5\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[4]~9\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[5]~10_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~9\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \Mux8~3_combout\ : std_logic;
SIGNAL \Mux8~4_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT24\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out6~DATAOUT6\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out4~DATAOUT6\ : std_logic;
SIGNAL \Mult1|auto_generated|add9_result[5]~11\ : std_logic;
SIGNAL \Mult1|auto_generated|add9_result[6]~12_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~11\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~12_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out6~DATAOUT6\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~DATAOUT6\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[5]~11\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[6]~12_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT24\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~11\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~12_combout\ : std_logic;
SIGNAL \Add0~74_combout\ : std_logic;
SIGNAL \Add0~73\ : std_logic;
SIGNAL \Add0~75_combout\ : std_logic;
SIGNAL \result~20_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL \Mux7~2_combout\ : std_logic;
SIGNAL \Mux7~3_combout\ : std_logic;
SIGNAL \Mux7~4_combout\ : std_logic;
SIGNAL \result~21_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \Add0~77_combout\ : std_logic;
SIGNAL \Add0~76\ : std_logic;
SIGNAL \Add0~78_combout\ : std_logic;
SIGNAL \Mux6~2_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT25\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out6~DATAOUT7\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~DATAOUT7\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[6]~13\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[7]~14_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~13\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~14_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT25\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out4~DATAOUT7\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out6~DATAOUT7\ : std_logic;
SIGNAL \Mult1|auto_generated|add9_result[6]~13\ : std_logic;
SIGNAL \Mult1|auto_generated|add9_result[7]~14_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~13\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~14_combout\ : std_logic;
SIGNAL \Mux6~3_combout\ : std_logic;
SIGNAL \Mux6~4_combout\ : std_logic;
SIGNAL \Add0~80_combout\ : std_logic;
SIGNAL \Add0~79\ : std_logic;
SIGNAL \Add0~81_combout\ : std_logic;
SIGNAL \result~22_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \Mux5~2_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out6~DATAOUT8\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~DATAOUT8\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[7]~15\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[8]~16_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT26\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~15\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~16_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT26\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out6~DATAOUT8\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out4~DATAOUT8\ : std_logic;
SIGNAL \Mult1|auto_generated|add9_result[7]~15\ : std_logic;
SIGNAL \Mult1|auto_generated|add9_result[8]~16_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~15\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~16_combout\ : std_logic;
SIGNAL \Mux5~3_combout\ : std_logic;
SIGNAL \Mux5~4_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out6~DATAOUT9\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~DATAOUT9\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[8]~17\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[9]~18_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT27\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~17\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~18_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out6~DATAOUT9\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out4~DATAOUT9\ : std_logic;
SIGNAL \Mult1|auto_generated|add9_result[8]~17\ : std_logic;
SIGNAL \Mult1|auto_generated|add9_result[9]~18_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT27\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~17\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~18_combout\ : std_logic;
SIGNAL \Add0~83_combout\ : std_logic;
SIGNAL \Add0~82\ : std_logic;
SIGNAL \Add0~84_combout\ : std_logic;
SIGNAL \result~23_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \Mux4~2_combout\ : std_logic;
SIGNAL \Mux4~3_combout\ : std_logic;
SIGNAL \Mux4~4_combout\ : std_logic;
SIGNAL \Add0~86_combout\ : std_logic;
SIGNAL \Add0~85\ : std_logic;
SIGNAL \Add0~87_combout\ : std_logic;
SIGNAL \result~24_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out4~DATAOUT10\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out6~DATAOUT10\ : std_logic;
SIGNAL \Mult1|auto_generated|add9_result[9]~19\ : std_logic;
SIGNAL \Mult1|auto_generated|add9_result[10]~20_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT28\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~19\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~20_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out6~DATAOUT10\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~DATAOUT10\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[9]~19\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[10]~20_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT28\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~19\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~20_combout\ : std_logic;
SIGNAL \Mux3~3_combout\ : std_logic;
SIGNAL \Mux3~4_combout\ : std_logic;
SIGNAL \Add0~89_combout\ : std_logic;
SIGNAL \Add0~88\ : std_logic;
SIGNAL \Add0~90_combout\ : std_logic;
SIGNAL \result~25_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \Mux2~2_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out4~DATAOUT11\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out6~DATAOUT11\ : std_logic;
SIGNAL \Mult1|auto_generated|add9_result[10]~21\ : std_logic;
SIGNAL \Mult1|auto_generated|add9_result[11]~22_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT29\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~21\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~22_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~DATAOUT11\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out6~DATAOUT11\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[10]~21\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[11]~22_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT29\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~21\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~22_combout\ : std_logic;
SIGNAL \Mux2~3_combout\ : std_logic;
SIGNAL \Mux2~4_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT30\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out6~DATAOUT12\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out4~DATAOUT12\ : std_logic;
SIGNAL \Mult1|auto_generated|add9_result[11]~23\ : std_logic;
SIGNAL \Mult1|auto_generated|add9_result[12]~24_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~23\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~24_combout\ : std_logic;
SIGNAL \Add0~92_combout\ : std_logic;
SIGNAL \Add0~91\ : std_logic;
SIGNAL \Add0~93_combout\ : std_logic;
SIGNAL \result~26_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~DATAOUT12\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out6~DATAOUT12\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[11]~23\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[12]~24_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT30\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~23\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~24_combout\ : std_logic;
SIGNAL \Mux1~3_combout\ : std_logic;
SIGNAL \Mux1~4_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT31\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~DATAOUT13\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out6~DATAOUT13\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[12]~25\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[13]~26_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~25\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~26_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out4~DATAOUT13\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out6~DATAOUT13\ : std_logic;
SIGNAL \Mult1|auto_generated|add9_result[12]~25\ : std_logic;
SIGNAL \Mult1|auto_generated|add9_result[13]~26_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT31\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~25\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~26_combout\ : std_logic;
SIGNAL \Mux0~3_combout\ : std_logic;
SIGNAL \Add0~96_combout\ : std_logic;
SIGNAL \Add0~95_combout\ : std_logic;
SIGNAL \Add0~94\ : std_logic;
SIGNAL \Add0~97_combout\ : std_logic;
SIGNAL \Mux0~4_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \Mux0~5_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out6~DATAOUT14\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~DATAOUT14\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[13]~27\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[14]~28_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT32\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~27\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~28_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT32\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out4~DATAOUT14\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out6~DATAOUT14\ : std_logic;
SIGNAL \Mult1|auto_generated|add9_result[13]~27\ : std_logic;
SIGNAL \Mult1|auto_generated|add9_result[14]~28_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~27\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~28_combout\ : std_logic;
SIGNAL \Mux63~0_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out4~DATAOUT15\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out6~DATAOUT15\ : std_logic;
SIGNAL \Mult1|auto_generated|add9_result[14]~29\ : std_logic;
SIGNAL \Mult1|auto_generated|add9_result[15]~30_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT33\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~29\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~30_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT33\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~DATAOUT15\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out6~DATAOUT15\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[14]~29\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[15]~30_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~29\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~30_combout\ : std_logic;
SIGNAL \Mux62~0_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT34\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out4~DATAOUT16\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out6~DATAOUT16\ : std_logic;
SIGNAL \Mult1|auto_generated|add9_result[15]~31\ : std_logic;
SIGNAL \Mult1|auto_generated|add9_result[16]~32_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~31\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~32_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~DATAOUT16\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out6~DATAOUT16\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[15]~31\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[16]~32_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT34\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~31\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~32_combout\ : std_logic;
SIGNAL \Mux61~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~DATAOUT17\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out6~DATAOUT17\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[16]~33\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[17]~34_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT35\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~33\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~34_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT35\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out6~DATAOUT17\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out4~DATAOUT17\ : std_logic;
SIGNAL \Mult1|auto_generated|add9_result[16]~33\ : std_logic;
SIGNAL \Mult1|auto_generated|add9_result[17]~34_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~33\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~34_combout\ : std_logic;
SIGNAL \Mux60~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult7~dataout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult7~DATAOUT1\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult7~DATAOUT2\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult7~DATAOUT3\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult7~DATAOUT4\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult7~DATAOUT5\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult7~DATAOUT6\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult7~DATAOUT7\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult7~DATAOUT8\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult7~DATAOUT9\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult7~DATAOUT10\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult7~DATAOUT11\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult7~DATAOUT12\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult7~DATAOUT13\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult7~DATAOUT14\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult7~DATAOUT15\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult7~DATAOUT16\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult7~DATAOUT17\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult7~DATAOUT18\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult7~DATAOUT19\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult7~DATAOUT20\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult7~DATAOUT21\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult7~DATAOUT22\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult7~DATAOUT23\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult7~DATAOUT24\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult7~DATAOUT25\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult7~DATAOUT26\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult7~DATAOUT27\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult7~0\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult7~1\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult7~2\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult7~3\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult7~4\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult7~5\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult7~6\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult7~7\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out8~dataout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out6~DATAOUT18\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[17]~35\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[18]~36_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~DATAOUT18\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~35\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~36_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out6~DATAOUT18\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult7~dataout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult7~DATAOUT1\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult7~DATAOUT2\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult7~DATAOUT3\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult7~DATAOUT4\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult7~DATAOUT5\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult7~DATAOUT6\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult7~DATAOUT7\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult7~DATAOUT8\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult7~DATAOUT9\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult7~DATAOUT10\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult7~DATAOUT11\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult7~DATAOUT12\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult7~DATAOUT13\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult7~DATAOUT14\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult7~DATAOUT15\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult7~DATAOUT16\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult7~DATAOUT17\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult7~DATAOUT18\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult7~DATAOUT19\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult7~DATAOUT20\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult7~DATAOUT21\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult7~DATAOUT22\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult7~DATAOUT23\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult7~DATAOUT24\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult7~DATAOUT25\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult7~DATAOUT26\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult7~DATAOUT27\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult7~0\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult7~1\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult7~2\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult7~3\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult7~4\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult7~5\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult7~6\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult7~7\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out8~dataout\ : std_logic;
SIGNAL \Mult1|auto_generated|add9_result[17]~35\ : std_logic;
SIGNAL \Mult1|auto_generated|add9_result[18]~36_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out4~DATAOUT18\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~35\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~36_combout\ : std_logic;
SIGNAL \Mux59~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out6~DATAOUT19\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out8~DATAOUT1\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[18]~37\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[19]~38_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~DATAOUT19\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~37\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~38_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out4~DATAOUT19\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out8~DATAOUT1\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out6~DATAOUT19\ : std_logic;
SIGNAL \Mult1|auto_generated|add9_result[18]~37\ : std_logic;
SIGNAL \Mult1|auto_generated|add9_result[19]~38_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~37\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~38_combout\ : std_logic;
SIGNAL \Mux58~0_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out4~DATAOUT20\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out6~DATAOUT20\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out8~DATAOUT2\ : std_logic;
SIGNAL \Mult1|auto_generated|add9_result[19]~39\ : std_logic;
SIGNAL \Mult1|auto_generated|add9_result[20]~40_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~39\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~40_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~DATAOUT20\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out8~DATAOUT2\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out6~DATAOUT20\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[19]~39\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[20]~40_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~39\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~40_combout\ : std_logic;
SIGNAL \Mux57~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~DATAOUT21\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out6~DATAOUT21\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out8~DATAOUT3\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[20]~41\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[21]~42_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~41\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~42_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out4~DATAOUT21\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out6~DATAOUT21\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out8~DATAOUT3\ : std_logic;
SIGNAL \Mult1|auto_generated|add9_result[20]~41\ : std_logic;
SIGNAL \Mult1|auto_generated|add9_result[21]~42_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~41\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~42_combout\ : std_logic;
SIGNAL \Mux56~0_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out8~DATAOUT4\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out6~DATAOUT22\ : std_logic;
SIGNAL \Mult1|auto_generated|add9_result[21]~43\ : std_logic;
SIGNAL \Mult1|auto_generated|add9_result[22]~44_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out4~DATAOUT22\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~43\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~44_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~DATAOUT22\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out8~DATAOUT4\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out6~DATAOUT22\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[21]~43\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[22]~44_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~43\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~44_combout\ : std_logic;
SIGNAL \Mux55~0_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out8~DATAOUT5\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out6~DATAOUT23\ : std_logic;
SIGNAL \Mult1|auto_generated|add9_result[22]~45\ : std_logic;
SIGNAL \Mult1|auto_generated|add9_result[23]~46_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out4~DATAOUT23\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~45\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~46_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out8~DATAOUT5\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out6~DATAOUT23\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[22]~45\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[23]~46_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~DATAOUT23\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~45\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~46_combout\ : std_logic;
SIGNAL \Mux54~0_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out4~DATAOUT24\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out6~DATAOUT24\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out8~DATAOUT6\ : std_logic;
SIGNAL \Mult1|auto_generated|add9_result[23]~47\ : std_logic;
SIGNAL \Mult1|auto_generated|add9_result[24]~48_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~47\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~48_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~DATAOUT24\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out8~DATAOUT6\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out6~DATAOUT24\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[23]~47\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[24]~48_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~47\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~48_combout\ : std_logic;
SIGNAL \Mux53~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out8~DATAOUT7\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out6~DATAOUT25\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[24]~49\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[25]~50_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~DATAOUT25\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~49\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~50_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out8~DATAOUT7\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out6~DATAOUT25\ : std_logic;
SIGNAL \Mult1|auto_generated|add9_result[24]~49\ : std_logic;
SIGNAL \Mult1|auto_generated|add9_result[25]~50_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out4~DATAOUT25\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~49\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~50_combout\ : std_logic;
SIGNAL \Mux52~0_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out4~DATAOUT26\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out8~DATAOUT8\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out6~DATAOUT26\ : std_logic;
SIGNAL \Mult1|auto_generated|add9_result[25]~51\ : std_logic;
SIGNAL \Mult1|auto_generated|add9_result[26]~52_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~51\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~52_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~DATAOUT26\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out6~DATAOUT26\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out8~DATAOUT8\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[25]~51\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[26]~52_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~51\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~52_combout\ : std_logic;
SIGNAL \Mux51~0_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out4~DATAOUT27\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out8~DATAOUT9\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out6~DATAOUT27\ : std_logic;
SIGNAL \Mult1|auto_generated|add9_result[26]~53\ : std_logic;
SIGNAL \Mult1|auto_generated|add9_result[27]~54_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~53\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~54_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~DATAOUT27\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out6~DATAOUT27\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out8~DATAOUT9\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[26]~53\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[27]~54_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~53\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~54_combout\ : std_logic;
SIGNAL \Mux50~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~DATAOUT28\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out6~DATAOUT28\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out8~DATAOUT10\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[27]~55\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[28]~56_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~55\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~56_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out8~DATAOUT10\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out6~DATAOUT28\ : std_logic;
SIGNAL \Mult1|auto_generated|add9_result[27]~55\ : std_logic;
SIGNAL \Mult1|auto_generated|add9_result[28]~56_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out4~DATAOUT28\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~55\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~56_combout\ : std_logic;
SIGNAL \Mux49~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~DATAOUT29\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out6~DATAOUT29\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out8~DATAOUT11\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[28]~57\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[29]~58_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~57\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~58_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out6~DATAOUT29\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out8~DATAOUT11\ : std_logic;
SIGNAL \Mult1|auto_generated|add9_result[28]~57\ : std_logic;
SIGNAL \Mult1|auto_generated|add9_result[29]~58_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out4~DATAOUT29\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~57\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~58_combout\ : std_logic;
SIGNAL \Mux48~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out6~DATAOUT30\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out8~DATAOUT12\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[29]~59\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[30]~60_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~DATAOUT30\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~59\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~60_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out6~DATAOUT30\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out8~DATAOUT12\ : std_logic;
SIGNAL \Mult1|auto_generated|add9_result[29]~59\ : std_logic;
SIGNAL \Mult1|auto_generated|add9_result[30]~60_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out4~DATAOUT30\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~59\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~60_combout\ : std_logic;
SIGNAL \Mux47~0_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out4~DATAOUT31\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out6~DATAOUT31\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out8~DATAOUT13\ : std_logic;
SIGNAL \Mult1|auto_generated|add9_result[30]~61\ : std_logic;
SIGNAL \Mult1|auto_generated|add9_result[31]~62_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~61\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~62_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~DATAOUT31\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out6~DATAOUT31\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out8~DATAOUT13\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[30]~61\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[31]~62_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~61\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~62_combout\ : std_logic;
SIGNAL \Mux46~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out8~DATAOUT14\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[31]~63\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[32]~64_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~63\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~64_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|add9_result[31]~63\ : std_logic;
SIGNAL \Mult1|auto_generated|add9_result[32]~64_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out8~DATAOUT14\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~63\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~64_combout\ : std_logic;
SIGNAL \Mux45~0_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out8~DATAOUT15\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~65\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~66_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out8~DATAOUT15\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[32]~65\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[33]~66_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~65\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~66_combout\ : std_logic;
SIGNAL \Mux44~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out8~DATAOUT16\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[33]~67\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[34]~68_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~67\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~68_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out8~DATAOUT16\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~67\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~68_combout\ : std_logic;
SIGNAL \Mux43~0_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out8~DATAOUT17\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~69\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~70_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out8~DATAOUT17\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[34]~69\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[35]~70_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~69\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~70_combout\ : std_logic;
SIGNAL \Mux42~0_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out8~DATAOUT18\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~71\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~72_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out8~DATAOUT18\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[35]~71\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[36]~72_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~71\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~72_combout\ : std_logic;
SIGNAL \Mux41~0_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out8~DATAOUT19\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~73\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~74_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out8~DATAOUT19\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[36]~73\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[37]~74_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~73\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~74_combout\ : std_logic;
SIGNAL \Mux40~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out8~DATAOUT20\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[37]~75\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[38]~76_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~75\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~76_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out8~DATAOUT20\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~75\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~76_combout\ : std_logic;
SIGNAL \Mux39~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out8~DATAOUT21\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[38]~77\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[39]~78_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~77\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~78_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out8~DATAOUT21\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~77\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~78_combout\ : std_logic;
SIGNAL \Mux38~0_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out8~DATAOUT22\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~79\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~80_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out8~DATAOUT22\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[39]~79\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[40]~80_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~79\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~80_combout\ : std_logic;
SIGNAL \Mux37~0_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out8~DATAOUT23\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~81\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~82_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out8~DATAOUT23\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[40]~81\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[41]~82_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~81\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~82_combout\ : std_logic;
SIGNAL \Mux36~0_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out8~DATAOUT24\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~83\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~84_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out8~DATAOUT24\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[41]~83\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[42]~84_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~83\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~84_combout\ : std_logic;
SIGNAL \Mux35~0_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out8~DATAOUT25\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~85\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~86_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out8~DATAOUT25\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[42]~85\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[43]~86_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~85\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~86_combout\ : std_logic;
SIGNAL \Mux34~0_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out8~DATAOUT26\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~87\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~88_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out8~DATAOUT26\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[43]~87\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[44]~88_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~87\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~88_combout\ : std_logic;
SIGNAL \Mux33~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[44]~89\ : std_logic;
SIGNAL \Mult0|auto_generated|add9_result[45]~90_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out8~DATAOUT27\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~89\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~90_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out8~DATAOUT27\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~89\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~90_combout\ : std_logic;
SIGNAL \Mux32~0_combout\ : std_logic;
SIGNAL \LessThan1~7_combout\ : std_logic;
SIGNAL \LessThan1~8_combout\ : std_logic;
SIGNAL \LessThan1~6_combout\ : std_logic;
SIGNAL \LessThan1~2_combout\ : std_logic;
SIGNAL \LessThan1~3_combout\ : std_logic;
SIGNAL \LessThan1~1_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \LessThan1~4_combout\ : std_logic;
SIGNAL \LessThan1~5_combout\ : std_logic;
SIGNAL \LessThan1~9_combout\ : std_logic;
SIGNAL \Mux64~0_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|w513w\ : std_logic_vector(64 DOWNTO 0);
SIGNAL \Mult0|auto_generated|w569w\ : std_logic_vector(64 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_a <= a;
ww_b <= b;
ww_opsel <= opsel;
ww_shamt <= shamt;
result <= ww_result;
result_hi <= ww_result_hi;
branch_taken <= ww_branch_taken;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Mult1|auto_generated|mac_out2_DATAA_bus\ <= (\Mult1|auto_generated|mac_mult1~DATAOUT35\ & \Mult1|auto_generated|mac_mult1~DATAOUT34\ & \Mult1|auto_generated|mac_mult1~DATAOUT33\ & \Mult1|auto_generated|mac_mult1~DATAOUT32\ & 
\Mult1|auto_generated|mac_mult1~DATAOUT31\ & \Mult1|auto_generated|mac_mult1~DATAOUT30\ & \Mult1|auto_generated|mac_mult1~DATAOUT29\ & \Mult1|auto_generated|mac_mult1~DATAOUT28\ & \Mult1|auto_generated|mac_mult1~DATAOUT27\ & 
\Mult1|auto_generated|mac_mult1~DATAOUT26\ & \Mult1|auto_generated|mac_mult1~DATAOUT25\ & \Mult1|auto_generated|mac_mult1~DATAOUT24\ & \Mult1|auto_generated|mac_mult1~DATAOUT23\ & \Mult1|auto_generated|mac_mult1~DATAOUT22\ & 
\Mult1|auto_generated|mac_mult1~DATAOUT21\ & \Mult1|auto_generated|mac_mult1~DATAOUT20\ & \Mult1|auto_generated|mac_mult1~DATAOUT19\ & \Mult1|auto_generated|mac_mult1~DATAOUT18\ & \Mult1|auto_generated|mac_mult1~DATAOUT17\ & 
\Mult1|auto_generated|mac_mult1~DATAOUT16\ & \Mult1|auto_generated|mac_mult1~DATAOUT15\ & \Mult1|auto_generated|mac_mult1~DATAOUT14\ & \Mult1|auto_generated|mac_mult1~DATAOUT13\ & \Mult1|auto_generated|mac_mult1~DATAOUT12\ & 
\Mult1|auto_generated|mac_mult1~DATAOUT11\ & \Mult1|auto_generated|mac_mult1~DATAOUT10\ & \Mult1|auto_generated|mac_mult1~DATAOUT9\ & \Mult1|auto_generated|mac_mult1~DATAOUT8\ & \Mult1|auto_generated|mac_mult1~DATAOUT7\ & 
\Mult1|auto_generated|mac_mult1~DATAOUT6\ & \Mult1|auto_generated|mac_mult1~DATAOUT5\ & \Mult1|auto_generated|mac_mult1~DATAOUT4\ & \Mult1|auto_generated|mac_mult1~DATAOUT3\ & \Mult1|auto_generated|mac_mult1~DATAOUT2\ & 
\Mult1|auto_generated|mac_mult1~DATAOUT1\ & \Mult1|auto_generated|mac_mult1~dataout\);

\Mult1|auto_generated|w513w\(0) <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(0);
\Mult1|auto_generated|w513w\(1) <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(1);
\Mult1|auto_generated|w513w\(2) <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(2);
\Mult1|auto_generated|w513w\(3) <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(3);
\Mult1|auto_generated|w513w\(4) <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(4);
\Mult1|auto_generated|w513w\(5) <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(5);
\Mult1|auto_generated|w513w\(6) <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(6);
\Mult1|auto_generated|w513w\(7) <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(7);
\Mult1|auto_generated|w513w\(8) <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(8);
\Mult1|auto_generated|w513w\(9) <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(9);
\Mult1|auto_generated|w513w\(10) <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(10);
\Mult1|auto_generated|w513w\(11) <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(11);
\Mult1|auto_generated|w513w\(12) <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(12);
\Mult1|auto_generated|w513w\(13) <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(13);
\Mult1|auto_generated|w513w\(14) <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(14);
\Mult1|auto_generated|w513w\(15) <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(15);
\Mult1|auto_generated|w513w\(16) <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(16);
\Mult1|auto_generated|w513w\(17) <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(17);
\Mult1|auto_generated|mac_out2~DATAOUT18\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(18);
\Mult1|auto_generated|mac_out2~DATAOUT19\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(19);
\Mult1|auto_generated|mac_out2~DATAOUT20\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(20);
\Mult1|auto_generated|mac_out2~DATAOUT21\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(21);
\Mult1|auto_generated|mac_out2~DATAOUT22\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(22);
\Mult1|auto_generated|mac_out2~DATAOUT23\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(23);
\Mult1|auto_generated|mac_out2~DATAOUT24\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(24);
\Mult1|auto_generated|mac_out2~DATAOUT25\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(25);
\Mult1|auto_generated|mac_out2~DATAOUT26\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(26);
\Mult1|auto_generated|mac_out2~DATAOUT27\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(27);
\Mult1|auto_generated|mac_out2~DATAOUT28\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(28);
\Mult1|auto_generated|mac_out2~DATAOUT29\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(29);
\Mult1|auto_generated|mac_out2~DATAOUT30\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(30);
\Mult1|auto_generated|mac_out2~DATAOUT31\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(31);
\Mult1|auto_generated|mac_out2~DATAOUT32\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(32);
\Mult1|auto_generated|mac_out2~DATAOUT33\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(33);
\Mult1|auto_generated|mac_out2~DATAOUT34\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(34);
\Mult1|auto_generated|mac_out2~DATAOUT35\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(35);

\Mult0|auto_generated|mac_out2_DATAA_bus\ <= (\Mult0|auto_generated|mac_mult1~DATAOUT35\ & \Mult0|auto_generated|mac_mult1~DATAOUT34\ & \Mult0|auto_generated|mac_mult1~DATAOUT33\ & \Mult0|auto_generated|mac_mult1~DATAOUT32\ & 
\Mult0|auto_generated|mac_mult1~DATAOUT31\ & \Mult0|auto_generated|mac_mult1~DATAOUT30\ & \Mult0|auto_generated|mac_mult1~DATAOUT29\ & \Mult0|auto_generated|mac_mult1~DATAOUT28\ & \Mult0|auto_generated|mac_mult1~DATAOUT27\ & 
\Mult0|auto_generated|mac_mult1~DATAOUT26\ & \Mult0|auto_generated|mac_mult1~DATAOUT25\ & \Mult0|auto_generated|mac_mult1~DATAOUT24\ & \Mult0|auto_generated|mac_mult1~DATAOUT23\ & \Mult0|auto_generated|mac_mult1~DATAOUT22\ & 
\Mult0|auto_generated|mac_mult1~DATAOUT21\ & \Mult0|auto_generated|mac_mult1~DATAOUT20\ & \Mult0|auto_generated|mac_mult1~DATAOUT19\ & \Mult0|auto_generated|mac_mult1~DATAOUT18\ & \Mult0|auto_generated|mac_mult1~DATAOUT17\ & 
\Mult0|auto_generated|mac_mult1~DATAOUT16\ & \Mult0|auto_generated|mac_mult1~DATAOUT15\ & \Mult0|auto_generated|mac_mult1~DATAOUT14\ & \Mult0|auto_generated|mac_mult1~DATAOUT13\ & \Mult0|auto_generated|mac_mult1~DATAOUT12\ & 
\Mult0|auto_generated|mac_mult1~DATAOUT11\ & \Mult0|auto_generated|mac_mult1~DATAOUT10\ & \Mult0|auto_generated|mac_mult1~DATAOUT9\ & \Mult0|auto_generated|mac_mult1~DATAOUT8\ & \Mult0|auto_generated|mac_mult1~DATAOUT7\ & 
\Mult0|auto_generated|mac_mult1~DATAOUT6\ & \Mult0|auto_generated|mac_mult1~DATAOUT5\ & \Mult0|auto_generated|mac_mult1~DATAOUT4\ & \Mult0|auto_generated|mac_mult1~DATAOUT3\ & \Mult0|auto_generated|mac_mult1~DATAOUT2\ & 
\Mult0|auto_generated|mac_mult1~DATAOUT1\ & \Mult0|auto_generated|mac_mult1~dataout\);

\Mult0|auto_generated|w569w\(0) <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(0);
\Mult0|auto_generated|w569w\(1) <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(1);
\Mult0|auto_generated|w569w\(2) <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(2);
\Mult0|auto_generated|w569w\(3) <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(3);
\Mult0|auto_generated|w569w\(4) <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(4);
\Mult0|auto_generated|w569w\(5) <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(5);
\Mult0|auto_generated|w569w\(6) <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(6);
\Mult0|auto_generated|w569w\(7) <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(7);
\Mult0|auto_generated|w569w\(8) <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(8);
\Mult0|auto_generated|w569w\(9) <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(9);
\Mult0|auto_generated|w569w\(10) <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(10);
\Mult0|auto_generated|w569w\(11) <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(11);
\Mult0|auto_generated|w569w\(12) <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(12);
\Mult0|auto_generated|w569w\(13) <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(13);
\Mult0|auto_generated|w569w\(14) <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(14);
\Mult0|auto_generated|w569w\(15) <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(15);
\Mult0|auto_generated|w569w\(16) <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(16);
\Mult0|auto_generated|w569w\(17) <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(17);
\Mult0|auto_generated|mac_out2~DATAOUT18\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(18);
\Mult0|auto_generated|mac_out2~DATAOUT19\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(19);
\Mult0|auto_generated|mac_out2~DATAOUT20\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(20);
\Mult0|auto_generated|mac_out2~DATAOUT21\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(21);
\Mult0|auto_generated|mac_out2~DATAOUT22\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(22);
\Mult0|auto_generated|mac_out2~DATAOUT23\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(23);
\Mult0|auto_generated|mac_out2~DATAOUT24\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(24);
\Mult0|auto_generated|mac_out2~DATAOUT25\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(25);
\Mult0|auto_generated|mac_out2~DATAOUT26\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(26);
\Mult0|auto_generated|mac_out2~DATAOUT27\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(27);
\Mult0|auto_generated|mac_out2~DATAOUT28\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(28);
\Mult0|auto_generated|mac_out2~DATAOUT29\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(29);
\Mult0|auto_generated|mac_out2~DATAOUT30\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(30);
\Mult0|auto_generated|mac_out2~DATAOUT31\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(31);
\Mult0|auto_generated|mac_out2~DATAOUT32\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(32);
\Mult0|auto_generated|mac_out2~DATAOUT33\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(33);
\Mult0|auto_generated|mac_out2~DATAOUT34\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(34);
\Mult0|auto_generated|mac_out2~DATAOUT35\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(35);

\Mult1|auto_generated|mac_out4_DATAA_bus\ <= (\Mult1|auto_generated|mac_mult3~DATAOUT31\ & \Mult1|auto_generated|mac_mult3~DATAOUT30\ & \Mult1|auto_generated|mac_mult3~DATAOUT29\ & \Mult1|auto_generated|mac_mult3~DATAOUT28\ & 
\Mult1|auto_generated|mac_mult3~DATAOUT27\ & \Mult1|auto_generated|mac_mult3~DATAOUT26\ & \Mult1|auto_generated|mac_mult3~DATAOUT25\ & \Mult1|auto_generated|mac_mult3~DATAOUT24\ & \Mult1|auto_generated|mac_mult3~DATAOUT23\ & 
\Mult1|auto_generated|mac_mult3~DATAOUT22\ & \Mult1|auto_generated|mac_mult3~DATAOUT21\ & \Mult1|auto_generated|mac_mult3~DATAOUT20\ & \Mult1|auto_generated|mac_mult3~DATAOUT19\ & \Mult1|auto_generated|mac_mult3~DATAOUT18\ & 
\Mult1|auto_generated|mac_mult3~DATAOUT17\ & \Mult1|auto_generated|mac_mult3~DATAOUT16\ & \Mult1|auto_generated|mac_mult3~DATAOUT15\ & \Mult1|auto_generated|mac_mult3~DATAOUT14\ & \Mult1|auto_generated|mac_mult3~DATAOUT13\ & 
\Mult1|auto_generated|mac_mult3~DATAOUT12\ & \Mult1|auto_generated|mac_mult3~DATAOUT11\ & \Mult1|auto_generated|mac_mult3~DATAOUT10\ & \Mult1|auto_generated|mac_mult3~DATAOUT9\ & \Mult1|auto_generated|mac_mult3~DATAOUT8\ & 
\Mult1|auto_generated|mac_mult3~DATAOUT7\ & \Mult1|auto_generated|mac_mult3~DATAOUT6\ & \Mult1|auto_generated|mac_mult3~DATAOUT5\ & \Mult1|auto_generated|mac_mult3~DATAOUT4\ & \Mult1|auto_generated|mac_mult3~DATAOUT3\ & 
\Mult1|auto_generated|mac_mult3~DATAOUT2\ & \Mult1|auto_generated|mac_mult3~DATAOUT1\ & \Mult1|auto_generated|mac_mult3~dataout\ & \Mult1|auto_generated|mac_mult3~3\ & \Mult1|auto_generated|mac_mult3~2\ & \Mult1|auto_generated|mac_mult3~1\ & 
\Mult1|auto_generated|mac_mult3~0\);

\Mult1|auto_generated|mac_out4~0\ <= \Mult1|auto_generated|mac_out4_DATAOUT_bus\(0);
\Mult1|auto_generated|mac_out4~1\ <= \Mult1|auto_generated|mac_out4_DATAOUT_bus\(1);
\Mult1|auto_generated|mac_out4~2\ <= \Mult1|auto_generated|mac_out4_DATAOUT_bus\(2);
\Mult1|auto_generated|mac_out4~3\ <= \Mult1|auto_generated|mac_out4_DATAOUT_bus\(3);
\Mult1|auto_generated|mac_out4~dataout\ <= \Mult1|auto_generated|mac_out4_DATAOUT_bus\(4);
\Mult1|auto_generated|mac_out4~DATAOUT1\ <= \Mult1|auto_generated|mac_out4_DATAOUT_bus\(5);
\Mult1|auto_generated|mac_out4~DATAOUT2\ <= \Mult1|auto_generated|mac_out4_DATAOUT_bus\(6);
\Mult1|auto_generated|mac_out4~DATAOUT3\ <= \Mult1|auto_generated|mac_out4_DATAOUT_bus\(7);
\Mult1|auto_generated|mac_out4~DATAOUT4\ <= \Mult1|auto_generated|mac_out4_DATAOUT_bus\(8);
\Mult1|auto_generated|mac_out4~DATAOUT5\ <= \Mult1|auto_generated|mac_out4_DATAOUT_bus\(9);
\Mult1|auto_generated|mac_out4~DATAOUT6\ <= \Mult1|auto_generated|mac_out4_DATAOUT_bus\(10);
\Mult1|auto_generated|mac_out4~DATAOUT7\ <= \Mult1|auto_generated|mac_out4_DATAOUT_bus\(11);
\Mult1|auto_generated|mac_out4~DATAOUT8\ <= \Mult1|auto_generated|mac_out4_DATAOUT_bus\(12);
\Mult1|auto_generated|mac_out4~DATAOUT9\ <= \Mult1|auto_generated|mac_out4_DATAOUT_bus\(13);
\Mult1|auto_generated|mac_out4~DATAOUT10\ <= \Mult1|auto_generated|mac_out4_DATAOUT_bus\(14);
\Mult1|auto_generated|mac_out4~DATAOUT11\ <= \Mult1|auto_generated|mac_out4_DATAOUT_bus\(15);
\Mult1|auto_generated|mac_out4~DATAOUT12\ <= \Mult1|auto_generated|mac_out4_DATAOUT_bus\(16);
\Mult1|auto_generated|mac_out4~DATAOUT13\ <= \Mult1|auto_generated|mac_out4_DATAOUT_bus\(17);
\Mult1|auto_generated|mac_out4~DATAOUT14\ <= \Mult1|auto_generated|mac_out4_DATAOUT_bus\(18);
\Mult1|auto_generated|mac_out4~DATAOUT15\ <= \Mult1|auto_generated|mac_out4_DATAOUT_bus\(19);
\Mult1|auto_generated|mac_out4~DATAOUT16\ <= \Mult1|auto_generated|mac_out4_DATAOUT_bus\(20);
\Mult1|auto_generated|mac_out4~DATAOUT17\ <= \Mult1|auto_generated|mac_out4_DATAOUT_bus\(21);
\Mult1|auto_generated|mac_out4~DATAOUT18\ <= \Mult1|auto_generated|mac_out4_DATAOUT_bus\(22);
\Mult1|auto_generated|mac_out4~DATAOUT19\ <= \Mult1|auto_generated|mac_out4_DATAOUT_bus\(23);
\Mult1|auto_generated|mac_out4~DATAOUT20\ <= \Mult1|auto_generated|mac_out4_DATAOUT_bus\(24);
\Mult1|auto_generated|mac_out4~DATAOUT21\ <= \Mult1|auto_generated|mac_out4_DATAOUT_bus\(25);
\Mult1|auto_generated|mac_out4~DATAOUT22\ <= \Mult1|auto_generated|mac_out4_DATAOUT_bus\(26);
\Mult1|auto_generated|mac_out4~DATAOUT23\ <= \Mult1|auto_generated|mac_out4_DATAOUT_bus\(27);
\Mult1|auto_generated|mac_out4~DATAOUT24\ <= \Mult1|auto_generated|mac_out4_DATAOUT_bus\(28);
\Mult1|auto_generated|mac_out4~DATAOUT25\ <= \Mult1|auto_generated|mac_out4_DATAOUT_bus\(29);
\Mult1|auto_generated|mac_out4~DATAOUT26\ <= \Mult1|auto_generated|mac_out4_DATAOUT_bus\(30);
\Mult1|auto_generated|mac_out4~DATAOUT27\ <= \Mult1|auto_generated|mac_out4_DATAOUT_bus\(31);
\Mult1|auto_generated|mac_out4~DATAOUT28\ <= \Mult1|auto_generated|mac_out4_DATAOUT_bus\(32);
\Mult1|auto_generated|mac_out4~DATAOUT29\ <= \Mult1|auto_generated|mac_out4_DATAOUT_bus\(33);
\Mult1|auto_generated|mac_out4~DATAOUT30\ <= \Mult1|auto_generated|mac_out4_DATAOUT_bus\(34);
\Mult1|auto_generated|mac_out4~DATAOUT31\ <= \Mult1|auto_generated|mac_out4_DATAOUT_bus\(35);

\Mult1|auto_generated|mac_out6_DATAA_bus\ <= (\Mult1|auto_generated|mac_mult5~DATAOUT31\ & \Mult1|auto_generated|mac_mult5~DATAOUT30\ & \Mult1|auto_generated|mac_mult5~DATAOUT29\ & \Mult1|auto_generated|mac_mult5~DATAOUT28\ & 
\Mult1|auto_generated|mac_mult5~DATAOUT27\ & \Mult1|auto_generated|mac_mult5~DATAOUT26\ & \Mult1|auto_generated|mac_mult5~DATAOUT25\ & \Mult1|auto_generated|mac_mult5~DATAOUT24\ & \Mult1|auto_generated|mac_mult5~DATAOUT23\ & 
\Mult1|auto_generated|mac_mult5~DATAOUT22\ & \Mult1|auto_generated|mac_mult5~DATAOUT21\ & \Mult1|auto_generated|mac_mult5~DATAOUT20\ & \Mult1|auto_generated|mac_mult5~DATAOUT19\ & \Mult1|auto_generated|mac_mult5~DATAOUT18\ & 
\Mult1|auto_generated|mac_mult5~DATAOUT17\ & \Mult1|auto_generated|mac_mult5~DATAOUT16\ & \Mult1|auto_generated|mac_mult5~DATAOUT15\ & \Mult1|auto_generated|mac_mult5~DATAOUT14\ & \Mult1|auto_generated|mac_mult5~DATAOUT13\ & 
\Mult1|auto_generated|mac_mult5~DATAOUT12\ & \Mult1|auto_generated|mac_mult5~DATAOUT11\ & \Mult1|auto_generated|mac_mult5~DATAOUT10\ & \Mult1|auto_generated|mac_mult5~DATAOUT9\ & \Mult1|auto_generated|mac_mult5~DATAOUT8\ & 
\Mult1|auto_generated|mac_mult5~DATAOUT7\ & \Mult1|auto_generated|mac_mult5~DATAOUT6\ & \Mult1|auto_generated|mac_mult5~DATAOUT5\ & \Mult1|auto_generated|mac_mult5~DATAOUT4\ & \Mult1|auto_generated|mac_mult5~DATAOUT3\ & 
\Mult1|auto_generated|mac_mult5~DATAOUT2\ & \Mult1|auto_generated|mac_mult5~DATAOUT1\ & \Mult1|auto_generated|mac_mult5~dataout\ & \Mult1|auto_generated|mac_mult5~3\ & \Mult1|auto_generated|mac_mult5~2\ & \Mult1|auto_generated|mac_mult5~1\ & 
\Mult1|auto_generated|mac_mult5~0\);

\Mult1|auto_generated|mac_out6~0\ <= \Mult1|auto_generated|mac_out6_DATAOUT_bus\(0);
\Mult1|auto_generated|mac_out6~1\ <= \Mult1|auto_generated|mac_out6_DATAOUT_bus\(1);
\Mult1|auto_generated|mac_out6~2\ <= \Mult1|auto_generated|mac_out6_DATAOUT_bus\(2);
\Mult1|auto_generated|mac_out6~3\ <= \Mult1|auto_generated|mac_out6_DATAOUT_bus\(3);
\Mult1|auto_generated|mac_out6~dataout\ <= \Mult1|auto_generated|mac_out6_DATAOUT_bus\(4);
\Mult1|auto_generated|mac_out6~DATAOUT1\ <= \Mult1|auto_generated|mac_out6_DATAOUT_bus\(5);
\Mult1|auto_generated|mac_out6~DATAOUT2\ <= \Mult1|auto_generated|mac_out6_DATAOUT_bus\(6);
\Mult1|auto_generated|mac_out6~DATAOUT3\ <= \Mult1|auto_generated|mac_out6_DATAOUT_bus\(7);
\Mult1|auto_generated|mac_out6~DATAOUT4\ <= \Mult1|auto_generated|mac_out6_DATAOUT_bus\(8);
\Mult1|auto_generated|mac_out6~DATAOUT5\ <= \Mult1|auto_generated|mac_out6_DATAOUT_bus\(9);
\Mult1|auto_generated|mac_out6~DATAOUT6\ <= \Mult1|auto_generated|mac_out6_DATAOUT_bus\(10);
\Mult1|auto_generated|mac_out6~DATAOUT7\ <= \Mult1|auto_generated|mac_out6_DATAOUT_bus\(11);
\Mult1|auto_generated|mac_out6~DATAOUT8\ <= \Mult1|auto_generated|mac_out6_DATAOUT_bus\(12);
\Mult1|auto_generated|mac_out6~DATAOUT9\ <= \Mult1|auto_generated|mac_out6_DATAOUT_bus\(13);
\Mult1|auto_generated|mac_out6~DATAOUT10\ <= \Mult1|auto_generated|mac_out6_DATAOUT_bus\(14);
\Mult1|auto_generated|mac_out6~DATAOUT11\ <= \Mult1|auto_generated|mac_out6_DATAOUT_bus\(15);
\Mult1|auto_generated|mac_out6~DATAOUT12\ <= \Mult1|auto_generated|mac_out6_DATAOUT_bus\(16);
\Mult1|auto_generated|mac_out6~DATAOUT13\ <= \Mult1|auto_generated|mac_out6_DATAOUT_bus\(17);
\Mult1|auto_generated|mac_out6~DATAOUT14\ <= \Mult1|auto_generated|mac_out6_DATAOUT_bus\(18);
\Mult1|auto_generated|mac_out6~DATAOUT15\ <= \Mult1|auto_generated|mac_out6_DATAOUT_bus\(19);
\Mult1|auto_generated|mac_out6~DATAOUT16\ <= \Mult1|auto_generated|mac_out6_DATAOUT_bus\(20);
\Mult1|auto_generated|mac_out6~DATAOUT17\ <= \Mult1|auto_generated|mac_out6_DATAOUT_bus\(21);
\Mult1|auto_generated|mac_out6~DATAOUT18\ <= \Mult1|auto_generated|mac_out6_DATAOUT_bus\(22);
\Mult1|auto_generated|mac_out6~DATAOUT19\ <= \Mult1|auto_generated|mac_out6_DATAOUT_bus\(23);
\Mult1|auto_generated|mac_out6~DATAOUT20\ <= \Mult1|auto_generated|mac_out6_DATAOUT_bus\(24);
\Mult1|auto_generated|mac_out6~DATAOUT21\ <= \Mult1|auto_generated|mac_out6_DATAOUT_bus\(25);
\Mult1|auto_generated|mac_out6~DATAOUT22\ <= \Mult1|auto_generated|mac_out6_DATAOUT_bus\(26);
\Mult1|auto_generated|mac_out6~DATAOUT23\ <= \Mult1|auto_generated|mac_out6_DATAOUT_bus\(27);
\Mult1|auto_generated|mac_out6~DATAOUT24\ <= \Mult1|auto_generated|mac_out6_DATAOUT_bus\(28);
\Mult1|auto_generated|mac_out6~DATAOUT25\ <= \Mult1|auto_generated|mac_out6_DATAOUT_bus\(29);
\Mult1|auto_generated|mac_out6~DATAOUT26\ <= \Mult1|auto_generated|mac_out6_DATAOUT_bus\(30);
\Mult1|auto_generated|mac_out6~DATAOUT27\ <= \Mult1|auto_generated|mac_out6_DATAOUT_bus\(31);
\Mult1|auto_generated|mac_out6~DATAOUT28\ <= \Mult1|auto_generated|mac_out6_DATAOUT_bus\(32);
\Mult1|auto_generated|mac_out6~DATAOUT29\ <= \Mult1|auto_generated|mac_out6_DATAOUT_bus\(33);
\Mult1|auto_generated|mac_out6~DATAOUT30\ <= \Mult1|auto_generated|mac_out6_DATAOUT_bus\(34);
\Mult1|auto_generated|mac_out6~DATAOUT31\ <= \Mult1|auto_generated|mac_out6_DATAOUT_bus\(35);

\Mult0|auto_generated|mac_out4_DATAA_bus\ <= (\Mult0|auto_generated|mac_mult3~DATAOUT31\ & \Mult0|auto_generated|mac_mult3~DATAOUT30\ & \Mult0|auto_generated|mac_mult3~DATAOUT29\ & \Mult0|auto_generated|mac_mult3~DATAOUT28\ & 
\Mult0|auto_generated|mac_mult3~DATAOUT27\ & \Mult0|auto_generated|mac_mult3~DATAOUT26\ & \Mult0|auto_generated|mac_mult3~DATAOUT25\ & \Mult0|auto_generated|mac_mult3~DATAOUT24\ & \Mult0|auto_generated|mac_mult3~DATAOUT23\ & 
\Mult0|auto_generated|mac_mult3~DATAOUT22\ & \Mult0|auto_generated|mac_mult3~DATAOUT21\ & \Mult0|auto_generated|mac_mult3~DATAOUT20\ & \Mult0|auto_generated|mac_mult3~DATAOUT19\ & \Mult0|auto_generated|mac_mult3~DATAOUT18\ & 
\Mult0|auto_generated|mac_mult3~DATAOUT17\ & \Mult0|auto_generated|mac_mult3~DATAOUT16\ & \Mult0|auto_generated|mac_mult3~DATAOUT15\ & \Mult0|auto_generated|mac_mult3~DATAOUT14\ & \Mult0|auto_generated|mac_mult3~DATAOUT13\ & 
\Mult0|auto_generated|mac_mult3~DATAOUT12\ & \Mult0|auto_generated|mac_mult3~DATAOUT11\ & \Mult0|auto_generated|mac_mult3~DATAOUT10\ & \Mult0|auto_generated|mac_mult3~DATAOUT9\ & \Mult0|auto_generated|mac_mult3~DATAOUT8\ & 
\Mult0|auto_generated|mac_mult3~DATAOUT7\ & \Mult0|auto_generated|mac_mult3~DATAOUT6\ & \Mult0|auto_generated|mac_mult3~DATAOUT5\ & \Mult0|auto_generated|mac_mult3~DATAOUT4\ & \Mult0|auto_generated|mac_mult3~DATAOUT3\ & 
\Mult0|auto_generated|mac_mult3~DATAOUT2\ & \Mult0|auto_generated|mac_mult3~DATAOUT1\ & \Mult0|auto_generated|mac_mult3~dataout\ & \Mult0|auto_generated|mac_mult3~3\ & \Mult0|auto_generated|mac_mult3~2\ & \Mult0|auto_generated|mac_mult3~1\ & 
\Mult0|auto_generated|mac_mult3~0\);

\Mult0|auto_generated|mac_out4~0\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(0);
\Mult0|auto_generated|mac_out4~1\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(1);
\Mult0|auto_generated|mac_out4~2\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(2);
\Mult0|auto_generated|mac_out4~3\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(3);
\Mult0|auto_generated|mac_out4~dataout\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(4);
\Mult0|auto_generated|mac_out4~DATAOUT1\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(5);
\Mult0|auto_generated|mac_out4~DATAOUT2\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(6);
\Mult0|auto_generated|mac_out4~DATAOUT3\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(7);
\Mult0|auto_generated|mac_out4~DATAOUT4\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(8);
\Mult0|auto_generated|mac_out4~DATAOUT5\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(9);
\Mult0|auto_generated|mac_out4~DATAOUT6\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(10);
\Mult0|auto_generated|mac_out4~DATAOUT7\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(11);
\Mult0|auto_generated|mac_out4~DATAOUT8\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(12);
\Mult0|auto_generated|mac_out4~DATAOUT9\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(13);
\Mult0|auto_generated|mac_out4~DATAOUT10\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(14);
\Mult0|auto_generated|mac_out4~DATAOUT11\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(15);
\Mult0|auto_generated|mac_out4~DATAOUT12\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(16);
\Mult0|auto_generated|mac_out4~DATAOUT13\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(17);
\Mult0|auto_generated|mac_out4~DATAOUT14\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(18);
\Mult0|auto_generated|mac_out4~DATAOUT15\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(19);
\Mult0|auto_generated|mac_out4~DATAOUT16\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(20);
\Mult0|auto_generated|mac_out4~DATAOUT17\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(21);
\Mult0|auto_generated|mac_out4~DATAOUT18\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(22);
\Mult0|auto_generated|mac_out4~DATAOUT19\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(23);
\Mult0|auto_generated|mac_out4~DATAOUT20\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(24);
\Mult0|auto_generated|mac_out4~DATAOUT21\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(25);
\Mult0|auto_generated|mac_out4~DATAOUT22\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(26);
\Mult0|auto_generated|mac_out4~DATAOUT23\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(27);
\Mult0|auto_generated|mac_out4~DATAOUT24\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(28);
\Mult0|auto_generated|mac_out4~DATAOUT25\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(29);
\Mult0|auto_generated|mac_out4~DATAOUT26\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(30);
\Mult0|auto_generated|mac_out4~DATAOUT27\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(31);
\Mult0|auto_generated|mac_out4~DATAOUT28\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(32);
\Mult0|auto_generated|mac_out4~DATAOUT29\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(33);
\Mult0|auto_generated|mac_out4~DATAOUT30\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(34);
\Mult0|auto_generated|mac_out4~DATAOUT31\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(35);

\Mult0|auto_generated|mac_out6_DATAA_bus\ <= (\Mult0|auto_generated|mac_mult5~DATAOUT31\ & \Mult0|auto_generated|mac_mult5~DATAOUT30\ & \Mult0|auto_generated|mac_mult5~DATAOUT29\ & \Mult0|auto_generated|mac_mult5~DATAOUT28\ & 
\Mult0|auto_generated|mac_mult5~DATAOUT27\ & \Mult0|auto_generated|mac_mult5~DATAOUT26\ & \Mult0|auto_generated|mac_mult5~DATAOUT25\ & \Mult0|auto_generated|mac_mult5~DATAOUT24\ & \Mult0|auto_generated|mac_mult5~DATAOUT23\ & 
\Mult0|auto_generated|mac_mult5~DATAOUT22\ & \Mult0|auto_generated|mac_mult5~DATAOUT21\ & \Mult0|auto_generated|mac_mult5~DATAOUT20\ & \Mult0|auto_generated|mac_mult5~DATAOUT19\ & \Mult0|auto_generated|mac_mult5~DATAOUT18\ & 
\Mult0|auto_generated|mac_mult5~DATAOUT17\ & \Mult0|auto_generated|mac_mult5~DATAOUT16\ & \Mult0|auto_generated|mac_mult5~DATAOUT15\ & \Mult0|auto_generated|mac_mult5~DATAOUT14\ & \Mult0|auto_generated|mac_mult5~DATAOUT13\ & 
\Mult0|auto_generated|mac_mult5~DATAOUT12\ & \Mult0|auto_generated|mac_mult5~DATAOUT11\ & \Mult0|auto_generated|mac_mult5~DATAOUT10\ & \Mult0|auto_generated|mac_mult5~DATAOUT9\ & \Mult0|auto_generated|mac_mult5~DATAOUT8\ & 
\Mult0|auto_generated|mac_mult5~DATAOUT7\ & \Mult0|auto_generated|mac_mult5~DATAOUT6\ & \Mult0|auto_generated|mac_mult5~DATAOUT5\ & \Mult0|auto_generated|mac_mult5~DATAOUT4\ & \Mult0|auto_generated|mac_mult5~DATAOUT3\ & 
\Mult0|auto_generated|mac_mult5~DATAOUT2\ & \Mult0|auto_generated|mac_mult5~DATAOUT1\ & \Mult0|auto_generated|mac_mult5~dataout\ & \Mult0|auto_generated|mac_mult5~3\ & \Mult0|auto_generated|mac_mult5~2\ & \Mult0|auto_generated|mac_mult5~1\ & 
\Mult0|auto_generated|mac_mult5~0\);

\Mult0|auto_generated|mac_out6~0\ <= \Mult0|auto_generated|mac_out6_DATAOUT_bus\(0);
\Mult0|auto_generated|mac_out6~1\ <= \Mult0|auto_generated|mac_out6_DATAOUT_bus\(1);
\Mult0|auto_generated|mac_out6~2\ <= \Mult0|auto_generated|mac_out6_DATAOUT_bus\(2);
\Mult0|auto_generated|mac_out6~3\ <= \Mult0|auto_generated|mac_out6_DATAOUT_bus\(3);
\Mult0|auto_generated|mac_out6~dataout\ <= \Mult0|auto_generated|mac_out6_DATAOUT_bus\(4);
\Mult0|auto_generated|mac_out6~DATAOUT1\ <= \Mult0|auto_generated|mac_out6_DATAOUT_bus\(5);
\Mult0|auto_generated|mac_out6~DATAOUT2\ <= \Mult0|auto_generated|mac_out6_DATAOUT_bus\(6);
\Mult0|auto_generated|mac_out6~DATAOUT3\ <= \Mult0|auto_generated|mac_out6_DATAOUT_bus\(7);
\Mult0|auto_generated|mac_out6~DATAOUT4\ <= \Mult0|auto_generated|mac_out6_DATAOUT_bus\(8);
\Mult0|auto_generated|mac_out6~DATAOUT5\ <= \Mult0|auto_generated|mac_out6_DATAOUT_bus\(9);
\Mult0|auto_generated|mac_out6~DATAOUT6\ <= \Mult0|auto_generated|mac_out6_DATAOUT_bus\(10);
\Mult0|auto_generated|mac_out6~DATAOUT7\ <= \Mult0|auto_generated|mac_out6_DATAOUT_bus\(11);
\Mult0|auto_generated|mac_out6~DATAOUT8\ <= \Mult0|auto_generated|mac_out6_DATAOUT_bus\(12);
\Mult0|auto_generated|mac_out6~DATAOUT9\ <= \Mult0|auto_generated|mac_out6_DATAOUT_bus\(13);
\Mult0|auto_generated|mac_out6~DATAOUT10\ <= \Mult0|auto_generated|mac_out6_DATAOUT_bus\(14);
\Mult0|auto_generated|mac_out6~DATAOUT11\ <= \Mult0|auto_generated|mac_out6_DATAOUT_bus\(15);
\Mult0|auto_generated|mac_out6~DATAOUT12\ <= \Mult0|auto_generated|mac_out6_DATAOUT_bus\(16);
\Mult0|auto_generated|mac_out6~DATAOUT13\ <= \Mult0|auto_generated|mac_out6_DATAOUT_bus\(17);
\Mult0|auto_generated|mac_out6~DATAOUT14\ <= \Mult0|auto_generated|mac_out6_DATAOUT_bus\(18);
\Mult0|auto_generated|mac_out6~DATAOUT15\ <= \Mult0|auto_generated|mac_out6_DATAOUT_bus\(19);
\Mult0|auto_generated|mac_out6~DATAOUT16\ <= \Mult0|auto_generated|mac_out6_DATAOUT_bus\(20);
\Mult0|auto_generated|mac_out6~DATAOUT17\ <= \Mult0|auto_generated|mac_out6_DATAOUT_bus\(21);
\Mult0|auto_generated|mac_out6~DATAOUT18\ <= \Mult0|auto_generated|mac_out6_DATAOUT_bus\(22);
\Mult0|auto_generated|mac_out6~DATAOUT19\ <= \Mult0|auto_generated|mac_out6_DATAOUT_bus\(23);
\Mult0|auto_generated|mac_out6~DATAOUT20\ <= \Mult0|auto_generated|mac_out6_DATAOUT_bus\(24);
\Mult0|auto_generated|mac_out6~DATAOUT21\ <= \Mult0|auto_generated|mac_out6_DATAOUT_bus\(25);
\Mult0|auto_generated|mac_out6~DATAOUT22\ <= \Mult0|auto_generated|mac_out6_DATAOUT_bus\(26);
\Mult0|auto_generated|mac_out6~DATAOUT23\ <= \Mult0|auto_generated|mac_out6_DATAOUT_bus\(27);
\Mult0|auto_generated|mac_out6~DATAOUT24\ <= \Mult0|auto_generated|mac_out6_DATAOUT_bus\(28);
\Mult0|auto_generated|mac_out6~DATAOUT25\ <= \Mult0|auto_generated|mac_out6_DATAOUT_bus\(29);
\Mult0|auto_generated|mac_out6~DATAOUT26\ <= \Mult0|auto_generated|mac_out6_DATAOUT_bus\(30);
\Mult0|auto_generated|mac_out6~DATAOUT27\ <= \Mult0|auto_generated|mac_out6_DATAOUT_bus\(31);
\Mult0|auto_generated|mac_out6~DATAOUT28\ <= \Mult0|auto_generated|mac_out6_DATAOUT_bus\(32);
\Mult0|auto_generated|mac_out6~DATAOUT29\ <= \Mult0|auto_generated|mac_out6_DATAOUT_bus\(33);
\Mult0|auto_generated|mac_out6~DATAOUT30\ <= \Mult0|auto_generated|mac_out6_DATAOUT_bus\(34);
\Mult0|auto_generated|mac_out6~DATAOUT31\ <= \Mult0|auto_generated|mac_out6_DATAOUT_bus\(35);

\Mult1|auto_generated|mac_out8_DATAA_bus\ <= (\Mult1|auto_generated|mac_mult7~DATAOUT27\ & \Mult1|auto_generated|mac_mult7~DATAOUT26\ & \Mult1|auto_generated|mac_mult7~DATAOUT25\ & \Mult1|auto_generated|mac_mult7~DATAOUT24\ & 
\Mult1|auto_generated|mac_mult7~DATAOUT23\ & \Mult1|auto_generated|mac_mult7~DATAOUT22\ & \Mult1|auto_generated|mac_mult7~DATAOUT21\ & \Mult1|auto_generated|mac_mult7~DATAOUT20\ & \Mult1|auto_generated|mac_mult7~DATAOUT19\ & 
\Mult1|auto_generated|mac_mult7~DATAOUT18\ & \Mult1|auto_generated|mac_mult7~DATAOUT17\ & \Mult1|auto_generated|mac_mult7~DATAOUT16\ & \Mult1|auto_generated|mac_mult7~DATAOUT15\ & \Mult1|auto_generated|mac_mult7~DATAOUT14\ & 
\Mult1|auto_generated|mac_mult7~DATAOUT13\ & \Mult1|auto_generated|mac_mult7~DATAOUT12\ & \Mult1|auto_generated|mac_mult7~DATAOUT11\ & \Mult1|auto_generated|mac_mult7~DATAOUT10\ & \Mult1|auto_generated|mac_mult7~DATAOUT9\ & 
\Mult1|auto_generated|mac_mult7~DATAOUT8\ & \Mult1|auto_generated|mac_mult7~DATAOUT7\ & \Mult1|auto_generated|mac_mult7~DATAOUT6\ & \Mult1|auto_generated|mac_mult7~DATAOUT5\ & \Mult1|auto_generated|mac_mult7~DATAOUT4\ & 
\Mult1|auto_generated|mac_mult7~DATAOUT3\ & \Mult1|auto_generated|mac_mult7~DATAOUT2\ & \Mult1|auto_generated|mac_mult7~DATAOUT1\ & \Mult1|auto_generated|mac_mult7~dataout\ & \Mult1|auto_generated|mac_mult7~7\ & \Mult1|auto_generated|mac_mult7~6\ & 
\Mult1|auto_generated|mac_mult7~5\ & \Mult1|auto_generated|mac_mult7~4\ & \Mult1|auto_generated|mac_mult7~3\ & \Mult1|auto_generated|mac_mult7~2\ & \Mult1|auto_generated|mac_mult7~1\ & \Mult1|auto_generated|mac_mult7~0\);

\Mult1|auto_generated|mac_out8~0\ <= \Mult1|auto_generated|mac_out8_DATAOUT_bus\(0);
\Mult1|auto_generated|mac_out8~1\ <= \Mult1|auto_generated|mac_out8_DATAOUT_bus\(1);
\Mult1|auto_generated|mac_out8~2\ <= \Mult1|auto_generated|mac_out8_DATAOUT_bus\(2);
\Mult1|auto_generated|mac_out8~3\ <= \Mult1|auto_generated|mac_out8_DATAOUT_bus\(3);
\Mult1|auto_generated|mac_out8~4\ <= \Mult1|auto_generated|mac_out8_DATAOUT_bus\(4);
\Mult1|auto_generated|mac_out8~5\ <= \Mult1|auto_generated|mac_out8_DATAOUT_bus\(5);
\Mult1|auto_generated|mac_out8~6\ <= \Mult1|auto_generated|mac_out8_DATAOUT_bus\(6);
\Mult1|auto_generated|mac_out8~7\ <= \Mult1|auto_generated|mac_out8_DATAOUT_bus\(7);
\Mult1|auto_generated|mac_out8~dataout\ <= \Mult1|auto_generated|mac_out8_DATAOUT_bus\(8);
\Mult1|auto_generated|mac_out8~DATAOUT1\ <= \Mult1|auto_generated|mac_out8_DATAOUT_bus\(9);
\Mult1|auto_generated|mac_out8~DATAOUT2\ <= \Mult1|auto_generated|mac_out8_DATAOUT_bus\(10);
\Mult1|auto_generated|mac_out8~DATAOUT3\ <= \Mult1|auto_generated|mac_out8_DATAOUT_bus\(11);
\Mult1|auto_generated|mac_out8~DATAOUT4\ <= \Mult1|auto_generated|mac_out8_DATAOUT_bus\(12);
\Mult1|auto_generated|mac_out8~DATAOUT5\ <= \Mult1|auto_generated|mac_out8_DATAOUT_bus\(13);
\Mult1|auto_generated|mac_out8~DATAOUT6\ <= \Mult1|auto_generated|mac_out8_DATAOUT_bus\(14);
\Mult1|auto_generated|mac_out8~DATAOUT7\ <= \Mult1|auto_generated|mac_out8_DATAOUT_bus\(15);
\Mult1|auto_generated|mac_out8~DATAOUT8\ <= \Mult1|auto_generated|mac_out8_DATAOUT_bus\(16);
\Mult1|auto_generated|mac_out8~DATAOUT9\ <= \Mult1|auto_generated|mac_out8_DATAOUT_bus\(17);
\Mult1|auto_generated|mac_out8~DATAOUT10\ <= \Mult1|auto_generated|mac_out8_DATAOUT_bus\(18);
\Mult1|auto_generated|mac_out8~DATAOUT11\ <= \Mult1|auto_generated|mac_out8_DATAOUT_bus\(19);
\Mult1|auto_generated|mac_out8~DATAOUT12\ <= \Mult1|auto_generated|mac_out8_DATAOUT_bus\(20);
\Mult1|auto_generated|mac_out8~DATAOUT13\ <= \Mult1|auto_generated|mac_out8_DATAOUT_bus\(21);
\Mult1|auto_generated|mac_out8~DATAOUT14\ <= \Mult1|auto_generated|mac_out8_DATAOUT_bus\(22);
\Mult1|auto_generated|mac_out8~DATAOUT15\ <= \Mult1|auto_generated|mac_out8_DATAOUT_bus\(23);
\Mult1|auto_generated|mac_out8~DATAOUT16\ <= \Mult1|auto_generated|mac_out8_DATAOUT_bus\(24);
\Mult1|auto_generated|mac_out8~DATAOUT17\ <= \Mult1|auto_generated|mac_out8_DATAOUT_bus\(25);
\Mult1|auto_generated|mac_out8~DATAOUT18\ <= \Mult1|auto_generated|mac_out8_DATAOUT_bus\(26);
\Mult1|auto_generated|mac_out8~DATAOUT19\ <= \Mult1|auto_generated|mac_out8_DATAOUT_bus\(27);
\Mult1|auto_generated|mac_out8~DATAOUT20\ <= \Mult1|auto_generated|mac_out8_DATAOUT_bus\(28);
\Mult1|auto_generated|mac_out8~DATAOUT21\ <= \Mult1|auto_generated|mac_out8_DATAOUT_bus\(29);
\Mult1|auto_generated|mac_out8~DATAOUT22\ <= \Mult1|auto_generated|mac_out8_DATAOUT_bus\(30);
\Mult1|auto_generated|mac_out8~DATAOUT23\ <= \Mult1|auto_generated|mac_out8_DATAOUT_bus\(31);
\Mult1|auto_generated|mac_out8~DATAOUT24\ <= \Mult1|auto_generated|mac_out8_DATAOUT_bus\(32);
\Mult1|auto_generated|mac_out8~DATAOUT25\ <= \Mult1|auto_generated|mac_out8_DATAOUT_bus\(33);
\Mult1|auto_generated|mac_out8~DATAOUT26\ <= \Mult1|auto_generated|mac_out8_DATAOUT_bus\(34);
\Mult1|auto_generated|mac_out8~DATAOUT27\ <= \Mult1|auto_generated|mac_out8_DATAOUT_bus\(35);

\Mult0|auto_generated|mac_out8_DATAA_bus\ <= (\Mult0|auto_generated|mac_mult7~DATAOUT27\ & \Mult0|auto_generated|mac_mult7~DATAOUT26\ & \Mult0|auto_generated|mac_mult7~DATAOUT25\ & \Mult0|auto_generated|mac_mult7~DATAOUT24\ & 
\Mult0|auto_generated|mac_mult7~DATAOUT23\ & \Mult0|auto_generated|mac_mult7~DATAOUT22\ & \Mult0|auto_generated|mac_mult7~DATAOUT21\ & \Mult0|auto_generated|mac_mult7~DATAOUT20\ & \Mult0|auto_generated|mac_mult7~DATAOUT19\ & 
\Mult0|auto_generated|mac_mult7~DATAOUT18\ & \Mult0|auto_generated|mac_mult7~DATAOUT17\ & \Mult0|auto_generated|mac_mult7~DATAOUT16\ & \Mult0|auto_generated|mac_mult7~DATAOUT15\ & \Mult0|auto_generated|mac_mult7~DATAOUT14\ & 
\Mult0|auto_generated|mac_mult7~DATAOUT13\ & \Mult0|auto_generated|mac_mult7~DATAOUT12\ & \Mult0|auto_generated|mac_mult7~DATAOUT11\ & \Mult0|auto_generated|mac_mult7~DATAOUT10\ & \Mult0|auto_generated|mac_mult7~DATAOUT9\ & 
\Mult0|auto_generated|mac_mult7~DATAOUT8\ & \Mult0|auto_generated|mac_mult7~DATAOUT7\ & \Mult0|auto_generated|mac_mult7~DATAOUT6\ & \Mult0|auto_generated|mac_mult7~DATAOUT5\ & \Mult0|auto_generated|mac_mult7~DATAOUT4\ & 
\Mult0|auto_generated|mac_mult7~DATAOUT3\ & \Mult0|auto_generated|mac_mult7~DATAOUT2\ & \Mult0|auto_generated|mac_mult7~DATAOUT1\ & \Mult0|auto_generated|mac_mult7~dataout\ & \Mult0|auto_generated|mac_mult7~7\ & \Mult0|auto_generated|mac_mult7~6\ & 
\Mult0|auto_generated|mac_mult7~5\ & \Mult0|auto_generated|mac_mult7~4\ & \Mult0|auto_generated|mac_mult7~3\ & \Mult0|auto_generated|mac_mult7~2\ & \Mult0|auto_generated|mac_mult7~1\ & \Mult0|auto_generated|mac_mult7~0\);

\Mult0|auto_generated|mac_out8~0\ <= \Mult0|auto_generated|mac_out8_DATAOUT_bus\(0);
\Mult0|auto_generated|mac_out8~1\ <= \Mult0|auto_generated|mac_out8_DATAOUT_bus\(1);
\Mult0|auto_generated|mac_out8~2\ <= \Mult0|auto_generated|mac_out8_DATAOUT_bus\(2);
\Mult0|auto_generated|mac_out8~3\ <= \Mult0|auto_generated|mac_out8_DATAOUT_bus\(3);
\Mult0|auto_generated|mac_out8~4\ <= \Mult0|auto_generated|mac_out8_DATAOUT_bus\(4);
\Mult0|auto_generated|mac_out8~5\ <= \Mult0|auto_generated|mac_out8_DATAOUT_bus\(5);
\Mult0|auto_generated|mac_out8~6\ <= \Mult0|auto_generated|mac_out8_DATAOUT_bus\(6);
\Mult0|auto_generated|mac_out8~7\ <= \Mult0|auto_generated|mac_out8_DATAOUT_bus\(7);
\Mult0|auto_generated|mac_out8~dataout\ <= \Mult0|auto_generated|mac_out8_DATAOUT_bus\(8);
\Mult0|auto_generated|mac_out8~DATAOUT1\ <= \Mult0|auto_generated|mac_out8_DATAOUT_bus\(9);
\Mult0|auto_generated|mac_out8~DATAOUT2\ <= \Mult0|auto_generated|mac_out8_DATAOUT_bus\(10);
\Mult0|auto_generated|mac_out8~DATAOUT3\ <= \Mult0|auto_generated|mac_out8_DATAOUT_bus\(11);
\Mult0|auto_generated|mac_out8~DATAOUT4\ <= \Mult0|auto_generated|mac_out8_DATAOUT_bus\(12);
\Mult0|auto_generated|mac_out8~DATAOUT5\ <= \Mult0|auto_generated|mac_out8_DATAOUT_bus\(13);
\Mult0|auto_generated|mac_out8~DATAOUT6\ <= \Mult0|auto_generated|mac_out8_DATAOUT_bus\(14);
\Mult0|auto_generated|mac_out8~DATAOUT7\ <= \Mult0|auto_generated|mac_out8_DATAOUT_bus\(15);
\Mult0|auto_generated|mac_out8~DATAOUT8\ <= \Mult0|auto_generated|mac_out8_DATAOUT_bus\(16);
\Mult0|auto_generated|mac_out8~DATAOUT9\ <= \Mult0|auto_generated|mac_out8_DATAOUT_bus\(17);
\Mult0|auto_generated|mac_out8~DATAOUT10\ <= \Mult0|auto_generated|mac_out8_DATAOUT_bus\(18);
\Mult0|auto_generated|mac_out8~DATAOUT11\ <= \Mult0|auto_generated|mac_out8_DATAOUT_bus\(19);
\Mult0|auto_generated|mac_out8~DATAOUT12\ <= \Mult0|auto_generated|mac_out8_DATAOUT_bus\(20);
\Mult0|auto_generated|mac_out8~DATAOUT13\ <= \Mult0|auto_generated|mac_out8_DATAOUT_bus\(21);
\Mult0|auto_generated|mac_out8~DATAOUT14\ <= \Mult0|auto_generated|mac_out8_DATAOUT_bus\(22);
\Mult0|auto_generated|mac_out8~DATAOUT15\ <= \Mult0|auto_generated|mac_out8_DATAOUT_bus\(23);
\Mult0|auto_generated|mac_out8~DATAOUT16\ <= \Mult0|auto_generated|mac_out8_DATAOUT_bus\(24);
\Mult0|auto_generated|mac_out8~DATAOUT17\ <= \Mult0|auto_generated|mac_out8_DATAOUT_bus\(25);
\Mult0|auto_generated|mac_out8~DATAOUT18\ <= \Mult0|auto_generated|mac_out8_DATAOUT_bus\(26);
\Mult0|auto_generated|mac_out8~DATAOUT19\ <= \Mult0|auto_generated|mac_out8_DATAOUT_bus\(27);
\Mult0|auto_generated|mac_out8~DATAOUT20\ <= \Mult0|auto_generated|mac_out8_DATAOUT_bus\(28);
\Mult0|auto_generated|mac_out8~DATAOUT21\ <= \Mult0|auto_generated|mac_out8_DATAOUT_bus\(29);
\Mult0|auto_generated|mac_out8~DATAOUT22\ <= \Mult0|auto_generated|mac_out8_DATAOUT_bus\(30);
\Mult0|auto_generated|mac_out8~DATAOUT23\ <= \Mult0|auto_generated|mac_out8_DATAOUT_bus\(31);
\Mult0|auto_generated|mac_out8~DATAOUT24\ <= \Mult0|auto_generated|mac_out8_DATAOUT_bus\(32);
\Mult0|auto_generated|mac_out8~DATAOUT25\ <= \Mult0|auto_generated|mac_out8_DATAOUT_bus\(33);
\Mult0|auto_generated|mac_out8~DATAOUT26\ <= \Mult0|auto_generated|mac_out8_DATAOUT_bus\(34);
\Mult0|auto_generated|mac_out8~DATAOUT27\ <= \Mult0|auto_generated|mac_out8_DATAOUT_bus\(35);

\Mult1|auto_generated|mac_mult1_DATAA_bus\ <= (\a[17]~input_o\ & \a[16]~input_o\ & \a[15]~input_o\ & \a[14]~input_o\ & \a[13]~input_o\ & \a[12]~input_o\ & \a[11]~input_o\ & \a[10]~input_o\ & \a[9]~input_o\ & \a[8]~input_o\ & \a[7]~input_o\ & 
\a[6]~input_o\ & \a[5]~input_o\ & \a[4]~input_o\ & \a[3]~input_o\ & \a[2]~input_o\ & \a[1]~input_o\ & \a[0]~input_o\);

\Mult1|auto_generated|mac_mult1_DATAB_bus\ <= (\b[17]~input_o\ & \b[16]~input_o\ & \b[15]~input_o\ & \b[14]~input_o\ & \b[13]~input_o\ & \b[12]~input_o\ & \b[11]~input_o\ & \b[10]~input_o\ & \b[9]~input_o\ & \b[8]~input_o\ & \b[7]~input_o\ & 
\b[6]~input_o\ & \b[5]~input_o\ & \b[4]~input_o\ & \b[3]~input_o\ & \b[2]~input_o\ & \b[1]~input_o\ & \b[0]~input_o\);

\Mult1|auto_generated|mac_mult1~dataout\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(0);
\Mult1|auto_generated|mac_mult1~DATAOUT1\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(1);
\Mult1|auto_generated|mac_mult1~DATAOUT2\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(2);
\Mult1|auto_generated|mac_mult1~DATAOUT3\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(3);
\Mult1|auto_generated|mac_mult1~DATAOUT4\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(4);
\Mult1|auto_generated|mac_mult1~DATAOUT5\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(5);
\Mult1|auto_generated|mac_mult1~DATAOUT6\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(6);
\Mult1|auto_generated|mac_mult1~DATAOUT7\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(7);
\Mult1|auto_generated|mac_mult1~DATAOUT8\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(8);
\Mult1|auto_generated|mac_mult1~DATAOUT9\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(9);
\Mult1|auto_generated|mac_mult1~DATAOUT10\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(10);
\Mult1|auto_generated|mac_mult1~DATAOUT11\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(11);
\Mult1|auto_generated|mac_mult1~DATAOUT12\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(12);
\Mult1|auto_generated|mac_mult1~DATAOUT13\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(13);
\Mult1|auto_generated|mac_mult1~DATAOUT14\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(14);
\Mult1|auto_generated|mac_mult1~DATAOUT15\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(15);
\Mult1|auto_generated|mac_mult1~DATAOUT16\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(16);
\Mult1|auto_generated|mac_mult1~DATAOUT17\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(17);
\Mult1|auto_generated|mac_mult1~DATAOUT18\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(18);
\Mult1|auto_generated|mac_mult1~DATAOUT19\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(19);
\Mult1|auto_generated|mac_mult1~DATAOUT20\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(20);
\Mult1|auto_generated|mac_mult1~DATAOUT21\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(21);
\Mult1|auto_generated|mac_mult1~DATAOUT22\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(22);
\Mult1|auto_generated|mac_mult1~DATAOUT23\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(23);
\Mult1|auto_generated|mac_mult1~DATAOUT24\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(24);
\Mult1|auto_generated|mac_mult1~DATAOUT25\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(25);
\Mult1|auto_generated|mac_mult1~DATAOUT26\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(26);
\Mult1|auto_generated|mac_mult1~DATAOUT27\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(27);
\Mult1|auto_generated|mac_mult1~DATAOUT28\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(28);
\Mult1|auto_generated|mac_mult1~DATAOUT29\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(29);
\Mult1|auto_generated|mac_mult1~DATAOUT30\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(30);
\Mult1|auto_generated|mac_mult1~DATAOUT31\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(31);
\Mult1|auto_generated|mac_mult1~DATAOUT32\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(32);
\Mult1|auto_generated|mac_mult1~DATAOUT33\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(33);
\Mult1|auto_generated|mac_mult1~DATAOUT34\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(34);
\Mult1|auto_generated|mac_mult1~DATAOUT35\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(35);

\Mult0|auto_generated|mac_mult1_DATAA_bus\ <= (\a[17]~input_o\ & \a[16]~input_o\ & \a[15]~input_o\ & \a[14]~input_o\ & \a[13]~input_o\ & \a[12]~input_o\ & \a[11]~input_o\ & \a[10]~input_o\ & \a[9]~input_o\ & \a[8]~input_o\ & \a[7]~input_o\ & 
\a[6]~input_o\ & \a[5]~input_o\ & \a[4]~input_o\ & \a[3]~input_o\ & \a[2]~input_o\ & \a[1]~input_o\ & \a[0]~input_o\);

\Mult0|auto_generated|mac_mult1_DATAB_bus\ <= (\b[17]~input_o\ & \b[16]~input_o\ & \b[15]~input_o\ & \b[14]~input_o\ & \b[13]~input_o\ & \b[12]~input_o\ & \b[11]~input_o\ & \b[10]~input_o\ & \b[9]~input_o\ & \b[8]~input_o\ & \b[7]~input_o\ & 
\b[6]~input_o\ & \b[5]~input_o\ & \b[4]~input_o\ & \b[3]~input_o\ & \b[2]~input_o\ & \b[1]~input_o\ & \b[0]~input_o\);

\Mult0|auto_generated|mac_mult1~dataout\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(0);
\Mult0|auto_generated|mac_mult1~DATAOUT1\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(1);
\Mult0|auto_generated|mac_mult1~DATAOUT2\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(2);
\Mult0|auto_generated|mac_mult1~DATAOUT3\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(3);
\Mult0|auto_generated|mac_mult1~DATAOUT4\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(4);
\Mult0|auto_generated|mac_mult1~DATAOUT5\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(5);
\Mult0|auto_generated|mac_mult1~DATAOUT6\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(6);
\Mult0|auto_generated|mac_mult1~DATAOUT7\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(7);
\Mult0|auto_generated|mac_mult1~DATAOUT8\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(8);
\Mult0|auto_generated|mac_mult1~DATAOUT9\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(9);
\Mult0|auto_generated|mac_mult1~DATAOUT10\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(10);
\Mult0|auto_generated|mac_mult1~DATAOUT11\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(11);
\Mult0|auto_generated|mac_mult1~DATAOUT12\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(12);
\Mult0|auto_generated|mac_mult1~DATAOUT13\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(13);
\Mult0|auto_generated|mac_mult1~DATAOUT14\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(14);
\Mult0|auto_generated|mac_mult1~DATAOUT15\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(15);
\Mult0|auto_generated|mac_mult1~DATAOUT16\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(16);
\Mult0|auto_generated|mac_mult1~DATAOUT17\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(17);
\Mult0|auto_generated|mac_mult1~DATAOUT18\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(18);
\Mult0|auto_generated|mac_mult1~DATAOUT19\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(19);
\Mult0|auto_generated|mac_mult1~DATAOUT20\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(20);
\Mult0|auto_generated|mac_mult1~DATAOUT21\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(21);
\Mult0|auto_generated|mac_mult1~DATAOUT22\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(22);
\Mult0|auto_generated|mac_mult1~DATAOUT23\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(23);
\Mult0|auto_generated|mac_mult1~DATAOUT24\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(24);
\Mult0|auto_generated|mac_mult1~DATAOUT25\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(25);
\Mult0|auto_generated|mac_mult1~DATAOUT26\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(26);
\Mult0|auto_generated|mac_mult1~DATAOUT27\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(27);
\Mult0|auto_generated|mac_mult1~DATAOUT28\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(28);
\Mult0|auto_generated|mac_mult1~DATAOUT29\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(29);
\Mult0|auto_generated|mac_mult1~DATAOUT30\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(30);
\Mult0|auto_generated|mac_mult1~DATAOUT31\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(31);
\Mult0|auto_generated|mac_mult1~DATAOUT32\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(32);
\Mult0|auto_generated|mac_mult1~DATAOUT33\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(33);
\Mult0|auto_generated|mac_mult1~DATAOUT34\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(34);
\Mult0|auto_generated|mac_mult1~DATAOUT35\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(35);

\Mult1|auto_generated|mac_mult3_DATAA_bus\ <= (\a[17]~input_o\ & \a[16]~input_o\ & \a[15]~input_o\ & \a[14]~input_o\ & \a[13]~input_o\ & \a[12]~input_o\ & \a[11]~input_o\ & \a[10]~input_o\ & \a[9]~input_o\ & \a[8]~input_o\ & \a[7]~input_o\ & 
\a[6]~input_o\ & \a[5]~input_o\ & \a[4]~input_o\ & \a[3]~input_o\ & \a[2]~input_o\ & \a[1]~input_o\ & \a[0]~input_o\);

\Mult1|auto_generated|mac_mult3_DATAB_bus\ <= (\b[31]~input_o\ & \b[30]~input_o\ & \b[29]~input_o\ & \b[28]~input_o\ & \b[27]~input_o\ & \b[26]~input_o\ & \b[25]~input_o\ & \b[24]~input_o\ & \b[23]~input_o\ & \b[22]~input_o\ & \b[21]~input_o\ & 
\b[20]~input_o\ & \b[19]~input_o\ & \b[18]~input_o\ & gnd & gnd & gnd & gnd);

\Mult1|auto_generated|mac_mult3~0\ <= \Mult1|auto_generated|mac_mult3_DATAOUT_bus\(0);
\Mult1|auto_generated|mac_mult3~1\ <= \Mult1|auto_generated|mac_mult3_DATAOUT_bus\(1);
\Mult1|auto_generated|mac_mult3~2\ <= \Mult1|auto_generated|mac_mult3_DATAOUT_bus\(2);
\Mult1|auto_generated|mac_mult3~3\ <= \Mult1|auto_generated|mac_mult3_DATAOUT_bus\(3);
\Mult1|auto_generated|mac_mult3~dataout\ <= \Mult1|auto_generated|mac_mult3_DATAOUT_bus\(4);
\Mult1|auto_generated|mac_mult3~DATAOUT1\ <= \Mult1|auto_generated|mac_mult3_DATAOUT_bus\(5);
\Mult1|auto_generated|mac_mult3~DATAOUT2\ <= \Mult1|auto_generated|mac_mult3_DATAOUT_bus\(6);
\Mult1|auto_generated|mac_mult3~DATAOUT3\ <= \Mult1|auto_generated|mac_mult3_DATAOUT_bus\(7);
\Mult1|auto_generated|mac_mult3~DATAOUT4\ <= \Mult1|auto_generated|mac_mult3_DATAOUT_bus\(8);
\Mult1|auto_generated|mac_mult3~DATAOUT5\ <= \Mult1|auto_generated|mac_mult3_DATAOUT_bus\(9);
\Mult1|auto_generated|mac_mult3~DATAOUT6\ <= \Mult1|auto_generated|mac_mult3_DATAOUT_bus\(10);
\Mult1|auto_generated|mac_mult3~DATAOUT7\ <= \Mult1|auto_generated|mac_mult3_DATAOUT_bus\(11);
\Mult1|auto_generated|mac_mult3~DATAOUT8\ <= \Mult1|auto_generated|mac_mult3_DATAOUT_bus\(12);
\Mult1|auto_generated|mac_mult3~DATAOUT9\ <= \Mult1|auto_generated|mac_mult3_DATAOUT_bus\(13);
\Mult1|auto_generated|mac_mult3~DATAOUT10\ <= \Mult1|auto_generated|mac_mult3_DATAOUT_bus\(14);
\Mult1|auto_generated|mac_mult3~DATAOUT11\ <= \Mult1|auto_generated|mac_mult3_DATAOUT_bus\(15);
\Mult1|auto_generated|mac_mult3~DATAOUT12\ <= \Mult1|auto_generated|mac_mult3_DATAOUT_bus\(16);
\Mult1|auto_generated|mac_mult3~DATAOUT13\ <= \Mult1|auto_generated|mac_mult3_DATAOUT_bus\(17);
\Mult1|auto_generated|mac_mult3~DATAOUT14\ <= \Mult1|auto_generated|mac_mult3_DATAOUT_bus\(18);
\Mult1|auto_generated|mac_mult3~DATAOUT15\ <= \Mult1|auto_generated|mac_mult3_DATAOUT_bus\(19);
\Mult1|auto_generated|mac_mult3~DATAOUT16\ <= \Mult1|auto_generated|mac_mult3_DATAOUT_bus\(20);
\Mult1|auto_generated|mac_mult3~DATAOUT17\ <= \Mult1|auto_generated|mac_mult3_DATAOUT_bus\(21);
\Mult1|auto_generated|mac_mult3~DATAOUT18\ <= \Mult1|auto_generated|mac_mult3_DATAOUT_bus\(22);
\Mult1|auto_generated|mac_mult3~DATAOUT19\ <= \Mult1|auto_generated|mac_mult3_DATAOUT_bus\(23);
\Mult1|auto_generated|mac_mult3~DATAOUT20\ <= \Mult1|auto_generated|mac_mult3_DATAOUT_bus\(24);
\Mult1|auto_generated|mac_mult3~DATAOUT21\ <= \Mult1|auto_generated|mac_mult3_DATAOUT_bus\(25);
\Mult1|auto_generated|mac_mult3~DATAOUT22\ <= \Mult1|auto_generated|mac_mult3_DATAOUT_bus\(26);
\Mult1|auto_generated|mac_mult3~DATAOUT23\ <= \Mult1|auto_generated|mac_mult3_DATAOUT_bus\(27);
\Mult1|auto_generated|mac_mult3~DATAOUT24\ <= \Mult1|auto_generated|mac_mult3_DATAOUT_bus\(28);
\Mult1|auto_generated|mac_mult3~DATAOUT25\ <= \Mult1|auto_generated|mac_mult3_DATAOUT_bus\(29);
\Mult1|auto_generated|mac_mult3~DATAOUT26\ <= \Mult1|auto_generated|mac_mult3_DATAOUT_bus\(30);
\Mult1|auto_generated|mac_mult3~DATAOUT27\ <= \Mult1|auto_generated|mac_mult3_DATAOUT_bus\(31);
\Mult1|auto_generated|mac_mult3~DATAOUT28\ <= \Mult1|auto_generated|mac_mult3_DATAOUT_bus\(32);
\Mult1|auto_generated|mac_mult3~DATAOUT29\ <= \Mult1|auto_generated|mac_mult3_DATAOUT_bus\(33);
\Mult1|auto_generated|mac_mult3~DATAOUT30\ <= \Mult1|auto_generated|mac_mult3_DATAOUT_bus\(34);
\Mult1|auto_generated|mac_mult3~DATAOUT31\ <= \Mult1|auto_generated|mac_mult3_DATAOUT_bus\(35);

\Mult1|auto_generated|mac_mult5_DATAA_bus\ <= (\b[17]~input_o\ & \b[16]~input_o\ & \b[15]~input_o\ & \b[14]~input_o\ & \b[13]~input_o\ & \b[12]~input_o\ & \b[11]~input_o\ & \b[10]~input_o\ & \b[9]~input_o\ & \b[8]~input_o\ & \b[7]~input_o\ & 
\b[6]~input_o\ & \b[5]~input_o\ & \b[4]~input_o\ & \b[3]~input_o\ & \b[2]~input_o\ & \b[1]~input_o\ & \b[0]~input_o\);

\Mult1|auto_generated|mac_mult5_DATAB_bus\ <= (\a[31]~input_o\ & \a[30]~input_o\ & \a[29]~input_o\ & \a[28]~input_o\ & \a[27]~input_o\ & \a[26]~input_o\ & \a[25]~input_o\ & \a[24]~input_o\ & \a[23]~input_o\ & \a[22]~input_o\ & \a[21]~input_o\ & 
\a[20]~input_o\ & \a[19]~input_o\ & \a[18]~input_o\ & gnd & gnd & gnd & gnd);

\Mult1|auto_generated|mac_mult5~0\ <= \Mult1|auto_generated|mac_mult5_DATAOUT_bus\(0);
\Mult1|auto_generated|mac_mult5~1\ <= \Mult1|auto_generated|mac_mult5_DATAOUT_bus\(1);
\Mult1|auto_generated|mac_mult5~2\ <= \Mult1|auto_generated|mac_mult5_DATAOUT_bus\(2);
\Mult1|auto_generated|mac_mult5~3\ <= \Mult1|auto_generated|mac_mult5_DATAOUT_bus\(3);
\Mult1|auto_generated|mac_mult5~dataout\ <= \Mult1|auto_generated|mac_mult5_DATAOUT_bus\(4);
\Mult1|auto_generated|mac_mult5~DATAOUT1\ <= \Mult1|auto_generated|mac_mult5_DATAOUT_bus\(5);
\Mult1|auto_generated|mac_mult5~DATAOUT2\ <= \Mult1|auto_generated|mac_mult5_DATAOUT_bus\(6);
\Mult1|auto_generated|mac_mult5~DATAOUT3\ <= \Mult1|auto_generated|mac_mult5_DATAOUT_bus\(7);
\Mult1|auto_generated|mac_mult5~DATAOUT4\ <= \Mult1|auto_generated|mac_mult5_DATAOUT_bus\(8);
\Mult1|auto_generated|mac_mult5~DATAOUT5\ <= \Mult1|auto_generated|mac_mult5_DATAOUT_bus\(9);
\Mult1|auto_generated|mac_mult5~DATAOUT6\ <= \Mult1|auto_generated|mac_mult5_DATAOUT_bus\(10);
\Mult1|auto_generated|mac_mult5~DATAOUT7\ <= \Mult1|auto_generated|mac_mult5_DATAOUT_bus\(11);
\Mult1|auto_generated|mac_mult5~DATAOUT8\ <= \Mult1|auto_generated|mac_mult5_DATAOUT_bus\(12);
\Mult1|auto_generated|mac_mult5~DATAOUT9\ <= \Mult1|auto_generated|mac_mult5_DATAOUT_bus\(13);
\Mult1|auto_generated|mac_mult5~DATAOUT10\ <= \Mult1|auto_generated|mac_mult5_DATAOUT_bus\(14);
\Mult1|auto_generated|mac_mult5~DATAOUT11\ <= \Mult1|auto_generated|mac_mult5_DATAOUT_bus\(15);
\Mult1|auto_generated|mac_mult5~DATAOUT12\ <= \Mult1|auto_generated|mac_mult5_DATAOUT_bus\(16);
\Mult1|auto_generated|mac_mult5~DATAOUT13\ <= \Mult1|auto_generated|mac_mult5_DATAOUT_bus\(17);
\Mult1|auto_generated|mac_mult5~DATAOUT14\ <= \Mult1|auto_generated|mac_mult5_DATAOUT_bus\(18);
\Mult1|auto_generated|mac_mult5~DATAOUT15\ <= \Mult1|auto_generated|mac_mult5_DATAOUT_bus\(19);
\Mult1|auto_generated|mac_mult5~DATAOUT16\ <= \Mult1|auto_generated|mac_mult5_DATAOUT_bus\(20);
\Mult1|auto_generated|mac_mult5~DATAOUT17\ <= \Mult1|auto_generated|mac_mult5_DATAOUT_bus\(21);
\Mult1|auto_generated|mac_mult5~DATAOUT18\ <= \Mult1|auto_generated|mac_mult5_DATAOUT_bus\(22);
\Mult1|auto_generated|mac_mult5~DATAOUT19\ <= \Mult1|auto_generated|mac_mult5_DATAOUT_bus\(23);
\Mult1|auto_generated|mac_mult5~DATAOUT20\ <= \Mult1|auto_generated|mac_mult5_DATAOUT_bus\(24);
\Mult1|auto_generated|mac_mult5~DATAOUT21\ <= \Mult1|auto_generated|mac_mult5_DATAOUT_bus\(25);
\Mult1|auto_generated|mac_mult5~DATAOUT22\ <= \Mult1|auto_generated|mac_mult5_DATAOUT_bus\(26);
\Mult1|auto_generated|mac_mult5~DATAOUT23\ <= \Mult1|auto_generated|mac_mult5_DATAOUT_bus\(27);
\Mult1|auto_generated|mac_mult5~DATAOUT24\ <= \Mult1|auto_generated|mac_mult5_DATAOUT_bus\(28);
\Mult1|auto_generated|mac_mult5~DATAOUT25\ <= \Mult1|auto_generated|mac_mult5_DATAOUT_bus\(29);
\Mult1|auto_generated|mac_mult5~DATAOUT26\ <= \Mult1|auto_generated|mac_mult5_DATAOUT_bus\(30);
\Mult1|auto_generated|mac_mult5~DATAOUT27\ <= \Mult1|auto_generated|mac_mult5_DATAOUT_bus\(31);
\Mult1|auto_generated|mac_mult5~DATAOUT28\ <= \Mult1|auto_generated|mac_mult5_DATAOUT_bus\(32);
\Mult1|auto_generated|mac_mult5~DATAOUT29\ <= \Mult1|auto_generated|mac_mult5_DATAOUT_bus\(33);
\Mult1|auto_generated|mac_mult5~DATAOUT30\ <= \Mult1|auto_generated|mac_mult5_DATAOUT_bus\(34);
\Mult1|auto_generated|mac_mult5~DATAOUT31\ <= \Mult1|auto_generated|mac_mult5_DATAOUT_bus\(35);

\Mult0|auto_generated|mac_mult3_DATAA_bus\ <= (\a[17]~input_o\ & \a[16]~input_o\ & \a[15]~input_o\ & \a[14]~input_o\ & \a[13]~input_o\ & \a[12]~input_o\ & \a[11]~input_o\ & \a[10]~input_o\ & \a[9]~input_o\ & \a[8]~input_o\ & \a[7]~input_o\ & 
\a[6]~input_o\ & \a[5]~input_o\ & \a[4]~input_o\ & \a[3]~input_o\ & \a[2]~input_o\ & \a[1]~input_o\ & \a[0]~input_o\);

\Mult0|auto_generated|mac_mult3_DATAB_bus\ <= (\b[31]~input_o\ & \b[30]~input_o\ & \b[29]~input_o\ & \b[28]~input_o\ & \b[27]~input_o\ & \b[26]~input_o\ & \b[25]~input_o\ & \b[24]~input_o\ & \b[23]~input_o\ & \b[22]~input_o\ & \b[21]~input_o\ & 
\b[20]~input_o\ & \b[19]~input_o\ & \b[18]~input_o\ & gnd & gnd & gnd & gnd);

\Mult0|auto_generated|mac_mult3~0\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(0);
\Mult0|auto_generated|mac_mult3~1\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(1);
\Mult0|auto_generated|mac_mult3~2\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(2);
\Mult0|auto_generated|mac_mult3~3\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(3);
\Mult0|auto_generated|mac_mult3~dataout\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(4);
\Mult0|auto_generated|mac_mult3~DATAOUT1\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(5);
\Mult0|auto_generated|mac_mult3~DATAOUT2\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(6);
\Mult0|auto_generated|mac_mult3~DATAOUT3\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(7);
\Mult0|auto_generated|mac_mult3~DATAOUT4\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(8);
\Mult0|auto_generated|mac_mult3~DATAOUT5\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(9);
\Mult0|auto_generated|mac_mult3~DATAOUT6\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(10);
\Mult0|auto_generated|mac_mult3~DATAOUT7\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(11);
\Mult0|auto_generated|mac_mult3~DATAOUT8\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(12);
\Mult0|auto_generated|mac_mult3~DATAOUT9\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(13);
\Mult0|auto_generated|mac_mult3~DATAOUT10\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(14);
\Mult0|auto_generated|mac_mult3~DATAOUT11\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(15);
\Mult0|auto_generated|mac_mult3~DATAOUT12\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(16);
\Mult0|auto_generated|mac_mult3~DATAOUT13\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(17);
\Mult0|auto_generated|mac_mult3~DATAOUT14\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(18);
\Mult0|auto_generated|mac_mult3~DATAOUT15\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(19);
\Mult0|auto_generated|mac_mult3~DATAOUT16\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(20);
\Mult0|auto_generated|mac_mult3~DATAOUT17\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(21);
\Mult0|auto_generated|mac_mult3~DATAOUT18\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(22);
\Mult0|auto_generated|mac_mult3~DATAOUT19\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(23);
\Mult0|auto_generated|mac_mult3~DATAOUT20\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(24);
\Mult0|auto_generated|mac_mult3~DATAOUT21\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(25);
\Mult0|auto_generated|mac_mult3~DATAOUT22\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(26);
\Mult0|auto_generated|mac_mult3~DATAOUT23\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(27);
\Mult0|auto_generated|mac_mult3~DATAOUT24\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(28);
\Mult0|auto_generated|mac_mult3~DATAOUT25\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(29);
\Mult0|auto_generated|mac_mult3~DATAOUT26\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(30);
\Mult0|auto_generated|mac_mult3~DATAOUT27\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(31);
\Mult0|auto_generated|mac_mult3~DATAOUT28\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(32);
\Mult0|auto_generated|mac_mult3~DATAOUT29\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(33);
\Mult0|auto_generated|mac_mult3~DATAOUT30\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(34);
\Mult0|auto_generated|mac_mult3~DATAOUT31\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(35);

\Mult0|auto_generated|mac_mult5_DATAA_bus\ <= (\b[17]~input_o\ & \b[16]~input_o\ & \b[15]~input_o\ & \b[14]~input_o\ & \b[13]~input_o\ & \b[12]~input_o\ & \b[11]~input_o\ & \b[10]~input_o\ & \b[9]~input_o\ & \b[8]~input_o\ & \b[7]~input_o\ & 
\b[6]~input_o\ & \b[5]~input_o\ & \b[4]~input_o\ & \b[3]~input_o\ & \b[2]~input_o\ & \b[1]~input_o\ & \b[0]~input_o\);

\Mult0|auto_generated|mac_mult5_DATAB_bus\ <= (\a[31]~input_o\ & \a[30]~input_o\ & \a[29]~input_o\ & \a[28]~input_o\ & \a[27]~input_o\ & \a[26]~input_o\ & \a[25]~input_o\ & \a[24]~input_o\ & \a[23]~input_o\ & \a[22]~input_o\ & \a[21]~input_o\ & 
\a[20]~input_o\ & \a[19]~input_o\ & \a[18]~input_o\ & gnd & gnd & gnd & gnd);

\Mult0|auto_generated|mac_mult5~0\ <= \Mult0|auto_generated|mac_mult5_DATAOUT_bus\(0);
\Mult0|auto_generated|mac_mult5~1\ <= \Mult0|auto_generated|mac_mult5_DATAOUT_bus\(1);
\Mult0|auto_generated|mac_mult5~2\ <= \Mult0|auto_generated|mac_mult5_DATAOUT_bus\(2);
\Mult0|auto_generated|mac_mult5~3\ <= \Mult0|auto_generated|mac_mult5_DATAOUT_bus\(3);
\Mult0|auto_generated|mac_mult5~dataout\ <= \Mult0|auto_generated|mac_mult5_DATAOUT_bus\(4);
\Mult0|auto_generated|mac_mult5~DATAOUT1\ <= \Mult0|auto_generated|mac_mult5_DATAOUT_bus\(5);
\Mult0|auto_generated|mac_mult5~DATAOUT2\ <= \Mult0|auto_generated|mac_mult5_DATAOUT_bus\(6);
\Mult0|auto_generated|mac_mult5~DATAOUT3\ <= \Mult0|auto_generated|mac_mult5_DATAOUT_bus\(7);
\Mult0|auto_generated|mac_mult5~DATAOUT4\ <= \Mult0|auto_generated|mac_mult5_DATAOUT_bus\(8);
\Mult0|auto_generated|mac_mult5~DATAOUT5\ <= \Mult0|auto_generated|mac_mult5_DATAOUT_bus\(9);
\Mult0|auto_generated|mac_mult5~DATAOUT6\ <= \Mult0|auto_generated|mac_mult5_DATAOUT_bus\(10);
\Mult0|auto_generated|mac_mult5~DATAOUT7\ <= \Mult0|auto_generated|mac_mult5_DATAOUT_bus\(11);
\Mult0|auto_generated|mac_mult5~DATAOUT8\ <= \Mult0|auto_generated|mac_mult5_DATAOUT_bus\(12);
\Mult0|auto_generated|mac_mult5~DATAOUT9\ <= \Mult0|auto_generated|mac_mult5_DATAOUT_bus\(13);
\Mult0|auto_generated|mac_mult5~DATAOUT10\ <= \Mult0|auto_generated|mac_mult5_DATAOUT_bus\(14);
\Mult0|auto_generated|mac_mult5~DATAOUT11\ <= \Mult0|auto_generated|mac_mult5_DATAOUT_bus\(15);
\Mult0|auto_generated|mac_mult5~DATAOUT12\ <= \Mult0|auto_generated|mac_mult5_DATAOUT_bus\(16);
\Mult0|auto_generated|mac_mult5~DATAOUT13\ <= \Mult0|auto_generated|mac_mult5_DATAOUT_bus\(17);
\Mult0|auto_generated|mac_mult5~DATAOUT14\ <= \Mult0|auto_generated|mac_mult5_DATAOUT_bus\(18);
\Mult0|auto_generated|mac_mult5~DATAOUT15\ <= \Mult0|auto_generated|mac_mult5_DATAOUT_bus\(19);
\Mult0|auto_generated|mac_mult5~DATAOUT16\ <= \Mult0|auto_generated|mac_mult5_DATAOUT_bus\(20);
\Mult0|auto_generated|mac_mult5~DATAOUT17\ <= \Mult0|auto_generated|mac_mult5_DATAOUT_bus\(21);
\Mult0|auto_generated|mac_mult5~DATAOUT18\ <= \Mult0|auto_generated|mac_mult5_DATAOUT_bus\(22);
\Mult0|auto_generated|mac_mult5~DATAOUT19\ <= \Mult0|auto_generated|mac_mult5_DATAOUT_bus\(23);
\Mult0|auto_generated|mac_mult5~DATAOUT20\ <= \Mult0|auto_generated|mac_mult5_DATAOUT_bus\(24);
\Mult0|auto_generated|mac_mult5~DATAOUT21\ <= \Mult0|auto_generated|mac_mult5_DATAOUT_bus\(25);
\Mult0|auto_generated|mac_mult5~DATAOUT22\ <= \Mult0|auto_generated|mac_mult5_DATAOUT_bus\(26);
\Mult0|auto_generated|mac_mult5~DATAOUT23\ <= \Mult0|auto_generated|mac_mult5_DATAOUT_bus\(27);
\Mult0|auto_generated|mac_mult5~DATAOUT24\ <= \Mult0|auto_generated|mac_mult5_DATAOUT_bus\(28);
\Mult0|auto_generated|mac_mult5~DATAOUT25\ <= \Mult0|auto_generated|mac_mult5_DATAOUT_bus\(29);
\Mult0|auto_generated|mac_mult5~DATAOUT26\ <= \Mult0|auto_generated|mac_mult5_DATAOUT_bus\(30);
\Mult0|auto_generated|mac_mult5~DATAOUT27\ <= \Mult0|auto_generated|mac_mult5_DATAOUT_bus\(31);
\Mult0|auto_generated|mac_mult5~DATAOUT28\ <= \Mult0|auto_generated|mac_mult5_DATAOUT_bus\(32);
\Mult0|auto_generated|mac_mult5~DATAOUT29\ <= \Mult0|auto_generated|mac_mult5_DATAOUT_bus\(33);
\Mult0|auto_generated|mac_mult5~DATAOUT30\ <= \Mult0|auto_generated|mac_mult5_DATAOUT_bus\(34);
\Mult0|auto_generated|mac_mult5~DATAOUT31\ <= \Mult0|auto_generated|mac_mult5_DATAOUT_bus\(35);

\Mult1|auto_generated|mac_mult7_DATAA_bus\ <= (\a[31]~input_o\ & \a[30]~input_o\ & \a[29]~input_o\ & \a[28]~input_o\ & \a[27]~input_o\ & \a[26]~input_o\ & \a[25]~input_o\ & \a[24]~input_o\ & \a[23]~input_o\ & \a[22]~input_o\ & \a[21]~input_o\ & 
\a[20]~input_o\ & \a[19]~input_o\ & \a[18]~input_o\ & gnd & gnd & gnd & gnd);

\Mult1|auto_generated|mac_mult7_DATAB_bus\ <= (\b[31]~input_o\ & \b[30]~input_o\ & \b[29]~input_o\ & \b[28]~input_o\ & \b[27]~input_o\ & \b[26]~input_o\ & \b[25]~input_o\ & \b[24]~input_o\ & \b[23]~input_o\ & \b[22]~input_o\ & \b[21]~input_o\ & 
\b[20]~input_o\ & \b[19]~input_o\ & \b[18]~input_o\ & gnd & gnd & gnd & gnd);

\Mult1|auto_generated|mac_mult7~0\ <= \Mult1|auto_generated|mac_mult7_DATAOUT_bus\(0);
\Mult1|auto_generated|mac_mult7~1\ <= \Mult1|auto_generated|mac_mult7_DATAOUT_bus\(1);
\Mult1|auto_generated|mac_mult7~2\ <= \Mult1|auto_generated|mac_mult7_DATAOUT_bus\(2);
\Mult1|auto_generated|mac_mult7~3\ <= \Mult1|auto_generated|mac_mult7_DATAOUT_bus\(3);
\Mult1|auto_generated|mac_mult7~4\ <= \Mult1|auto_generated|mac_mult7_DATAOUT_bus\(4);
\Mult1|auto_generated|mac_mult7~5\ <= \Mult1|auto_generated|mac_mult7_DATAOUT_bus\(5);
\Mult1|auto_generated|mac_mult7~6\ <= \Mult1|auto_generated|mac_mult7_DATAOUT_bus\(6);
\Mult1|auto_generated|mac_mult7~7\ <= \Mult1|auto_generated|mac_mult7_DATAOUT_bus\(7);
\Mult1|auto_generated|mac_mult7~dataout\ <= \Mult1|auto_generated|mac_mult7_DATAOUT_bus\(8);
\Mult1|auto_generated|mac_mult7~DATAOUT1\ <= \Mult1|auto_generated|mac_mult7_DATAOUT_bus\(9);
\Mult1|auto_generated|mac_mult7~DATAOUT2\ <= \Mult1|auto_generated|mac_mult7_DATAOUT_bus\(10);
\Mult1|auto_generated|mac_mult7~DATAOUT3\ <= \Mult1|auto_generated|mac_mult7_DATAOUT_bus\(11);
\Mult1|auto_generated|mac_mult7~DATAOUT4\ <= \Mult1|auto_generated|mac_mult7_DATAOUT_bus\(12);
\Mult1|auto_generated|mac_mult7~DATAOUT5\ <= \Mult1|auto_generated|mac_mult7_DATAOUT_bus\(13);
\Mult1|auto_generated|mac_mult7~DATAOUT6\ <= \Mult1|auto_generated|mac_mult7_DATAOUT_bus\(14);
\Mult1|auto_generated|mac_mult7~DATAOUT7\ <= \Mult1|auto_generated|mac_mult7_DATAOUT_bus\(15);
\Mult1|auto_generated|mac_mult7~DATAOUT8\ <= \Mult1|auto_generated|mac_mult7_DATAOUT_bus\(16);
\Mult1|auto_generated|mac_mult7~DATAOUT9\ <= \Mult1|auto_generated|mac_mult7_DATAOUT_bus\(17);
\Mult1|auto_generated|mac_mult7~DATAOUT10\ <= \Mult1|auto_generated|mac_mult7_DATAOUT_bus\(18);
\Mult1|auto_generated|mac_mult7~DATAOUT11\ <= \Mult1|auto_generated|mac_mult7_DATAOUT_bus\(19);
\Mult1|auto_generated|mac_mult7~DATAOUT12\ <= \Mult1|auto_generated|mac_mult7_DATAOUT_bus\(20);
\Mult1|auto_generated|mac_mult7~DATAOUT13\ <= \Mult1|auto_generated|mac_mult7_DATAOUT_bus\(21);
\Mult1|auto_generated|mac_mult7~DATAOUT14\ <= \Mult1|auto_generated|mac_mult7_DATAOUT_bus\(22);
\Mult1|auto_generated|mac_mult7~DATAOUT15\ <= \Mult1|auto_generated|mac_mult7_DATAOUT_bus\(23);
\Mult1|auto_generated|mac_mult7~DATAOUT16\ <= \Mult1|auto_generated|mac_mult7_DATAOUT_bus\(24);
\Mult1|auto_generated|mac_mult7~DATAOUT17\ <= \Mult1|auto_generated|mac_mult7_DATAOUT_bus\(25);
\Mult1|auto_generated|mac_mult7~DATAOUT18\ <= \Mult1|auto_generated|mac_mult7_DATAOUT_bus\(26);
\Mult1|auto_generated|mac_mult7~DATAOUT19\ <= \Mult1|auto_generated|mac_mult7_DATAOUT_bus\(27);
\Mult1|auto_generated|mac_mult7~DATAOUT20\ <= \Mult1|auto_generated|mac_mult7_DATAOUT_bus\(28);
\Mult1|auto_generated|mac_mult7~DATAOUT21\ <= \Mult1|auto_generated|mac_mult7_DATAOUT_bus\(29);
\Mult1|auto_generated|mac_mult7~DATAOUT22\ <= \Mult1|auto_generated|mac_mult7_DATAOUT_bus\(30);
\Mult1|auto_generated|mac_mult7~DATAOUT23\ <= \Mult1|auto_generated|mac_mult7_DATAOUT_bus\(31);
\Mult1|auto_generated|mac_mult7~DATAOUT24\ <= \Mult1|auto_generated|mac_mult7_DATAOUT_bus\(32);
\Mult1|auto_generated|mac_mult7~DATAOUT25\ <= \Mult1|auto_generated|mac_mult7_DATAOUT_bus\(33);
\Mult1|auto_generated|mac_mult7~DATAOUT26\ <= \Mult1|auto_generated|mac_mult7_DATAOUT_bus\(34);
\Mult1|auto_generated|mac_mult7~DATAOUT27\ <= \Mult1|auto_generated|mac_mult7_DATAOUT_bus\(35);

\Mult0|auto_generated|mac_mult7_DATAA_bus\ <= (\a[31]~input_o\ & \a[30]~input_o\ & \a[29]~input_o\ & \a[28]~input_o\ & \a[27]~input_o\ & \a[26]~input_o\ & \a[25]~input_o\ & \a[24]~input_o\ & \a[23]~input_o\ & \a[22]~input_o\ & \a[21]~input_o\ & 
\a[20]~input_o\ & \a[19]~input_o\ & \a[18]~input_o\ & gnd & gnd & gnd & gnd);

\Mult0|auto_generated|mac_mult7_DATAB_bus\ <= (\b[31]~input_o\ & \b[30]~input_o\ & \b[29]~input_o\ & \b[28]~input_o\ & \b[27]~input_o\ & \b[26]~input_o\ & \b[25]~input_o\ & \b[24]~input_o\ & \b[23]~input_o\ & \b[22]~input_o\ & \b[21]~input_o\ & 
\b[20]~input_o\ & \b[19]~input_o\ & \b[18]~input_o\ & gnd & gnd & gnd & gnd);

\Mult0|auto_generated|mac_mult7~0\ <= \Mult0|auto_generated|mac_mult7_DATAOUT_bus\(0);
\Mult0|auto_generated|mac_mult7~1\ <= \Mult0|auto_generated|mac_mult7_DATAOUT_bus\(1);
\Mult0|auto_generated|mac_mult7~2\ <= \Mult0|auto_generated|mac_mult7_DATAOUT_bus\(2);
\Mult0|auto_generated|mac_mult7~3\ <= \Mult0|auto_generated|mac_mult7_DATAOUT_bus\(3);
\Mult0|auto_generated|mac_mult7~4\ <= \Mult0|auto_generated|mac_mult7_DATAOUT_bus\(4);
\Mult0|auto_generated|mac_mult7~5\ <= \Mult0|auto_generated|mac_mult7_DATAOUT_bus\(5);
\Mult0|auto_generated|mac_mult7~6\ <= \Mult0|auto_generated|mac_mult7_DATAOUT_bus\(6);
\Mult0|auto_generated|mac_mult7~7\ <= \Mult0|auto_generated|mac_mult7_DATAOUT_bus\(7);
\Mult0|auto_generated|mac_mult7~dataout\ <= \Mult0|auto_generated|mac_mult7_DATAOUT_bus\(8);
\Mult0|auto_generated|mac_mult7~DATAOUT1\ <= \Mult0|auto_generated|mac_mult7_DATAOUT_bus\(9);
\Mult0|auto_generated|mac_mult7~DATAOUT2\ <= \Mult0|auto_generated|mac_mult7_DATAOUT_bus\(10);
\Mult0|auto_generated|mac_mult7~DATAOUT3\ <= \Mult0|auto_generated|mac_mult7_DATAOUT_bus\(11);
\Mult0|auto_generated|mac_mult7~DATAOUT4\ <= \Mult0|auto_generated|mac_mult7_DATAOUT_bus\(12);
\Mult0|auto_generated|mac_mult7~DATAOUT5\ <= \Mult0|auto_generated|mac_mult7_DATAOUT_bus\(13);
\Mult0|auto_generated|mac_mult7~DATAOUT6\ <= \Mult0|auto_generated|mac_mult7_DATAOUT_bus\(14);
\Mult0|auto_generated|mac_mult7~DATAOUT7\ <= \Mult0|auto_generated|mac_mult7_DATAOUT_bus\(15);
\Mult0|auto_generated|mac_mult7~DATAOUT8\ <= \Mult0|auto_generated|mac_mult7_DATAOUT_bus\(16);
\Mult0|auto_generated|mac_mult7~DATAOUT9\ <= \Mult0|auto_generated|mac_mult7_DATAOUT_bus\(17);
\Mult0|auto_generated|mac_mult7~DATAOUT10\ <= \Mult0|auto_generated|mac_mult7_DATAOUT_bus\(18);
\Mult0|auto_generated|mac_mult7~DATAOUT11\ <= \Mult0|auto_generated|mac_mult7_DATAOUT_bus\(19);
\Mult0|auto_generated|mac_mult7~DATAOUT12\ <= \Mult0|auto_generated|mac_mult7_DATAOUT_bus\(20);
\Mult0|auto_generated|mac_mult7~DATAOUT13\ <= \Mult0|auto_generated|mac_mult7_DATAOUT_bus\(21);
\Mult0|auto_generated|mac_mult7~DATAOUT14\ <= \Mult0|auto_generated|mac_mult7_DATAOUT_bus\(22);
\Mult0|auto_generated|mac_mult7~DATAOUT15\ <= \Mult0|auto_generated|mac_mult7_DATAOUT_bus\(23);
\Mult0|auto_generated|mac_mult7~DATAOUT16\ <= \Mult0|auto_generated|mac_mult7_DATAOUT_bus\(24);
\Mult0|auto_generated|mac_mult7~DATAOUT17\ <= \Mult0|auto_generated|mac_mult7_DATAOUT_bus\(25);
\Mult0|auto_generated|mac_mult7~DATAOUT18\ <= \Mult0|auto_generated|mac_mult7_DATAOUT_bus\(26);
\Mult0|auto_generated|mac_mult7~DATAOUT19\ <= \Mult0|auto_generated|mac_mult7_DATAOUT_bus\(27);
\Mult0|auto_generated|mac_mult7~DATAOUT20\ <= \Mult0|auto_generated|mac_mult7_DATAOUT_bus\(28);
\Mult0|auto_generated|mac_mult7~DATAOUT21\ <= \Mult0|auto_generated|mac_mult7_DATAOUT_bus\(29);
\Mult0|auto_generated|mac_mult7~DATAOUT22\ <= \Mult0|auto_generated|mac_mult7_DATAOUT_bus\(30);
\Mult0|auto_generated|mac_mult7~DATAOUT23\ <= \Mult0|auto_generated|mac_mult7_DATAOUT_bus\(31);
\Mult0|auto_generated|mac_mult7~DATAOUT24\ <= \Mult0|auto_generated|mac_mult7_DATAOUT_bus\(32);
\Mult0|auto_generated|mac_mult7~DATAOUT25\ <= \Mult0|auto_generated|mac_mult7_DATAOUT_bus\(33);
\Mult0|auto_generated|mac_mult7~DATAOUT26\ <= \Mult0|auto_generated|mac_mult7_DATAOUT_bus\(34);
\Mult0|auto_generated|mac_mult7~DATAOUT27\ <= \Mult0|auto_generated|mac_mult7_DATAOUT_bus\(35);

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y44_N8
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X69_Y54_N23
\result[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux31~7_combout\,
	devoe => ww_devoe,
	o => \result[0]~output_o\);

-- Location: IOOBUF_X78_Y44_N2
\result[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux30~7_combout\,
	devoe => ww_devoe,
	o => \result[1]~output_o\);

-- Location: IOOBUF_X78_Y49_N2
\result[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux29~12_combout\,
	devoe => ww_devoe,
	o => \result[2]~output_o\);

-- Location: IOOBUF_X54_Y54_N2
\result[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux28~6_combout\,
	devoe => ww_devoe,
	o => \result[3]~output_o\);

-- Location: IOOBUF_X78_Y42_N9
\result[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux27~11_combout\,
	devoe => ww_devoe,
	o => \result[4]~output_o\);

-- Location: IOOBUF_X78_Y41_N24
\result[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux26~5_combout\,
	devoe => ww_devoe,
	o => \result[5]~output_o\);

-- Location: IOOBUF_X78_Y42_N2
\result[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux25~5_combout\,
	devoe => ww_devoe,
	o => \result[6]~output_o\);

-- Location: IOOBUF_X78_Y45_N23
\result[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux24~5_combout\,
	devoe => ww_devoe,
	o => \result[7]~output_o\);

-- Location: IOOBUF_X60_Y54_N2
\result[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux23~7_combout\,
	devoe => ww_devoe,
	o => \result[8]~output_o\);

-- Location: IOOBUF_X58_Y54_N16
\result[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux22~5_combout\,
	devoe => ww_devoe,
	o => \result[9]~output_o\);

-- Location: IOOBUF_X60_Y54_N30
\result[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux21~5_combout\,
	devoe => ww_devoe,
	o => \result[10]~output_o\);

-- Location: IOOBUF_X60_Y54_N16
\result[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux20~5_combout\,
	devoe => ww_devoe,
	o => \result[11]~output_o\);

-- Location: IOOBUF_X66_Y54_N16
\result[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux19~5_combout\,
	devoe => ww_devoe,
	o => \result[12]~output_o\);

-- Location: IOOBUF_X58_Y54_N2
\result[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux18~5_combout\,
	devoe => ww_devoe,
	o => \result[13]~output_o\);

-- Location: IOOBUF_X58_Y54_N9
\result[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux17~5_combout\,
	devoe => ww_devoe,
	o => \result[14]~output_o\);

-- Location: IOOBUF_X60_Y54_N23
\result[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux16~7_combout\,
	devoe => ww_devoe,
	o => \result[15]~output_o\);

-- Location: IOOBUF_X78_Y49_N9
\result[16]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux15~6_combout\,
	devoe => ww_devoe,
	o => \result[16]~output_o\);

-- Location: IOOBUF_X34_Y39_N2
\result[17]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux14~4_combout\,
	devoe => ww_devoe,
	o => \result[17]~output_o\);

-- Location: IOOBUF_X62_Y54_N30
\result[18]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux13~4_combout\,
	devoe => ww_devoe,
	o => \result[18]~output_o\);

-- Location: IOOBUF_X78_Y35_N16
\result[19]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux12~4_combout\,
	devoe => ww_devoe,
	o => \result[19]~output_o\);

-- Location: IOOBUF_X69_Y54_N30
\result[20]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux11~4_combout\,
	devoe => ww_devoe,
	o => \result[20]~output_o\);

-- Location: IOOBUF_X64_Y54_N2
\result[21]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux10~7_combout\,
	devoe => ww_devoe,
	o => \result[21]~output_o\);

-- Location: IOOBUF_X58_Y0_N23
\result[22]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux9~4_combout\,
	devoe => ww_devoe,
	o => \result[22]~output_o\);

-- Location: IOOBUF_X78_Y41_N2
\result[23]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux8~4_combout\,
	devoe => ww_devoe,
	o => \result[23]~output_o\);

-- Location: IOOBUF_X78_Y17_N9
\result[24]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux7~4_combout\,
	devoe => ww_devoe,
	o => \result[24]~output_o\);

-- Location: IOOBUF_X78_Y35_N9
\result[25]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~4_combout\,
	devoe => ww_devoe,
	o => \result[25]~output_o\);

-- Location: IOOBUF_X54_Y54_N9
\result[26]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~4_combout\,
	devoe => ww_devoe,
	o => \result[26]~output_o\);

-- Location: IOOBUF_X78_Y35_N23
\result[27]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~4_combout\,
	devoe => ww_devoe,
	o => \result[27]~output_o\);

-- Location: IOOBUF_X78_Y36_N9
\result[28]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~4_combout\,
	devoe => ww_devoe,
	o => \result[28]~output_o\);

-- Location: IOOBUF_X78_Y36_N2
\result[29]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~4_combout\,
	devoe => ww_devoe,
	o => \result[29]~output_o\);

-- Location: IOOBUF_X58_Y54_N30
\result[30]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~4_combout\,
	devoe => ww_devoe,
	o => \result[30]~output_o\);

-- Location: IOOBUF_X56_Y54_N23
\result[31]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~5_combout\,
	devoe => ww_devoe,
	o => \result[31]~output_o\);

-- Location: IOOBUF_X78_Y18_N23
\result_hi[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux63~0_combout\,
	devoe => ww_devoe,
	o => \result_hi[0]~output_o\);

-- Location: IOOBUF_X78_Y29_N2
\result_hi[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux62~0_combout\,
	devoe => ww_devoe,
	o => \result_hi[1]~output_o\);

-- Location: IOOBUF_X78_Y34_N24
\result_hi[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux61~0_combout\,
	devoe => ww_devoe,
	o => \result_hi[2]~output_o\);

-- Location: IOOBUF_X78_Y30_N9
\result_hi[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux60~0_combout\,
	devoe => ww_devoe,
	o => \result_hi[3]~output_o\);

-- Location: IOOBUF_X78_Y34_N2
\result_hi[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux59~0_combout\,
	devoe => ww_devoe,
	o => \result_hi[4]~output_o\);

-- Location: IOOBUF_X78_Y20_N24
\result_hi[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux58~0_combout\,
	devoe => ww_devoe,
	o => \result_hi[5]~output_o\);

-- Location: IOOBUF_X78_Y21_N9
\result_hi[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux57~0_combout\,
	devoe => ww_devoe,
	o => \result_hi[6]~output_o\);

-- Location: IOOBUF_X78_Y31_N23
\result_hi[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux56~0_combout\,
	devoe => ww_devoe,
	o => \result_hi[7]~output_o\);

-- Location: IOOBUF_X78_Y21_N23
\result_hi[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux55~0_combout\,
	devoe => ww_devoe,
	o => \result_hi[8]~output_o\);

-- Location: IOOBUF_X78_Y21_N2
\result_hi[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux54~0_combout\,
	devoe => ww_devoe,
	o => \result_hi[9]~output_o\);

-- Location: IOOBUF_X78_Y25_N2
\result_hi[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux53~0_combout\,
	devoe => ww_devoe,
	o => \result_hi[10]~output_o\);

-- Location: IOOBUF_X78_Y41_N16
\result_hi[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux52~0_combout\,
	devoe => ww_devoe,
	o => \result_hi[11]~output_o\);

-- Location: IOOBUF_X78_Y29_N23
\result_hi[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux51~0_combout\,
	devoe => ww_devoe,
	o => \result_hi[12]~output_o\);

-- Location: IOOBUF_X78_Y41_N9
\result_hi[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux50~0_combout\,
	devoe => ww_devoe,
	o => \result_hi[13]~output_o\);

-- Location: IOOBUF_X78_Y31_N2
\result_hi[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux49~0_combout\,
	devoe => ww_devoe,
	o => \result_hi[14]~output_o\);

-- Location: IOOBUF_X78_Y18_N16
\result_hi[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux48~0_combout\,
	devoe => ww_devoe,
	o => \result_hi[15]~output_o\);

-- Location: IOOBUF_X78_Y34_N16
\result_hi[16]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux47~0_combout\,
	devoe => ww_devoe,
	o => \result_hi[16]~output_o\);

-- Location: IOOBUF_X78_Y33_N2
\result_hi[17]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux46~0_combout\,
	devoe => ww_devoe,
	o => \result_hi[17]~output_o\);

-- Location: IOOBUF_X78_Y33_N16
\result_hi[18]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux45~0_combout\,
	devoe => ww_devoe,
	o => \result_hi[18]~output_o\);

-- Location: IOOBUF_X78_Y25_N16
\result_hi[19]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux44~0_combout\,
	devoe => ww_devoe,
	o => \result_hi[19]~output_o\);

-- Location: IOOBUF_X78_Y33_N23
\result_hi[20]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux43~0_combout\,
	devoe => ww_devoe,
	o => \result_hi[20]~output_o\);

-- Location: IOOBUF_X78_Y24_N9
\result_hi[21]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux42~0_combout\,
	devoe => ww_devoe,
	o => \result_hi[21]~output_o\);

-- Location: IOOBUF_X78_Y30_N16
\result_hi[22]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux41~0_combout\,
	devoe => ww_devoe,
	o => \result_hi[22]~output_o\);

-- Location: IOOBUF_X78_Y42_N23
\result_hi[23]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux40~0_combout\,
	devoe => ww_devoe,
	o => \result_hi[23]~output_o\);

-- Location: IOOBUF_X78_Y31_N16
\result_hi[24]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux39~0_combout\,
	devoe => ww_devoe,
	o => \result_hi[24]~output_o\);

-- Location: IOOBUF_X78_Y24_N16
\result_hi[25]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux38~0_combout\,
	devoe => ww_devoe,
	o => \result_hi[25]~output_o\);

-- Location: IOOBUF_X78_Y30_N2
\result_hi[26]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux37~0_combout\,
	devoe => ww_devoe,
	o => \result_hi[26]~output_o\);

-- Location: IOOBUF_X78_Y25_N9
\result_hi[27]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux36~0_combout\,
	devoe => ww_devoe,
	o => \result_hi[27]~output_o\);

-- Location: IOOBUF_X78_Y34_N9
\result_hi[28]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux35~0_combout\,
	devoe => ww_devoe,
	o => \result_hi[28]~output_o\);

-- Location: IOOBUF_X78_Y29_N16
\result_hi[29]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux34~0_combout\,
	devoe => ww_devoe,
	o => \result_hi[29]~output_o\);

-- Location: IOOBUF_X34_Y39_N16
\result_hi[30]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux33~0_combout\,
	devoe => ww_devoe,
	o => \result_hi[30]~output_o\);

-- Location: IOOBUF_X78_Y33_N9
\result_hi[31]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux32~0_combout\,
	devoe => ww_devoe,
	o => \result_hi[31]~output_o\);

-- Location: IOOBUF_X56_Y54_N2
\branch_taken~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux64~0_combout\,
	devoe => ww_devoe,
	o => \branch_taken~output_o\);

-- Location: IOIBUF_X78_Y36_N15
\opsel[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opsel(0),
	o => \opsel[0]~input_o\);

-- Location: IOIBUF_X78_Y37_N22
\opsel[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opsel(1),
	o => \opsel[1]~input_o\);

-- Location: IOIBUF_X34_Y39_N22
\a[26]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(26),
	o => \a[26]~input_o\);

-- Location: IOIBUF_X36_Y39_N29
\a[24]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(24),
	o => \a[24]~input_o\);

-- Location: IOIBUF_X54_Y54_N29
\shamt[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_shamt(1),
	o => \shamt[1]~input_o\);

-- Location: LCCOMB_X54_Y38_N10
\ShiftRight0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight0~20_combout\ = (\shamt[1]~input_o\ & (\a[26]~input_o\)) # (!\shamt[1]~input_o\ & ((\a[24]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[26]~input_o\,
	datab => \a[24]~input_o\,
	datad => \shamt[1]~input_o\,
	combout => \ShiftRight0~20_combout\);

-- Location: IOIBUF_X78_Y29_N8
\a[25]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(25),
	o => \a[25]~input_o\);

-- Location: IOIBUF_X78_Y37_N15
\a[27]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(27),
	o => \a[27]~input_o\);

-- Location: LCCOMB_X54_Y38_N8
\ShiftRight0~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight0~19_combout\ = (\shamt[1]~input_o\ & ((\a[27]~input_o\))) # (!\shamt[1]~input_o\ & (\a[25]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \shamt[1]~input_o\,
	datac => \a[25]~input_o\,
	datad => \a[27]~input_o\,
	combout => \ShiftRight0~19_combout\);

-- Location: IOIBUF_X56_Y54_N29
\shamt[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_shamt(0),
	o => \shamt[0]~input_o\);

-- Location: LCCOMB_X54_Y38_N4
\ShiftRight0~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight0~21_combout\ = (\shamt[0]~input_o\ & ((\ShiftRight0~19_combout\))) # (!\shamt[0]~input_o\ & (\ShiftRight0~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~20_combout\,
	datab => \ShiftRight0~19_combout\,
	datac => \shamt[0]~input_o\,
	combout => \ShiftRight0~21_combout\);

-- Location: IOIBUF_X34_Y39_N8
\a[18]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(18),
	o => \a[18]~input_o\);

-- Location: IOIBUF_X49_Y54_N1
\a[16]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(16),
	o => \a[16]~input_o\);

-- Location: LCCOMB_X56_Y39_N16
\ShiftRight0~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight0~23_combout\ = (\shamt[1]~input_o\ & (\a[18]~input_o\)) # (!\shamt[1]~input_o\ & ((\a[16]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[18]~input_o\,
	datac => \shamt[1]~input_o\,
	datad => \a[16]~input_o\,
	combout => \ShiftRight0~23_combout\);

-- Location: IOIBUF_X78_Y37_N1
\a[19]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(19),
	o => \a[19]~input_o\);

-- Location: IOIBUF_X49_Y54_N22
\a[17]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(17),
	o => \a[17]~input_o\);

-- Location: LCCOMB_X56_Y39_N30
\ShiftRight0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight0~22_combout\ = (\shamt[1]~input_o\ & (\a[19]~input_o\)) # (!\shamt[1]~input_o\ & ((\a[17]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt[1]~input_o\,
	datac => \a[19]~input_o\,
	datad => \a[17]~input_o\,
	combout => \ShiftRight0~22_combout\);

-- Location: LCCOMB_X56_Y39_N18
\ShiftRight0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight0~24_combout\ = (\shamt[0]~input_o\ & ((\ShiftRight0~22_combout\))) # (!\shamt[0]~input_o\ & (\ShiftRight0~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight0~23_combout\,
	datac => \ShiftRight0~22_combout\,
	datad => \shamt[0]~input_o\,
	combout => \ShiftRight0~24_combout\);

-- Location: IOIBUF_X58_Y54_N22
\shamt[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_shamt(2),
	o => \shamt[2]~input_o\);

-- Location: IOIBUF_X56_Y54_N15
\shamt[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_shamt(3),
	o => \shamt[3]~input_o\);

-- Location: LCCOMB_X62_Y38_N12
\ShiftRight0~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight0~25_combout\ = (!\shamt[2]~input_o\ & ((\shamt[3]~input_o\ & (\ShiftRight0~21_combout\)) # (!\shamt[3]~input_o\ & ((\ShiftRight0~24_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~21_combout\,
	datab => \ShiftRight0~24_combout\,
	datac => \shamt[2]~input_o\,
	datad => \shamt[3]~input_o\,
	combout => \ShiftRight0~25_combout\);

-- Location: IOIBUF_X36_Y39_N22
\a[31]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(31),
	o => \a[31]~input_o\);

-- Location: IOIBUF_X78_Y40_N15
\a[30]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(30),
	o => \a[30]~input_o\);

-- Location: LCCOMB_X58_Y38_N24
\ShiftRight1~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight1~16_combout\ = (\shamt[0]~input_o\ & (\a[31]~input_o\)) # (!\shamt[0]~input_o\ & ((\a[30]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[31]~input_o\,
	datab => \a[30]~input_o\,
	datad => \shamt[0]~input_o\,
	combout => \ShiftRight1~16_combout\);

-- Location: IOIBUF_X51_Y54_N22
\a[28]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(28),
	o => \a[28]~input_o\);

-- Location: IOIBUF_X78_Y23_N22
\a[29]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(29),
	o => \a[29]~input_o\);

-- Location: LCCOMB_X57_Y38_N8
\ShiftRight0~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight0~13_combout\ = (!\shamt[1]~input_o\ & ((\shamt[0]~input_o\ & ((\a[29]~input_o\))) # (!\shamt[0]~input_o\ & (\a[28]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[28]~input_o\,
	datab => \shamt[0]~input_o\,
	datac => \shamt[1]~input_o\,
	datad => \a[29]~input_o\,
	combout => \ShiftRight0~13_combout\);

-- Location: LCCOMB_X58_Y38_N18
\ShiftRight0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight0~14_combout\ = (\ShiftRight0~13_combout\) # ((\shamt[1]~input_o\ & \ShiftRight1~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt[1]~input_o\,
	datab => \ShiftRight1~16_combout\,
	datad => \ShiftRight0~13_combout\,
	combout => \ShiftRight0~14_combout\);

-- Location: IOIBUF_X78_Y30_N22
\a[22]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(22),
	o => \a[22]~input_o\);

-- Location: IOIBUF_X78_Y40_N1
\a[20]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(20),
	o => \a[20]~input_o\);

-- Location: LCCOMB_X55_Y38_N26
\ShiftRight0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight0~16_combout\ = (\shamt[1]~input_o\ & (\a[22]~input_o\)) # (!\shamt[1]~input_o\ & ((\a[20]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \shamt[1]~input_o\,
	datac => \a[22]~input_o\,
	datad => \a[20]~input_o\,
	combout => \ShiftRight0~16_combout\);

-- Location: IOIBUF_X78_Y45_N8
\a[21]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(21),
	o => \a[21]~input_o\);

-- Location: IOIBUF_X78_Y23_N1
\a[23]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(23),
	o => \a[23]~input_o\);

-- Location: LCCOMB_X55_Y38_N24
\ShiftRight0~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight0~15_combout\ = (\shamt[1]~input_o\ & ((\a[23]~input_o\))) # (!\shamt[1]~input_o\ & (\a[21]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \shamt[1]~input_o\,
	datac => \a[21]~input_o\,
	datad => \a[23]~input_o\,
	combout => \ShiftRight0~15_combout\);

-- Location: LCCOMB_X55_Y38_N12
\ShiftRight0~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight0~17_combout\ = (\shamt[0]~input_o\ & ((\ShiftRight0~15_combout\))) # (!\shamt[0]~input_o\ & (\ShiftRight0~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~16_combout\,
	datac => \shamt[0]~input_o\,
	datad => \ShiftRight0~15_combout\,
	combout => \ShiftRight0~17_combout\);

-- Location: LCCOMB_X62_Y38_N18
\ShiftRight0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight0~18_combout\ = (\shamt[2]~input_o\ & ((\shamt[3]~input_o\ & (\ShiftRight0~14_combout\)) # (!\shamt[3]~input_o\ & ((\ShiftRight0~17_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt[3]~input_o\,
	datab => \ShiftRight0~14_combout\,
	datac => \shamt[2]~input_o\,
	datad => \ShiftRight0~17_combout\,
	combout => \ShiftRight0~18_combout\);

-- Location: IOIBUF_X78_Y43_N22
\a[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(5),
	o => \a[5]~input_o\);

-- Location: IOIBUF_X78_Y43_N15
\a[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(4),
	o => \a[4]~input_o\);

-- Location: LCCOMB_X58_Y40_N24
\ShiftRight1~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight1~15_combout\ = (\shamt[0]~input_o\ & (\a[5]~input_o\)) # (!\shamt[0]~input_o\ & ((\a[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[5]~input_o\,
	datab => \shamt[0]~input_o\,
	datad => \a[4]~input_o\,
	combout => \ShiftRight1~15_combout\);

-- Location: IOIBUF_X78_Y43_N8
\a[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(7),
	o => \a[7]~input_o\);

-- Location: IOIBUF_X78_Y43_N1
\a[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(6),
	o => \a[6]~input_o\);

-- Location: LCCOMB_X58_Y40_N14
\ShiftRight0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight0~4_combout\ = (\shamt[1]~input_o\ & ((\shamt[0]~input_o\ & (\a[7]~input_o\)) # (!\shamt[0]~input_o\ & ((\a[6]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt[1]~input_o\,
	datab => \shamt[0]~input_o\,
	datac => \a[7]~input_o\,
	datad => \a[6]~input_o\,
	combout => \ShiftRight0~4_combout\);

-- Location: LCCOMB_X58_Y40_N26
\ShiftRight0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight0~5_combout\ = (\ShiftRight0~4_combout\) # ((!\shamt[1]~input_o\ & \ShiftRight1~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt[1]~input_o\,
	datab => \ShiftRight1~15_combout\,
	datac => \ShiftRight0~4_combout\,
	combout => \ShiftRight0~5_combout\);

-- Location: IOIBUF_X49_Y54_N29
\a[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(1),
	o => \a[1]~input_o\);

-- Location: IOIBUF_X78_Y40_N8
\a[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(0),
	o => \a[0]~input_o\);

-- Location: LCCOMB_X58_Y40_N0
\Mux31~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux31~0_combout\ = (!\shamt[1]~input_o\ & ((\shamt[0]~input_o\ & (\a[1]~input_o\)) # (!\shamt[0]~input_o\ & ((\a[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt[1]~input_o\,
	datab => \a[1]~input_o\,
	datac => \shamt[0]~input_o\,
	datad => \a[0]~input_o\,
	combout => \Mux31~0_combout\);

-- Location: IOIBUF_X51_Y54_N29
\a[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(3),
	o => \a[3]~input_o\);

-- Location: IOIBUF_X78_Y42_N15
\a[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(2),
	o => \a[2]~input_o\);

-- Location: LCCOMB_X58_Y40_N10
\ShiftRight1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight1~14_combout\ = (\shamt[0]~input_o\ & (\a[3]~input_o\)) # (!\shamt[0]~input_o\ & ((\a[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[3]~input_o\,
	datab => \shamt[0]~input_o\,
	datac => \a[2]~input_o\,
	combout => \ShiftRight1~14_combout\);

-- Location: LCCOMB_X58_Y40_N12
\Mux31~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux31~1_combout\ = (!\shamt[2]~input_o\ & ((\Mux31~0_combout\) # ((\shamt[1]~input_o\ & \ShiftRight1~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt[1]~input_o\,
	datab => \Mux31~0_combout\,
	datac => \shamt[2]~input_o\,
	datad => \ShiftRight1~14_combout\,
	combout => \Mux31~1_combout\);

-- Location: LCCOMB_X58_Y40_N20
\Mux31~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux31~2_combout\ = (!\shamt[3]~input_o\ & ((\Mux31~1_combout\) # ((\shamt[2]~input_o\ & \ShiftRight0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt[2]~input_o\,
	datab => \shamt[3]~input_o\,
	datac => \ShiftRight0~5_combout\,
	datad => \Mux31~1_combout\,
	combout => \Mux31~2_combout\);

-- Location: IOIBUF_X69_Y54_N1
\a[13]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(13),
	o => \a[13]~input_o\);

-- Location: IOIBUF_X69_Y54_N15
\a[15]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(15),
	o => \a[15]~input_o\);

-- Location: LCCOMB_X56_Y39_N24
\ShiftRight0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight0~6_combout\ = (\shamt[1]~input_o\ & ((\a[15]~input_o\))) # (!\shamt[1]~input_o\ & (\a[13]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a[13]~input_o\,
	datac => \shamt[1]~input_o\,
	datad => \a[15]~input_o\,
	combout => \ShiftRight0~6_combout\);

-- Location: IOIBUF_X66_Y54_N1
\a[12]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(12),
	o => \a[12]~input_o\);

-- Location: IOIBUF_X78_Y44_N8
\a[14]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(14),
	o => \a[14]~input_o\);

-- Location: LCCOMB_X56_Y39_N2
\ShiftRight0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight0~7_combout\ = (\shamt[1]~input_o\ & ((\a[14]~input_o\))) # (!\shamt[1]~input_o\ & (\a[12]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[12]~input_o\,
	datab => \a[14]~input_o\,
	datac => \shamt[1]~input_o\,
	combout => \ShiftRight0~7_combout\);

-- Location: LCCOMB_X56_Y39_N4
\ShiftRight0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight0~8_combout\ = (\shamt[0]~input_o\ & (\ShiftRight0~6_combout\)) # (!\shamt[0]~input_o\ & ((\ShiftRight0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight0~6_combout\,
	datac => \ShiftRight0~7_combout\,
	datad => \shamt[0]~input_o\,
	combout => \ShiftRight0~8_combout\);

-- Location: IOIBUF_X51_Y54_N8
\a[10]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(10),
	o => \a[10]~input_o\);

-- Location: IOIBUF_X78_Y40_N22
\a[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(8),
	o => \a[8]~input_o\);

-- Location: LCCOMB_X60_Y40_N10
\ShiftRight0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight0~10_combout\ = (\shamt[1]~input_o\ & (\a[10]~input_o\)) # (!\shamt[1]~input_o\ & ((\a[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a[10]~input_o\,
	datac => \a[8]~input_o\,
	datad => \shamt[1]~input_o\,
	combout => \ShiftRight0~10_combout\);

-- Location: IOIBUF_X78_Y44_N23
\a[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(9),
	o => \a[9]~input_o\);

-- Location: IOIBUF_X78_Y45_N15
\a[11]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(11),
	o => \a[11]~input_o\);

-- Location: LCCOMB_X60_Y40_N24
\ShiftRight0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight0~9_combout\ = (\shamt[1]~input_o\ & ((\a[11]~input_o\))) # (!\shamt[1]~input_o\ & (\a[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[9]~input_o\,
	datab => \shamt[1]~input_o\,
	datac => \a[11]~input_o\,
	combout => \ShiftRight0~9_combout\);

-- Location: LCCOMB_X60_Y40_N28
\ShiftRight0~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight0~11_combout\ = (\shamt[0]~input_o\ & ((\ShiftRight0~9_combout\))) # (!\shamt[0]~input_o\ & (\ShiftRight0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~10_combout\,
	datac => \shamt[0]~input_o\,
	datad => \ShiftRight0~9_combout\,
	combout => \ShiftRight0~11_combout\);

-- Location: LCCOMB_X58_Y39_N8
\ShiftRight0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight0~12_combout\ = (\shamt[2]~input_o\ & (\ShiftRight0~8_combout\)) # (!\shamt[2]~input_o\ & ((\ShiftRight0~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~8_combout\,
	datab => \shamt[2]~input_o\,
	datac => \ShiftRight0~11_combout\,
	combout => \ShiftRight0~12_combout\);

-- Location: IOIBUF_X78_Y49_N22
\shamt[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_shamt(4),
	o => \shamt[4]~input_o\);

-- Location: LCCOMB_X62_Y38_N8
\Mux31~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux31~3_combout\ = (!\shamt[4]~input_o\ & ((\Mux31~2_combout\) # ((\shamt[3]~input_o\ & \ShiftRight0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt[3]~input_o\,
	datab => \Mux31~2_combout\,
	datac => \ShiftRight0~12_combout\,
	datad => \shamt[4]~input_o\,
	combout => \Mux31~3_combout\);

-- Location: LCCOMB_X62_Y38_N14
\Mux31~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux31~4_combout\ = (\Mux31~3_combout\) # ((\shamt[4]~input_o\ & ((\ShiftRight0~25_combout\) # (\ShiftRight0~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~25_combout\,
	datab => \ShiftRight0~18_combout\,
	datac => \Mux31~3_combout\,
	datad => \shamt[4]~input_o\,
	combout => \Mux31~4_combout\);

-- Location: IOIBUF_X31_Y39_N8
\b[31]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(31),
	o => \b[31]~input_o\);

-- Location: IOIBUF_X78_Y20_N15
\b[30]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(30),
	o => \b[30]~input_o\);

-- Location: IOIBUF_X78_Y36_N23
\b[29]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(29),
	o => \b[29]~input_o\);

-- Location: IOIBUF_X78_Y20_N8
\b[28]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(28),
	o => \b[28]~input_o\);

-- Location: IOIBUF_X78_Y23_N8
\b[27]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(27),
	o => \b[27]~input_o\);

-- Location: IOIBUF_X78_Y24_N1
\b[26]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(26),
	o => \b[26]~input_o\);

-- Location: IOIBUF_X34_Y39_N29
\b[25]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(25),
	o => \b[25]~input_o\);

-- Location: IOIBUF_X78_Y20_N1
\b[24]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(24),
	o => \b[24]~input_o\);

-- Location: IOIBUF_X78_Y31_N8
\b[23]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(23),
	o => \b[23]~input_o\);

-- Location: IOIBUF_X78_Y25_N22
\b[22]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(22),
	o => \b[22]~input_o\);

-- Location: IOIBUF_X60_Y54_N8
\b[21]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(21),
	o => \b[21]~input_o\);

-- Location: IOIBUF_X78_Y35_N1
\b[20]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(20),
	o => \b[20]~input_o\);

-- Location: IOIBUF_X78_Y21_N15
\b[19]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(19),
	o => \b[19]~input_o\);

-- Location: IOIBUF_X78_Y24_N23
\b[18]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(18),
	o => \b[18]~input_o\);

-- Location: IOIBUF_X71_Y54_N29
\b[17]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(17),
	o => \b[17]~input_o\);

-- Location: IOIBUF_X78_Y45_N1
\b[16]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(16),
	o => \b[16]~input_o\);

-- Location: IOIBUF_X49_Y54_N15
\b[15]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(15),
	o => \b[15]~input_o\);

-- Location: IOIBUF_X78_Y44_N15
\b[14]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(14),
	o => \b[14]~input_o\);

-- Location: IOIBUF_X51_Y54_N15
\b[13]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(13),
	o => \b[13]~input_o\);

-- Location: IOIBUF_X69_Y54_N8
\b[12]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(12),
	o => \b[12]~input_o\);

-- Location: IOIBUF_X46_Y54_N8
\b[11]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(11),
	o => \b[11]~input_o\);

-- Location: IOIBUF_X49_Y54_N8
\b[10]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(10),
	o => \b[10]~input_o\);

-- Location: IOIBUF_X66_Y54_N29
\b[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(9),
	o => \b[9]~input_o\);

-- Location: IOIBUF_X56_Y54_N8
\b[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(8),
	o => \b[8]~input_o\);

-- Location: IOIBUF_X66_Y54_N22
\b[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(7),
	o => \b[7]~input_o\);

-- Location: IOIBUF_X54_Y54_N22
\b[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(6),
	o => \b[6]~input_o\);

-- Location: IOIBUF_X54_Y54_N15
\b[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(5),
	o => \b[5]~input_o\);

-- Location: IOIBUF_X46_Y54_N15
\b[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(4),
	o => \b[4]~input_o\);

-- Location: IOIBUF_X46_Y54_N1
\b[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(3),
	o => \b[3]~input_o\);

-- Location: IOIBUF_X78_Y23_N15
\b[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(2),
	o => \b[2]~input_o\);

-- Location: IOIBUF_X46_Y54_N22
\b[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(1),
	o => \b[1]~input_o\);

-- Location: IOIBUF_X51_Y54_N1
\b[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(0),
	o => \b[0]~input_o\);

-- Location: LCCOMB_X54_Y36_N0
\LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~1_cout\ = CARRY((!\a[0]~input_o\ & \b[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[0]~input_o\,
	datab => \b[0]~input_o\,
	datad => VCC,
	cout => \LessThan0~1_cout\);

-- Location: LCCOMB_X54_Y36_N2
\LessThan0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~3_cout\ = CARRY((\b[1]~input_o\ & (\a[1]~input_o\ & !\LessThan0~1_cout\)) # (!\b[1]~input_o\ & ((\a[1]~input_o\) # (!\LessThan0~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[1]~input_o\,
	datab => \a[1]~input_o\,
	datad => VCC,
	cin => \LessThan0~1_cout\,
	cout => \LessThan0~3_cout\);

-- Location: LCCOMB_X54_Y36_N4
\LessThan0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~5_cout\ = CARRY((\b[2]~input_o\ & ((!\LessThan0~3_cout\) # (!\a[2]~input_o\))) # (!\b[2]~input_o\ & (!\a[2]~input_o\ & !\LessThan0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[2]~input_o\,
	datab => \a[2]~input_o\,
	datad => VCC,
	cin => \LessThan0~3_cout\,
	cout => \LessThan0~5_cout\);

-- Location: LCCOMB_X54_Y36_N6
\LessThan0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~7_cout\ = CARRY((\a[3]~input_o\ & ((!\LessThan0~5_cout\) # (!\b[3]~input_o\))) # (!\a[3]~input_o\ & (!\b[3]~input_o\ & !\LessThan0~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[3]~input_o\,
	datab => \b[3]~input_o\,
	datad => VCC,
	cin => \LessThan0~5_cout\,
	cout => \LessThan0~7_cout\);

-- Location: LCCOMB_X54_Y36_N8
\LessThan0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~9_cout\ = CARRY((\b[4]~input_o\ & ((!\LessThan0~7_cout\) # (!\a[4]~input_o\))) # (!\b[4]~input_o\ & (!\a[4]~input_o\ & !\LessThan0~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[4]~input_o\,
	datab => \a[4]~input_o\,
	datad => VCC,
	cin => \LessThan0~7_cout\,
	cout => \LessThan0~9_cout\);

-- Location: LCCOMB_X54_Y36_N10
\LessThan0~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~11_cout\ = CARRY((\b[5]~input_o\ & (\a[5]~input_o\ & !\LessThan0~9_cout\)) # (!\b[5]~input_o\ & ((\a[5]~input_o\) # (!\LessThan0~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[5]~input_o\,
	datab => \a[5]~input_o\,
	datad => VCC,
	cin => \LessThan0~9_cout\,
	cout => \LessThan0~11_cout\);

-- Location: LCCOMB_X54_Y36_N12
\LessThan0~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~13_cout\ = CARRY((\b[6]~input_o\ & ((!\LessThan0~11_cout\) # (!\a[6]~input_o\))) # (!\b[6]~input_o\ & (!\a[6]~input_o\ & !\LessThan0~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[6]~input_o\,
	datab => \a[6]~input_o\,
	datad => VCC,
	cin => \LessThan0~11_cout\,
	cout => \LessThan0~13_cout\);

-- Location: LCCOMB_X54_Y36_N14
\LessThan0~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~15_cout\ = CARRY((\b[7]~input_o\ & (\a[7]~input_o\ & !\LessThan0~13_cout\)) # (!\b[7]~input_o\ & ((\a[7]~input_o\) # (!\LessThan0~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[7]~input_o\,
	datab => \a[7]~input_o\,
	datad => VCC,
	cin => \LessThan0~13_cout\,
	cout => \LessThan0~15_cout\);

-- Location: LCCOMB_X54_Y36_N16
\LessThan0~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~17_cout\ = CARRY((\b[8]~input_o\ & ((!\LessThan0~15_cout\) # (!\a[8]~input_o\))) # (!\b[8]~input_o\ & (!\a[8]~input_o\ & !\LessThan0~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[8]~input_o\,
	datab => \a[8]~input_o\,
	datad => VCC,
	cin => \LessThan0~15_cout\,
	cout => \LessThan0~17_cout\);

-- Location: LCCOMB_X54_Y36_N18
\LessThan0~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~19_cout\ = CARRY((\a[9]~input_o\ & ((!\LessThan0~17_cout\) # (!\b[9]~input_o\))) # (!\a[9]~input_o\ & (!\b[9]~input_o\ & !\LessThan0~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[9]~input_o\,
	datab => \b[9]~input_o\,
	datad => VCC,
	cin => \LessThan0~17_cout\,
	cout => \LessThan0~19_cout\);

-- Location: LCCOMB_X54_Y36_N20
\LessThan0~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~21_cout\ = CARRY((\b[10]~input_o\ & ((!\LessThan0~19_cout\) # (!\a[10]~input_o\))) # (!\b[10]~input_o\ & (!\a[10]~input_o\ & !\LessThan0~19_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[10]~input_o\,
	datab => \a[10]~input_o\,
	datad => VCC,
	cin => \LessThan0~19_cout\,
	cout => \LessThan0~21_cout\);

-- Location: LCCOMB_X54_Y36_N22
\LessThan0~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~23_cout\ = CARRY((\a[11]~input_o\ & ((!\LessThan0~21_cout\) # (!\b[11]~input_o\))) # (!\a[11]~input_o\ & (!\b[11]~input_o\ & !\LessThan0~21_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[11]~input_o\,
	datab => \b[11]~input_o\,
	datad => VCC,
	cin => \LessThan0~21_cout\,
	cout => \LessThan0~23_cout\);

-- Location: LCCOMB_X54_Y36_N24
\LessThan0~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~25_cout\ = CARRY((\b[12]~input_o\ & ((!\LessThan0~23_cout\) # (!\a[12]~input_o\))) # (!\b[12]~input_o\ & (!\a[12]~input_o\ & !\LessThan0~23_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[12]~input_o\,
	datab => \a[12]~input_o\,
	datad => VCC,
	cin => \LessThan0~23_cout\,
	cout => \LessThan0~25_cout\);

-- Location: LCCOMB_X54_Y36_N26
\LessThan0~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~27_cout\ = CARRY((\b[13]~input_o\ & (\a[13]~input_o\ & !\LessThan0~25_cout\)) # (!\b[13]~input_o\ & ((\a[13]~input_o\) # (!\LessThan0~25_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[13]~input_o\,
	datab => \a[13]~input_o\,
	datad => VCC,
	cin => \LessThan0~25_cout\,
	cout => \LessThan0~27_cout\);

-- Location: LCCOMB_X54_Y36_N28
\LessThan0~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~29_cout\ = CARRY((\b[14]~input_o\ & ((!\LessThan0~27_cout\) # (!\a[14]~input_o\))) # (!\b[14]~input_o\ & (!\a[14]~input_o\ & !\LessThan0~27_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[14]~input_o\,
	datab => \a[14]~input_o\,
	datad => VCC,
	cin => \LessThan0~27_cout\,
	cout => \LessThan0~29_cout\);

-- Location: LCCOMB_X54_Y36_N30
\LessThan0~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~31_cout\ = CARRY((\a[15]~input_o\ & ((!\LessThan0~29_cout\) # (!\b[15]~input_o\))) # (!\a[15]~input_o\ & (!\b[15]~input_o\ & !\LessThan0~29_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[15]~input_o\,
	datab => \b[15]~input_o\,
	datad => VCC,
	cin => \LessThan0~29_cout\,
	cout => \LessThan0~31_cout\);

-- Location: LCCOMB_X54_Y35_N0
\LessThan0~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~33_cout\ = CARRY((\b[16]~input_o\ & ((!\LessThan0~31_cout\) # (!\a[16]~input_o\))) # (!\b[16]~input_o\ & (!\a[16]~input_o\ & !\LessThan0~31_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[16]~input_o\,
	datab => \a[16]~input_o\,
	datad => VCC,
	cin => \LessThan0~31_cout\,
	cout => \LessThan0~33_cout\);

-- Location: LCCOMB_X54_Y35_N2
\LessThan0~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~35_cout\ = CARRY((\a[17]~input_o\ & ((!\LessThan0~33_cout\) # (!\b[17]~input_o\))) # (!\a[17]~input_o\ & (!\b[17]~input_o\ & !\LessThan0~33_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[17]~input_o\,
	datab => \b[17]~input_o\,
	datad => VCC,
	cin => \LessThan0~33_cout\,
	cout => \LessThan0~35_cout\);

-- Location: LCCOMB_X54_Y35_N4
\LessThan0~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~37_cout\ = CARRY((\b[18]~input_o\ & ((!\LessThan0~35_cout\) # (!\a[18]~input_o\))) # (!\b[18]~input_o\ & (!\a[18]~input_o\ & !\LessThan0~35_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[18]~input_o\,
	datab => \a[18]~input_o\,
	datad => VCC,
	cin => \LessThan0~35_cout\,
	cout => \LessThan0~37_cout\);

-- Location: LCCOMB_X54_Y35_N6
\LessThan0~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~39_cout\ = CARRY((\b[19]~input_o\ & (\a[19]~input_o\ & !\LessThan0~37_cout\)) # (!\b[19]~input_o\ & ((\a[19]~input_o\) # (!\LessThan0~37_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[19]~input_o\,
	datab => \a[19]~input_o\,
	datad => VCC,
	cin => \LessThan0~37_cout\,
	cout => \LessThan0~39_cout\);

-- Location: LCCOMB_X54_Y35_N8
\LessThan0~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~41_cout\ = CARRY((\b[20]~input_o\ & ((!\LessThan0~39_cout\) # (!\a[20]~input_o\))) # (!\b[20]~input_o\ & (!\a[20]~input_o\ & !\LessThan0~39_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[20]~input_o\,
	datab => \a[20]~input_o\,
	datad => VCC,
	cin => \LessThan0~39_cout\,
	cout => \LessThan0~41_cout\);

-- Location: LCCOMB_X54_Y35_N10
\LessThan0~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~43_cout\ = CARRY((\b[21]~input_o\ & (\a[21]~input_o\ & !\LessThan0~41_cout\)) # (!\b[21]~input_o\ & ((\a[21]~input_o\) # (!\LessThan0~41_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[21]~input_o\,
	datab => \a[21]~input_o\,
	datad => VCC,
	cin => \LessThan0~41_cout\,
	cout => \LessThan0~43_cout\);

-- Location: LCCOMB_X54_Y35_N12
\LessThan0~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~45_cout\ = CARRY((\b[22]~input_o\ & ((!\LessThan0~43_cout\) # (!\a[22]~input_o\))) # (!\b[22]~input_o\ & (!\a[22]~input_o\ & !\LessThan0~43_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[22]~input_o\,
	datab => \a[22]~input_o\,
	datad => VCC,
	cin => \LessThan0~43_cout\,
	cout => \LessThan0~45_cout\);

-- Location: LCCOMB_X54_Y35_N14
\LessThan0~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~47_cout\ = CARRY((\a[23]~input_o\ & ((!\LessThan0~45_cout\) # (!\b[23]~input_o\))) # (!\a[23]~input_o\ & (!\b[23]~input_o\ & !\LessThan0~45_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[23]~input_o\,
	datab => \b[23]~input_o\,
	datad => VCC,
	cin => \LessThan0~45_cout\,
	cout => \LessThan0~47_cout\);

-- Location: LCCOMB_X54_Y35_N16
\LessThan0~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~49_cout\ = CARRY((\b[24]~input_o\ & ((!\LessThan0~47_cout\) # (!\a[24]~input_o\))) # (!\b[24]~input_o\ & (!\a[24]~input_o\ & !\LessThan0~47_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[24]~input_o\,
	datab => \a[24]~input_o\,
	datad => VCC,
	cin => \LessThan0~47_cout\,
	cout => \LessThan0~49_cout\);

-- Location: LCCOMB_X54_Y35_N18
\LessThan0~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~51_cout\ = CARRY((\a[25]~input_o\ & ((!\LessThan0~49_cout\) # (!\b[25]~input_o\))) # (!\a[25]~input_o\ & (!\b[25]~input_o\ & !\LessThan0~49_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[25]~input_o\,
	datab => \b[25]~input_o\,
	datad => VCC,
	cin => \LessThan0~49_cout\,
	cout => \LessThan0~51_cout\);

-- Location: LCCOMB_X54_Y35_N20
\LessThan0~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~53_cout\ = CARRY((\b[26]~input_o\ & ((!\LessThan0~51_cout\) # (!\a[26]~input_o\))) # (!\b[26]~input_o\ & (!\a[26]~input_o\ & !\LessThan0~51_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[26]~input_o\,
	datab => \a[26]~input_o\,
	datad => VCC,
	cin => \LessThan0~51_cout\,
	cout => \LessThan0~53_cout\);

-- Location: LCCOMB_X54_Y35_N22
\LessThan0~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~55_cout\ = CARRY((\b[27]~input_o\ & (\a[27]~input_o\ & !\LessThan0~53_cout\)) # (!\b[27]~input_o\ & ((\a[27]~input_o\) # (!\LessThan0~53_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[27]~input_o\,
	datab => \a[27]~input_o\,
	datad => VCC,
	cin => \LessThan0~53_cout\,
	cout => \LessThan0~55_cout\);

-- Location: LCCOMB_X54_Y35_N24
\LessThan0~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~57_cout\ = CARRY((\a[28]~input_o\ & (\b[28]~input_o\ & !\LessThan0~55_cout\)) # (!\a[28]~input_o\ & ((\b[28]~input_o\) # (!\LessThan0~55_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[28]~input_o\,
	datab => \b[28]~input_o\,
	datad => VCC,
	cin => \LessThan0~55_cout\,
	cout => \LessThan0~57_cout\);

-- Location: LCCOMB_X54_Y35_N26
\LessThan0~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~59_cout\ = CARRY((\a[29]~input_o\ & ((!\LessThan0~57_cout\) # (!\b[29]~input_o\))) # (!\a[29]~input_o\ & (!\b[29]~input_o\ & !\LessThan0~57_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[29]~input_o\,
	datab => \b[29]~input_o\,
	datad => VCC,
	cin => \LessThan0~57_cout\,
	cout => \LessThan0~59_cout\);

-- Location: LCCOMB_X54_Y35_N28
\LessThan0~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~61_cout\ = CARRY((\b[30]~input_o\ & ((!\LessThan0~59_cout\) # (!\a[30]~input_o\))) # (!\b[30]~input_o\ & (!\a[30]~input_o\ & !\LessThan0~59_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[30]~input_o\,
	datab => \a[30]~input_o\,
	datad => VCC,
	cin => \LessThan0~59_cout\,
	cout => \LessThan0~61_cout\);

-- Location: LCCOMB_X54_Y35_N30
\LessThan0~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~62_combout\ = (\b[31]~input_o\ & (\LessThan0~61_cout\ & \a[31]~input_o\)) # (!\b[31]~input_o\ & ((\LessThan0~61_cout\) # (\a[31]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[31]~input_o\,
	datad => \a[31]~input_o\,
	cin => \LessThan0~61_cout\,
	combout => \LessThan0~62_combout\);

-- Location: LCCOMB_X61_Y38_N10
\Mux31~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux31~8_combout\ = (\opsel[1]~input_o\ & (\LessThan0~62_combout\)) # (!\opsel[1]~input_o\ & (((\a[0]~input_o\ & \b[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~62_combout\,
	datab => \a[0]~input_o\,
	datac => \opsel[1]~input_o\,
	datad => \b[0]~input_o\,
	combout => \Mux31~8_combout\);

-- Location: LCCOMB_X61_Y38_N12
\Mux31~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux31~9_combout\ = (\opsel[0]~input_o\ & ((\opsel[1]~input_o\ & ((\Mux31~8_combout\))) # (!\opsel[1]~input_o\ & (\Mux31~4_combout\)))) # (!\opsel[0]~input_o\ & ((\opsel[1]~input_o\ & (\Mux31~4_combout\)) # (!\opsel[1]~input_o\ & ((\Mux31~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opsel[0]~input_o\,
	datab => \opsel[1]~input_o\,
	datac => \Mux31~4_combout\,
	datad => \Mux31~8_combout\,
	combout => \Mux31~9_combout\);

-- Location: IOIBUF_X66_Y54_N8
\opsel[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opsel(2),
	o => \opsel[2]~input_o\);

-- Location: IOIBUF_X78_Y37_N8
\opsel[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opsel(3),
	o => \opsel[3]~input_o\);

-- Location: LCCOMB_X61_Y38_N18
\Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = \b[0]~input_o\ $ (\opsel[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[0]~input_o\,
	datad => \opsel[0]~input_o\,
	combout => \Add0~0_combout\);

-- Location: LCCOMB_X61_Y37_N16
\Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~2_cout\ = CARRY(\opsel[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \opsel[0]~input_o\,
	datad => VCC,
	cout => \Add0~2_cout\);

-- Location: LCCOMB_X61_Y37_N18
\Add0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~3_combout\ = (\Add0~0_combout\ & ((\a[0]~input_o\ & (\Add0~2_cout\ & VCC)) # (!\a[0]~input_o\ & (!\Add0~2_cout\)))) # (!\Add0~0_combout\ & ((\a[0]~input_o\ & (!\Add0~2_cout\)) # (!\a[0]~input_o\ & ((\Add0~2_cout\) # (GND)))))
-- \Add0~4\ = CARRY((\Add0~0_combout\ & (!\a[0]~input_o\ & !\Add0~2_cout\)) # (!\Add0~0_combout\ & ((!\Add0~2_cout\) # (!\a[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \a[0]~input_o\,
	datad => VCC,
	cin => \Add0~2_cout\,
	combout => \Add0~3_combout\,
	cout => \Add0~4\);

-- Location: DSPMULT_X48_Y38_N0
\Mult1|auto_generated|mac_mult1\ : fiftyfivenm_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "none",
	dataa_width => 18,
	datab_clock => "none",
	datab_width => 18,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => GND,
	signb => GND,
	dataa => \Mult1|auto_generated|mac_mult1_DATAA_bus\,
	datab => \Mult1|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult1|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: DSPOUT_X48_Y38_N2
\Mult1|auto_generated|mac_out2\ : fiftyfivenm_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult1|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: DSPMULT_X68_Y38_N0
\Mult0|auto_generated|mac_mult1\ : fiftyfivenm_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "none",
	dataa_width => 18,
	datab_clock => "none",
	datab_width => 18,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => GND,
	signb => GND,
	dataa => \Mult0|auto_generated|mac_mult1_DATAA_bus\,
	datab => \Mult0|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult0|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: DSPOUT_X68_Y38_N2
\Mult0|auto_generated|mac_out2\ : fiftyfivenm_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult0|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: LCCOMB_X61_Y38_N24
\Mux31~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux31~5_combout\ = (\opsel[1]~input_o\ & ((\opsel[0]~input_o\ & (\Mult1|auto_generated|w513w\(0))) # (!\opsel[0]~input_o\ & ((\Mult0|auto_generated|w569w\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opsel[0]~input_o\,
	datab => \Mult1|auto_generated|w513w\(0),
	datac => \opsel[1]~input_o\,
	datad => \Mult0|auto_generated|w569w\(0),
	combout => \Mux31~5_combout\);

-- Location: LCCOMB_X61_Y38_N20
\Mux31~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux31~6_combout\ = (\Mux31~5_combout\) # ((\Add0~3_combout\ & !\opsel[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~3_combout\,
	datab => \Mux31~5_combout\,
	datac => \opsel[1]~input_o\,
	combout => \Mux31~6_combout\);

-- Location: LCCOMB_X61_Y38_N22
\Mux31~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux31~7_combout\ = (!\opsel[3]~input_o\ & ((\opsel[2]~input_o\ & (\Mux31~9_combout\)) # (!\opsel[2]~input_o\ & ((\Mux31~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~9_combout\,
	datab => \opsel[2]~input_o\,
	datac => \opsel[3]~input_o\,
	datad => \Mux31~6_combout\,
	combout => \Mux31~7_combout\);

-- Location: LCCOMB_X58_Y40_N22
\ShiftRight0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight0~26_combout\ = (!\shamt[1]~input_o\ & ((\shamt[0]~input_o\ & (\a[2]~input_o\)) # (!\shamt[0]~input_o\ & ((\a[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[2]~input_o\,
	datab => \a[1]~input_o\,
	datac => \shamt[1]~input_o\,
	datad => \shamt[0]~input_o\,
	combout => \ShiftRight0~26_combout\);

-- Location: LCCOMB_X58_Y40_N16
\ShiftRight1~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight1~17_combout\ = (\shamt[0]~input_o\ & ((\a[4]~input_o\))) # (!\shamt[0]~input_o\ & (\a[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \shamt[0]~input_o\,
	datac => \a[3]~input_o\,
	datad => \a[4]~input_o\,
	combout => \ShiftRight1~17_combout\);

-- Location: LCCOMB_X58_Y40_N2
\ShiftRight0~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight0~27_combout\ = (!\shamt[2]~input_o\ & ((\ShiftRight0~26_combout\) # ((\ShiftRight1~17_combout\ & \shamt[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~26_combout\,
	datab => \ShiftRight1~17_combout\,
	datac => \shamt[1]~input_o\,
	datad => \shamt[2]~input_o\,
	combout => \ShiftRight0~27_combout\);

-- Location: LCCOMB_X60_Y40_N6
\ShiftRight0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight0~28_combout\ = (\shamt[1]~input_o\ & ((\shamt[0]~input_o\ & (\a[8]~input_o\)) # (!\shamt[0]~input_o\ & ((\a[7]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[8]~input_o\,
	datab => \shamt[1]~input_o\,
	datac => \shamt[0]~input_o\,
	datad => \a[7]~input_o\,
	combout => \ShiftRight0~28_combout\);

-- Location: LCCOMB_X60_Y40_N0
\ShiftRight1~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight1~18_combout\ = (\shamt[0]~input_o\ & (\a[6]~input_o\)) # (!\shamt[0]~input_o\ & ((\a[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a[6]~input_o\,
	datac => \shamt[0]~input_o\,
	datad => \a[5]~input_o\,
	combout => \ShiftRight1~18_combout\);

-- Location: LCCOMB_X60_Y40_N26
\ShiftRight0~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight0~29_combout\ = (\ShiftRight0~28_combout\) # ((!\shamt[1]~input_o\ & \ShiftRight1~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~28_combout\,
	datab => \shamt[1]~input_o\,
	datad => \ShiftRight1~18_combout\,
	combout => \ShiftRight0~29_combout\);

-- Location: LCCOMB_X60_Y39_N24
\ShiftRight0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight0~30_combout\ = (!\shamt[3]~input_o\ & ((\ShiftRight0~27_combout\) # ((\ShiftRight0~29_combout\ & \shamt[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~27_combout\,
	datab => \shamt[3]~input_o\,
	datac => \ShiftRight0~29_combout\,
	datad => \shamt[2]~input_o\,
	combout => \ShiftRight0~30_combout\);

-- Location: LCCOMB_X56_Y39_N12
\ShiftRight1~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight1~19_combout\ = (\shamt[1]~input_o\ & (\a[16]~input_o\)) # (!\shamt[1]~input_o\ & ((\a[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt[1]~input_o\,
	datab => \a[16]~input_o\,
	datac => \a[14]~input_o\,
	combout => \ShiftRight1~19_combout\);

-- Location: LCCOMB_X56_Y39_N14
\ShiftRight0~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight0~31_combout\ = (\shamt[0]~input_o\ & (\ShiftRight1~19_combout\)) # (!\shamt[0]~input_o\ & ((\ShiftRight0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~19_combout\,
	datab => \ShiftRight0~6_combout\,
	datad => \shamt[0]~input_o\,
	combout => \ShiftRight0~31_combout\);

-- Location: LCCOMB_X60_Y40_N12
\ShiftRight1~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight1~20_combout\ = (\shamt[1]~input_o\ & ((\a[12]~input_o\))) # (!\shamt[1]~input_o\ & (\a[10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a[10]~input_o\,
	datac => \a[12]~input_o\,
	datad => \shamt[1]~input_o\,
	combout => \ShiftRight1~20_combout\);

-- Location: LCCOMB_X60_Y40_N30
\ShiftRight0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight0~32_combout\ = (\shamt[0]~input_o\ & (\ShiftRight1~20_combout\)) # (!\shamt[0]~input_o\ & ((\ShiftRight0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~20_combout\,
	datac => \shamt[0]~input_o\,
	datad => \ShiftRight0~9_combout\,
	combout => \ShiftRight0~32_combout\);

-- Location: LCCOMB_X60_Y39_N2
\ShiftRight0~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight0~33_combout\ = (\shamt[2]~input_o\ & (\ShiftRight0~31_combout\)) # (!\shamt[2]~input_o\ & ((\ShiftRight0~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~31_combout\,
	datac => \ShiftRight0~32_combout\,
	datad => \shamt[2]~input_o\,
	combout => \ShiftRight0~33_combout\);

-- Location: LCCOMB_X60_Y39_N12
\ShiftRight0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight0~34_combout\ = (!\shamt[4]~input_o\ & ((\ShiftRight0~30_combout\) # ((\shamt[3]~input_o\ & \ShiftRight0~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt[4]~input_o\,
	datab => \ShiftRight0~30_combout\,
	datac => \shamt[3]~input_o\,
	datad => \ShiftRight0~33_combout\,
	combout => \ShiftRight0~34_combout\);

-- Location: LCCOMB_X57_Y38_N2
\ShiftRight1~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight1~21_combout\ = (\shamt[0]~input_o\ & ((\a[30]~input_o\))) # (!\shamt[0]~input_o\ & (\a[29]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[29]~input_o\,
	datab => \shamt[0]~input_o\,
	datac => \a[30]~input_o\,
	combout => \ShiftRight1~21_combout\);

-- Location: LCCOMB_X57_Y38_N4
\ShiftRight0~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight0~35_combout\ = (\shamt[1]~input_o\ & (\a[31]~input_o\ & (!\shamt[0]~input_o\))) # (!\shamt[1]~input_o\ & (((\ShiftRight1~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[31]~input_o\,
	datab => \shamt[0]~input_o\,
	datac => \shamt[1]~input_o\,
	datad => \ShiftRight1~21_combout\,
	combout => \ShiftRight0~35_combout\);

-- Location: LCCOMB_X55_Y38_N6
\ShiftRight1~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight1~23_combout\ = (\shamt[1]~input_o\ & (\a[24]~input_o\)) # (!\shamt[1]~input_o\ & ((\a[22]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[24]~input_o\,
	datac => \a[22]~input_o\,
	datad => \shamt[1]~input_o\,
	combout => \ShiftRight1~23_combout\);

-- Location: LCCOMB_X55_Y38_N16
\ShiftRight0~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight0~37_combout\ = (\shamt[0]~input_o\ & (\ShiftRight1~23_combout\)) # (!\shamt[0]~input_o\ & ((\ShiftRight0~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~23_combout\,
	datac => \shamt[0]~input_o\,
	datad => \ShiftRight0~15_combout\,
	combout => \ShiftRight0~37_combout\);

-- Location: LCCOMB_X56_Y39_N0
\ShiftRight1~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight1~24_combout\ = (\shamt[1]~input_o\ & ((\a[20]~input_o\))) # (!\shamt[1]~input_o\ & (\a[18]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[18]~input_o\,
	datac => \shamt[1]~input_o\,
	datad => \a[20]~input_o\,
	combout => \ShiftRight1~24_combout\);

-- Location: LCCOMB_X56_Y39_N26
\ShiftRight0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight0~38_combout\ = (\shamt[0]~input_o\ & (\ShiftRight1~24_combout\)) # (!\shamt[0]~input_o\ & ((\ShiftRight0~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight1~24_combout\,
	datac => \ShiftRight0~22_combout\,
	datad => \shamt[0]~input_o\,
	combout => \ShiftRight0~38_combout\);

-- Location: LCCOMB_X56_Y38_N24
\ShiftRight0~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight0~39_combout\ = (\shamt[2]~input_o\ & ((\ShiftRight0~37_combout\) # ((\shamt[3]~input_o\)))) # (!\shamt[2]~input_o\ & (((\ShiftRight0~38_combout\ & !\shamt[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~37_combout\,
	datab => \ShiftRight0~38_combout\,
	datac => \shamt[2]~input_o\,
	datad => \shamt[3]~input_o\,
	combout => \ShiftRight0~39_combout\);

-- Location: LCCOMB_X54_Y38_N30
\ShiftRight1~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight1~22_combout\ = (\shamt[1]~input_o\ & (\a[28]~input_o\)) # (!\shamt[1]~input_o\ & ((\a[26]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[28]~input_o\,
	datab => \a[26]~input_o\,
	datad => \shamt[1]~input_o\,
	combout => \ShiftRight1~22_combout\);

-- Location: LCCOMB_X54_Y38_N16
\ShiftRight0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight0~36_combout\ = (\shamt[0]~input_o\ & ((\ShiftRight1~22_combout\))) # (!\shamt[0]~input_o\ & (\ShiftRight0~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt[0]~input_o\,
	datab => \ShiftRight0~19_combout\,
	datac => \ShiftRight1~22_combout\,
	combout => \ShiftRight0~36_combout\);

-- Location: LCCOMB_X56_Y38_N10
\ShiftRight0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight0~40_combout\ = (\ShiftRight0~39_combout\ & ((\ShiftRight0~35_combout\) # ((!\shamt[3]~input_o\)))) # (!\ShiftRight0~39_combout\ & (((\shamt[3]~input_o\ & \ShiftRight0~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~35_combout\,
	datab => \ShiftRight0~39_combout\,
	datac => \shamt[3]~input_o\,
	datad => \ShiftRight0~36_combout\,
	combout => \ShiftRight0~40_combout\);

-- Location: LCCOMB_X63_Y38_N10
\Mux30~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux30~1_combout\ = (\opsel[0]~input_o\ & ((\ShiftRight0~34_combout\) # ((\ShiftRight0~40_combout\ & \shamt[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~34_combout\,
	datab => \ShiftRight0~40_combout\,
	datac => \opsel[0]~input_o\,
	datad => \shamt[4]~input_o\,
	combout => \Mux30~1_combout\);

-- Location: LCCOMB_X63_Y38_N12
\Mux30~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux30~2_combout\ = (\Mux30~1_combout\) # ((\a[1]~input_o\ & (!\opsel[0]~input_o\ & \b[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[1]~input_o\,
	datab => \opsel[0]~input_o\,
	datac => \b[1]~input_o\,
	datad => \Mux30~1_combout\,
	combout => \Mux30~2_combout\);

-- Location: LCCOMB_X61_Y37_N8
\Add0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~5_combout\ = \b[1]~input_o\ $ (\opsel[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b[1]~input_o\,
	datad => \opsel[0]~input_o\,
	combout => \Add0~5_combout\);

-- Location: LCCOMB_X61_Y37_N20
\Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = ((\a[1]~input_o\ $ (\Add0~5_combout\ $ (!\Add0~4\)))) # (GND)
-- \Add0~7\ = CARRY((\a[1]~input_o\ & ((\Add0~5_combout\) # (!\Add0~4\))) # (!\a[1]~input_o\ & (\Add0~5_combout\ & !\Add0~4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[1]~input_o\,
	datab => \Add0~5_combout\,
	datad => VCC,
	cin => \Add0~4\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X63_Y38_N0
\Mux30~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux30~0_combout\ = (\opsel[1]~input_o\ & (((\Mult1|auto_generated|w513w\(1) & \opsel[0]~input_o\)))) # (!\opsel[1]~input_o\ & (\Add0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datab => \Mult1|auto_generated|w513w\(1),
	datac => \opsel[0]~input_o\,
	datad => \opsel[1]~input_o\,
	combout => \Mux30~0_combout\);

-- Location: LCCOMB_X63_Y38_N6
\Mux30~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux30~3_combout\ = (\opsel[2]~input_o\ & (\Mux30~2_combout\ & ((!\opsel[1]~input_o\)))) # (!\opsel[2]~input_o\ & (((\Mux30~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux30~2_combout\,
	datab => \Mux30~0_combout\,
	datac => \opsel[2]~input_o\,
	datad => \opsel[1]~input_o\,
	combout => \Mux30~3_combout\);

-- Location: LCCOMB_X63_Y38_N4
\Mux30~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux30~6_combout\ = (!\opsel[0]~input_o\ & \opsel[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \opsel[0]~input_o\,
	datad => \opsel[1]~input_o\,
	combout => \Mux30~6_combout\);

-- Location: LCCOMB_X56_Y38_N6
\Mux22~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux22~0_combout\ = (\shamt[2]~input_o\ & (\ShiftRight0~37_combout\)) # (!\shamt[2]~input_o\ & ((\ShiftRight0~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~37_combout\,
	datab => \ShiftRight0~38_combout\,
	datac => \shamt[2]~input_o\,
	combout => \Mux22~0_combout\);

-- Location: LCCOMB_X57_Y38_N30
\ShiftRight1~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight1~25_combout\ = (\shamt[2]~input_o\ & ((\shamt[1]~input_o\ & (\a[31]~input_o\)) # (!\shamt[1]~input_o\ & ((\ShiftRight1~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[31]~input_o\,
	datab => \ShiftRight1~21_combout\,
	datac => \shamt[1]~input_o\,
	datad => \shamt[2]~input_o\,
	combout => \ShiftRight1~25_combout\);

-- Location: LCCOMB_X56_Y38_N28
\ShiftRight1~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight1~26_combout\ = (\ShiftRight1~25_combout\) # ((!\shamt[2]~input_o\ & \ShiftRight0~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~25_combout\,
	datac => \shamt[2]~input_o\,
	datad => \ShiftRight0~36_combout\,
	combout => \ShiftRight1~26_combout\);

-- Location: LCCOMB_X56_Y38_N8
\ShiftRight1~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight1~27_combout\ = (\shamt[3]~input_o\ & ((\ShiftRight1~26_combout\))) # (!\shamt[3]~input_o\ & (\Mux22~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux22~0_combout\,
	datab => \ShiftRight1~26_combout\,
	datad => \shamt[3]~input_o\,
	combout => \ShiftRight1~27_combout\);

-- Location: LCCOMB_X63_Y38_N16
\Mux30~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux30~4_combout\ = (\opsel[2]~input_o\ & ((\ShiftRight0~34_combout\) # ((\ShiftRight1~27_combout\ & \shamt[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~27_combout\,
	datab => \ShiftRight0~34_combout\,
	datac => \opsel[2]~input_o\,
	datad => \shamt[4]~input_o\,
	combout => \Mux30~4_combout\);

-- Location: LCCOMB_X63_Y38_N18
\Mux30~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux30~5_combout\ = (\Mux30~4_combout\) # ((!\opsel[2]~input_o\ & \Mult0|auto_generated|w569w\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux30~4_combout\,
	datac => \opsel[2]~input_o\,
	datad => \Mult0|auto_generated|w569w\(1),
	combout => \Mux30~5_combout\);

-- Location: LCCOMB_X63_Y38_N30
\Mux30~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux30~7_combout\ = (!\opsel[3]~input_o\ & ((\Mux30~3_combout\) # ((\Mux30~6_combout\ & \Mux30~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux30~3_combout\,
	datab => \Mux30~6_combout\,
	datac => \opsel[3]~input_o\,
	datad => \Mux30~5_combout\,
	combout => \Mux30~7_combout\);

-- Location: LCCOMB_X57_Y39_N16
\Mux29~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux29~9_combout\ = (!\opsel[2]~input_o\ & \opsel[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \opsel[2]~input_o\,
	datad => \opsel[1]~input_o\,
	combout => \Mux29~9_combout\);

-- Location: LCCOMB_X63_Y38_N24
\Mux29~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux29~8_combout\ = (\opsel[2]~input_o\) # ((\opsel[0]~input_o\ & \opsel[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \opsel[2]~input_o\,
	datac => \opsel[0]~input_o\,
	datad => \opsel[1]~input_o\,
	combout => \Mux29~8_combout\);

-- Location: LCCOMB_X61_Y37_N10
\Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = \b[2]~input_o\ $ (\opsel[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b[2]~input_o\,
	datad => \opsel[0]~input_o\,
	combout => \Add0~8_combout\);

-- Location: LCCOMB_X61_Y37_N22
\Add0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~9_combout\ = (\Add0~8_combout\ & ((\a[2]~input_o\ & (\Add0~7\ & VCC)) # (!\a[2]~input_o\ & (!\Add0~7\)))) # (!\Add0~8_combout\ & ((\a[2]~input_o\ & (!\Add0~7\)) # (!\a[2]~input_o\ & ((\Add0~7\) # (GND)))))
-- \Add0~10\ = CARRY((\Add0~8_combout\ & (!\a[2]~input_o\ & !\Add0~7\)) # (!\Add0~8_combout\ & ((!\Add0~7\) # (!\a[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~8_combout\,
	datab => \a[2]~input_o\,
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~9_combout\,
	cout => \Add0~10\);

-- Location: LCCOMB_X64_Y38_N28
\Mux29~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux29~10_combout\ = (\Mux29~9_combout\ & ((\Mux29~8_combout\) # ((\Mult0|auto_generated|w569w\(2))))) # (!\Mux29~9_combout\ & (!\Mux29~8_combout\ & ((\Add0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~9_combout\,
	datab => \Mux29~8_combout\,
	datac => \Mult0|auto_generated|w569w\(2),
	datad => \Add0~9_combout\,
	combout => \Mux29~10_combout\);

-- Location: LCCOMB_X58_Y38_N16
\ShiftRight0~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight0~43_combout\ = (!\shamt[3]~input_o\ & !\shamt[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \shamt[3]~input_o\,
	datac => \shamt[2]~input_o\,
	combout => \ShiftRight0~43_combout\);

-- Location: LCCOMB_X58_Y40_N4
\Mux29~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux29~1_combout\ = (\shamt[3]~input_o\) # ((\shamt[1]~input_o\ & !\shamt[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt[1]~input_o\,
	datac => \shamt[2]~input_o\,
	datad => \shamt[3]~input_o\,
	combout => \Mux29~1_combout\);

-- Location: LCCOMB_X60_Y40_N16
\ShiftRight1~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight1~37_combout\ = (!\shamt[0]~input_o\ & ((\shamt[1]~input_o\ & (\a[8]~input_o\)) # (!\shamt[1]~input_o\ & ((\a[6]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[8]~input_o\,
	datab => \shamt[0]~input_o\,
	datac => \a[6]~input_o\,
	datad => \shamt[1]~input_o\,
	combout => \ShiftRight1~37_combout\);

-- Location: LCCOMB_X60_Y40_N18
\ShiftRight1~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight1~38_combout\ = (\shamt[1]~input_o\ & (\a[9]~input_o\)) # (!\shamt[1]~input_o\ & ((\a[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[9]~input_o\,
	datab => \shamt[1]~input_o\,
	datad => \a[7]~input_o\,
	combout => \ShiftRight1~38_combout\);

-- Location: LCCOMB_X60_Y40_N4
\ShiftRight1~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight1~39_combout\ = (\ShiftRight1~37_combout\) # ((\shamt[0]~input_o\ & \ShiftRight1~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight1~37_combout\,
	datac => \shamt[0]~input_o\,
	datad => \ShiftRight1~38_combout\,
	combout => \ShiftRight1~39_combout\);

-- Location: LCCOMB_X58_Y40_N30
\Mux29~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux29~2_combout\ = (\ShiftRight0~43_combout\ & (\ShiftRight1~14_combout\ & (!\Mux29~1_combout\))) # (!\ShiftRight0~43_combout\ & (((\Mux29~1_combout\) # (\ShiftRight1~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~14_combout\,
	datab => \ShiftRight0~43_combout\,
	datac => \Mux29~1_combout\,
	datad => \ShiftRight1~39_combout\,
	combout => \Mux29~2_combout\);

-- Location: LCCOMB_X56_Y39_N8
\ShiftRight1~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight1~40_combout\ = (\shamt[1]~input_o\ & (\a[17]~input_o\)) # (!\shamt[1]~input_o\ & ((\a[15]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a[17]~input_o\,
	datac => \shamt[1]~input_o\,
	datad => \a[15]~input_o\,
	combout => \ShiftRight1~40_combout\);

-- Location: LCCOMB_X56_Y39_N10
\ShiftRight1~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight1~41_combout\ = (\shamt[0]~input_o\ & ((\ShiftRight1~40_combout\))) # (!\shamt[0]~input_o\ & (\ShiftRight1~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~19_combout\,
	datac => \ShiftRight1~40_combout\,
	datad => \shamt[0]~input_o\,
	combout => \ShiftRight1~41_combout\);

-- Location: LCCOMB_X60_Y40_N22
\ShiftRight1~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight1~42_combout\ = (\shamt[1]~input_o\ & ((\a[13]~input_o\))) # (!\shamt[1]~input_o\ & (\a[11]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \shamt[1]~input_o\,
	datac => \a[11]~input_o\,
	datad => \a[13]~input_o\,
	combout => \ShiftRight1~42_combout\);

-- Location: LCCOMB_X60_Y40_N8
\ShiftRight1~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight1~43_combout\ = (\shamt[0]~input_o\ & (\ShiftRight1~42_combout\)) # (!\shamt[0]~input_o\ & ((\ShiftRight1~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~42_combout\,
	datac => \shamt[0]~input_o\,
	datad => \ShiftRight1~20_combout\,
	combout => \ShiftRight1~43_combout\);

-- Location: LCCOMB_X58_Y40_N8
\ShiftRight0~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight0~45_combout\ = (\shamt[2]~input_o\ & (\ShiftRight1~41_combout\)) # (!\shamt[2]~input_o\ & ((\ShiftRight1~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt[2]~input_o\,
	datab => \ShiftRight1~41_combout\,
	datad => \ShiftRight1~43_combout\,
	combout => \ShiftRight0~45_combout\);

-- Location: LCCOMB_X58_Y40_N18
\Mux29~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux29~3_combout\ = (\Mux29~2_combout\ & (((\ShiftRight0~45_combout\) # (!\Mux29~1_combout\)))) # (!\Mux29~2_combout\ & (\ShiftRight1~15_combout\ & (\Mux29~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~2_combout\,
	datab => \ShiftRight1~15_combout\,
	datac => \Mux29~1_combout\,
	datad => \ShiftRight0~45_combout\,
	combout => \Mux29~3_combout\);

-- Location: LCCOMB_X54_Y38_N26
\ShiftRight1~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight1~28_combout\ = (\shamt[0]~input_o\ & ((\shamt[1]~input_o\ & (\a[29]~input_o\)) # (!\shamt[1]~input_o\ & ((\a[27]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[29]~input_o\,
	datab => \shamt[1]~input_o\,
	datac => \shamt[0]~input_o\,
	datad => \a[27]~input_o\,
	combout => \ShiftRight1~28_combout\);

-- Location: LCCOMB_X54_Y38_N28
\ShiftRight1~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight1~29_combout\ = (\ShiftRight1~28_combout\) # ((\ShiftRight1~22_combout\ & !\shamt[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~22_combout\,
	datac => \shamt[0]~input_o\,
	datad => \ShiftRight1~28_combout\,
	combout => \ShiftRight1~29_combout\);

-- Location: LCCOMB_X58_Y38_N28
\ShiftRight1~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight1~34_combout\ = (\shamt[1]~input_o\ & (((\a[31]~input_o\)))) # (!\shamt[1]~input_o\ & ((\shamt[0]~input_o\ & ((\a[31]~input_o\))) # (!\shamt[0]~input_o\ & (\a[30]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt[1]~input_o\,
	datab => \a[30]~input_o\,
	datac => \shamt[0]~input_o\,
	datad => \a[31]~input_o\,
	combout => \ShiftRight1~34_combout\);

-- Location: LCCOMB_X58_Y38_N14
\ShiftRight1~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight1~35_combout\ = (\shamt[2]~input_o\ & ((\ShiftRight1~34_combout\))) # (!\shamt[2]~input_o\ & (\ShiftRight1~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~29_combout\,
	datac => \shamt[2]~input_o\,
	datad => \ShiftRight1~34_combout\,
	combout => \ShiftRight1~35_combout\);

-- Location: LCCOMB_X56_Y39_N28
\ShiftRight1~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight1~32_combout\ = (\shamt[1]~input_o\ & ((\a[21]~input_o\))) # (!\shamt[1]~input_o\ & (\a[19]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt[1]~input_o\,
	datab => \a[19]~input_o\,
	datac => \a[21]~input_o\,
	combout => \ShiftRight1~32_combout\);

-- Location: LCCOMB_X56_Y39_N6
\ShiftRight1~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight1~33_combout\ = (\shamt[0]~input_o\ & ((\ShiftRight1~32_combout\))) # (!\shamt[0]~input_o\ & (\ShiftRight1~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight1~24_combout\,
	datac => \ShiftRight1~32_combout\,
	datad => \shamt[0]~input_o\,
	combout => \ShiftRight1~33_combout\);

-- Location: LCCOMB_X54_Y38_N14
\ShiftRight1~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight1~30_combout\ = (\shamt[1]~input_o\ & (\a[25]~input_o\)) # (!\shamt[1]~input_o\ & ((\a[23]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \shamt[1]~input_o\,
	datac => \a[25]~input_o\,
	datad => \a[23]~input_o\,
	combout => \ShiftRight1~30_combout\);

-- Location: LCCOMB_X55_Y38_N10
\ShiftRight1~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight1~31_combout\ = (\shamt[0]~input_o\ & (\ShiftRight1~30_combout\)) # (!\shamt[0]~input_o\ & ((\ShiftRight1~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~30_combout\,
	datac => \shamt[0]~input_o\,
	datad => \ShiftRight1~23_combout\,
	combout => \ShiftRight1~31_combout\);

-- Location: LCCOMB_X60_Y38_N16
\Mux21~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux21~0_combout\ = (\shamt[2]~input_o\ & ((\ShiftRight1~31_combout\))) # (!\shamt[2]~input_o\ & (\ShiftRight1~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~33_combout\,
	datab => \shamt[2]~input_o\,
	datad => \ShiftRight1~31_combout\,
	combout => \Mux21~0_combout\);

-- Location: LCCOMB_X59_Y38_N0
\ShiftRight1~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight1~36_combout\ = (\shamt[3]~input_o\ & (\ShiftRight1~35_combout\)) # (!\shamt[3]~input_o\ & ((\Mux21~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~35_combout\,
	datac => \shamt[3]~input_o\,
	datad => \Mux21~0_combout\,
	combout => \ShiftRight1~36_combout\);

-- Location: LCCOMB_X59_Y39_N28
\Mux29~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux29~5_combout\ = (\opsel[0]~input_o\ & ((!\opsel[1]~input_o\))) # (!\opsel[0]~input_o\ & (!\shamt[4]~input_o\ & \opsel[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opsel[0]~input_o\,
	datac => \shamt[4]~input_o\,
	datad => \opsel[1]~input_o\,
	combout => \Mux29~5_combout\);

-- Location: LCCOMB_X59_Y39_N26
\Mux29~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux29~4_combout\ = (\opsel[0]~input_o\ & (!\shamt[4]~input_o\ & !\opsel[1]~input_o\)) # (!\opsel[0]~input_o\ & ((\opsel[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opsel[0]~input_o\,
	datac => \shamt[4]~input_o\,
	datad => \opsel[1]~input_o\,
	combout => \Mux29~4_combout\);

-- Location: LCCOMB_X59_Y38_N10
\Mux29~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux29~6_combout\ = (\Mux29~5_combout\ & ((\Mux29~3_combout\) # ((!\Mux29~4_combout\)))) # (!\Mux29~5_combout\ & (((\ShiftRight1~36_combout\ & \Mux29~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~3_combout\,
	datab => \ShiftRight1~36_combout\,
	datac => \Mux29~5_combout\,
	datad => \Mux29~4_combout\,
	combout => \Mux29~6_combout\);

-- Location: LCCOMB_X58_Y38_N6
\ShiftRight0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight0~42_combout\ = (!\shamt[1]~input_o\ & (\shamt[3]~input_o\ & (\shamt[2]~input_o\ & \ShiftRight1~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt[1]~input_o\,
	datab => \shamt[3]~input_o\,
	datac => \shamt[2]~input_o\,
	datad => \ShiftRight1~16_combout\,
	combout => \ShiftRight0~42_combout\);

-- Location: LCCOMB_X58_Y38_N4
\ShiftRight0~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight0~41_combout\ = (\shamt[3]~input_o\ & (\ShiftRight1~29_combout\ & (!\shamt[2]~input_o\))) # (!\shamt[3]~input_o\ & (((\shamt[2]~input_o\ & \ShiftRight1~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~29_combout\,
	datab => \shamt[3]~input_o\,
	datac => \shamt[2]~input_o\,
	datad => \ShiftRight1~31_combout\,
	combout => \ShiftRight0~41_combout\);

-- Location: LCCOMB_X58_Y38_N2
\ShiftRight0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight0~44_combout\ = (\ShiftRight0~42_combout\) # ((\ShiftRight0~41_combout\) # ((\ShiftRight1~33_combout\ & \ShiftRight0~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~42_combout\,
	datab => \ShiftRight0~41_combout\,
	datac => \ShiftRight1~33_combout\,
	datad => \ShiftRight0~43_combout\,
	combout => \ShiftRight0~44_combout\);

-- Location: LCCOMB_X59_Y39_N8
\Mux29~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux29~0_combout\ = (\opsel[1]~input_o\) # ((\opsel[0]~input_o\ & !\shamt[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opsel[0]~input_o\,
	datac => \shamt[4]~input_o\,
	datad => \opsel[1]~input_o\,
	combout => \Mux29~0_combout\);

-- Location: LCCOMB_X64_Y38_N24
\result~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \result~0_combout\ = (\b[2]~input_o\ & \a[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[2]~input_o\,
	datac => \a[2]~input_o\,
	combout => \result~0_combout\);

-- Location: LCCOMB_X64_Y38_N2
\Mux29~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux29~7_combout\ = (\Mux29~6_combout\ & ((\ShiftRight0~44_combout\) # ((\Mux29~0_combout\)))) # (!\Mux29~6_combout\ & (((!\Mux29~0_combout\ & \result~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~6_combout\,
	datab => \ShiftRight0~44_combout\,
	datac => \Mux29~0_combout\,
	datad => \result~0_combout\,
	combout => \Mux29~7_combout\);

-- Location: LCCOMB_X64_Y38_N6
\Mux29~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux29~11_combout\ = (\Mux29~10_combout\ & (((\Mult1|auto_generated|w513w\(2))) # (!\Mux29~8_combout\))) # (!\Mux29~10_combout\ & (\Mux29~8_combout\ & ((\Mux29~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~10_combout\,
	datab => \Mux29~8_combout\,
	datac => \Mult1|auto_generated|w513w\(2),
	datad => \Mux29~7_combout\,
	combout => \Mux29~11_combout\);

-- Location: LCCOMB_X64_Y38_N0
\Mux29~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux29~12_combout\ = (\Mux29~11_combout\ & !\opsel[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~11_combout\,
	datad => \opsel[3]~input_o\,
	combout => \Mux29~12_combout\);

-- Location: LCCOMB_X57_Y38_N16
\ShiftRight1~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight1~44_combout\ = (!\shamt[1]~input_o\ & ((\shamt[0]~input_o\ & (\a[28]~input_o\)) # (!\shamt[0]~input_o\ & ((\a[27]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[28]~input_o\,
	datab => \shamt[0]~input_o\,
	datac => \shamt[1]~input_o\,
	datad => \a[27]~input_o\,
	combout => \ShiftRight1~44_combout\);

-- Location: LCCOMB_X57_Y38_N10
\ShiftRight1~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight1~45_combout\ = (\ShiftRight1~44_combout\) # ((\ShiftRight1~21_combout\ & \shamt[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight1~21_combout\,
	datac => \shamt[1]~input_o\,
	datad => \ShiftRight1~44_combout\,
	combout => \ShiftRight1~45_combout\);

-- Location: LCCOMB_X57_Y39_N26
\ShiftRight0~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight0~46_combout\ = (\shamt[3]~input_o\ & (\ShiftRight1~45_combout\ & !\shamt[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \shamt[3]~input_o\,
	datac => \ShiftRight1~45_combout\,
	datad => \shamt[2]~input_o\,
	combout => \ShiftRight0~46_combout\);

-- Location: LCCOMB_X57_Y39_N28
\ShiftRight0~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight0~48_combout\ = (\a[31]~input_o\ & (\shamt[3]~input_o\ & \shamt[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[31]~input_o\,
	datab => \shamt[3]~input_o\,
	datad => \shamt[2]~input_o\,
	combout => \ShiftRight0~48_combout\);

-- Location: LCCOMB_X55_Y38_N4
\ShiftRight1~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight1~46_combout\ = (\shamt[0]~input_o\ & (\ShiftRight0~16_combout\)) # (!\shamt[0]~input_o\ & ((\ShiftRight1~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~16_combout\,
	datac => \shamt[0]~input_o\,
	datad => \ShiftRight1~32_combout\,
	combout => \ShiftRight1~46_combout\);

-- Location: LCCOMB_X54_Y38_N2
\ShiftRight1~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight1~47_combout\ = (\shamt[0]~input_o\ & (\ShiftRight0~20_combout\)) # (!\shamt[0]~input_o\ & ((\ShiftRight1~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~20_combout\,
	datab => \ShiftRight1~30_combout\,
	datac => \shamt[0]~input_o\,
	combout => \ShiftRight1~47_combout\);

-- Location: LCCOMB_X57_Y39_N14
\ShiftRight0~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight0~49_combout\ = (\shamt[3]~input_o\) # ((\shamt[2]~input_o\ & ((!\ShiftRight1~47_combout\))) # (!\shamt[2]~input_o\ & (!\ShiftRight1~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~46_combout\,
	datab => \shamt[3]~input_o\,
	datac => \shamt[2]~input_o\,
	datad => \ShiftRight1~47_combout\,
	combout => \ShiftRight0~49_combout\);

-- Location: LCCOMB_X54_Y38_N24
\ShiftRight0~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight0~47_combout\ = (!\shamt[1]~input_o\ & !\shamt[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \shamt[1]~input_o\,
	datac => \shamt[0]~input_o\,
	combout => \ShiftRight0~47_combout\);

-- Location: LCCOMB_X57_Y39_N0
\ShiftRight0~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight0~50_combout\ = (\ShiftRight0~46_combout\) # (((\ShiftRight0~48_combout\ & \ShiftRight0~47_combout\)) # (!\ShiftRight0~49_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~46_combout\,
	datab => \ShiftRight0~48_combout\,
	datac => \ShiftRight0~49_combout\,
	datad => \ShiftRight0~47_combout\,
	combout => \ShiftRight0~50_combout\);

-- Location: LCCOMB_X60_Y40_N2
\ShiftRight1~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight1~49_combout\ = (\shamt[0]~input_o\ & ((\ShiftRight0~10_combout\))) # (!\shamt[0]~input_o\ & (\ShiftRight1~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight1~38_combout\,
	datac => \shamt[0]~input_o\,
	datad => \ShiftRight0~10_combout\,
	combout => \ShiftRight1~49_combout\);

-- Location: LCCOMB_X58_Y40_N28
\Mux28~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux28~0_combout\ = (\ShiftRight0~43_combout\ & (((!\Mux29~1_combout\ & \ShiftRight1~17_combout\)))) # (!\ShiftRight0~43_combout\ & ((\ShiftRight1~49_combout\) # ((\Mux29~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~49_combout\,
	datab => \ShiftRight0~43_combout\,
	datac => \Mux29~1_combout\,
	datad => \ShiftRight1~17_combout\,
	combout => \Mux28~0_combout\);

-- Location: LCCOMB_X56_Y39_N20
\ShiftRight1~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight1~50_combout\ = (\shamt[0]~input_o\ & (\ShiftRight0~23_combout\)) # (!\shamt[0]~input_o\ & ((\ShiftRight1~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight0~23_combout\,
	datac => \ShiftRight1~40_combout\,
	datad => \shamt[0]~input_o\,
	combout => \ShiftRight1~50_combout\);

-- Location: LCCOMB_X60_Y40_N20
\ShiftRight1~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight1~51_combout\ = (\shamt[0]~input_o\ & ((\ShiftRight0~7_combout\))) # (!\shamt[0]~input_o\ & (\ShiftRight1~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~42_combout\,
	datab => \ShiftRight0~7_combout\,
	datac => \shamt[0]~input_o\,
	combout => \ShiftRight1~51_combout\);

-- Location: LCCOMB_X60_Y39_N22
\ShiftRight0~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight0~51_combout\ = (\shamt[2]~input_o\ & (\ShiftRight1~50_combout\)) # (!\shamt[2]~input_o\ & ((\ShiftRight1~51_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~50_combout\,
	datab => \ShiftRight1~51_combout\,
	datad => \shamt[2]~input_o\,
	combout => \ShiftRight0~51_combout\);

-- Location: LCCOMB_X58_Y40_N6
\Mux28~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux28~1_combout\ = (\Mux28~0_combout\ & (((\ShiftRight0~51_combout\)) # (!\Mux29~1_combout\))) # (!\Mux28~0_combout\ & (\Mux29~1_combout\ & (\ShiftRight1~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~0_combout\,
	datab => \Mux29~1_combout\,
	datac => \ShiftRight1~18_combout\,
	datad => \ShiftRight0~51_combout\,
	combout => \Mux28~1_combout\);

-- Location: LCCOMB_X57_Y39_N10
\ShiftRight1~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight1~48_combout\ = (\ShiftRight0~46_combout\) # ((\ShiftRight0~48_combout\) # (!\ShiftRight0~49_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~46_combout\,
	datab => \ShiftRight0~48_combout\,
	datac => \ShiftRight0~49_combout\,
	combout => \ShiftRight1~48_combout\);

-- Location: LCCOMB_X58_Y37_N24
\Mux28~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux28~2_combout\ = (\Mux29~5_combout\ & ((\Mux28~1_combout\) # ((!\Mux29~4_combout\)))) # (!\Mux29~5_combout\ & (((\ShiftRight1~48_combout\ & \Mux29~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~1_combout\,
	datab => \Mux29~5_combout\,
	datac => \ShiftRight1~48_combout\,
	datad => \Mux29~4_combout\,
	combout => \Mux28~2_combout\);

-- Location: LCCOMB_X61_Y37_N12
\result~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \result~1_combout\ = (\b[3]~input_o\ & \a[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[3]~input_o\,
	datad => \a[3]~input_o\,
	combout => \result~1_combout\);

-- Location: LCCOMB_X58_Y37_N18
\Mux28~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux28~3_combout\ = (\Mux28~2_combout\ & ((\ShiftRight0~50_combout\) # ((\Mux29~0_combout\)))) # (!\Mux28~2_combout\ & (((\result~1_combout\ & !\Mux29~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~50_combout\,
	datab => \Mux28~2_combout\,
	datac => \result~1_combout\,
	datad => \Mux29~0_combout\,
	combout => \Mux28~3_combout\);

-- Location: LCCOMB_X61_Y37_N6
\Add0~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~11_combout\ = \b[3]~input_o\ $ (\opsel[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[3]~input_o\,
	datad => \opsel[0]~input_o\,
	combout => \Add0~11_combout\);

-- Location: LCCOMB_X61_Y37_N24
\Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = ((\Add0~11_combout\ $ (\a[3]~input_o\ $ (!\Add0~10\)))) # (GND)
-- \Add0~13\ = CARRY((\Add0~11_combout\ & ((\a[3]~input_o\) # (!\Add0~10\))) # (!\Add0~11_combout\ & (\a[3]~input_o\ & !\Add0~10\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~11_combout\,
	datab => \a[3]~input_o\,
	datad => VCC,
	cin => \Add0~10\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X59_Y35_N0
\Mux28~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux28~4_combout\ = (\Mux29~9_combout\ & (((\Mult0|auto_generated|w569w\(3)) # (\Mux29~8_combout\)))) # (!\Mux29~9_combout\ & (\Add0~12_combout\ & ((!\Mux29~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~12_combout\,
	datab => \Mux29~9_combout\,
	datac => \Mult0|auto_generated|w569w\(3),
	datad => \Mux29~8_combout\,
	combout => \Mux28~4_combout\);

-- Location: LCCOMB_X59_Y35_N10
\Mux28~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux28~5_combout\ = (\Mux28~4_combout\ & (((\Mult1|auto_generated|w513w\(3)) # (!\Mux29~8_combout\)))) # (!\Mux28~4_combout\ & (\Mux28~3_combout\ & ((\Mux29~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~3_combout\,
	datab => \Mux28~4_combout\,
	datac => \Mult1|auto_generated|w513w\(3),
	datad => \Mux29~8_combout\,
	combout => \Mux28~5_combout\);

-- Location: LCCOMB_X59_Y35_N12
\Mux28~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux28~6_combout\ = (\Mux28~5_combout\ & !\opsel[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~5_combout\,
	datad => \opsel[3]~input_o\,
	combout => \Mux28~6_combout\);

-- Location: LCCOMB_X60_Y39_N16
\result~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \result~2_combout\ = (\a[4]~input_o\ & \b[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a[4]~input_o\,
	datac => \b[4]~input_o\,
	combout => \result~2_combout\);

-- Location: LCCOMB_X59_Y39_N22
\Mux27~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux27~3_combout\ = (\opsel[2]~input_o\ & ((\opsel[0]~input_o\) # (\opsel[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opsel[0]~input_o\,
	datab => \opsel[2]~input_o\,
	datad => \opsel[1]~input_o\,
	combout => \Mux27~3_combout\);

-- Location: LCCOMB_X61_Y37_N0
\Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = \b[4]~input_o\ $ (\opsel[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b[4]~input_o\,
	datad => \opsel[0]~input_o\,
	combout => \Add0~14_combout\);

-- Location: LCCOMB_X61_Y37_N26
\Add0~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~15_combout\ = (\a[4]~input_o\ & ((\Add0~14_combout\ & (\Add0~13\ & VCC)) # (!\Add0~14_combout\ & (!\Add0~13\)))) # (!\a[4]~input_o\ & ((\Add0~14_combout\ & (!\Add0~13\)) # (!\Add0~14_combout\ & ((\Add0~13\) # (GND)))))
-- \Add0~16\ = CARRY((\a[4]~input_o\ & (!\Add0~14_combout\ & !\Add0~13\)) # (!\a[4]~input_o\ & ((!\Add0~13\) # (!\Add0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[4]~input_o\,
	datab => \Add0~14_combout\,
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~15_combout\,
	cout => \Add0~16\);

-- Location: LCCOMB_X59_Y39_N24
\Mux27~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux27~4_combout\ = ((\opsel[1]~input_o\) # ((\opsel[0]~input_o\ & !\shamt[4]~input_o\))) # (!\opsel[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opsel[0]~input_o\,
	datab => \opsel[2]~input_o\,
	datac => \shamt[4]~input_o\,
	datad => \opsel[1]~input_o\,
	combout => \Mux27~4_combout\);

-- Location: LCCOMB_X60_Y39_N10
\Mux27~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux27~5_combout\ = (\Mux27~3_combout\ & (((\Mux27~4_combout\)))) # (!\Mux27~3_combout\ & ((\Mux27~4_combout\ & ((\Add0~15_combout\))) # (!\Mux27~4_combout\ & (\result~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \result~2_combout\,
	datab => \Mux27~3_combout\,
	datac => \Add0~15_combout\,
	datad => \Mux27~4_combout\,
	combout => \Mux27~5_combout\);

-- Location: LCCOMB_X59_Y39_N6
\Mux27~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux27~12_combout\ = (\opsel[0]~input_o\ & (\shamt[3]~input_o\ & (!\shamt[4]~input_o\ & !\opsel[1]~input_o\))) # (!\opsel[0]~input_o\ & ((\shamt[3]~input_o\) # ((\shamt[4]~input_o\) # (!\opsel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opsel[0]~input_o\,
	datab => \shamt[3]~input_o\,
	datac => \shamt[4]~input_o\,
	datad => \opsel[1]~input_o\,
	combout => \Mux27~12_combout\);

-- Location: LCCOMB_X62_Y38_N0
\ShiftRight0~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight0~52_combout\ = (\shamt[3]~input_o\) # ((\shamt[2]~input_o\ & ((!\ShiftRight0~21_combout\))) # (!\shamt[2]~input_o\ & (!\ShiftRight0~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~17_combout\,
	datab => \ShiftRight0~21_combout\,
	datac => \shamt[2]~input_o\,
	datad => \shamt[3]~input_o\,
	combout => \ShiftRight0~52_combout\);

-- Location: LCCOMB_X62_Y38_N2
\ShiftRight0~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight0~53_combout\ = (\ShiftRight0~52_combout\ & (((\shamt[2]~input_o\) # (!\ShiftRight0~14_combout\)) # (!\shamt[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt[3]~input_o\,
	datab => \ShiftRight0~14_combout\,
	datac => \shamt[2]~input_o\,
	datad => \ShiftRight0~52_combout\,
	combout => \ShiftRight0~53_combout\);

-- Location: LCCOMB_X58_Y39_N20
\ShiftRight1~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight1~58_combout\ = ((\a[31]~input_o\ & (\shamt[2]~input_o\ & \shamt[3]~input_o\))) # (!\ShiftRight0~53_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[31]~input_o\,
	datab => \shamt[2]~input_o\,
	datac => \shamt[3]~input_o\,
	datad => \ShiftRight0~53_combout\,
	combout => \ShiftRight1~58_combout\);

-- Location: LCCOMB_X58_Y39_N18
\ShiftRight0~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight0~55_combout\ = (\shamt[2]~input_o\ & ((\ShiftRight0~24_combout\))) # (!\shamt[2]~input_o\ & (\ShiftRight0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~8_combout\,
	datab => \shamt[2]~input_o\,
	datac => \ShiftRight0~24_combout\,
	combout => \ShiftRight0~55_combout\);

-- Location: LCCOMB_X59_Y39_N4
\Mux16~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux16~0_combout\ = (!\shamt[4]~input_o\ & (\opsel[0]~input_o\ $ (\opsel[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opsel[0]~input_o\,
	datac => \shamt[4]~input_o\,
	datad => \opsel[1]~input_o\,
	combout => \Mux16~0_combout\);

-- Location: LCCOMB_X58_Y39_N28
\Mux27~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux27~7_combout\ = (\Mux16~0_combout\ & ((\shamt[2]~input_o\) # (\shamt[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \shamt[2]~input_o\,
	datac => \shamt[3]~input_o\,
	datad => \Mux16~0_combout\,
	combout => \Mux27~7_combout\);

-- Location: LCCOMB_X58_Y39_N6
\Mux27~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux27~8_combout\ = (\Mux27~12_combout\ & ((\Mux27~7_combout\ & ((\ShiftRight0~55_combout\))) # (!\Mux27~7_combout\ & (\ShiftRight1~58_combout\)))) # (!\Mux27~12_combout\ & (((\Mux27~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux27~12_combout\,
	datab => \ShiftRight1~58_combout\,
	datac => \ShiftRight0~55_combout\,
	datad => \Mux27~7_combout\,
	combout => \Mux27~8_combout\);

-- Location: LCCOMB_X59_Y39_N18
\Mux27~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux27~6_combout\ = (\shamt[3]~input_o\) # ((\shamt[4]~input_o\) # (\opsel[0]~input_o\ $ (!\opsel[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opsel[0]~input_o\,
	datab => \shamt[3]~input_o\,
	datac => \shamt[4]~input_o\,
	datad => \opsel[1]~input_o\,
	combout => \Mux27~6_combout\);

-- Location: LCCOMB_X60_Y39_N4
\Mux27~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux27~9_combout\ = (\Mux27~8_combout\ & ((\ShiftRight0~11_combout\) # ((\Mux27~6_combout\)))) # (!\Mux27~8_combout\ & (((\ShiftRight0~5_combout\ & !\Mux27~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux27~8_combout\,
	datab => \ShiftRight0~11_combout\,
	datac => \ShiftRight0~5_combout\,
	datad => \Mux27~6_combout\,
	combout => \Mux27~9_combout\);

-- Location: LCCOMB_X60_Y39_N6
\Mux27~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux27~10_combout\ = (\Mux27~5_combout\ & (((\Mux27~9_combout\)) # (!\Mux27~3_combout\))) # (!\Mux27~5_combout\ & (\Mux27~3_combout\ & ((!\ShiftRight0~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001011100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux27~5_combout\,
	datab => \Mux27~3_combout\,
	datac => \Mux27~9_combout\,
	datad => \ShiftRight0~53_combout\,
	combout => \Mux27~10_combout\);

-- Location: LCCOMB_X64_Y38_N18
\Mux27~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux27~2_combout\ = (\opsel[0]~input_o\ & (\Mult1|auto_generated|w513w\(4))) # (!\opsel[0]~input_o\ & ((\Mult0|auto_generated|w569w\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|w513w\(4),
	datab => \Mult0|auto_generated|w569w\(4),
	datac => \opsel[0]~input_o\,
	combout => \Mux27~2_combout\);

-- Location: LCCOMB_X64_Y38_N12
\Mux27~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux27~11_combout\ = (!\opsel[3]~input_o\ & ((\Mux29~9_combout\ & ((\Mux27~2_combout\))) # (!\Mux29~9_combout\ & (\Mux27~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux27~10_combout\,
	datab => \Mux27~2_combout\,
	datac => \Mux29~9_combout\,
	datad => \opsel[3]~input_o\,
	combout => \Mux27~11_combout\);

-- Location: LCCOMB_X60_Y37_N2
\result~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \result~3_combout\ = (\b[5]~input_o\ & \a[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[5]~input_o\,
	datac => \a[5]~input_o\,
	combout => \result~3_combout\);

-- Location: LCCOMB_X56_Y38_N2
\ShiftRight0~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight0~56_combout\ = (\shamt[3]~input_o\) # ((\shamt[2]~input_o\ & ((!\ShiftRight0~36_combout\))) # (!\shamt[2]~input_o\ & (!\ShiftRight0~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~37_combout\,
	datab => \ShiftRight0~36_combout\,
	datac => \shamt[2]~input_o\,
	datad => \shamt[3]~input_o\,
	combout => \ShiftRight0~56_combout\);

-- Location: LCCOMB_X56_Y38_N12
\ShiftRight0~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight0~57_combout\ = ((\shamt[3]~input_o\ & (!\shamt[2]~input_o\ & \ShiftRight0~35_combout\))) # (!\ShiftRight0~56_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt[3]~input_o\,
	datab => \ShiftRight0~56_combout\,
	datac => \shamt[2]~input_o\,
	datad => \ShiftRight0~35_combout\,
	combout => \ShiftRight0~57_combout\);

-- Location: LCCOMB_X60_Y39_N0
\Mux26~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux26~1_combout\ = (\Mux27~4_combout\ & (((\Mux27~3_combout\)))) # (!\Mux27~4_combout\ & ((\Mux27~3_combout\ & ((\ShiftRight0~57_combout\))) # (!\Mux27~3_combout\ & (\result~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \result~3_combout\,
	datab => \Mux27~4_combout\,
	datac => \ShiftRight0~57_combout\,
	datad => \Mux27~3_combout\,
	combout => \Mux26~1_combout\);

-- Location: LCCOMB_X60_Y37_N16
\Add0~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~17_combout\ = \opsel[0]~input_o\ $ (\b[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \opsel[0]~input_o\,
	datac => \b[5]~input_o\,
	combout => \Add0~17_combout\);

-- Location: LCCOMB_X61_Y37_N28
\Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = ((\a[5]~input_o\ $ (\Add0~17_combout\ $ (!\Add0~16\)))) # (GND)
-- \Add0~19\ = CARRY((\a[5]~input_o\ & ((\Add0~17_combout\) # (!\Add0~16\))) # (!\a[5]~input_o\ & (\Add0~17_combout\ & !\Add0~16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[5]~input_o\,
	datab => \Add0~17_combout\,
	datad => VCC,
	cin => \Add0~16\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: LCCOMB_X58_Y38_N8
\ShiftRight0~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight0~58_combout\ = (!\shamt[2]~input_o\ & !\shamt[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \shamt[2]~input_o\,
	datad => \shamt[1]~input_o\,
	combout => \ShiftRight0~58_combout\);

-- Location: LCCOMB_X57_Y38_N20
\ShiftRight1~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight1~52_combout\ = (\shamt[3]~input_o\ & ((\ShiftRight0~58_combout\ & ((\ShiftRight1~21_combout\))) # (!\ShiftRight0~58_combout\ & (\a[31]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[31]~input_o\,
	datab => \ShiftRight1~21_combout\,
	datac => \ShiftRight0~58_combout\,
	datad => \shamt[3]~input_o\,
	combout => \ShiftRight1~52_combout\);

-- Location: LCCOMB_X57_Y38_N22
\ShiftRight1~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight1~53_combout\ = (\ShiftRight1~52_combout\) # (!\ShiftRight0~56_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~56_combout\,
	datad => \ShiftRight1~52_combout\,
	combout => \ShiftRight1~53_combout\);

-- Location: LCCOMB_X58_Y39_N16
\ShiftRight0~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight0~59_combout\ = (\shamt[2]~input_o\ & (\ShiftRight0~38_combout\)) # (!\shamt[2]~input_o\ & ((\ShiftRight0~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~38_combout\,
	datab => \ShiftRight0~31_combout\,
	datac => \shamt[2]~input_o\,
	combout => \ShiftRight0~59_combout\);

-- Location: LCCOMB_X58_Y39_N26
\Mux26~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux26~2_combout\ = (\Mux27~7_combout\ & (((\ShiftRight0~59_combout\) # (!\Mux27~12_combout\)))) # (!\Mux27~7_combout\ & (\ShiftRight1~53_combout\ & ((\Mux27~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~53_combout\,
	datab => \Mux27~7_combout\,
	datac => \ShiftRight0~59_combout\,
	datad => \Mux27~12_combout\,
	combout => \Mux26~2_combout\);

-- Location: LCCOMB_X60_Y39_N18
\Mux26~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux26~3_combout\ = (\Mux26~2_combout\ & (((\ShiftRight0~32_combout\) # (\Mux27~6_combout\)))) # (!\Mux26~2_combout\ & (\ShiftRight0~29_combout\ & ((!\Mux27~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux26~2_combout\,
	datab => \ShiftRight0~29_combout\,
	datac => \ShiftRight0~32_combout\,
	datad => \Mux27~6_combout\,
	combout => \Mux26~3_combout\);

-- Location: LCCOMB_X60_Y39_N28
\Mux26~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux26~4_combout\ = (\Mux27~4_combout\ & ((\Mux26~1_combout\ & ((\Mux26~3_combout\))) # (!\Mux26~1_combout\ & (\Add0~18_combout\)))) # (!\Mux27~4_combout\ & (\Mux26~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux27~4_combout\,
	datab => \Mux26~1_combout\,
	datac => \Add0~18_combout\,
	datad => \Mux26~3_combout\,
	combout => \Mux26~4_combout\);

-- Location: LCCOMB_X64_Y38_N22
\Mux26~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux26~0_combout\ = (\opsel[0]~input_o\ & (\Mult1|auto_generated|w513w\(5))) # (!\opsel[0]~input_o\ & ((\Mult0|auto_generated|w569w\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mult1|auto_generated|w513w\(5),
	datac => \opsel[0]~input_o\,
	datad => \Mult0|auto_generated|w569w\(5),
	combout => \Mux26~0_combout\);

-- Location: LCCOMB_X64_Y38_N8
\Mux26~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux26~5_combout\ = (!\opsel[3]~input_o\ & ((\Mux29~9_combout\ & ((\Mux26~0_combout\))) # (!\Mux29~9_combout\ & (\Mux26~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~9_combout\,
	datab => \Mux26~4_combout\,
	datac => \Mux26~0_combout\,
	datad => \opsel[3]~input_o\,
	combout => \Mux26~5_combout\);

-- Location: LCCOMB_X59_Y39_N30
\result~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \result~4_combout\ = (\b[6]~input_o\ & \a[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[6]~input_o\,
	datac => \a[6]~input_o\,
	combout => \result~4_combout\);

-- Location: LCCOMB_X61_Y37_N2
\Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = \b[6]~input_o\ $ (\opsel[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[6]~input_o\,
	datad => \opsel[0]~input_o\,
	combout => \Add0~20_combout\);

-- Location: LCCOMB_X61_Y37_N30
\Add0~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~21_combout\ = (\a[6]~input_o\ & ((\Add0~20_combout\ & (\Add0~19\ & VCC)) # (!\Add0~20_combout\ & (!\Add0~19\)))) # (!\a[6]~input_o\ & ((\Add0~20_combout\ & (!\Add0~19\)) # (!\Add0~20_combout\ & ((\Add0~19\) # (GND)))))
-- \Add0~22\ = CARRY((\a[6]~input_o\ & (!\Add0~20_combout\ & !\Add0~19\)) # (!\a[6]~input_o\ & ((!\Add0~19\) # (!\Add0~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[6]~input_o\,
	datab => \Add0~20_combout\,
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~21_combout\,
	cout => \Add0~22\);

-- Location: LCCOMB_X59_Y39_N16
\Mux25~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux25~1_combout\ = (\Mux27~3_combout\ & (\Mux27~4_combout\)) # (!\Mux27~3_combout\ & ((\Mux27~4_combout\ & ((\Add0~21_combout\))) # (!\Mux27~4_combout\ & (\result~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux27~3_combout\,
	datab => \Mux27~4_combout\,
	datac => \result~4_combout\,
	datad => \Add0~21_combout\,
	combout => \Mux25~1_combout\);

-- Location: LCCOMB_X58_Y38_N10
\ShiftRight0~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight0~60_combout\ = (\shamt[3]~input_o\) # ((\shamt[2]~input_o\ & (!\ShiftRight1~29_combout\)) # (!\shamt[2]~input_o\ & ((!\ShiftRight1~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~29_combout\,
	datab => \shamt[3]~input_o\,
	datac => \shamt[2]~input_o\,
	datad => \ShiftRight1~31_combout\,
	combout => \ShiftRight0~60_combout\);

-- Location: LCCOMB_X58_Y38_N22
\ShiftRight1~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight1~54_combout\ = (\shamt[0]~input_o\ & (\a[31]~input_o\)) # (!\shamt[0]~input_o\ & ((\ShiftRight0~58_combout\ & ((\a[30]~input_o\))) # (!\ShiftRight0~58_combout\ & (\a[31]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[31]~input_o\,
	datab => \shamt[0]~input_o\,
	datac => \ShiftRight0~58_combout\,
	datad => \a[30]~input_o\,
	combout => \ShiftRight1~54_combout\);

-- Location: LCCOMB_X58_Y38_N0
\ShiftRight1~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight1~55_combout\ = ((\shamt[3]~input_o\ & \ShiftRight1~54_combout\)) # (!\ShiftRight0~60_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~60_combout\,
	datab => \shamt[3]~input_o\,
	datac => \ShiftRight1~54_combout\,
	combout => \ShiftRight1~55_combout\);

-- Location: LCCOMB_X60_Y38_N18
\ShiftRight0~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight0~62_combout\ = (\shamt[2]~input_o\ & (\ShiftRight1~33_combout\)) # (!\shamt[2]~input_o\ & ((\ShiftRight1~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~33_combout\,
	datab => \shamt[2]~input_o\,
	datac => \ShiftRight1~41_combout\,
	combout => \ShiftRight0~62_combout\);

-- Location: LCCOMB_X58_Y39_N12
\Mux25~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux25~2_combout\ = (\Mux27~7_combout\ & (((\ShiftRight0~62_combout\) # (!\Mux27~12_combout\)))) # (!\Mux27~7_combout\ & (\ShiftRight1~55_combout\ & ((\Mux27~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~55_combout\,
	datab => \Mux27~7_combout\,
	datac => \ShiftRight0~62_combout\,
	datad => \Mux27~12_combout\,
	combout => \Mux25~2_combout\);

-- Location: LCCOMB_X60_Y40_N14
\Mux25~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux25~3_combout\ = (\Mux25~2_combout\ & ((\ShiftRight1~43_combout\) # ((\Mux27~6_combout\)))) # (!\Mux25~2_combout\ & (((!\Mux27~6_combout\ & \ShiftRight1~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux25~2_combout\,
	datab => \ShiftRight1~43_combout\,
	datac => \Mux27~6_combout\,
	datad => \ShiftRight1~39_combout\,
	combout => \Mux25~3_combout\);

-- Location: LCCOMB_X58_Y38_N12
\ShiftRight0~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight0~61_combout\ = ((\shamt[3]~input_o\ & (\ShiftRight0~58_combout\ & \ShiftRight1~16_combout\))) # (!\ShiftRight0~60_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~60_combout\,
	datab => \shamt[3]~input_o\,
	datac => \ShiftRight0~58_combout\,
	datad => \ShiftRight1~16_combout\,
	combout => \ShiftRight0~61_combout\);

-- Location: LCCOMB_X59_Y39_N10
\Mux25~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux25~4_combout\ = (\Mux27~3_combout\ & ((\Mux25~1_combout\ & (\Mux25~3_combout\)) # (!\Mux25~1_combout\ & ((\ShiftRight0~61_combout\))))) # (!\Mux27~3_combout\ & (\Mux25~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux27~3_combout\,
	datab => \Mux25~1_combout\,
	datac => \Mux25~3_combout\,
	datad => \ShiftRight0~61_combout\,
	combout => \Mux25~4_combout\);

-- Location: LCCOMB_X64_Y38_N26
\Mux25~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux25~0_combout\ = (\opsel[0]~input_o\ & (\Mult1|auto_generated|w513w\(6))) # (!\opsel[0]~input_o\ & ((\Mult0|auto_generated|w569w\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|w513w\(6),
	datab => \Mult0|auto_generated|w569w\(6),
	datac => \opsel[0]~input_o\,
	combout => \Mux25~0_combout\);

-- Location: LCCOMB_X64_Y38_N4
\Mux25~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux25~5_combout\ = (!\opsel[3]~input_o\ & ((\Mux29~9_combout\ & ((\Mux25~0_combout\))) # (!\Mux29~9_combout\ & (\Mux25~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~9_combout\,
	datab => \Mux25~4_combout\,
	datac => \Mux25~0_combout\,
	datad => \opsel[3]~input_o\,
	combout => \Mux25~5_combout\);

-- Location: LCCOMB_X60_Y37_N20
\Add0~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~23_combout\ = \opsel[0]~input_o\ $ (\b[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \opsel[0]~input_o\,
	datad => \b[7]~input_o\,
	combout => \Add0~23_combout\);

-- Location: LCCOMB_X61_Y36_N0
\Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = ((\Add0~23_combout\ $ (\a[7]~input_o\ $ (!\Add0~22\)))) # (GND)
-- \Add0~25\ = CARRY((\Add0~23_combout\ & ((\a[7]~input_o\) # (!\Add0~22\))) # (!\Add0~23_combout\ & (\a[7]~input_o\ & !\Add0~22\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~23_combout\,
	datab => \a[7]~input_o\,
	datad => VCC,
	cin => \Add0~22\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: LCCOMB_X58_Y39_N22
\ShiftRight0~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight0~65_combout\ = (\shamt[2]~input_o\ & ((\ShiftRight1~46_combout\))) # (!\shamt[2]~input_o\ & (\ShiftRight1~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~50_combout\,
	datab => \ShiftRight1~46_combout\,
	datac => \shamt[2]~input_o\,
	combout => \ShiftRight0~65_combout\);

-- Location: LCCOMB_X57_Y39_N12
\ShiftRight0~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight0~63_combout\ = (\shamt[3]~input_o\) # ((\shamt[2]~input_o\ & (!\ShiftRight1~45_combout\)) # (!\shamt[2]~input_o\ & ((!\ShiftRight1~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt[2]~input_o\,
	datab => \shamt[3]~input_o\,
	datac => \ShiftRight1~45_combout\,
	datad => \ShiftRight1~47_combout\,
	combout => \ShiftRight0~63_combout\);

-- Location: LCCOMB_X58_Y39_N14
\ShiftRight1~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight1~59_combout\ = ((\a[31]~input_o\ & \shamt[3]~input_o\)) # (!\ShiftRight0~63_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[31]~input_o\,
	datac => \shamt[3]~input_o\,
	datad => \ShiftRight0~63_combout\,
	combout => \ShiftRight1~59_combout\);

-- Location: LCCOMB_X58_Y39_N24
\Mux24~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux24~2_combout\ = (\Mux27~7_combout\ & ((\ShiftRight0~65_combout\) # ((!\Mux27~12_combout\)))) # (!\Mux27~7_combout\ & (((\ShiftRight1~59_combout\ & \Mux27~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~65_combout\,
	datab => \Mux27~7_combout\,
	datac => \ShiftRight1~59_combout\,
	datad => \Mux27~12_combout\,
	combout => \Mux24~2_combout\);

-- Location: LCCOMB_X60_Y39_N20
\Mux24~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux24~3_combout\ = (\Mux27~6_combout\ & (((\Mux24~2_combout\)))) # (!\Mux27~6_combout\ & ((\Mux24~2_combout\ & ((\ShiftRight1~51_combout\))) # (!\Mux24~2_combout\ & (\ShiftRight1~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~49_combout\,
	datab => \Mux27~6_combout\,
	datac => \Mux24~2_combout\,
	datad => \ShiftRight1~51_combout\,
	combout => \Mux24~3_combout\);

-- Location: LCCOMB_X59_Y38_N4
\ShiftRight0~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight0~54_combout\ = (\a[31]~input_o\ & \shamt[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[31]~input_o\,
	datac => \shamt[3]~input_o\,
	combout => \ShiftRight0~54_combout\);

-- Location: LCCOMB_X60_Y39_N30
\ShiftRight0~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight0~64_combout\ = ((!\shamt[0]~input_o\ & (\ShiftRight0~58_combout\ & \ShiftRight0~54_combout\))) # (!\ShiftRight0~63_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~63_combout\,
	datab => \shamt[0]~input_o\,
	datac => \ShiftRight0~58_combout\,
	datad => \ShiftRight0~54_combout\,
	combout => \ShiftRight0~64_combout\);

-- Location: LCCOMB_X60_Y39_N8
\result~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \result~5_combout\ = (\b[7]~input_o\ & \a[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[7]~input_o\,
	datac => \a[7]~input_o\,
	combout => \result~5_combout\);

-- Location: LCCOMB_X60_Y39_N26
\Mux24~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux24~1_combout\ = (\Mux27~3_combout\ & ((\ShiftRight0~64_combout\) # ((\Mux27~4_combout\)))) # (!\Mux27~3_combout\ & (((\result~5_combout\ & !\Mux27~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~64_combout\,
	datab => \Mux27~3_combout\,
	datac => \result~5_combout\,
	datad => \Mux27~4_combout\,
	combout => \Mux24~1_combout\);

-- Location: LCCOMB_X60_Y39_N14
\Mux24~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux24~4_combout\ = (\Mux24~1_combout\ & (((\Mux24~3_combout\) # (!\Mux27~4_combout\)))) # (!\Mux24~1_combout\ & (\Add0~24_combout\ & ((\Mux27~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~24_combout\,
	datab => \Mux24~3_combout\,
	datac => \Mux24~1_combout\,
	datad => \Mux27~4_combout\,
	combout => \Mux24~4_combout\);

-- Location: LCCOMB_X64_Y38_N30
\Mux24~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux24~0_combout\ = (\opsel[0]~input_o\ & ((\Mult1|auto_generated|w513w\(7)))) # (!\opsel[0]~input_o\ & (\Mult0|auto_generated|w569w\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|auto_generated|w569w\(7),
	datac => \opsel[0]~input_o\,
	datad => \Mult1|auto_generated|w513w\(7),
	combout => \Mux24~0_combout\);

-- Location: LCCOMB_X64_Y38_N16
\Mux24~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux24~5_combout\ = (!\opsel[3]~input_o\ & ((\Mux29~9_combout\ & ((\Mux24~0_combout\))) # (!\Mux29~9_combout\ & (\Mux24~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~9_combout\,
	datab => \Mux24~4_combout\,
	datac => \Mux24~0_combout\,
	datad => \opsel[3]~input_o\,
	combout => \Mux24~5_combout\);

-- Location: LCCOMB_X57_Y39_N8
\Mux23~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux23~6_combout\ = (!\opsel[3]~input_o\ & (((!\Mux16~0_combout\) # (!\shamt[3]~input_o\)) # (!\opsel[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opsel[2]~input_o\,
	datab => \shamt[3]~input_o\,
	datac => \opsel[3]~input_o\,
	datad => \Mux16~0_combout\,
	combout => \Mux23~6_combout\);

-- Location: LCCOMB_X57_Y39_N30
\Mux23~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux23~0_combout\ = (\opsel[2]~input_o\ & (\shamt[3]~input_o\ & (!\opsel[3]~input_o\ & \Mux16~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opsel[2]~input_o\,
	datab => \shamt[3]~input_o\,
	datac => \opsel[3]~input_o\,
	datad => \Mux16~0_combout\,
	combout => \Mux23~0_combout\);

-- Location: LCCOMB_X62_Y38_N28
\Mux23~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux23~1_combout\ = (\Mux23~0_combout\ & ((\shamt[2]~input_o\ & (\ShiftRight0~17_combout\)) # (!\shamt[2]~input_o\ & ((\ShiftRight0~24_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~17_combout\,
	datab => \ShiftRight0~24_combout\,
	datac => \shamt[2]~input_o\,
	datad => \Mux23~0_combout\,
	combout => \Mux23~1_combout\);

-- Location: LCCOMB_X62_Y38_N16
\ShiftRight0~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight0~66_combout\ = (!\shamt[3]~input_o\ & ((\shamt[2]~input_o\ & (\ShiftRight0~14_combout\)) # (!\shamt[2]~input_o\ & ((\ShiftRight0~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt[3]~input_o\,
	datab => \ShiftRight0~14_combout\,
	datac => \shamt[2]~input_o\,
	datad => \ShiftRight0~21_combout\,
	combout => \ShiftRight0~66_combout\);

-- Location: LCCOMB_X62_Y38_N20
\ShiftRight1~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight1~60_combout\ = (\ShiftRight0~66_combout\) # ((\a[31]~input_o\ & \shamt[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[31]~input_o\,
	datab => \ShiftRight0~66_combout\,
	datad => \shamt[3]~input_o\,
	combout => \ShiftRight1~60_combout\);

-- Location: LCCOMB_X62_Y38_N26
\Mux23~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux23~2_combout\ = (\Mux29~5_combout\ & (((\ShiftRight0~12_combout\)) # (!\Mux29~4_combout\))) # (!\Mux29~5_combout\ & (\Mux29~4_combout\ & ((\ShiftRight1~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~5_combout\,
	datab => \Mux29~4_combout\,
	datac => \ShiftRight0~12_combout\,
	datad => \ShiftRight1~60_combout\,
	combout => \Mux23~2_combout\);

-- Location: LCCOMB_X62_Y38_N22
\result~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \result~6_combout\ = (\a[8]~input_o\ & \b[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[8]~input_o\,
	datac => \b[8]~input_o\,
	combout => \result~6_combout\);

-- Location: LCCOMB_X62_Y38_N4
\Mux23~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux23~3_combout\ = (\Mux29~0_combout\ & (\Mux23~2_combout\)) # (!\Mux29~0_combout\ & ((\Mux23~2_combout\ & ((\ShiftRight0~66_combout\))) # (!\Mux23~2_combout\ & (\result~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~0_combout\,
	datab => \Mux23~2_combout\,
	datac => \result~6_combout\,
	datad => \ShiftRight0~66_combout\,
	combout => \Mux23~3_combout\);

-- Location: LCCOMB_X60_Y36_N16
\Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = \b[8]~input_o\ $ (\opsel[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b[8]~input_o\,
	datac => \opsel[0]~input_o\,
	combout => \Add0~26_combout\);

-- Location: LCCOMB_X61_Y36_N2
\Add0~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~27_combout\ = (\a[8]~input_o\ & ((\Add0~26_combout\ & (\Add0~25\ & VCC)) # (!\Add0~26_combout\ & (!\Add0~25\)))) # (!\a[8]~input_o\ & ((\Add0~26_combout\ & (!\Add0~25\)) # (!\Add0~26_combout\ & ((\Add0~25\) # (GND)))))
-- \Add0~28\ = CARRY((\a[8]~input_o\ & (!\Add0~26_combout\ & !\Add0~25\)) # (!\a[8]~input_o\ & ((!\Add0~25\) # (!\Add0~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[8]~input_o\,
	datab => \Add0~26_combout\,
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~27_combout\,
	cout => \Add0~28\);

-- Location: LCCOMB_X64_Y38_N10
\Mux23~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux23~4_combout\ = (\Mux29~9_combout\ & ((\Mux29~8_combout\) # ((\Mult0|auto_generated|w569w\(8))))) # (!\Mux29~9_combout\ & (!\Mux29~8_combout\ & (\Add0~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~9_combout\,
	datab => \Mux29~8_combout\,
	datac => \Add0~27_combout\,
	datad => \Mult0|auto_generated|w569w\(8),
	combout => \Mux23~4_combout\);

-- Location: LCCOMB_X61_Y38_N16
\Mux23~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux23~5_combout\ = (\Mux29~8_combout\ & ((\Mux23~4_combout\ & ((\Mult1|auto_generated|w513w\(8)))) # (!\Mux23~4_combout\ & (\Mux23~3_combout\)))) # (!\Mux29~8_combout\ & (((\Mux23~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux23~3_combout\,
	datab => \Mux29~8_combout\,
	datac => \Mult1|auto_generated|w513w\(8),
	datad => \Mux23~4_combout\,
	combout => \Mux23~5_combout\);

-- Location: LCCOMB_X61_Y38_N26
\Mux23~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux23~7_combout\ = (\Mux23~1_combout\) # ((\Mux23~6_combout\ & \Mux23~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux23~6_combout\,
	datac => \Mux23~1_combout\,
	datad => \Mux23~5_combout\,
	combout => \Mux23~7_combout\);

-- Location: LCCOMB_X56_Y38_N30
\ShiftRight0~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight0~67_combout\ = (!\shamt[3]~input_o\ & ((\shamt[2]~input_o\ & ((\ShiftRight0~35_combout\))) # (!\shamt[2]~input_o\ & (\ShiftRight0~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt[3]~input_o\,
	datab => \ShiftRight0~36_combout\,
	datac => \shamt[2]~input_o\,
	datad => \ShiftRight0~35_combout\,
	combout => \ShiftRight0~67_combout\);

-- Location: LCCOMB_X59_Y38_N18
\ShiftRight1~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight1~61_combout\ = (\shamt[3]~input_o\ & (\a[31]~input_o\)) # (!\shamt[3]~input_o\ & ((\ShiftRight1~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[31]~input_o\,
	datab => \ShiftRight1~26_combout\,
	datac => \shamt[3]~input_o\,
	combout => \ShiftRight1~61_combout\);

-- Location: LCCOMB_X59_Y38_N22
\Mux22~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux22~1_combout\ = (\Mux29~5_combout\ & ((\ShiftRight0~33_combout\) # ((!\Mux29~4_combout\)))) # (!\Mux29~5_combout\ & (((\ShiftRight1~61_combout\ & \Mux29~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~33_combout\,
	datab => \ShiftRight1~61_combout\,
	datac => \Mux29~5_combout\,
	datad => \Mux29~4_combout\,
	combout => \Mux22~1_combout\);

-- Location: LCCOMB_X60_Y36_N18
\result~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \result~7_combout\ = (\b[9]~input_o\ & \a[9]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b[9]~input_o\,
	datad => \a[9]~input_o\,
	combout => \result~7_combout\);

-- Location: LCCOMB_X60_Y36_N20
\Mux22~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux22~2_combout\ = (\Mux29~0_combout\ & (((\Mux22~1_combout\)))) # (!\Mux29~0_combout\ & ((\Mux22~1_combout\ & (\ShiftRight0~67_combout\)) # (!\Mux22~1_combout\ & ((\result~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~0_combout\,
	datab => \ShiftRight0~67_combout\,
	datac => \Mux22~1_combout\,
	datad => \result~7_combout\,
	combout => \Mux22~2_combout\);

-- Location: LCCOMB_X60_Y36_N14
\Add0~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~29_combout\ = \opsel[0]~input_o\ $ (\b[9]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opsel[0]~input_o\,
	datac => \b[9]~input_o\,
	combout => \Add0~29_combout\);

-- Location: LCCOMB_X61_Y36_N4
\Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = ((\Add0~29_combout\ $ (\a[9]~input_o\ $ (!\Add0~28\)))) # (GND)
-- \Add0~31\ = CARRY((\Add0~29_combout\ & ((\a[9]~input_o\) # (!\Add0~28\))) # (!\Add0~29_combout\ & (\a[9]~input_o\ & !\Add0~28\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~29_combout\,
	datab => \a[9]~input_o\,
	datad => VCC,
	cin => \Add0~28\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: LCCOMB_X60_Y38_N28
\Mux22~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux22~3_combout\ = (\Mux29~9_combout\ & (((\Mult0|auto_generated|w569w\(9)) # (\Mux29~8_combout\)))) # (!\Mux29~9_combout\ & (\Add0~30_combout\ & ((!\Mux29~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~9_combout\,
	datab => \Add0~30_combout\,
	datac => \Mult0|auto_generated|w569w\(9),
	datad => \Mux29~8_combout\,
	combout => \Mux22~3_combout\);

-- Location: LCCOMB_X60_Y38_N6
\Mux22~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux22~4_combout\ = (\Mux22~3_combout\ & (((\Mult1|auto_generated|w513w\(9)) # (!\Mux29~8_combout\)))) # (!\Mux22~3_combout\ & (\Mux22~2_combout\ & ((\Mux29~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux22~2_combout\,
	datab => \Mux22~3_combout\,
	datac => \Mult1|auto_generated|w513w\(9),
	datad => \Mux29~8_combout\,
	combout => \Mux22~4_combout\);

-- Location: LCCOMB_X60_Y38_N0
\Mux22~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux22~5_combout\ = (\Mux23~0_combout\ & ((\Mux22~0_combout\) # ((\Mux23~6_combout\ & \Mux22~4_combout\)))) # (!\Mux23~0_combout\ & (\Mux23~6_combout\ & ((\Mux22~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux23~0_combout\,
	datab => \Mux23~6_combout\,
	datac => \Mux22~0_combout\,
	datad => \Mux22~4_combout\,
	combout => \Mux22~5_combout\);

-- Location: LCCOMB_X58_Y38_N26
\ShiftRight0~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight0~68_combout\ = (!\shamt[1]~input_o\ & ((\shamt[0]~input_o\ & ((\a[31]~input_o\))) # (!\shamt[0]~input_o\ & (\a[30]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt[1]~input_o\,
	datab => \a[30]~input_o\,
	datac => \shamt[0]~input_o\,
	datad => \a[31]~input_o\,
	combout => \ShiftRight0~68_combout\);

-- Location: LCCOMB_X58_Y38_N20
\ShiftRight0~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight0~69_combout\ = (!\shamt[3]~input_o\ & ((\shamt[2]~input_o\ & ((\ShiftRight0~68_combout\))) # (!\shamt[2]~input_o\ & (\ShiftRight1~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~29_combout\,
	datab => \shamt[3]~input_o\,
	datac => \shamt[2]~input_o\,
	datad => \ShiftRight0~68_combout\,
	combout => \ShiftRight0~69_combout\);

-- Location: LCCOMB_X59_Y38_N12
\ShiftRight1~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight1~62_combout\ = (\shamt[3]~input_o\ & (\a[31]~input_o\)) # (!\shamt[3]~input_o\ & ((\ShiftRight1~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[31]~input_o\,
	datac => \shamt[3]~input_o\,
	datad => \ShiftRight1~35_combout\,
	combout => \ShiftRight1~62_combout\);

-- Location: LCCOMB_X59_Y38_N8
\Mux21~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux21~1_combout\ = (\Mux29~5_combout\ & (((\ShiftRight0~45_combout\) # (!\Mux29~4_combout\)))) # (!\Mux29~5_combout\ & (\ShiftRight1~62_combout\ & ((\Mux29~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~62_combout\,
	datab => \ShiftRight0~45_combout\,
	datac => \Mux29~5_combout\,
	datad => \Mux29~4_combout\,
	combout => \Mux21~1_combout\);

-- Location: LCCOMB_X60_Y36_N24
\result~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \result~8_combout\ = (\b[10]~input_o\ & \a[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b[10]~input_o\,
	datac => \a[10]~input_o\,
	combout => \result~8_combout\);

-- Location: LCCOMB_X60_Y36_N26
\Mux21~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux21~2_combout\ = (\Mux21~1_combout\ & ((\ShiftRight0~69_combout\) # ((\Mux29~0_combout\)))) # (!\Mux21~1_combout\ & (((\result~8_combout\ & !\Mux29~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~69_combout\,
	datab => \Mux21~1_combout\,
	datac => \result~8_combout\,
	datad => \Mux29~0_combout\,
	combout => \Mux21~2_combout\);

-- Location: LCCOMB_X60_Y36_N12
\Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = \b[10]~input_o\ $ (\opsel[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b[10]~input_o\,
	datac => \opsel[0]~input_o\,
	combout => \Add0~32_combout\);

-- Location: LCCOMB_X61_Y36_N6
\Add0~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~33_combout\ = (\a[10]~input_o\ & ((\Add0~32_combout\ & (\Add0~31\ & VCC)) # (!\Add0~32_combout\ & (!\Add0~31\)))) # (!\a[10]~input_o\ & ((\Add0~32_combout\ & (!\Add0~31\)) # (!\Add0~32_combout\ & ((\Add0~31\) # (GND)))))
-- \Add0~34\ = CARRY((\a[10]~input_o\ & (!\Add0~32_combout\ & !\Add0~31\)) # (!\a[10]~input_o\ & ((!\Add0~31\) # (!\Add0~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[10]~input_o\,
	datab => \Add0~32_combout\,
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~33_combout\,
	cout => \Add0~34\);

-- Location: LCCOMB_X60_Y38_N2
\Mux21~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux21~3_combout\ = (\Mux29~9_combout\ & (((\Mult0|auto_generated|w569w\(10)) # (\Mux29~8_combout\)))) # (!\Mux29~9_combout\ & (\Add0~33_combout\ & ((!\Mux29~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~33_combout\,
	datab => \Mux29~9_combout\,
	datac => \Mult0|auto_generated|w569w\(10),
	datad => \Mux29~8_combout\,
	combout => \Mux21~3_combout\);

-- Location: LCCOMB_X60_Y38_N20
\Mux21~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux21~4_combout\ = (\Mux21~3_combout\ & (((\Mult1|auto_generated|w513w\(10)) # (!\Mux29~8_combout\)))) # (!\Mux21~3_combout\ & (\Mux21~2_combout\ & ((\Mux29~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux21~2_combout\,
	datab => \Mux21~3_combout\,
	datac => \Mult1|auto_generated|w513w\(10),
	datad => \Mux29~8_combout\,
	combout => \Mux21~4_combout\);

-- Location: LCCOMB_X60_Y38_N14
\Mux21~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux21~5_combout\ = (\Mux21~0_combout\ & ((\Mux23~0_combout\) # ((\Mux23~6_combout\ & \Mux21~4_combout\)))) # (!\Mux21~0_combout\ & (\Mux23~6_combout\ & ((\Mux21~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux21~0_combout\,
	datab => \Mux23~6_combout\,
	datac => \Mux23~0_combout\,
	datad => \Mux21~4_combout\,
	combout => \Mux21~5_combout\);

-- Location: LCCOMB_X60_Y37_N22
\Add0~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~35_combout\ = \opsel[0]~input_o\ $ (\b[11]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \opsel[0]~input_o\,
	datad => \b[11]~input_o\,
	combout => \Add0~35_combout\);

-- Location: LCCOMB_X61_Y36_N8
\Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = ((\a[11]~input_o\ $ (\Add0~35_combout\ $ (!\Add0~34\)))) # (GND)
-- \Add0~37\ = CARRY((\a[11]~input_o\ & ((\Add0~35_combout\) # (!\Add0~34\))) # (!\a[11]~input_o\ & (\Add0~35_combout\ & !\Add0~34\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[11]~input_o\,
	datab => \Add0~35_combout\,
	datad => VCC,
	cin => \Add0~34\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

-- Location: LCCOMB_X61_Y38_N4
\Mux20~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux20~3_combout\ = (\Mux29~8_combout\ & (((\Mux29~9_combout\)))) # (!\Mux29~8_combout\ & ((\Mux29~9_combout\ & ((\Mult0|auto_generated|w569w\(11)))) # (!\Mux29~9_combout\ & (\Add0~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~36_combout\,
	datab => \Mux29~8_combout\,
	datac => \Mux29~9_combout\,
	datad => \Mult0|auto_generated|w569w\(11),
	combout => \Mux20~3_combout\);

-- Location: LCCOMB_X57_Y37_N26
\ShiftRight1~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight1~63_combout\ = (\shamt[3]~input_o\ & (\a[31]~input_o\)) # (!\shamt[3]~input_o\ & ((\shamt[2]~input_o\ & (\a[31]~input_o\)) # (!\shamt[2]~input_o\ & ((\ShiftRight1~45_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[31]~input_o\,
	datab => \shamt[3]~input_o\,
	datac => \shamt[2]~input_o\,
	datad => \ShiftRight1~45_combout\,
	combout => \ShiftRight1~63_combout\);

-- Location: LCCOMB_X58_Y37_N22
\Mux20~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux20~1_combout\ = (\Mux29~4_combout\ & ((\Mux29~5_combout\ & ((\ShiftRight0~51_combout\))) # (!\Mux29~5_combout\ & (\ShiftRight1~63_combout\)))) # (!\Mux29~4_combout\ & (\Mux29~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~4_combout\,
	datab => \Mux29~5_combout\,
	datac => \ShiftRight1~63_combout\,
	datad => \ShiftRight0~51_combout\,
	combout => \Mux20~1_combout\);

-- Location: LCCOMB_X58_Y37_N28
\result~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \result~9_combout\ = (\a[11]~input_o\ & \b[11]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a[11]~input_o\,
	datac => \b[11]~input_o\,
	combout => \result~9_combout\);

-- Location: LCCOMB_X57_Y38_N0
\ShiftRight0~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight0~70_combout\ = (\shamt[2]~input_o\ & (!\shamt[1]~input_o\ & (!\shamt[3]~input_o\ & !\shamt[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt[2]~input_o\,
	datab => \shamt[1]~input_o\,
	datac => \shamt[3]~input_o\,
	datad => \shamt[0]~input_o\,
	combout => \ShiftRight0~70_combout\);

-- Location: LCCOMB_X57_Y38_N26
\ShiftRight0~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight0~71_combout\ = (\ShiftRight1~45_combout\ & ((\ShiftRight0~43_combout\) # ((\ShiftRight0~70_combout\ & \a[31]~input_o\)))) # (!\ShiftRight1~45_combout\ & (\ShiftRight0~70_combout\ & (\a[31]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~45_combout\,
	datab => \ShiftRight0~70_combout\,
	datac => \a[31]~input_o\,
	datad => \ShiftRight0~43_combout\,
	combout => \ShiftRight0~71_combout\);

-- Location: LCCOMB_X58_Y37_N0
\Mux20~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux20~2_combout\ = (\Mux20~1_combout\ & (((\ShiftRight0~71_combout\) # (\Mux29~0_combout\)))) # (!\Mux20~1_combout\ & (\result~9_combout\ & ((!\Mux29~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux20~1_combout\,
	datab => \result~9_combout\,
	datac => \ShiftRight0~71_combout\,
	datad => \Mux29~0_combout\,
	combout => \Mux20~2_combout\);

-- Location: LCCOMB_X60_Y38_N8
\Mux20~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux20~4_combout\ = (\Mux20~3_combout\ & ((\Mult1|auto_generated|w513w\(11)) # ((!\Mux29~8_combout\)))) # (!\Mux20~3_combout\ & (((\Mux20~2_combout\ & \Mux29~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux20~3_combout\,
	datab => \Mult1|auto_generated|w513w\(11),
	datac => \Mux20~2_combout\,
	datad => \Mux29~8_combout\,
	combout => \Mux20~4_combout\);

-- Location: LCCOMB_X57_Y39_N2
\Mux20~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux20~0_combout\ = (\Mux23~0_combout\ & ((\shamt[2]~input_o\ & (\ShiftRight1~47_combout\)) # (!\shamt[2]~input_o\ & ((\ShiftRight1~46_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux23~0_combout\,
	datab => \ShiftRight1~47_combout\,
	datac => \ShiftRight1~46_combout\,
	datad => \shamt[2]~input_o\,
	combout => \Mux20~0_combout\);

-- Location: LCCOMB_X61_Y38_N6
\Mux20~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux20~5_combout\ = (\Mux20~0_combout\) # ((\Mux20~4_combout\ & \Mux23~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux20~4_combout\,
	datab => \Mux23~6_combout\,
	datad => \Mux20~0_combout\,
	combout => \Mux20~5_combout\);

-- Location: LCCOMB_X58_Y38_N30
\ShiftRight0~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight0~72_combout\ = (\ShiftRight0~43_combout\ & ((\ShiftRight0~13_combout\) # ((\ShiftRight1~16_combout\ & \shamt[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~13_combout\,
	datab => \ShiftRight1~16_combout\,
	datac => \shamt[1]~input_o\,
	datad => \ShiftRight0~43_combout\,
	combout => \ShiftRight0~72_combout\);

-- Location: LCCOMB_X57_Y37_N24
\result~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \result~10_combout\ = (\b[12]~input_o\ & \a[12]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[12]~input_o\,
	datac => \a[12]~input_o\,
	combout => \result~10_combout\);

-- Location: LCCOMB_X57_Y37_N20
\ShiftRight1~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight1~64_combout\ = (\ShiftRight0~72_combout\) # ((\a[31]~input_o\ & ((\shamt[3]~input_o\) # (\shamt[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[31]~input_o\,
	datab => \shamt[3]~input_o\,
	datac => \shamt[2]~input_o\,
	datad => \ShiftRight0~72_combout\,
	combout => \ShiftRight1~64_combout\);

-- Location: LCCOMB_X59_Y38_N2
\Mux19~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux19~1_combout\ = (\Mux29~5_combout\ & (((\ShiftRight0~55_combout\) # (!\Mux29~4_combout\)))) # (!\Mux29~5_combout\ & (\ShiftRight1~64_combout\ & ((\Mux29~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~64_combout\,
	datab => \ShiftRight0~55_combout\,
	datac => \Mux29~5_combout\,
	datad => \Mux29~4_combout\,
	combout => \Mux19~1_combout\);

-- Location: LCCOMB_X57_Y37_N10
\Mux19~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux19~2_combout\ = (\Mux19~1_combout\ & ((\ShiftRight0~72_combout\) # ((\Mux29~0_combout\)))) # (!\Mux19~1_combout\ & (((\result~10_combout\ & !\Mux29~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~72_combout\,
	datab => \result~10_combout\,
	datac => \Mux19~1_combout\,
	datad => \Mux29~0_combout\,
	combout => \Mux19~2_combout\);

-- Location: LCCOMB_X57_Y37_N12
\Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = \b[12]~input_o\ $ (\opsel[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[12]~input_o\,
	datad => \opsel[0]~input_o\,
	combout => \Add0~38_combout\);

-- Location: LCCOMB_X61_Y36_N10
\Add0~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~39_combout\ = (\Add0~38_combout\ & ((\a[12]~input_o\ & (\Add0~37\ & VCC)) # (!\a[12]~input_o\ & (!\Add0~37\)))) # (!\Add0~38_combout\ & ((\a[12]~input_o\ & (!\Add0~37\)) # (!\a[12]~input_o\ & ((\Add0~37\) # (GND)))))
-- \Add0~40\ = CARRY((\Add0~38_combout\ & (!\a[12]~input_o\ & !\Add0~37\)) # (!\Add0~38_combout\ & ((!\Add0~37\) # (!\a[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~38_combout\,
	datab => \a[12]~input_o\,
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~39_combout\,
	cout => \Add0~40\);

-- Location: LCCOMB_X62_Y36_N16
\Mux19~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux19~3_combout\ = (\Mux29~8_combout\ & (((\Mux29~9_combout\)))) # (!\Mux29~8_combout\ & ((\Mux29~9_combout\ & ((\Mult0|auto_generated|w569w\(12)))) # (!\Mux29~9_combout\ & (\Add0~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~39_combout\,
	datab => \Mux29~8_combout\,
	datac => \Mux29~9_combout\,
	datad => \Mult0|auto_generated|w569w\(12),
	combout => \Mux19~3_combout\);

-- Location: LCCOMB_X62_Y36_N2
\Mux19~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux19~4_combout\ = (\Mux29~8_combout\ & ((\Mux19~3_combout\ & (\Mult1|auto_generated|w513w\(12))) # (!\Mux19~3_combout\ & ((\Mux19~2_combout\))))) # (!\Mux29~8_combout\ & (((\Mux19~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|w513w\(12),
	datab => \Mux19~2_combout\,
	datac => \Mux29~8_combout\,
	datad => \Mux19~3_combout\,
	combout => \Mux19~4_combout\);

-- Location: LCCOMB_X62_Y38_N30
\Mux19~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux19~0_combout\ = (\Mux23~0_combout\ & ((\shamt[2]~input_o\ & ((\ShiftRight0~21_combout\))) # (!\shamt[2]~input_o\ & (\ShiftRight0~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~17_combout\,
	datab => \Mux23~0_combout\,
	datac => \shamt[2]~input_o\,
	datad => \ShiftRight0~21_combout\,
	combout => \Mux19~0_combout\);

-- Location: LCCOMB_X62_Y36_N28
\Mux19~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux19~5_combout\ = (\Mux19~0_combout\) # ((\Mux23~6_combout\ & \Mux19~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux23~6_combout\,
	datab => \Mux19~4_combout\,
	datac => \Mux19~0_combout\,
	combout => \Mux19~5_combout\);

-- Location: LCCOMB_X56_Y38_N16
\Mux18~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux18~0_combout\ = (\Mux23~0_combout\ & ((\shamt[2]~input_o\ & ((\ShiftRight0~36_combout\))) # (!\shamt[2]~input_o\ & (\ShiftRight0~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~37_combout\,
	datab => \ShiftRight0~36_combout\,
	datac => \shamt[2]~input_o\,
	datad => \Mux23~0_combout\,
	combout => \Mux18~0_combout\);

-- Location: LCCOMB_X60_Y36_N2
\Add0~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~41_combout\ = \opsel[0]~input_o\ $ (\b[13]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opsel[0]~input_o\,
	datac => \b[13]~input_o\,
	combout => \Add0~41_combout\);

-- Location: LCCOMB_X61_Y36_N12
\Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = ((\Add0~41_combout\ $ (\a[13]~input_o\ $ (!\Add0~40\)))) # (GND)
-- \Add0~43\ = CARRY((\Add0~41_combout\ & ((\a[13]~input_o\) # (!\Add0~40\))) # (!\Add0~41_combout\ & (\a[13]~input_o\ & !\Add0~40\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~41_combout\,
	datab => \a[13]~input_o\,
	datad => VCC,
	cin => \Add0~40\,
	combout => \Add0~42_combout\,
	cout => \Add0~43\);

-- Location: LCCOMB_X60_Y38_N10
\Mux18~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux18~3_combout\ = (\Mux29~9_combout\ & (((\Mult0|auto_generated|w569w\(13)) # (\Mux29~8_combout\)))) # (!\Mux29~9_combout\ & (\Add0~42_combout\ & ((!\Mux29~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~42_combout\,
	datab => \Mux29~9_combout\,
	datac => \Mult0|auto_generated|w569w\(13),
	datad => \Mux29~8_combout\,
	combout => \Mux18~3_combout\);

-- Location: LCCOMB_X56_Y38_N20
\ShiftRight0~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight0~74_combout\ = (!\shamt[3]~input_o\ & (!\shamt[2]~input_o\ & \ShiftRight0~35_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt[3]~input_o\,
	datac => \shamt[2]~input_o\,
	datad => \ShiftRight0~35_combout\,
	combout => \ShiftRight0~74_combout\);

-- Location: LCCOMB_X57_Y38_N12
\ShiftRight1~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight1~56_combout\ = (\shamt[1]~input_o\ & (\a[31]~input_o\)) # (!\shamt[1]~input_o\ & ((\ShiftRight0~43_combout\ & ((\ShiftRight1~21_combout\))) # (!\ShiftRight0~43_combout\ & (\a[31]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[31]~input_o\,
	datab => \ShiftRight1~21_combout\,
	datac => \shamt[1]~input_o\,
	datad => \ShiftRight0~43_combout\,
	combout => \ShiftRight1~56_combout\);

-- Location: LCCOMB_X58_Y39_N2
\Mux18~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux18~1_combout\ = (\Mux29~5_combout\ & (((\ShiftRight0~59_combout\) # (!\Mux29~4_combout\)))) # (!\Mux29~5_combout\ & (\ShiftRight1~56_combout\ & ((\Mux29~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~56_combout\,
	datab => \Mux29~5_combout\,
	datac => \ShiftRight0~59_combout\,
	datad => \Mux29~4_combout\,
	combout => \Mux18~1_combout\);

-- Location: LCCOMB_X60_Y36_N22
\result~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \result~11_combout\ = (\b[13]~input_o\ & \a[13]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b[13]~input_o\,
	datac => \a[13]~input_o\,
	combout => \result~11_combout\);

-- Location: LCCOMB_X60_Y36_N0
\Mux18~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux18~2_combout\ = (\Mux18~1_combout\ & ((\ShiftRight0~74_combout\) # ((\Mux29~0_combout\)))) # (!\Mux18~1_combout\ & (((\result~11_combout\ & !\Mux29~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~74_combout\,
	datab => \Mux18~1_combout\,
	datac => \result~11_combout\,
	datad => \Mux29~0_combout\,
	combout => \Mux18~2_combout\);

-- Location: LCCOMB_X60_Y38_N12
\Mux18~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux18~4_combout\ = (\Mux18~3_combout\ & ((\Mult1|auto_generated|w513w\(13)) # ((!\Mux29~8_combout\)))) # (!\Mux18~3_combout\ & (((\Mux18~2_combout\ & \Mux29~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux18~3_combout\,
	datab => \Mult1|auto_generated|w513w\(13),
	datac => \Mux18~2_combout\,
	datad => \Mux29~8_combout\,
	combout => \Mux18~4_combout\);

-- Location: LCCOMB_X60_Y38_N30
\Mux18~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux18~5_combout\ = (\Mux18~0_combout\) # ((\Mux23~6_combout\ & \Mux18~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux23~6_combout\,
	datac => \Mux18~0_combout\,
	datad => \Mux18~4_combout\,
	combout => \Mux18~5_combout\);

-- Location: LCCOMB_X57_Y37_N18
\Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = \opsel[0]~input_o\ $ (\b[14]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \opsel[0]~input_o\,
	datad => \b[14]~input_o\,
	combout => \Add0~44_combout\);

-- Location: LCCOMB_X61_Y36_N14
\Add0~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~45_combout\ = (\a[14]~input_o\ & ((\Add0~44_combout\ & (\Add0~43\ & VCC)) # (!\Add0~44_combout\ & (!\Add0~43\)))) # (!\a[14]~input_o\ & ((\Add0~44_combout\ & (!\Add0~43\)) # (!\Add0~44_combout\ & ((\Add0~43\) # (GND)))))
-- \Add0~46\ = CARRY((\a[14]~input_o\ & (!\Add0~44_combout\ & !\Add0~43\)) # (!\a[14]~input_o\ & ((!\Add0~43\) # (!\Add0~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[14]~input_o\,
	datab => \Add0~44_combout\,
	datad => VCC,
	cin => \Add0~43\,
	combout => \Add0~45_combout\,
	cout => \Add0~46\);

-- Location: LCCOMB_X60_Y38_N26
\Mux17~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux17~3_combout\ = (\Mux29~9_combout\ & (((\Mult0|auto_generated|w569w\(14)) # (\Mux29~8_combout\)))) # (!\Mux29~9_combout\ & (\Add0~45_combout\ & ((!\Mux29~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~45_combout\,
	datab => \Mux29~9_combout\,
	datac => \Mult0|auto_generated|w569w\(14),
	datad => \Mux29~8_combout\,
	combout => \Mux17~3_combout\);

-- Location: LCCOMB_X57_Y37_N6
\ShiftRight0~75\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight0~75_combout\ = (!\shamt[3]~input_o\ & (!\shamt[2]~input_o\ & \ShiftRight0~68_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \shamt[3]~input_o\,
	datac => \shamt[2]~input_o\,
	datad => \ShiftRight0~68_combout\,
	combout => \ShiftRight0~75_combout\);

-- Location: LCCOMB_X57_Y38_N6
\ShiftRight0~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight0~73_combout\ = (!\shamt[2]~input_o\ & (!\shamt[1]~input_o\ & (!\shamt[3]~input_o\ & !\shamt[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt[2]~input_o\,
	datab => \shamt[1]~input_o\,
	datac => \shamt[3]~input_o\,
	datad => \shamt[0]~input_o\,
	combout => \ShiftRight0~73_combout\);

-- Location: LCCOMB_X57_Y38_N24
\ShiftRight1~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftRight1~57_combout\ = (\ShiftRight0~73_combout\ & ((\a[30]~input_o\))) # (!\ShiftRight0~73_combout\ & (\a[31]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[31]~input_o\,
	datac => \a[30]~input_o\,
	datad => \ShiftRight0~73_combout\,
	combout => \ShiftRight1~57_combout\);

-- Location: LCCOMB_X58_Y37_N10
\Mux17~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux17~1_combout\ = (\Mux29~4_combout\ & ((\Mux29~5_combout\ & ((\ShiftRight0~62_combout\))) # (!\Mux29~5_combout\ & (\ShiftRight1~57_combout\)))) # (!\Mux29~4_combout\ & (\Mux29~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~4_combout\,
	datab => \Mux29~5_combout\,
	datac => \ShiftRight1~57_combout\,
	datad => \ShiftRight0~62_combout\,
	combout => \Mux17~1_combout\);

-- Location: LCCOMB_X57_Y37_N14
\result~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \result~12_combout\ = (\a[14]~input_o\ & \b[14]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[14]~input_o\,
	datad => \b[14]~input_o\,
	combout => \result~12_combout\);

-- Location: LCCOMB_X57_Y37_N0
\Mux17~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux17~2_combout\ = (\Mux17~1_combout\ & ((\ShiftRight0~75_combout\) # ((\Mux29~0_combout\)))) # (!\Mux17~1_combout\ & (((\result~12_combout\ & !\Mux29~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~75_combout\,
	datab => \Mux17~1_combout\,
	datac => \result~12_combout\,
	datad => \Mux29~0_combout\,
	combout => \Mux17~2_combout\);

-- Location: LCCOMB_X60_Y38_N4
\Mux17~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux17~4_combout\ = (\Mux17~3_combout\ & (((\Mult1|auto_generated|w513w\(14)) # (!\Mux29~8_combout\)))) # (!\Mux17~3_combout\ & (\Mux17~2_combout\ & ((\Mux29~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux17~3_combout\,
	datab => \Mux17~2_combout\,
	datac => \Mult1|auto_generated|w513w\(14),
	datad => \Mux29~8_combout\,
	combout => \Mux17~4_combout\);

-- Location: LCCOMB_X60_Y38_N24
\Mux17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux17~0_combout\ = (\Mux23~0_combout\ & ((\shamt[2]~input_o\ & ((\ShiftRight1~29_combout\))) # (!\shamt[2]~input_o\ & (\ShiftRight1~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~31_combout\,
	datab => \ShiftRight1~29_combout\,
	datac => \Mux23~0_combout\,
	datad => \shamt[2]~input_o\,
	combout => \Mux17~0_combout\);

-- Location: LCCOMB_X60_Y38_N22
\Mux17~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux17~5_combout\ = (\Mux17~0_combout\) # ((\Mux23~6_combout\ & \Mux17~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux23~6_combout\,
	datac => \Mux17~4_combout\,
	datad => \Mux17~0_combout\,
	combout => \Mux17~5_combout\);

-- Location: LCCOMB_X57_Y39_N20
\Mux16~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux16~1_combout\ = (\Mux23~0_combout\ & ((\shamt[2]~input_o\ & ((\ShiftRight1~45_combout\))) # (!\shamt[2]~input_o\ & (\ShiftRight1~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux23~0_combout\,
	datab => \ShiftRight1~47_combout\,
	datac => \ShiftRight1~45_combout\,
	datad => \shamt[2]~input_o\,
	combout => \Mux16~1_combout\);

-- Location: LCCOMB_X58_Y39_N4
\Mux16~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux16~2_combout\ = (\Mux29~5_combout\ & (((\ShiftRight0~65_combout\) # (!\Mux29~4_combout\)))) # (!\Mux29~5_combout\ & (\a[31]~input_o\ & ((\Mux29~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[31]~input_o\,
	datab => \Mux29~5_combout\,
	datac => \ShiftRight0~65_combout\,
	datad => \Mux29~4_combout\,
	combout => \Mux16~2_combout\);

-- Location: LCCOMB_X58_Y39_N30
\Mux16~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux16~3_combout\ = (\Mux16~2_combout\ & (\a[31]~input_o\ & (\ShiftRight0~73_combout\))) # (!\Mux16~2_combout\ & (((\b[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[31]~input_o\,
	datab => \ShiftRight0~73_combout\,
	datac => \Mux16~2_combout\,
	datad => \b[15]~input_o\,
	combout => \Mux16~3_combout\);

-- Location: LCCOMB_X58_Y39_N0
\Mux16~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux16~4_combout\ = (\Mux29~0_combout\ & (((\Mux16~2_combout\)))) # (!\Mux29~0_combout\ & (\Mux16~3_combout\ & ((\Mux16~2_combout\) # (\a[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux16~3_combout\,
	datab => \Mux16~2_combout\,
	datac => \a[15]~input_o\,
	datad => \Mux29~0_combout\,
	combout => \Mux16~4_combout\);

-- Location: LCCOMB_X61_Y38_N0
\Add0~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~47_combout\ = \b[15]~input_o\ $ (\opsel[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b[15]~input_o\,
	datad => \opsel[0]~input_o\,
	combout => \Add0~47_combout\);

-- Location: LCCOMB_X61_Y36_N16
\Add0~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~48_combout\ = ((\Add0~47_combout\ $ (\a[15]~input_o\ $ (!\Add0~46\)))) # (GND)
-- \Add0~49\ = CARRY((\Add0~47_combout\ & ((\a[15]~input_o\) # (!\Add0~46\))) # (!\Add0~47_combout\ & (\a[15]~input_o\ & !\Add0~46\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~47_combout\,
	datab => \a[15]~input_o\,
	datad => VCC,
	cin => \Add0~46\,
	combout => \Add0~48_combout\,
	cout => \Add0~49\);

-- Location: LCCOMB_X61_Y38_N2
\Mux16~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux16~5_combout\ = (\Mux29~8_combout\ & (((\Mux29~9_combout\)))) # (!\Mux29~8_combout\ & ((\Mux29~9_combout\ & ((\Mult0|auto_generated|w569w\(15)))) # (!\Mux29~9_combout\ & (\Add0~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~48_combout\,
	datab => \Mux29~8_combout\,
	datac => \Mux29~9_combout\,
	datad => \Mult0|auto_generated|w569w\(15),
	combout => \Mux16~5_combout\);

-- Location: LCCOMB_X61_Y38_N28
\Mux16~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux16~6_combout\ = (\Mux16~5_combout\ & (((\Mult1|auto_generated|w513w\(15)) # (!\Mux29~8_combout\)))) # (!\Mux16~5_combout\ & (\Mux16~4_combout\ & ((\Mux29~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux16~4_combout\,
	datab => \Mux16~5_combout\,
	datac => \Mult1|auto_generated|w513w\(15),
	datad => \Mux29~8_combout\,
	combout => \Mux16~6_combout\);

-- Location: LCCOMB_X61_Y38_N30
\Mux16~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux16~7_combout\ = (\Mux16~1_combout\) # ((\Mux23~6_combout\ & \Mux16~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux16~1_combout\,
	datab => \Mux23~6_combout\,
	datad => \Mux16~6_combout\,
	combout => \Mux16~7_combout\);

-- Location: LCCOMB_X60_Y36_N28
\Add0~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~50_combout\ = \opsel[0]~input_o\ $ (\b[16]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \opsel[0]~input_o\,
	datad => \b[16]~input_o\,
	combout => \Add0~50_combout\);

-- Location: LCCOMB_X61_Y36_N18
\Add0~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~51_combout\ = (\a[16]~input_o\ & ((\Add0~50_combout\ & (\Add0~49\ & VCC)) # (!\Add0~50_combout\ & (!\Add0~49\)))) # (!\a[16]~input_o\ & ((\Add0~50_combout\ & (!\Add0~49\)) # (!\Add0~50_combout\ & ((\Add0~49\) # (GND)))))
-- \Add0~52\ = CARRY((\a[16]~input_o\ & (!\Add0~50_combout\ & !\Add0~49\)) # (!\a[16]~input_o\ & ((!\Add0~49\) # (!\Add0~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[16]~input_o\,
	datab => \Add0~50_combout\,
	datad => VCC,
	cin => \Add0~49\,
	combout => \Add0~51_combout\,
	cout => \Add0~52\);

-- Location: LCCOMB_X63_Y38_N14
\Mux15~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux15~4_combout\ = (!\opsel[0]~input_o\ & (\a[16]~input_o\ & \b[16]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \opsel[0]~input_o\,
	datac => \a[16]~input_o\,
	datad => \b[16]~input_o\,
	combout => \Mux15~4_combout\);

-- Location: LCCOMB_X62_Y38_N10
\Mux15~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux15~3_combout\ = (\opsel[0]~input_o\ & (!\shamt[4]~input_o\ & ((\ShiftRight0~25_combout\) # (\ShiftRight0~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opsel[0]~input_o\,
	datab => \shamt[4]~input_o\,
	datac => \ShiftRight0~25_combout\,
	datad => \ShiftRight0~18_combout\,
	combout => \Mux15~3_combout\);

-- Location: LCCOMB_X63_Y38_N8
\Mux15~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux15~5_combout\ = (\opsel[2]~input_o\ & (((\Mux15~4_combout\) # (\Mux15~3_combout\)))) # (!\opsel[2]~input_o\ & (\Add0~51_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~51_combout\,
	datab => \Mux15~4_combout\,
	datac => \opsel[2]~input_o\,
	datad => \Mux15~3_combout\,
	combout => \Mux15~5_combout\);

-- Location: LCCOMB_X62_Y38_N24
\Mux15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = (\shamt[4]~input_o\ & (((\a[31]~input_o\)))) # (!\shamt[4]~input_o\ & ((\ShiftRight0~25_combout\) # ((\ShiftRight0~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~25_combout\,
	datab => \shamt[4]~input_o\,
	datac => \a[31]~input_o\,
	datad => \ShiftRight0~18_combout\,
	combout => \Mux15~0_combout\);

-- Location: LCCOMB_X63_Y38_N2
\Mux15~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux15~1_combout\ = (!\opsel[0]~input_o\ & ((\opsel[2]~input_o\ & ((\Mux15~0_combout\))) # (!\opsel[2]~input_o\ & (\Mult0|auto_generated|w569w\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|w569w\(16),
	datab => \opsel[0]~input_o\,
	datac => \opsel[2]~input_o\,
	datad => \Mux15~0_combout\,
	combout => \Mux15~1_combout\);

-- Location: LCCOMB_X63_Y38_N28
\Mux15~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux15~2_combout\ = (\Mux15~1_combout\) # ((\Mult1|auto_generated|w513w\(16) & (!\opsel[2]~input_o\ & \opsel[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|w513w\(16),
	datab => \opsel[2]~input_o\,
	datac => \opsel[0]~input_o\,
	datad => \Mux15~1_combout\,
	combout => \Mux15~2_combout\);

-- Location: LCCOMB_X63_Y38_N26
\Mux15~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux15~6_combout\ = (!\opsel[3]~input_o\ & ((\opsel[1]~input_o\ & ((\Mux15~2_combout\))) # (!\opsel[1]~input_o\ & (\Mux15~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opsel[1]~input_o\,
	datab => \Mux15~5_combout\,
	datac => \opsel[3]~input_o\,
	datad => \Mux15~2_combout\,
	combout => \Mux15~6_combout\);

-- Location: LCCOMB_X59_Y39_N0
\Add0~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~53_combout\ = \b[17]~input_o\ $ (\opsel[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b[17]~input_o\,
	datad => \opsel[0]~input_o\,
	combout => \Add0~53_combout\);

-- Location: LCCOMB_X61_Y36_N20
\Add0~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~54_combout\ = ((\Add0~53_combout\ $ (\a[17]~input_o\ $ (!\Add0~52\)))) # (GND)
-- \Add0~55\ = CARRY((\Add0~53_combout\ & ((\a[17]~input_o\) # (!\Add0~52\))) # (!\Add0~53_combout\ & (\a[17]~input_o\ & !\Add0~52\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~53_combout\,
	datab => \a[17]~input_o\,
	datad => VCC,
	cin => \Add0~52\,
	combout => \Add0~54_combout\,
	cout => \Add0~55\);

-- Location: LCCOMB_X63_Y38_N20
\Mux10~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux10~2_combout\ = ((\opsel[2]~input_o\ & !\opsel[0]~input_o\)) # (!\opsel[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \opsel[2]~input_o\,
	datac => \opsel[0]~input_o\,
	datad => \opsel[1]~input_o\,
	combout => \Mux10~2_combout\);

-- Location: LCCOMB_X58_Y35_N24
\result~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \result~13_combout\ = (\a[17]~input_o\ & \b[17]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a[17]~input_o\,
	datad => \b[17]~input_o\,
	combout => \result~13_combout\);

-- Location: LCCOMB_X59_Y39_N14
\Mux10~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux10~1_combout\ = (\opsel[1]~input_o\ & ((\shamt[4]~input_o\))) # (!\opsel[1]~input_o\ & (\opsel[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opsel[0]~input_o\,
	datac => \shamt[4]~input_o\,
	datad => \opsel[1]~input_o\,
	combout => \Mux10~1_combout\);

-- Location: LCCOMB_X59_Y39_N20
\Mux10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (!\opsel[1]~input_o\ & ((!\shamt[4]~input_o\) # (!\opsel[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opsel[0]~input_o\,
	datac => \shamt[4]~input_o\,
	datad => \opsel[1]~input_o\,
	combout => \Mux10~0_combout\);

-- Location: LCCOMB_X58_Y35_N2
\Mux14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = (\Mux10~1_combout\ & (\ShiftRight0~40_combout\ & ((\Mux10~0_combout\)))) # (!\Mux10~1_combout\ & (((\result~13_combout\) # (!\Mux10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~40_combout\,
	datab => \result~13_combout\,
	datac => \Mux10~1_combout\,
	datad => \Mux10~0_combout\,
	combout => \Mux14~0_combout\);

-- Location: LCCOMB_X58_Y35_N4
\Mux14~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux14~1_combout\ = (\opsel[1]~input_o\ & ((\Mux14~0_combout\ & ((\ShiftRight1~27_combout\))) # (!\Mux14~0_combout\ & (\a[31]~input_o\)))) # (!\opsel[1]~input_o\ & (((\Mux14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[31]~input_o\,
	datab => \ShiftRight1~27_combout\,
	datac => \opsel[1]~input_o\,
	datad => \Mux14~0_combout\,
	combout => \Mux14~1_combout\);

-- Location: LCCOMB_X59_Y35_N22
\Mux14~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux14~2_combout\ = (\Mux10~2_combout\ & ((\Mux29~8_combout\ & ((\Mux14~1_combout\))) # (!\Mux29~8_combout\ & (\Add0~54_combout\)))) # (!\Mux10~2_combout\ & (((!\Mux29~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~54_combout\,
	datab => \Mux10~2_combout\,
	datac => \Mux14~1_combout\,
	datad => \Mux29~8_combout\,
	combout => \Mux14~2_combout\);

-- Location: LCCOMB_X59_Y35_N8
\Mux14~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux14~3_combout\ = (\Mux29~9_combout\ & ((\Mux14~2_combout\ & ((\Mult0|auto_generated|w569w\(17)))) # (!\Mux14~2_combout\ & (\Mult1|auto_generated|w513w\(17))))) # (!\Mux29~9_combout\ & (((\Mux14~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|w513w\(17),
	datab => \Mux29~9_combout\,
	datac => \Mux14~2_combout\,
	datad => \Mult0|auto_generated|w569w\(17),
	combout => \Mux14~3_combout\);

-- Location: LCCOMB_X59_Y35_N18
\Mux14~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux14~4_combout\ = (\Mux14~3_combout\ & !\opsel[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux14~3_combout\,
	datad => \opsel[3]~input_o\,
	combout => \Mux14~4_combout\);

-- Location: DSPMULT_X48_Y35_N0
\Mult1|auto_generated|mac_mult5\ : fiftyfivenm_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "none",
	dataa_width => 18,
	datab_clock => "none",
	datab_width => 18,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => GND,
	signb => GND,
	dataa => \Mult1|auto_generated|mac_mult5_DATAA_bus\,
	datab => \Mult1|auto_generated|mac_mult5_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult1|auto_generated|mac_mult5_DATAOUT_bus\);

-- Location: DSPOUT_X48_Y35_N2
\Mult1|auto_generated|mac_out6\ : fiftyfivenm_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out6_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult1|auto_generated|mac_out6_DATAOUT_bus\);

-- Location: DSPMULT_X48_Y34_N0
\Mult1|auto_generated|mac_mult3\ : fiftyfivenm_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "none",
	dataa_width => 18,
	datab_clock => "none",
	datab_width => 18,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => GND,
	signb => GND,
	dataa => \Mult1|auto_generated|mac_mult3_DATAA_bus\,
	datab => \Mult1|auto_generated|mac_mult3_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult1|auto_generated|mac_mult3_DATAOUT_bus\);

-- Location: DSPOUT_X48_Y34_N2
\Mult1|auto_generated|mac_out4\ : fiftyfivenm_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out4_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult1|auto_generated|mac_out4_DATAOUT_bus\);

-- Location: LCCOMB_X47_Y35_N16
\Mult1|auto_generated|add9_result[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|add9_result[0]~0_combout\ = (\Mult1|auto_generated|mac_out6~dataout\ & (\Mult1|auto_generated|mac_out4~dataout\ $ (VCC))) # (!\Mult1|auto_generated|mac_out6~dataout\ & (\Mult1|auto_generated|mac_out4~dataout\ & VCC))
-- \Mult1|auto_generated|add9_result[0]~1\ = CARRY((\Mult1|auto_generated|mac_out6~dataout\ & \Mult1|auto_generated|mac_out4~dataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out6~dataout\,
	datab => \Mult1|auto_generated|mac_out4~dataout\,
	datad => VCC,
	combout => \Mult1|auto_generated|add9_result[0]~0_combout\,
	cout => \Mult1|auto_generated|add9_result[0]~1\);

-- Location: LCCOMB_X49_Y35_N2
\Mult1|auto_generated|op_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_1~0_combout\ = (\Mult1|auto_generated|mac_out2~DATAOUT18\ & (\Mult1|auto_generated|add9_result[0]~0_combout\ $ (VCC))) # (!\Mult1|auto_generated|mac_out2~DATAOUT18\ & (\Mult1|auto_generated|add9_result[0]~0_combout\ & VCC))
-- \Mult1|auto_generated|op_1~1\ = CARRY((\Mult1|auto_generated|mac_out2~DATAOUT18\ & \Mult1|auto_generated|add9_result[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out2~DATAOUT18\,
	datab => \Mult1|auto_generated|add9_result[0]~0_combout\,
	datad => VCC,
	combout => \Mult1|auto_generated|op_1~0_combout\,
	cout => \Mult1|auto_generated|op_1~1\);

-- Location: LCCOMB_X59_Y38_N20
\result~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \result~14_combout\ = (\a[18]~input_o\ & \b[18]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[18]~input_o\,
	datac => \b[18]~input_o\,
	combout => \result~14_combout\);

-- Location: LCCOMB_X59_Y38_N14
\Mux13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (\Mux10~1_combout\ & (((\ShiftRight0~44_combout\ & \Mux10~0_combout\)))) # (!\Mux10~1_combout\ & ((\result~14_combout\) # ((!\Mux10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~1_combout\,
	datab => \result~14_combout\,
	datac => \ShiftRight0~44_combout\,
	datad => \Mux10~0_combout\,
	combout => \Mux13~0_combout\);

-- Location: LCCOMB_X59_Y38_N24
\Mux13~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux13~1_combout\ = (\Mux13~0_combout\ & (((\ShiftRight1~36_combout\) # (!\opsel[1]~input_o\)))) # (!\Mux13~0_combout\ & (\a[31]~input_o\ & (\opsel[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[31]~input_o\,
	datab => \Mux13~0_combout\,
	datac => \opsel[1]~input_o\,
	datad => \ShiftRight1~36_combout\,
	combout => \Mux13~1_combout\);

-- Location: LCCOMB_X63_Y36_N24
\Add0~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~56_combout\ = \opsel[0]~input_o\ $ (\b[18]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opsel[0]~input_o\,
	datad => \b[18]~input_o\,
	combout => \Add0~56_combout\);

-- Location: LCCOMB_X61_Y36_N22
\Add0~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~57_combout\ = (\Add0~56_combout\ & ((\a[18]~input_o\ & (\Add0~55\ & VCC)) # (!\a[18]~input_o\ & (!\Add0~55\)))) # (!\Add0~56_combout\ & ((\a[18]~input_o\ & (!\Add0~55\)) # (!\a[18]~input_o\ & ((\Add0~55\) # (GND)))))
-- \Add0~58\ = CARRY((\Add0~56_combout\ & (!\a[18]~input_o\ & !\Add0~55\)) # (!\Add0~56_combout\ & ((!\Add0~55\) # (!\a[18]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~56_combout\,
	datab => \a[18]~input_o\,
	datad => VCC,
	cin => \Add0~55\,
	combout => \Add0~57_combout\,
	cout => \Add0~58\);

-- Location: LCCOMB_X62_Y36_N30
\Mux13~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux13~2_combout\ = (\Mux29~8_combout\ & (\Mux13~1_combout\ & (\Mux10~2_combout\))) # (!\Mux29~8_combout\ & (((\Add0~57_combout\) # (!\Mux10~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~1_combout\,
	datab => \Mux29~8_combout\,
	datac => \Mux10~2_combout\,
	datad => \Add0~57_combout\,
	combout => \Mux13~2_combout\);

-- Location: DSPMULT_X68_Y35_N0
\Mult0|auto_generated|mac_mult5\ : fiftyfivenm_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "none",
	dataa_width => 18,
	datab_clock => "none",
	datab_width => 18,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => GND,
	signb => VCC,
	dataa => \Mult0|auto_generated|mac_mult5_DATAA_bus\,
	datab => \Mult0|auto_generated|mac_mult5_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult0|auto_generated|mac_mult5_DATAOUT_bus\);

-- Location: DSPOUT_X68_Y35_N2
\Mult0|auto_generated|mac_out6\ : fiftyfivenm_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out6_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult0|auto_generated|mac_out6_DATAOUT_bus\);

-- Location: DSPMULT_X68_Y34_N0
\Mult0|auto_generated|mac_mult3\ : fiftyfivenm_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "none",
	dataa_width => 18,
	datab_clock => "none",
	datab_width => 18,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => GND,
	signb => VCC,
	dataa => \Mult0|auto_generated|mac_mult3_DATAA_bus\,
	datab => \Mult0|auto_generated|mac_mult3_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult0|auto_generated|mac_mult3_DATAOUT_bus\);

-- Location: DSPOUT_X68_Y34_N2
\Mult0|auto_generated|mac_out4\ : fiftyfivenm_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out4_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult0|auto_generated|mac_out4_DATAOUT_bus\);

-- Location: LCCOMB_X67_Y35_N2
\Mult0|auto_generated|add9_result[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|add9_result[0]~0_combout\ = (\Mult0|auto_generated|mac_out6~dataout\ & (\Mult0|auto_generated|mac_out4~dataout\ $ (VCC))) # (!\Mult0|auto_generated|mac_out6~dataout\ & (\Mult0|auto_generated|mac_out4~dataout\ & VCC))
-- \Mult0|auto_generated|add9_result[0]~1\ = CARRY((\Mult0|auto_generated|mac_out6~dataout\ & \Mult0|auto_generated|mac_out4~dataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out6~dataout\,
	datab => \Mult0|auto_generated|mac_out4~dataout\,
	datad => VCC,
	combout => \Mult0|auto_generated|add9_result[0]~0_combout\,
	cout => \Mult0|auto_generated|add9_result[0]~1\);

-- Location: LCCOMB_X66_Y35_N2
\Mult0|auto_generated|op_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~0_combout\ = (\Mult0|auto_generated|add9_result[0]~0_combout\ & (\Mult0|auto_generated|mac_out2~DATAOUT18\ $ (VCC))) # (!\Mult0|auto_generated|add9_result[0]~0_combout\ & (\Mult0|auto_generated|mac_out2~DATAOUT18\ & VCC))
-- \Mult0|auto_generated|op_1~1\ = CARRY((\Mult0|auto_generated|add9_result[0]~0_combout\ & \Mult0|auto_generated|mac_out2~DATAOUT18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|add9_result[0]~0_combout\,
	datab => \Mult0|auto_generated|mac_out2~DATAOUT18\,
	datad => VCC,
	combout => \Mult0|auto_generated|op_1~0_combout\,
	cout => \Mult0|auto_generated|op_1~1\);

-- Location: LCCOMB_X62_Y36_N0
\Mux13~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux13~3_combout\ = (\Mux29~9_combout\ & ((\Mux13~2_combout\ & ((\Mult0|auto_generated|op_1~0_combout\))) # (!\Mux13~2_combout\ & (\Mult1|auto_generated|op_1~0_combout\)))) # (!\Mux29~9_combout\ & (((\Mux13~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~9_combout\,
	datab => \Mult1|auto_generated|op_1~0_combout\,
	datac => \Mux13~2_combout\,
	datad => \Mult0|auto_generated|op_1~0_combout\,
	combout => \Mux13~3_combout\);

-- Location: LCCOMB_X62_Y36_N26
\Mux13~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux13~4_combout\ = (\Mux13~3_combout\ & !\opsel[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux13~3_combout\,
	datad => \opsel[3]~input_o\,
	combout => \Mux13~4_combout\);

-- Location: LCCOMB_X47_Y35_N18
\Mult1|auto_generated|add9_result[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|add9_result[1]~2_combout\ = (\Mult1|auto_generated|mac_out4~DATAOUT1\ & ((\Mult1|auto_generated|mac_out6~DATAOUT1\ & (\Mult1|auto_generated|add9_result[0]~1\ & VCC)) # (!\Mult1|auto_generated|mac_out6~DATAOUT1\ & 
-- (!\Mult1|auto_generated|add9_result[0]~1\)))) # (!\Mult1|auto_generated|mac_out4~DATAOUT1\ & ((\Mult1|auto_generated|mac_out6~DATAOUT1\ & (!\Mult1|auto_generated|add9_result[0]~1\)) # (!\Mult1|auto_generated|mac_out6~DATAOUT1\ & 
-- ((\Mult1|auto_generated|add9_result[0]~1\) # (GND)))))
-- \Mult1|auto_generated|add9_result[1]~3\ = CARRY((\Mult1|auto_generated|mac_out4~DATAOUT1\ & (!\Mult1|auto_generated|mac_out6~DATAOUT1\ & !\Mult1|auto_generated|add9_result[0]~1\)) # (!\Mult1|auto_generated|mac_out4~DATAOUT1\ & 
-- ((!\Mult1|auto_generated|add9_result[0]~1\) # (!\Mult1|auto_generated|mac_out6~DATAOUT1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out4~DATAOUT1\,
	datab => \Mult1|auto_generated|mac_out6~DATAOUT1\,
	datad => VCC,
	cin => \Mult1|auto_generated|add9_result[0]~1\,
	combout => \Mult1|auto_generated|add9_result[1]~2_combout\,
	cout => \Mult1|auto_generated|add9_result[1]~3\);

-- Location: LCCOMB_X49_Y35_N4
\Mult1|auto_generated|op_1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_1~2_combout\ = (\Mult1|auto_generated|add9_result[1]~2_combout\ & ((\Mult1|auto_generated|mac_out2~DATAOUT19\ & (\Mult1|auto_generated|op_1~1\ & VCC)) # (!\Mult1|auto_generated|mac_out2~DATAOUT19\ & 
-- (!\Mult1|auto_generated|op_1~1\)))) # (!\Mult1|auto_generated|add9_result[1]~2_combout\ & ((\Mult1|auto_generated|mac_out2~DATAOUT19\ & (!\Mult1|auto_generated|op_1~1\)) # (!\Mult1|auto_generated|mac_out2~DATAOUT19\ & ((\Mult1|auto_generated|op_1~1\) # 
-- (GND)))))
-- \Mult1|auto_generated|op_1~3\ = CARRY((\Mult1|auto_generated|add9_result[1]~2_combout\ & (!\Mult1|auto_generated|mac_out2~DATAOUT19\ & !\Mult1|auto_generated|op_1~1\)) # (!\Mult1|auto_generated|add9_result[1]~2_combout\ & ((!\Mult1|auto_generated|op_1~1\) 
-- # (!\Mult1|auto_generated|mac_out2~DATAOUT19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|add9_result[1]~2_combout\,
	datab => \Mult1|auto_generated|mac_out2~DATAOUT19\,
	datad => VCC,
	cin => \Mult1|auto_generated|op_1~1\,
	combout => \Mult1|auto_generated|op_1~2_combout\,
	cout => \Mult1|auto_generated|op_1~3\);

-- Location: LCCOMB_X58_Y37_N12
\result~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \result~15_combout\ = (\b[19]~input_o\ & \a[19]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b[19]~input_o\,
	datad => \a[19]~input_o\,
	combout => \result~15_combout\);

-- Location: LCCOMB_X58_Y37_N6
\Mux12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (\Mux10~1_combout\ & (((\Mux10~0_combout\ & \ShiftRight0~50_combout\)))) # (!\Mux10~1_combout\ & ((\result~15_combout\) # ((!\Mux10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \result~15_combout\,
	datab => \Mux10~1_combout\,
	datac => \Mux10~0_combout\,
	datad => \ShiftRight0~50_combout\,
	combout => \Mux12~0_combout\);

-- Location: LCCOMB_X58_Y37_N16
\Mux12~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux12~1_combout\ = (\Mux12~0_combout\ & (((\ShiftRight1~48_combout\) # (!\opsel[1]~input_o\)))) # (!\Mux12~0_combout\ & (\a[31]~input_o\ & ((\opsel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~0_combout\,
	datab => \a[31]~input_o\,
	datac => \ShiftRight1~48_combout\,
	datad => \opsel[1]~input_o\,
	combout => \Mux12~1_combout\);

-- Location: LCCOMB_X60_Y37_N8
\Add0~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~59_combout\ = \opsel[0]~input_o\ $ (\b[19]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \opsel[0]~input_o\,
	datad => \b[19]~input_o\,
	combout => \Add0~59_combout\);

-- Location: LCCOMB_X61_Y36_N24
\Add0~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~60_combout\ = ((\Add0~59_combout\ $ (\a[19]~input_o\ $ (!\Add0~58\)))) # (GND)
-- \Add0~61\ = CARRY((\Add0~59_combout\ & ((\a[19]~input_o\) # (!\Add0~58\))) # (!\Add0~59_combout\ & (\a[19]~input_o\ & !\Add0~58\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~59_combout\,
	datab => \a[19]~input_o\,
	datad => VCC,
	cin => \Add0~58\,
	combout => \Add0~60_combout\,
	cout => \Add0~61\);

-- Location: LCCOMB_X62_Y35_N16
\Mux12~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux12~2_combout\ = (\Mux29~8_combout\ & (\Mux12~1_combout\ & ((\Mux10~2_combout\)))) # (!\Mux29~8_combout\ & (((\Add0~60_combout\) # (!\Mux10~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~1_combout\,
	datab => \Mux29~8_combout\,
	datac => \Add0~60_combout\,
	datad => \Mux10~2_combout\,
	combout => \Mux12~2_combout\);

-- Location: LCCOMB_X67_Y35_N4
\Mult0|auto_generated|add9_result[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|add9_result[1]~2_combout\ = (\Mult0|auto_generated|mac_out6~DATAOUT1\ & ((\Mult0|auto_generated|mac_out4~DATAOUT1\ & (\Mult0|auto_generated|add9_result[0]~1\ & VCC)) # (!\Mult0|auto_generated|mac_out4~DATAOUT1\ & 
-- (!\Mult0|auto_generated|add9_result[0]~1\)))) # (!\Mult0|auto_generated|mac_out6~DATAOUT1\ & ((\Mult0|auto_generated|mac_out4~DATAOUT1\ & (!\Mult0|auto_generated|add9_result[0]~1\)) # (!\Mult0|auto_generated|mac_out4~DATAOUT1\ & 
-- ((\Mult0|auto_generated|add9_result[0]~1\) # (GND)))))
-- \Mult0|auto_generated|add9_result[1]~3\ = CARRY((\Mult0|auto_generated|mac_out6~DATAOUT1\ & (!\Mult0|auto_generated|mac_out4~DATAOUT1\ & !\Mult0|auto_generated|add9_result[0]~1\)) # (!\Mult0|auto_generated|mac_out6~DATAOUT1\ & 
-- ((!\Mult0|auto_generated|add9_result[0]~1\) # (!\Mult0|auto_generated|mac_out4~DATAOUT1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out6~DATAOUT1\,
	datab => \Mult0|auto_generated|mac_out4~DATAOUT1\,
	datad => VCC,
	cin => \Mult0|auto_generated|add9_result[0]~1\,
	combout => \Mult0|auto_generated|add9_result[1]~2_combout\,
	cout => \Mult0|auto_generated|add9_result[1]~3\);

-- Location: LCCOMB_X66_Y35_N4
\Mult0|auto_generated|op_1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~2_combout\ = (\Mult0|auto_generated|add9_result[1]~2_combout\ & ((\Mult0|auto_generated|mac_out2~DATAOUT19\ & (\Mult0|auto_generated|op_1~1\ & VCC)) # (!\Mult0|auto_generated|mac_out2~DATAOUT19\ & 
-- (!\Mult0|auto_generated|op_1~1\)))) # (!\Mult0|auto_generated|add9_result[1]~2_combout\ & ((\Mult0|auto_generated|mac_out2~DATAOUT19\ & (!\Mult0|auto_generated|op_1~1\)) # (!\Mult0|auto_generated|mac_out2~DATAOUT19\ & ((\Mult0|auto_generated|op_1~1\) # 
-- (GND)))))
-- \Mult0|auto_generated|op_1~3\ = CARRY((\Mult0|auto_generated|add9_result[1]~2_combout\ & (!\Mult0|auto_generated|mac_out2~DATAOUT19\ & !\Mult0|auto_generated|op_1~1\)) # (!\Mult0|auto_generated|add9_result[1]~2_combout\ & ((!\Mult0|auto_generated|op_1~1\) 
-- # (!\Mult0|auto_generated|mac_out2~DATAOUT19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|add9_result[1]~2_combout\,
	datab => \Mult0|auto_generated|mac_out2~DATAOUT19\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~1\,
	combout => \Mult0|auto_generated|op_1~2_combout\,
	cout => \Mult0|auto_generated|op_1~3\);

-- Location: LCCOMB_X62_Y35_N10
\Mux12~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux12~3_combout\ = (\Mux12~2_combout\ & (((\Mult0|auto_generated|op_1~2_combout\) # (!\Mux29~9_combout\)))) # (!\Mux12~2_combout\ & (\Mult1|auto_generated|op_1~2_combout\ & (\Mux29~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|op_1~2_combout\,
	datab => \Mux12~2_combout\,
	datac => \Mux29~9_combout\,
	datad => \Mult0|auto_generated|op_1~2_combout\,
	combout => \Mux12~3_combout\);

-- Location: LCCOMB_X62_Y35_N4
\Mux12~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux12~4_combout\ = (!\opsel[3]~input_o\ & \Mux12~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \opsel[3]~input_o\,
	datad => \Mux12~3_combout\,
	combout => \Mux12~4_combout\);

-- Location: LCCOMB_X47_Y35_N20
\Mult1|auto_generated|add9_result[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|add9_result[2]~4_combout\ = ((\Mult1|auto_generated|mac_out4~DATAOUT2\ $ (\Mult1|auto_generated|mac_out6~DATAOUT2\ $ (!\Mult1|auto_generated|add9_result[1]~3\)))) # (GND)
-- \Mult1|auto_generated|add9_result[2]~5\ = CARRY((\Mult1|auto_generated|mac_out4~DATAOUT2\ & ((\Mult1|auto_generated|mac_out6~DATAOUT2\) # (!\Mult1|auto_generated|add9_result[1]~3\))) # (!\Mult1|auto_generated|mac_out4~DATAOUT2\ & 
-- (\Mult1|auto_generated|mac_out6~DATAOUT2\ & !\Mult1|auto_generated|add9_result[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out4~DATAOUT2\,
	datab => \Mult1|auto_generated|mac_out6~DATAOUT2\,
	datad => VCC,
	cin => \Mult1|auto_generated|add9_result[1]~3\,
	combout => \Mult1|auto_generated|add9_result[2]~4_combout\,
	cout => \Mult1|auto_generated|add9_result[2]~5\);

-- Location: LCCOMB_X49_Y35_N6
\Mult1|auto_generated|op_1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_1~4_combout\ = ((\Mult1|auto_generated|mac_out2~DATAOUT20\ $ (\Mult1|auto_generated|add9_result[2]~4_combout\ $ (!\Mult1|auto_generated|op_1~3\)))) # (GND)
-- \Mult1|auto_generated|op_1~5\ = CARRY((\Mult1|auto_generated|mac_out2~DATAOUT20\ & ((\Mult1|auto_generated|add9_result[2]~4_combout\) # (!\Mult1|auto_generated|op_1~3\))) # (!\Mult1|auto_generated|mac_out2~DATAOUT20\ & 
-- (\Mult1|auto_generated|add9_result[2]~4_combout\ & !\Mult1|auto_generated|op_1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out2~DATAOUT20\,
	datab => \Mult1|auto_generated|add9_result[2]~4_combout\,
	datad => VCC,
	cin => \Mult1|auto_generated|op_1~3\,
	combout => \Mult1|auto_generated|op_1~4_combout\,
	cout => \Mult1|auto_generated|op_1~5\);

-- Location: LCCOMB_X67_Y35_N6
\Mult0|auto_generated|add9_result[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|add9_result[2]~4_combout\ = ((\Mult0|auto_generated|mac_out4~DATAOUT2\ $ (\Mult0|auto_generated|mac_out6~DATAOUT2\ $ (!\Mult0|auto_generated|add9_result[1]~3\)))) # (GND)
-- \Mult0|auto_generated|add9_result[2]~5\ = CARRY((\Mult0|auto_generated|mac_out4~DATAOUT2\ & ((\Mult0|auto_generated|mac_out6~DATAOUT2\) # (!\Mult0|auto_generated|add9_result[1]~3\))) # (!\Mult0|auto_generated|mac_out4~DATAOUT2\ & 
-- (\Mult0|auto_generated|mac_out6~DATAOUT2\ & !\Mult0|auto_generated|add9_result[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out4~DATAOUT2\,
	datab => \Mult0|auto_generated|mac_out6~DATAOUT2\,
	datad => VCC,
	cin => \Mult0|auto_generated|add9_result[1]~3\,
	combout => \Mult0|auto_generated|add9_result[2]~4_combout\,
	cout => \Mult0|auto_generated|add9_result[2]~5\);

-- Location: LCCOMB_X66_Y35_N6
\Mult0|auto_generated|op_1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~4_combout\ = ((\Mult0|auto_generated|add9_result[2]~4_combout\ $ (\Mult0|auto_generated|mac_out2~DATAOUT20\ $ (!\Mult0|auto_generated|op_1~3\)))) # (GND)
-- \Mult0|auto_generated|op_1~5\ = CARRY((\Mult0|auto_generated|add9_result[2]~4_combout\ & ((\Mult0|auto_generated|mac_out2~DATAOUT20\) # (!\Mult0|auto_generated|op_1~3\))) # (!\Mult0|auto_generated|add9_result[2]~4_combout\ & 
-- (\Mult0|auto_generated|mac_out2~DATAOUT20\ & !\Mult0|auto_generated|op_1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|add9_result[2]~4_combout\,
	datab => \Mult0|auto_generated|mac_out2~DATAOUT20\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~3\,
	combout => \Mult0|auto_generated|op_1~4_combout\,
	cout => \Mult0|auto_generated|op_1~5\);

-- Location: LCCOMB_X60_Y36_N6
\Add0~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~62_combout\ = \opsel[0]~input_o\ $ (\b[20]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opsel[0]~input_o\,
	datac => \b[20]~input_o\,
	combout => \Add0~62_combout\);

-- Location: LCCOMB_X61_Y36_N26
\Add0~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~63_combout\ = (\a[20]~input_o\ & ((\Add0~62_combout\ & (\Add0~61\ & VCC)) # (!\Add0~62_combout\ & (!\Add0~61\)))) # (!\a[20]~input_o\ & ((\Add0~62_combout\ & (!\Add0~61\)) # (!\Add0~62_combout\ & ((\Add0~61\) # (GND)))))
-- \Add0~64\ = CARRY((\a[20]~input_o\ & (!\Add0~62_combout\ & !\Add0~61\)) # (!\a[20]~input_o\ & ((!\Add0~61\) # (!\Add0~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[20]~input_o\,
	datab => \Add0~62_combout\,
	datad => VCC,
	cin => \Add0~61\,
	combout => \Add0~63_combout\,
	cout => \Add0~64\);

-- Location: LCCOMB_X58_Y37_N2
\result~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \result~16_combout\ = (\b[20]~input_o\ & \a[20]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b[20]~input_o\,
	datad => \a[20]~input_o\,
	combout => \result~16_combout\);

-- Location: LCCOMB_X58_Y37_N4
\Mux11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (\Mux10~1_combout\ & (!\ShiftRight0~53_combout\ & (\Mux10~0_combout\))) # (!\Mux10~1_combout\ & (((\result~16_combout\) # (!\Mux10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~53_combout\,
	datab => \Mux10~1_combout\,
	datac => \Mux10~0_combout\,
	datad => \result~16_combout\,
	combout => \Mux11~0_combout\);

-- Location: LCCOMB_X58_Y37_N14
\Mux11~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux11~1_combout\ = (\Mux11~0_combout\ & ((\ShiftRight1~58_combout\) # ((!\opsel[1]~input_o\)))) # (!\Mux11~0_combout\ & (((\a[31]~input_o\ & \opsel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~58_combout\,
	datab => \Mux11~0_combout\,
	datac => \a[31]~input_o\,
	datad => \opsel[1]~input_o\,
	combout => \Mux11~1_combout\);

-- Location: LCCOMB_X62_Y36_N20
\Mux11~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux11~2_combout\ = (\Mux29~8_combout\ & (((\Mux10~2_combout\ & \Mux11~1_combout\)))) # (!\Mux29~8_combout\ & ((\Add0~63_combout\) # ((!\Mux10~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~63_combout\,
	datab => \Mux29~8_combout\,
	datac => \Mux10~2_combout\,
	datad => \Mux11~1_combout\,
	combout => \Mux11~2_combout\);

-- Location: LCCOMB_X62_Y36_N22
\Mux11~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux11~3_combout\ = (\Mux29~9_combout\ & ((\Mux11~2_combout\ & ((\Mult0|auto_generated|op_1~4_combout\))) # (!\Mux11~2_combout\ & (\Mult1|auto_generated|op_1~4_combout\)))) # (!\Mux29~9_combout\ & (((\Mux11~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~9_combout\,
	datab => \Mult1|auto_generated|op_1~4_combout\,
	datac => \Mult0|auto_generated|op_1~4_combout\,
	datad => \Mux11~2_combout\,
	combout => \Mux11~3_combout\);

-- Location: LCCOMB_X62_Y36_N24
\Mux11~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux11~4_combout\ = (\Mux11~3_combout\ & !\opsel[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux11~3_combout\,
	datad => \opsel[3]~input_o\,
	combout => \Mux11~4_combout\);

-- Location: LCCOMB_X55_Y38_N14
\result~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \result~17_combout\ = (\a[21]~input_o\ & \b[21]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a[21]~input_o\,
	datad => \b[21]~input_o\,
	combout => \result~17_combout\);

-- Location: LCCOMB_X56_Y38_N18
\Mux10~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux10~3_combout\ = (\Mux10~1_combout\ & (\ShiftRight0~57_combout\ & (\Mux10~0_combout\))) # (!\Mux10~1_combout\ & (((\result~17_combout\) # (!\Mux10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~57_combout\,
	datab => \Mux10~1_combout\,
	datac => \Mux10~0_combout\,
	datad => \result~17_combout\,
	combout => \Mux10~3_combout\);

-- Location: LCCOMB_X58_Y39_N10
\Mux10~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux10~4_combout\ = (\Mux10~3_combout\ & (((\ShiftRight1~53_combout\) # (!\opsel[1]~input_o\)))) # (!\Mux10~3_combout\ & (\a[31]~input_o\ & (\opsel[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[31]~input_o\,
	datab => \Mux10~3_combout\,
	datac => \opsel[1]~input_o\,
	datad => \ShiftRight1~53_combout\,
	combout => \Mux10~4_combout\);

-- Location: LCCOMB_X55_Y38_N8
\Add0~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~65_combout\ = \opsel[0]~input_o\ $ (\b[21]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \opsel[0]~input_o\,
	datad => \b[21]~input_o\,
	combout => \Add0~65_combout\);

-- Location: LCCOMB_X61_Y36_N28
\Add0~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~66_combout\ = ((\a[21]~input_o\ $ (\Add0~65_combout\ $ (!\Add0~64\)))) # (GND)
-- \Add0~67\ = CARRY((\a[21]~input_o\ & ((\Add0~65_combout\) # (!\Add0~64\))) # (!\a[21]~input_o\ & (\Add0~65_combout\ & !\Add0~64\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[21]~input_o\,
	datab => \Add0~65_combout\,
	datad => VCC,
	cin => \Add0~64\,
	combout => \Add0~66_combout\,
	cout => \Add0~67\);

-- Location: LCCOMB_X62_Y36_N10
\Mux10~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux10~5_combout\ = (\Mux10~2_combout\ & ((\Mux29~8_combout\ & (\Mux10~4_combout\)) # (!\Mux29~8_combout\ & ((\Add0~66_combout\))))) # (!\Mux10~2_combout\ & (((!\Mux29~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~4_combout\,
	datab => \Mux10~2_combout\,
	datac => \Mux29~8_combout\,
	datad => \Add0~66_combout\,
	combout => \Mux10~5_combout\);

-- Location: LCCOMB_X67_Y35_N8
\Mult0|auto_generated|add9_result[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|add9_result[3]~6_combout\ = (\Mult0|auto_generated|mac_out6~DATAOUT3\ & ((\Mult0|auto_generated|mac_out4~DATAOUT3\ & (\Mult0|auto_generated|add9_result[2]~5\ & VCC)) # (!\Mult0|auto_generated|mac_out4~DATAOUT3\ & 
-- (!\Mult0|auto_generated|add9_result[2]~5\)))) # (!\Mult0|auto_generated|mac_out6~DATAOUT3\ & ((\Mult0|auto_generated|mac_out4~DATAOUT3\ & (!\Mult0|auto_generated|add9_result[2]~5\)) # (!\Mult0|auto_generated|mac_out4~DATAOUT3\ & 
-- ((\Mult0|auto_generated|add9_result[2]~5\) # (GND)))))
-- \Mult0|auto_generated|add9_result[3]~7\ = CARRY((\Mult0|auto_generated|mac_out6~DATAOUT3\ & (!\Mult0|auto_generated|mac_out4~DATAOUT3\ & !\Mult0|auto_generated|add9_result[2]~5\)) # (!\Mult0|auto_generated|mac_out6~DATAOUT3\ & 
-- ((!\Mult0|auto_generated|add9_result[2]~5\) # (!\Mult0|auto_generated|mac_out4~DATAOUT3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out6~DATAOUT3\,
	datab => \Mult0|auto_generated|mac_out4~DATAOUT3\,
	datad => VCC,
	cin => \Mult0|auto_generated|add9_result[2]~5\,
	combout => \Mult0|auto_generated|add9_result[3]~6_combout\,
	cout => \Mult0|auto_generated|add9_result[3]~7\);

-- Location: LCCOMB_X66_Y35_N8
\Mult0|auto_generated|op_1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~6_combout\ = (\Mult0|auto_generated|add9_result[3]~6_combout\ & ((\Mult0|auto_generated|mac_out2~DATAOUT21\ & (\Mult0|auto_generated|op_1~5\ & VCC)) # (!\Mult0|auto_generated|mac_out2~DATAOUT21\ & 
-- (!\Mult0|auto_generated|op_1~5\)))) # (!\Mult0|auto_generated|add9_result[3]~6_combout\ & ((\Mult0|auto_generated|mac_out2~DATAOUT21\ & (!\Mult0|auto_generated|op_1~5\)) # (!\Mult0|auto_generated|mac_out2~DATAOUT21\ & ((\Mult0|auto_generated|op_1~5\) # 
-- (GND)))))
-- \Mult0|auto_generated|op_1~7\ = CARRY((\Mult0|auto_generated|add9_result[3]~6_combout\ & (!\Mult0|auto_generated|mac_out2~DATAOUT21\ & !\Mult0|auto_generated|op_1~5\)) # (!\Mult0|auto_generated|add9_result[3]~6_combout\ & ((!\Mult0|auto_generated|op_1~5\) 
-- # (!\Mult0|auto_generated|mac_out2~DATAOUT21\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|add9_result[3]~6_combout\,
	datab => \Mult0|auto_generated|mac_out2~DATAOUT21\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~5\,
	combout => \Mult0|auto_generated|op_1~6_combout\,
	cout => \Mult0|auto_generated|op_1~7\);

-- Location: LCCOMB_X47_Y35_N22
\Mult1|auto_generated|add9_result[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|add9_result[3]~6_combout\ = (\Mult1|auto_generated|mac_out6~DATAOUT3\ & ((\Mult1|auto_generated|mac_out4~DATAOUT3\ & (\Mult1|auto_generated|add9_result[2]~5\ & VCC)) # (!\Mult1|auto_generated|mac_out4~DATAOUT3\ & 
-- (!\Mult1|auto_generated|add9_result[2]~5\)))) # (!\Mult1|auto_generated|mac_out6~DATAOUT3\ & ((\Mult1|auto_generated|mac_out4~DATAOUT3\ & (!\Mult1|auto_generated|add9_result[2]~5\)) # (!\Mult1|auto_generated|mac_out4~DATAOUT3\ & 
-- ((\Mult1|auto_generated|add9_result[2]~5\) # (GND)))))
-- \Mult1|auto_generated|add9_result[3]~7\ = CARRY((\Mult1|auto_generated|mac_out6~DATAOUT3\ & (!\Mult1|auto_generated|mac_out4~DATAOUT3\ & !\Mult1|auto_generated|add9_result[2]~5\)) # (!\Mult1|auto_generated|mac_out6~DATAOUT3\ & 
-- ((!\Mult1|auto_generated|add9_result[2]~5\) # (!\Mult1|auto_generated|mac_out4~DATAOUT3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out6~DATAOUT3\,
	datab => \Mult1|auto_generated|mac_out4~DATAOUT3\,
	datad => VCC,
	cin => \Mult1|auto_generated|add9_result[2]~5\,
	combout => \Mult1|auto_generated|add9_result[3]~6_combout\,
	cout => \Mult1|auto_generated|add9_result[3]~7\);

-- Location: LCCOMB_X49_Y35_N8
\Mult1|auto_generated|op_1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_1~6_combout\ = (\Mult1|auto_generated|mac_out2~DATAOUT21\ & ((\Mult1|auto_generated|add9_result[3]~6_combout\ & (\Mult1|auto_generated|op_1~5\ & VCC)) # (!\Mult1|auto_generated|add9_result[3]~6_combout\ & 
-- (!\Mult1|auto_generated|op_1~5\)))) # (!\Mult1|auto_generated|mac_out2~DATAOUT21\ & ((\Mult1|auto_generated|add9_result[3]~6_combout\ & (!\Mult1|auto_generated|op_1~5\)) # (!\Mult1|auto_generated|add9_result[3]~6_combout\ & 
-- ((\Mult1|auto_generated|op_1~5\) # (GND)))))
-- \Mult1|auto_generated|op_1~7\ = CARRY((\Mult1|auto_generated|mac_out2~DATAOUT21\ & (!\Mult1|auto_generated|add9_result[3]~6_combout\ & !\Mult1|auto_generated|op_1~5\)) # (!\Mult1|auto_generated|mac_out2~DATAOUT21\ & ((!\Mult1|auto_generated|op_1~5\) # 
-- (!\Mult1|auto_generated|add9_result[3]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out2~DATAOUT21\,
	datab => \Mult1|auto_generated|add9_result[3]~6_combout\,
	datad => VCC,
	cin => \Mult1|auto_generated|op_1~5\,
	combout => \Mult1|auto_generated|op_1~6_combout\,
	cout => \Mult1|auto_generated|op_1~7\);

-- Location: LCCOMB_X66_Y35_N0
\Mux10~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux10~6_combout\ = (\Mux10~5_combout\ & (((\Mult0|auto_generated|op_1~6_combout\)) # (!\Mux29~9_combout\))) # (!\Mux10~5_combout\ & (\Mux29~9_combout\ & ((\Mult1|auto_generated|op_1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~5_combout\,
	datab => \Mux29~9_combout\,
	datac => \Mult0|auto_generated|op_1~6_combout\,
	datad => \Mult1|auto_generated|op_1~6_combout\,
	combout => \Mux10~6_combout\);

-- Location: LCCOMB_X64_Y38_N20
\Mux10~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux10~7_combout\ = (\Mux10~6_combout\ & !\opsel[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~6_combout\,
	datad => \opsel[3]~input_o\,
	combout => \Mux10~7_combout\);

-- Location: LCCOMB_X47_Y35_N24
\Mult1|auto_generated|add9_result[4]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|add9_result[4]~8_combout\ = ((\Mult1|auto_generated|mac_out4~DATAOUT4\ $ (\Mult1|auto_generated|mac_out6~DATAOUT4\ $ (!\Mult1|auto_generated|add9_result[3]~7\)))) # (GND)
-- \Mult1|auto_generated|add9_result[4]~9\ = CARRY((\Mult1|auto_generated|mac_out4~DATAOUT4\ & ((\Mult1|auto_generated|mac_out6~DATAOUT4\) # (!\Mult1|auto_generated|add9_result[3]~7\))) # (!\Mult1|auto_generated|mac_out4~DATAOUT4\ & 
-- (\Mult1|auto_generated|mac_out6~DATAOUT4\ & !\Mult1|auto_generated|add9_result[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out4~DATAOUT4\,
	datab => \Mult1|auto_generated|mac_out6~DATAOUT4\,
	datad => VCC,
	cin => \Mult1|auto_generated|add9_result[3]~7\,
	combout => \Mult1|auto_generated|add9_result[4]~8_combout\,
	cout => \Mult1|auto_generated|add9_result[4]~9\);

-- Location: LCCOMB_X49_Y35_N10
\Mult1|auto_generated|op_1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_1~8_combout\ = ((\Mult1|auto_generated|add9_result[4]~8_combout\ $ (\Mult1|auto_generated|mac_out2~DATAOUT22\ $ (!\Mult1|auto_generated|op_1~7\)))) # (GND)
-- \Mult1|auto_generated|op_1~9\ = CARRY((\Mult1|auto_generated|add9_result[4]~8_combout\ & ((\Mult1|auto_generated|mac_out2~DATAOUT22\) # (!\Mult1|auto_generated|op_1~7\))) # (!\Mult1|auto_generated|add9_result[4]~8_combout\ & 
-- (\Mult1|auto_generated|mac_out2~DATAOUT22\ & !\Mult1|auto_generated|op_1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|add9_result[4]~8_combout\,
	datab => \Mult1|auto_generated|mac_out2~DATAOUT22\,
	datad => VCC,
	cin => \Mult1|auto_generated|op_1~7\,
	combout => \Mult1|auto_generated|op_1~8_combout\,
	cout => \Mult1|auto_generated|op_1~9\);

-- Location: LCCOMB_X58_Y35_N6
\result~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \result~18_combout\ = (\a[22]~input_o\ & \b[22]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[22]~input_o\,
	datad => \b[22]~input_o\,
	combout => \result~18_combout\);

-- Location: LCCOMB_X58_Y35_N16
\Mux9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (\Mux10~1_combout\ & (((\ShiftRight0~61_combout\ & \Mux10~0_combout\)))) # (!\Mux10~1_combout\ & ((\result~18_combout\) # ((!\Mux10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \result~18_combout\,
	datab => \Mux10~1_combout\,
	datac => \ShiftRight0~61_combout\,
	datad => \Mux10~0_combout\,
	combout => \Mux9~0_combout\);

-- Location: LCCOMB_X58_Y35_N18
\Mux9~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux9~1_combout\ = (\Mux9~0_combout\ & (((\ShiftRight1~55_combout\) # (!\opsel[1]~input_o\)))) # (!\Mux9~0_combout\ & (\a[31]~input_o\ & (\opsel[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[31]~input_o\,
	datab => \Mux9~0_combout\,
	datac => \opsel[1]~input_o\,
	datad => \ShiftRight1~55_combout\,
	combout => \Mux9~1_combout\);

-- Location: LCCOMB_X58_Y35_N12
\Add0~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~68_combout\ = \b[22]~input_o\ $ (\opsel[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[22]~input_o\,
	datad => \opsel[0]~input_o\,
	combout => \Add0~68_combout\);

-- Location: LCCOMB_X61_Y36_N30
\Add0~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~69_combout\ = (\Add0~68_combout\ & ((\a[22]~input_o\ & (\Add0~67\ & VCC)) # (!\a[22]~input_o\ & (!\Add0~67\)))) # (!\Add0~68_combout\ & ((\a[22]~input_o\ & (!\Add0~67\)) # (!\a[22]~input_o\ & ((\Add0~67\) # (GND)))))
-- \Add0~70\ = CARRY((\Add0~68_combout\ & (!\a[22]~input_o\ & !\Add0~67\)) # (!\Add0~68_combout\ & ((!\Add0~67\) # (!\a[22]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~68_combout\,
	datab => \a[22]~input_o\,
	datad => VCC,
	cin => \Add0~67\,
	combout => \Add0~69_combout\,
	cout => \Add0~70\);

-- Location: LCCOMB_X59_Y35_N20
\Mux9~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux9~2_combout\ = (\Mux10~2_combout\ & ((\Mux29~8_combout\ & (\Mux9~1_combout\)) # (!\Mux29~8_combout\ & ((\Add0~69_combout\))))) # (!\Mux10~2_combout\ & (((!\Mux29~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux9~1_combout\,
	datab => \Add0~69_combout\,
	datac => \Mux10~2_combout\,
	datad => \Mux29~8_combout\,
	combout => \Mux9~2_combout\);

-- Location: LCCOMB_X67_Y35_N10
\Mult0|auto_generated|add9_result[4]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|add9_result[4]~8_combout\ = ((\Mult0|auto_generated|mac_out4~DATAOUT4\ $ (\Mult0|auto_generated|mac_out6~DATAOUT4\ $ (!\Mult0|auto_generated|add9_result[3]~7\)))) # (GND)
-- \Mult0|auto_generated|add9_result[4]~9\ = CARRY((\Mult0|auto_generated|mac_out4~DATAOUT4\ & ((\Mult0|auto_generated|mac_out6~DATAOUT4\) # (!\Mult0|auto_generated|add9_result[3]~7\))) # (!\Mult0|auto_generated|mac_out4~DATAOUT4\ & 
-- (\Mult0|auto_generated|mac_out6~DATAOUT4\ & !\Mult0|auto_generated|add9_result[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out4~DATAOUT4\,
	datab => \Mult0|auto_generated|mac_out6~DATAOUT4\,
	datad => VCC,
	cin => \Mult0|auto_generated|add9_result[3]~7\,
	combout => \Mult0|auto_generated|add9_result[4]~8_combout\,
	cout => \Mult0|auto_generated|add9_result[4]~9\);

-- Location: LCCOMB_X66_Y35_N10
\Mult0|auto_generated|op_1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~8_combout\ = ((\Mult0|auto_generated|mac_out2~DATAOUT22\ $ (\Mult0|auto_generated|add9_result[4]~8_combout\ $ (!\Mult0|auto_generated|op_1~7\)))) # (GND)
-- \Mult0|auto_generated|op_1~9\ = CARRY((\Mult0|auto_generated|mac_out2~DATAOUT22\ & ((\Mult0|auto_generated|add9_result[4]~8_combout\) # (!\Mult0|auto_generated|op_1~7\))) # (!\Mult0|auto_generated|mac_out2~DATAOUT22\ & 
-- (\Mult0|auto_generated|add9_result[4]~8_combout\ & !\Mult0|auto_generated|op_1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT22\,
	datab => \Mult0|auto_generated|add9_result[4]~8_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~7\,
	combout => \Mult0|auto_generated|op_1~8_combout\,
	cout => \Mult0|auto_generated|op_1~9\);

-- Location: LCCOMB_X59_Y35_N30
\Mux9~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux9~3_combout\ = (\Mux9~2_combout\ & (((\Mult0|auto_generated|op_1~8_combout\) # (!\Mux29~9_combout\)))) # (!\Mux9~2_combout\ & (\Mult1|auto_generated|op_1~8_combout\ & (\Mux29~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|op_1~8_combout\,
	datab => \Mux9~2_combout\,
	datac => \Mux29~9_combout\,
	datad => \Mult0|auto_generated|op_1~8_combout\,
	combout => \Mux9~3_combout\);

-- Location: LCCOMB_X59_Y35_N16
\Mux9~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux9~4_combout\ = (\Mux9~3_combout\ & !\opsel[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux9~3_combout\,
	datad => \opsel[3]~input_o\,
	combout => \Mux9~4_combout\);

-- Location: LCCOMB_X58_Y35_N22
\result~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \result~19_combout\ = (\a[23]~input_o\ & \b[23]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[23]~input_o\,
	datac => \b[23]~input_o\,
	combout => \result~19_combout\);

-- Location: LCCOMB_X58_Y35_N0
\Mux8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (\Mux10~0_combout\ & ((\Mux10~1_combout\ & ((\ShiftRight0~64_combout\))) # (!\Mux10~1_combout\ & (\result~19_combout\)))) # (!\Mux10~0_combout\ & (!\Mux10~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~0_combout\,
	datab => \Mux10~1_combout\,
	datac => \result~19_combout\,
	datad => \ShiftRight0~64_combout\,
	combout => \Mux8~0_combout\);

-- Location: LCCOMB_X58_Y35_N10
\Mux8~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux8~1_combout\ = (\opsel[1]~input_o\ & ((\Mux8~0_combout\ & ((\ShiftRight1~59_combout\))) # (!\Mux8~0_combout\ & (\a[31]~input_o\)))) # (!\opsel[1]~input_o\ & (((\Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[31]~input_o\,
	datab => \ShiftRight1~59_combout\,
	datac => \opsel[1]~input_o\,
	datad => \Mux8~0_combout\,
	combout => \Mux8~1_combout\);

-- Location: LCCOMB_X61_Y35_N18
\Add0~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~71_combout\ = \b[23]~input_o\ $ (\opsel[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[23]~input_o\,
	datad => \opsel[0]~input_o\,
	combout => \Add0~71_combout\);

-- Location: LCCOMB_X61_Y35_N0
\Add0~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~72_combout\ = ((\a[23]~input_o\ $ (\Add0~71_combout\ $ (!\Add0~70\)))) # (GND)
-- \Add0~73\ = CARRY((\a[23]~input_o\ & ((\Add0~71_combout\) # (!\Add0~70\))) # (!\a[23]~input_o\ & (\Add0~71_combout\ & !\Add0~70\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[23]~input_o\,
	datab => \Add0~71_combout\,
	datad => VCC,
	cin => \Add0~70\,
	combout => \Add0~72_combout\,
	cout => \Add0~73\);

-- Location: LCCOMB_X62_Y35_N22
\Mux8~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux8~2_combout\ = (\Mux10~2_combout\ & ((\Mux29~8_combout\ & (\Mux8~1_combout\)) # (!\Mux29~8_combout\ & ((\Add0~72_combout\))))) # (!\Mux10~2_combout\ & (((!\Mux29~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~2_combout\,
	datab => \Mux8~1_combout\,
	datac => \Add0~72_combout\,
	datad => \Mux29~8_combout\,
	combout => \Mux8~2_combout\);

-- Location: LCCOMB_X47_Y35_N26
\Mult1|auto_generated|add9_result[5]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|add9_result[5]~10_combout\ = (\Mult1|auto_generated|mac_out6~DATAOUT5\ & ((\Mult1|auto_generated|mac_out4~DATAOUT5\ & (\Mult1|auto_generated|add9_result[4]~9\ & VCC)) # (!\Mult1|auto_generated|mac_out4~DATAOUT5\ & 
-- (!\Mult1|auto_generated|add9_result[4]~9\)))) # (!\Mult1|auto_generated|mac_out6~DATAOUT5\ & ((\Mult1|auto_generated|mac_out4~DATAOUT5\ & (!\Mult1|auto_generated|add9_result[4]~9\)) # (!\Mult1|auto_generated|mac_out4~DATAOUT5\ & 
-- ((\Mult1|auto_generated|add9_result[4]~9\) # (GND)))))
-- \Mult1|auto_generated|add9_result[5]~11\ = CARRY((\Mult1|auto_generated|mac_out6~DATAOUT5\ & (!\Mult1|auto_generated|mac_out4~DATAOUT5\ & !\Mult1|auto_generated|add9_result[4]~9\)) # (!\Mult1|auto_generated|mac_out6~DATAOUT5\ & 
-- ((!\Mult1|auto_generated|add9_result[4]~9\) # (!\Mult1|auto_generated|mac_out4~DATAOUT5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out6~DATAOUT5\,
	datab => \Mult1|auto_generated|mac_out4~DATAOUT5\,
	datad => VCC,
	cin => \Mult1|auto_generated|add9_result[4]~9\,
	combout => \Mult1|auto_generated|add9_result[5]~10_combout\,
	cout => \Mult1|auto_generated|add9_result[5]~11\);

-- Location: LCCOMB_X49_Y35_N12
\Mult1|auto_generated|op_1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_1~10_combout\ = (\Mult1|auto_generated|mac_out2~DATAOUT23\ & ((\Mult1|auto_generated|add9_result[5]~10_combout\ & (\Mult1|auto_generated|op_1~9\ & VCC)) # (!\Mult1|auto_generated|add9_result[5]~10_combout\ & 
-- (!\Mult1|auto_generated|op_1~9\)))) # (!\Mult1|auto_generated|mac_out2~DATAOUT23\ & ((\Mult1|auto_generated|add9_result[5]~10_combout\ & (!\Mult1|auto_generated|op_1~9\)) # (!\Mult1|auto_generated|add9_result[5]~10_combout\ & 
-- ((\Mult1|auto_generated|op_1~9\) # (GND)))))
-- \Mult1|auto_generated|op_1~11\ = CARRY((\Mult1|auto_generated|mac_out2~DATAOUT23\ & (!\Mult1|auto_generated|add9_result[5]~10_combout\ & !\Mult1|auto_generated|op_1~9\)) # (!\Mult1|auto_generated|mac_out2~DATAOUT23\ & ((!\Mult1|auto_generated|op_1~9\) # 
-- (!\Mult1|auto_generated|add9_result[5]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out2~DATAOUT23\,
	datab => \Mult1|auto_generated|add9_result[5]~10_combout\,
	datad => VCC,
	cin => \Mult1|auto_generated|op_1~9\,
	combout => \Mult1|auto_generated|op_1~10_combout\,
	cout => \Mult1|auto_generated|op_1~11\);

-- Location: LCCOMB_X67_Y35_N12
\Mult0|auto_generated|add9_result[5]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|add9_result[5]~10_combout\ = (\Mult0|auto_generated|mac_out4~DATAOUT5\ & ((\Mult0|auto_generated|mac_out6~DATAOUT5\ & (\Mult0|auto_generated|add9_result[4]~9\ & VCC)) # (!\Mult0|auto_generated|mac_out6~DATAOUT5\ & 
-- (!\Mult0|auto_generated|add9_result[4]~9\)))) # (!\Mult0|auto_generated|mac_out4~DATAOUT5\ & ((\Mult0|auto_generated|mac_out6~DATAOUT5\ & (!\Mult0|auto_generated|add9_result[4]~9\)) # (!\Mult0|auto_generated|mac_out6~DATAOUT5\ & 
-- ((\Mult0|auto_generated|add9_result[4]~9\) # (GND)))))
-- \Mult0|auto_generated|add9_result[5]~11\ = CARRY((\Mult0|auto_generated|mac_out4~DATAOUT5\ & (!\Mult0|auto_generated|mac_out6~DATAOUT5\ & !\Mult0|auto_generated|add9_result[4]~9\)) # (!\Mult0|auto_generated|mac_out4~DATAOUT5\ & 
-- ((!\Mult0|auto_generated|add9_result[4]~9\) # (!\Mult0|auto_generated|mac_out6~DATAOUT5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out4~DATAOUT5\,
	datab => \Mult0|auto_generated|mac_out6~DATAOUT5\,
	datad => VCC,
	cin => \Mult0|auto_generated|add9_result[4]~9\,
	combout => \Mult0|auto_generated|add9_result[5]~10_combout\,
	cout => \Mult0|auto_generated|add9_result[5]~11\);

-- Location: LCCOMB_X66_Y35_N12
\Mult0|auto_generated|op_1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~10_combout\ = (\Mult0|auto_generated|mac_out2~DATAOUT23\ & ((\Mult0|auto_generated|add9_result[5]~10_combout\ & (\Mult0|auto_generated|op_1~9\ & VCC)) # (!\Mult0|auto_generated|add9_result[5]~10_combout\ & 
-- (!\Mult0|auto_generated|op_1~9\)))) # (!\Mult0|auto_generated|mac_out2~DATAOUT23\ & ((\Mult0|auto_generated|add9_result[5]~10_combout\ & (!\Mult0|auto_generated|op_1~9\)) # (!\Mult0|auto_generated|add9_result[5]~10_combout\ & 
-- ((\Mult0|auto_generated|op_1~9\) # (GND)))))
-- \Mult0|auto_generated|op_1~11\ = CARRY((\Mult0|auto_generated|mac_out2~DATAOUT23\ & (!\Mult0|auto_generated|add9_result[5]~10_combout\ & !\Mult0|auto_generated|op_1~9\)) # (!\Mult0|auto_generated|mac_out2~DATAOUT23\ & ((!\Mult0|auto_generated|op_1~9\) # 
-- (!\Mult0|auto_generated|add9_result[5]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT23\,
	datab => \Mult0|auto_generated|add9_result[5]~10_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~9\,
	combout => \Mult0|auto_generated|op_1~10_combout\,
	cout => \Mult0|auto_generated|op_1~11\);

-- Location: LCCOMB_X62_Y35_N8
\Mux8~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux8~3_combout\ = (\Mux8~2_combout\ & (((\Mult0|auto_generated|op_1~10_combout\) # (!\Mux29~9_combout\)))) # (!\Mux8~2_combout\ & (\Mult1|auto_generated|op_1~10_combout\ & (\Mux29~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~2_combout\,
	datab => \Mult1|auto_generated|op_1~10_combout\,
	datac => \Mux29~9_combout\,
	datad => \Mult0|auto_generated|op_1~10_combout\,
	combout => \Mux8~3_combout\);

-- Location: LCCOMB_X62_Y35_N18
\Mux8~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux8~4_combout\ = (\Mux8~3_combout\ & !\opsel[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux8~3_combout\,
	datac => \opsel[3]~input_o\,
	combout => \Mux8~4_combout\);

-- Location: LCCOMB_X47_Y35_N28
\Mult1|auto_generated|add9_result[6]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|add9_result[6]~12_combout\ = ((\Mult1|auto_generated|mac_out6~DATAOUT6\ $ (\Mult1|auto_generated|mac_out4~DATAOUT6\ $ (!\Mult1|auto_generated|add9_result[5]~11\)))) # (GND)
-- \Mult1|auto_generated|add9_result[6]~13\ = CARRY((\Mult1|auto_generated|mac_out6~DATAOUT6\ & ((\Mult1|auto_generated|mac_out4~DATAOUT6\) # (!\Mult1|auto_generated|add9_result[5]~11\))) # (!\Mult1|auto_generated|mac_out6~DATAOUT6\ & 
-- (\Mult1|auto_generated|mac_out4~DATAOUT6\ & !\Mult1|auto_generated|add9_result[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out6~DATAOUT6\,
	datab => \Mult1|auto_generated|mac_out4~DATAOUT6\,
	datad => VCC,
	cin => \Mult1|auto_generated|add9_result[5]~11\,
	combout => \Mult1|auto_generated|add9_result[6]~12_combout\,
	cout => \Mult1|auto_generated|add9_result[6]~13\);

-- Location: LCCOMB_X49_Y35_N14
\Mult1|auto_generated|op_1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_1~12_combout\ = ((\Mult1|auto_generated|mac_out2~DATAOUT24\ $ (\Mult1|auto_generated|add9_result[6]~12_combout\ $ (!\Mult1|auto_generated|op_1~11\)))) # (GND)
-- \Mult1|auto_generated|op_1~13\ = CARRY((\Mult1|auto_generated|mac_out2~DATAOUT24\ & ((\Mult1|auto_generated|add9_result[6]~12_combout\) # (!\Mult1|auto_generated|op_1~11\))) # (!\Mult1|auto_generated|mac_out2~DATAOUT24\ & 
-- (\Mult1|auto_generated|add9_result[6]~12_combout\ & !\Mult1|auto_generated|op_1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out2~DATAOUT24\,
	datab => \Mult1|auto_generated|add9_result[6]~12_combout\,
	datad => VCC,
	cin => \Mult1|auto_generated|op_1~11\,
	combout => \Mult1|auto_generated|op_1~12_combout\,
	cout => \Mult1|auto_generated|op_1~13\);

-- Location: LCCOMB_X67_Y35_N14
\Mult0|auto_generated|add9_result[6]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|add9_result[6]~12_combout\ = ((\Mult0|auto_generated|mac_out6~DATAOUT6\ $ (\Mult0|auto_generated|mac_out4~DATAOUT6\ $ (!\Mult0|auto_generated|add9_result[5]~11\)))) # (GND)
-- \Mult0|auto_generated|add9_result[6]~13\ = CARRY((\Mult0|auto_generated|mac_out6~DATAOUT6\ & ((\Mult0|auto_generated|mac_out4~DATAOUT6\) # (!\Mult0|auto_generated|add9_result[5]~11\))) # (!\Mult0|auto_generated|mac_out6~DATAOUT6\ & 
-- (\Mult0|auto_generated|mac_out4~DATAOUT6\ & !\Mult0|auto_generated|add9_result[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out6~DATAOUT6\,
	datab => \Mult0|auto_generated|mac_out4~DATAOUT6\,
	datad => VCC,
	cin => \Mult0|auto_generated|add9_result[5]~11\,
	combout => \Mult0|auto_generated|add9_result[6]~12_combout\,
	cout => \Mult0|auto_generated|add9_result[6]~13\);

-- Location: LCCOMB_X66_Y35_N14
\Mult0|auto_generated|op_1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~12_combout\ = ((\Mult0|auto_generated|add9_result[6]~12_combout\ $ (\Mult0|auto_generated|mac_out2~DATAOUT24\ $ (!\Mult0|auto_generated|op_1~11\)))) # (GND)
-- \Mult0|auto_generated|op_1~13\ = CARRY((\Mult0|auto_generated|add9_result[6]~12_combout\ & ((\Mult0|auto_generated|mac_out2~DATAOUT24\) # (!\Mult0|auto_generated|op_1~11\))) # (!\Mult0|auto_generated|add9_result[6]~12_combout\ & 
-- (\Mult0|auto_generated|mac_out2~DATAOUT24\ & !\Mult0|auto_generated|op_1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|add9_result[6]~12_combout\,
	datab => \Mult0|auto_generated|mac_out2~DATAOUT24\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~11\,
	combout => \Mult0|auto_generated|op_1~12_combout\,
	cout => \Mult0|auto_generated|op_1~13\);

-- Location: LCCOMB_X58_Y35_N26
\Add0~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~74_combout\ = \b[24]~input_o\ $ (\opsel[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[24]~input_o\,
	datad => \opsel[0]~input_o\,
	combout => \Add0~74_combout\);

-- Location: LCCOMB_X61_Y35_N2
\Add0~75\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~75_combout\ = (\a[24]~input_o\ & ((\Add0~74_combout\ & (\Add0~73\ & VCC)) # (!\Add0~74_combout\ & (!\Add0~73\)))) # (!\a[24]~input_o\ & ((\Add0~74_combout\ & (!\Add0~73\)) # (!\Add0~74_combout\ & ((\Add0~73\) # (GND)))))
-- \Add0~76\ = CARRY((\a[24]~input_o\ & (!\Add0~74_combout\ & !\Add0~73\)) # (!\a[24]~input_o\ & ((!\Add0~73\) # (!\Add0~74_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[24]~input_o\,
	datab => \Add0~74_combout\,
	datad => VCC,
	cin => \Add0~73\,
	combout => \Add0~75_combout\,
	cout => \Add0~76\);

-- Location: LCCOMB_X58_Y35_N28
\result~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \result~20_combout\ = (\a[24]~input_o\ & \b[24]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a[24]~input_o\,
	datad => \b[24]~input_o\,
	combout => \result~20_combout\);

-- Location: LCCOMB_X58_Y35_N30
\Mux7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (\Mux10~0_combout\ & ((\Mux10~1_combout\ & ((\ShiftRight0~66_combout\))) # (!\Mux10~1_combout\ & (\result~20_combout\)))) # (!\Mux10~0_combout\ & (((!\Mux10~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~0_combout\,
	datab => \result~20_combout\,
	datac => \Mux10~1_combout\,
	datad => \ShiftRight0~66_combout\,
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X58_Y35_N8
\Mux7~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~1_combout\ = (\Mux7~0_combout\ & ((\ShiftRight1~60_combout\) # ((!\opsel[1]~input_o\)))) # (!\Mux7~0_combout\ & (((\opsel[1]~input_o\ & \a[31]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~0_combout\,
	datab => \ShiftRight1~60_combout\,
	datac => \opsel[1]~input_o\,
	datad => \a[31]~input_o\,
	combout => \Mux7~1_combout\);

-- Location: LCCOMB_X62_Y35_N20
\Mux7~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~2_combout\ = (\Mux10~2_combout\ & ((\Mux29~8_combout\ & ((\Mux7~1_combout\))) # (!\Mux29~8_combout\ & (\Add0~75_combout\)))) # (!\Mux10~2_combout\ & (!\Mux29~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~2_combout\,
	datab => \Mux29~8_combout\,
	datac => \Add0~75_combout\,
	datad => \Mux7~1_combout\,
	combout => \Mux7~2_combout\);

-- Location: LCCOMB_X62_Y35_N6
\Mux7~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~3_combout\ = (\Mux29~9_combout\ & ((\Mux7~2_combout\ & ((\Mult0|auto_generated|op_1~12_combout\))) # (!\Mux7~2_combout\ & (\Mult1|auto_generated|op_1~12_combout\)))) # (!\Mux29~9_combout\ & (((\Mux7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|op_1~12_combout\,
	datab => \Mux29~9_combout\,
	datac => \Mult0|auto_generated|op_1~12_combout\,
	datad => \Mux7~2_combout\,
	combout => \Mux7~3_combout\);

-- Location: LCCOMB_X62_Y35_N0
\Mux7~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~4_combout\ = (!\opsel[3]~input_o\ & \Mux7~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \opsel[3]~input_o\,
	datad => \Mux7~3_combout\,
	combout => \Mux7~4_combout\);

-- Location: LCCOMB_X56_Y38_N4
\result~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \result~21_combout\ = (\b[25]~input_o\ & \a[25]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b[25]~input_o\,
	datad => \a[25]~input_o\,
	combout => \result~21_combout\);

-- Location: LCCOMB_X56_Y38_N22
\Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\Mux10~0_combout\ & ((\Mux10~1_combout\ & (\ShiftRight0~67_combout\)) # (!\Mux10~1_combout\ & ((\result~21_combout\))))) # (!\Mux10~0_combout\ & (((!\Mux10~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~67_combout\,
	datab => \result~21_combout\,
	datac => \Mux10~0_combout\,
	datad => \Mux10~1_combout\,
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X59_Y38_N26
\Mux6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = (\Mux6~0_combout\ & (((\ShiftRight1~61_combout\) # (!\opsel[1]~input_o\)))) # (!\Mux6~0_combout\ & (\a[31]~input_o\ & (\opsel[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[31]~input_o\,
	datab => \Mux6~0_combout\,
	datac => \opsel[1]~input_o\,
	datad => \ShiftRight1~61_combout\,
	combout => \Mux6~1_combout\);

-- Location: LCCOMB_X61_Y35_N20
\Add0~77\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~77_combout\ = \b[25]~input_o\ $ (\opsel[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[25]~input_o\,
	datad => \opsel[0]~input_o\,
	combout => \Add0~77_combout\);

-- Location: LCCOMB_X61_Y35_N4
\Add0~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~78_combout\ = ((\a[25]~input_o\ $ (\Add0~77_combout\ $ (!\Add0~76\)))) # (GND)
-- \Add0~79\ = CARRY((\a[25]~input_o\ & ((\Add0~77_combout\) # (!\Add0~76\))) # (!\a[25]~input_o\ & (\Add0~77_combout\ & !\Add0~76\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[25]~input_o\,
	datab => \Add0~77_combout\,
	datad => VCC,
	cin => \Add0~76\,
	combout => \Add0~78_combout\,
	cout => \Add0~79\);

-- Location: LCCOMB_X62_Y35_N26
\Mux6~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~2_combout\ = (\Mux29~8_combout\ & (\Mux6~1_combout\ & ((\Mux10~2_combout\)))) # (!\Mux29~8_combout\ & (((\Add0~78_combout\) # (!\Mux10~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~1_combout\,
	datab => \Mux29~8_combout\,
	datac => \Add0~78_combout\,
	datad => \Mux10~2_combout\,
	combout => \Mux6~2_combout\);

-- Location: LCCOMB_X67_Y35_N16
\Mult0|auto_generated|add9_result[7]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|add9_result[7]~14_combout\ = (\Mult0|auto_generated|mac_out6~DATAOUT7\ & ((\Mult0|auto_generated|mac_out4~DATAOUT7\ & (\Mult0|auto_generated|add9_result[6]~13\ & VCC)) # (!\Mult0|auto_generated|mac_out4~DATAOUT7\ & 
-- (!\Mult0|auto_generated|add9_result[6]~13\)))) # (!\Mult0|auto_generated|mac_out6~DATAOUT7\ & ((\Mult0|auto_generated|mac_out4~DATAOUT7\ & (!\Mult0|auto_generated|add9_result[6]~13\)) # (!\Mult0|auto_generated|mac_out4~DATAOUT7\ & 
-- ((\Mult0|auto_generated|add9_result[6]~13\) # (GND)))))
-- \Mult0|auto_generated|add9_result[7]~15\ = CARRY((\Mult0|auto_generated|mac_out6~DATAOUT7\ & (!\Mult0|auto_generated|mac_out4~DATAOUT7\ & !\Mult0|auto_generated|add9_result[6]~13\)) # (!\Mult0|auto_generated|mac_out6~DATAOUT7\ & 
-- ((!\Mult0|auto_generated|add9_result[6]~13\) # (!\Mult0|auto_generated|mac_out4~DATAOUT7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out6~DATAOUT7\,
	datab => \Mult0|auto_generated|mac_out4~DATAOUT7\,
	datad => VCC,
	cin => \Mult0|auto_generated|add9_result[6]~13\,
	combout => \Mult0|auto_generated|add9_result[7]~14_combout\,
	cout => \Mult0|auto_generated|add9_result[7]~15\);

-- Location: LCCOMB_X66_Y35_N16
\Mult0|auto_generated|op_1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~14_combout\ = (\Mult0|auto_generated|mac_out2~DATAOUT25\ & ((\Mult0|auto_generated|add9_result[7]~14_combout\ & (\Mult0|auto_generated|op_1~13\ & VCC)) # (!\Mult0|auto_generated|add9_result[7]~14_combout\ & 
-- (!\Mult0|auto_generated|op_1~13\)))) # (!\Mult0|auto_generated|mac_out2~DATAOUT25\ & ((\Mult0|auto_generated|add9_result[7]~14_combout\ & (!\Mult0|auto_generated|op_1~13\)) # (!\Mult0|auto_generated|add9_result[7]~14_combout\ & 
-- ((\Mult0|auto_generated|op_1~13\) # (GND)))))
-- \Mult0|auto_generated|op_1~15\ = CARRY((\Mult0|auto_generated|mac_out2~DATAOUT25\ & (!\Mult0|auto_generated|add9_result[7]~14_combout\ & !\Mult0|auto_generated|op_1~13\)) # (!\Mult0|auto_generated|mac_out2~DATAOUT25\ & ((!\Mult0|auto_generated|op_1~13\) # 
-- (!\Mult0|auto_generated|add9_result[7]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT25\,
	datab => \Mult0|auto_generated|add9_result[7]~14_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~13\,
	combout => \Mult0|auto_generated|op_1~14_combout\,
	cout => \Mult0|auto_generated|op_1~15\);

-- Location: LCCOMB_X47_Y35_N30
\Mult1|auto_generated|add9_result[7]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|add9_result[7]~14_combout\ = (\Mult1|auto_generated|mac_out4~DATAOUT7\ & ((\Mult1|auto_generated|mac_out6~DATAOUT7\ & (\Mult1|auto_generated|add9_result[6]~13\ & VCC)) # (!\Mult1|auto_generated|mac_out6~DATAOUT7\ & 
-- (!\Mult1|auto_generated|add9_result[6]~13\)))) # (!\Mult1|auto_generated|mac_out4~DATAOUT7\ & ((\Mult1|auto_generated|mac_out6~DATAOUT7\ & (!\Mult1|auto_generated|add9_result[6]~13\)) # (!\Mult1|auto_generated|mac_out6~DATAOUT7\ & 
-- ((\Mult1|auto_generated|add9_result[6]~13\) # (GND)))))
-- \Mult1|auto_generated|add9_result[7]~15\ = CARRY((\Mult1|auto_generated|mac_out4~DATAOUT7\ & (!\Mult1|auto_generated|mac_out6~DATAOUT7\ & !\Mult1|auto_generated|add9_result[6]~13\)) # (!\Mult1|auto_generated|mac_out4~DATAOUT7\ & 
-- ((!\Mult1|auto_generated|add9_result[6]~13\) # (!\Mult1|auto_generated|mac_out6~DATAOUT7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out4~DATAOUT7\,
	datab => \Mult1|auto_generated|mac_out6~DATAOUT7\,
	datad => VCC,
	cin => \Mult1|auto_generated|add9_result[6]~13\,
	combout => \Mult1|auto_generated|add9_result[7]~14_combout\,
	cout => \Mult1|auto_generated|add9_result[7]~15\);

-- Location: LCCOMB_X49_Y35_N16
\Mult1|auto_generated|op_1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_1~14_combout\ = (\Mult1|auto_generated|mac_out2~DATAOUT25\ & ((\Mult1|auto_generated|add9_result[7]~14_combout\ & (\Mult1|auto_generated|op_1~13\ & VCC)) # (!\Mult1|auto_generated|add9_result[7]~14_combout\ & 
-- (!\Mult1|auto_generated|op_1~13\)))) # (!\Mult1|auto_generated|mac_out2~DATAOUT25\ & ((\Mult1|auto_generated|add9_result[7]~14_combout\ & (!\Mult1|auto_generated|op_1~13\)) # (!\Mult1|auto_generated|add9_result[7]~14_combout\ & 
-- ((\Mult1|auto_generated|op_1~13\) # (GND)))))
-- \Mult1|auto_generated|op_1~15\ = CARRY((\Mult1|auto_generated|mac_out2~DATAOUT25\ & (!\Mult1|auto_generated|add9_result[7]~14_combout\ & !\Mult1|auto_generated|op_1~13\)) # (!\Mult1|auto_generated|mac_out2~DATAOUT25\ & ((!\Mult1|auto_generated|op_1~13\) # 
-- (!\Mult1|auto_generated|add9_result[7]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out2~DATAOUT25\,
	datab => \Mult1|auto_generated|add9_result[7]~14_combout\,
	datad => VCC,
	cin => \Mult1|auto_generated|op_1~13\,
	combout => \Mult1|auto_generated|op_1~14_combout\,
	cout => \Mult1|auto_generated|op_1~15\);

-- Location: LCCOMB_X62_Y35_N12
\Mux6~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~3_combout\ = (\Mux6~2_combout\ & (((\Mult0|auto_generated|op_1~14_combout\)) # (!\Mux29~9_combout\))) # (!\Mux6~2_combout\ & (\Mux29~9_combout\ & ((\Mult1|auto_generated|op_1~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~2_combout\,
	datab => \Mux29~9_combout\,
	datac => \Mult0|auto_generated|op_1~14_combout\,
	datad => \Mult1|auto_generated|op_1~14_combout\,
	combout => \Mux6~3_combout\);

-- Location: LCCOMB_X62_Y35_N14
\Mux6~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~4_combout\ = (!\opsel[3]~input_o\ & \Mux6~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \opsel[3]~input_o\,
	datad => \Mux6~3_combout\,
	combout => \Mux6~4_combout\);

-- Location: LCCOMB_X61_Y35_N30
\Add0~80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~80_combout\ = \opsel[0]~input_o\ $ (\b[26]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opsel[0]~input_o\,
	datad => \b[26]~input_o\,
	combout => \Add0~80_combout\);

-- Location: LCCOMB_X61_Y35_N6
\Add0~81\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~81_combout\ = (\Add0~80_combout\ & ((\a[26]~input_o\ & (\Add0~79\ & VCC)) # (!\a[26]~input_o\ & (!\Add0~79\)))) # (!\Add0~80_combout\ & ((\a[26]~input_o\ & (!\Add0~79\)) # (!\a[26]~input_o\ & ((\Add0~79\) # (GND)))))
-- \Add0~82\ = CARRY((\Add0~80_combout\ & (!\a[26]~input_o\ & !\Add0~79\)) # (!\Add0~80_combout\ & ((!\Add0~79\) # (!\a[26]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~80_combout\,
	datab => \a[26]~input_o\,
	datad => VCC,
	cin => \Add0~79\,
	combout => \Add0~81_combout\,
	cout => \Add0~82\);

-- Location: LCCOMB_X54_Y38_N20
\result~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \result~22_combout\ = (\b[26]~input_o\ & \a[26]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[26]~input_o\,
	datad => \a[26]~input_o\,
	combout => \result~22_combout\);

-- Location: LCCOMB_X59_Y38_N28
\Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\Mux10~1_combout\ & (((\ShiftRight0~69_combout\ & \Mux10~0_combout\)))) # (!\Mux10~1_combout\ & ((\result~22_combout\) # ((!\Mux10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~1_combout\,
	datab => \result~22_combout\,
	datac => \ShiftRight0~69_combout\,
	datad => \Mux10~0_combout\,
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X59_Y38_N30
\Mux5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = (\Mux5~0_combout\ & (((\ShiftRight1~62_combout\) # (!\opsel[1]~input_o\)))) # (!\Mux5~0_combout\ & (\a[31]~input_o\ & (\opsel[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[31]~input_o\,
	datab => \Mux5~0_combout\,
	datac => \opsel[1]~input_o\,
	datad => \ShiftRight1~62_combout\,
	combout => \Mux5~1_combout\);

-- Location: LCCOMB_X59_Y35_N26
\Mux5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~2_combout\ = (\Mux10~2_combout\ & ((\Mux29~8_combout\ & ((\Mux5~1_combout\))) # (!\Mux29~8_combout\ & (\Add0~81_combout\)))) # (!\Mux10~2_combout\ & (((!\Mux29~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~81_combout\,
	datab => \Mux5~1_combout\,
	datac => \Mux10~2_combout\,
	datad => \Mux29~8_combout\,
	combout => \Mux5~2_combout\);

-- Location: LCCOMB_X67_Y35_N18
\Mult0|auto_generated|add9_result[8]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|add9_result[8]~16_combout\ = ((\Mult0|auto_generated|mac_out6~DATAOUT8\ $ (\Mult0|auto_generated|mac_out4~DATAOUT8\ $ (!\Mult0|auto_generated|add9_result[7]~15\)))) # (GND)
-- \Mult0|auto_generated|add9_result[8]~17\ = CARRY((\Mult0|auto_generated|mac_out6~DATAOUT8\ & ((\Mult0|auto_generated|mac_out4~DATAOUT8\) # (!\Mult0|auto_generated|add9_result[7]~15\))) # (!\Mult0|auto_generated|mac_out6~DATAOUT8\ & 
-- (\Mult0|auto_generated|mac_out4~DATAOUT8\ & !\Mult0|auto_generated|add9_result[7]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out6~DATAOUT8\,
	datab => \Mult0|auto_generated|mac_out4~DATAOUT8\,
	datad => VCC,
	cin => \Mult0|auto_generated|add9_result[7]~15\,
	combout => \Mult0|auto_generated|add9_result[8]~16_combout\,
	cout => \Mult0|auto_generated|add9_result[8]~17\);

-- Location: LCCOMB_X66_Y35_N18
\Mult0|auto_generated|op_1~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~16_combout\ = ((\Mult0|auto_generated|add9_result[8]~16_combout\ $ (\Mult0|auto_generated|mac_out2~DATAOUT26\ $ (!\Mult0|auto_generated|op_1~15\)))) # (GND)
-- \Mult0|auto_generated|op_1~17\ = CARRY((\Mult0|auto_generated|add9_result[8]~16_combout\ & ((\Mult0|auto_generated|mac_out2~DATAOUT26\) # (!\Mult0|auto_generated|op_1~15\))) # (!\Mult0|auto_generated|add9_result[8]~16_combout\ & 
-- (\Mult0|auto_generated|mac_out2~DATAOUT26\ & !\Mult0|auto_generated|op_1~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|add9_result[8]~16_combout\,
	datab => \Mult0|auto_generated|mac_out2~DATAOUT26\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~15\,
	combout => \Mult0|auto_generated|op_1~16_combout\,
	cout => \Mult0|auto_generated|op_1~17\);

-- Location: LCCOMB_X47_Y34_N0
\Mult1|auto_generated|add9_result[8]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|add9_result[8]~16_combout\ = ((\Mult1|auto_generated|mac_out6~DATAOUT8\ $ (\Mult1|auto_generated|mac_out4~DATAOUT8\ $ (!\Mult1|auto_generated|add9_result[7]~15\)))) # (GND)
-- \Mult1|auto_generated|add9_result[8]~17\ = CARRY((\Mult1|auto_generated|mac_out6~DATAOUT8\ & ((\Mult1|auto_generated|mac_out4~DATAOUT8\) # (!\Mult1|auto_generated|add9_result[7]~15\))) # (!\Mult1|auto_generated|mac_out6~DATAOUT8\ & 
-- (\Mult1|auto_generated|mac_out4~DATAOUT8\ & !\Mult1|auto_generated|add9_result[7]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out6~DATAOUT8\,
	datab => \Mult1|auto_generated|mac_out4~DATAOUT8\,
	datad => VCC,
	cin => \Mult1|auto_generated|add9_result[7]~15\,
	combout => \Mult1|auto_generated|add9_result[8]~16_combout\,
	cout => \Mult1|auto_generated|add9_result[8]~17\);

-- Location: LCCOMB_X49_Y35_N18
\Mult1|auto_generated|op_1~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_1~16_combout\ = ((\Mult1|auto_generated|mac_out2~DATAOUT26\ $ (\Mult1|auto_generated|add9_result[8]~16_combout\ $ (!\Mult1|auto_generated|op_1~15\)))) # (GND)
-- \Mult1|auto_generated|op_1~17\ = CARRY((\Mult1|auto_generated|mac_out2~DATAOUT26\ & ((\Mult1|auto_generated|add9_result[8]~16_combout\) # (!\Mult1|auto_generated|op_1~15\))) # (!\Mult1|auto_generated|mac_out2~DATAOUT26\ & 
-- (\Mult1|auto_generated|add9_result[8]~16_combout\ & !\Mult1|auto_generated|op_1~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out2~DATAOUT26\,
	datab => \Mult1|auto_generated|add9_result[8]~16_combout\,
	datad => VCC,
	cin => \Mult1|auto_generated|op_1~15\,
	combout => \Mult1|auto_generated|op_1~16_combout\,
	cout => \Mult1|auto_generated|op_1~17\);

-- Location: LCCOMB_X59_Y35_N28
\Mux5~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~3_combout\ = (\Mux5~2_combout\ & (((\Mult0|auto_generated|op_1~16_combout\)) # (!\Mux29~9_combout\))) # (!\Mux5~2_combout\ & (\Mux29~9_combout\ & ((\Mult1|auto_generated|op_1~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~2_combout\,
	datab => \Mux29~9_combout\,
	datac => \Mult0|auto_generated|op_1~16_combout\,
	datad => \Mult1|auto_generated|op_1~16_combout\,
	combout => \Mux5~3_combout\);

-- Location: LCCOMB_X59_Y35_N6
\Mux5~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~4_combout\ = (\Mux5~3_combout\ & !\opsel[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux5~3_combout\,
	datad => \opsel[3]~input_o\,
	combout => \Mux5~4_combout\);

-- Location: LCCOMB_X67_Y35_N20
\Mult0|auto_generated|add9_result[9]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|add9_result[9]~18_combout\ = (\Mult0|auto_generated|mac_out6~DATAOUT9\ & ((\Mult0|auto_generated|mac_out4~DATAOUT9\ & (\Mult0|auto_generated|add9_result[8]~17\ & VCC)) # (!\Mult0|auto_generated|mac_out4~DATAOUT9\ & 
-- (!\Mult0|auto_generated|add9_result[8]~17\)))) # (!\Mult0|auto_generated|mac_out6~DATAOUT9\ & ((\Mult0|auto_generated|mac_out4~DATAOUT9\ & (!\Mult0|auto_generated|add9_result[8]~17\)) # (!\Mult0|auto_generated|mac_out4~DATAOUT9\ & 
-- ((\Mult0|auto_generated|add9_result[8]~17\) # (GND)))))
-- \Mult0|auto_generated|add9_result[9]~19\ = CARRY((\Mult0|auto_generated|mac_out6~DATAOUT9\ & (!\Mult0|auto_generated|mac_out4~DATAOUT9\ & !\Mult0|auto_generated|add9_result[8]~17\)) # (!\Mult0|auto_generated|mac_out6~DATAOUT9\ & 
-- ((!\Mult0|auto_generated|add9_result[8]~17\) # (!\Mult0|auto_generated|mac_out4~DATAOUT9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out6~DATAOUT9\,
	datab => \Mult0|auto_generated|mac_out4~DATAOUT9\,
	datad => VCC,
	cin => \Mult0|auto_generated|add9_result[8]~17\,
	combout => \Mult0|auto_generated|add9_result[9]~18_combout\,
	cout => \Mult0|auto_generated|add9_result[9]~19\);

-- Location: LCCOMB_X66_Y35_N20
\Mult0|auto_generated|op_1~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~18_combout\ = (\Mult0|auto_generated|add9_result[9]~18_combout\ & ((\Mult0|auto_generated|mac_out2~DATAOUT27\ & (\Mult0|auto_generated|op_1~17\ & VCC)) # (!\Mult0|auto_generated|mac_out2~DATAOUT27\ & 
-- (!\Mult0|auto_generated|op_1~17\)))) # (!\Mult0|auto_generated|add9_result[9]~18_combout\ & ((\Mult0|auto_generated|mac_out2~DATAOUT27\ & (!\Mult0|auto_generated|op_1~17\)) # (!\Mult0|auto_generated|mac_out2~DATAOUT27\ & ((\Mult0|auto_generated|op_1~17\) 
-- # (GND)))))
-- \Mult0|auto_generated|op_1~19\ = CARRY((\Mult0|auto_generated|add9_result[9]~18_combout\ & (!\Mult0|auto_generated|mac_out2~DATAOUT27\ & !\Mult0|auto_generated|op_1~17\)) # (!\Mult0|auto_generated|add9_result[9]~18_combout\ & 
-- ((!\Mult0|auto_generated|op_1~17\) # (!\Mult0|auto_generated|mac_out2~DATAOUT27\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|add9_result[9]~18_combout\,
	datab => \Mult0|auto_generated|mac_out2~DATAOUT27\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~17\,
	combout => \Mult0|auto_generated|op_1~18_combout\,
	cout => \Mult0|auto_generated|op_1~19\);

-- Location: LCCOMB_X47_Y34_N2
\Mult1|auto_generated|add9_result[9]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|add9_result[9]~18_combout\ = (\Mult1|auto_generated|mac_out6~DATAOUT9\ & ((\Mult1|auto_generated|mac_out4~DATAOUT9\ & (\Mult1|auto_generated|add9_result[8]~17\ & VCC)) # (!\Mult1|auto_generated|mac_out4~DATAOUT9\ & 
-- (!\Mult1|auto_generated|add9_result[8]~17\)))) # (!\Mult1|auto_generated|mac_out6~DATAOUT9\ & ((\Mult1|auto_generated|mac_out4~DATAOUT9\ & (!\Mult1|auto_generated|add9_result[8]~17\)) # (!\Mult1|auto_generated|mac_out4~DATAOUT9\ & 
-- ((\Mult1|auto_generated|add9_result[8]~17\) # (GND)))))
-- \Mult1|auto_generated|add9_result[9]~19\ = CARRY((\Mult1|auto_generated|mac_out6~DATAOUT9\ & (!\Mult1|auto_generated|mac_out4~DATAOUT9\ & !\Mult1|auto_generated|add9_result[8]~17\)) # (!\Mult1|auto_generated|mac_out6~DATAOUT9\ & 
-- ((!\Mult1|auto_generated|add9_result[8]~17\) # (!\Mult1|auto_generated|mac_out4~DATAOUT9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out6~DATAOUT9\,
	datab => \Mult1|auto_generated|mac_out4~DATAOUT9\,
	datad => VCC,
	cin => \Mult1|auto_generated|add9_result[8]~17\,
	combout => \Mult1|auto_generated|add9_result[9]~18_combout\,
	cout => \Mult1|auto_generated|add9_result[9]~19\);

-- Location: LCCOMB_X49_Y35_N20
\Mult1|auto_generated|op_1~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_1~18_combout\ = (\Mult1|auto_generated|add9_result[9]~18_combout\ & ((\Mult1|auto_generated|mac_out2~DATAOUT27\ & (\Mult1|auto_generated|op_1~17\ & VCC)) # (!\Mult1|auto_generated|mac_out2~DATAOUT27\ & 
-- (!\Mult1|auto_generated|op_1~17\)))) # (!\Mult1|auto_generated|add9_result[9]~18_combout\ & ((\Mult1|auto_generated|mac_out2~DATAOUT27\ & (!\Mult1|auto_generated|op_1~17\)) # (!\Mult1|auto_generated|mac_out2~DATAOUT27\ & ((\Mult1|auto_generated|op_1~17\) 
-- # (GND)))))
-- \Mult1|auto_generated|op_1~19\ = CARRY((\Mult1|auto_generated|add9_result[9]~18_combout\ & (!\Mult1|auto_generated|mac_out2~DATAOUT27\ & !\Mult1|auto_generated|op_1~17\)) # (!\Mult1|auto_generated|add9_result[9]~18_combout\ & 
-- ((!\Mult1|auto_generated|op_1~17\) # (!\Mult1|auto_generated|mac_out2~DATAOUT27\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|add9_result[9]~18_combout\,
	datab => \Mult1|auto_generated|mac_out2~DATAOUT27\,
	datad => VCC,
	cin => \Mult1|auto_generated|op_1~17\,
	combout => \Mult1|auto_generated|op_1~18_combout\,
	cout => \Mult1|auto_generated|op_1~19\);

-- Location: LCCOMB_X61_Y35_N24
\Add0~83\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~83_combout\ = \b[27]~input_o\ $ (\opsel[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b[27]~input_o\,
	datad => \opsel[0]~input_o\,
	combout => \Add0~83_combout\);

-- Location: LCCOMB_X61_Y35_N8
\Add0~84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~84_combout\ = ((\a[27]~input_o\ $ (\Add0~83_combout\ $ (!\Add0~82\)))) # (GND)
-- \Add0~85\ = CARRY((\a[27]~input_o\ & ((\Add0~83_combout\) # (!\Add0~82\))) # (!\a[27]~input_o\ & (\Add0~83_combout\ & !\Add0~82\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[27]~input_o\,
	datab => \Add0~83_combout\,
	datad => VCC,
	cin => \Add0~82\,
	combout => \Add0~84_combout\,
	cout => \Add0~85\);

-- Location: LCCOMB_X58_Y37_N8
\result~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \result~23_combout\ = (\a[27]~input_o\ & \b[27]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a[27]~input_o\,
	datac => \b[27]~input_o\,
	combout => \result~23_combout\);

-- Location: LCCOMB_X58_Y37_N26
\Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\Mux10~0_combout\ & ((\Mux10~1_combout\ & (\ShiftRight0~71_combout\)) # (!\Mux10~1_combout\ & ((\result~23_combout\))))) # (!\Mux10~0_combout\ & (((!\Mux10~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~71_combout\,
	datab => \Mux10~0_combout\,
	datac => \Mux10~1_combout\,
	datad => \result~23_combout\,
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X58_Y37_N20
\Mux4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = (\Mux4~0_combout\ & ((\ShiftRight1~63_combout\) # ((!\opsel[1]~input_o\)))) # (!\Mux4~0_combout\ & (((\a[31]~input_o\ & \opsel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~63_combout\,
	datab => \a[31]~input_o\,
	datac => \Mux4~0_combout\,
	datad => \opsel[1]~input_o\,
	combout => \Mux4~1_combout\);

-- Location: LCCOMB_X62_Y35_N24
\Mux4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~2_combout\ = (\Mux29~8_combout\ & (((\Mux4~1_combout\ & \Mux10~2_combout\)))) # (!\Mux29~8_combout\ & ((\Add0~84_combout\) # ((!\Mux10~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~84_combout\,
	datab => \Mux29~8_combout\,
	datac => \Mux4~1_combout\,
	datad => \Mux10~2_combout\,
	combout => \Mux4~2_combout\);

-- Location: LCCOMB_X62_Y35_N2
\Mux4~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~3_combout\ = (\Mux29~9_combout\ & ((\Mux4~2_combout\ & (\Mult0|auto_generated|op_1~18_combout\)) # (!\Mux4~2_combout\ & ((\Mult1|auto_generated|op_1~18_combout\))))) # (!\Mux29~9_combout\ & (((\Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|op_1~18_combout\,
	datab => \Mult1|auto_generated|op_1~18_combout\,
	datac => \Mux29~9_combout\,
	datad => \Mux4~2_combout\,
	combout => \Mux4~3_combout\);

-- Location: LCCOMB_X62_Y35_N28
\Mux4~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~4_combout\ = (!\opsel[3]~input_o\ & \Mux4~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \opsel[3]~input_o\,
	datad => \Mux4~3_combout\,
	combout => \Mux4~4_combout\);

-- Location: LCCOMB_X61_Y35_N26
\Add0~86\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~86_combout\ = \opsel[0]~input_o\ $ (\b[28]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opsel[0]~input_o\,
	datad => \b[28]~input_o\,
	combout => \Add0~86_combout\);

-- Location: LCCOMB_X61_Y35_N10
\Add0~87\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~87_combout\ = (\Add0~86_combout\ & ((\a[28]~input_o\ & (\Add0~85\ & VCC)) # (!\a[28]~input_o\ & (!\Add0~85\)))) # (!\Add0~86_combout\ & ((\a[28]~input_o\ & (!\Add0~85\)) # (!\a[28]~input_o\ & ((\Add0~85\) # (GND)))))
-- \Add0~88\ = CARRY((\Add0~86_combout\ & (!\a[28]~input_o\ & !\Add0~85\)) # (!\Add0~86_combout\ & ((!\Add0~85\) # (!\a[28]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~86_combout\,
	datab => \a[28]~input_o\,
	datad => VCC,
	cin => \Add0~85\,
	combout => \Add0~87_combout\,
	cout => \Add0~88\);

-- Location: LCCOMB_X54_Y38_N6
\result~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \result~24_combout\ = (\b[28]~input_o\ & \a[28]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b[28]~input_o\,
	datad => \a[28]~input_o\,
	combout => \result~24_combout\);

-- Location: LCCOMB_X56_Y38_N0
\Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\Mux10~0_combout\ & ((\Mux10~1_combout\ & (\ShiftRight0~72_combout\)) # (!\Mux10~1_combout\ & ((\result~24_combout\))))) # (!\Mux10~0_combout\ & (((!\Mux10~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~0_combout\,
	datab => \ShiftRight0~72_combout\,
	datac => \result~24_combout\,
	datad => \Mux10~1_combout\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X59_Y38_N16
\Mux3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (\Mux3~0_combout\ & (((\ShiftRight1~64_combout\) # (!\opsel[1]~input_o\)))) # (!\Mux3~0_combout\ & (\a[31]~input_o\ & (\opsel[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~0_combout\,
	datab => \a[31]~input_o\,
	datac => \opsel[1]~input_o\,
	datad => \ShiftRight1~64_combout\,
	combout => \Mux3~1_combout\);

-- Location: LCCOMB_X62_Y36_N12
\Mux3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~2_combout\ = (\Mux10~2_combout\ & ((\Mux29~8_combout\ & ((\Mux3~1_combout\))) # (!\Mux29~8_combout\ & (\Add0~87_combout\)))) # (!\Mux10~2_combout\ & (((!\Mux29~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~87_combout\,
	datab => \Mux10~2_combout\,
	datac => \Mux29~8_combout\,
	datad => \Mux3~1_combout\,
	combout => \Mux3~2_combout\);

-- Location: LCCOMB_X47_Y34_N4
\Mult1|auto_generated|add9_result[10]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|add9_result[10]~20_combout\ = ((\Mult1|auto_generated|mac_out4~DATAOUT10\ $ (\Mult1|auto_generated|mac_out6~DATAOUT10\ $ (!\Mult1|auto_generated|add9_result[9]~19\)))) # (GND)
-- \Mult1|auto_generated|add9_result[10]~21\ = CARRY((\Mult1|auto_generated|mac_out4~DATAOUT10\ & ((\Mult1|auto_generated|mac_out6~DATAOUT10\) # (!\Mult1|auto_generated|add9_result[9]~19\))) # (!\Mult1|auto_generated|mac_out4~DATAOUT10\ & 
-- (\Mult1|auto_generated|mac_out6~DATAOUT10\ & !\Mult1|auto_generated|add9_result[9]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out4~DATAOUT10\,
	datab => \Mult1|auto_generated|mac_out6~DATAOUT10\,
	datad => VCC,
	cin => \Mult1|auto_generated|add9_result[9]~19\,
	combout => \Mult1|auto_generated|add9_result[10]~20_combout\,
	cout => \Mult1|auto_generated|add9_result[10]~21\);

-- Location: LCCOMB_X49_Y35_N22
\Mult1|auto_generated|op_1~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_1~20_combout\ = ((\Mult1|auto_generated|add9_result[10]~20_combout\ $ (\Mult1|auto_generated|mac_out2~DATAOUT28\ $ (!\Mult1|auto_generated|op_1~19\)))) # (GND)
-- \Mult1|auto_generated|op_1~21\ = CARRY((\Mult1|auto_generated|add9_result[10]~20_combout\ & ((\Mult1|auto_generated|mac_out2~DATAOUT28\) # (!\Mult1|auto_generated|op_1~19\))) # (!\Mult1|auto_generated|add9_result[10]~20_combout\ & 
-- (\Mult1|auto_generated|mac_out2~DATAOUT28\ & !\Mult1|auto_generated|op_1~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|add9_result[10]~20_combout\,
	datab => \Mult1|auto_generated|mac_out2~DATAOUT28\,
	datad => VCC,
	cin => \Mult1|auto_generated|op_1~19\,
	combout => \Mult1|auto_generated|op_1~20_combout\,
	cout => \Mult1|auto_generated|op_1~21\);

-- Location: LCCOMB_X67_Y35_N22
\Mult0|auto_generated|add9_result[10]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|add9_result[10]~20_combout\ = ((\Mult0|auto_generated|mac_out6~DATAOUT10\ $ (\Mult0|auto_generated|mac_out4~DATAOUT10\ $ (!\Mult0|auto_generated|add9_result[9]~19\)))) # (GND)
-- \Mult0|auto_generated|add9_result[10]~21\ = CARRY((\Mult0|auto_generated|mac_out6~DATAOUT10\ & ((\Mult0|auto_generated|mac_out4~DATAOUT10\) # (!\Mult0|auto_generated|add9_result[9]~19\))) # (!\Mult0|auto_generated|mac_out6~DATAOUT10\ & 
-- (\Mult0|auto_generated|mac_out4~DATAOUT10\ & !\Mult0|auto_generated|add9_result[9]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out6~DATAOUT10\,
	datab => \Mult0|auto_generated|mac_out4~DATAOUT10\,
	datad => VCC,
	cin => \Mult0|auto_generated|add9_result[9]~19\,
	combout => \Mult0|auto_generated|add9_result[10]~20_combout\,
	cout => \Mult0|auto_generated|add9_result[10]~21\);

-- Location: LCCOMB_X66_Y35_N22
\Mult0|auto_generated|op_1~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~20_combout\ = ((\Mult0|auto_generated|add9_result[10]~20_combout\ $ (\Mult0|auto_generated|mac_out2~DATAOUT28\ $ (!\Mult0|auto_generated|op_1~19\)))) # (GND)
-- \Mult0|auto_generated|op_1~21\ = CARRY((\Mult0|auto_generated|add9_result[10]~20_combout\ & ((\Mult0|auto_generated|mac_out2~DATAOUT28\) # (!\Mult0|auto_generated|op_1~19\))) # (!\Mult0|auto_generated|add9_result[10]~20_combout\ & 
-- (\Mult0|auto_generated|mac_out2~DATAOUT28\ & !\Mult0|auto_generated|op_1~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|add9_result[10]~20_combout\,
	datab => \Mult0|auto_generated|mac_out2~DATAOUT28\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~19\,
	combout => \Mult0|auto_generated|op_1~20_combout\,
	cout => \Mult0|auto_generated|op_1~21\);

-- Location: LCCOMB_X62_Y36_N6
\Mux3~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~3_combout\ = (\Mux3~2_combout\ & (((\Mult0|auto_generated|op_1~20_combout\) # (!\Mux29~9_combout\)))) # (!\Mux3~2_combout\ & (\Mult1|auto_generated|op_1~20_combout\ & (\Mux29~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~2_combout\,
	datab => \Mult1|auto_generated|op_1~20_combout\,
	datac => \Mux29~9_combout\,
	datad => \Mult0|auto_generated|op_1~20_combout\,
	combout => \Mux3~3_combout\);

-- Location: LCCOMB_X62_Y36_N8
\Mux3~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~4_combout\ = (\Mux3~3_combout\ & !\opsel[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~3_combout\,
	datad => \opsel[3]~input_o\,
	combout => \Mux3~4_combout\);

-- Location: LCCOMB_X61_Y35_N28
\Add0~89\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~89_combout\ = \b[29]~input_o\ $ (\opsel[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b[29]~input_o\,
	datad => \opsel[0]~input_o\,
	combout => \Add0~89_combout\);

-- Location: LCCOMB_X61_Y35_N12
\Add0~90\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~90_combout\ = ((\Add0~89_combout\ $ (\a[29]~input_o\ $ (!\Add0~88\)))) # (GND)
-- \Add0~91\ = CARRY((\Add0~89_combout\ & ((\a[29]~input_o\) # (!\Add0~88\))) # (!\Add0~89_combout\ & (\a[29]~input_o\ & !\Add0~88\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~89_combout\,
	datab => \a[29]~input_o\,
	datad => VCC,
	cin => \Add0~88\,
	combout => \Add0~90_combout\,
	cout => \Add0~91\);

-- Location: LCCOMB_X57_Y38_N18
\result~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \result~25_combout\ = (\b[29]~input_o\ & \a[29]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[29]~input_o\,
	datad => \a[29]~input_o\,
	combout => \result~25_combout\);

-- Location: LCCOMB_X56_Y38_N26
\Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\Mux10~0_combout\ & ((\Mux10~1_combout\ & (\ShiftRight0~74_combout\)) # (!\Mux10~1_combout\ & ((\result~25_combout\))))) # (!\Mux10~0_combout\ & (((!\Mux10~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~74_combout\,
	datab => \result~25_combout\,
	datac => \Mux10~0_combout\,
	datad => \Mux10~1_combout\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X57_Y38_N28
\Mux2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (\opsel[1]~input_o\ & ((\Mux2~0_combout\ & ((\ShiftRight1~56_combout\))) # (!\Mux2~0_combout\ & (\a[31]~input_o\)))) # (!\opsel[1]~input_o\ & (((\Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[31]~input_o\,
	datab => \opsel[1]~input_o\,
	datac => \Mux2~0_combout\,
	datad => \ShiftRight1~56_combout\,
	combout => \Mux2~1_combout\);

-- Location: LCCOMB_X62_Y36_N18
\Mux2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~2_combout\ = (\Mux29~8_combout\ & (((\Mux10~2_combout\ & \Mux2~1_combout\)))) # (!\Mux29~8_combout\ & ((\Add0~90_combout\) # ((!\Mux10~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~90_combout\,
	datab => \Mux29~8_combout\,
	datac => \Mux10~2_combout\,
	datad => \Mux2~1_combout\,
	combout => \Mux2~2_combout\);

-- Location: LCCOMB_X47_Y34_N6
\Mult1|auto_generated|add9_result[11]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|add9_result[11]~22_combout\ = (\Mult1|auto_generated|mac_out4~DATAOUT11\ & ((\Mult1|auto_generated|mac_out6~DATAOUT11\ & (\Mult1|auto_generated|add9_result[10]~21\ & VCC)) # (!\Mult1|auto_generated|mac_out6~DATAOUT11\ & 
-- (!\Mult1|auto_generated|add9_result[10]~21\)))) # (!\Mult1|auto_generated|mac_out4~DATAOUT11\ & ((\Mult1|auto_generated|mac_out6~DATAOUT11\ & (!\Mult1|auto_generated|add9_result[10]~21\)) # (!\Mult1|auto_generated|mac_out6~DATAOUT11\ & 
-- ((\Mult1|auto_generated|add9_result[10]~21\) # (GND)))))
-- \Mult1|auto_generated|add9_result[11]~23\ = CARRY((\Mult1|auto_generated|mac_out4~DATAOUT11\ & (!\Mult1|auto_generated|mac_out6~DATAOUT11\ & !\Mult1|auto_generated|add9_result[10]~21\)) # (!\Mult1|auto_generated|mac_out4~DATAOUT11\ & 
-- ((!\Mult1|auto_generated|add9_result[10]~21\) # (!\Mult1|auto_generated|mac_out6~DATAOUT11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out4~DATAOUT11\,
	datab => \Mult1|auto_generated|mac_out6~DATAOUT11\,
	datad => VCC,
	cin => \Mult1|auto_generated|add9_result[10]~21\,
	combout => \Mult1|auto_generated|add9_result[11]~22_combout\,
	cout => \Mult1|auto_generated|add9_result[11]~23\);

-- Location: LCCOMB_X49_Y35_N24
\Mult1|auto_generated|op_1~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_1~22_combout\ = (\Mult1|auto_generated|add9_result[11]~22_combout\ & ((\Mult1|auto_generated|mac_out2~DATAOUT29\ & (\Mult1|auto_generated|op_1~21\ & VCC)) # (!\Mult1|auto_generated|mac_out2~DATAOUT29\ & 
-- (!\Mult1|auto_generated|op_1~21\)))) # (!\Mult1|auto_generated|add9_result[11]~22_combout\ & ((\Mult1|auto_generated|mac_out2~DATAOUT29\ & (!\Mult1|auto_generated|op_1~21\)) # (!\Mult1|auto_generated|mac_out2~DATAOUT29\ & ((\Mult1|auto_generated|op_1~21\) 
-- # (GND)))))
-- \Mult1|auto_generated|op_1~23\ = CARRY((\Mult1|auto_generated|add9_result[11]~22_combout\ & (!\Mult1|auto_generated|mac_out2~DATAOUT29\ & !\Mult1|auto_generated|op_1~21\)) # (!\Mult1|auto_generated|add9_result[11]~22_combout\ & 
-- ((!\Mult1|auto_generated|op_1~21\) # (!\Mult1|auto_generated|mac_out2~DATAOUT29\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|add9_result[11]~22_combout\,
	datab => \Mult1|auto_generated|mac_out2~DATAOUT29\,
	datad => VCC,
	cin => \Mult1|auto_generated|op_1~21\,
	combout => \Mult1|auto_generated|op_1~22_combout\,
	cout => \Mult1|auto_generated|op_1~23\);

-- Location: LCCOMB_X67_Y35_N24
\Mult0|auto_generated|add9_result[11]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|add9_result[11]~22_combout\ = (\Mult0|auto_generated|mac_out4~DATAOUT11\ & ((\Mult0|auto_generated|mac_out6~DATAOUT11\ & (\Mult0|auto_generated|add9_result[10]~21\ & VCC)) # (!\Mult0|auto_generated|mac_out6~DATAOUT11\ & 
-- (!\Mult0|auto_generated|add9_result[10]~21\)))) # (!\Mult0|auto_generated|mac_out4~DATAOUT11\ & ((\Mult0|auto_generated|mac_out6~DATAOUT11\ & (!\Mult0|auto_generated|add9_result[10]~21\)) # (!\Mult0|auto_generated|mac_out6~DATAOUT11\ & 
-- ((\Mult0|auto_generated|add9_result[10]~21\) # (GND)))))
-- \Mult0|auto_generated|add9_result[11]~23\ = CARRY((\Mult0|auto_generated|mac_out4~DATAOUT11\ & (!\Mult0|auto_generated|mac_out6~DATAOUT11\ & !\Mult0|auto_generated|add9_result[10]~21\)) # (!\Mult0|auto_generated|mac_out4~DATAOUT11\ & 
-- ((!\Mult0|auto_generated|add9_result[10]~21\) # (!\Mult0|auto_generated|mac_out6~DATAOUT11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out4~DATAOUT11\,
	datab => \Mult0|auto_generated|mac_out6~DATAOUT11\,
	datad => VCC,
	cin => \Mult0|auto_generated|add9_result[10]~21\,
	combout => \Mult0|auto_generated|add9_result[11]~22_combout\,
	cout => \Mult0|auto_generated|add9_result[11]~23\);

-- Location: LCCOMB_X66_Y35_N24
\Mult0|auto_generated|op_1~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~22_combout\ = (\Mult0|auto_generated|add9_result[11]~22_combout\ & ((\Mult0|auto_generated|mac_out2~DATAOUT29\ & (\Mult0|auto_generated|op_1~21\ & VCC)) # (!\Mult0|auto_generated|mac_out2~DATAOUT29\ & 
-- (!\Mult0|auto_generated|op_1~21\)))) # (!\Mult0|auto_generated|add9_result[11]~22_combout\ & ((\Mult0|auto_generated|mac_out2~DATAOUT29\ & (!\Mult0|auto_generated|op_1~21\)) # (!\Mult0|auto_generated|mac_out2~DATAOUT29\ & ((\Mult0|auto_generated|op_1~21\) 
-- # (GND)))))
-- \Mult0|auto_generated|op_1~23\ = CARRY((\Mult0|auto_generated|add9_result[11]~22_combout\ & (!\Mult0|auto_generated|mac_out2~DATAOUT29\ & !\Mult0|auto_generated|op_1~21\)) # (!\Mult0|auto_generated|add9_result[11]~22_combout\ & 
-- ((!\Mult0|auto_generated|op_1~21\) # (!\Mult0|auto_generated|mac_out2~DATAOUT29\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|add9_result[11]~22_combout\,
	datab => \Mult0|auto_generated|mac_out2~DATAOUT29\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~21\,
	combout => \Mult0|auto_generated|op_1~22_combout\,
	cout => \Mult0|auto_generated|op_1~23\);

-- Location: LCCOMB_X62_Y36_N4
\Mux2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~3_combout\ = (\Mux29~9_combout\ & ((\Mux2~2_combout\ & ((\Mult0|auto_generated|op_1~22_combout\))) # (!\Mux2~2_combout\ & (\Mult1|auto_generated|op_1~22_combout\)))) # (!\Mux29~9_combout\ & (\Mux2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~9_combout\,
	datab => \Mux2~2_combout\,
	datac => \Mult1|auto_generated|op_1~22_combout\,
	datad => \Mult0|auto_generated|op_1~22_combout\,
	combout => \Mux2~3_combout\);

-- Location: LCCOMB_X62_Y36_N14
\Mux2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~4_combout\ = (\Mux2~3_combout\ & !\opsel[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux2~3_combout\,
	datad => \opsel[3]~input_o\,
	combout => \Mux2~4_combout\);

-- Location: LCCOMB_X47_Y34_N8
\Mult1|auto_generated|add9_result[12]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|add9_result[12]~24_combout\ = ((\Mult1|auto_generated|mac_out6~DATAOUT12\ $ (\Mult1|auto_generated|mac_out4~DATAOUT12\ $ (!\Mult1|auto_generated|add9_result[11]~23\)))) # (GND)
-- \Mult1|auto_generated|add9_result[12]~25\ = CARRY((\Mult1|auto_generated|mac_out6~DATAOUT12\ & ((\Mult1|auto_generated|mac_out4~DATAOUT12\) # (!\Mult1|auto_generated|add9_result[11]~23\))) # (!\Mult1|auto_generated|mac_out6~DATAOUT12\ & 
-- (\Mult1|auto_generated|mac_out4~DATAOUT12\ & !\Mult1|auto_generated|add9_result[11]~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out6~DATAOUT12\,
	datab => \Mult1|auto_generated|mac_out4~DATAOUT12\,
	datad => VCC,
	cin => \Mult1|auto_generated|add9_result[11]~23\,
	combout => \Mult1|auto_generated|add9_result[12]~24_combout\,
	cout => \Mult1|auto_generated|add9_result[12]~25\);

-- Location: LCCOMB_X49_Y35_N26
\Mult1|auto_generated|op_1~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_1~24_combout\ = ((\Mult1|auto_generated|mac_out2~DATAOUT30\ $ (\Mult1|auto_generated|add9_result[12]~24_combout\ $ (!\Mult1|auto_generated|op_1~23\)))) # (GND)
-- \Mult1|auto_generated|op_1~25\ = CARRY((\Mult1|auto_generated|mac_out2~DATAOUT30\ & ((\Mult1|auto_generated|add9_result[12]~24_combout\) # (!\Mult1|auto_generated|op_1~23\))) # (!\Mult1|auto_generated|mac_out2~DATAOUT30\ & 
-- (\Mult1|auto_generated|add9_result[12]~24_combout\ & !\Mult1|auto_generated|op_1~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out2~DATAOUT30\,
	datab => \Mult1|auto_generated|add9_result[12]~24_combout\,
	datad => VCC,
	cin => \Mult1|auto_generated|op_1~23\,
	combout => \Mult1|auto_generated|op_1~24_combout\,
	cout => \Mult1|auto_generated|op_1~25\);

-- Location: LCCOMB_X61_Y35_N22
\Add0~92\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~92_combout\ = \b[30]~input_o\ $ (\opsel[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[30]~input_o\,
	datad => \opsel[0]~input_o\,
	combout => \Add0~92_combout\);

-- Location: LCCOMB_X61_Y35_N14
\Add0~93\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~93_combout\ = (\Add0~92_combout\ & ((\a[30]~input_o\ & (\Add0~91\ & VCC)) # (!\a[30]~input_o\ & (!\Add0~91\)))) # (!\Add0~92_combout\ & ((\a[30]~input_o\ & (!\Add0~91\)) # (!\a[30]~input_o\ & ((\Add0~91\) # (GND)))))
-- \Add0~94\ = CARRY((\Add0~92_combout\ & (!\a[30]~input_o\ & !\Add0~91\)) # (!\Add0~92_combout\ & ((!\Add0~91\) # (!\a[30]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~92_combout\,
	datab => \a[30]~input_o\,
	datad => VCC,
	cin => \Add0~91\,
	combout => \Add0~93_combout\,
	cout => \Add0~94\);

-- Location: LCCOMB_X57_Y37_N28
\result~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \result~26_combout\ = (\b[30]~input_o\ & \a[30]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b[30]~input_o\,
	datac => \a[30]~input_o\,
	combout => \result~26_combout\);

-- Location: LCCOMB_X57_Y37_N22
\Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\Mux10~1_combout\ & (\ShiftRight0~75_combout\ & ((\Mux10~0_combout\)))) # (!\Mux10~1_combout\ & (((\result~26_combout\) # (!\Mux10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~75_combout\,
	datab => \result~26_combout\,
	datac => \Mux10~1_combout\,
	datad => \Mux10~0_combout\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X57_Y38_N14
\Mux1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (\Mux1~0_combout\ & (((\ShiftRight1~57_combout\) # (!\opsel[1]~input_o\)))) # (!\Mux1~0_combout\ & (\a[31]~input_o\ & (\opsel[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[31]~input_o\,
	datab => \Mux1~0_combout\,
	datac => \opsel[1]~input_o\,
	datad => \ShiftRight1~57_combout\,
	combout => \Mux1~1_combout\);

-- Location: LCCOMB_X59_Y35_N24
\Mux1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~2_combout\ = (\Mux10~2_combout\ & ((\Mux29~8_combout\ & ((\Mux1~1_combout\))) # (!\Mux29~8_combout\ & (\Add0~93_combout\)))) # (!\Mux10~2_combout\ & (((!\Mux29~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~93_combout\,
	datab => \Mux10~2_combout\,
	datac => \Mux1~1_combout\,
	datad => \Mux29~8_combout\,
	combout => \Mux1~2_combout\);

-- Location: LCCOMB_X67_Y35_N26
\Mult0|auto_generated|add9_result[12]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|add9_result[12]~24_combout\ = ((\Mult0|auto_generated|mac_out4~DATAOUT12\ $ (\Mult0|auto_generated|mac_out6~DATAOUT12\ $ (!\Mult0|auto_generated|add9_result[11]~23\)))) # (GND)
-- \Mult0|auto_generated|add9_result[12]~25\ = CARRY((\Mult0|auto_generated|mac_out4~DATAOUT12\ & ((\Mult0|auto_generated|mac_out6~DATAOUT12\) # (!\Mult0|auto_generated|add9_result[11]~23\))) # (!\Mult0|auto_generated|mac_out4~DATAOUT12\ & 
-- (\Mult0|auto_generated|mac_out6~DATAOUT12\ & !\Mult0|auto_generated|add9_result[11]~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out4~DATAOUT12\,
	datab => \Mult0|auto_generated|mac_out6~DATAOUT12\,
	datad => VCC,
	cin => \Mult0|auto_generated|add9_result[11]~23\,
	combout => \Mult0|auto_generated|add9_result[12]~24_combout\,
	cout => \Mult0|auto_generated|add9_result[12]~25\);

-- Location: LCCOMB_X66_Y35_N26
\Mult0|auto_generated|op_1~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~24_combout\ = ((\Mult0|auto_generated|add9_result[12]~24_combout\ $ (\Mult0|auto_generated|mac_out2~DATAOUT30\ $ (!\Mult0|auto_generated|op_1~23\)))) # (GND)
-- \Mult0|auto_generated|op_1~25\ = CARRY((\Mult0|auto_generated|add9_result[12]~24_combout\ & ((\Mult0|auto_generated|mac_out2~DATAOUT30\) # (!\Mult0|auto_generated|op_1~23\))) # (!\Mult0|auto_generated|add9_result[12]~24_combout\ & 
-- (\Mult0|auto_generated|mac_out2~DATAOUT30\ & !\Mult0|auto_generated|op_1~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|add9_result[12]~24_combout\,
	datab => \Mult0|auto_generated|mac_out2~DATAOUT30\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~23\,
	combout => \Mult0|auto_generated|op_1~24_combout\,
	cout => \Mult0|auto_generated|op_1~25\);

-- Location: LCCOMB_X59_Y35_N2
\Mux1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~3_combout\ = (\Mux1~2_combout\ & (((\Mult0|auto_generated|op_1~24_combout\) # (!\Mux29~9_combout\)))) # (!\Mux1~2_combout\ & (\Mult1|auto_generated|op_1~24_combout\ & (\Mux29~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|op_1~24_combout\,
	datab => \Mux1~2_combout\,
	datac => \Mux29~9_combout\,
	datad => \Mult0|auto_generated|op_1~24_combout\,
	combout => \Mux1~3_combout\);

-- Location: LCCOMB_X59_Y35_N4
\Mux1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~4_combout\ = (\Mux1~3_combout\ & !\opsel[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux1~3_combout\,
	datad => \opsel[3]~input_o\,
	combout => \Mux1~4_combout\);

-- Location: LCCOMB_X67_Y35_N28
\Mult0|auto_generated|add9_result[13]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|add9_result[13]~26_combout\ = (\Mult0|auto_generated|mac_out4~DATAOUT13\ & ((\Mult0|auto_generated|mac_out6~DATAOUT13\ & (\Mult0|auto_generated|add9_result[12]~25\ & VCC)) # (!\Mult0|auto_generated|mac_out6~DATAOUT13\ & 
-- (!\Mult0|auto_generated|add9_result[12]~25\)))) # (!\Mult0|auto_generated|mac_out4~DATAOUT13\ & ((\Mult0|auto_generated|mac_out6~DATAOUT13\ & (!\Mult0|auto_generated|add9_result[12]~25\)) # (!\Mult0|auto_generated|mac_out6~DATAOUT13\ & 
-- ((\Mult0|auto_generated|add9_result[12]~25\) # (GND)))))
-- \Mult0|auto_generated|add9_result[13]~27\ = CARRY((\Mult0|auto_generated|mac_out4~DATAOUT13\ & (!\Mult0|auto_generated|mac_out6~DATAOUT13\ & !\Mult0|auto_generated|add9_result[12]~25\)) # (!\Mult0|auto_generated|mac_out4~DATAOUT13\ & 
-- ((!\Mult0|auto_generated|add9_result[12]~25\) # (!\Mult0|auto_generated|mac_out6~DATAOUT13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out4~DATAOUT13\,
	datab => \Mult0|auto_generated|mac_out6~DATAOUT13\,
	datad => VCC,
	cin => \Mult0|auto_generated|add9_result[12]~25\,
	combout => \Mult0|auto_generated|add9_result[13]~26_combout\,
	cout => \Mult0|auto_generated|add9_result[13]~27\);

-- Location: LCCOMB_X66_Y35_N28
\Mult0|auto_generated|op_1~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~26_combout\ = (\Mult0|auto_generated|mac_out2~DATAOUT31\ & ((\Mult0|auto_generated|add9_result[13]~26_combout\ & (\Mult0|auto_generated|op_1~25\ & VCC)) # (!\Mult0|auto_generated|add9_result[13]~26_combout\ & 
-- (!\Mult0|auto_generated|op_1~25\)))) # (!\Mult0|auto_generated|mac_out2~DATAOUT31\ & ((\Mult0|auto_generated|add9_result[13]~26_combout\ & (!\Mult0|auto_generated|op_1~25\)) # (!\Mult0|auto_generated|add9_result[13]~26_combout\ & 
-- ((\Mult0|auto_generated|op_1~25\) # (GND)))))
-- \Mult0|auto_generated|op_1~27\ = CARRY((\Mult0|auto_generated|mac_out2~DATAOUT31\ & (!\Mult0|auto_generated|add9_result[13]~26_combout\ & !\Mult0|auto_generated|op_1~25\)) # (!\Mult0|auto_generated|mac_out2~DATAOUT31\ & ((!\Mult0|auto_generated|op_1~25\) 
-- # (!\Mult0|auto_generated|add9_result[13]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT31\,
	datab => \Mult0|auto_generated|add9_result[13]~26_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~25\,
	combout => \Mult0|auto_generated|op_1~26_combout\,
	cout => \Mult0|auto_generated|op_1~27\);

-- Location: LCCOMB_X47_Y34_N10
\Mult1|auto_generated|add9_result[13]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|add9_result[13]~26_combout\ = (\Mult1|auto_generated|mac_out4~DATAOUT13\ & ((\Mult1|auto_generated|mac_out6~DATAOUT13\ & (\Mult1|auto_generated|add9_result[12]~25\ & VCC)) # (!\Mult1|auto_generated|mac_out6~DATAOUT13\ & 
-- (!\Mult1|auto_generated|add9_result[12]~25\)))) # (!\Mult1|auto_generated|mac_out4~DATAOUT13\ & ((\Mult1|auto_generated|mac_out6~DATAOUT13\ & (!\Mult1|auto_generated|add9_result[12]~25\)) # (!\Mult1|auto_generated|mac_out6~DATAOUT13\ & 
-- ((\Mult1|auto_generated|add9_result[12]~25\) # (GND)))))
-- \Mult1|auto_generated|add9_result[13]~27\ = CARRY((\Mult1|auto_generated|mac_out4~DATAOUT13\ & (!\Mult1|auto_generated|mac_out6~DATAOUT13\ & !\Mult1|auto_generated|add9_result[12]~25\)) # (!\Mult1|auto_generated|mac_out4~DATAOUT13\ & 
-- ((!\Mult1|auto_generated|add9_result[12]~25\) # (!\Mult1|auto_generated|mac_out6~DATAOUT13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out4~DATAOUT13\,
	datab => \Mult1|auto_generated|mac_out6~DATAOUT13\,
	datad => VCC,
	cin => \Mult1|auto_generated|add9_result[12]~25\,
	combout => \Mult1|auto_generated|add9_result[13]~26_combout\,
	cout => \Mult1|auto_generated|add9_result[13]~27\);

-- Location: LCCOMB_X49_Y35_N28
\Mult1|auto_generated|op_1~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_1~26_combout\ = (\Mult1|auto_generated|add9_result[13]~26_combout\ & ((\Mult1|auto_generated|mac_out2~DATAOUT31\ & (\Mult1|auto_generated|op_1~25\ & VCC)) # (!\Mult1|auto_generated|mac_out2~DATAOUT31\ & 
-- (!\Mult1|auto_generated|op_1~25\)))) # (!\Mult1|auto_generated|add9_result[13]~26_combout\ & ((\Mult1|auto_generated|mac_out2~DATAOUT31\ & (!\Mult1|auto_generated|op_1~25\)) # (!\Mult1|auto_generated|mac_out2~DATAOUT31\ & ((\Mult1|auto_generated|op_1~25\) 
-- # (GND)))))
-- \Mult1|auto_generated|op_1~27\ = CARRY((\Mult1|auto_generated|add9_result[13]~26_combout\ & (!\Mult1|auto_generated|mac_out2~DATAOUT31\ & !\Mult1|auto_generated|op_1~25\)) # (!\Mult1|auto_generated|add9_result[13]~26_combout\ & 
-- ((!\Mult1|auto_generated|op_1~25\) # (!\Mult1|auto_generated|mac_out2~DATAOUT31\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|add9_result[13]~26_combout\,
	datab => \Mult1|auto_generated|mac_out2~DATAOUT31\,
	datad => VCC,
	cin => \Mult1|auto_generated|op_1~25\,
	combout => \Mult1|auto_generated|op_1~26_combout\,
	cout => \Mult1|auto_generated|op_1~27\);

-- Location: LCCOMB_X57_Y39_N24
\Mux0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~3_combout\ = (\opsel[1]~input_o\ & ((\opsel[0]~input_o\ & ((\Mult1|auto_generated|op_1~26_combout\))) # (!\opsel[0]~input_o\ & (\Mult0|auto_generated|op_1~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opsel[0]~input_o\,
	datab => \Mult0|auto_generated|op_1~26_combout\,
	datac => \Mult1|auto_generated|op_1~26_combout\,
	datad => \opsel[1]~input_o\,
	combout => \Mux0~3_combout\);

-- Location: LCCOMB_X60_Y36_N8
\Add0~96\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~96_combout\ = \b[31]~input_o\ $ (\opsel[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b[31]~input_o\,
	datac => \opsel[0]~input_o\,
	combout => \Add0~96_combout\);

-- Location: LCCOMB_X61_Y38_N8
\Add0~95\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~95_combout\ = (\a[31]~input_o\ & (!\opsel[3]~input_o\ & (!\opsel[2]~input_o\ & !\opsel[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[31]~input_o\,
	datab => \opsel[3]~input_o\,
	datac => \opsel[2]~input_o\,
	datad => \opsel[1]~input_o\,
	combout => \Add0~95_combout\);

-- Location: LCCOMB_X61_Y35_N16
\Add0~97\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~97_combout\ = \Add0~96_combout\ $ (\Add0~94\ $ (!\Add0~95_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add0~96_combout\,
	datad => \Add0~95_combout\,
	cin => \Add0~94\,
	combout => \Add0~97_combout\);

-- Location: LCCOMB_X57_Y39_N18
\Mux0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~4_combout\ = (\Mux0~3_combout\) # ((\Add0~97_combout\ & !\opsel[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux0~3_combout\,
	datac => \Add0~97_combout\,
	datad => \opsel[1]~input_o\,
	combout => \Mux0~4_combout\);

-- Location: LCCOMB_X59_Y39_N2
\Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\opsel[0]~input_o\ & (\ShiftRight0~73_combout\ & (!\shamt[4]~input_o\ & !\opsel[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opsel[0]~input_o\,
	datab => \ShiftRight0~73_combout\,
	datac => \shamt[4]~input_o\,
	datad => \opsel[1]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X59_Y39_N12
\Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (\Mux0~0_combout\) # ((!\opsel[0]~input_o\ & ((\b[31]~input_o\) # (\opsel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opsel[0]~input_o\,
	datab => \Mux0~0_combout\,
	datac => \b[31]~input_o\,
	datad => \opsel[1]~input_o\,
	combout => \Mux0~1_combout\);

-- Location: LCCOMB_X57_Y39_N6
\Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = (\a[31]~input_o\ & (!\opsel[3]~input_o\ & (\opsel[2]~input_o\ & \Mux0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[31]~input_o\,
	datab => \opsel[3]~input_o\,
	datac => \opsel[2]~input_o\,
	datad => \Mux0~1_combout\,
	combout => \Mux0~2_combout\);

-- Location: LCCOMB_X57_Y39_N4
\Mux0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~5_combout\ = (\Mux0~2_combout\) # ((!\opsel[2]~input_o\ & (\Mux0~4_combout\ & !\opsel[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opsel[2]~input_o\,
	datab => \Mux0~4_combout\,
	datac => \opsel[3]~input_o\,
	datad => \Mux0~2_combout\,
	combout => \Mux0~5_combout\);

-- Location: LCCOMB_X67_Y35_N30
\Mult0|auto_generated|add9_result[14]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|add9_result[14]~28_combout\ = ((\Mult0|auto_generated|mac_out6~DATAOUT14\ $ (\Mult0|auto_generated|mac_out4~DATAOUT14\ $ (!\Mult0|auto_generated|add9_result[13]~27\)))) # (GND)
-- \Mult0|auto_generated|add9_result[14]~29\ = CARRY((\Mult0|auto_generated|mac_out6~DATAOUT14\ & ((\Mult0|auto_generated|mac_out4~DATAOUT14\) # (!\Mult0|auto_generated|add9_result[13]~27\))) # (!\Mult0|auto_generated|mac_out6~DATAOUT14\ & 
-- (\Mult0|auto_generated|mac_out4~DATAOUT14\ & !\Mult0|auto_generated|add9_result[13]~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out6~DATAOUT14\,
	datab => \Mult0|auto_generated|mac_out4~DATAOUT14\,
	datad => VCC,
	cin => \Mult0|auto_generated|add9_result[13]~27\,
	combout => \Mult0|auto_generated|add9_result[14]~28_combout\,
	cout => \Mult0|auto_generated|add9_result[14]~29\);

-- Location: LCCOMB_X66_Y35_N30
\Mult0|auto_generated|op_1~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~28_combout\ = ((\Mult0|auto_generated|add9_result[14]~28_combout\ $ (\Mult0|auto_generated|mac_out2~DATAOUT32\ $ (!\Mult0|auto_generated|op_1~27\)))) # (GND)
-- \Mult0|auto_generated|op_1~29\ = CARRY((\Mult0|auto_generated|add9_result[14]~28_combout\ & ((\Mult0|auto_generated|mac_out2~DATAOUT32\) # (!\Mult0|auto_generated|op_1~27\))) # (!\Mult0|auto_generated|add9_result[14]~28_combout\ & 
-- (\Mult0|auto_generated|mac_out2~DATAOUT32\ & !\Mult0|auto_generated|op_1~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|add9_result[14]~28_combout\,
	datab => \Mult0|auto_generated|mac_out2~DATAOUT32\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~27\,
	combout => \Mult0|auto_generated|op_1~28_combout\,
	cout => \Mult0|auto_generated|op_1~29\);

-- Location: LCCOMB_X47_Y34_N12
\Mult1|auto_generated|add9_result[14]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|add9_result[14]~28_combout\ = ((\Mult1|auto_generated|mac_out4~DATAOUT14\ $ (\Mult1|auto_generated|mac_out6~DATAOUT14\ $ (!\Mult1|auto_generated|add9_result[13]~27\)))) # (GND)
-- \Mult1|auto_generated|add9_result[14]~29\ = CARRY((\Mult1|auto_generated|mac_out4~DATAOUT14\ & ((\Mult1|auto_generated|mac_out6~DATAOUT14\) # (!\Mult1|auto_generated|add9_result[13]~27\))) # (!\Mult1|auto_generated|mac_out4~DATAOUT14\ & 
-- (\Mult1|auto_generated|mac_out6~DATAOUT14\ & !\Mult1|auto_generated|add9_result[13]~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out4~DATAOUT14\,
	datab => \Mult1|auto_generated|mac_out6~DATAOUT14\,
	datad => VCC,
	cin => \Mult1|auto_generated|add9_result[13]~27\,
	combout => \Mult1|auto_generated|add9_result[14]~28_combout\,
	cout => \Mult1|auto_generated|add9_result[14]~29\);

-- Location: LCCOMB_X49_Y35_N30
\Mult1|auto_generated|op_1~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_1~28_combout\ = ((\Mult1|auto_generated|mac_out2~DATAOUT32\ $ (\Mult1|auto_generated|add9_result[14]~28_combout\ $ (!\Mult1|auto_generated|op_1~27\)))) # (GND)
-- \Mult1|auto_generated|op_1~29\ = CARRY((\Mult1|auto_generated|mac_out2~DATAOUT32\ & ((\Mult1|auto_generated|add9_result[14]~28_combout\) # (!\Mult1|auto_generated|op_1~27\))) # (!\Mult1|auto_generated|mac_out2~DATAOUT32\ & 
-- (\Mult1|auto_generated|add9_result[14]~28_combout\ & !\Mult1|auto_generated|op_1~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out2~DATAOUT32\,
	datab => \Mult1|auto_generated|add9_result[14]~28_combout\,
	datad => VCC,
	cin => \Mult1|auto_generated|op_1~27\,
	combout => \Mult1|auto_generated|op_1~28_combout\,
	cout => \Mult1|auto_generated|op_1~29\);

-- Location: LCCOMB_X65_Y34_N8
\Mux63~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux63~0_combout\ = (\Mux29~9_combout\ & ((\opsel[0]~input_o\ & ((\Mult1|auto_generated|op_1~28_combout\))) # (!\opsel[0]~input_o\ & (\Mult0|auto_generated|op_1~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~9_combout\,
	datab => \Mult0|auto_generated|op_1~28_combout\,
	datac => \opsel[0]~input_o\,
	datad => \Mult1|auto_generated|op_1~28_combout\,
	combout => \Mux63~0_combout\);

-- Location: LCCOMB_X47_Y34_N14
\Mult1|auto_generated|add9_result[15]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|add9_result[15]~30_combout\ = (\Mult1|auto_generated|mac_out4~DATAOUT15\ & ((\Mult1|auto_generated|mac_out6~DATAOUT15\ & (\Mult1|auto_generated|add9_result[14]~29\ & VCC)) # (!\Mult1|auto_generated|mac_out6~DATAOUT15\ & 
-- (!\Mult1|auto_generated|add9_result[14]~29\)))) # (!\Mult1|auto_generated|mac_out4~DATAOUT15\ & ((\Mult1|auto_generated|mac_out6~DATAOUT15\ & (!\Mult1|auto_generated|add9_result[14]~29\)) # (!\Mult1|auto_generated|mac_out6~DATAOUT15\ & 
-- ((\Mult1|auto_generated|add9_result[14]~29\) # (GND)))))
-- \Mult1|auto_generated|add9_result[15]~31\ = CARRY((\Mult1|auto_generated|mac_out4~DATAOUT15\ & (!\Mult1|auto_generated|mac_out6~DATAOUT15\ & !\Mult1|auto_generated|add9_result[14]~29\)) # (!\Mult1|auto_generated|mac_out4~DATAOUT15\ & 
-- ((!\Mult1|auto_generated|add9_result[14]~29\) # (!\Mult1|auto_generated|mac_out6~DATAOUT15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out4~DATAOUT15\,
	datab => \Mult1|auto_generated|mac_out6~DATAOUT15\,
	datad => VCC,
	cin => \Mult1|auto_generated|add9_result[14]~29\,
	combout => \Mult1|auto_generated|add9_result[15]~30_combout\,
	cout => \Mult1|auto_generated|add9_result[15]~31\);

-- Location: LCCOMB_X49_Y34_N0
\Mult1|auto_generated|op_1~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_1~30_combout\ = (\Mult1|auto_generated|add9_result[15]~30_combout\ & ((\Mult1|auto_generated|mac_out2~DATAOUT33\ & (\Mult1|auto_generated|op_1~29\ & VCC)) # (!\Mult1|auto_generated|mac_out2~DATAOUT33\ & 
-- (!\Mult1|auto_generated|op_1~29\)))) # (!\Mult1|auto_generated|add9_result[15]~30_combout\ & ((\Mult1|auto_generated|mac_out2~DATAOUT33\ & (!\Mult1|auto_generated|op_1~29\)) # (!\Mult1|auto_generated|mac_out2~DATAOUT33\ & ((\Mult1|auto_generated|op_1~29\) 
-- # (GND)))))
-- \Mult1|auto_generated|op_1~31\ = CARRY((\Mult1|auto_generated|add9_result[15]~30_combout\ & (!\Mult1|auto_generated|mac_out2~DATAOUT33\ & !\Mult1|auto_generated|op_1~29\)) # (!\Mult1|auto_generated|add9_result[15]~30_combout\ & 
-- ((!\Mult1|auto_generated|op_1~29\) # (!\Mult1|auto_generated|mac_out2~DATAOUT33\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|add9_result[15]~30_combout\,
	datab => \Mult1|auto_generated|mac_out2~DATAOUT33\,
	datad => VCC,
	cin => \Mult1|auto_generated|op_1~29\,
	combout => \Mult1|auto_generated|op_1~30_combout\,
	cout => \Mult1|auto_generated|op_1~31\);

-- Location: LCCOMB_X67_Y34_N0
\Mult0|auto_generated|add9_result[15]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|add9_result[15]~30_combout\ = (\Mult0|auto_generated|mac_out4~DATAOUT15\ & ((\Mult0|auto_generated|mac_out6~DATAOUT15\ & (\Mult0|auto_generated|add9_result[14]~29\ & VCC)) # (!\Mult0|auto_generated|mac_out6~DATAOUT15\ & 
-- (!\Mult0|auto_generated|add9_result[14]~29\)))) # (!\Mult0|auto_generated|mac_out4~DATAOUT15\ & ((\Mult0|auto_generated|mac_out6~DATAOUT15\ & (!\Mult0|auto_generated|add9_result[14]~29\)) # (!\Mult0|auto_generated|mac_out6~DATAOUT15\ & 
-- ((\Mult0|auto_generated|add9_result[14]~29\) # (GND)))))
-- \Mult0|auto_generated|add9_result[15]~31\ = CARRY((\Mult0|auto_generated|mac_out4~DATAOUT15\ & (!\Mult0|auto_generated|mac_out6~DATAOUT15\ & !\Mult0|auto_generated|add9_result[14]~29\)) # (!\Mult0|auto_generated|mac_out4~DATAOUT15\ & 
-- ((!\Mult0|auto_generated|add9_result[14]~29\) # (!\Mult0|auto_generated|mac_out6~DATAOUT15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out4~DATAOUT15\,
	datab => \Mult0|auto_generated|mac_out6~DATAOUT15\,
	datad => VCC,
	cin => \Mult0|auto_generated|add9_result[14]~29\,
	combout => \Mult0|auto_generated|add9_result[15]~30_combout\,
	cout => \Mult0|auto_generated|add9_result[15]~31\);

-- Location: LCCOMB_X66_Y34_N0
\Mult0|auto_generated|op_1~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~30_combout\ = (\Mult0|auto_generated|mac_out2~DATAOUT33\ & ((\Mult0|auto_generated|add9_result[15]~30_combout\ & (\Mult0|auto_generated|op_1~29\ & VCC)) # (!\Mult0|auto_generated|add9_result[15]~30_combout\ & 
-- (!\Mult0|auto_generated|op_1~29\)))) # (!\Mult0|auto_generated|mac_out2~DATAOUT33\ & ((\Mult0|auto_generated|add9_result[15]~30_combout\ & (!\Mult0|auto_generated|op_1~29\)) # (!\Mult0|auto_generated|add9_result[15]~30_combout\ & 
-- ((\Mult0|auto_generated|op_1~29\) # (GND)))))
-- \Mult0|auto_generated|op_1~31\ = CARRY((\Mult0|auto_generated|mac_out2~DATAOUT33\ & (!\Mult0|auto_generated|add9_result[15]~30_combout\ & !\Mult0|auto_generated|op_1~29\)) # (!\Mult0|auto_generated|mac_out2~DATAOUT33\ & ((!\Mult0|auto_generated|op_1~29\) 
-- # (!\Mult0|auto_generated|add9_result[15]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT33\,
	datab => \Mult0|auto_generated|add9_result[15]~30_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~29\,
	combout => \Mult0|auto_generated|op_1~30_combout\,
	cout => \Mult0|auto_generated|op_1~31\);

-- Location: LCCOMB_X65_Y33_N8
\Mux62~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux62~0_combout\ = (\Mux29~9_combout\ & ((\opsel[0]~input_o\ & (\Mult1|auto_generated|op_1~30_combout\)) # (!\opsel[0]~input_o\ & ((\Mult0|auto_generated|op_1~30_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|op_1~30_combout\,
	datab => \Mult0|auto_generated|op_1~30_combout\,
	datac => \Mux29~9_combout\,
	datad => \opsel[0]~input_o\,
	combout => \Mux62~0_combout\);

-- Location: LCCOMB_X47_Y34_N16
\Mult1|auto_generated|add9_result[16]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|add9_result[16]~32_combout\ = ((\Mult1|auto_generated|mac_out4~DATAOUT16\ $ (\Mult1|auto_generated|mac_out6~DATAOUT16\ $ (!\Mult1|auto_generated|add9_result[15]~31\)))) # (GND)
-- \Mult1|auto_generated|add9_result[16]~33\ = CARRY((\Mult1|auto_generated|mac_out4~DATAOUT16\ & ((\Mult1|auto_generated|mac_out6~DATAOUT16\) # (!\Mult1|auto_generated|add9_result[15]~31\))) # (!\Mult1|auto_generated|mac_out4~DATAOUT16\ & 
-- (\Mult1|auto_generated|mac_out6~DATAOUT16\ & !\Mult1|auto_generated|add9_result[15]~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out4~DATAOUT16\,
	datab => \Mult1|auto_generated|mac_out6~DATAOUT16\,
	datad => VCC,
	cin => \Mult1|auto_generated|add9_result[15]~31\,
	combout => \Mult1|auto_generated|add9_result[16]~32_combout\,
	cout => \Mult1|auto_generated|add9_result[16]~33\);

-- Location: LCCOMB_X49_Y34_N2
\Mult1|auto_generated|op_1~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_1~32_combout\ = ((\Mult1|auto_generated|mac_out2~DATAOUT34\ $ (\Mult1|auto_generated|add9_result[16]~32_combout\ $ (!\Mult1|auto_generated|op_1~31\)))) # (GND)
-- \Mult1|auto_generated|op_1~33\ = CARRY((\Mult1|auto_generated|mac_out2~DATAOUT34\ & ((\Mult1|auto_generated|add9_result[16]~32_combout\) # (!\Mult1|auto_generated|op_1~31\))) # (!\Mult1|auto_generated|mac_out2~DATAOUT34\ & 
-- (\Mult1|auto_generated|add9_result[16]~32_combout\ & !\Mult1|auto_generated|op_1~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out2~DATAOUT34\,
	datab => \Mult1|auto_generated|add9_result[16]~32_combout\,
	datad => VCC,
	cin => \Mult1|auto_generated|op_1~31\,
	combout => \Mult1|auto_generated|op_1~32_combout\,
	cout => \Mult1|auto_generated|op_1~33\);

-- Location: LCCOMB_X67_Y34_N2
\Mult0|auto_generated|add9_result[16]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|add9_result[16]~32_combout\ = ((\Mult0|auto_generated|mac_out4~DATAOUT16\ $ (\Mult0|auto_generated|mac_out6~DATAOUT16\ $ (!\Mult0|auto_generated|add9_result[15]~31\)))) # (GND)
-- \Mult0|auto_generated|add9_result[16]~33\ = CARRY((\Mult0|auto_generated|mac_out4~DATAOUT16\ & ((\Mult0|auto_generated|mac_out6~DATAOUT16\) # (!\Mult0|auto_generated|add9_result[15]~31\))) # (!\Mult0|auto_generated|mac_out4~DATAOUT16\ & 
-- (\Mult0|auto_generated|mac_out6~DATAOUT16\ & !\Mult0|auto_generated|add9_result[15]~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out4~DATAOUT16\,
	datab => \Mult0|auto_generated|mac_out6~DATAOUT16\,
	datad => VCC,
	cin => \Mult0|auto_generated|add9_result[15]~31\,
	combout => \Mult0|auto_generated|add9_result[16]~32_combout\,
	cout => \Mult0|auto_generated|add9_result[16]~33\);

-- Location: LCCOMB_X66_Y34_N2
\Mult0|auto_generated|op_1~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~32_combout\ = ((\Mult0|auto_generated|add9_result[16]~32_combout\ $ (\Mult0|auto_generated|mac_out2~DATAOUT34\ $ (!\Mult0|auto_generated|op_1~31\)))) # (GND)
-- \Mult0|auto_generated|op_1~33\ = CARRY((\Mult0|auto_generated|add9_result[16]~32_combout\ & ((\Mult0|auto_generated|mac_out2~DATAOUT34\) # (!\Mult0|auto_generated|op_1~31\))) # (!\Mult0|auto_generated|add9_result[16]~32_combout\ & 
-- (\Mult0|auto_generated|mac_out2~DATAOUT34\ & !\Mult0|auto_generated|op_1~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|add9_result[16]~32_combout\,
	datab => \Mult0|auto_generated|mac_out2~DATAOUT34\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~31\,
	combout => \Mult0|auto_generated|op_1~32_combout\,
	cout => \Mult0|auto_generated|op_1~33\);

-- Location: LCCOMB_X65_Y34_N2
\Mux61~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux61~0_combout\ = (\Mux29~9_combout\ & ((\opsel[0]~input_o\ & (\Mult1|auto_generated|op_1~32_combout\)) # (!\opsel[0]~input_o\ & ((\Mult0|auto_generated|op_1~32_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~9_combout\,
	datab => \Mult1|auto_generated|op_1~32_combout\,
	datac => \opsel[0]~input_o\,
	datad => \Mult0|auto_generated|op_1~32_combout\,
	combout => \Mux61~0_combout\);

-- Location: LCCOMB_X67_Y34_N4
\Mult0|auto_generated|add9_result[17]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|add9_result[17]~34_combout\ = (\Mult0|auto_generated|mac_out4~DATAOUT17\ & ((\Mult0|auto_generated|mac_out6~DATAOUT17\ & (\Mult0|auto_generated|add9_result[16]~33\ & VCC)) # (!\Mult0|auto_generated|mac_out6~DATAOUT17\ & 
-- (!\Mult0|auto_generated|add9_result[16]~33\)))) # (!\Mult0|auto_generated|mac_out4~DATAOUT17\ & ((\Mult0|auto_generated|mac_out6~DATAOUT17\ & (!\Mult0|auto_generated|add9_result[16]~33\)) # (!\Mult0|auto_generated|mac_out6~DATAOUT17\ & 
-- ((\Mult0|auto_generated|add9_result[16]~33\) # (GND)))))
-- \Mult0|auto_generated|add9_result[17]~35\ = CARRY((\Mult0|auto_generated|mac_out4~DATAOUT17\ & (!\Mult0|auto_generated|mac_out6~DATAOUT17\ & !\Mult0|auto_generated|add9_result[16]~33\)) # (!\Mult0|auto_generated|mac_out4~DATAOUT17\ & 
-- ((!\Mult0|auto_generated|add9_result[16]~33\) # (!\Mult0|auto_generated|mac_out6~DATAOUT17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out4~DATAOUT17\,
	datab => \Mult0|auto_generated|mac_out6~DATAOUT17\,
	datad => VCC,
	cin => \Mult0|auto_generated|add9_result[16]~33\,
	combout => \Mult0|auto_generated|add9_result[17]~34_combout\,
	cout => \Mult0|auto_generated|add9_result[17]~35\);

-- Location: LCCOMB_X66_Y34_N4
\Mult0|auto_generated|op_1~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~34_combout\ = (\Mult0|auto_generated|add9_result[17]~34_combout\ & ((\Mult0|auto_generated|mac_out2~DATAOUT35\ & (\Mult0|auto_generated|op_1~33\ & VCC)) # (!\Mult0|auto_generated|mac_out2~DATAOUT35\ & 
-- (!\Mult0|auto_generated|op_1~33\)))) # (!\Mult0|auto_generated|add9_result[17]~34_combout\ & ((\Mult0|auto_generated|mac_out2~DATAOUT35\ & (!\Mult0|auto_generated|op_1~33\)) # (!\Mult0|auto_generated|mac_out2~DATAOUT35\ & ((\Mult0|auto_generated|op_1~33\) 
-- # (GND)))))
-- \Mult0|auto_generated|op_1~35\ = CARRY((\Mult0|auto_generated|add9_result[17]~34_combout\ & (!\Mult0|auto_generated|mac_out2~DATAOUT35\ & !\Mult0|auto_generated|op_1~33\)) # (!\Mult0|auto_generated|add9_result[17]~34_combout\ & 
-- ((!\Mult0|auto_generated|op_1~33\) # (!\Mult0|auto_generated|mac_out2~DATAOUT35\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|add9_result[17]~34_combout\,
	datab => \Mult0|auto_generated|mac_out2~DATAOUT35\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~33\,
	combout => \Mult0|auto_generated|op_1~34_combout\,
	cout => \Mult0|auto_generated|op_1~35\);

-- Location: LCCOMB_X47_Y34_N18
\Mult1|auto_generated|add9_result[17]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|add9_result[17]~34_combout\ = (\Mult1|auto_generated|mac_out6~DATAOUT17\ & ((\Mult1|auto_generated|mac_out4~DATAOUT17\ & (\Mult1|auto_generated|add9_result[16]~33\ & VCC)) # (!\Mult1|auto_generated|mac_out4~DATAOUT17\ & 
-- (!\Mult1|auto_generated|add9_result[16]~33\)))) # (!\Mult1|auto_generated|mac_out6~DATAOUT17\ & ((\Mult1|auto_generated|mac_out4~DATAOUT17\ & (!\Mult1|auto_generated|add9_result[16]~33\)) # (!\Mult1|auto_generated|mac_out4~DATAOUT17\ & 
-- ((\Mult1|auto_generated|add9_result[16]~33\) # (GND)))))
-- \Mult1|auto_generated|add9_result[17]~35\ = CARRY((\Mult1|auto_generated|mac_out6~DATAOUT17\ & (!\Mult1|auto_generated|mac_out4~DATAOUT17\ & !\Mult1|auto_generated|add9_result[16]~33\)) # (!\Mult1|auto_generated|mac_out6~DATAOUT17\ & 
-- ((!\Mult1|auto_generated|add9_result[16]~33\) # (!\Mult1|auto_generated|mac_out4~DATAOUT17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out6~DATAOUT17\,
	datab => \Mult1|auto_generated|mac_out4~DATAOUT17\,
	datad => VCC,
	cin => \Mult1|auto_generated|add9_result[16]~33\,
	combout => \Mult1|auto_generated|add9_result[17]~34_combout\,
	cout => \Mult1|auto_generated|add9_result[17]~35\);

-- Location: LCCOMB_X49_Y34_N4
\Mult1|auto_generated|op_1~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_1~34_combout\ = (\Mult1|auto_generated|mac_out2~DATAOUT35\ & ((\Mult1|auto_generated|add9_result[17]~34_combout\ & (\Mult1|auto_generated|op_1~33\ & VCC)) # (!\Mult1|auto_generated|add9_result[17]~34_combout\ & 
-- (!\Mult1|auto_generated|op_1~33\)))) # (!\Mult1|auto_generated|mac_out2~DATAOUT35\ & ((\Mult1|auto_generated|add9_result[17]~34_combout\ & (!\Mult1|auto_generated|op_1~33\)) # (!\Mult1|auto_generated|add9_result[17]~34_combout\ & 
-- ((\Mult1|auto_generated|op_1~33\) # (GND)))))
-- \Mult1|auto_generated|op_1~35\ = CARRY((\Mult1|auto_generated|mac_out2~DATAOUT35\ & (!\Mult1|auto_generated|add9_result[17]~34_combout\ & !\Mult1|auto_generated|op_1~33\)) # (!\Mult1|auto_generated|mac_out2~DATAOUT35\ & ((!\Mult1|auto_generated|op_1~33\) 
-- # (!\Mult1|auto_generated|add9_result[17]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out2~DATAOUT35\,
	datab => \Mult1|auto_generated|add9_result[17]~34_combout\,
	datad => VCC,
	cin => \Mult1|auto_generated|op_1~33\,
	combout => \Mult1|auto_generated|op_1~34_combout\,
	cout => \Mult1|auto_generated|op_1~35\);

-- Location: LCCOMB_X65_Y33_N26
\Mux60~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux60~0_combout\ = (\Mux29~9_combout\ & ((\opsel[0]~input_o\ & ((\Mult1|auto_generated|op_1~34_combout\))) # (!\opsel[0]~input_o\ & (\Mult0|auto_generated|op_1~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~9_combout\,
	datab => \Mult0|auto_generated|op_1~34_combout\,
	datac => \Mult1|auto_generated|op_1~34_combout\,
	datad => \opsel[0]~input_o\,
	combout => \Mux60~0_combout\);

-- Location: DSPMULT_X68_Y33_N0
\Mult0|auto_generated|mac_mult7\ : fiftyfivenm_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "none",
	dataa_width => 18,
	datab_clock => "none",
	datab_width => 18,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => VCC,
	signb => VCC,
	dataa => \Mult0|auto_generated|mac_mult7_DATAA_bus\,
	datab => \Mult0|auto_generated|mac_mult7_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult0|auto_generated|mac_mult7_DATAOUT_bus\);

-- Location: DSPOUT_X68_Y33_N2
\Mult0|auto_generated|mac_out8\ : fiftyfivenm_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out8_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult0|auto_generated|mac_out8_DATAOUT_bus\);

-- Location: LCCOMB_X67_Y34_N6
\Mult0|auto_generated|add9_result[18]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|add9_result[18]~36_combout\ = ((\Mult0|auto_generated|mac_out8~dataout\ $ (\Mult0|auto_generated|mac_out6~DATAOUT18\ $ (!\Mult0|auto_generated|add9_result[17]~35\)))) # (GND)
-- \Mult0|auto_generated|add9_result[18]~37\ = CARRY((\Mult0|auto_generated|mac_out8~dataout\ & ((\Mult0|auto_generated|mac_out6~DATAOUT18\) # (!\Mult0|auto_generated|add9_result[17]~35\))) # (!\Mult0|auto_generated|mac_out8~dataout\ & 
-- (\Mult0|auto_generated|mac_out6~DATAOUT18\ & !\Mult0|auto_generated|add9_result[17]~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out8~dataout\,
	datab => \Mult0|auto_generated|mac_out6~DATAOUT18\,
	datad => VCC,
	cin => \Mult0|auto_generated|add9_result[17]~35\,
	combout => \Mult0|auto_generated|add9_result[18]~36_combout\,
	cout => \Mult0|auto_generated|add9_result[18]~37\);

-- Location: LCCOMB_X66_Y34_N6
\Mult0|auto_generated|op_1~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~36_combout\ = ((\Mult0|auto_generated|add9_result[18]~36_combout\ $ (\Mult0|auto_generated|mac_out4~DATAOUT18\ $ (!\Mult0|auto_generated|op_1~35\)))) # (GND)
-- \Mult0|auto_generated|op_1~37\ = CARRY((\Mult0|auto_generated|add9_result[18]~36_combout\ & ((\Mult0|auto_generated|mac_out4~DATAOUT18\) # (!\Mult0|auto_generated|op_1~35\))) # (!\Mult0|auto_generated|add9_result[18]~36_combout\ & 
-- (\Mult0|auto_generated|mac_out4~DATAOUT18\ & !\Mult0|auto_generated|op_1~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|add9_result[18]~36_combout\,
	datab => \Mult0|auto_generated|mac_out4~DATAOUT18\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~35\,
	combout => \Mult0|auto_generated|op_1~36_combout\,
	cout => \Mult0|auto_generated|op_1~37\);

-- Location: DSPMULT_X48_Y33_N0
\Mult1|auto_generated|mac_mult7\ : fiftyfivenm_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "none",
	dataa_width => 18,
	datab_clock => "none",
	datab_width => 18,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => GND,
	signb => GND,
	dataa => \Mult1|auto_generated|mac_mult7_DATAA_bus\,
	datab => \Mult1|auto_generated|mac_mult7_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult1|auto_generated|mac_mult7_DATAOUT_bus\);

-- Location: DSPOUT_X48_Y33_N2
\Mult1|auto_generated|mac_out8\ : fiftyfivenm_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out8_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult1|auto_generated|mac_out8_DATAOUT_bus\);

-- Location: LCCOMB_X47_Y34_N20
\Mult1|auto_generated|add9_result[18]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|add9_result[18]~36_combout\ = ((\Mult1|auto_generated|mac_out6~DATAOUT18\ $ (\Mult1|auto_generated|mac_out8~dataout\ $ (!\Mult1|auto_generated|add9_result[17]~35\)))) # (GND)
-- \Mult1|auto_generated|add9_result[18]~37\ = CARRY((\Mult1|auto_generated|mac_out6~DATAOUT18\ & ((\Mult1|auto_generated|mac_out8~dataout\) # (!\Mult1|auto_generated|add9_result[17]~35\))) # (!\Mult1|auto_generated|mac_out6~DATAOUT18\ & 
-- (\Mult1|auto_generated|mac_out8~dataout\ & !\Mult1|auto_generated|add9_result[17]~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out6~DATAOUT18\,
	datab => \Mult1|auto_generated|mac_out8~dataout\,
	datad => VCC,
	cin => \Mult1|auto_generated|add9_result[17]~35\,
	combout => \Mult1|auto_generated|add9_result[18]~36_combout\,
	cout => \Mult1|auto_generated|add9_result[18]~37\);

-- Location: LCCOMB_X49_Y34_N6
\Mult1|auto_generated|op_1~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_1~36_combout\ = ((\Mult1|auto_generated|add9_result[18]~36_combout\ $ (\Mult1|auto_generated|mac_out4~DATAOUT18\ $ (!\Mult1|auto_generated|op_1~35\)))) # (GND)
-- \Mult1|auto_generated|op_1~37\ = CARRY((\Mult1|auto_generated|add9_result[18]~36_combout\ & ((\Mult1|auto_generated|mac_out4~DATAOUT18\) # (!\Mult1|auto_generated|op_1~35\))) # (!\Mult1|auto_generated|add9_result[18]~36_combout\ & 
-- (\Mult1|auto_generated|mac_out4~DATAOUT18\ & !\Mult1|auto_generated|op_1~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|add9_result[18]~36_combout\,
	datab => \Mult1|auto_generated|mac_out4~DATAOUT18\,
	datad => VCC,
	cin => \Mult1|auto_generated|op_1~35\,
	combout => \Mult1|auto_generated|op_1~36_combout\,
	cout => \Mult1|auto_generated|op_1~37\);

-- Location: LCCOMB_X65_Y34_N20
\Mux59~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux59~0_combout\ = (\Mux29~9_combout\ & ((\opsel[0]~input_o\ & ((\Mult1|auto_generated|op_1~36_combout\))) # (!\opsel[0]~input_o\ & (\Mult0|auto_generated|op_1~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~9_combout\,
	datab => \Mult0|auto_generated|op_1~36_combout\,
	datac => \opsel[0]~input_o\,
	datad => \Mult1|auto_generated|op_1~36_combout\,
	combout => \Mux59~0_combout\);

-- Location: LCCOMB_X67_Y34_N8
\Mult0|auto_generated|add9_result[19]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|add9_result[19]~38_combout\ = (\Mult0|auto_generated|mac_out6~DATAOUT19\ & ((\Mult0|auto_generated|mac_out8~DATAOUT1\ & (\Mult0|auto_generated|add9_result[18]~37\ & VCC)) # (!\Mult0|auto_generated|mac_out8~DATAOUT1\ & 
-- (!\Mult0|auto_generated|add9_result[18]~37\)))) # (!\Mult0|auto_generated|mac_out6~DATAOUT19\ & ((\Mult0|auto_generated|mac_out8~DATAOUT1\ & (!\Mult0|auto_generated|add9_result[18]~37\)) # (!\Mult0|auto_generated|mac_out8~DATAOUT1\ & 
-- ((\Mult0|auto_generated|add9_result[18]~37\) # (GND)))))
-- \Mult0|auto_generated|add9_result[19]~39\ = CARRY((\Mult0|auto_generated|mac_out6~DATAOUT19\ & (!\Mult0|auto_generated|mac_out8~DATAOUT1\ & !\Mult0|auto_generated|add9_result[18]~37\)) # (!\Mult0|auto_generated|mac_out6~DATAOUT19\ & 
-- ((!\Mult0|auto_generated|add9_result[18]~37\) # (!\Mult0|auto_generated|mac_out8~DATAOUT1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out6~DATAOUT19\,
	datab => \Mult0|auto_generated|mac_out8~DATAOUT1\,
	datad => VCC,
	cin => \Mult0|auto_generated|add9_result[18]~37\,
	combout => \Mult0|auto_generated|add9_result[19]~38_combout\,
	cout => \Mult0|auto_generated|add9_result[19]~39\);

-- Location: LCCOMB_X66_Y34_N8
\Mult0|auto_generated|op_1~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~38_combout\ = (\Mult0|auto_generated|add9_result[19]~38_combout\ & ((\Mult0|auto_generated|mac_out4~DATAOUT19\ & (\Mult0|auto_generated|op_1~37\ & VCC)) # (!\Mult0|auto_generated|mac_out4~DATAOUT19\ & 
-- (!\Mult0|auto_generated|op_1~37\)))) # (!\Mult0|auto_generated|add9_result[19]~38_combout\ & ((\Mult0|auto_generated|mac_out4~DATAOUT19\ & (!\Mult0|auto_generated|op_1~37\)) # (!\Mult0|auto_generated|mac_out4~DATAOUT19\ & ((\Mult0|auto_generated|op_1~37\) 
-- # (GND)))))
-- \Mult0|auto_generated|op_1~39\ = CARRY((\Mult0|auto_generated|add9_result[19]~38_combout\ & (!\Mult0|auto_generated|mac_out4~DATAOUT19\ & !\Mult0|auto_generated|op_1~37\)) # (!\Mult0|auto_generated|add9_result[19]~38_combout\ & 
-- ((!\Mult0|auto_generated|op_1~37\) # (!\Mult0|auto_generated|mac_out4~DATAOUT19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|add9_result[19]~38_combout\,
	datab => \Mult0|auto_generated|mac_out4~DATAOUT19\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~37\,
	combout => \Mult0|auto_generated|op_1~38_combout\,
	cout => \Mult0|auto_generated|op_1~39\);

-- Location: LCCOMB_X47_Y34_N22
\Mult1|auto_generated|add9_result[19]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|add9_result[19]~38_combout\ = (\Mult1|auto_generated|mac_out8~DATAOUT1\ & ((\Mult1|auto_generated|mac_out6~DATAOUT19\ & (\Mult1|auto_generated|add9_result[18]~37\ & VCC)) # (!\Mult1|auto_generated|mac_out6~DATAOUT19\ & 
-- (!\Mult1|auto_generated|add9_result[18]~37\)))) # (!\Mult1|auto_generated|mac_out8~DATAOUT1\ & ((\Mult1|auto_generated|mac_out6~DATAOUT19\ & (!\Mult1|auto_generated|add9_result[18]~37\)) # (!\Mult1|auto_generated|mac_out6~DATAOUT19\ & 
-- ((\Mult1|auto_generated|add9_result[18]~37\) # (GND)))))
-- \Mult1|auto_generated|add9_result[19]~39\ = CARRY((\Mult1|auto_generated|mac_out8~DATAOUT1\ & (!\Mult1|auto_generated|mac_out6~DATAOUT19\ & !\Mult1|auto_generated|add9_result[18]~37\)) # (!\Mult1|auto_generated|mac_out8~DATAOUT1\ & 
-- ((!\Mult1|auto_generated|add9_result[18]~37\) # (!\Mult1|auto_generated|mac_out6~DATAOUT19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out8~DATAOUT1\,
	datab => \Mult1|auto_generated|mac_out6~DATAOUT19\,
	datad => VCC,
	cin => \Mult1|auto_generated|add9_result[18]~37\,
	combout => \Mult1|auto_generated|add9_result[19]~38_combout\,
	cout => \Mult1|auto_generated|add9_result[19]~39\);

-- Location: LCCOMB_X49_Y34_N8
\Mult1|auto_generated|op_1~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_1~38_combout\ = (\Mult1|auto_generated|mac_out4~DATAOUT19\ & ((\Mult1|auto_generated|add9_result[19]~38_combout\ & (\Mult1|auto_generated|op_1~37\ & VCC)) # (!\Mult1|auto_generated|add9_result[19]~38_combout\ & 
-- (!\Mult1|auto_generated|op_1~37\)))) # (!\Mult1|auto_generated|mac_out4~DATAOUT19\ & ((\Mult1|auto_generated|add9_result[19]~38_combout\ & (!\Mult1|auto_generated|op_1~37\)) # (!\Mult1|auto_generated|add9_result[19]~38_combout\ & 
-- ((\Mult1|auto_generated|op_1~37\) # (GND)))))
-- \Mult1|auto_generated|op_1~39\ = CARRY((\Mult1|auto_generated|mac_out4~DATAOUT19\ & (!\Mult1|auto_generated|add9_result[19]~38_combout\ & !\Mult1|auto_generated|op_1~37\)) # (!\Mult1|auto_generated|mac_out4~DATAOUT19\ & ((!\Mult1|auto_generated|op_1~37\) 
-- # (!\Mult1|auto_generated|add9_result[19]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out4~DATAOUT19\,
	datab => \Mult1|auto_generated|add9_result[19]~38_combout\,
	datad => VCC,
	cin => \Mult1|auto_generated|op_1~37\,
	combout => \Mult1|auto_generated|op_1~38_combout\,
	cout => \Mult1|auto_generated|op_1~39\);

-- Location: LCCOMB_X65_Y34_N6
\Mux58~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux58~0_combout\ = (\Mux29~9_combout\ & ((\opsel[0]~input_o\ & ((\Mult1|auto_generated|op_1~38_combout\))) # (!\opsel[0]~input_o\ & (\Mult0|auto_generated|op_1~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~9_combout\,
	datab => \Mult0|auto_generated|op_1~38_combout\,
	datac => \opsel[0]~input_o\,
	datad => \Mult1|auto_generated|op_1~38_combout\,
	combout => \Mux58~0_combout\);

-- Location: LCCOMB_X47_Y34_N24
\Mult1|auto_generated|add9_result[20]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|add9_result[20]~40_combout\ = ((\Mult1|auto_generated|mac_out6~DATAOUT20\ $ (\Mult1|auto_generated|mac_out8~DATAOUT2\ $ (!\Mult1|auto_generated|add9_result[19]~39\)))) # (GND)
-- \Mult1|auto_generated|add9_result[20]~41\ = CARRY((\Mult1|auto_generated|mac_out6~DATAOUT20\ & ((\Mult1|auto_generated|mac_out8~DATAOUT2\) # (!\Mult1|auto_generated|add9_result[19]~39\))) # (!\Mult1|auto_generated|mac_out6~DATAOUT20\ & 
-- (\Mult1|auto_generated|mac_out8~DATAOUT2\ & !\Mult1|auto_generated|add9_result[19]~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out6~DATAOUT20\,
	datab => \Mult1|auto_generated|mac_out8~DATAOUT2\,
	datad => VCC,
	cin => \Mult1|auto_generated|add9_result[19]~39\,
	combout => \Mult1|auto_generated|add9_result[20]~40_combout\,
	cout => \Mult1|auto_generated|add9_result[20]~41\);

-- Location: LCCOMB_X49_Y34_N10
\Mult1|auto_generated|op_1~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_1~40_combout\ = ((\Mult1|auto_generated|mac_out4~DATAOUT20\ $ (\Mult1|auto_generated|add9_result[20]~40_combout\ $ (!\Mult1|auto_generated|op_1~39\)))) # (GND)
-- \Mult1|auto_generated|op_1~41\ = CARRY((\Mult1|auto_generated|mac_out4~DATAOUT20\ & ((\Mult1|auto_generated|add9_result[20]~40_combout\) # (!\Mult1|auto_generated|op_1~39\))) # (!\Mult1|auto_generated|mac_out4~DATAOUT20\ & 
-- (\Mult1|auto_generated|add9_result[20]~40_combout\ & !\Mult1|auto_generated|op_1~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out4~DATAOUT20\,
	datab => \Mult1|auto_generated|add9_result[20]~40_combout\,
	datad => VCC,
	cin => \Mult1|auto_generated|op_1~39\,
	combout => \Mult1|auto_generated|op_1~40_combout\,
	cout => \Mult1|auto_generated|op_1~41\);

-- Location: LCCOMB_X67_Y34_N10
\Mult0|auto_generated|add9_result[20]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|add9_result[20]~40_combout\ = ((\Mult0|auto_generated|mac_out8~DATAOUT2\ $ (\Mult0|auto_generated|mac_out6~DATAOUT20\ $ (!\Mult0|auto_generated|add9_result[19]~39\)))) # (GND)
-- \Mult0|auto_generated|add9_result[20]~41\ = CARRY((\Mult0|auto_generated|mac_out8~DATAOUT2\ & ((\Mult0|auto_generated|mac_out6~DATAOUT20\) # (!\Mult0|auto_generated|add9_result[19]~39\))) # (!\Mult0|auto_generated|mac_out8~DATAOUT2\ & 
-- (\Mult0|auto_generated|mac_out6~DATAOUT20\ & !\Mult0|auto_generated|add9_result[19]~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out8~DATAOUT2\,
	datab => \Mult0|auto_generated|mac_out6~DATAOUT20\,
	datad => VCC,
	cin => \Mult0|auto_generated|add9_result[19]~39\,
	combout => \Mult0|auto_generated|add9_result[20]~40_combout\,
	cout => \Mult0|auto_generated|add9_result[20]~41\);

-- Location: LCCOMB_X66_Y34_N10
\Mult0|auto_generated|op_1~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~40_combout\ = ((\Mult0|auto_generated|mac_out4~DATAOUT20\ $ (\Mult0|auto_generated|add9_result[20]~40_combout\ $ (!\Mult0|auto_generated|op_1~39\)))) # (GND)
-- \Mult0|auto_generated|op_1~41\ = CARRY((\Mult0|auto_generated|mac_out4~DATAOUT20\ & ((\Mult0|auto_generated|add9_result[20]~40_combout\) # (!\Mult0|auto_generated|op_1~39\))) # (!\Mult0|auto_generated|mac_out4~DATAOUT20\ & 
-- (\Mult0|auto_generated|add9_result[20]~40_combout\ & !\Mult0|auto_generated|op_1~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out4~DATAOUT20\,
	datab => \Mult0|auto_generated|add9_result[20]~40_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~39\,
	combout => \Mult0|auto_generated|op_1~40_combout\,
	cout => \Mult0|auto_generated|op_1~41\);

-- Location: LCCOMB_X65_Y33_N12
\Mux57~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux57~0_combout\ = (\Mux29~9_combout\ & ((\opsel[0]~input_o\ & (\Mult1|auto_generated|op_1~40_combout\)) # (!\opsel[0]~input_o\ & ((\Mult0|auto_generated|op_1~40_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~9_combout\,
	datab => \Mult1|auto_generated|op_1~40_combout\,
	datac => \Mult0|auto_generated|op_1~40_combout\,
	datad => \opsel[0]~input_o\,
	combout => \Mux57~0_combout\);

-- Location: LCCOMB_X67_Y34_N12
\Mult0|auto_generated|add9_result[21]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|add9_result[21]~42_combout\ = (\Mult0|auto_generated|mac_out6~DATAOUT21\ & ((\Mult0|auto_generated|mac_out8~DATAOUT3\ & (\Mult0|auto_generated|add9_result[20]~41\ & VCC)) # (!\Mult0|auto_generated|mac_out8~DATAOUT3\ & 
-- (!\Mult0|auto_generated|add9_result[20]~41\)))) # (!\Mult0|auto_generated|mac_out6~DATAOUT21\ & ((\Mult0|auto_generated|mac_out8~DATAOUT3\ & (!\Mult0|auto_generated|add9_result[20]~41\)) # (!\Mult0|auto_generated|mac_out8~DATAOUT3\ & 
-- ((\Mult0|auto_generated|add9_result[20]~41\) # (GND)))))
-- \Mult0|auto_generated|add9_result[21]~43\ = CARRY((\Mult0|auto_generated|mac_out6~DATAOUT21\ & (!\Mult0|auto_generated|mac_out8~DATAOUT3\ & !\Mult0|auto_generated|add9_result[20]~41\)) # (!\Mult0|auto_generated|mac_out6~DATAOUT21\ & 
-- ((!\Mult0|auto_generated|add9_result[20]~41\) # (!\Mult0|auto_generated|mac_out8~DATAOUT3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out6~DATAOUT21\,
	datab => \Mult0|auto_generated|mac_out8~DATAOUT3\,
	datad => VCC,
	cin => \Mult0|auto_generated|add9_result[20]~41\,
	combout => \Mult0|auto_generated|add9_result[21]~42_combout\,
	cout => \Mult0|auto_generated|add9_result[21]~43\);

-- Location: LCCOMB_X66_Y34_N12
\Mult0|auto_generated|op_1~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~42_combout\ = (\Mult0|auto_generated|mac_out4~DATAOUT21\ & ((\Mult0|auto_generated|add9_result[21]~42_combout\ & (\Mult0|auto_generated|op_1~41\ & VCC)) # (!\Mult0|auto_generated|add9_result[21]~42_combout\ & 
-- (!\Mult0|auto_generated|op_1~41\)))) # (!\Mult0|auto_generated|mac_out4~DATAOUT21\ & ((\Mult0|auto_generated|add9_result[21]~42_combout\ & (!\Mult0|auto_generated|op_1~41\)) # (!\Mult0|auto_generated|add9_result[21]~42_combout\ & 
-- ((\Mult0|auto_generated|op_1~41\) # (GND)))))
-- \Mult0|auto_generated|op_1~43\ = CARRY((\Mult0|auto_generated|mac_out4~DATAOUT21\ & (!\Mult0|auto_generated|add9_result[21]~42_combout\ & !\Mult0|auto_generated|op_1~41\)) # (!\Mult0|auto_generated|mac_out4~DATAOUT21\ & ((!\Mult0|auto_generated|op_1~41\) 
-- # (!\Mult0|auto_generated|add9_result[21]~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out4~DATAOUT21\,
	datab => \Mult0|auto_generated|add9_result[21]~42_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~41\,
	combout => \Mult0|auto_generated|op_1~42_combout\,
	cout => \Mult0|auto_generated|op_1~43\);

-- Location: LCCOMB_X47_Y34_N26
\Mult1|auto_generated|add9_result[21]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|add9_result[21]~42_combout\ = (\Mult1|auto_generated|mac_out6~DATAOUT21\ & ((\Mult1|auto_generated|mac_out8~DATAOUT3\ & (\Mult1|auto_generated|add9_result[20]~41\ & VCC)) # (!\Mult1|auto_generated|mac_out8~DATAOUT3\ & 
-- (!\Mult1|auto_generated|add9_result[20]~41\)))) # (!\Mult1|auto_generated|mac_out6~DATAOUT21\ & ((\Mult1|auto_generated|mac_out8~DATAOUT3\ & (!\Mult1|auto_generated|add9_result[20]~41\)) # (!\Mult1|auto_generated|mac_out8~DATAOUT3\ & 
-- ((\Mult1|auto_generated|add9_result[20]~41\) # (GND)))))
-- \Mult1|auto_generated|add9_result[21]~43\ = CARRY((\Mult1|auto_generated|mac_out6~DATAOUT21\ & (!\Mult1|auto_generated|mac_out8~DATAOUT3\ & !\Mult1|auto_generated|add9_result[20]~41\)) # (!\Mult1|auto_generated|mac_out6~DATAOUT21\ & 
-- ((!\Mult1|auto_generated|add9_result[20]~41\) # (!\Mult1|auto_generated|mac_out8~DATAOUT3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out6~DATAOUT21\,
	datab => \Mult1|auto_generated|mac_out8~DATAOUT3\,
	datad => VCC,
	cin => \Mult1|auto_generated|add9_result[20]~41\,
	combout => \Mult1|auto_generated|add9_result[21]~42_combout\,
	cout => \Mult1|auto_generated|add9_result[21]~43\);

-- Location: LCCOMB_X49_Y34_N12
\Mult1|auto_generated|op_1~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_1~42_combout\ = (\Mult1|auto_generated|mac_out4~DATAOUT21\ & ((\Mult1|auto_generated|add9_result[21]~42_combout\ & (\Mult1|auto_generated|op_1~41\ & VCC)) # (!\Mult1|auto_generated|add9_result[21]~42_combout\ & 
-- (!\Mult1|auto_generated|op_1~41\)))) # (!\Mult1|auto_generated|mac_out4~DATAOUT21\ & ((\Mult1|auto_generated|add9_result[21]~42_combout\ & (!\Mult1|auto_generated|op_1~41\)) # (!\Mult1|auto_generated|add9_result[21]~42_combout\ & 
-- ((\Mult1|auto_generated|op_1~41\) # (GND)))))
-- \Mult1|auto_generated|op_1~43\ = CARRY((\Mult1|auto_generated|mac_out4~DATAOUT21\ & (!\Mult1|auto_generated|add9_result[21]~42_combout\ & !\Mult1|auto_generated|op_1~41\)) # (!\Mult1|auto_generated|mac_out4~DATAOUT21\ & ((!\Mult1|auto_generated|op_1~41\) 
-- # (!\Mult1|auto_generated|add9_result[21]~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out4~DATAOUT21\,
	datab => \Mult1|auto_generated|add9_result[21]~42_combout\,
	datad => VCC,
	cin => \Mult1|auto_generated|op_1~41\,
	combout => \Mult1|auto_generated|op_1~42_combout\,
	cout => \Mult1|auto_generated|op_1~43\);

-- Location: LCCOMB_X65_Y34_N16
\Mux56~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux56~0_combout\ = (\Mux29~9_combout\ & ((\opsel[0]~input_o\ & ((\Mult1|auto_generated|op_1~42_combout\))) # (!\opsel[0]~input_o\ & (\Mult0|auto_generated|op_1~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~9_combout\,
	datab => \Mult0|auto_generated|op_1~42_combout\,
	datac => \opsel[0]~input_o\,
	datad => \Mult1|auto_generated|op_1~42_combout\,
	combout => \Mux56~0_combout\);

-- Location: LCCOMB_X47_Y34_N28
\Mult1|auto_generated|add9_result[22]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|add9_result[22]~44_combout\ = ((\Mult1|auto_generated|mac_out8~DATAOUT4\ $ (\Mult1|auto_generated|mac_out6~DATAOUT22\ $ (!\Mult1|auto_generated|add9_result[21]~43\)))) # (GND)
-- \Mult1|auto_generated|add9_result[22]~45\ = CARRY((\Mult1|auto_generated|mac_out8~DATAOUT4\ & ((\Mult1|auto_generated|mac_out6~DATAOUT22\) # (!\Mult1|auto_generated|add9_result[21]~43\))) # (!\Mult1|auto_generated|mac_out8~DATAOUT4\ & 
-- (\Mult1|auto_generated|mac_out6~DATAOUT22\ & !\Mult1|auto_generated|add9_result[21]~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out8~DATAOUT4\,
	datab => \Mult1|auto_generated|mac_out6~DATAOUT22\,
	datad => VCC,
	cin => \Mult1|auto_generated|add9_result[21]~43\,
	combout => \Mult1|auto_generated|add9_result[22]~44_combout\,
	cout => \Mult1|auto_generated|add9_result[22]~45\);

-- Location: LCCOMB_X49_Y34_N14
\Mult1|auto_generated|op_1~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_1~44_combout\ = ((\Mult1|auto_generated|add9_result[22]~44_combout\ $ (\Mult1|auto_generated|mac_out4~DATAOUT22\ $ (!\Mult1|auto_generated|op_1~43\)))) # (GND)
-- \Mult1|auto_generated|op_1~45\ = CARRY((\Mult1|auto_generated|add9_result[22]~44_combout\ & ((\Mult1|auto_generated|mac_out4~DATAOUT22\) # (!\Mult1|auto_generated|op_1~43\))) # (!\Mult1|auto_generated|add9_result[22]~44_combout\ & 
-- (\Mult1|auto_generated|mac_out4~DATAOUT22\ & !\Mult1|auto_generated|op_1~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|add9_result[22]~44_combout\,
	datab => \Mult1|auto_generated|mac_out4~DATAOUT22\,
	datad => VCC,
	cin => \Mult1|auto_generated|op_1~43\,
	combout => \Mult1|auto_generated|op_1~44_combout\,
	cout => \Mult1|auto_generated|op_1~45\);

-- Location: LCCOMB_X67_Y34_N14
\Mult0|auto_generated|add9_result[22]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|add9_result[22]~44_combout\ = ((\Mult0|auto_generated|mac_out8~DATAOUT4\ $ (\Mult0|auto_generated|mac_out6~DATAOUT22\ $ (!\Mult0|auto_generated|add9_result[21]~43\)))) # (GND)
-- \Mult0|auto_generated|add9_result[22]~45\ = CARRY((\Mult0|auto_generated|mac_out8~DATAOUT4\ & ((\Mult0|auto_generated|mac_out6~DATAOUT22\) # (!\Mult0|auto_generated|add9_result[21]~43\))) # (!\Mult0|auto_generated|mac_out8~DATAOUT4\ & 
-- (\Mult0|auto_generated|mac_out6~DATAOUT22\ & !\Mult0|auto_generated|add9_result[21]~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out8~DATAOUT4\,
	datab => \Mult0|auto_generated|mac_out6~DATAOUT22\,
	datad => VCC,
	cin => \Mult0|auto_generated|add9_result[21]~43\,
	combout => \Mult0|auto_generated|add9_result[22]~44_combout\,
	cout => \Mult0|auto_generated|add9_result[22]~45\);

-- Location: LCCOMB_X66_Y34_N14
\Mult0|auto_generated|op_1~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~44_combout\ = ((\Mult0|auto_generated|mac_out4~DATAOUT22\ $ (\Mult0|auto_generated|add9_result[22]~44_combout\ $ (!\Mult0|auto_generated|op_1~43\)))) # (GND)
-- \Mult0|auto_generated|op_1~45\ = CARRY((\Mult0|auto_generated|mac_out4~DATAOUT22\ & ((\Mult0|auto_generated|add9_result[22]~44_combout\) # (!\Mult0|auto_generated|op_1~43\))) # (!\Mult0|auto_generated|mac_out4~DATAOUT22\ & 
-- (\Mult0|auto_generated|add9_result[22]~44_combout\ & !\Mult0|auto_generated|op_1~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out4~DATAOUT22\,
	datab => \Mult0|auto_generated|add9_result[22]~44_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~43\,
	combout => \Mult0|auto_generated|op_1~44_combout\,
	cout => \Mult0|auto_generated|op_1~45\);

-- Location: LCCOMB_X65_Y34_N10
\Mux55~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux55~0_combout\ = (\Mux29~9_combout\ & ((\opsel[0]~input_o\ & (\Mult1|auto_generated|op_1~44_combout\)) # (!\opsel[0]~input_o\ & ((\Mult0|auto_generated|op_1~44_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|op_1~44_combout\,
	datab => \Mult0|auto_generated|op_1~44_combout\,
	datac => \opsel[0]~input_o\,
	datad => \Mux29~9_combout\,
	combout => \Mux55~0_combout\);

-- Location: LCCOMB_X47_Y34_N30
\Mult1|auto_generated|add9_result[23]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|add9_result[23]~46_combout\ = (\Mult1|auto_generated|mac_out8~DATAOUT5\ & ((\Mult1|auto_generated|mac_out6~DATAOUT23\ & (\Mult1|auto_generated|add9_result[22]~45\ & VCC)) # (!\Mult1|auto_generated|mac_out6~DATAOUT23\ & 
-- (!\Mult1|auto_generated|add9_result[22]~45\)))) # (!\Mult1|auto_generated|mac_out8~DATAOUT5\ & ((\Mult1|auto_generated|mac_out6~DATAOUT23\ & (!\Mult1|auto_generated|add9_result[22]~45\)) # (!\Mult1|auto_generated|mac_out6~DATAOUT23\ & 
-- ((\Mult1|auto_generated|add9_result[22]~45\) # (GND)))))
-- \Mult1|auto_generated|add9_result[23]~47\ = CARRY((\Mult1|auto_generated|mac_out8~DATAOUT5\ & (!\Mult1|auto_generated|mac_out6~DATAOUT23\ & !\Mult1|auto_generated|add9_result[22]~45\)) # (!\Mult1|auto_generated|mac_out8~DATAOUT5\ & 
-- ((!\Mult1|auto_generated|add9_result[22]~45\) # (!\Mult1|auto_generated|mac_out6~DATAOUT23\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out8~DATAOUT5\,
	datab => \Mult1|auto_generated|mac_out6~DATAOUT23\,
	datad => VCC,
	cin => \Mult1|auto_generated|add9_result[22]~45\,
	combout => \Mult1|auto_generated|add9_result[23]~46_combout\,
	cout => \Mult1|auto_generated|add9_result[23]~47\);

-- Location: LCCOMB_X49_Y34_N16
\Mult1|auto_generated|op_1~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_1~46_combout\ = (\Mult1|auto_generated|add9_result[23]~46_combout\ & ((\Mult1|auto_generated|mac_out4~DATAOUT23\ & (\Mult1|auto_generated|op_1~45\ & VCC)) # (!\Mult1|auto_generated|mac_out4~DATAOUT23\ & 
-- (!\Mult1|auto_generated|op_1~45\)))) # (!\Mult1|auto_generated|add9_result[23]~46_combout\ & ((\Mult1|auto_generated|mac_out4~DATAOUT23\ & (!\Mult1|auto_generated|op_1~45\)) # (!\Mult1|auto_generated|mac_out4~DATAOUT23\ & ((\Mult1|auto_generated|op_1~45\) 
-- # (GND)))))
-- \Mult1|auto_generated|op_1~47\ = CARRY((\Mult1|auto_generated|add9_result[23]~46_combout\ & (!\Mult1|auto_generated|mac_out4~DATAOUT23\ & !\Mult1|auto_generated|op_1~45\)) # (!\Mult1|auto_generated|add9_result[23]~46_combout\ & 
-- ((!\Mult1|auto_generated|op_1~45\) # (!\Mult1|auto_generated|mac_out4~DATAOUT23\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|add9_result[23]~46_combout\,
	datab => \Mult1|auto_generated|mac_out4~DATAOUT23\,
	datad => VCC,
	cin => \Mult1|auto_generated|op_1~45\,
	combout => \Mult1|auto_generated|op_1~46_combout\,
	cout => \Mult1|auto_generated|op_1~47\);

-- Location: LCCOMB_X67_Y34_N16
\Mult0|auto_generated|add9_result[23]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|add9_result[23]~46_combout\ = (\Mult0|auto_generated|mac_out8~DATAOUT5\ & ((\Mult0|auto_generated|mac_out6~DATAOUT23\ & (\Mult0|auto_generated|add9_result[22]~45\ & VCC)) # (!\Mult0|auto_generated|mac_out6~DATAOUT23\ & 
-- (!\Mult0|auto_generated|add9_result[22]~45\)))) # (!\Mult0|auto_generated|mac_out8~DATAOUT5\ & ((\Mult0|auto_generated|mac_out6~DATAOUT23\ & (!\Mult0|auto_generated|add9_result[22]~45\)) # (!\Mult0|auto_generated|mac_out6~DATAOUT23\ & 
-- ((\Mult0|auto_generated|add9_result[22]~45\) # (GND)))))
-- \Mult0|auto_generated|add9_result[23]~47\ = CARRY((\Mult0|auto_generated|mac_out8~DATAOUT5\ & (!\Mult0|auto_generated|mac_out6~DATAOUT23\ & !\Mult0|auto_generated|add9_result[22]~45\)) # (!\Mult0|auto_generated|mac_out8~DATAOUT5\ & 
-- ((!\Mult0|auto_generated|add9_result[22]~45\) # (!\Mult0|auto_generated|mac_out6~DATAOUT23\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out8~DATAOUT5\,
	datab => \Mult0|auto_generated|mac_out6~DATAOUT23\,
	datad => VCC,
	cin => \Mult0|auto_generated|add9_result[22]~45\,
	combout => \Mult0|auto_generated|add9_result[23]~46_combout\,
	cout => \Mult0|auto_generated|add9_result[23]~47\);

-- Location: LCCOMB_X66_Y34_N16
\Mult0|auto_generated|op_1~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~46_combout\ = (\Mult0|auto_generated|add9_result[23]~46_combout\ & ((\Mult0|auto_generated|mac_out4~DATAOUT23\ & (\Mult0|auto_generated|op_1~45\ & VCC)) # (!\Mult0|auto_generated|mac_out4~DATAOUT23\ & 
-- (!\Mult0|auto_generated|op_1~45\)))) # (!\Mult0|auto_generated|add9_result[23]~46_combout\ & ((\Mult0|auto_generated|mac_out4~DATAOUT23\ & (!\Mult0|auto_generated|op_1~45\)) # (!\Mult0|auto_generated|mac_out4~DATAOUT23\ & ((\Mult0|auto_generated|op_1~45\) 
-- # (GND)))))
-- \Mult0|auto_generated|op_1~47\ = CARRY((\Mult0|auto_generated|add9_result[23]~46_combout\ & (!\Mult0|auto_generated|mac_out4~DATAOUT23\ & !\Mult0|auto_generated|op_1~45\)) # (!\Mult0|auto_generated|add9_result[23]~46_combout\ & 
-- ((!\Mult0|auto_generated|op_1~45\) # (!\Mult0|auto_generated|mac_out4~DATAOUT23\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|add9_result[23]~46_combout\,
	datab => \Mult0|auto_generated|mac_out4~DATAOUT23\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~45\,
	combout => \Mult0|auto_generated|op_1~46_combout\,
	cout => \Mult0|auto_generated|op_1~47\);

-- Location: LCCOMB_X65_Y33_N22
\Mux54~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux54~0_combout\ = (\Mux29~9_combout\ & ((\opsel[0]~input_o\ & (\Mult1|auto_generated|op_1~46_combout\)) # (!\opsel[0]~input_o\ & ((\Mult0|auto_generated|op_1~46_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~9_combout\,
	datab => \Mult1|auto_generated|op_1~46_combout\,
	datac => \Mult0|auto_generated|op_1~46_combout\,
	datad => \opsel[0]~input_o\,
	combout => \Mux54~0_combout\);

-- Location: LCCOMB_X47_Y33_N0
\Mult1|auto_generated|add9_result[24]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|add9_result[24]~48_combout\ = ((\Mult1|auto_generated|mac_out6~DATAOUT24\ $ (\Mult1|auto_generated|mac_out8~DATAOUT6\ $ (!\Mult1|auto_generated|add9_result[23]~47\)))) # (GND)
-- \Mult1|auto_generated|add9_result[24]~49\ = CARRY((\Mult1|auto_generated|mac_out6~DATAOUT24\ & ((\Mult1|auto_generated|mac_out8~DATAOUT6\) # (!\Mult1|auto_generated|add9_result[23]~47\))) # (!\Mult1|auto_generated|mac_out6~DATAOUT24\ & 
-- (\Mult1|auto_generated|mac_out8~DATAOUT6\ & !\Mult1|auto_generated|add9_result[23]~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out6~DATAOUT24\,
	datab => \Mult1|auto_generated|mac_out8~DATAOUT6\,
	datad => VCC,
	cin => \Mult1|auto_generated|add9_result[23]~47\,
	combout => \Mult1|auto_generated|add9_result[24]~48_combout\,
	cout => \Mult1|auto_generated|add9_result[24]~49\);

-- Location: LCCOMB_X49_Y34_N18
\Mult1|auto_generated|op_1~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_1~48_combout\ = ((\Mult1|auto_generated|mac_out4~DATAOUT24\ $ (\Mult1|auto_generated|add9_result[24]~48_combout\ $ (!\Mult1|auto_generated|op_1~47\)))) # (GND)
-- \Mult1|auto_generated|op_1~49\ = CARRY((\Mult1|auto_generated|mac_out4~DATAOUT24\ & ((\Mult1|auto_generated|add9_result[24]~48_combout\) # (!\Mult1|auto_generated|op_1~47\))) # (!\Mult1|auto_generated|mac_out4~DATAOUT24\ & 
-- (\Mult1|auto_generated|add9_result[24]~48_combout\ & !\Mult1|auto_generated|op_1~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out4~DATAOUT24\,
	datab => \Mult1|auto_generated|add9_result[24]~48_combout\,
	datad => VCC,
	cin => \Mult1|auto_generated|op_1~47\,
	combout => \Mult1|auto_generated|op_1~48_combout\,
	cout => \Mult1|auto_generated|op_1~49\);

-- Location: LCCOMB_X67_Y34_N18
\Mult0|auto_generated|add9_result[24]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|add9_result[24]~48_combout\ = ((\Mult0|auto_generated|mac_out8~DATAOUT6\ $ (\Mult0|auto_generated|mac_out6~DATAOUT24\ $ (!\Mult0|auto_generated|add9_result[23]~47\)))) # (GND)
-- \Mult0|auto_generated|add9_result[24]~49\ = CARRY((\Mult0|auto_generated|mac_out8~DATAOUT6\ & ((\Mult0|auto_generated|mac_out6~DATAOUT24\) # (!\Mult0|auto_generated|add9_result[23]~47\))) # (!\Mult0|auto_generated|mac_out8~DATAOUT6\ & 
-- (\Mult0|auto_generated|mac_out6~DATAOUT24\ & !\Mult0|auto_generated|add9_result[23]~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out8~DATAOUT6\,
	datab => \Mult0|auto_generated|mac_out6~DATAOUT24\,
	datad => VCC,
	cin => \Mult0|auto_generated|add9_result[23]~47\,
	combout => \Mult0|auto_generated|add9_result[24]~48_combout\,
	cout => \Mult0|auto_generated|add9_result[24]~49\);

-- Location: LCCOMB_X66_Y34_N18
\Mult0|auto_generated|op_1~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~48_combout\ = ((\Mult0|auto_generated|mac_out4~DATAOUT24\ $ (\Mult0|auto_generated|add9_result[24]~48_combout\ $ (!\Mult0|auto_generated|op_1~47\)))) # (GND)
-- \Mult0|auto_generated|op_1~49\ = CARRY((\Mult0|auto_generated|mac_out4~DATAOUT24\ & ((\Mult0|auto_generated|add9_result[24]~48_combout\) # (!\Mult0|auto_generated|op_1~47\))) # (!\Mult0|auto_generated|mac_out4~DATAOUT24\ & 
-- (\Mult0|auto_generated|add9_result[24]~48_combout\ & !\Mult0|auto_generated|op_1~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out4~DATAOUT24\,
	datab => \Mult0|auto_generated|add9_result[24]~48_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~47\,
	combout => \Mult0|auto_generated|op_1~48_combout\,
	cout => \Mult0|auto_generated|op_1~49\);

-- Location: LCCOMB_X65_Y33_N24
\Mux53~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux53~0_combout\ = (\Mux29~9_combout\ & ((\opsel[0]~input_o\ & (\Mult1|auto_generated|op_1~48_combout\)) # (!\opsel[0]~input_o\ & ((\Mult0|auto_generated|op_1~48_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~9_combout\,
	datab => \Mult1|auto_generated|op_1~48_combout\,
	datac => \Mult0|auto_generated|op_1~48_combout\,
	datad => \opsel[0]~input_o\,
	combout => \Mux53~0_combout\);

-- Location: LCCOMB_X67_Y34_N20
\Mult0|auto_generated|add9_result[25]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|add9_result[25]~50_combout\ = (\Mult0|auto_generated|mac_out8~DATAOUT7\ & ((\Mult0|auto_generated|mac_out6~DATAOUT25\ & (\Mult0|auto_generated|add9_result[24]~49\ & VCC)) # (!\Mult0|auto_generated|mac_out6~DATAOUT25\ & 
-- (!\Mult0|auto_generated|add9_result[24]~49\)))) # (!\Mult0|auto_generated|mac_out8~DATAOUT7\ & ((\Mult0|auto_generated|mac_out6~DATAOUT25\ & (!\Mult0|auto_generated|add9_result[24]~49\)) # (!\Mult0|auto_generated|mac_out6~DATAOUT25\ & 
-- ((\Mult0|auto_generated|add9_result[24]~49\) # (GND)))))
-- \Mult0|auto_generated|add9_result[25]~51\ = CARRY((\Mult0|auto_generated|mac_out8~DATAOUT7\ & (!\Mult0|auto_generated|mac_out6~DATAOUT25\ & !\Mult0|auto_generated|add9_result[24]~49\)) # (!\Mult0|auto_generated|mac_out8~DATAOUT7\ & 
-- ((!\Mult0|auto_generated|add9_result[24]~49\) # (!\Mult0|auto_generated|mac_out6~DATAOUT25\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out8~DATAOUT7\,
	datab => \Mult0|auto_generated|mac_out6~DATAOUT25\,
	datad => VCC,
	cin => \Mult0|auto_generated|add9_result[24]~49\,
	combout => \Mult0|auto_generated|add9_result[25]~50_combout\,
	cout => \Mult0|auto_generated|add9_result[25]~51\);

-- Location: LCCOMB_X66_Y34_N20
\Mult0|auto_generated|op_1~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~50_combout\ = (\Mult0|auto_generated|add9_result[25]~50_combout\ & ((\Mult0|auto_generated|mac_out4~DATAOUT25\ & (\Mult0|auto_generated|op_1~49\ & VCC)) # (!\Mult0|auto_generated|mac_out4~DATAOUT25\ & 
-- (!\Mult0|auto_generated|op_1~49\)))) # (!\Mult0|auto_generated|add9_result[25]~50_combout\ & ((\Mult0|auto_generated|mac_out4~DATAOUT25\ & (!\Mult0|auto_generated|op_1~49\)) # (!\Mult0|auto_generated|mac_out4~DATAOUT25\ & ((\Mult0|auto_generated|op_1~49\) 
-- # (GND)))))
-- \Mult0|auto_generated|op_1~51\ = CARRY((\Mult0|auto_generated|add9_result[25]~50_combout\ & (!\Mult0|auto_generated|mac_out4~DATAOUT25\ & !\Mult0|auto_generated|op_1~49\)) # (!\Mult0|auto_generated|add9_result[25]~50_combout\ & 
-- ((!\Mult0|auto_generated|op_1~49\) # (!\Mult0|auto_generated|mac_out4~DATAOUT25\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|add9_result[25]~50_combout\,
	datab => \Mult0|auto_generated|mac_out4~DATAOUT25\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~49\,
	combout => \Mult0|auto_generated|op_1~50_combout\,
	cout => \Mult0|auto_generated|op_1~51\);

-- Location: LCCOMB_X47_Y33_N2
\Mult1|auto_generated|add9_result[25]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|add9_result[25]~50_combout\ = (\Mult1|auto_generated|mac_out8~DATAOUT7\ & ((\Mult1|auto_generated|mac_out6~DATAOUT25\ & (\Mult1|auto_generated|add9_result[24]~49\ & VCC)) # (!\Mult1|auto_generated|mac_out6~DATAOUT25\ & 
-- (!\Mult1|auto_generated|add9_result[24]~49\)))) # (!\Mult1|auto_generated|mac_out8~DATAOUT7\ & ((\Mult1|auto_generated|mac_out6~DATAOUT25\ & (!\Mult1|auto_generated|add9_result[24]~49\)) # (!\Mult1|auto_generated|mac_out6~DATAOUT25\ & 
-- ((\Mult1|auto_generated|add9_result[24]~49\) # (GND)))))
-- \Mult1|auto_generated|add9_result[25]~51\ = CARRY((\Mult1|auto_generated|mac_out8~DATAOUT7\ & (!\Mult1|auto_generated|mac_out6~DATAOUT25\ & !\Mult1|auto_generated|add9_result[24]~49\)) # (!\Mult1|auto_generated|mac_out8~DATAOUT7\ & 
-- ((!\Mult1|auto_generated|add9_result[24]~49\) # (!\Mult1|auto_generated|mac_out6~DATAOUT25\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out8~DATAOUT7\,
	datab => \Mult1|auto_generated|mac_out6~DATAOUT25\,
	datad => VCC,
	cin => \Mult1|auto_generated|add9_result[24]~49\,
	combout => \Mult1|auto_generated|add9_result[25]~50_combout\,
	cout => \Mult1|auto_generated|add9_result[25]~51\);

-- Location: LCCOMB_X49_Y34_N20
\Mult1|auto_generated|op_1~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_1~50_combout\ = (\Mult1|auto_generated|add9_result[25]~50_combout\ & ((\Mult1|auto_generated|mac_out4~DATAOUT25\ & (\Mult1|auto_generated|op_1~49\ & VCC)) # (!\Mult1|auto_generated|mac_out4~DATAOUT25\ & 
-- (!\Mult1|auto_generated|op_1~49\)))) # (!\Mult1|auto_generated|add9_result[25]~50_combout\ & ((\Mult1|auto_generated|mac_out4~DATAOUT25\ & (!\Mult1|auto_generated|op_1~49\)) # (!\Mult1|auto_generated|mac_out4~DATAOUT25\ & ((\Mult1|auto_generated|op_1~49\) 
-- # (GND)))))
-- \Mult1|auto_generated|op_1~51\ = CARRY((\Mult1|auto_generated|add9_result[25]~50_combout\ & (!\Mult1|auto_generated|mac_out4~DATAOUT25\ & !\Mult1|auto_generated|op_1~49\)) # (!\Mult1|auto_generated|add9_result[25]~50_combout\ & 
-- ((!\Mult1|auto_generated|op_1~49\) # (!\Mult1|auto_generated|mac_out4~DATAOUT25\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|add9_result[25]~50_combout\,
	datab => \Mult1|auto_generated|mac_out4~DATAOUT25\,
	datad => VCC,
	cin => \Mult1|auto_generated|op_1~49\,
	combout => \Mult1|auto_generated|op_1~50_combout\,
	cout => \Mult1|auto_generated|op_1~51\);

-- Location: LCCOMB_X65_Y34_N4
\Mux52~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux52~0_combout\ = (\Mux29~9_combout\ & ((\opsel[0]~input_o\ & ((\Mult1|auto_generated|op_1~50_combout\))) # (!\opsel[0]~input_o\ & (\Mult0|auto_generated|op_1~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|op_1~50_combout\,
	datab => \Mult1|auto_generated|op_1~50_combout\,
	datac => \opsel[0]~input_o\,
	datad => \Mux29~9_combout\,
	combout => \Mux52~0_combout\);

-- Location: LCCOMB_X47_Y33_N4
\Mult1|auto_generated|add9_result[26]~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|add9_result[26]~52_combout\ = ((\Mult1|auto_generated|mac_out8~DATAOUT8\ $ (\Mult1|auto_generated|mac_out6~DATAOUT26\ $ (!\Mult1|auto_generated|add9_result[25]~51\)))) # (GND)
-- \Mult1|auto_generated|add9_result[26]~53\ = CARRY((\Mult1|auto_generated|mac_out8~DATAOUT8\ & ((\Mult1|auto_generated|mac_out6~DATAOUT26\) # (!\Mult1|auto_generated|add9_result[25]~51\))) # (!\Mult1|auto_generated|mac_out8~DATAOUT8\ & 
-- (\Mult1|auto_generated|mac_out6~DATAOUT26\ & !\Mult1|auto_generated|add9_result[25]~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out8~DATAOUT8\,
	datab => \Mult1|auto_generated|mac_out6~DATAOUT26\,
	datad => VCC,
	cin => \Mult1|auto_generated|add9_result[25]~51\,
	combout => \Mult1|auto_generated|add9_result[26]~52_combout\,
	cout => \Mult1|auto_generated|add9_result[26]~53\);

-- Location: LCCOMB_X49_Y34_N22
\Mult1|auto_generated|op_1~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_1~52_combout\ = ((\Mult1|auto_generated|mac_out4~DATAOUT26\ $ (\Mult1|auto_generated|add9_result[26]~52_combout\ $ (!\Mult1|auto_generated|op_1~51\)))) # (GND)
-- \Mult1|auto_generated|op_1~53\ = CARRY((\Mult1|auto_generated|mac_out4~DATAOUT26\ & ((\Mult1|auto_generated|add9_result[26]~52_combout\) # (!\Mult1|auto_generated|op_1~51\))) # (!\Mult1|auto_generated|mac_out4~DATAOUT26\ & 
-- (\Mult1|auto_generated|add9_result[26]~52_combout\ & !\Mult1|auto_generated|op_1~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out4~DATAOUT26\,
	datab => \Mult1|auto_generated|add9_result[26]~52_combout\,
	datad => VCC,
	cin => \Mult1|auto_generated|op_1~51\,
	combout => \Mult1|auto_generated|op_1~52_combout\,
	cout => \Mult1|auto_generated|op_1~53\);

-- Location: LCCOMB_X67_Y34_N22
\Mult0|auto_generated|add9_result[26]~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|add9_result[26]~52_combout\ = ((\Mult0|auto_generated|mac_out6~DATAOUT26\ $ (\Mult0|auto_generated|mac_out8~DATAOUT8\ $ (!\Mult0|auto_generated|add9_result[25]~51\)))) # (GND)
-- \Mult0|auto_generated|add9_result[26]~53\ = CARRY((\Mult0|auto_generated|mac_out6~DATAOUT26\ & ((\Mult0|auto_generated|mac_out8~DATAOUT8\) # (!\Mult0|auto_generated|add9_result[25]~51\))) # (!\Mult0|auto_generated|mac_out6~DATAOUT26\ & 
-- (\Mult0|auto_generated|mac_out8~DATAOUT8\ & !\Mult0|auto_generated|add9_result[25]~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out6~DATAOUT26\,
	datab => \Mult0|auto_generated|mac_out8~DATAOUT8\,
	datad => VCC,
	cin => \Mult0|auto_generated|add9_result[25]~51\,
	combout => \Mult0|auto_generated|add9_result[26]~52_combout\,
	cout => \Mult0|auto_generated|add9_result[26]~53\);

-- Location: LCCOMB_X66_Y34_N22
\Mult0|auto_generated|op_1~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~52_combout\ = ((\Mult0|auto_generated|mac_out4~DATAOUT26\ $ (\Mult0|auto_generated|add9_result[26]~52_combout\ $ (!\Mult0|auto_generated|op_1~51\)))) # (GND)
-- \Mult0|auto_generated|op_1~53\ = CARRY((\Mult0|auto_generated|mac_out4~DATAOUT26\ & ((\Mult0|auto_generated|add9_result[26]~52_combout\) # (!\Mult0|auto_generated|op_1~51\))) # (!\Mult0|auto_generated|mac_out4~DATAOUT26\ & 
-- (\Mult0|auto_generated|add9_result[26]~52_combout\ & !\Mult0|auto_generated|op_1~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out4~DATAOUT26\,
	datab => \Mult0|auto_generated|add9_result[26]~52_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~51\,
	combout => \Mult0|auto_generated|op_1~52_combout\,
	cout => \Mult0|auto_generated|op_1~53\);

-- Location: LCCOMB_X65_Y33_N18
\Mux51~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux51~0_combout\ = (\Mux29~9_combout\ & ((\opsel[0]~input_o\ & (\Mult1|auto_generated|op_1~52_combout\)) # (!\opsel[0]~input_o\ & ((\Mult0|auto_generated|op_1~52_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~9_combout\,
	datab => \Mult1|auto_generated|op_1~52_combout\,
	datac => \Mult0|auto_generated|op_1~52_combout\,
	datad => \opsel[0]~input_o\,
	combout => \Mux51~0_combout\);

-- Location: LCCOMB_X47_Y33_N6
\Mult1|auto_generated|add9_result[27]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|add9_result[27]~54_combout\ = (\Mult1|auto_generated|mac_out8~DATAOUT9\ & ((\Mult1|auto_generated|mac_out6~DATAOUT27\ & (\Mult1|auto_generated|add9_result[26]~53\ & VCC)) # (!\Mult1|auto_generated|mac_out6~DATAOUT27\ & 
-- (!\Mult1|auto_generated|add9_result[26]~53\)))) # (!\Mult1|auto_generated|mac_out8~DATAOUT9\ & ((\Mult1|auto_generated|mac_out6~DATAOUT27\ & (!\Mult1|auto_generated|add9_result[26]~53\)) # (!\Mult1|auto_generated|mac_out6~DATAOUT27\ & 
-- ((\Mult1|auto_generated|add9_result[26]~53\) # (GND)))))
-- \Mult1|auto_generated|add9_result[27]~55\ = CARRY((\Mult1|auto_generated|mac_out8~DATAOUT9\ & (!\Mult1|auto_generated|mac_out6~DATAOUT27\ & !\Mult1|auto_generated|add9_result[26]~53\)) # (!\Mult1|auto_generated|mac_out8~DATAOUT9\ & 
-- ((!\Mult1|auto_generated|add9_result[26]~53\) # (!\Mult1|auto_generated|mac_out6~DATAOUT27\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out8~DATAOUT9\,
	datab => \Mult1|auto_generated|mac_out6~DATAOUT27\,
	datad => VCC,
	cin => \Mult1|auto_generated|add9_result[26]~53\,
	combout => \Mult1|auto_generated|add9_result[27]~54_combout\,
	cout => \Mult1|auto_generated|add9_result[27]~55\);

-- Location: LCCOMB_X49_Y34_N24
\Mult1|auto_generated|op_1~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_1~54_combout\ = (\Mult1|auto_generated|mac_out4~DATAOUT27\ & ((\Mult1|auto_generated|add9_result[27]~54_combout\ & (\Mult1|auto_generated|op_1~53\ & VCC)) # (!\Mult1|auto_generated|add9_result[27]~54_combout\ & 
-- (!\Mult1|auto_generated|op_1~53\)))) # (!\Mult1|auto_generated|mac_out4~DATAOUT27\ & ((\Mult1|auto_generated|add9_result[27]~54_combout\ & (!\Mult1|auto_generated|op_1~53\)) # (!\Mult1|auto_generated|add9_result[27]~54_combout\ & 
-- ((\Mult1|auto_generated|op_1~53\) # (GND)))))
-- \Mult1|auto_generated|op_1~55\ = CARRY((\Mult1|auto_generated|mac_out4~DATAOUT27\ & (!\Mult1|auto_generated|add9_result[27]~54_combout\ & !\Mult1|auto_generated|op_1~53\)) # (!\Mult1|auto_generated|mac_out4~DATAOUT27\ & ((!\Mult1|auto_generated|op_1~53\) 
-- # (!\Mult1|auto_generated|add9_result[27]~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out4~DATAOUT27\,
	datab => \Mult1|auto_generated|add9_result[27]~54_combout\,
	datad => VCC,
	cin => \Mult1|auto_generated|op_1~53\,
	combout => \Mult1|auto_generated|op_1~54_combout\,
	cout => \Mult1|auto_generated|op_1~55\);

-- Location: LCCOMB_X67_Y34_N24
\Mult0|auto_generated|add9_result[27]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|add9_result[27]~54_combout\ = (\Mult0|auto_generated|mac_out6~DATAOUT27\ & ((\Mult0|auto_generated|mac_out8~DATAOUT9\ & (\Mult0|auto_generated|add9_result[26]~53\ & VCC)) # (!\Mult0|auto_generated|mac_out8~DATAOUT9\ & 
-- (!\Mult0|auto_generated|add9_result[26]~53\)))) # (!\Mult0|auto_generated|mac_out6~DATAOUT27\ & ((\Mult0|auto_generated|mac_out8~DATAOUT9\ & (!\Mult0|auto_generated|add9_result[26]~53\)) # (!\Mult0|auto_generated|mac_out8~DATAOUT9\ & 
-- ((\Mult0|auto_generated|add9_result[26]~53\) # (GND)))))
-- \Mult0|auto_generated|add9_result[27]~55\ = CARRY((\Mult0|auto_generated|mac_out6~DATAOUT27\ & (!\Mult0|auto_generated|mac_out8~DATAOUT9\ & !\Mult0|auto_generated|add9_result[26]~53\)) # (!\Mult0|auto_generated|mac_out6~DATAOUT27\ & 
-- ((!\Mult0|auto_generated|add9_result[26]~53\) # (!\Mult0|auto_generated|mac_out8~DATAOUT9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out6~DATAOUT27\,
	datab => \Mult0|auto_generated|mac_out8~DATAOUT9\,
	datad => VCC,
	cin => \Mult0|auto_generated|add9_result[26]~53\,
	combout => \Mult0|auto_generated|add9_result[27]~54_combout\,
	cout => \Mult0|auto_generated|add9_result[27]~55\);

-- Location: LCCOMB_X66_Y34_N24
\Mult0|auto_generated|op_1~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~54_combout\ = (\Mult0|auto_generated|mac_out4~DATAOUT27\ & ((\Mult0|auto_generated|add9_result[27]~54_combout\ & (\Mult0|auto_generated|op_1~53\ & VCC)) # (!\Mult0|auto_generated|add9_result[27]~54_combout\ & 
-- (!\Mult0|auto_generated|op_1~53\)))) # (!\Mult0|auto_generated|mac_out4~DATAOUT27\ & ((\Mult0|auto_generated|add9_result[27]~54_combout\ & (!\Mult0|auto_generated|op_1~53\)) # (!\Mult0|auto_generated|add9_result[27]~54_combout\ & 
-- ((\Mult0|auto_generated|op_1~53\) # (GND)))))
-- \Mult0|auto_generated|op_1~55\ = CARRY((\Mult0|auto_generated|mac_out4~DATAOUT27\ & (!\Mult0|auto_generated|add9_result[27]~54_combout\ & !\Mult0|auto_generated|op_1~53\)) # (!\Mult0|auto_generated|mac_out4~DATAOUT27\ & ((!\Mult0|auto_generated|op_1~53\) 
-- # (!\Mult0|auto_generated|add9_result[27]~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out4~DATAOUT27\,
	datab => \Mult0|auto_generated|add9_result[27]~54_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~53\,
	combout => \Mult0|auto_generated|op_1~54_combout\,
	cout => \Mult0|auto_generated|op_1~55\);

-- Location: LCCOMB_X65_Y34_N30
\Mux50~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux50~0_combout\ = (\Mux29~9_combout\ & ((\opsel[0]~input_o\ & (\Mult1|auto_generated|op_1~54_combout\)) # (!\opsel[0]~input_o\ & ((\Mult0|auto_generated|op_1~54_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~9_combout\,
	datab => \Mult1|auto_generated|op_1~54_combout\,
	datac => \opsel[0]~input_o\,
	datad => \Mult0|auto_generated|op_1~54_combout\,
	combout => \Mux50~0_combout\);

-- Location: LCCOMB_X67_Y34_N26
\Mult0|auto_generated|add9_result[28]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|add9_result[28]~56_combout\ = ((\Mult0|auto_generated|mac_out6~DATAOUT28\ $ (\Mult0|auto_generated|mac_out8~DATAOUT10\ $ (!\Mult0|auto_generated|add9_result[27]~55\)))) # (GND)
-- \Mult0|auto_generated|add9_result[28]~57\ = CARRY((\Mult0|auto_generated|mac_out6~DATAOUT28\ & ((\Mult0|auto_generated|mac_out8~DATAOUT10\) # (!\Mult0|auto_generated|add9_result[27]~55\))) # (!\Mult0|auto_generated|mac_out6~DATAOUT28\ & 
-- (\Mult0|auto_generated|mac_out8~DATAOUT10\ & !\Mult0|auto_generated|add9_result[27]~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out6~DATAOUT28\,
	datab => \Mult0|auto_generated|mac_out8~DATAOUT10\,
	datad => VCC,
	cin => \Mult0|auto_generated|add9_result[27]~55\,
	combout => \Mult0|auto_generated|add9_result[28]~56_combout\,
	cout => \Mult0|auto_generated|add9_result[28]~57\);

-- Location: LCCOMB_X66_Y34_N26
\Mult0|auto_generated|op_1~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~56_combout\ = ((\Mult0|auto_generated|mac_out4~DATAOUT28\ $ (\Mult0|auto_generated|add9_result[28]~56_combout\ $ (!\Mult0|auto_generated|op_1~55\)))) # (GND)
-- \Mult0|auto_generated|op_1~57\ = CARRY((\Mult0|auto_generated|mac_out4~DATAOUT28\ & ((\Mult0|auto_generated|add9_result[28]~56_combout\) # (!\Mult0|auto_generated|op_1~55\))) # (!\Mult0|auto_generated|mac_out4~DATAOUT28\ & 
-- (\Mult0|auto_generated|add9_result[28]~56_combout\ & !\Mult0|auto_generated|op_1~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out4~DATAOUT28\,
	datab => \Mult0|auto_generated|add9_result[28]~56_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~55\,
	combout => \Mult0|auto_generated|op_1~56_combout\,
	cout => \Mult0|auto_generated|op_1~57\);

-- Location: LCCOMB_X47_Y33_N8
\Mult1|auto_generated|add9_result[28]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|add9_result[28]~56_combout\ = ((\Mult1|auto_generated|mac_out8~DATAOUT10\ $ (\Mult1|auto_generated|mac_out6~DATAOUT28\ $ (!\Mult1|auto_generated|add9_result[27]~55\)))) # (GND)
-- \Mult1|auto_generated|add9_result[28]~57\ = CARRY((\Mult1|auto_generated|mac_out8~DATAOUT10\ & ((\Mult1|auto_generated|mac_out6~DATAOUT28\) # (!\Mult1|auto_generated|add9_result[27]~55\))) # (!\Mult1|auto_generated|mac_out8~DATAOUT10\ & 
-- (\Mult1|auto_generated|mac_out6~DATAOUT28\ & !\Mult1|auto_generated|add9_result[27]~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out8~DATAOUT10\,
	datab => \Mult1|auto_generated|mac_out6~DATAOUT28\,
	datad => VCC,
	cin => \Mult1|auto_generated|add9_result[27]~55\,
	combout => \Mult1|auto_generated|add9_result[28]~56_combout\,
	cout => \Mult1|auto_generated|add9_result[28]~57\);

-- Location: LCCOMB_X49_Y34_N26
\Mult1|auto_generated|op_1~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_1~56_combout\ = ((\Mult1|auto_generated|add9_result[28]~56_combout\ $ (\Mult1|auto_generated|mac_out4~DATAOUT28\ $ (!\Mult1|auto_generated|op_1~55\)))) # (GND)
-- \Mult1|auto_generated|op_1~57\ = CARRY((\Mult1|auto_generated|add9_result[28]~56_combout\ & ((\Mult1|auto_generated|mac_out4~DATAOUT28\) # (!\Mult1|auto_generated|op_1~55\))) # (!\Mult1|auto_generated|add9_result[28]~56_combout\ & 
-- (\Mult1|auto_generated|mac_out4~DATAOUT28\ & !\Mult1|auto_generated|op_1~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|add9_result[28]~56_combout\,
	datab => \Mult1|auto_generated|mac_out4~DATAOUT28\,
	datad => VCC,
	cin => \Mult1|auto_generated|op_1~55\,
	combout => \Mult1|auto_generated|op_1~56_combout\,
	cout => \Mult1|auto_generated|op_1~57\);

-- Location: LCCOMB_X65_Y34_N24
\Mux49~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux49~0_combout\ = (\Mux29~9_combout\ & ((\opsel[0]~input_o\ & ((\Mult1|auto_generated|op_1~56_combout\))) # (!\opsel[0]~input_o\ & (\Mult0|auto_generated|op_1~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~9_combout\,
	datab => \Mult0|auto_generated|op_1~56_combout\,
	datac => \opsel[0]~input_o\,
	datad => \Mult1|auto_generated|op_1~56_combout\,
	combout => \Mux49~0_combout\);

-- Location: LCCOMB_X67_Y34_N28
\Mult0|auto_generated|add9_result[29]~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|add9_result[29]~58_combout\ = (\Mult0|auto_generated|mac_out6~DATAOUT29\ & ((\Mult0|auto_generated|mac_out8~DATAOUT11\ & (\Mult0|auto_generated|add9_result[28]~57\ & VCC)) # (!\Mult0|auto_generated|mac_out8~DATAOUT11\ & 
-- (!\Mult0|auto_generated|add9_result[28]~57\)))) # (!\Mult0|auto_generated|mac_out6~DATAOUT29\ & ((\Mult0|auto_generated|mac_out8~DATAOUT11\ & (!\Mult0|auto_generated|add9_result[28]~57\)) # (!\Mult0|auto_generated|mac_out8~DATAOUT11\ & 
-- ((\Mult0|auto_generated|add9_result[28]~57\) # (GND)))))
-- \Mult0|auto_generated|add9_result[29]~59\ = CARRY((\Mult0|auto_generated|mac_out6~DATAOUT29\ & (!\Mult0|auto_generated|mac_out8~DATAOUT11\ & !\Mult0|auto_generated|add9_result[28]~57\)) # (!\Mult0|auto_generated|mac_out6~DATAOUT29\ & 
-- ((!\Mult0|auto_generated|add9_result[28]~57\) # (!\Mult0|auto_generated|mac_out8~DATAOUT11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out6~DATAOUT29\,
	datab => \Mult0|auto_generated|mac_out8~DATAOUT11\,
	datad => VCC,
	cin => \Mult0|auto_generated|add9_result[28]~57\,
	combout => \Mult0|auto_generated|add9_result[29]~58_combout\,
	cout => \Mult0|auto_generated|add9_result[29]~59\);

-- Location: LCCOMB_X66_Y34_N28
\Mult0|auto_generated|op_1~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~58_combout\ = (\Mult0|auto_generated|mac_out4~DATAOUT29\ & ((\Mult0|auto_generated|add9_result[29]~58_combout\ & (\Mult0|auto_generated|op_1~57\ & VCC)) # (!\Mult0|auto_generated|add9_result[29]~58_combout\ & 
-- (!\Mult0|auto_generated|op_1~57\)))) # (!\Mult0|auto_generated|mac_out4~DATAOUT29\ & ((\Mult0|auto_generated|add9_result[29]~58_combout\ & (!\Mult0|auto_generated|op_1~57\)) # (!\Mult0|auto_generated|add9_result[29]~58_combout\ & 
-- ((\Mult0|auto_generated|op_1~57\) # (GND)))))
-- \Mult0|auto_generated|op_1~59\ = CARRY((\Mult0|auto_generated|mac_out4~DATAOUT29\ & (!\Mult0|auto_generated|add9_result[29]~58_combout\ & !\Mult0|auto_generated|op_1~57\)) # (!\Mult0|auto_generated|mac_out4~DATAOUT29\ & ((!\Mult0|auto_generated|op_1~57\) 
-- # (!\Mult0|auto_generated|add9_result[29]~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out4~DATAOUT29\,
	datab => \Mult0|auto_generated|add9_result[29]~58_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~57\,
	combout => \Mult0|auto_generated|op_1~58_combout\,
	cout => \Mult0|auto_generated|op_1~59\);

-- Location: LCCOMB_X47_Y33_N10
\Mult1|auto_generated|add9_result[29]~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|add9_result[29]~58_combout\ = (\Mult1|auto_generated|mac_out6~DATAOUT29\ & ((\Mult1|auto_generated|mac_out8~DATAOUT11\ & (\Mult1|auto_generated|add9_result[28]~57\ & VCC)) # (!\Mult1|auto_generated|mac_out8~DATAOUT11\ & 
-- (!\Mult1|auto_generated|add9_result[28]~57\)))) # (!\Mult1|auto_generated|mac_out6~DATAOUT29\ & ((\Mult1|auto_generated|mac_out8~DATAOUT11\ & (!\Mult1|auto_generated|add9_result[28]~57\)) # (!\Mult1|auto_generated|mac_out8~DATAOUT11\ & 
-- ((\Mult1|auto_generated|add9_result[28]~57\) # (GND)))))
-- \Mult1|auto_generated|add9_result[29]~59\ = CARRY((\Mult1|auto_generated|mac_out6~DATAOUT29\ & (!\Mult1|auto_generated|mac_out8~DATAOUT11\ & !\Mult1|auto_generated|add9_result[28]~57\)) # (!\Mult1|auto_generated|mac_out6~DATAOUT29\ & 
-- ((!\Mult1|auto_generated|add9_result[28]~57\) # (!\Mult1|auto_generated|mac_out8~DATAOUT11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out6~DATAOUT29\,
	datab => \Mult1|auto_generated|mac_out8~DATAOUT11\,
	datad => VCC,
	cin => \Mult1|auto_generated|add9_result[28]~57\,
	combout => \Mult1|auto_generated|add9_result[29]~58_combout\,
	cout => \Mult1|auto_generated|add9_result[29]~59\);

-- Location: LCCOMB_X49_Y34_N28
\Mult1|auto_generated|op_1~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_1~58_combout\ = (\Mult1|auto_generated|add9_result[29]~58_combout\ & ((\Mult1|auto_generated|mac_out4~DATAOUT29\ & (\Mult1|auto_generated|op_1~57\ & VCC)) # (!\Mult1|auto_generated|mac_out4~DATAOUT29\ & 
-- (!\Mult1|auto_generated|op_1~57\)))) # (!\Mult1|auto_generated|add9_result[29]~58_combout\ & ((\Mult1|auto_generated|mac_out4~DATAOUT29\ & (!\Mult1|auto_generated|op_1~57\)) # (!\Mult1|auto_generated|mac_out4~DATAOUT29\ & ((\Mult1|auto_generated|op_1~57\) 
-- # (GND)))))
-- \Mult1|auto_generated|op_1~59\ = CARRY((\Mult1|auto_generated|add9_result[29]~58_combout\ & (!\Mult1|auto_generated|mac_out4~DATAOUT29\ & !\Mult1|auto_generated|op_1~57\)) # (!\Mult1|auto_generated|add9_result[29]~58_combout\ & 
-- ((!\Mult1|auto_generated|op_1~57\) # (!\Mult1|auto_generated|mac_out4~DATAOUT29\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|add9_result[29]~58_combout\,
	datab => \Mult1|auto_generated|mac_out4~DATAOUT29\,
	datad => VCC,
	cin => \Mult1|auto_generated|op_1~57\,
	combout => \Mult1|auto_generated|op_1~58_combout\,
	cout => \Mult1|auto_generated|op_1~59\);

-- Location: LCCOMB_X65_Y33_N20
\Mux48~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux48~0_combout\ = (\Mux29~9_combout\ & ((\opsel[0]~input_o\ & ((\Mult1|auto_generated|op_1~58_combout\))) # (!\opsel[0]~input_o\ & (\Mult0|auto_generated|op_1~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|op_1~58_combout\,
	datab => \Mult1|auto_generated|op_1~58_combout\,
	datac => \Mux29~9_combout\,
	datad => \opsel[0]~input_o\,
	combout => \Mux48~0_combout\);

-- Location: LCCOMB_X67_Y34_N30
\Mult0|auto_generated|add9_result[30]~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|add9_result[30]~60_combout\ = ((\Mult0|auto_generated|mac_out6~DATAOUT30\ $ (\Mult0|auto_generated|mac_out8~DATAOUT12\ $ (!\Mult0|auto_generated|add9_result[29]~59\)))) # (GND)
-- \Mult0|auto_generated|add9_result[30]~61\ = CARRY((\Mult0|auto_generated|mac_out6~DATAOUT30\ & ((\Mult0|auto_generated|mac_out8~DATAOUT12\) # (!\Mult0|auto_generated|add9_result[29]~59\))) # (!\Mult0|auto_generated|mac_out6~DATAOUT30\ & 
-- (\Mult0|auto_generated|mac_out8~DATAOUT12\ & !\Mult0|auto_generated|add9_result[29]~59\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out6~DATAOUT30\,
	datab => \Mult0|auto_generated|mac_out8~DATAOUT12\,
	datad => VCC,
	cin => \Mult0|auto_generated|add9_result[29]~59\,
	combout => \Mult0|auto_generated|add9_result[30]~60_combout\,
	cout => \Mult0|auto_generated|add9_result[30]~61\);

-- Location: LCCOMB_X66_Y34_N30
\Mult0|auto_generated|op_1~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~60_combout\ = ((\Mult0|auto_generated|add9_result[30]~60_combout\ $ (\Mult0|auto_generated|mac_out4~DATAOUT30\ $ (!\Mult0|auto_generated|op_1~59\)))) # (GND)
-- \Mult0|auto_generated|op_1~61\ = CARRY((\Mult0|auto_generated|add9_result[30]~60_combout\ & ((\Mult0|auto_generated|mac_out4~DATAOUT30\) # (!\Mult0|auto_generated|op_1~59\))) # (!\Mult0|auto_generated|add9_result[30]~60_combout\ & 
-- (\Mult0|auto_generated|mac_out4~DATAOUT30\ & !\Mult0|auto_generated|op_1~59\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|add9_result[30]~60_combout\,
	datab => \Mult0|auto_generated|mac_out4~DATAOUT30\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~59\,
	combout => \Mult0|auto_generated|op_1~60_combout\,
	cout => \Mult0|auto_generated|op_1~61\);

-- Location: LCCOMB_X47_Y33_N12
\Mult1|auto_generated|add9_result[30]~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|add9_result[30]~60_combout\ = ((\Mult1|auto_generated|mac_out6~DATAOUT30\ $ (\Mult1|auto_generated|mac_out8~DATAOUT12\ $ (!\Mult1|auto_generated|add9_result[29]~59\)))) # (GND)
-- \Mult1|auto_generated|add9_result[30]~61\ = CARRY((\Mult1|auto_generated|mac_out6~DATAOUT30\ & ((\Mult1|auto_generated|mac_out8~DATAOUT12\) # (!\Mult1|auto_generated|add9_result[29]~59\))) # (!\Mult1|auto_generated|mac_out6~DATAOUT30\ & 
-- (\Mult1|auto_generated|mac_out8~DATAOUT12\ & !\Mult1|auto_generated|add9_result[29]~59\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out6~DATAOUT30\,
	datab => \Mult1|auto_generated|mac_out8~DATAOUT12\,
	datad => VCC,
	cin => \Mult1|auto_generated|add9_result[29]~59\,
	combout => \Mult1|auto_generated|add9_result[30]~60_combout\,
	cout => \Mult1|auto_generated|add9_result[30]~61\);

-- Location: LCCOMB_X49_Y34_N30
\Mult1|auto_generated|op_1~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_1~60_combout\ = ((\Mult1|auto_generated|add9_result[30]~60_combout\ $ (\Mult1|auto_generated|mac_out4~DATAOUT30\ $ (!\Mult1|auto_generated|op_1~59\)))) # (GND)
-- \Mult1|auto_generated|op_1~61\ = CARRY((\Mult1|auto_generated|add9_result[30]~60_combout\ & ((\Mult1|auto_generated|mac_out4~DATAOUT30\) # (!\Mult1|auto_generated|op_1~59\))) # (!\Mult1|auto_generated|add9_result[30]~60_combout\ & 
-- (\Mult1|auto_generated|mac_out4~DATAOUT30\ & !\Mult1|auto_generated|op_1~59\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|add9_result[30]~60_combout\,
	datab => \Mult1|auto_generated|mac_out4~DATAOUT30\,
	datad => VCC,
	cin => \Mult1|auto_generated|op_1~59\,
	combout => \Mult1|auto_generated|op_1~60_combout\,
	cout => \Mult1|auto_generated|op_1~61\);

-- Location: LCCOMB_X65_Y34_N26
\Mux47~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux47~0_combout\ = (\Mux29~9_combout\ & ((\opsel[0]~input_o\ & ((\Mult1|auto_generated|op_1~60_combout\))) # (!\opsel[0]~input_o\ & (\Mult0|auto_generated|op_1~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|op_1~60_combout\,
	datab => \Mult1|auto_generated|op_1~60_combout\,
	datac => \opsel[0]~input_o\,
	datad => \Mux29~9_combout\,
	combout => \Mux47~0_combout\);

-- Location: LCCOMB_X47_Y33_N14
\Mult1|auto_generated|add9_result[31]~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|add9_result[31]~62_combout\ = (\Mult1|auto_generated|mac_out6~DATAOUT31\ & ((\Mult1|auto_generated|mac_out8~DATAOUT13\ & (\Mult1|auto_generated|add9_result[30]~61\ & VCC)) # (!\Mult1|auto_generated|mac_out8~DATAOUT13\ & 
-- (!\Mult1|auto_generated|add9_result[30]~61\)))) # (!\Mult1|auto_generated|mac_out6~DATAOUT31\ & ((\Mult1|auto_generated|mac_out8~DATAOUT13\ & (!\Mult1|auto_generated|add9_result[30]~61\)) # (!\Mult1|auto_generated|mac_out8~DATAOUT13\ & 
-- ((\Mult1|auto_generated|add9_result[30]~61\) # (GND)))))
-- \Mult1|auto_generated|add9_result[31]~63\ = CARRY((\Mult1|auto_generated|mac_out6~DATAOUT31\ & (!\Mult1|auto_generated|mac_out8~DATAOUT13\ & !\Mult1|auto_generated|add9_result[30]~61\)) # (!\Mult1|auto_generated|mac_out6~DATAOUT31\ & 
-- ((!\Mult1|auto_generated|add9_result[30]~61\) # (!\Mult1|auto_generated|mac_out8~DATAOUT13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out6~DATAOUT31\,
	datab => \Mult1|auto_generated|mac_out8~DATAOUT13\,
	datad => VCC,
	cin => \Mult1|auto_generated|add9_result[30]~61\,
	combout => \Mult1|auto_generated|add9_result[31]~62_combout\,
	cout => \Mult1|auto_generated|add9_result[31]~63\);

-- Location: LCCOMB_X49_Y33_N0
\Mult1|auto_generated|op_1~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_1~62_combout\ = (\Mult1|auto_generated|mac_out4~DATAOUT31\ & ((\Mult1|auto_generated|add9_result[31]~62_combout\ & (\Mult1|auto_generated|op_1~61\ & VCC)) # (!\Mult1|auto_generated|add9_result[31]~62_combout\ & 
-- (!\Mult1|auto_generated|op_1~61\)))) # (!\Mult1|auto_generated|mac_out4~DATAOUT31\ & ((\Mult1|auto_generated|add9_result[31]~62_combout\ & (!\Mult1|auto_generated|op_1~61\)) # (!\Mult1|auto_generated|add9_result[31]~62_combout\ & 
-- ((\Mult1|auto_generated|op_1~61\) # (GND)))))
-- \Mult1|auto_generated|op_1~63\ = CARRY((\Mult1|auto_generated|mac_out4~DATAOUT31\ & (!\Mult1|auto_generated|add9_result[31]~62_combout\ & !\Mult1|auto_generated|op_1~61\)) # (!\Mult1|auto_generated|mac_out4~DATAOUT31\ & ((!\Mult1|auto_generated|op_1~61\) 
-- # (!\Mult1|auto_generated|add9_result[31]~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out4~DATAOUT31\,
	datab => \Mult1|auto_generated|add9_result[31]~62_combout\,
	datad => VCC,
	cin => \Mult1|auto_generated|op_1~61\,
	combout => \Mult1|auto_generated|op_1~62_combout\,
	cout => \Mult1|auto_generated|op_1~63\);

-- Location: LCCOMB_X67_Y33_N0
\Mult0|auto_generated|add9_result[31]~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|add9_result[31]~62_combout\ = (\Mult0|auto_generated|mac_out6~DATAOUT31\ & ((\Mult0|auto_generated|mac_out8~DATAOUT13\ & (!\Mult0|auto_generated|add9_result[30]~61\)) # (!\Mult0|auto_generated|mac_out8~DATAOUT13\ & 
-- ((\Mult0|auto_generated|add9_result[30]~61\) # (GND))))) # (!\Mult0|auto_generated|mac_out6~DATAOUT31\ & ((\Mult0|auto_generated|mac_out8~DATAOUT13\ & (\Mult0|auto_generated|add9_result[30]~61\ & VCC)) # (!\Mult0|auto_generated|mac_out8~DATAOUT13\ & 
-- (!\Mult0|auto_generated|add9_result[30]~61\))))
-- \Mult0|auto_generated|add9_result[31]~63\ = CARRY((\Mult0|auto_generated|mac_out6~DATAOUT31\ & ((!\Mult0|auto_generated|add9_result[30]~61\) # (!\Mult0|auto_generated|mac_out8~DATAOUT13\))) # (!\Mult0|auto_generated|mac_out6~DATAOUT31\ & 
-- (!\Mult0|auto_generated|mac_out8~DATAOUT13\ & !\Mult0|auto_generated|add9_result[30]~61\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out6~DATAOUT31\,
	datab => \Mult0|auto_generated|mac_out8~DATAOUT13\,
	datad => VCC,
	cin => \Mult0|auto_generated|add9_result[30]~61\,
	combout => \Mult0|auto_generated|add9_result[31]~62_combout\,
	cout => \Mult0|auto_generated|add9_result[31]~63\);

-- Location: LCCOMB_X66_Y33_N0
\Mult0|auto_generated|op_1~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~62_combout\ = (\Mult0|auto_generated|mac_out4~DATAOUT31\ & ((\Mult0|auto_generated|add9_result[31]~62_combout\ & (!\Mult0|auto_generated|op_1~61\)) # (!\Mult0|auto_generated|add9_result[31]~62_combout\ & 
-- ((\Mult0|auto_generated|op_1~61\) # (GND))))) # (!\Mult0|auto_generated|mac_out4~DATAOUT31\ & ((\Mult0|auto_generated|add9_result[31]~62_combout\ & (\Mult0|auto_generated|op_1~61\ & VCC)) # (!\Mult0|auto_generated|add9_result[31]~62_combout\ & 
-- (!\Mult0|auto_generated|op_1~61\))))
-- \Mult0|auto_generated|op_1~63\ = CARRY((\Mult0|auto_generated|mac_out4~DATAOUT31\ & ((!\Mult0|auto_generated|op_1~61\) # (!\Mult0|auto_generated|add9_result[31]~62_combout\))) # (!\Mult0|auto_generated|mac_out4~DATAOUT31\ & 
-- (!\Mult0|auto_generated|add9_result[31]~62_combout\ & !\Mult0|auto_generated|op_1~61\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out4~DATAOUT31\,
	datab => \Mult0|auto_generated|add9_result[31]~62_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~61\,
	combout => \Mult0|auto_generated|op_1~62_combout\,
	cout => \Mult0|auto_generated|op_1~63\);

-- Location: LCCOMB_X65_Y33_N14
\Mux46~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux46~0_combout\ = (\Mux29~9_combout\ & ((\opsel[0]~input_o\ & (\Mult1|auto_generated|op_1~62_combout\)) # (!\opsel[0]~input_o\ & ((\Mult0|auto_generated|op_1~62_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~9_combout\,
	datab => \Mult1|auto_generated|op_1~62_combout\,
	datac => \Mult0|auto_generated|op_1~62_combout\,
	datad => \opsel[0]~input_o\,
	combout => \Mux46~0_combout\);

-- Location: LCCOMB_X67_Y33_N2
\Mult0|auto_generated|add9_result[32]~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|add9_result[32]~64_combout\ = (\Mult0|auto_generated|mac_out8~DATAOUT14\ & (\Mult0|auto_generated|add9_result[31]~63\ $ (GND))) # (!\Mult0|auto_generated|mac_out8~DATAOUT14\ & (!\Mult0|auto_generated|add9_result[31]~63\ & VCC))
-- \Mult0|auto_generated|add9_result[32]~65\ = CARRY((\Mult0|auto_generated|mac_out8~DATAOUT14\ & !\Mult0|auto_generated|add9_result[31]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out8~DATAOUT14\,
	datad => VCC,
	cin => \Mult0|auto_generated|add9_result[31]~63\,
	combout => \Mult0|auto_generated|add9_result[32]~64_combout\,
	cout => \Mult0|auto_generated|add9_result[32]~65\);

-- Location: LCCOMB_X66_Y33_N2
\Mult0|auto_generated|op_1~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~64_combout\ = (\Mult0|auto_generated|add9_result[32]~64_combout\ & ((GND) # (!\Mult0|auto_generated|op_1~63\))) # (!\Mult0|auto_generated|add9_result[32]~64_combout\ & (\Mult0|auto_generated|op_1~63\ $ (GND)))
-- \Mult0|auto_generated|op_1~65\ = CARRY((\Mult0|auto_generated|add9_result[32]~64_combout\) # (!\Mult0|auto_generated|op_1~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|add9_result[32]~64_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~63\,
	combout => \Mult0|auto_generated|op_1~64_combout\,
	cout => \Mult0|auto_generated|op_1~65\);

-- Location: LCCOMB_X47_Y33_N16
\Mult1|auto_generated|add9_result[32]~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|add9_result[32]~64_combout\ = !\Mult1|auto_generated|add9_result[31]~63\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mult1|auto_generated|add9_result[31]~63\,
	combout => \Mult1|auto_generated|add9_result[32]~64_combout\);

-- Location: LCCOMB_X49_Y33_N2
\Mult1|auto_generated|op_1~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_1~64_combout\ = ((\Mult1|auto_generated|add9_result[32]~64_combout\ $ (\Mult1|auto_generated|mac_out8~DATAOUT14\ $ (!\Mult1|auto_generated|op_1~63\)))) # (GND)
-- \Mult1|auto_generated|op_1~65\ = CARRY((\Mult1|auto_generated|add9_result[32]~64_combout\ & ((\Mult1|auto_generated|mac_out8~DATAOUT14\) # (!\Mult1|auto_generated|op_1~63\))) # (!\Mult1|auto_generated|add9_result[32]~64_combout\ & 
-- (\Mult1|auto_generated|mac_out8~DATAOUT14\ & !\Mult1|auto_generated|op_1~63\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|add9_result[32]~64_combout\,
	datab => \Mult1|auto_generated|mac_out8~DATAOUT14\,
	datad => VCC,
	cin => \Mult1|auto_generated|op_1~63\,
	combout => \Mult1|auto_generated|op_1~64_combout\,
	cout => \Mult1|auto_generated|op_1~65\);

-- Location: LCCOMB_X65_Y33_N0
\Mux45~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux45~0_combout\ = (\Mux29~9_combout\ & ((\opsel[0]~input_o\ & ((\Mult1|auto_generated|op_1~64_combout\))) # (!\opsel[0]~input_o\ & (\Mult0|auto_generated|op_1~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|op_1~64_combout\,
	datab => \Mult1|auto_generated|op_1~64_combout\,
	datac => \Mux29~9_combout\,
	datad => \opsel[0]~input_o\,
	combout => \Mux45~0_combout\);

-- Location: LCCOMB_X49_Y33_N4
\Mult1|auto_generated|op_1~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_1~66_combout\ = (\Mult1|auto_generated|mac_out8~DATAOUT15\ & (!\Mult1|auto_generated|op_1~65\)) # (!\Mult1|auto_generated|mac_out8~DATAOUT15\ & ((\Mult1|auto_generated|op_1~65\) # (GND)))
-- \Mult1|auto_generated|op_1~67\ = CARRY((!\Mult1|auto_generated|op_1~65\) # (!\Mult1|auto_generated|mac_out8~DATAOUT15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out8~DATAOUT15\,
	datad => VCC,
	cin => \Mult1|auto_generated|op_1~65\,
	combout => \Mult1|auto_generated|op_1~66_combout\,
	cout => \Mult1|auto_generated|op_1~67\);

-- Location: LCCOMB_X67_Y33_N4
\Mult0|auto_generated|add9_result[33]~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|add9_result[33]~66_combout\ = (\Mult0|auto_generated|mac_out8~DATAOUT15\ & (!\Mult0|auto_generated|add9_result[32]~65\)) # (!\Mult0|auto_generated|mac_out8~DATAOUT15\ & ((\Mult0|auto_generated|add9_result[32]~65\) # (GND)))
-- \Mult0|auto_generated|add9_result[33]~67\ = CARRY((!\Mult0|auto_generated|add9_result[32]~65\) # (!\Mult0|auto_generated|mac_out8~DATAOUT15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|auto_generated|mac_out8~DATAOUT15\,
	datad => VCC,
	cin => \Mult0|auto_generated|add9_result[32]~65\,
	combout => \Mult0|auto_generated|add9_result[33]~66_combout\,
	cout => \Mult0|auto_generated|add9_result[33]~67\);

-- Location: LCCOMB_X66_Y33_N4
\Mult0|auto_generated|op_1~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~66_combout\ = (\Mult0|auto_generated|add9_result[33]~66_combout\ & (\Mult0|auto_generated|op_1~65\ & VCC)) # (!\Mult0|auto_generated|add9_result[33]~66_combout\ & (!\Mult0|auto_generated|op_1~65\))
-- \Mult0|auto_generated|op_1~67\ = CARRY((!\Mult0|auto_generated|add9_result[33]~66_combout\ & !\Mult0|auto_generated|op_1~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|add9_result[33]~66_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~65\,
	combout => \Mult0|auto_generated|op_1~66_combout\,
	cout => \Mult0|auto_generated|op_1~67\);

-- Location: LCCOMB_X65_Y33_N10
\Mux44~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux44~0_combout\ = (\Mux29~9_combout\ & ((\opsel[0]~input_o\ & (\Mult1|auto_generated|op_1~66_combout\)) # (!\opsel[0]~input_o\ & ((\Mult0|auto_generated|op_1~66_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~9_combout\,
	datab => \Mult1|auto_generated|op_1~66_combout\,
	datac => \Mult0|auto_generated|op_1~66_combout\,
	datad => \opsel[0]~input_o\,
	combout => \Mux44~0_combout\);

-- Location: LCCOMB_X67_Y33_N6
\Mult0|auto_generated|add9_result[34]~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|add9_result[34]~68_combout\ = (\Mult0|auto_generated|mac_out8~DATAOUT16\ & (\Mult0|auto_generated|add9_result[33]~67\ $ (GND))) # (!\Mult0|auto_generated|mac_out8~DATAOUT16\ & (!\Mult0|auto_generated|add9_result[33]~67\ & VCC))
-- \Mult0|auto_generated|add9_result[34]~69\ = CARRY((\Mult0|auto_generated|mac_out8~DATAOUT16\ & !\Mult0|auto_generated|add9_result[33]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|auto_generated|mac_out8~DATAOUT16\,
	datad => VCC,
	cin => \Mult0|auto_generated|add9_result[33]~67\,
	combout => \Mult0|auto_generated|add9_result[34]~68_combout\,
	cout => \Mult0|auto_generated|add9_result[34]~69\);

-- Location: LCCOMB_X66_Y33_N6
\Mult0|auto_generated|op_1~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~68_combout\ = (\Mult0|auto_generated|add9_result[34]~68_combout\ & ((GND) # (!\Mult0|auto_generated|op_1~67\))) # (!\Mult0|auto_generated|add9_result[34]~68_combout\ & (\Mult0|auto_generated|op_1~67\ $ (GND)))
-- \Mult0|auto_generated|op_1~69\ = CARRY((\Mult0|auto_generated|add9_result[34]~68_combout\) # (!\Mult0|auto_generated|op_1~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|add9_result[34]~68_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~67\,
	combout => \Mult0|auto_generated|op_1~68_combout\,
	cout => \Mult0|auto_generated|op_1~69\);

-- Location: LCCOMB_X49_Y33_N6
\Mult1|auto_generated|op_1~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_1~68_combout\ = (\Mult1|auto_generated|mac_out8~DATAOUT16\ & (\Mult1|auto_generated|op_1~67\ $ (GND))) # (!\Mult1|auto_generated|mac_out8~DATAOUT16\ & (!\Mult1|auto_generated|op_1~67\ & VCC))
-- \Mult1|auto_generated|op_1~69\ = CARRY((\Mult1|auto_generated|mac_out8~DATAOUT16\ & !\Mult1|auto_generated|op_1~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out8~DATAOUT16\,
	datad => VCC,
	cin => \Mult1|auto_generated|op_1~67\,
	combout => \Mult1|auto_generated|op_1~68_combout\,
	cout => \Mult1|auto_generated|op_1~69\);

-- Location: LCCOMB_X65_Y33_N28
\Mux43~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux43~0_combout\ = (\Mux29~9_combout\ & ((\opsel[0]~input_o\ & ((\Mult1|auto_generated|op_1~68_combout\))) # (!\opsel[0]~input_o\ & (\Mult0|auto_generated|op_1~68_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~9_combout\,
	datab => \Mult0|auto_generated|op_1~68_combout\,
	datac => \Mult1|auto_generated|op_1~68_combout\,
	datad => \opsel[0]~input_o\,
	combout => \Mux43~0_combout\);

-- Location: LCCOMB_X49_Y33_N8
\Mult1|auto_generated|op_1~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_1~70_combout\ = (\Mult1|auto_generated|mac_out8~DATAOUT17\ & (!\Mult1|auto_generated|op_1~69\)) # (!\Mult1|auto_generated|mac_out8~DATAOUT17\ & ((\Mult1|auto_generated|op_1~69\) # (GND)))
-- \Mult1|auto_generated|op_1~71\ = CARRY((!\Mult1|auto_generated|op_1~69\) # (!\Mult1|auto_generated|mac_out8~DATAOUT17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out8~DATAOUT17\,
	datad => VCC,
	cin => \Mult1|auto_generated|op_1~69\,
	combout => \Mult1|auto_generated|op_1~70_combout\,
	cout => \Mult1|auto_generated|op_1~71\);

-- Location: LCCOMB_X67_Y33_N8
\Mult0|auto_generated|add9_result[35]~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|add9_result[35]~70_combout\ = (\Mult0|auto_generated|mac_out8~DATAOUT17\ & (!\Mult0|auto_generated|add9_result[34]~69\)) # (!\Mult0|auto_generated|mac_out8~DATAOUT17\ & ((\Mult0|auto_generated|add9_result[34]~69\) # (GND)))
-- \Mult0|auto_generated|add9_result[35]~71\ = CARRY((!\Mult0|auto_generated|add9_result[34]~69\) # (!\Mult0|auto_generated|mac_out8~DATAOUT17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|auto_generated|mac_out8~DATAOUT17\,
	datad => VCC,
	cin => \Mult0|auto_generated|add9_result[34]~69\,
	combout => \Mult0|auto_generated|add9_result[35]~70_combout\,
	cout => \Mult0|auto_generated|add9_result[35]~71\);

-- Location: LCCOMB_X66_Y33_N8
\Mult0|auto_generated|op_1~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~70_combout\ = (\Mult0|auto_generated|add9_result[35]~70_combout\ & (\Mult0|auto_generated|op_1~69\ & VCC)) # (!\Mult0|auto_generated|add9_result[35]~70_combout\ & (!\Mult0|auto_generated|op_1~69\))
-- \Mult0|auto_generated|op_1~71\ = CARRY((!\Mult0|auto_generated|add9_result[35]~70_combout\ & !\Mult0|auto_generated|op_1~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|auto_generated|add9_result[35]~70_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~69\,
	combout => \Mult0|auto_generated|op_1~70_combout\,
	cout => \Mult0|auto_generated|op_1~71\);

-- Location: LCCOMB_X65_Y33_N30
\Mux42~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux42~0_combout\ = (\Mux29~9_combout\ & ((\opsel[0]~input_o\ & (\Mult1|auto_generated|op_1~70_combout\)) # (!\opsel[0]~input_o\ & ((\Mult0|auto_generated|op_1~70_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~9_combout\,
	datab => \Mult1|auto_generated|op_1~70_combout\,
	datac => \Mult0|auto_generated|op_1~70_combout\,
	datad => \opsel[0]~input_o\,
	combout => \Mux42~0_combout\);

-- Location: LCCOMB_X49_Y33_N10
\Mult1|auto_generated|op_1~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_1~72_combout\ = (\Mult1|auto_generated|mac_out8~DATAOUT18\ & (\Mult1|auto_generated|op_1~71\ $ (GND))) # (!\Mult1|auto_generated|mac_out8~DATAOUT18\ & (!\Mult1|auto_generated|op_1~71\ & VCC))
-- \Mult1|auto_generated|op_1~73\ = CARRY((\Mult1|auto_generated|mac_out8~DATAOUT18\ & !\Mult1|auto_generated|op_1~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out8~DATAOUT18\,
	datad => VCC,
	cin => \Mult1|auto_generated|op_1~71\,
	combout => \Mult1|auto_generated|op_1~72_combout\,
	cout => \Mult1|auto_generated|op_1~73\);

-- Location: LCCOMB_X67_Y33_N10
\Mult0|auto_generated|add9_result[36]~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|add9_result[36]~72_combout\ = (\Mult0|auto_generated|mac_out8~DATAOUT18\ & (\Mult0|auto_generated|add9_result[35]~71\ $ (GND))) # (!\Mult0|auto_generated|mac_out8~DATAOUT18\ & (!\Mult0|auto_generated|add9_result[35]~71\ & VCC))
-- \Mult0|auto_generated|add9_result[36]~73\ = CARRY((\Mult0|auto_generated|mac_out8~DATAOUT18\ & !\Mult0|auto_generated|add9_result[35]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|auto_generated|mac_out8~DATAOUT18\,
	datad => VCC,
	cin => \Mult0|auto_generated|add9_result[35]~71\,
	combout => \Mult0|auto_generated|add9_result[36]~72_combout\,
	cout => \Mult0|auto_generated|add9_result[36]~73\);

-- Location: LCCOMB_X66_Y33_N10
\Mult0|auto_generated|op_1~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~72_combout\ = (\Mult0|auto_generated|add9_result[36]~72_combout\ & ((GND) # (!\Mult0|auto_generated|op_1~71\))) # (!\Mult0|auto_generated|add9_result[36]~72_combout\ & (\Mult0|auto_generated|op_1~71\ $ (GND)))
-- \Mult0|auto_generated|op_1~73\ = CARRY((\Mult0|auto_generated|add9_result[36]~72_combout\) # (!\Mult0|auto_generated|op_1~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|auto_generated|add9_result[36]~72_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~71\,
	combout => \Mult0|auto_generated|op_1~72_combout\,
	cout => \Mult0|auto_generated|op_1~73\);

-- Location: LCCOMB_X65_Y34_N12
\Mux41~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux41~0_combout\ = (\Mux29~9_combout\ & ((\opsel[0]~input_o\ & (\Mult1|auto_generated|op_1~72_combout\)) # (!\opsel[0]~input_o\ & ((\Mult0|auto_generated|op_1~72_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~9_combout\,
	datab => \Mult1|auto_generated|op_1~72_combout\,
	datac => \opsel[0]~input_o\,
	datad => \Mult0|auto_generated|op_1~72_combout\,
	combout => \Mux41~0_combout\);

-- Location: LCCOMB_X49_Y33_N12
\Mult1|auto_generated|op_1~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_1~74_combout\ = (\Mult1|auto_generated|mac_out8~DATAOUT19\ & (!\Mult1|auto_generated|op_1~73\)) # (!\Mult1|auto_generated|mac_out8~DATAOUT19\ & ((\Mult1|auto_generated|op_1~73\) # (GND)))
-- \Mult1|auto_generated|op_1~75\ = CARRY((!\Mult1|auto_generated|op_1~73\) # (!\Mult1|auto_generated|mac_out8~DATAOUT19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out8~DATAOUT19\,
	datad => VCC,
	cin => \Mult1|auto_generated|op_1~73\,
	combout => \Mult1|auto_generated|op_1~74_combout\,
	cout => \Mult1|auto_generated|op_1~75\);

-- Location: LCCOMB_X67_Y33_N12
\Mult0|auto_generated|add9_result[37]~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|add9_result[37]~74_combout\ = (\Mult0|auto_generated|mac_out8~DATAOUT19\ & (!\Mult0|auto_generated|add9_result[36]~73\)) # (!\Mult0|auto_generated|mac_out8~DATAOUT19\ & ((\Mult0|auto_generated|add9_result[36]~73\) # (GND)))
-- \Mult0|auto_generated|add9_result[37]~75\ = CARRY((!\Mult0|auto_generated|add9_result[36]~73\) # (!\Mult0|auto_generated|mac_out8~DATAOUT19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|auto_generated|mac_out8~DATAOUT19\,
	datad => VCC,
	cin => \Mult0|auto_generated|add9_result[36]~73\,
	combout => \Mult0|auto_generated|add9_result[37]~74_combout\,
	cout => \Mult0|auto_generated|add9_result[37]~75\);

-- Location: LCCOMB_X66_Y33_N12
\Mult0|auto_generated|op_1~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~74_combout\ = (\Mult0|auto_generated|add9_result[37]~74_combout\ & (\Mult0|auto_generated|op_1~73\ & VCC)) # (!\Mult0|auto_generated|add9_result[37]~74_combout\ & (!\Mult0|auto_generated|op_1~73\))
-- \Mult0|auto_generated|op_1~75\ = CARRY((!\Mult0|auto_generated|add9_result[37]~74_combout\ & !\Mult0|auto_generated|op_1~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|auto_generated|add9_result[37]~74_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~73\,
	combout => \Mult0|auto_generated|op_1~74_combout\,
	cout => \Mult0|auto_generated|op_1~75\);

-- Location: LCCOMB_X65_Y34_N14
\Mux40~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux40~0_combout\ = (\Mux29~9_combout\ & ((\opsel[0]~input_o\ & (\Mult1|auto_generated|op_1~74_combout\)) # (!\opsel[0]~input_o\ & ((\Mult0|auto_generated|op_1~74_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~9_combout\,
	datab => \Mult1|auto_generated|op_1~74_combout\,
	datac => \opsel[0]~input_o\,
	datad => \Mult0|auto_generated|op_1~74_combout\,
	combout => \Mux40~0_combout\);

-- Location: LCCOMB_X67_Y33_N14
\Mult0|auto_generated|add9_result[38]~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|add9_result[38]~76_combout\ = (\Mult0|auto_generated|mac_out8~DATAOUT20\ & (\Mult0|auto_generated|add9_result[37]~75\ $ (GND))) # (!\Mult0|auto_generated|mac_out8~DATAOUT20\ & (!\Mult0|auto_generated|add9_result[37]~75\ & VCC))
-- \Mult0|auto_generated|add9_result[38]~77\ = CARRY((\Mult0|auto_generated|mac_out8~DATAOUT20\ & !\Mult0|auto_generated|add9_result[37]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|auto_generated|mac_out8~DATAOUT20\,
	datad => VCC,
	cin => \Mult0|auto_generated|add9_result[37]~75\,
	combout => \Mult0|auto_generated|add9_result[38]~76_combout\,
	cout => \Mult0|auto_generated|add9_result[38]~77\);

-- Location: LCCOMB_X66_Y33_N14
\Mult0|auto_generated|op_1~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~76_combout\ = (\Mult0|auto_generated|add9_result[38]~76_combout\ & ((GND) # (!\Mult0|auto_generated|op_1~75\))) # (!\Mult0|auto_generated|add9_result[38]~76_combout\ & (\Mult0|auto_generated|op_1~75\ $ (GND)))
-- \Mult0|auto_generated|op_1~77\ = CARRY((\Mult0|auto_generated|add9_result[38]~76_combout\) # (!\Mult0|auto_generated|op_1~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|auto_generated|add9_result[38]~76_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~75\,
	combout => \Mult0|auto_generated|op_1~76_combout\,
	cout => \Mult0|auto_generated|op_1~77\);

-- Location: LCCOMB_X49_Y33_N14
\Mult1|auto_generated|op_1~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_1~76_combout\ = (\Mult1|auto_generated|mac_out8~DATAOUT20\ & (\Mult1|auto_generated|op_1~75\ $ (GND))) # (!\Mult1|auto_generated|mac_out8~DATAOUT20\ & (!\Mult1|auto_generated|op_1~75\ & VCC))
-- \Mult1|auto_generated|op_1~77\ = CARRY((\Mult1|auto_generated|mac_out8~DATAOUT20\ & !\Mult1|auto_generated|op_1~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult1|auto_generated|mac_out8~DATAOUT20\,
	datad => VCC,
	cin => \Mult1|auto_generated|op_1~75\,
	combout => \Mult1|auto_generated|op_1~76_combout\,
	cout => \Mult1|auto_generated|op_1~77\);

-- Location: LCCOMB_X65_Y34_N0
\Mux39~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux39~0_combout\ = (\Mux29~9_combout\ & ((\opsel[0]~input_o\ & ((\Mult1|auto_generated|op_1~76_combout\))) # (!\opsel[0]~input_o\ & (\Mult0|auto_generated|op_1~76_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~9_combout\,
	datab => \Mult0|auto_generated|op_1~76_combout\,
	datac => \opsel[0]~input_o\,
	datad => \Mult1|auto_generated|op_1~76_combout\,
	combout => \Mux39~0_combout\);

-- Location: LCCOMB_X67_Y33_N16
\Mult0|auto_generated|add9_result[39]~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|add9_result[39]~78_combout\ = (\Mult0|auto_generated|mac_out8~DATAOUT21\ & (!\Mult0|auto_generated|add9_result[38]~77\)) # (!\Mult0|auto_generated|mac_out8~DATAOUT21\ & ((\Mult0|auto_generated|add9_result[38]~77\) # (GND)))
-- \Mult0|auto_generated|add9_result[39]~79\ = CARRY((!\Mult0|auto_generated|add9_result[38]~77\) # (!\Mult0|auto_generated|mac_out8~DATAOUT21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out8~DATAOUT21\,
	datad => VCC,
	cin => \Mult0|auto_generated|add9_result[38]~77\,
	combout => \Mult0|auto_generated|add9_result[39]~78_combout\,
	cout => \Mult0|auto_generated|add9_result[39]~79\);

-- Location: LCCOMB_X66_Y33_N16
\Mult0|auto_generated|op_1~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~78_combout\ = (\Mult0|auto_generated|add9_result[39]~78_combout\ & (\Mult0|auto_generated|op_1~77\ & VCC)) # (!\Mult0|auto_generated|add9_result[39]~78_combout\ & (!\Mult0|auto_generated|op_1~77\))
-- \Mult0|auto_generated|op_1~79\ = CARRY((!\Mult0|auto_generated|add9_result[39]~78_combout\ & !\Mult0|auto_generated|op_1~77\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|auto_generated|add9_result[39]~78_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~77\,
	combout => \Mult0|auto_generated|op_1~78_combout\,
	cout => \Mult0|auto_generated|op_1~79\);

-- Location: LCCOMB_X49_Y33_N16
\Mult1|auto_generated|op_1~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_1~78_combout\ = (\Mult1|auto_generated|mac_out8~DATAOUT21\ & (!\Mult1|auto_generated|op_1~77\)) # (!\Mult1|auto_generated|mac_out8~DATAOUT21\ & ((\Mult1|auto_generated|op_1~77\) # (GND)))
-- \Mult1|auto_generated|op_1~79\ = CARRY((!\Mult1|auto_generated|op_1~77\) # (!\Mult1|auto_generated|mac_out8~DATAOUT21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out8~DATAOUT21\,
	datad => VCC,
	cin => \Mult1|auto_generated|op_1~77\,
	combout => \Mult1|auto_generated|op_1~78_combout\,
	cout => \Mult1|auto_generated|op_1~79\);

-- Location: LCCOMB_X65_Y33_N16
\Mux38~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux38~0_combout\ = (\Mux29~9_combout\ & ((\opsel[0]~input_o\ & ((\Mult1|auto_generated|op_1~78_combout\))) # (!\opsel[0]~input_o\ & (\Mult0|auto_generated|op_1~78_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~9_combout\,
	datab => \Mult0|auto_generated|op_1~78_combout\,
	datac => \Mult1|auto_generated|op_1~78_combout\,
	datad => \opsel[0]~input_o\,
	combout => \Mux38~0_combout\);

-- Location: LCCOMB_X49_Y33_N18
\Mult1|auto_generated|op_1~80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_1~80_combout\ = (\Mult1|auto_generated|mac_out8~DATAOUT22\ & (\Mult1|auto_generated|op_1~79\ $ (GND))) # (!\Mult1|auto_generated|mac_out8~DATAOUT22\ & (!\Mult1|auto_generated|op_1~79\ & VCC))
-- \Mult1|auto_generated|op_1~81\ = CARRY((\Mult1|auto_generated|mac_out8~DATAOUT22\ & !\Mult1|auto_generated|op_1~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult1|auto_generated|mac_out8~DATAOUT22\,
	datad => VCC,
	cin => \Mult1|auto_generated|op_1~79\,
	combout => \Mult1|auto_generated|op_1~80_combout\,
	cout => \Mult1|auto_generated|op_1~81\);

-- Location: LCCOMB_X67_Y33_N18
\Mult0|auto_generated|add9_result[40]~80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|add9_result[40]~80_combout\ = (\Mult0|auto_generated|mac_out8~DATAOUT22\ & (\Mult0|auto_generated|add9_result[39]~79\ $ (GND))) # (!\Mult0|auto_generated|mac_out8~DATAOUT22\ & (!\Mult0|auto_generated|add9_result[39]~79\ & VCC))
-- \Mult0|auto_generated|add9_result[40]~81\ = CARRY((\Mult0|auto_generated|mac_out8~DATAOUT22\ & !\Mult0|auto_generated|add9_result[39]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|auto_generated|mac_out8~DATAOUT22\,
	datad => VCC,
	cin => \Mult0|auto_generated|add9_result[39]~79\,
	combout => \Mult0|auto_generated|add9_result[40]~80_combout\,
	cout => \Mult0|auto_generated|add9_result[40]~81\);

-- Location: LCCOMB_X66_Y33_N18
\Mult0|auto_generated|op_1~80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~80_combout\ = (\Mult0|auto_generated|add9_result[40]~80_combout\ & ((GND) # (!\Mult0|auto_generated|op_1~79\))) # (!\Mult0|auto_generated|add9_result[40]~80_combout\ & (\Mult0|auto_generated|op_1~79\ $ (GND)))
-- \Mult0|auto_generated|op_1~81\ = CARRY((\Mult0|auto_generated|add9_result[40]~80_combout\) # (!\Mult0|auto_generated|op_1~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|auto_generated|add9_result[40]~80_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~79\,
	combout => \Mult0|auto_generated|op_1~80_combout\,
	cout => \Mult0|auto_generated|op_1~81\);

-- Location: LCCOMB_X65_Y34_N18
\Mux37~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux37~0_combout\ = (\Mux29~9_combout\ & ((\opsel[0]~input_o\ & (\Mult1|auto_generated|op_1~80_combout\)) # (!\opsel[0]~input_o\ & ((\Mult0|auto_generated|op_1~80_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~9_combout\,
	datab => \Mult1|auto_generated|op_1~80_combout\,
	datac => \opsel[0]~input_o\,
	datad => \Mult0|auto_generated|op_1~80_combout\,
	combout => \Mux37~0_combout\);

-- Location: LCCOMB_X49_Y33_N20
\Mult1|auto_generated|op_1~82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_1~82_combout\ = (\Mult1|auto_generated|mac_out8~DATAOUT23\ & (!\Mult1|auto_generated|op_1~81\)) # (!\Mult1|auto_generated|mac_out8~DATAOUT23\ & ((\Mult1|auto_generated|op_1~81\) # (GND)))
-- \Mult1|auto_generated|op_1~83\ = CARRY((!\Mult1|auto_generated|op_1~81\) # (!\Mult1|auto_generated|mac_out8~DATAOUT23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult1|auto_generated|mac_out8~DATAOUT23\,
	datad => VCC,
	cin => \Mult1|auto_generated|op_1~81\,
	combout => \Mult1|auto_generated|op_1~82_combout\,
	cout => \Mult1|auto_generated|op_1~83\);

-- Location: LCCOMB_X67_Y33_N20
\Mult0|auto_generated|add9_result[41]~82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|add9_result[41]~82_combout\ = (\Mult0|auto_generated|mac_out8~DATAOUT23\ & (!\Mult0|auto_generated|add9_result[40]~81\)) # (!\Mult0|auto_generated|mac_out8~DATAOUT23\ & ((\Mult0|auto_generated|add9_result[40]~81\) # (GND)))
-- \Mult0|auto_generated|add9_result[41]~83\ = CARRY((!\Mult0|auto_generated|add9_result[40]~81\) # (!\Mult0|auto_generated|mac_out8~DATAOUT23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|auto_generated|mac_out8~DATAOUT23\,
	datad => VCC,
	cin => \Mult0|auto_generated|add9_result[40]~81\,
	combout => \Mult0|auto_generated|add9_result[41]~82_combout\,
	cout => \Mult0|auto_generated|add9_result[41]~83\);

-- Location: LCCOMB_X66_Y33_N20
\Mult0|auto_generated|op_1~82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~82_combout\ = (\Mult0|auto_generated|add9_result[41]~82_combout\ & (\Mult0|auto_generated|op_1~81\ & VCC)) # (!\Mult0|auto_generated|add9_result[41]~82_combout\ & (!\Mult0|auto_generated|op_1~81\))
-- \Mult0|auto_generated|op_1~83\ = CARRY((!\Mult0|auto_generated|add9_result[41]~82_combout\ & !\Mult0|auto_generated|op_1~81\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|add9_result[41]~82_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~81\,
	combout => \Mult0|auto_generated|op_1~82_combout\,
	cout => \Mult0|auto_generated|op_1~83\);

-- Location: LCCOMB_X65_Y33_N2
\Mux36~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux36~0_combout\ = (\Mux29~9_combout\ & ((\opsel[0]~input_o\ & (\Mult1|auto_generated|op_1~82_combout\)) # (!\opsel[0]~input_o\ & ((\Mult0|auto_generated|op_1~82_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~9_combout\,
	datab => \Mult1|auto_generated|op_1~82_combout\,
	datac => \Mult0|auto_generated|op_1~82_combout\,
	datad => \opsel[0]~input_o\,
	combout => \Mux36~0_combout\);

-- Location: LCCOMB_X49_Y33_N22
\Mult1|auto_generated|op_1~84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_1~84_combout\ = (\Mult1|auto_generated|mac_out8~DATAOUT24\ & (\Mult1|auto_generated|op_1~83\ $ (GND))) # (!\Mult1|auto_generated|mac_out8~DATAOUT24\ & (!\Mult1|auto_generated|op_1~83\ & VCC))
-- \Mult1|auto_generated|op_1~85\ = CARRY((\Mult1|auto_generated|mac_out8~DATAOUT24\ & !\Mult1|auto_generated|op_1~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult1|auto_generated|mac_out8~DATAOUT24\,
	datad => VCC,
	cin => \Mult1|auto_generated|op_1~83\,
	combout => \Mult1|auto_generated|op_1~84_combout\,
	cout => \Mult1|auto_generated|op_1~85\);

-- Location: LCCOMB_X67_Y33_N22
\Mult0|auto_generated|add9_result[42]~84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|add9_result[42]~84_combout\ = (\Mult0|auto_generated|mac_out8~DATAOUT24\ & (\Mult0|auto_generated|add9_result[41]~83\ $ (GND))) # (!\Mult0|auto_generated|mac_out8~DATAOUT24\ & (!\Mult0|auto_generated|add9_result[41]~83\ & VCC))
-- \Mult0|auto_generated|add9_result[42]~85\ = CARRY((\Mult0|auto_generated|mac_out8~DATAOUT24\ & !\Mult0|auto_generated|add9_result[41]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out8~DATAOUT24\,
	datad => VCC,
	cin => \Mult0|auto_generated|add9_result[41]~83\,
	combout => \Mult0|auto_generated|add9_result[42]~84_combout\,
	cout => \Mult0|auto_generated|add9_result[42]~85\);

-- Location: LCCOMB_X66_Y33_N22
\Mult0|auto_generated|op_1~84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~84_combout\ = (\Mult0|auto_generated|add9_result[42]~84_combout\ & ((GND) # (!\Mult0|auto_generated|op_1~83\))) # (!\Mult0|auto_generated|add9_result[42]~84_combout\ & (\Mult0|auto_generated|op_1~83\ $ (GND)))
-- \Mult0|auto_generated|op_1~85\ = CARRY((\Mult0|auto_generated|add9_result[42]~84_combout\) # (!\Mult0|auto_generated|op_1~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|auto_generated|add9_result[42]~84_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~83\,
	combout => \Mult0|auto_generated|op_1~84_combout\,
	cout => \Mult0|auto_generated|op_1~85\);

-- Location: LCCOMB_X65_Y34_N28
\Mux35~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux35~0_combout\ = (\Mux29~9_combout\ & ((\opsel[0]~input_o\ & (\Mult1|auto_generated|op_1~84_combout\)) # (!\opsel[0]~input_o\ & ((\Mult0|auto_generated|op_1~84_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~9_combout\,
	datab => \Mult1|auto_generated|op_1~84_combout\,
	datac => \opsel[0]~input_o\,
	datad => \Mult0|auto_generated|op_1~84_combout\,
	combout => \Mux35~0_combout\);

-- Location: LCCOMB_X49_Y33_N24
\Mult1|auto_generated|op_1~86\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_1~86_combout\ = (\Mult1|auto_generated|mac_out8~DATAOUT25\ & (!\Mult1|auto_generated|op_1~85\)) # (!\Mult1|auto_generated|mac_out8~DATAOUT25\ & ((\Mult1|auto_generated|op_1~85\) # (GND)))
-- \Mult1|auto_generated|op_1~87\ = CARRY((!\Mult1|auto_generated|op_1~85\) # (!\Mult1|auto_generated|mac_out8~DATAOUT25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out8~DATAOUT25\,
	datad => VCC,
	cin => \Mult1|auto_generated|op_1~85\,
	combout => \Mult1|auto_generated|op_1~86_combout\,
	cout => \Mult1|auto_generated|op_1~87\);

-- Location: LCCOMB_X67_Y33_N24
\Mult0|auto_generated|add9_result[43]~86\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|add9_result[43]~86_combout\ = (\Mult0|auto_generated|mac_out8~DATAOUT25\ & (!\Mult0|auto_generated|add9_result[42]~85\)) # (!\Mult0|auto_generated|mac_out8~DATAOUT25\ & ((\Mult0|auto_generated|add9_result[42]~85\) # (GND)))
-- \Mult0|auto_generated|add9_result[43]~87\ = CARRY((!\Mult0|auto_generated|add9_result[42]~85\) # (!\Mult0|auto_generated|mac_out8~DATAOUT25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|auto_generated|mac_out8~DATAOUT25\,
	datad => VCC,
	cin => \Mult0|auto_generated|add9_result[42]~85\,
	combout => \Mult0|auto_generated|add9_result[43]~86_combout\,
	cout => \Mult0|auto_generated|add9_result[43]~87\);

-- Location: LCCOMB_X66_Y33_N24
\Mult0|auto_generated|op_1~86\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~86_combout\ = (\Mult0|auto_generated|add9_result[43]~86_combout\ & (\Mult0|auto_generated|op_1~85\ & VCC)) # (!\Mult0|auto_generated|add9_result[43]~86_combout\ & (!\Mult0|auto_generated|op_1~85\))
-- \Mult0|auto_generated|op_1~87\ = CARRY((!\Mult0|auto_generated|add9_result[43]~86_combout\ & !\Mult0|auto_generated|op_1~85\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|auto_generated|add9_result[43]~86_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~85\,
	combout => \Mult0|auto_generated|op_1~86_combout\,
	cout => \Mult0|auto_generated|op_1~87\);

-- Location: LCCOMB_X66_Y33_N30
\Mux34~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux34~0_combout\ = (\Mux29~9_combout\ & ((\opsel[0]~input_o\ & (\Mult1|auto_generated|op_1~86_combout\)) # (!\opsel[0]~input_o\ & ((\Mult0|auto_generated|op_1~86_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~9_combout\,
	datab => \Mult1|auto_generated|op_1~86_combout\,
	datac => \opsel[0]~input_o\,
	datad => \Mult0|auto_generated|op_1~86_combout\,
	combout => \Mux34~0_combout\);

-- Location: LCCOMB_X49_Y33_N26
\Mult1|auto_generated|op_1~88\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_1~88_combout\ = (\Mult1|auto_generated|mac_out8~DATAOUT26\ & (\Mult1|auto_generated|op_1~87\ $ (GND))) # (!\Mult1|auto_generated|mac_out8~DATAOUT26\ & (!\Mult1|auto_generated|op_1~87\ & VCC))
-- \Mult1|auto_generated|op_1~89\ = CARRY((\Mult1|auto_generated|mac_out8~DATAOUT26\ & !\Mult1|auto_generated|op_1~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult1|auto_generated|mac_out8~DATAOUT26\,
	datad => VCC,
	cin => \Mult1|auto_generated|op_1~87\,
	combout => \Mult1|auto_generated|op_1~88_combout\,
	cout => \Mult1|auto_generated|op_1~89\);

-- Location: LCCOMB_X67_Y33_N26
\Mult0|auto_generated|add9_result[44]~88\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|add9_result[44]~88_combout\ = (\Mult0|auto_generated|mac_out8~DATAOUT26\ & (\Mult0|auto_generated|add9_result[43]~87\ $ (GND))) # (!\Mult0|auto_generated|mac_out8~DATAOUT26\ & (!\Mult0|auto_generated|add9_result[43]~87\ & VCC))
-- \Mult0|auto_generated|add9_result[44]~89\ = CARRY((\Mult0|auto_generated|mac_out8~DATAOUT26\ & !\Mult0|auto_generated|add9_result[43]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out8~DATAOUT26\,
	datad => VCC,
	cin => \Mult0|auto_generated|add9_result[43]~87\,
	combout => \Mult0|auto_generated|add9_result[44]~88_combout\,
	cout => \Mult0|auto_generated|add9_result[44]~89\);

-- Location: LCCOMB_X66_Y33_N26
\Mult0|auto_generated|op_1~88\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~88_combout\ = (\Mult0|auto_generated|add9_result[44]~88_combout\ & ((GND) # (!\Mult0|auto_generated|op_1~87\))) # (!\Mult0|auto_generated|add9_result[44]~88_combout\ & (\Mult0|auto_generated|op_1~87\ $ (GND)))
-- \Mult0|auto_generated|op_1~89\ = CARRY((\Mult0|auto_generated|add9_result[44]~88_combout\) # (!\Mult0|auto_generated|op_1~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|add9_result[44]~88_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~87\,
	combout => \Mult0|auto_generated|op_1~88_combout\,
	cout => \Mult0|auto_generated|op_1~89\);

-- Location: LCCOMB_X49_Y33_N30
\Mux33~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux33~0_combout\ = (\Mux29~9_combout\ & ((\opsel[0]~input_o\ & (\Mult1|auto_generated|op_1~88_combout\)) # (!\opsel[0]~input_o\ & ((\Mult0|auto_generated|op_1~88_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|op_1~88_combout\,
	datab => \Mux29~9_combout\,
	datac => \opsel[0]~input_o\,
	datad => \Mult0|auto_generated|op_1~88_combout\,
	combout => \Mux33~0_combout\);

-- Location: LCCOMB_X67_Y33_N28
\Mult0|auto_generated|add9_result[45]~90\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|add9_result[45]~90_combout\ = \Mult0|auto_generated|add9_result[44]~89\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mult0|auto_generated|add9_result[44]~89\,
	combout => \Mult0|auto_generated|add9_result[45]~90_combout\);

-- Location: LCCOMB_X66_Y33_N28
\Mult0|auto_generated|op_1~90\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~90_combout\ = \Mult0|auto_generated|add9_result[45]~90_combout\ $ (\Mult0|auto_generated|op_1~89\ $ (!\Mult0|auto_generated|mac_out8~DATAOUT27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|auto_generated|add9_result[45]~90_combout\,
	datad => \Mult0|auto_generated|mac_out8~DATAOUT27\,
	cin => \Mult0|auto_generated|op_1~89\,
	combout => \Mult0|auto_generated|op_1~90_combout\);

-- Location: LCCOMB_X49_Y33_N28
\Mult1|auto_generated|op_1~90\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_1~90_combout\ = \Mult1|auto_generated|op_1~89\ $ (\Mult1|auto_generated|mac_out8~DATAOUT27\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Mult1|auto_generated|mac_out8~DATAOUT27\,
	cin => \Mult1|auto_generated|op_1~89\,
	combout => \Mult1|auto_generated|op_1~90_combout\);

-- Location: LCCOMB_X65_Y33_N4
\Mux32~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux32~0_combout\ = (\Mux29~9_combout\ & ((\opsel[0]~input_o\ & ((\Mult1|auto_generated|op_1~90_combout\))) # (!\opsel[0]~input_o\ & (\Mult0|auto_generated|op_1~90_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~9_combout\,
	datab => \Mult0|auto_generated|op_1~90_combout\,
	datac => \Mult1|auto_generated|op_1~90_combout\,
	datad => \opsel[0]~input_o\,
	combout => \Mux32~0_combout\);

-- Location: LCCOMB_X54_Y38_N0
\LessThan1~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~7_combout\ = (\a[27]~input_o\) # ((\a[26]~input_o\) # ((\a[25]~input_o\) # (\a[24]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[27]~input_o\,
	datab => \a[26]~input_o\,
	datac => \a[25]~input_o\,
	datad => \a[24]~input_o\,
	combout => \LessThan1~7_combout\);

-- Location: LCCOMB_X54_Y38_N18
\LessThan1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~8_combout\ = (\a[29]~input_o\) # ((\LessThan1~7_combout\) # ((\a[28]~input_o\) # (\a[30]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[29]~input_o\,
	datab => \LessThan1~7_combout\,
	datac => \a[28]~input_o\,
	datad => \a[30]~input_o\,
	combout => \LessThan1~8_combout\);

-- Location: LCCOMB_X55_Y38_N18
\LessThan1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~6_combout\ = (\a[23]~input_o\) # ((\a[22]~input_o\) # ((\a[21]~input_o\) # (\a[20]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[23]~input_o\,
	datab => \a[22]~input_o\,
	datac => \a[21]~input_o\,
	datad => \a[20]~input_o\,
	combout => \LessThan1~6_combout\);

-- Location: LCCOMB_X60_Y37_N12
\LessThan1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~2_combout\ = (\a[9]~input_o\) # ((\a[10]~input_o\) # ((\a[8]~input_o\) # (\a[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[9]~input_o\,
	datab => \a[10]~input_o\,
	datac => \a[8]~input_o\,
	datad => \a[11]~input_o\,
	combout => \LessThan1~2_combout\);

-- Location: LCCOMB_X60_Y37_N6
\LessThan1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~3_combout\ = (\a[15]~input_o\) # ((\a[12]~input_o\) # ((\a[14]~input_o\) # (\a[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[15]~input_o\,
	datab => \a[12]~input_o\,
	datac => \a[14]~input_o\,
	datad => \a[13]~input_o\,
	combout => \LessThan1~3_combout\);

-- Location: LCCOMB_X60_Y37_N26
\LessThan1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~1_combout\ = (\a[6]~input_o\) # ((\a[7]~input_o\) # ((\a[5]~input_o\) # (\a[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[6]~input_o\,
	datab => \a[7]~input_o\,
	datac => \a[5]~input_o\,
	datad => \a[4]~input_o\,
	combout => \LessThan1~1_combout\);

-- Location: LCCOMB_X61_Y37_N4
\LessThan1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (\a[1]~input_o\) # ((\a[0]~input_o\) # ((\a[2]~input_o\) # (\a[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[1]~input_o\,
	datab => \a[0]~input_o\,
	datac => \a[2]~input_o\,
	datad => \a[3]~input_o\,
	combout => \LessThan1~0_combout\);

-- Location: LCCOMB_X60_Y37_N24
\LessThan1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~4_combout\ = (\LessThan1~2_combout\) # ((\LessThan1~3_combout\) # ((\LessThan1~1_combout\) # (\LessThan1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~2_combout\,
	datab => \LessThan1~3_combout\,
	datac => \LessThan1~1_combout\,
	datad => \LessThan1~0_combout\,
	combout => \LessThan1~4_combout\);

-- Location: LCCOMB_X56_Y39_N22
\LessThan1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~5_combout\ = (\a[18]~input_o\) # ((\a[16]~input_o\) # ((\a[19]~input_o\) # (\a[17]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[18]~input_o\,
	datab => \a[16]~input_o\,
	datac => \a[19]~input_o\,
	datad => \a[17]~input_o\,
	combout => \LessThan1~5_combout\);

-- Location: LCCOMB_X55_Y37_N24
\LessThan1~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~9_combout\ = (\LessThan1~8_combout\) # ((\LessThan1~6_combout\) # ((\LessThan1~4_combout\) # (\LessThan1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~8_combout\,
	datab => \LessThan1~6_combout\,
	datac => \LessThan1~4_combout\,
	datad => \LessThan1~5_combout\,
	combout => \LessThan1~9_combout\);

-- Location: LCCOMB_X57_Y37_N16
\Mux64~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux64~0_combout\ = (\opsel[3]~input_o\ & (\opsel[0]~input_o\ $ (((\a[31]~input_o\) # (!\LessThan1~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~9_combout\,
	datab => \a[31]~input_o\,
	datac => \opsel[3]~input_o\,
	datad => \opsel[0]~input_o\,
	combout => \Mux64~0_combout\);

-- Location: IOIBUF_X78_Y18_N1
\opsel[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opsel(4),
	o => \opsel[4]~input_o\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_result(0) <= \result[0]~output_o\;

ww_result(1) <= \result[1]~output_o\;

ww_result(2) <= \result[2]~output_o\;

ww_result(3) <= \result[3]~output_o\;

ww_result(4) <= \result[4]~output_o\;

ww_result(5) <= \result[5]~output_o\;

ww_result(6) <= \result[6]~output_o\;

ww_result(7) <= \result[7]~output_o\;

ww_result(8) <= \result[8]~output_o\;

ww_result(9) <= \result[9]~output_o\;

ww_result(10) <= \result[10]~output_o\;

ww_result(11) <= \result[11]~output_o\;

ww_result(12) <= \result[12]~output_o\;

ww_result(13) <= \result[13]~output_o\;

ww_result(14) <= \result[14]~output_o\;

ww_result(15) <= \result[15]~output_o\;

ww_result(16) <= \result[16]~output_o\;

ww_result(17) <= \result[17]~output_o\;

ww_result(18) <= \result[18]~output_o\;

ww_result(19) <= \result[19]~output_o\;

ww_result(20) <= \result[20]~output_o\;

ww_result(21) <= \result[21]~output_o\;

ww_result(22) <= \result[22]~output_o\;

ww_result(23) <= \result[23]~output_o\;

ww_result(24) <= \result[24]~output_o\;

ww_result(25) <= \result[25]~output_o\;

ww_result(26) <= \result[26]~output_o\;

ww_result(27) <= \result[27]~output_o\;

ww_result(28) <= \result[28]~output_o\;

ww_result(29) <= \result[29]~output_o\;

ww_result(30) <= \result[30]~output_o\;

ww_result(31) <= \result[31]~output_o\;

ww_result_hi(0) <= \result_hi[0]~output_o\;

ww_result_hi(1) <= \result_hi[1]~output_o\;

ww_result_hi(2) <= \result_hi[2]~output_o\;

ww_result_hi(3) <= \result_hi[3]~output_o\;

ww_result_hi(4) <= \result_hi[4]~output_o\;

ww_result_hi(5) <= \result_hi[5]~output_o\;

ww_result_hi(6) <= \result_hi[6]~output_o\;

ww_result_hi(7) <= \result_hi[7]~output_o\;

ww_result_hi(8) <= \result_hi[8]~output_o\;

ww_result_hi(9) <= \result_hi[9]~output_o\;

ww_result_hi(10) <= \result_hi[10]~output_o\;

ww_result_hi(11) <= \result_hi[11]~output_o\;

ww_result_hi(12) <= \result_hi[12]~output_o\;

ww_result_hi(13) <= \result_hi[13]~output_o\;

ww_result_hi(14) <= \result_hi[14]~output_o\;

ww_result_hi(15) <= \result_hi[15]~output_o\;

ww_result_hi(16) <= \result_hi[16]~output_o\;

ww_result_hi(17) <= \result_hi[17]~output_o\;

ww_result_hi(18) <= \result_hi[18]~output_o\;

ww_result_hi(19) <= \result_hi[19]~output_o\;

ww_result_hi(20) <= \result_hi[20]~output_o\;

ww_result_hi(21) <= \result_hi[21]~output_o\;

ww_result_hi(22) <= \result_hi[22]~output_o\;

ww_result_hi(23) <= \result_hi[23]~output_o\;

ww_result_hi(24) <= \result_hi[24]~output_o\;

ww_result_hi(25) <= \result_hi[25]~output_o\;

ww_result_hi(26) <= \result_hi[26]~output_o\;

ww_result_hi(27) <= \result_hi[27]~output_o\;

ww_result_hi(28) <= \result_hi[28]~output_o\;

ww_result_hi(29) <= \result_hi[29]~output_o\;

ww_result_hi(30) <= \result_hi[30]~output_o\;

ww_result_hi(31) <= \result_hi[31]~output_o\;

ww_branch_taken <= \branch_taken~output_o\;
END structure;


