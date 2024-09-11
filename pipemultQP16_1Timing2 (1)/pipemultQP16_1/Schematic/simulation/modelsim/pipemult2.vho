-- Copyright (C) 2016  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Intel and sold by Intel or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 16.1.0 Build 196 10/24/2016 SJ Lite Edition"

-- DATE "07/29/2024 09:59:32"

-- 
-- Device: Altera 10M08DAF484C8GES Package FBGA484
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


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	pipemult IS
    PORT (
	Cout : OUT std_logic;
	Cin : IN std_logic;
	A : IN std_logic_vector(31 DOWNTO 0);
	B : IN std_logic_vector(31 DOWNTO 0);
	q : OUT std_logic_vector(0 TO 15);
	clk1 : IN std_logic;
	wren : IN std_logic;
	dataa : IN std_logic_vector(7 DOWNTO 0);
	datab : IN std_logic_vector(7 DOWNTO 0);
	rdaddress : IN std_logic_vector(4 DOWNTO 0);
	wraddress : IN std_logic_vector(4 DOWNTO 0);
	SIM : OUT std_logic_vector(31 DOWNTO 0)
	);
END pipemult;

-- Design Ports Information
-- Cout	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[0]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[1]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[2]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[3]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[4]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[5]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[6]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[7]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[8]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[9]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[10]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[11]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[12]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[13]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[14]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[15]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SIM[31]	=>  Location: PIN_R18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SIM[30]	=>  Location: PIN_P20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SIM[29]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SIM[28]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SIM[27]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SIM[26]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SIM[25]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SIM[24]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SIM[23]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SIM[22]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SIM[21]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SIM[20]	=>  Location: PIN_T21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SIM[19]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SIM[18]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SIM[17]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SIM[16]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SIM[15]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SIM[14]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SIM[13]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SIM[12]	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SIM[11]	=>  Location: PIN_T2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SIM[10]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SIM[9]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SIM[8]	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SIM[7]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SIM[6]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SIM[5]	=>  Location: PIN_AA5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SIM[4]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SIM[3]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SIM[2]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SIM[1]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SIM[0]	=>  Location: PIN_T6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[30]	=>  Location: PIN_U18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[30]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[28]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[28]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[26]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[26]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[24]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[24]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[22]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[22]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[20]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[20]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[18]	=>  Location: PIN_P5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[18]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[16]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[16]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_W5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_W6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_AA6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cin	=>  Location: PIN_W4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_W3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_P10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_T1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_P4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[17]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[17]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[19]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[19]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[21]	=>  Location: PIN_R20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[21]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[23]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[23]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[25]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[25]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[27]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[27]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[29]	=>  Location: PIN_N22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[29]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[31]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[31]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk1	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wren	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wraddress[0]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wraddress[1]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wraddress[2]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wraddress[3]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wraddress[4]	=>  Location: PIN_L20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rdaddress[0]	=>  Location: PIN_K14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rdaddress[1]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rdaddress[2]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rdaddress[3]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rdaddress[4]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataa[0]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataa[1]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataa[2]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataa[3]	=>  Location: PIN_F5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataa[4]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataa[5]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataa[6]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataa[7]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datab[0]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datab[1]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datab[2]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datab[3]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datab[4]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datab[5]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datab[6]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datab[7]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF pipemult IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Cout : std_logic;
SIGNAL ww_Cin : std_logic;
SIGNAL ww_A : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_q : std_logic_vector(0 TO 15);
SIGNAL ww_clk1 : std_logic;
SIGNAL ww_wren : std_logic;
SIGNAL ww_dataa : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_datab : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_rdaddress : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_wraddress : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_SIM : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst1|ram_block_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \inst1|ram_block_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst1|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst1|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \inst|lpm_mult_component|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst|lpm_mult_component|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \inst|lpm_mult_component|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \inst|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \clk1~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|lpm_mult_component|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \inst|lpm_mult_component|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \Cout~output_o\ : std_logic;
SIGNAL \q[0]~output_o\ : std_logic;
SIGNAL \q[1]~output_o\ : std_logic;
SIGNAL \q[2]~output_o\ : std_logic;
SIGNAL \q[3]~output_o\ : std_logic;
SIGNAL \q[4]~output_o\ : std_logic;
SIGNAL \q[5]~output_o\ : std_logic;
SIGNAL \q[6]~output_o\ : std_logic;
SIGNAL \q[7]~output_o\ : std_logic;
SIGNAL \q[8]~output_o\ : std_logic;
SIGNAL \q[9]~output_o\ : std_logic;
SIGNAL \q[10]~output_o\ : std_logic;
SIGNAL \q[11]~output_o\ : std_logic;
SIGNAL \q[12]~output_o\ : std_logic;
SIGNAL \q[13]~output_o\ : std_logic;
SIGNAL \q[14]~output_o\ : std_logic;
SIGNAL \q[15]~output_o\ : std_logic;
SIGNAL \SIM[31]~output_o\ : std_logic;
SIGNAL \SIM[30]~output_o\ : std_logic;
SIGNAL \SIM[29]~output_o\ : std_logic;
SIGNAL \SIM[28]~output_o\ : std_logic;
SIGNAL \SIM[27]~output_o\ : std_logic;
SIGNAL \SIM[26]~output_o\ : std_logic;
SIGNAL \SIM[25]~output_o\ : std_logic;
SIGNAL \SIM[24]~output_o\ : std_logic;
SIGNAL \SIM[23]~output_o\ : std_logic;
SIGNAL \SIM[22]~output_o\ : std_logic;
SIGNAL \SIM[21]~output_o\ : std_logic;
SIGNAL \SIM[20]~output_o\ : std_logic;
SIGNAL \SIM[19]~output_o\ : std_logic;
SIGNAL \SIM[18]~output_o\ : std_logic;
SIGNAL \SIM[17]~output_o\ : std_logic;
SIGNAL \SIM[16]~output_o\ : std_logic;
SIGNAL \SIM[15]~output_o\ : std_logic;
SIGNAL \SIM[14]~output_o\ : std_logic;
SIGNAL \SIM[13]~output_o\ : std_logic;
SIGNAL \SIM[12]~output_o\ : std_logic;
SIGNAL \SIM[11]~output_o\ : std_logic;
SIGNAL \SIM[10]~output_o\ : std_logic;
SIGNAL \SIM[9]~output_o\ : std_logic;
SIGNAL \SIM[8]~output_o\ : std_logic;
SIGNAL \SIM[7]~output_o\ : std_logic;
SIGNAL \SIM[6]~output_o\ : std_logic;
SIGNAL \SIM[5]~output_o\ : std_logic;
SIGNAL \SIM[4]~output_o\ : std_logic;
SIGNAL \SIM[3]~output_o\ : std_logic;
SIGNAL \SIM[2]~output_o\ : std_logic;
SIGNAL \SIM[1]~output_o\ : std_logic;
SIGNAL \SIM[0]~output_o\ : std_logic;
SIGNAL \B[30]~input_o\ : std_logic;
SIGNAL \A[30]~input_o\ : std_logic;
SIGNAL \inst4|inst4|inst6|inst4~0_combout\ : std_logic;
SIGNAL \A[28]~input_o\ : std_logic;
SIGNAL \B[28]~input_o\ : std_logic;
SIGNAL \inst4|inst4|inst4|inst4~0_combout\ : std_logic;
SIGNAL \B[29]~input_o\ : std_logic;
SIGNAL \A[26]~input_o\ : std_logic;
SIGNAL \B[22]~input_o\ : std_logic;
SIGNAL \A[22]~input_o\ : std_logic;
SIGNAL \inst4|inst3|inst6|inst4~0_combout\ : std_logic;
SIGNAL \A[23]~input_o\ : std_logic;
SIGNAL \A[19]~input_o\ : std_logic;
SIGNAL \A[18]~input_o\ : std_logic;
SIGNAL \B[18]~input_o\ : std_logic;
SIGNAL \A[16]~input_o\ : std_logic;
SIGNAL \B[16]~input_o\ : std_logic;
SIGNAL \inst4|inst3|inst|inst4~0_combout\ : std_logic;
SIGNAL \B[17]~input_o\ : std_logic;
SIGNAL \B[12]~input_o\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \inst4|inst2|inst4|inst4~0_combout\ : std_logic;
SIGNAL \B[11]~input_o\ : std_logic;
SIGNAL \B[10]~input_o\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \inst4|inst2|inst2|inst4~0_combout\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \inst4|inst|inst6|inst4~0_combout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \inst4|inst|inst4|inst4~0_combout\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \inst4|inst|inst2|inst4~0_combout\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \inst4|inst|inst|inst4~0_combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \Cin~input_o\ : std_logic;
SIGNAL \inst4|inst|inst|inst4~1_combout\ : std_logic;
SIGNAL \inst4|inst|inst1|inst4~0_combout\ : std_logic;
SIGNAL \inst4|inst|inst2|inst4~1_combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \inst4|inst|inst3|inst4~0_combout\ : std_logic;
SIGNAL \inst4|inst|inst4|inst4~1_combout\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \inst4|inst|inst5|inst4~0_combout\ : std_logic;
SIGNAL \inst4|inst|inst6|inst4~1_combout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \inst4|inst|inst7|inst4~0_combout\ : std_logic;
SIGNAL \inst4|inst2|inst|inst4~1_combout\ : std_logic;
SIGNAL \inst4|inst2|inst|inst4~0_combout\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \inst4|inst2|inst1|inst4~0_combout\ : std_logic;
SIGNAL \inst4|inst2|inst2|inst4~1_combout\ : std_logic;
SIGNAL \inst4|inst2|inst3|inst4~0_combout\ : std_logic;
SIGNAL \inst4|inst2|inst4|inst4~1_combout\ : std_logic;
SIGNAL \B[13]~input_o\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \inst4|inst2|inst5|inst4~0_combout\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \B[14]~input_o\ : std_logic;
SIGNAL \inst4|inst2|inst6|inst4~1_combout\ : std_logic;
SIGNAL \inst4|inst2|inst6|inst4~0_combout\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \B[15]~input_o\ : std_logic;
SIGNAL \inst4|inst2|inst7|inst4~0_combout\ : std_logic;
SIGNAL \inst4|inst3|inst|inst4~1_combout\ : std_logic;
SIGNAL \A[17]~input_o\ : std_logic;
SIGNAL \inst4|inst3|inst1|inst4~0_combout\ : std_logic;
SIGNAL \inst4|inst3|inst2|inst4~1_combout\ : std_logic;
SIGNAL \inst4|inst3|inst2|inst4~0_combout\ : std_logic;
SIGNAL \B[19]~input_o\ : std_logic;
SIGNAL \inst4|inst3|inst3|inst4~0_combout\ : std_logic;
SIGNAL \A[20]~input_o\ : std_logic;
SIGNAL \B[20]~input_o\ : std_logic;
SIGNAL \inst4|inst3|inst4|inst4~1_combout\ : std_logic;
SIGNAL \inst4|inst3|inst4|inst4~0_combout\ : std_logic;
SIGNAL \B[21]~input_o\ : std_logic;
SIGNAL \A[21]~input_o\ : std_logic;
SIGNAL \inst4|inst3|inst5|inst4~0_combout\ : std_logic;
SIGNAL \inst4|inst3|inst6|inst4~1_combout\ : std_logic;
SIGNAL \B[23]~input_o\ : std_logic;
SIGNAL \inst4|inst3|inst7|inst4~0_combout\ : std_logic;
SIGNAL \B[24]~input_o\ : std_logic;
SIGNAL \A[24]~input_o\ : std_logic;
SIGNAL \inst4|inst4|inst|inst4~1_combout\ : std_logic;
SIGNAL \inst4|inst4|inst|inst4~0_combout\ : std_logic;
SIGNAL \A[25]~input_o\ : std_logic;
SIGNAL \B[25]~input_o\ : std_logic;
SIGNAL \inst4|inst4|inst1|inst4~0_combout\ : std_logic;
SIGNAL \B[26]~input_o\ : std_logic;
SIGNAL \inst4|inst4|inst2|inst4~1_combout\ : std_logic;
SIGNAL \inst4|inst4|inst2|inst4~0_combout\ : std_logic;
SIGNAL \A[27]~input_o\ : std_logic;
SIGNAL \B[27]~input_o\ : std_logic;
SIGNAL \inst4|inst4|inst3|inst4~0_combout\ : std_logic;
SIGNAL \inst4|inst4|inst4|inst4~1_combout\ : std_logic;
SIGNAL \A[29]~input_o\ : std_logic;
SIGNAL \inst4|inst4|inst5|inst4~0_combout\ : std_logic;
SIGNAL \inst4|inst4|inst6|inst4~1_combout\ : std_logic;
SIGNAL \A[31]~input_o\ : std_logic;
SIGNAL \B[31]~input_o\ : std_logic;
SIGNAL \inst4|inst4|inst7|inst4~0_combout\ : std_logic;
SIGNAL \clk1~input_o\ : std_logic;
SIGNAL \clk1~inputclkctrl_outclk\ : std_logic;
SIGNAL \wren~input_o\ : std_logic;
SIGNAL \dataa[0]~input_o\ : std_logic;
SIGNAL \dataa[1]~input_o\ : std_logic;
SIGNAL \dataa[2]~input_o\ : std_logic;
SIGNAL \dataa[3]~input_o\ : std_logic;
SIGNAL \dataa[4]~input_o\ : std_logic;
SIGNAL \dataa[5]~input_o\ : std_logic;
SIGNAL \dataa[6]~input_o\ : std_logic;
SIGNAL \dataa[7]~input_o\ : std_logic;
SIGNAL \datab[0]~input_o\ : std_logic;
SIGNAL \datab[1]~input_o\ : std_logic;
SIGNAL \datab[2]~input_o\ : std_logic;
SIGNAL \datab[3]~input_o\ : std_logic;
SIGNAL \datab[4]~input_o\ : std_logic;
SIGNAL \datab[5]~input_o\ : std_logic;
SIGNAL \datab[6]~input_o\ : std_logic;
SIGNAL \datab[7]~input_o\ : std_logic;
SIGNAL \inst|lpm_mult_component|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \inst|lpm_mult_component|auto_generated|mac_mult1~2\ : std_logic;
SIGNAL \inst|lpm_mult_component|auto_generated|mac_mult1~3\ : std_logic;
SIGNAL \wraddress[0]~input_o\ : std_logic;
SIGNAL \wraddress[1]~input_o\ : std_logic;
SIGNAL \wraddress[2]~input_o\ : std_logic;
SIGNAL \wraddress[3]~input_o\ : std_logic;
SIGNAL \wraddress[4]~input_o\ : std_logic;
SIGNAL \rdaddress[0]~input_o\ : std_logic;
SIGNAL \inst1|rdaddress_reg[0]~feeder_combout\ : std_logic;
SIGNAL \rdaddress[1]~input_o\ : std_logic;
SIGNAL \inst1|rdaddress_reg[1]~feeder_combout\ : std_logic;
SIGNAL \rdaddress[2]~input_o\ : std_logic;
SIGNAL \inst1|rdaddress_reg[2]~feeder_combout\ : std_logic;
SIGNAL \rdaddress[3]~input_o\ : std_logic;
SIGNAL \inst1|rdaddress_reg[3]~feeder_combout\ : std_logic;
SIGNAL \rdaddress[4]~input_o\ : std_logic;
SIGNAL \inst1|rdaddress_reg[4]~feeder_combout\ : std_logic;
SIGNAL \inst1|ram_block_rtl_0|auto_generated|ram_block1a15\ : std_logic;
SIGNAL \inst1|ram_block_rtl_0|auto_generated|ram_block1a14\ : std_logic;
SIGNAL \inst1|ram_block_rtl_0|auto_generated|ram_block1a13\ : std_logic;
SIGNAL \inst1|ram_block_rtl_0|auto_generated|ram_block1a12\ : std_logic;
SIGNAL \inst1|ram_block_rtl_0|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \inst1|ram_block_rtl_0|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \inst1|ram_block_rtl_0|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \inst1|ram_block_rtl_0|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \inst1|ram_block_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \inst1|ram_block_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \inst1|ram_block_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \inst1|ram_block_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \inst1|ram_block_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \inst1|ram_block_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \inst1|ram_block_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \inst1|ram_block_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \inst4|inst4|inst|inst1~0_combout\ : std_logic;
SIGNAL \inst4|inst4|inst1|inst1~combout\ : std_logic;
SIGNAL \inst4|inst4|inst2|inst1~0_combout\ : std_logic;
SIGNAL \inst4|inst4|inst3|inst1~combout\ : std_logic;
SIGNAL \inst4|inst4|inst4|inst1~0_combout\ : std_logic;
SIGNAL \inst4|inst4|inst5|inst1~combout\ : std_logic;
SIGNAL \inst4|inst4|inst6|inst1~0_combout\ : std_logic;
SIGNAL \inst4|inst4|inst7|inst1~combout\ : std_logic;
SIGNAL \inst4|inst3|inst|inst1~0_combout\ : std_logic;
SIGNAL \inst4|inst3|inst1|inst1~combout\ : std_logic;
SIGNAL \inst4|inst3|inst2|inst1~0_combout\ : std_logic;
SIGNAL \inst4|inst3|inst3|inst1~combout\ : std_logic;
SIGNAL \inst4|inst3|inst4|inst1~0_combout\ : std_logic;
SIGNAL \inst4|inst3|inst5|inst1~combout\ : std_logic;
SIGNAL \inst4|inst3|inst6|inst1~0_combout\ : std_logic;
SIGNAL \inst4|inst3|inst7|inst1~combout\ : std_logic;
SIGNAL \inst4|inst2|inst|inst1~0_combout\ : std_logic;
SIGNAL \inst4|inst2|inst1|inst1~combout\ : std_logic;
SIGNAL \inst4|inst2|inst2|inst1~0_combout\ : std_logic;
SIGNAL \inst4|inst2|inst3|inst1~combout\ : std_logic;
SIGNAL \inst4|inst2|inst4|inst1~0_combout\ : std_logic;
SIGNAL \inst4|inst2|inst5|inst1~combout\ : std_logic;
SIGNAL \inst4|inst2|inst6|inst1~0_combout\ : std_logic;
SIGNAL \inst4|inst2|inst7|inst1~combout\ : std_logic;
SIGNAL \inst4|inst|inst|inst1~0_combout\ : std_logic;
SIGNAL \inst4|inst|inst1|inst1~combout\ : std_logic;
SIGNAL \inst4|inst|inst2|inst1~0_combout\ : std_logic;
SIGNAL \inst4|inst|inst3|inst1~combout\ : std_logic;
SIGNAL \inst4|inst|inst4|inst1~0_combout\ : std_logic;
SIGNAL \inst4|inst|inst5|inst1~combout\ : std_logic;
SIGNAL \inst4|inst|inst6|inst1~0_combout\ : std_logic;
SIGNAL \inst4|inst|inst7|inst1~combout\ : std_logic;
SIGNAL \inst|lpm_mult_component|auto_generated|result\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst1|rdaddress_reg\ : std_logic_vector(4 DOWNTO 0);
SIGNAL inst2 : std_logic_vector(15 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

Cout <= ww_Cout;
ww_Cin <= Cin;
ww_A <= A;
ww_B <= B;
q <= ww_q;
ww_clk1 <= clk1;
ww_wren <= wren;
ww_dataa <= dataa;
ww_datab <= datab;
ww_rdaddress <= rdaddress;
ww_wraddress <= wraddress;
SIM <= ww_SIM;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst1|ram_block_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \inst|lpm_mult_component|auto_generated|result\(15) & 
\inst|lpm_mult_component|auto_generated|result\(14) & \inst|lpm_mult_component|auto_generated|result\(13) & \inst|lpm_mult_component|auto_generated|result\(12) & \inst|lpm_mult_component|auto_generated|result\(11) & 
\inst|lpm_mult_component|auto_generated|result\(10) & \inst|lpm_mult_component|auto_generated|result\(9) & \inst|lpm_mult_component|auto_generated|result\(8) & \inst|lpm_mult_component|auto_generated|result\(7) & 
\inst|lpm_mult_component|auto_generated|result\(6) & \inst|lpm_mult_component|auto_generated|result\(5) & \inst|lpm_mult_component|auto_generated|result\(4) & \inst|lpm_mult_component|auto_generated|result\(3) & 
\inst|lpm_mult_component|auto_generated|result\(2) & \inst|lpm_mult_component|auto_generated|result\(1) & \inst|lpm_mult_component|auto_generated|result\(0));

\inst1|ram_block_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\wraddress[4]~input_o\ & \wraddress[3]~input_o\ & \wraddress[2]~input_o\ & \wraddress[1]~input_o\ & \wraddress[0]~input_o\);

\inst1|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\inst1|rdaddress_reg\(4) & \inst1|rdaddress_reg\(3) & \inst1|rdaddress_reg\(2) & \inst1|rdaddress_reg\(1) & \inst1|rdaddress_reg\(0));

\inst1|ram_block_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \inst1|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\inst1|ram_block_rtl_0|auto_generated|ram_block1a1\ <= \inst1|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\inst1|ram_block_rtl_0|auto_generated|ram_block1a2\ <= \inst1|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\inst1|ram_block_rtl_0|auto_generated|ram_block1a3\ <= \inst1|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\inst1|ram_block_rtl_0|auto_generated|ram_block1a4\ <= \inst1|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\inst1|ram_block_rtl_0|auto_generated|ram_block1a5\ <= \inst1|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\inst1|ram_block_rtl_0|auto_generated|ram_block1a6\ <= \inst1|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\inst1|ram_block_rtl_0|auto_generated|ram_block1a7\ <= \inst1|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);
\inst1|ram_block_rtl_0|auto_generated|ram_block1a8\ <= \inst1|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(8);
\inst1|ram_block_rtl_0|auto_generated|ram_block1a9\ <= \inst1|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(9);
\inst1|ram_block_rtl_0|auto_generated|ram_block1a10\ <= \inst1|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(10);
\inst1|ram_block_rtl_0|auto_generated|ram_block1a11\ <= \inst1|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(11);
\inst1|ram_block_rtl_0|auto_generated|ram_block1a12\ <= \inst1|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(12);
\inst1|ram_block_rtl_0|auto_generated|ram_block1a13\ <= \inst1|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(13);
\inst1|ram_block_rtl_0|auto_generated|ram_block1a14\ <= \inst1|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(14);
\inst1|ram_block_rtl_0|auto_generated|ram_block1a15\ <= \inst1|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(15);

\inst|lpm_mult_component|auto_generated|mac_out2_DATAA_bus\ <= (\inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT15\ & \inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT14\ & \inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT13\ & 
\inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT12\ & \inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT11\ & \inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT10\ & \inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT9\ & 
\inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT8\ & \inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT7\ & \inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT6\ & \inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT5\ & 
\inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT4\ & \inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT3\ & \inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT2\ & \inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT1\ & 
\inst|lpm_mult_component|auto_generated|mac_mult1~dataout\ & \inst|lpm_mult_component|auto_generated|mac_mult1~3\ & \inst|lpm_mult_component|auto_generated|mac_mult1~2\);

\inst|lpm_mult_component|auto_generated|mac_out2~0\ <= \inst|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(0);
\inst|lpm_mult_component|auto_generated|mac_out2~1\ <= \inst|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(1);
\inst|lpm_mult_component|auto_generated|result\(0) <= \inst|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(2);
\inst|lpm_mult_component|auto_generated|result\(1) <= \inst|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(3);
\inst|lpm_mult_component|auto_generated|result\(2) <= \inst|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(4);
\inst|lpm_mult_component|auto_generated|result\(3) <= \inst|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(5);
\inst|lpm_mult_component|auto_generated|result\(4) <= \inst|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(6);
\inst|lpm_mult_component|auto_generated|result\(5) <= \inst|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(7);
\inst|lpm_mult_component|auto_generated|result\(6) <= \inst|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(8);
\inst|lpm_mult_component|auto_generated|result\(7) <= \inst|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(9);
\inst|lpm_mult_component|auto_generated|result\(8) <= \inst|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(10);
\inst|lpm_mult_component|auto_generated|result\(9) <= \inst|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(11);
\inst|lpm_mult_component|auto_generated|result\(10) <= \inst|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(12);
\inst|lpm_mult_component|auto_generated|result\(11) <= \inst|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(13);
\inst|lpm_mult_component|auto_generated|result\(12) <= \inst|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(14);
\inst|lpm_mult_component|auto_generated|result\(13) <= \inst|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(15);
\inst|lpm_mult_component|auto_generated|result\(14) <= \inst|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(16);
\inst|lpm_mult_component|auto_generated|result\(15) <= \inst|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(17);

\inst|lpm_mult_component|auto_generated|mac_mult1_DATAA_bus\ <= (\dataa[7]~input_o\ & \dataa[6]~input_o\ & \dataa[5]~input_o\ & \dataa[4]~input_o\ & \dataa[3]~input_o\ & \dataa[2]~input_o\ & \dataa[1]~input_o\ & \dataa[0]~input_o\ & gnd);

\inst|lpm_mult_component|auto_generated|mac_mult1_DATAB_bus\ <= (\datab[7]~input_o\ & \datab[6]~input_o\ & \datab[5]~input_o\ & \datab[4]~input_o\ & \datab[3]~input_o\ & \datab[2]~input_o\ & \datab[1]~input_o\ & \datab[0]~input_o\ & gnd);

\inst|lpm_mult_component|auto_generated|mac_mult1~2\ <= \inst|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(0);
\inst|lpm_mult_component|auto_generated|mac_mult1~3\ <= \inst|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(1);
\inst|lpm_mult_component|auto_generated|mac_mult1~dataout\ <= \inst|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(2);
\inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT1\ <= \inst|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(3);
\inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT2\ <= \inst|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(4);
\inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT3\ <= \inst|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(5);
\inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT4\ <= \inst|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(6);
\inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT5\ <= \inst|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(7);
\inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT6\ <= \inst|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(8);
\inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT7\ <= \inst|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(9);
\inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT8\ <= \inst|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(10);
\inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT9\ <= \inst|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(11);
\inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT10\ <= \inst|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(12);
\inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT11\ <= \inst|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(13);
\inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT12\ <= \inst|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(14);
\inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT13\ <= \inst|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(15);
\inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT14\ <= \inst|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(16);
\inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT15\ <= \inst|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(17);

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\clk1~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk1~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X11_Y21_N20
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

-- Location: IOOBUF_X29_Y0_N16
\Cout~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst4|inst7|inst4~0_combout\,
	devoe => ww_devoe,
	o => \Cout~output_o\);

-- Location: IOOBUF_X29_Y25_N16
\q[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => inst2(15),
	devoe => ww_devoe,
	o => \q[0]~output_o\);

-- Location: IOOBUF_X24_Y25_N9
\q[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => inst2(14),
	devoe => ww_devoe,
	o => \q[1]~output_o\);

-- Location: IOOBUF_X24_Y25_N23
\q[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => inst2(13),
	devoe => ww_devoe,
	o => \q[2]~output_o\);

-- Location: IOOBUF_X29_Y25_N9
\q[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => inst2(12),
	devoe => ww_devoe,
	o => \q[3]~output_o\);

-- Location: IOOBUF_X22_Y25_N2
\q[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => inst2(11),
	devoe => ww_devoe,
	o => \q[4]~output_o\);

-- Location: IOOBUF_X29_Y25_N23
\q[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => inst2(10),
	devoe => ww_devoe,
	o => \q[5]~output_o\);

-- Location: IOOBUF_X27_Y25_N30
\q[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => inst2(9),
	devoe => ww_devoe,
	o => \q[6]~output_o\);

-- Location: IOOBUF_X31_Y22_N9
\q[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => inst2(8),
	devoe => ww_devoe,
	o => \q[7]~output_o\);

-- Location: IOOBUF_X31_Y22_N2
\q[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => inst2(7),
	devoe => ww_devoe,
	o => \q[8]~output_o\);

-- Location: IOOBUF_X31_Y22_N23
\q[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => inst2(6),
	devoe => ww_devoe,
	o => \q[9]~output_o\);

-- Location: IOOBUF_X27_Y25_N23
\q[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => inst2(5),
	devoe => ww_devoe,
	o => \q[10]~output_o\);

-- Location: IOOBUF_X29_Y25_N30
\q[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => inst2(4),
	devoe => ww_devoe,
	o => \q[11]~output_o\);

-- Location: IOOBUF_X24_Y25_N2
\q[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => inst2(3),
	devoe => ww_devoe,
	o => \q[12]~output_o\);

-- Location: IOOBUF_X31_Y22_N16
\q[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => inst2(2),
	devoe => ww_devoe,
	o => \q[13]~output_o\);

-- Location: IOOBUF_X29_Y25_N2
\q[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => inst2(1),
	devoe => ww_devoe,
	o => \q[14]~output_o\);

-- Location: IOOBUF_X24_Y25_N16
\q[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => inst2(0),
	devoe => ww_devoe,
	o => \q[15]~output_o\);

-- Location: IOOBUF_X31_Y6_N23
\SIM[31]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst4|inst|inst1~0_combout\,
	devoe => ww_devoe,
	o => \SIM[31]~output_o\);

-- Location: IOOBUF_X31_Y6_N2
\SIM[30]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst4|inst1|inst1~combout\,
	devoe => ww_devoe,
	o => \SIM[30]~output_o\);

-- Location: IOOBUF_X31_Y7_N23
\SIM[29]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst4|inst2|inst1~0_combout\,
	devoe => ww_devoe,
	o => \SIM[29]~output_o\);

-- Location: IOOBUF_X31_Y7_N16
\SIM[28]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst4|inst3|inst1~combout\,
	devoe => ww_devoe,
	o => \SIM[28]~output_o\);

-- Location: IOOBUF_X31_Y7_N9
\SIM[27]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst4|inst4|inst1~0_combout\,
	devoe => ww_devoe,
	o => \SIM[27]~output_o\);

-- Location: IOOBUF_X31_Y6_N16
\SIM[26]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst4|inst5|inst1~combout\,
	devoe => ww_devoe,
	o => \SIM[26]~output_o\);

-- Location: IOOBUF_X29_Y0_N9
\SIM[25]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst4|inst6|inst1~0_combout\,
	devoe => ww_devoe,
	o => \SIM[25]~output_o\);

-- Location: IOOBUF_X31_Y1_N2
\SIM[24]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst4|inst7|inst1~combout\,
	devoe => ww_devoe,
	o => \SIM[24]~output_o\);

-- Location: IOOBUF_X0_Y8_N9
\SIM[23]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst3|inst|inst1~0_combout\,
	devoe => ww_devoe,
	o => \SIM[23]~output_o\);

-- Location: IOOBUF_X0_Y8_N23
\SIM[22]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst3|inst1|inst1~combout\,
	devoe => ww_devoe,
	o => \SIM[22]~output_o\);

-- Location: IOOBUF_X0_Y6_N23
\SIM[21]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst3|inst2|inst1~0_combout\,
	devoe => ww_devoe,
	o => \SIM[21]~output_o\);

-- Location: IOOBUF_X31_Y2_N9
\SIM[20]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst3|inst3|inst1~combout\,
	devoe => ww_devoe,
	o => \SIM[20]~output_o\);

-- Location: IOOBUF_X24_Y0_N2
\SIM[19]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst3|inst4|inst1~0_combout\,
	devoe => ww_devoe,
	o => \SIM[19]~output_o\);

-- Location: IOOBUF_X31_Y2_N23
\SIM[18]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst3|inst5|inst1~combout\,
	devoe => ww_devoe,
	o => \SIM[18]~output_o\);

-- Location: IOOBUF_X29_Y0_N2
\SIM[17]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst3|inst6|inst1~0_combout\,
	devoe => ww_devoe,
	o => \SIM[17]~output_o\);

-- Location: IOOBUF_X24_Y0_N23
\SIM[16]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst3|inst7|inst1~combout\,
	devoe => ww_devoe,
	o => \SIM[16]~output_o\);

-- Location: IOOBUF_X0_Y4_N23
\SIM[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst2|inst|inst1~0_combout\,
	devoe => ww_devoe,
	o => \SIM[15]~output_o\);

-- Location: IOOBUF_X0_Y5_N9
\SIM[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst2|inst1|inst1~combout\,
	devoe => ww_devoe,
	o => \SIM[14]~output_o\);

-- Location: IOOBUF_X0_Y5_N23
\SIM[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst2|inst2|inst1~0_combout\,
	devoe => ww_devoe,
	o => \SIM[13]~output_o\);

-- Location: IOOBUF_X3_Y0_N23
\SIM[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst2|inst3|inst1~combout\,
	devoe => ww_devoe,
	o => \SIM[12]~output_o\);

-- Location: IOOBUF_X0_Y4_N9
\SIM[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst2|inst4|inst1~0_combout\,
	devoe => ww_devoe,
	o => \SIM[11]~output_o\);

-- Location: IOOBUF_X0_Y6_N9
\SIM[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst2|inst5|inst1~combout\,
	devoe => ww_devoe,
	o => \SIM[10]~output_o\);

-- Location: IOOBUF_X0_Y8_N16
\SIM[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst2|inst6|inst1~0_combout\,
	devoe => ww_devoe,
	o => \SIM[9]~output_o\);

-- Location: IOOBUF_X3_Y10_N30
\SIM[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst2|inst7|inst1~combout\,
	devoe => ww_devoe,
	o => \SIM[8]~output_o\);

-- Location: IOOBUF_X9_Y0_N9
\SIM[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst|inst|inst1~0_combout\,
	devoe => ww_devoe,
	o => \SIM[7]~output_o\);

-- Location: IOOBUF_X6_Y0_N23
\SIM[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst|inst1|inst1~combout\,
	devoe => ww_devoe,
	o => \SIM[6]~output_o\);

-- Location: IOOBUF_X13_Y0_N30
\SIM[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst|inst2|inst1~0_combout\,
	devoe => ww_devoe,
	o => \SIM[5]~output_o\);

-- Location: IOOBUF_X6_Y0_N9
\SIM[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst|inst3|inst1~combout\,
	devoe => ww_devoe,
	o => \SIM[4]~output_o\);

-- Location: IOOBUF_X9_Y0_N2
\SIM[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst|inst4|inst1~0_combout\,
	devoe => ww_devoe,
	o => \SIM[3]~output_o\);

-- Location: IOOBUF_X9_Y0_N16
\SIM[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst|inst5|inst1~combout\,
	devoe => ww_devoe,
	o => \SIM[2]~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\SIM[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst|inst6|inst1~0_combout\,
	devoe => ww_devoe,
	o => \SIM[1]~output_o\);

-- Location: IOOBUF_X0_Y2_N23
\SIM[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst|inst7|inst1~combout\,
	devoe => ww_devoe,
	o => \SIM[0]~output_o\);

-- Location: IOIBUF_X31_Y1_N8
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

-- Location: IOIBUF_X31_Y1_N22
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

-- Location: LCCOMB_X30_Y1_N12
\inst4|inst4|inst6|inst4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst4|inst6|inst4~0_combout\ = (\B[30]~input_o\ & \A[30]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[30]~input_o\,
	datad => \A[30]~input_o\,
	combout => \inst4|inst4|inst6|inst4~0_combout\);

-- Location: IOIBUF_X27_Y0_N15
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

-- Location: IOIBUF_X31_Y5_N22
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

-- Location: LCCOMB_X30_Y4_N26
\inst4|inst4|inst4|inst4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst4|inst4|inst4~0_combout\ = (\A[28]~input_o\ & \B[28]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[28]~input_o\,
	datad => \B[28]~input_o\,
	combout => \inst4|inst4|inst4|inst4~0_combout\);

-- Location: IOIBUF_X31_Y4_N22
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

-- Location: IOIBUF_X31_Y5_N8
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

-- Location: IOIBUF_X29_Y0_N29
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

-- Location: IOIBUF_X27_Y0_N8
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

-- Location: LCCOMB_X30_Y3_N22
\inst4|inst3|inst6|inst4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst3|inst6|inst4~0_combout\ = (\B[22]~input_o\ & \A[22]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[22]~input_o\,
	datac => \A[22]~input_o\,
	combout => \inst4|inst3|inst6|inst4~0_combout\);

-- Location: IOIBUF_X31_Y3_N15
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

-- Location: IOIBUF_X31_Y2_N1
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

-- Location: IOIBUF_X0_Y7_N8
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

-- Location: IOIBUF_X0_Y6_N1
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

-- Location: IOIBUF_X0_Y8_N1
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

-- Location: IOIBUF_X1_Y10_N1
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

-- Location: LCCOMB_X1_Y7_N6
\inst4|inst3|inst|inst4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst3|inst|inst4~0_combout\ = (\A[16]~input_o\ & \B[16]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[16]~input_o\,
	datad => \B[16]~input_o\,
	combout => \inst4|inst3|inst|inst4~0_combout\);

-- Location: IOIBUF_X1_Y10_N8
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

-- Location: IOIBUF_X0_Y5_N1
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

-- Location: IOIBUF_X0_Y5_N15
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

-- Location: LCCOMB_X1_Y7_N12
\inst4|inst2|inst4|inst4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst2|inst4|inst4~0_combout\ = (\B[12]~input_o\ & \A[12]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[12]~input_o\,
	datad => \A[12]~input_o\,
	combout => \inst4|inst2|inst4|inst4~0_combout\);

-- Location: IOIBUF_X0_Y4_N15
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

-- Location: IOIBUF_X0_Y3_N1
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

-- Location: IOIBUF_X0_Y2_N1
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

-- Location: LCCOMB_X1_Y3_N28
\inst4|inst2|inst2|inst4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst2|inst2|inst4~0_combout\ = (\B[10]~input_o\ & \A[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[10]~input_o\,
	datac => \A[10]~input_o\,
	combout => \inst4|inst2|inst2|inst4~0_combout\);

-- Location: IOIBUF_X0_Y4_N1
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

-- Location: IOIBUF_X0_Y3_N15
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

-- Location: IOIBUF_X0_Y2_N15
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

-- Location: IOIBUF_X0_Y3_N22
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

-- Location: IOIBUF_X3_Y0_N8
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

-- Location: IOIBUF_X3_Y0_N15
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

-- Location: LCCOMB_X1_Y3_N24
\inst4|inst|inst6|inst4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst|inst6|inst4~0_combout\ = (\B[6]~input_o\ & \A[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[6]~input_o\,
	datad => \A[6]~input_o\,
	combout => \inst4|inst|inst6|inst4~0_combout\);

-- Location: IOIBUF_X11_Y0_N29
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

-- Location: IOIBUF_X13_Y0_N22
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

-- Location: LCCOMB_X10_Y1_N26
\inst4|inst|inst4|inst4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst|inst4|inst4~0_combout\ = (\A[4]~input_o\ & \B[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datad => \B[4]~input_o\,
	combout => \inst4|inst|inst4|inst4~0_combout\);

-- Location: IOIBUF_X11_Y0_N1
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

-- Location: IOIBUF_X11_Y0_N22
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

-- Location: IOIBUF_X13_Y0_N15
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

-- Location: LCCOMB_X10_Y1_N10
\inst4|inst|inst2|inst4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst|inst2|inst4~0_combout\ = (\A[2]~input_o\ & \B[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[2]~input_o\,
	datad => \B[2]~input_o\,
	combout => \inst4|inst|inst2|inst4~0_combout\);

-- Location: IOIBUF_X13_Y0_N1
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

-- Location: IOIBUF_X13_Y0_N8
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

-- Location: LCCOMB_X10_Y1_N6
\inst4|inst|inst|inst4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst|inst|inst4~0_combout\ = (\A[0]~input_o\ & \B[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[0]~input_o\,
	datad => \B[0]~input_o\,
	combout => \inst4|inst|inst|inst4~0_combout\);

-- Location: IOIBUF_X9_Y0_N22
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

-- Location: IOIBUF_X6_Y0_N1
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

-- Location: IOIBUF_X9_Y0_N29
\Cin~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cin,
	o => \Cin~input_o\);

-- Location: LCCOMB_X10_Y1_N12
\inst4|inst|inst|inst4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst|inst|inst4~1_combout\ = (\Cin~input_o\ & ((\A[0]~input_o\) # (\B[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datac => \Cin~input_o\,
	datad => \B[0]~input_o\,
	combout => \inst4|inst|inst|inst4~1_combout\);

-- Location: LCCOMB_X10_Y1_N4
\inst4|inst|inst1|inst4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst|inst1|inst4~0_combout\ = (\A[1]~input_o\ & ((\inst4|inst|inst|inst4~0_combout\) # ((\B[1]~input_o\) # (\inst4|inst|inst|inst4~1_combout\)))) # (!\A[1]~input_o\ & (\B[1]~input_o\ & ((\inst4|inst|inst|inst4~0_combout\) # 
-- (\inst4|inst|inst|inst4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst|inst|inst4~0_combout\,
	datab => \A[1]~input_o\,
	datac => \B[1]~input_o\,
	datad => \inst4|inst|inst|inst4~1_combout\,
	combout => \inst4|inst|inst1|inst4~0_combout\);

-- Location: LCCOMB_X10_Y1_N16
\inst4|inst|inst2|inst4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst|inst2|inst4~1_combout\ = (\inst4|inst|inst1|inst4~0_combout\ & ((\A[2]~input_o\) # (\B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[2]~input_o\,
	datac => \inst4|inst|inst1|inst4~0_combout\,
	datad => \B[2]~input_o\,
	combout => \inst4|inst|inst2|inst4~1_combout\);

-- Location: IOIBUF_X11_Y0_N8
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

-- Location: IOIBUF_X6_Y0_N29
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

-- Location: LCCOMB_X10_Y1_N22
\inst4|inst|inst3|inst4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst|inst3|inst4~0_combout\ = (\B[3]~input_o\ & ((\inst4|inst|inst2|inst4~0_combout\) # ((\inst4|inst|inst2|inst4~1_combout\) # (\A[3]~input_o\)))) # (!\B[3]~input_o\ & (\A[3]~input_o\ & ((\inst4|inst|inst2|inst4~0_combout\) # 
-- (\inst4|inst|inst2|inst4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst|inst2|inst4~0_combout\,
	datab => \inst4|inst|inst2|inst4~1_combout\,
	datac => \B[3]~input_o\,
	datad => \A[3]~input_o\,
	combout => \inst4|inst|inst3|inst4~0_combout\);

-- Location: LCCOMB_X10_Y1_N14
\inst4|inst|inst4|inst4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst|inst4|inst4~1_combout\ = (\inst4|inst|inst3|inst4~0_combout\ & ((\A[4]~input_o\) # (\B[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datac => \inst4|inst|inst3|inst4~0_combout\,
	datad => \B[4]~input_o\,
	combout => \inst4|inst|inst4|inst4~1_combout\);

-- Location: IOIBUF_X11_Y0_N15
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

-- Location: LCCOMB_X10_Y1_N18
\inst4|inst|inst5|inst4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst|inst5|inst4~0_combout\ = (\A[5]~input_o\ & ((\inst4|inst|inst4|inst4~0_combout\) # ((\inst4|inst|inst4|inst4~1_combout\) # (\B[5]~input_o\)))) # (!\A[5]~input_o\ & (\B[5]~input_o\ & ((\inst4|inst|inst4|inst4~0_combout\) # 
-- (\inst4|inst|inst4|inst4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst|inst4|inst4~0_combout\,
	datab => \A[5]~input_o\,
	datac => \inst4|inst|inst4|inst4~1_combout\,
	datad => \B[5]~input_o\,
	combout => \inst4|inst|inst5|inst4~0_combout\);

-- Location: LCCOMB_X1_Y3_N14
\inst4|inst|inst6|inst4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst|inst6|inst4~1_combout\ = (\inst4|inst|inst5|inst4~0_combout\ & ((\B[6]~input_o\) # (\A[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datab => \A[6]~input_o\,
	datac => \inst4|inst|inst5|inst4~0_combout\,
	combout => \inst4|inst|inst6|inst4~1_combout\);

-- Location: IOIBUF_X0_Y3_N8
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

-- Location: LCCOMB_X1_Y3_N20
\inst4|inst|inst7|inst4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst|inst7|inst4~0_combout\ = (\B[7]~input_o\ & ((\inst4|inst|inst6|inst4~0_combout\) # ((\inst4|inst|inst6|inst4~1_combout\) # (\A[7]~input_o\)))) # (!\B[7]~input_o\ & (\A[7]~input_o\ & ((\inst4|inst|inst6|inst4~0_combout\) # 
-- (\inst4|inst|inst6|inst4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[7]~input_o\,
	datab => \inst4|inst|inst6|inst4~0_combout\,
	datac => \inst4|inst|inst6|inst4~1_combout\,
	datad => \A[7]~input_o\,
	combout => \inst4|inst|inst7|inst4~0_combout\);

-- Location: LCCOMB_X1_Y3_N12
\inst4|inst2|inst|inst4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst2|inst|inst4~1_combout\ = (\inst4|inst|inst7|inst4~0_combout\ & ((\B[8]~input_o\) # (\A[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[8]~input_o\,
	datac => \A[8]~input_o\,
	datad => \inst4|inst|inst7|inst4~0_combout\,
	combout => \inst4|inst2|inst|inst4~1_combout\);

-- Location: LCCOMB_X1_Y3_N8
\inst4|inst2|inst|inst4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst2|inst|inst4~0_combout\ = (\A[8]~input_o\ & \B[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[8]~input_o\,
	datad => \B[8]~input_o\,
	combout => \inst4|inst2|inst|inst4~0_combout\);

-- Location: IOIBUF_X0_Y2_N8
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

-- Location: IOIBUF_X3_Y0_N29
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

-- Location: LCCOMB_X1_Y3_N10
\inst4|inst2|inst1|inst4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst2|inst1|inst4~0_combout\ = (\B[9]~input_o\ & ((\inst4|inst2|inst|inst4~1_combout\) # ((\inst4|inst2|inst|inst4~0_combout\) # (\A[9]~input_o\)))) # (!\B[9]~input_o\ & (\A[9]~input_o\ & ((\inst4|inst2|inst|inst4~1_combout\) # 
-- (\inst4|inst2|inst|inst4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst2|inst|inst4~1_combout\,
	datab => \inst4|inst2|inst|inst4~0_combout\,
	datac => \B[9]~input_o\,
	datad => \A[9]~input_o\,
	combout => \inst4|inst2|inst1|inst4~0_combout\);

-- Location: LCCOMB_X1_Y3_N18
\inst4|inst2|inst2|inst4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst2|inst2|inst4~1_combout\ = (\inst4|inst2|inst1|inst4~0_combout\ & ((\B[10]~input_o\) # (\A[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[10]~input_o\,
	datac => \A[10]~input_o\,
	datad => \inst4|inst2|inst1|inst4~0_combout\,
	combout => \inst4|inst2|inst2|inst4~1_combout\);

-- Location: LCCOMB_X1_Y3_N6
\inst4|inst2|inst3|inst4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst2|inst3|inst4~0_combout\ = (\B[11]~input_o\ & ((\inst4|inst2|inst2|inst4~0_combout\) # ((\A[11]~input_o\) # (\inst4|inst2|inst2|inst4~1_combout\)))) # (!\B[11]~input_o\ & (\A[11]~input_o\ & ((\inst4|inst2|inst2|inst4~0_combout\) # 
-- (\inst4|inst2|inst2|inst4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[11]~input_o\,
	datab => \inst4|inst2|inst2|inst4~0_combout\,
	datac => \A[11]~input_o\,
	datad => \inst4|inst2|inst2|inst4~1_combout\,
	combout => \inst4|inst2|inst3|inst4~0_combout\);

-- Location: LCCOMB_X1_Y3_N16
\inst4|inst2|inst4|inst4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst2|inst4|inst4~1_combout\ = (\inst4|inst2|inst3|inst4~0_combout\ & ((\A[12]~input_o\) # (\B[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[12]~input_o\,
	datac => \B[12]~input_o\,
	datad => \inst4|inst2|inst3|inst4~0_combout\,
	combout => \inst4|inst2|inst4|inst4~1_combout\);

-- Location: IOIBUF_X0_Y7_N15
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

-- Location: IOIBUF_X1_Y10_N22
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

-- Location: LCCOMB_X1_Y7_N18
\inst4|inst2|inst5|inst4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst2|inst5|inst4~0_combout\ = (\B[13]~input_o\ & ((\inst4|inst2|inst4|inst4~0_combout\) # ((\inst4|inst2|inst4|inst4~1_combout\) # (\A[13]~input_o\)))) # (!\B[13]~input_o\ & (\A[13]~input_o\ & ((\inst4|inst2|inst4|inst4~0_combout\) # 
-- (\inst4|inst2|inst4|inst4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst2|inst4|inst4~0_combout\,
	datab => \inst4|inst2|inst4|inst4~1_combout\,
	datac => \B[13]~input_o\,
	datad => \A[13]~input_o\,
	combout => \inst4|inst2|inst5|inst4~0_combout\);

-- Location: IOIBUF_X0_Y7_N22
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

-- Location: IOIBUF_X1_Y10_N29
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

-- Location: LCCOMB_X1_Y7_N22
\inst4|inst2|inst6|inst4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst2|inst6|inst4~1_combout\ = (\inst4|inst2|inst5|inst4~0_combout\ & ((\A[14]~input_o\) # (\B[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|inst2|inst5|inst4~0_combout\,
	datac => \A[14]~input_o\,
	datad => \B[14]~input_o\,
	combout => \inst4|inst2|inst6|inst4~1_combout\);

-- Location: LCCOMB_X1_Y7_N8
\inst4|inst2|inst6|inst4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst2|inst6|inst4~0_combout\ = (\A[14]~input_o\ & \B[14]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[14]~input_o\,
	datad => \B[14]~input_o\,
	combout => \inst4|inst2|inst6|inst4~0_combout\);

-- Location: IOIBUF_X0_Y7_N1
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

-- Location: IOIBUF_X1_Y10_N15
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

-- Location: LCCOMB_X1_Y7_N10
\inst4|inst2|inst7|inst4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst2|inst7|inst4~0_combout\ = (\A[15]~input_o\ & ((\inst4|inst2|inst6|inst4~1_combout\) # ((\inst4|inst2|inst6|inst4~0_combout\) # (\B[15]~input_o\)))) # (!\A[15]~input_o\ & (\B[15]~input_o\ & ((\inst4|inst2|inst6|inst4~1_combout\) # 
-- (\inst4|inst2|inst6|inst4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst2|inst6|inst4~1_combout\,
	datab => \inst4|inst2|inst6|inst4~0_combout\,
	datac => \A[15]~input_o\,
	datad => \B[15]~input_o\,
	combout => \inst4|inst2|inst7|inst4~0_combout\);

-- Location: LCCOMB_X1_Y7_N4
\inst4|inst3|inst|inst4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst3|inst|inst4~1_combout\ = (\inst4|inst2|inst7|inst4~0_combout\ & ((\A[16]~input_o\) # (\B[16]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst2|inst7|inst4~0_combout\,
	datac => \A[16]~input_o\,
	datad => \B[16]~input_o\,
	combout => \inst4|inst3|inst|inst4~1_combout\);

-- Location: IOIBUF_X3_Y10_N8
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

-- Location: LCCOMB_X1_Y7_N16
\inst4|inst3|inst1|inst4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst3|inst1|inst4~0_combout\ = (\B[17]~input_o\ & ((\inst4|inst3|inst|inst4~0_combout\) # ((\inst4|inst3|inst|inst4~1_combout\) # (\A[17]~input_o\)))) # (!\B[17]~input_o\ & (\A[17]~input_o\ & ((\inst4|inst3|inst|inst4~0_combout\) # 
-- (\inst4|inst3|inst|inst4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst3|inst|inst4~0_combout\,
	datab => \B[17]~input_o\,
	datac => \inst4|inst3|inst|inst4~1_combout\,
	datad => \A[17]~input_o\,
	combout => \inst4|inst3|inst1|inst4~0_combout\);

-- Location: LCCOMB_X1_Y7_N20
\inst4|inst3|inst2|inst4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst3|inst2|inst4~1_combout\ = (\inst4|inst3|inst1|inst4~0_combout\ & ((\A[18]~input_o\) # (\B[18]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[18]~input_o\,
	datac => \B[18]~input_o\,
	datad => \inst4|inst3|inst1|inst4~0_combout\,
	combout => \inst4|inst3|inst2|inst4~1_combout\);

-- Location: LCCOMB_X1_Y7_N14
\inst4|inst3|inst2|inst4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst3|inst2|inst4~0_combout\ = (\B[18]~input_o\ & \A[18]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[18]~input_o\,
	datad => \A[18]~input_o\,
	combout => \inst4|inst3|inst2|inst4~0_combout\);

-- Location: IOIBUF_X31_Y3_N22
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

-- Location: LCCOMB_X30_Y3_N12
\inst4|inst3|inst3|inst4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst3|inst3|inst4~0_combout\ = (\A[19]~input_o\ & ((\inst4|inst3|inst2|inst4~1_combout\) # ((\inst4|inst3|inst2|inst4~0_combout\) # (\B[19]~input_o\)))) # (!\A[19]~input_o\ & (\B[19]~input_o\ & ((\inst4|inst3|inst2|inst4~1_combout\) # 
-- (\inst4|inst3|inst2|inst4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[19]~input_o\,
	datab => \inst4|inst3|inst2|inst4~1_combout\,
	datac => \inst4|inst3|inst2|inst4~0_combout\,
	datad => \B[19]~input_o\,
	combout => \inst4|inst3|inst3|inst4~0_combout\);

-- Location: IOIBUF_X31_Y2_N15
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

-- Location: IOIBUF_X31_Y3_N8
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

-- Location: LCCOMB_X30_Y3_N26
\inst4|inst3|inst4|inst4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst3|inst4|inst4~1_combout\ = (\inst4|inst3|inst3|inst4~0_combout\ & ((\A[20]~input_o\) # (\B[20]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst3|inst3|inst4~0_combout\,
	datac => \A[20]~input_o\,
	datad => \B[20]~input_o\,
	combout => \inst4|inst3|inst4|inst4~1_combout\);

-- Location: LCCOMB_X30_Y3_N24
\inst4|inst3|inst4|inst4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst3|inst4|inst4~0_combout\ = (\A[20]~input_o\ & \B[20]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[20]~input_o\,
	datad => \B[20]~input_o\,
	combout => \inst4|inst3|inst4|inst4~0_combout\);

-- Location: IOIBUF_X27_Y0_N1
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

-- Location: IOIBUF_X31_Y3_N1
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

-- Location: LCCOMB_X30_Y3_N10
\inst4|inst3|inst5|inst4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst3|inst5|inst4~0_combout\ = (\B[21]~input_o\ & ((\inst4|inst3|inst4|inst4~1_combout\) # ((\inst4|inst3|inst4|inst4~0_combout\) # (\A[21]~input_o\)))) # (!\B[21]~input_o\ & (\A[21]~input_o\ & ((\inst4|inst3|inst4|inst4~1_combout\) # 
-- (\inst4|inst3|inst4|inst4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst3|inst4|inst4~1_combout\,
	datab => \inst4|inst3|inst4|inst4~0_combout\,
	datac => \B[21]~input_o\,
	datad => \A[21]~input_o\,
	combout => \inst4|inst3|inst5|inst4~0_combout\);

-- Location: LCCOMB_X30_Y3_N4
\inst4|inst3|inst6|inst4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst3|inst6|inst4~1_combout\ = (\inst4|inst3|inst5|inst4~0_combout\ & ((\B[22]~input_o\) # (\A[22]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[22]~input_o\,
	datac => \A[22]~input_o\,
	datad => \inst4|inst3|inst5|inst4~0_combout\,
	combout => \inst4|inst3|inst6|inst4~1_combout\);

-- Location: IOIBUF_X31_Y6_N8
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

-- Location: LCCOMB_X30_Y3_N0
\inst4|inst3|inst7|inst4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst3|inst7|inst4~0_combout\ = (\A[23]~input_o\ & ((\inst4|inst3|inst6|inst4~0_combout\) # ((\inst4|inst3|inst6|inst4~1_combout\) # (\B[23]~input_o\)))) # (!\A[23]~input_o\ & (\B[23]~input_o\ & ((\inst4|inst3|inst6|inst4~0_combout\) # 
-- (\inst4|inst3|inst6|inst4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst3|inst6|inst4~0_combout\,
	datab => \A[23]~input_o\,
	datac => \inst4|inst3|inst6|inst4~1_combout\,
	datad => \B[23]~input_o\,
	combout => \inst4|inst3|inst7|inst4~0_combout\);

-- Location: IOIBUF_X31_Y4_N8
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

-- Location: IOIBUF_X31_Y4_N15
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

-- Location: LCCOMB_X30_Y4_N12
\inst4|inst4|inst|inst4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst4|inst|inst4~1_combout\ = (\inst4|inst3|inst7|inst4~0_combout\ & ((\B[24]~input_o\) # (\A[24]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|inst3|inst7|inst4~0_combout\,
	datac => \B[24]~input_o\,
	datad => \A[24]~input_o\,
	combout => \inst4|inst4|inst|inst4~1_combout\);

-- Location: LCCOMB_X30_Y4_N2
\inst4|inst4|inst|inst4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst4|inst|inst4~0_combout\ = (\B[24]~input_o\ & \A[24]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[24]~input_o\,
	datad => \A[24]~input_o\,
	combout => \inst4|inst4|inst|inst4~0_combout\);

-- Location: IOIBUF_X27_Y0_N22
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

-- Location: IOIBUF_X31_Y5_N15
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

-- Location: LCCOMB_X30_Y4_N14
\inst4|inst4|inst1|inst4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst4|inst1|inst4~0_combout\ = (\A[25]~input_o\ & ((\inst4|inst4|inst|inst4~1_combout\) # ((\inst4|inst4|inst|inst4~0_combout\) # (\B[25]~input_o\)))) # (!\A[25]~input_o\ & (\B[25]~input_o\ & ((\inst4|inst4|inst|inst4~1_combout\) # 
-- (\inst4|inst4|inst|inst4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst4|inst|inst4~1_combout\,
	datab => \inst4|inst4|inst|inst4~0_combout\,
	datac => \A[25]~input_o\,
	datad => \B[25]~input_o\,
	combout => \inst4|inst4|inst1|inst4~0_combout\);

-- Location: IOIBUF_X31_Y7_N1
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

-- Location: LCCOMB_X30_Y4_N10
\inst4|inst4|inst2|inst4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst4|inst2|inst4~1_combout\ = (\inst4|inst4|inst1|inst4~0_combout\ & ((\A[26]~input_o\) # (\B[26]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[26]~input_o\,
	datac => \inst4|inst4|inst1|inst4~0_combout\,
	datad => \B[26]~input_o\,
	combout => \inst4|inst4|inst2|inst4~1_combout\);

-- Location: LCCOMB_X30_Y4_N8
\inst4|inst4|inst2|inst4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst4|inst2|inst4~0_combout\ = (\A[26]~input_o\ & \B[26]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[26]~input_o\,
	datad => \B[26]~input_o\,
	combout => \inst4|inst4|inst2|inst4~0_combout\);

-- Location: IOIBUF_X31_Y4_N1
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

-- Location: IOIBUF_X27_Y0_N29
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

-- Location: LCCOMB_X30_Y4_N30
\inst4|inst4|inst3|inst4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst4|inst3|inst4~0_combout\ = (\A[27]~input_o\ & ((\inst4|inst4|inst2|inst4~1_combout\) # ((\inst4|inst4|inst2|inst4~0_combout\) # (\B[27]~input_o\)))) # (!\A[27]~input_o\ & (\B[27]~input_o\ & ((\inst4|inst4|inst2|inst4~1_combout\) # 
-- (\inst4|inst4|inst2|inst4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst4|inst2|inst4~1_combout\,
	datab => \inst4|inst4|inst2|inst4~0_combout\,
	datac => \A[27]~input_o\,
	datad => \B[27]~input_o\,
	combout => \inst4|inst4|inst3|inst4~0_combout\);

-- Location: LCCOMB_X30_Y4_N22
\inst4|inst4|inst4|inst4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst4|inst4|inst4~1_combout\ = (\inst4|inst4|inst3|inst4~0_combout\ & ((\A[28]~input_o\) # (\B[28]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst4|inst3|inst4~0_combout\,
	datac => \A[28]~input_o\,
	datad => \B[28]~input_o\,
	combout => \inst4|inst4|inst4|inst4~1_combout\);

-- Location: IOIBUF_X31_Y5_N1
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

-- Location: LCCOMB_X30_Y4_N24
\inst4|inst4|inst5|inst4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst4|inst5|inst4~0_combout\ = (\B[29]~input_o\ & ((\inst4|inst4|inst4|inst4~0_combout\) # ((\inst4|inst4|inst4|inst4~1_combout\) # (\A[29]~input_o\)))) # (!\B[29]~input_o\ & (\A[29]~input_o\ & ((\inst4|inst4|inst4|inst4~0_combout\) # 
-- (\inst4|inst4|inst4|inst4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst4|inst4|inst4~0_combout\,
	datab => \B[29]~input_o\,
	datac => \inst4|inst4|inst4|inst4~1_combout\,
	datad => \A[29]~input_o\,
	combout => \inst4|inst4|inst5|inst4~0_combout\);

-- Location: LCCOMB_X30_Y1_N18
\inst4|inst4|inst6|inst4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst4|inst6|inst4~1_combout\ = (\inst4|inst4|inst5|inst4~0_combout\ & ((\B[30]~input_o\) # (\A[30]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|inst4|inst5|inst4~0_combout\,
	datac => \B[30]~input_o\,
	datad => \A[30]~input_o\,
	combout => \inst4|inst4|inst6|inst4~1_combout\);

-- Location: IOIBUF_X29_Y0_N22
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

-- Location: IOIBUF_X31_Y1_N15
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

-- Location: LCCOMB_X30_Y1_N0
\inst4|inst4|inst7|inst4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst4|inst7|inst4~0_combout\ = (\A[31]~input_o\ & ((\inst4|inst4|inst6|inst4~0_combout\) # ((\inst4|inst4|inst6|inst4~1_combout\) # (\B[31]~input_o\)))) # (!\A[31]~input_o\ & (\B[31]~input_o\ & ((\inst4|inst4|inst6|inst4~0_combout\) # 
-- (\inst4|inst4|inst6|inst4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst4|inst6|inst4~0_combout\,
	datab => \inst4|inst4|inst6|inst4~1_combout\,
	datac => \A[31]~input_o\,
	datad => \B[31]~input_o\,
	combout => \inst4|inst4|inst7|inst4~0_combout\);

-- Location: IOIBUF_X0_Y6_N15
\clk1~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk1,
	o => \clk1~input_o\);

-- Location: CLKCTRL_G3
\clk1~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk1~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk1~inputclkctrl_outclk\);

-- Location: IOIBUF_X27_Y25_N15
\wren~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wren,
	o => \wren~input_o\);

-- Location: IOIBUF_X19_Y25_N22
\dataa[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataa(0),
	o => \dataa[0]~input_o\);

-- Location: IOIBUF_X17_Y25_N8
\dataa[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataa(1),
	o => \dataa[1]~input_o\);

-- Location: IOIBUF_X19_Y25_N15
\dataa[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataa(2),
	o => \dataa[2]~input_o\);

-- Location: IOIBUF_X10_Y22_N15
\dataa[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataa(3),
	o => \dataa[3]~input_o\);

-- Location: IOIBUF_X19_Y25_N1
\dataa[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataa(4),
	o => \dataa[4]~input_o\);

-- Location: IOIBUF_X19_Y25_N8
\dataa[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataa(5),
	o => \dataa[5]~input_o\);

-- Location: IOIBUF_X15_Y25_N1
\dataa[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataa(6),
	o => \dataa[6]~input_o\);

-- Location: IOIBUF_X17_Y25_N1
\dataa[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataa(7),
	o => \dataa[7]~input_o\);

-- Location: IOIBUF_X17_Y25_N15
\datab[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datab(0),
	o => \datab[0]~input_o\);

-- Location: IOIBUF_X19_Y25_N29
\datab[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datab(1),
	o => \datab[1]~input_o\);

-- Location: IOIBUF_X22_Y25_N29
\datab[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datab(2),
	o => \datab[2]~input_o\);

-- Location: IOIBUF_X17_Y25_N29
\datab[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datab(3),
	o => \datab[3]~input_o\);

-- Location: IOIBUF_X22_Y25_N8
\datab[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datab(4),
	o => \datab[4]~input_o\);

-- Location: IOIBUF_X17_Y25_N22
\datab[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datab(5),
	o => \datab[5]~input_o\);

-- Location: IOIBUF_X22_Y25_N22
\datab[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datab(6),
	o => \datab[6]~input_o\);

-- Location: IOIBUF_X22_Y25_N15
\datab[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datab(7),
	o => \datab[7]~input_o\);

-- Location: DSPMULT_X21_Y22_N0
\inst|lpm_mult_component|auto_generated|mac_mult1\ : fiftyfivenm_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "0",
	dataa_width => 9,
	datab_clock => "0",
	datab_width => 9,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => GND,
	signb => GND,
	clk => \clk1~inputclkctrl_outclk\,
	aclr => GND,
	ena => VCC,
	dataa => \inst|lpm_mult_component|auto_generated|mac_mult1_DATAA_bus\,
	datab => \inst|lpm_mult_component|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \inst|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: DSPOUT_X21_Y22_N2
\inst|lpm_mult_component|auto_generated|mac_out2\ : fiftyfivenm_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 18,
	output_clock => "0")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	aclr => GND,
	ena => VCC,
	dataa => \inst|lpm_mult_component|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \inst|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: IOIBUF_X27_Y25_N8
\wraddress[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wraddress(0),
	o => \wraddress[0]~input_o\);

-- Location: IOIBUF_X27_Y25_N1
\wraddress[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wraddress(1),
	o => \wraddress[1]~input_o\);

-- Location: IOIBUF_X31_Y19_N22
\wraddress[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wraddress(2),
	o => \wraddress[2]~input_o\);

-- Location: IOIBUF_X31_Y19_N8
\wraddress[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wraddress(3),
	o => \wraddress[3]~input_o\);

-- Location: IOIBUF_X31_Y19_N1
\wraddress[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wraddress(4),
	o => \wraddress[4]~input_o\);

-- Location: IOIBUF_X31_Y21_N22
\rdaddress[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rdaddress(0),
	o => \rdaddress[0]~input_o\);

-- Location: LCCOMB_X28_Y22_N0
\inst1|rdaddress_reg[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|rdaddress_reg[0]~feeder_combout\ = \rdaddress[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rdaddress[0]~input_o\,
	combout => \inst1|rdaddress_reg[0]~feeder_combout\);

-- Location: FF_X28_Y22_N1
\inst1|rdaddress_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst1|rdaddress_reg[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|rdaddress_reg\(0));

-- Location: IOIBUF_X24_Y25_N29
\rdaddress[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rdaddress(1),
	o => \rdaddress[1]~input_o\);

-- Location: LCCOMB_X25_Y22_N6
\inst1|rdaddress_reg[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|rdaddress_reg[1]~feeder_combout\ = \rdaddress[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rdaddress[1]~input_o\,
	combout => \inst1|rdaddress_reg[1]~feeder_combout\);

-- Location: FF_X25_Y22_N7
\inst1|rdaddress_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst1|rdaddress_reg[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|rdaddress_reg\(1));

-- Location: IOIBUF_X31_Y21_N15
\rdaddress[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rdaddress(2),
	o => \rdaddress[2]~input_o\);

-- Location: LCCOMB_X27_Y22_N14
\inst1|rdaddress_reg[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|rdaddress_reg[2]~feeder_combout\ = \rdaddress[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rdaddress[2]~input_o\,
	combout => \inst1|rdaddress_reg[2]~feeder_combout\);

-- Location: FF_X27_Y22_N15
\inst1|rdaddress_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst1|rdaddress_reg[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|rdaddress_reg\(2));

-- Location: IOIBUF_X31_Y21_N8
\rdaddress[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rdaddress(3),
	o => \rdaddress[3]~input_o\);

-- Location: LCCOMB_X29_Y22_N8
\inst1|rdaddress_reg[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|rdaddress_reg[3]~feeder_combout\ = \rdaddress[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rdaddress[3]~input_o\,
	combout => \inst1|rdaddress_reg[3]~feeder_combout\);

-- Location: FF_X29_Y22_N9
\inst1|rdaddress_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst1|rdaddress_reg[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|rdaddress_reg\(3));

-- Location: IOIBUF_X31_Y21_N1
\rdaddress[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rdaddress(4),
	o => \rdaddress[4]~input_o\);

-- Location: LCCOMB_X27_Y22_N8
\inst1|rdaddress_reg[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|rdaddress_reg[4]~feeder_combout\ = \rdaddress[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rdaddress[4]~input_o\,
	combout => \inst1|rdaddress_reg[4]~feeder_combout\);

-- Location: FF_X27_Y22_N9
\inst1|rdaddress_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst1|rdaddress_reg[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|rdaddress_reg\(4));

-- Location: M9K_X26_Y22_N0
\inst1|ram_block_rtl_0|auto_generated|ram_block1a0\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "ram:inst1|altsyncram:ram_block_rtl_0|altsyncram_87g1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 36,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 36,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \wren~input_o\,
	portbre => VCC,
	clk0 => \clk1~inputclkctrl_outclk\,
	portadatain => \inst1|ram_block_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \inst1|ram_block_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \inst1|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst1|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: DDIOOUTCELL_X29_Y25_N18
\inst2[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst1|ram_block_rtl_0|auto_generated|ram_block1a15\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst2(15));

-- Location: DDIOOUTCELL_X24_Y25_N11
\inst2[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst1|ram_block_rtl_0|auto_generated|ram_block1a14\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst2(14));

-- Location: DDIOOUTCELL_X24_Y25_N25
\inst2[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst1|ram_block_rtl_0|auto_generated|ram_block1a13\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst2(13));

-- Location: DDIOOUTCELL_X29_Y25_N11
\inst2[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst1|ram_block_rtl_0|auto_generated|ram_block1a12\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst2(12));

-- Location: DDIOOUTCELL_X22_Y25_N4
\inst2[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst1|ram_block_rtl_0|auto_generated|ram_block1a11\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst2(11));

-- Location: DDIOOUTCELL_X29_Y25_N25
\inst2[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst1|ram_block_rtl_0|auto_generated|ram_block1a10\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst2(10));

-- Location: DDIOOUTCELL_X27_Y25_N32
\inst2[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst1|ram_block_rtl_0|auto_generated|ram_block1a9\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst2(9));

-- Location: DDIOOUTCELL_X31_Y22_N11
\inst2[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst1|ram_block_rtl_0|auto_generated|ram_block1a8\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst2(8));

-- Location: DDIOOUTCELL_X31_Y22_N4
\inst2[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst1|ram_block_rtl_0|auto_generated|ram_block1a7\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst2(7));

-- Location: DDIOOUTCELL_X31_Y22_N25
\inst2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst1|ram_block_rtl_0|auto_generated|ram_block1a6\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst2(6));

-- Location: DDIOOUTCELL_X27_Y25_N25
\inst2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst1|ram_block_rtl_0|auto_generated|ram_block1a5\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst2(5));

-- Location: DDIOOUTCELL_X29_Y25_N32
\inst2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst1|ram_block_rtl_0|auto_generated|ram_block1a4\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst2(4));

-- Location: DDIOOUTCELL_X24_Y25_N4
\inst2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst1|ram_block_rtl_0|auto_generated|ram_block1a3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst2(3));

-- Location: DDIOOUTCELL_X31_Y22_N18
\inst2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst1|ram_block_rtl_0|auto_generated|ram_block1a2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst2(2));

-- Location: DDIOOUTCELL_X29_Y25_N4
\inst2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst1|ram_block_rtl_0|auto_generated|ram_block1a1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst2(1));

-- Location: DDIOOUTCELL_X24_Y25_N18
\inst2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst1|ram_block_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst2(0));

-- Location: LCCOMB_X30_Y4_N4
\inst4|inst4|inst|inst1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst4|inst|inst1~0_combout\ = \inst4|inst3|inst7|inst4~0_combout\ $ (\B[24]~input_o\ $ (\A[24]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|inst3|inst7|inst4~0_combout\,
	datac => \B[24]~input_o\,
	datad => \A[24]~input_o\,
	combout => \inst4|inst4|inst|inst1~0_combout\);

-- Location: LCCOMB_X30_Y4_N20
\inst4|inst4|inst1|inst1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst4|inst1|inst1~combout\ = \A[25]~input_o\ $ (\B[25]~input_o\ $ (((\inst4|inst4|inst|inst4~1_combout\) # (\inst4|inst4|inst|inst4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst4|inst|inst4~1_combout\,
	datab => \inst4|inst4|inst|inst4~0_combout\,
	datac => \A[25]~input_o\,
	datad => \B[25]~input_o\,
	combout => \inst4|inst4|inst1|inst1~combout\);

-- Location: LCCOMB_X30_Y4_N6
\inst4|inst4|inst2|inst1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst4|inst2|inst1~0_combout\ = \A[26]~input_o\ $ (\inst4|inst4|inst1|inst4~0_combout\ $ (\B[26]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[26]~input_o\,
	datac => \inst4|inst4|inst1|inst4~0_combout\,
	datad => \B[26]~input_o\,
	combout => \inst4|inst4|inst2|inst1~0_combout\);

-- Location: LCCOMB_X30_Y4_N18
\inst4|inst4|inst3|inst1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst4|inst3|inst1~combout\ = \A[27]~input_o\ $ (\B[27]~input_o\ $ (((\inst4|inst4|inst2|inst4~1_combout\) # (\inst4|inst4|inst2|inst4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst4|inst2|inst4~1_combout\,
	datab => \inst4|inst4|inst2|inst4~0_combout\,
	datac => \A[27]~input_o\,
	datad => \B[27]~input_o\,
	combout => \inst4|inst4|inst3|inst1~combout\);

-- Location: LCCOMB_X30_Y4_N28
\inst4|inst4|inst4|inst1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst4|inst4|inst1~0_combout\ = \inst4|inst4|inst3|inst4~0_combout\ $ (\A[28]~input_o\ $ (\B[28]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst4|inst3|inst4~0_combout\,
	datac => \A[28]~input_o\,
	datad => \B[28]~input_o\,
	combout => \inst4|inst4|inst4|inst1~0_combout\);

-- Location: LCCOMB_X30_Y4_N16
\inst4|inst4|inst5|inst1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst4|inst5|inst1~combout\ = \B[29]~input_o\ $ (\A[29]~input_o\ $ (((\inst4|inst4|inst4|inst4~0_combout\) # (\inst4|inst4|inst4|inst4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst4|inst4|inst4~0_combout\,
	datab => \B[29]~input_o\,
	datac => \inst4|inst4|inst4|inst4~1_combout\,
	datad => \A[29]~input_o\,
	combout => \inst4|inst4|inst5|inst1~combout\);

-- Location: LCCOMB_X30_Y1_N10
\inst4|inst4|inst6|inst1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst4|inst6|inst1~0_combout\ = \inst4|inst4|inst5|inst4~0_combout\ $ (\B[30]~input_o\ $ (\A[30]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|inst4|inst5|inst4~0_combout\,
	datac => \B[30]~input_o\,
	datad => \A[30]~input_o\,
	combout => \inst4|inst4|inst6|inst1~0_combout\);

-- Location: LCCOMB_X30_Y1_N14
\inst4|inst4|inst7|inst1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst4|inst7|inst1~combout\ = \A[31]~input_o\ $ (\B[31]~input_o\ $ (((\inst4|inst4|inst6|inst4~0_combout\) # (\inst4|inst4|inst6|inst4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst4|inst6|inst4~0_combout\,
	datab => \inst4|inst4|inst6|inst4~1_combout\,
	datac => \A[31]~input_o\,
	datad => \B[31]~input_o\,
	combout => \inst4|inst4|inst7|inst1~combout\);

-- Location: LCCOMB_X1_Y7_N28
\inst4|inst3|inst|inst1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst3|inst|inst1~0_combout\ = \inst4|inst2|inst7|inst4~0_combout\ $ (\A[16]~input_o\ $ (\B[16]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst2|inst7|inst4~0_combout\,
	datac => \A[16]~input_o\,
	datad => \B[16]~input_o\,
	combout => \inst4|inst3|inst|inst1~0_combout\);

-- Location: LCCOMB_X1_Y7_N0
\inst4|inst3|inst1|inst1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst3|inst1|inst1~combout\ = \B[17]~input_o\ $ (\A[17]~input_o\ $ (((\inst4|inst3|inst|inst4~0_combout\) # (\inst4|inst3|inst|inst4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst3|inst|inst4~0_combout\,
	datab => \B[17]~input_o\,
	datac => \inst4|inst3|inst|inst4~1_combout\,
	datad => \A[17]~input_o\,
	combout => \inst4|inst3|inst1|inst1~combout\);

-- Location: LCCOMB_X1_Y7_N26
\inst4|inst3|inst2|inst1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst3|inst2|inst1~0_combout\ = \A[18]~input_o\ $ (\B[18]~input_o\ $ (\inst4|inst3|inst1|inst4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[18]~input_o\,
	datac => \B[18]~input_o\,
	datad => \inst4|inst3|inst1|inst4~0_combout\,
	combout => \inst4|inst3|inst2|inst1~0_combout\);

-- Location: LCCOMB_X30_Y3_N30
\inst4|inst3|inst3|inst1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst3|inst3|inst1~combout\ = \A[19]~input_o\ $ (\B[19]~input_o\ $ (((\inst4|inst3|inst2|inst4~1_combout\) # (\inst4|inst3|inst2|inst4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[19]~input_o\,
	datab => \inst4|inst3|inst2|inst4~1_combout\,
	datac => \inst4|inst3|inst2|inst4~0_combout\,
	datad => \B[19]~input_o\,
	combout => \inst4|inst3|inst3|inst1~combout\);

-- Location: LCCOMB_X30_Y3_N6
\inst4|inst3|inst4|inst1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst3|inst4|inst1~0_combout\ = \inst4|inst3|inst3|inst4~0_combout\ $ (\A[20]~input_o\ $ (\B[20]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst3|inst3|inst4~0_combout\,
	datac => \A[20]~input_o\,
	datad => \B[20]~input_o\,
	combout => \inst4|inst3|inst4|inst1~0_combout\);

-- Location: LCCOMB_X30_Y3_N14
\inst4|inst3|inst5|inst1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst3|inst5|inst1~combout\ = \B[21]~input_o\ $ (\A[21]~input_o\ $ (((\inst4|inst3|inst4|inst4~1_combout\) # (\inst4|inst3|inst4|inst4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst3|inst4|inst4~1_combout\,
	datab => \inst4|inst3|inst4|inst4~0_combout\,
	datac => \B[21]~input_o\,
	datad => \A[21]~input_o\,
	combout => \inst4|inst3|inst5|inst1~combout\);

-- Location: LCCOMB_X30_Y3_N18
\inst4|inst3|inst6|inst1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst3|inst6|inst1~0_combout\ = \B[22]~input_o\ $ (\A[22]~input_o\ $ (\inst4|inst3|inst5|inst4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[22]~input_o\,
	datac => \A[22]~input_o\,
	datad => \inst4|inst3|inst5|inst4~0_combout\,
	combout => \inst4|inst3|inst6|inst1~0_combout\);

-- Location: LCCOMB_X30_Y3_N8
\inst4|inst3|inst7|inst1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst3|inst7|inst1~combout\ = \A[23]~input_o\ $ (\B[23]~input_o\ $ (((\inst4|inst3|inst6|inst4~0_combout\) # (\inst4|inst3|inst6|inst4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst3|inst6|inst4~0_combout\,
	datab => \A[23]~input_o\,
	datac => \inst4|inst3|inst6|inst4~1_combout\,
	datad => \B[23]~input_o\,
	combout => \inst4|inst3|inst7|inst1~combout\);

-- Location: LCCOMB_X1_Y3_N4
\inst4|inst2|inst|inst1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst2|inst|inst1~0_combout\ = \B[8]~input_o\ $ (\A[8]~input_o\ $ (\inst4|inst|inst7|inst4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[8]~input_o\,
	datac => \A[8]~input_o\,
	datad => \inst4|inst|inst7|inst4~0_combout\,
	combout => \inst4|inst2|inst|inst1~0_combout\);

-- Location: LCCOMB_X1_Y3_N2
\inst4|inst2|inst1|inst1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst2|inst1|inst1~combout\ = \B[9]~input_o\ $ (\A[9]~input_o\ $ (((\inst4|inst2|inst|inst4~1_combout\) # (\inst4|inst2|inst|inst4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst2|inst|inst4~1_combout\,
	datab => \inst4|inst2|inst|inst4~0_combout\,
	datac => \B[9]~input_o\,
	datad => \A[9]~input_o\,
	combout => \inst4|inst2|inst1|inst1~combout\);

-- Location: LCCOMB_X1_Y3_N22
\inst4|inst2|inst2|inst1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst2|inst2|inst1~0_combout\ = \B[10]~input_o\ $ (\A[10]~input_o\ $ (\inst4|inst2|inst1|inst4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[10]~input_o\,
	datac => \A[10]~input_o\,
	datad => \inst4|inst2|inst1|inst4~0_combout\,
	combout => \inst4|inst2|inst2|inst1~0_combout\);

-- Location: LCCOMB_X1_Y3_N26
\inst4|inst2|inst3|inst1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst2|inst3|inst1~combout\ = \B[11]~input_o\ $ (\A[11]~input_o\ $ (((\inst4|inst2|inst2|inst4~0_combout\) # (\inst4|inst2|inst2|inst4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[11]~input_o\,
	datab => \inst4|inst2|inst2|inst4~0_combout\,
	datac => \A[11]~input_o\,
	datad => \inst4|inst2|inst2|inst4~1_combout\,
	combout => \inst4|inst2|inst3|inst1~combout\);

-- Location: LCCOMB_X1_Y3_N0
\inst4|inst2|inst4|inst1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst2|inst4|inst1~0_combout\ = \A[12]~input_o\ $ (\B[12]~input_o\ $ (\inst4|inst2|inst3|inst4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[12]~input_o\,
	datac => \B[12]~input_o\,
	datad => \inst4|inst2|inst3|inst4~0_combout\,
	combout => \inst4|inst2|inst4|inst1~0_combout\);

-- Location: LCCOMB_X1_Y7_N30
\inst4|inst2|inst5|inst1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst2|inst5|inst1~combout\ = \B[13]~input_o\ $ (\A[13]~input_o\ $ (((\inst4|inst2|inst4|inst4~0_combout\) # (\inst4|inst2|inst4|inst4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst2|inst4|inst4~0_combout\,
	datab => \inst4|inst2|inst4|inst4~1_combout\,
	datac => \B[13]~input_o\,
	datad => \A[13]~input_o\,
	combout => \inst4|inst2|inst5|inst1~combout\);

-- Location: LCCOMB_X1_Y7_N24
\inst4|inst2|inst6|inst1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst2|inst6|inst1~0_combout\ = \inst4|inst2|inst5|inst4~0_combout\ $ (\A[14]~input_o\ $ (\B[14]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|inst2|inst5|inst4~0_combout\,
	datac => \A[14]~input_o\,
	datad => \B[14]~input_o\,
	combout => \inst4|inst2|inst6|inst1~0_combout\);

-- Location: LCCOMB_X1_Y7_N2
\inst4|inst2|inst7|inst1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst2|inst7|inst1~combout\ = \A[15]~input_o\ $ (\B[15]~input_o\ $ (((\inst4|inst2|inst6|inst4~1_combout\) # (\inst4|inst2|inst6|inst4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst2|inst6|inst4~1_combout\,
	datab => \inst4|inst2|inst6|inst4~0_combout\,
	datac => \A[15]~input_o\,
	datad => \B[15]~input_o\,
	combout => \inst4|inst2|inst7|inst1~combout\);

-- Location: LCCOMB_X10_Y1_N30
\inst4|inst|inst|inst1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst|inst|inst1~0_combout\ = \A[0]~input_o\ $ (\Cin~input_o\ $ (\B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datac => \Cin~input_o\,
	datad => \B[0]~input_o\,
	combout => \inst4|inst|inst|inst1~0_combout\);

-- Location: LCCOMB_X10_Y1_N28
\inst4|inst|inst1|inst1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst|inst1|inst1~combout\ = \A[1]~input_o\ $ (\B[1]~input_o\ $ (((\inst4|inst|inst|inst4~0_combout\) # (\inst4|inst|inst|inst4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst|inst|inst4~0_combout\,
	datab => \A[1]~input_o\,
	datac => \B[1]~input_o\,
	datad => \inst4|inst|inst|inst4~1_combout\,
	combout => \inst4|inst|inst1|inst1~combout\);

-- Location: LCCOMB_X10_Y1_N8
\inst4|inst|inst2|inst1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst|inst2|inst1~0_combout\ = \A[2]~input_o\ $ (\inst4|inst|inst1|inst4~0_combout\ $ (\B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[2]~input_o\,
	datac => \inst4|inst|inst1|inst4~0_combout\,
	datad => \B[2]~input_o\,
	combout => \inst4|inst|inst2|inst1~0_combout\);

-- Location: LCCOMB_X10_Y1_N0
\inst4|inst|inst3|inst1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst|inst3|inst1~combout\ = \B[3]~input_o\ $ (\A[3]~input_o\ $ (((\inst4|inst|inst2|inst4~0_combout\) # (\inst4|inst|inst2|inst4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst|inst2|inst4~0_combout\,
	datab => \inst4|inst|inst2|inst4~1_combout\,
	datac => \B[3]~input_o\,
	datad => \A[3]~input_o\,
	combout => \inst4|inst|inst3|inst1~combout\);

-- Location: LCCOMB_X10_Y1_N20
\inst4|inst|inst4|inst1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst|inst4|inst1~0_combout\ = \A[4]~input_o\ $ (\inst4|inst|inst3|inst4~0_combout\ $ (\B[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datac => \inst4|inst|inst3|inst4~0_combout\,
	datad => \B[4]~input_o\,
	combout => \inst4|inst|inst4|inst1~0_combout\);

-- Location: LCCOMB_X10_Y1_N24
\inst4|inst|inst5|inst1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst|inst5|inst1~combout\ = \A[5]~input_o\ $ (\B[5]~input_o\ $ (((\inst4|inst|inst4|inst4~0_combout\) # (\inst4|inst|inst4|inst4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst|inst4|inst4~0_combout\,
	datab => \A[5]~input_o\,
	datac => \inst4|inst|inst4|inst4~1_combout\,
	datad => \B[5]~input_o\,
	combout => \inst4|inst|inst5|inst1~combout\);

-- Location: LCCOMB_X3_Y1_N8
\inst4|inst|inst6|inst1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst|inst6|inst1~0_combout\ = \B[6]~input_o\ $ (\A[6]~input_o\ $ (\inst4|inst|inst5|inst4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[6]~input_o\,
	datac => \A[6]~input_o\,
	datad => \inst4|inst|inst5|inst4~0_combout\,
	combout => \inst4|inst|inst6|inst1~0_combout\);

-- Location: LCCOMB_X1_Y3_N30
\inst4|inst|inst7|inst1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst|inst7|inst1~combout\ = \B[7]~input_o\ $ (\A[7]~input_o\ $ (((\inst4|inst|inst6|inst4~0_combout\) # (\inst4|inst|inst6|inst4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[7]~input_o\,
	datab => \inst4|inst|inst6|inst4~0_combout\,
	datac => \inst4|inst|inst6|inst4~1_combout\,
	datad => \A[7]~input_o\,
	combout => \inst4|inst|inst7|inst1~combout\);

-- Location: UNVM_X0_Y11_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_offset => -1,
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

-- Location: ADCBLOCK_X10_Y24_N0
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

ww_Cout <= \Cout~output_o\;

ww_q(0) <= \q[0]~output_o\;

ww_q(1) <= \q[1]~output_o\;

ww_q(2) <= \q[2]~output_o\;

ww_q(3) <= \q[3]~output_o\;

ww_q(4) <= \q[4]~output_o\;

ww_q(5) <= \q[5]~output_o\;

ww_q(6) <= \q[6]~output_o\;

ww_q(7) <= \q[7]~output_o\;

ww_q(8) <= \q[8]~output_o\;

ww_q(9) <= \q[9]~output_o\;

ww_q(10) <= \q[10]~output_o\;

ww_q(11) <= \q[11]~output_o\;

ww_q(12) <= \q[12]~output_o\;

ww_q(13) <= \q[13]~output_o\;

ww_q(14) <= \q[14]~output_o\;

ww_q(15) <= \q[15]~output_o\;

ww_SIM(31) <= \SIM[31]~output_o\;

ww_SIM(30) <= \SIM[30]~output_o\;

ww_SIM(29) <= \SIM[29]~output_o\;

ww_SIM(28) <= \SIM[28]~output_o\;

ww_SIM(27) <= \SIM[27]~output_o\;

ww_SIM(26) <= \SIM[26]~output_o\;

ww_SIM(25) <= \SIM[25]~output_o\;

ww_SIM(24) <= \SIM[24]~output_o\;

ww_SIM(23) <= \SIM[23]~output_o\;

ww_SIM(22) <= \SIM[22]~output_o\;

ww_SIM(21) <= \SIM[21]~output_o\;

ww_SIM(20) <= \SIM[20]~output_o\;

ww_SIM(19) <= \SIM[19]~output_o\;

ww_SIM(18) <= \SIM[18]~output_o\;

ww_SIM(17) <= \SIM[17]~output_o\;

ww_SIM(16) <= \SIM[16]~output_o\;

ww_SIM(15) <= \SIM[15]~output_o\;

ww_SIM(14) <= \SIM[14]~output_o\;

ww_SIM(13) <= \SIM[13]~output_o\;

ww_SIM(12) <= \SIM[12]~output_o\;

ww_SIM(11) <= \SIM[11]~output_o\;

ww_SIM(10) <= \SIM[10]~output_o\;

ww_SIM(9) <= \SIM[9]~output_o\;

ww_SIM(8) <= \SIM[8]~output_o\;

ww_SIM(7) <= \SIM[7]~output_o\;

ww_SIM(6) <= \SIM[6]~output_o\;

ww_SIM(5) <= \SIM[5]~output_o\;

ww_SIM(4) <= \SIM[4]~output_o\;

ww_SIM(3) <= \SIM[3]~output_o\;

ww_SIM(2) <= \SIM[2]~output_o\;

ww_SIM(1) <= \SIM[1]~output_o\;

ww_SIM(0) <= \SIM[0]~output_o\;
END structure;


