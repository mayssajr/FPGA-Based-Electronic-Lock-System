-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus II License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 15.0.0 Build 145 04/22/2015 SJ Web Edition"

-- DATE "01/22/2025 13:19:51"

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

ENTITY 	decode_clavier IS
    PORT (
	col4 : IN std_logic;
	col3 : IN std_logic;
	col2 : IN std_logic;
	col1 : IN std_logic;
	lig4 : IN std_logic;
	lig3 : IN std_logic;
	lig2 : IN std_logic;
	lig1 : IN std_logic;
	touche : BUFFER std_logic_vector(3 DOWNTO 0)
	);
END decode_clavier;

-- Design Ports Information
-- touche[0]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- touche[1]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- touche[2]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- touche[3]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lig1	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lig4	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lig2	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lig3	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- col3	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- col2	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- col1	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- col4	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF decode_clavier IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_col4 : std_logic;
SIGNAL ww_col3 : std_logic;
SIGNAL ww_col2 : std_logic;
SIGNAL ww_col1 : std_logic;
SIGNAL ww_lig4 : std_logic;
SIGNAL ww_lig3 : std_logic;
SIGNAL ww_lig2 : std_logic;
SIGNAL ww_lig1 : std_logic;
SIGNAL ww_touche : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \touche[0]~output_o\ : std_logic;
SIGNAL \touche[1]~output_o\ : std_logic;
SIGNAL \touche[2]~output_o\ : std_logic;
SIGNAL \touche[3]~output_o\ : std_logic;
SIGNAL \col1~input_o\ : std_logic;
SIGNAL \col4~input_o\ : std_logic;
SIGNAL \col3~input_o\ : std_logic;
SIGNAL \lig3~input_o\ : std_logic;
SIGNAL \lig4~input_o\ : std_logic;
SIGNAL \lig2~input_o\ : std_logic;
SIGNAL \lig1~input_o\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \col2~input_o\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Equal13~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal8~0_combout\ : std_logic;
SIGNAL \touche~22_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal12~0_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \Equal14~0_combout\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \Equal11~0_combout\ : std_logic;
SIGNAL \touche~23_combout\ : std_logic;
SIGNAL \Equal5~0_combout\ : std_logic;
SIGNAL \Equal6~0_combout\ : std_logic;
SIGNAL \Equal7~0_combout\ : std_logic;
SIGNAL \touche~43_combout\ : std_logic;
SIGNAL \Equal3~1_combout\ : std_logic;
SIGNAL \touche~20_combout\ : std_logic;
SIGNAL \touche~21_combout\ : std_logic;
SIGNAL \Equal8~1_combout\ : std_logic;
SIGNAL \touche~24_combout\ : std_logic;
SIGNAL \touche~25_combout\ : std_logic;
SIGNAL \Equal15~0_combout\ : std_logic;
SIGNAL \touche~26_combout\ : std_logic;
SIGNAL \touche~32_combout\ : std_logic;
SIGNAL \Equal2~1_combout\ : std_logic;
SIGNAL \touche~30_combout\ : std_logic;
SIGNAL \touche~31_combout\ : std_logic;
SIGNAL \touche~27_combout\ : std_logic;
SIGNAL \touche~28_combout\ : std_logic;
SIGNAL \touche~29_combout\ : std_logic;
SIGNAL \touche~33_combout\ : std_logic;
SIGNAL \touche~35_combout\ : std_logic;
SIGNAL \touche~36_combout\ : std_logic;
SIGNAL \touche~5_combout\ : std_logic;
SIGNAL \touche~3_combout\ : std_logic;
SIGNAL \touche~44_combout\ : std_logic;
SIGNAL \touche~34_combout\ : std_logic;
SIGNAL \touche~37_combout\ : std_logic;
SIGNAL \touche~40_combout\ : std_logic;
SIGNAL \touche~41_combout\ : std_logic;
SIGNAL \touche~38_combout\ : std_logic;
SIGNAL \touche~15_combout\ : std_logic;
SIGNAL \touche~13_combout\ : std_logic;
SIGNAL \touche~45_combout\ : std_logic;
SIGNAL \touche~39_combout\ : std_logic;
SIGNAL \touche~42_combout\ : std_logic;

BEGIN

ww_col4 <= col4;
ww_col3 <= col3;
ww_col2 <= col2;
ww_col1 <= col1;
ww_lig4 <= lig4;
ww_lig3 <= lig3;
ww_lig2 <= lig2;
ww_lig1 <= lig1;
touche <= ww_touche;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

-- Location: LCCOMB_X44_Y46_N16
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

-- Location: IOOBUF_X56_Y54_N23
\touche[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \touche~26_combout\,
	devoe => ww_devoe,
	o => \touche[0]~output_o\);

-- Location: IOOBUF_X56_Y54_N2
\touche[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \touche~33_combout\,
	devoe => ww_devoe,
	o => \touche[1]~output_o\);

-- Location: IOOBUF_X56_Y54_N16
\touche[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \touche~37_combout\,
	devoe => ww_devoe,
	o => \touche[2]~output_o\);

-- Location: IOOBUF_X56_Y54_N9
\touche[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \touche~42_combout\,
	devoe => ww_devoe,
	o => \touche[3]~output_o\);

-- Location: IOIBUF_X51_Y54_N29
\col1~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_col1,
	o => \col1~input_o\);

-- Location: IOIBUF_X54_Y54_N29
\col4~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_col4,
	o => \col4~input_o\);

-- Location: IOIBUF_X51_Y54_N1
\col3~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_col3,
	o => \col3~input_o\);

-- Location: IOIBUF_X49_Y54_N1
\lig3~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_lig3,
	o => \lig3~input_o\);

-- Location: IOIBUF_X54_Y54_N22
\lig4~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_lig4,
	o => \lig4~input_o\);

-- Location: IOIBUF_X54_Y54_N15
\lig2~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_lig2,
	o => \lig2~input_o\);

-- Location: IOIBUF_X58_Y54_N29
\lig1~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_lig1,
	o => \lig1~input_o\);

-- Location: LCCOMB_X56_Y49_N4
\Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (\lig3~input_o\ & (!\lig4~input_o\ & (!\lig2~input_o\ & !\lig1~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lig3~input_o\,
	datab => \lig4~input_o\,
	datac => \lig2~input_o\,
	datad => \lig1~input_o\,
	combout => \Equal1~0_combout\);

-- Location: IOIBUF_X51_Y54_N22
\col2~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_col2,
	o => \col2~input_o\);

-- Location: LCCOMB_X56_Y48_N24
\Equal1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (!\col3~input_o\ & (\Equal1~0_combout\ & !\col2~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \col3~input_o\,
	datac => \Equal1~0_combout\,
	datad => \col2~input_o\,
	combout => \Equal1~1_combout\);

-- Location: LCCOMB_X56_Y48_N16
\Equal13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal13~0_combout\ = (\col1~input_o\ & (!\col4~input_o\ & \Equal1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \col1~input_o\,
	datac => \col4~input_o\,
	datad => \Equal1~1_combout\,
	combout => \Equal13~0_combout\);

-- Location: LCCOMB_X56_Y49_N30
\Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!\lig2~input_o\ & (\lig4~input_o\ & !\lig1~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lig2~input_o\,
	datac => \lig4~input_o\,
	datad => \lig1~input_o\,
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X56_Y48_N12
\Equal8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal8~0_combout\ = (!\col3~input_o\ & (!\col4~input_o\ & (!\col1~input_o\ & \col2~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \col3~input_o\,
	datab => \col4~input_o\,
	datac => \col1~input_o\,
	datad => \col2~input_o\,
	combout => \Equal8~0_combout\);

-- Location: LCCOMB_X56_Y49_N14
\touche~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \touche~22_combout\ = ((!\Equal1~0_combout\ & ((\lig3~input_o\) # (!\Equal0~1_combout\)))) # (!\Equal8~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lig3~input_o\,
	datab => \Equal1~0_combout\,
	datac => \Equal0~1_combout\,
	datad => \Equal8~0_combout\,
	combout => \touche~22_combout\);

-- Location: LCCOMB_X56_Y48_N0
\Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\col3~input_o\ & (!\lig3~input_o\ & !\col2~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \col3~input_o\,
	datac => \lig3~input_o\,
	datad => \col2~input_o\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X56_Y48_N8
\Equal12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal12~0_combout\ = (\col1~input_o\ & (!\col4~input_o\ & (\Equal0~1_combout\ & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \col1~input_o\,
	datab => \col4~input_o\,
	datac => \Equal0~1_combout\,
	datad => \Equal0~0_combout\,
	combout => \Equal12~0_combout\);

-- Location: LCCOMB_X56_Y49_N8
\Equal2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (\lig2~input_o\ & (!\lig4~input_o\ & !\lig1~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lig2~input_o\,
	datac => \lig4~input_o\,
	datad => \lig1~input_o\,
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X56_Y48_N14
\Equal14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal14~0_combout\ = (\col1~input_o\ & (\Equal0~0_combout\ & (!\col4~input_o\ & \Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \col1~input_o\,
	datab => \Equal0~0_combout\,
	datac => \col4~input_o\,
	datad => \Equal2~0_combout\,
	combout => \Equal14~0_combout\);

-- Location: LCCOMB_X56_Y49_N16
\Equal3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = (!\lig2~input_o\ & (!\lig4~input_o\ & \lig1~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lig2~input_o\,
	datac => \lig4~input_o\,
	datad => \lig1~input_o\,
	combout => \Equal3~0_combout\);

-- Location: LCCOMB_X57_Y48_N24
\Equal11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal11~0_combout\ = (\Equal8~0_combout\ & (!\lig3~input_o\ & \Equal3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal8~0_combout\,
	datac => \lig3~input_o\,
	datad => \Equal3~0_combout\,
	combout => \Equal11~0_combout\);

-- Location: LCCOMB_X56_Y48_N10
\touche~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \touche~23_combout\ = (\touche~22_combout\ & (!\Equal12~0_combout\ & (!\Equal14~0_combout\ & !\Equal11~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \touche~22_combout\,
	datab => \Equal12~0_combout\,
	datac => \Equal14~0_combout\,
	datad => \Equal11~0_combout\,
	combout => \touche~23_combout\);

-- Location: LCCOMB_X56_Y48_N28
\Equal5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal5~0_combout\ = (\col3~input_o\ & (!\col4~input_o\ & (!\col1~input_o\ & !\col2~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \col3~input_o\,
	datab => \col4~input_o\,
	datac => \col1~input_o\,
	datad => \col2~input_o\,
	combout => \Equal5~0_combout\);

-- Location: LCCOMB_X56_Y49_N26
\Equal6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal6~0_combout\ = (!\lig3~input_o\ & (\Equal2~0_combout\ & \Equal5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lig3~input_o\,
	datab => \Equal2~0_combout\,
	datac => \Equal5~0_combout\,
	combout => \Equal6~0_combout\);

-- Location: LCCOMB_X56_Y49_N2
\Equal7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal7~0_combout\ = (!\lig3~input_o\ & (\Equal5~0_combout\ & \Equal3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lig3~input_o\,
	datac => \Equal5~0_combout\,
	datad => \Equal3~0_combout\,
	combout => \Equal7~0_combout\);

-- Location: LCCOMB_X56_Y49_N22
\touche~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \touche~43_combout\ = ((!\Equal1~0_combout\ & ((\lig3~input_o\) # (!\Equal0~1_combout\)))) # (!\Equal5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~0_combout\,
	datab => \Equal1~0_combout\,
	datac => \Equal0~1_combout\,
	datad => \lig3~input_o\,
	combout => \touche~43_combout\);

-- Location: LCCOMB_X56_Y48_N6
\Equal3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal3~1_combout\ = (!\col1~input_o\ & (\Equal0~0_combout\ & (\col4~input_o\ & \Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \col1~input_o\,
	datab => \Equal0~0_combout\,
	datac => \col4~input_o\,
	datad => \Equal3~0_combout\,
	combout => \Equal3~1_combout\);

-- Location: LCCOMB_X56_Y48_N2
\touche~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \touche~20_combout\ = (\Equal3~1_combout\) # ((!\col1~input_o\ & (\Equal1~1_combout\ & \col4~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \col1~input_o\,
	datab => \Equal1~1_combout\,
	datac => \col4~input_o\,
	datad => \Equal3~1_combout\,
	combout => \touche~20_combout\);

-- Location: LCCOMB_X56_Y49_N28
\touche~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \touche~21_combout\ = (\Equal7~0_combout\) # ((!\Equal6~0_combout\ & ((\touche~20_combout\) # (!\touche~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal6~0_combout\,
	datab => \Equal7~0_combout\,
	datac => \touche~43_combout\,
	datad => \touche~20_combout\,
	combout => \touche~21_combout\);

-- Location: LCCOMB_X56_Y48_N20
\Equal8~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal8~1_combout\ = (!\lig3~input_o\ & \Equal8~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lig3~input_o\,
	datad => \Equal8~0_combout\,
	combout => \Equal8~1_combout\);

-- Location: LCCOMB_X57_Y48_N18
\touche~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \touche~24_combout\ = (\Equal8~1_combout\ & (!\Equal3~0_combout\ & (\Equal2~0_combout\ & !\Equal12~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal8~1_combout\,
	datab => \Equal3~0_combout\,
	datac => \Equal2~0_combout\,
	datad => \Equal12~0_combout\,
	combout => \touche~24_combout\);

-- Location: LCCOMB_X56_Y48_N22
\touche~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \touche~25_combout\ = (\touche~23_combout\ & ((\touche~21_combout\) # ((!\Equal14~0_combout\ & \touche~24_combout\)))) # (!\touche~23_combout\ & (!\Equal14~0_combout\ & ((\touche~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \touche~23_combout\,
	datab => \Equal14~0_combout\,
	datac => \touche~21_combout\,
	datad => \touche~24_combout\,
	combout => \touche~25_combout\);

-- Location: LCCOMB_X56_Y48_N26
\Equal15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal15~0_combout\ = (\col1~input_o\ & (\Equal0~0_combout\ & (!\col4~input_o\ & \Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \col1~input_o\,
	datab => \Equal0~0_combout\,
	datac => \col4~input_o\,
	datad => \Equal3~0_combout\,
	combout => \Equal15~0_combout\);

-- Location: LCCOMB_X57_Y48_N12
\touche~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \touche~26_combout\ = (\touche~25_combout\) # ((\Equal15~0_combout\) # ((\Equal13~0_combout\ & !\Equal14~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal13~0_combout\,
	datab => \touche~25_combout\,
	datac => \Equal15~0_combout\,
	datad => \Equal14~0_combout\,
	combout => \touche~26_combout\);

-- Location: LCCOMB_X56_Y49_N20
\touche~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \touche~32_combout\ = (\lig3~input_o\) # (((!\Equal2~0_combout\ & !\Equal3~0_combout\)) # (!\Equal5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lig3~input_o\,
	datab => \Equal2~0_combout\,
	datac => \Equal5~0_combout\,
	datad => \Equal3~0_combout\,
	combout => \touche~32_combout\);

-- Location: LCCOMB_X56_Y48_N18
\Equal2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~1_combout\ = (!\col1~input_o\ & (\Equal0~0_combout\ & (\col4~input_o\ & \Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \col1~input_o\,
	datab => \Equal0~0_combout\,
	datac => \col4~input_o\,
	datad => \Equal2~0_combout\,
	combout => \Equal2~1_combout\);

-- Location: LCCOMB_X56_Y49_N24
\touche~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \touche~30_combout\ = (\Equal5~0_combout\ & ((\Equal1~0_combout\) # ((\Equal0~1_combout\ & !\lig3~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~0_combout\,
	datab => \Equal1~0_combout\,
	datac => \Equal0~1_combout\,
	datad => \lig3~input_o\,
	combout => \touche~30_combout\);

-- Location: LCCOMB_X56_Y49_N10
\touche~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \touche~31_combout\ = (\touche~30_combout\ & (((!\Equal1~0_combout\)))) # (!\touche~30_combout\ & ((\Equal2~1_combout\) # ((\Equal3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~1_combout\,
	datab => \Equal3~1_combout\,
	datac => \Equal1~0_combout\,
	datad => \touche~30_combout\,
	combout => \touche~31_combout\);

-- Location: LCCOMB_X57_Y48_N6
\touche~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \touche~27_combout\ = (!\Equal15~0_combout\ & !\Equal14~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal15~0_combout\,
	datad => \Equal14~0_combout\,
	combout => \touche~27_combout\);

-- Location: LCCOMB_X57_Y48_N8
\touche~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \touche~28_combout\ = (\touche~27_combout\ & ((\Equal12~0_combout\) # ((\Equal11~0_combout\) # (\Equal13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal12~0_combout\,
	datab => \Equal11~0_combout\,
	datac => \Equal13~0_combout\,
	datad => \touche~27_combout\,
	combout => \touche~28_combout\);

-- Location: LCCOMB_X57_Y48_N10
\touche~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \touche~29_combout\ = (\touche~22_combout\ & (\touche~27_combout\ & ((!\Equal8~1_combout\) # (!\Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => \touche~22_combout\,
	datac => \Equal8~1_combout\,
	datad => \touche~27_combout\,
	combout => \touche~29_combout\);

-- Location: LCCOMB_X57_Y48_N4
\touche~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \touche~33_combout\ = (\touche~28_combout\) # ((\touche~29_combout\ & ((\touche~31_combout\) # (!\touche~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \touche~32_combout\,
	datab => \touche~31_combout\,
	datac => \touche~28_combout\,
	datad => \touche~29_combout\,
	combout => \touche~33_combout\);

-- Location: LCCOMB_X57_Y48_N16
\touche~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \touche~35_combout\ = (!\Equal12~0_combout\ & (((\lig3~input_o\) # (!\Equal3~0_combout\)) # (!\Equal8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal8~0_combout\,
	datab => \Equal3~0_combout\,
	datac => \lig3~input_o\,
	datad => \Equal12~0_combout\,
	combout => \touche~35_combout\);

-- Location: LCCOMB_X57_Y48_N26
\touche~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \touche~36_combout\ = (\touche~35_combout\ & (!\Equal7~0_combout\ & (!\Equal15~0_combout\ & \touche~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \touche~35_combout\,
	datab => \Equal7~0_combout\,
	datac => \Equal15~0_combout\,
	datad => \touche~22_combout\,
	combout => \touche~36_combout\);

-- Location: LCCOMB_X56_Y49_N0
\touche~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \touche~5_combout\ = (\lig3~input_o\ & (!\lig4~input_o\ & (!\lig2~input_o\ & !\lig1~input_o\))) # (!\lig3~input_o\ & ((\lig4~input_o\ & (!\lig2~input_o\ & !\lig1~input_o\)) # (!\lig4~input_o\ & (\lig2~input_o\ $ (\lig1~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lig3~input_o\,
	datab => \lig4~input_o\,
	datac => \lig2~input_o\,
	datad => \lig1~input_o\,
	combout => \touche~5_combout\);

-- Location: LCCOMB_X56_Y49_N18
\touche~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \touche~3_combout\ = (!\col1~input_o\ & \touche~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \col1~input_o\,
	datad => \touche~5_combout\,
	combout => \touche~3_combout\);

-- Location: LCCOMB_X56_Y48_N4
\touche~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \touche~44_combout\ = (!\col3~input_o\ & (\col4~input_o\ & (\touche~3_combout\ & !\col2~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \col3~input_o\,
	datab => \col4~input_o\,
	datac => \touche~3_combout\,
	datad => \col2~input_o\,
	combout => \touche~44_combout\);

-- Location: LCCOMB_X57_Y48_N22
\touche~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \touche~34_combout\ = (!\Equal15~0_combout\ & ((\Equal13~0_combout\) # ((\touche~24_combout\) # (\Equal14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal13~0_combout\,
	datab => \touche~24_combout\,
	datac => \Equal15~0_combout\,
	datad => \Equal14~0_combout\,
	combout => \touche~34_combout\);

-- Location: LCCOMB_X57_Y48_N20
\touche~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \touche~37_combout\ = (\touche~34_combout\) # ((\touche~36_combout\ & ((\touche~44_combout\) # (\Equal6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \touche~36_combout\,
	datab => \touche~44_combout\,
	datac => \touche~34_combout\,
	datad => \Equal6~0_combout\,
	combout => \touche~37_combout\);

-- Location: LCCOMB_X57_Y48_N2
\touche~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \touche~40_combout\ = (\lig3~input_o\) # (((!\Equal3~0_combout\ & !\Equal2~0_combout\)) # (!\Equal8~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lig3~input_o\,
	datab => \Equal3~0_combout\,
	datac => \Equal2~0_combout\,
	datad => \Equal8~0_combout\,
	combout => \touche~40_combout\);

-- Location: LCCOMB_X57_Y48_N28
\touche~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \touche~41_combout\ = (\Equal12~0_combout\) # ((\touche~40_combout\ & (\Equal1~0_combout\ & \Equal8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal12~0_combout\,
	datab => \touche~40_combout\,
	datac => \Equal1~0_combout\,
	datad => \Equal8~0_combout\,
	combout => \touche~41_combout\);

-- Location: LCCOMB_X57_Y48_N30
\touche~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \touche~38_combout\ = ((!\Equal2~0_combout\ & (!\Equal3~0_combout\ & !\Equal0~1_combout\))) # (!\Equal8~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => \Equal3~0_combout\,
	datac => \Equal8~1_combout\,
	datad => \Equal0~1_combout\,
	combout => \touche~38_combout\);

-- Location: LCCOMB_X56_Y49_N12
\touche~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \touche~15_combout\ = (\lig3~input_o\ & (!\lig4~input_o\ & (!\lig2~input_o\ & !\lig1~input_o\))) # (!\lig3~input_o\ & ((\lig4~input_o\ & (!\lig2~input_o\ & !\lig1~input_o\)) # (!\lig4~input_o\ & (\lig2~input_o\ $ (\lig1~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lig3~input_o\,
	datab => \lig4~input_o\,
	datac => \lig2~input_o\,
	datad => \lig1~input_o\,
	combout => \touche~15_combout\);

-- Location: LCCOMB_X56_Y49_N6
\touche~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \touche~13_combout\ = (!\col1~input_o\ & \touche~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \col1~input_o\,
	datad => \touche~15_combout\,
	combout => \touche~13_combout\);

-- Location: LCCOMB_X56_Y48_N30
\touche~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \touche~45_combout\ = (!\col2~input_o\ & (\col4~input_o\ & (!\col3~input_o\ & \touche~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \col2~input_o\,
	datab => \col4~input_o\,
	datac => \col3~input_o\,
	datad => \touche~13_combout\,
	combout => \touche~45_combout\);

-- Location: LCCOMB_X57_Y48_N0
\touche~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \touche~39_combout\ = (\touche~38_combout\ & (\touche~32_combout\ & ((\touche~45_combout\) # (!\touche~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \touche~38_combout\,
	datab => \touche~45_combout\,
	datac => \touche~43_combout\,
	datad => \touche~32_combout\,
	combout => \touche~39_combout\);

-- Location: LCCOMB_X57_Y48_N14
\touche~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \touche~42_combout\ = (\touche~27_combout\ & (!\Equal13~0_combout\ & ((\touche~41_combout\) # (\touche~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \touche~27_combout\,
	datab => \touche~41_combout\,
	datac => \Equal13~0_combout\,
	datad => \touche~39_combout\,
	combout => \touche~42_combout\);

-- Location: UNVM_X0_Y40_N40
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

ww_touche(0) <= \touche[0]~output_o\;

ww_touche(1) <= \touche[1]~output_o\;

ww_touche(2) <= \touche[2]~output_o\;

ww_touche(3) <= \touche[3]~output_o\;
END structure;


