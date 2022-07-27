-- Copyright (C) 2021  Intel Corporation. All rights reserved.
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
-- VERSION "Version 21.1.0 Build 842 10/21/2021 SJ Lite Edition"

-- DATE "07/27/2022 15:28:17"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
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

ENTITY 	Cafeteira IS
    PORT (
	i_b_cafe : IN std_logic;
	i_b_cafe_leite : IN std_logic;
	i_b_mocaccino : IN std_logic;
	i_b_tamanho : IN std_logic;
	i_b_acucar : IN std_logic;
	i_b_preparo : IN std_logic;
	i_b_reposicao : IN std_logic;
	i_s_reposicao : IN std_logic;
	i_b_rst : IN std_logic;
	i_clk : IN std_logic;
	i_s_agua : IN std_logic;
	i_s_temp : IN std_logic;
	o_l_cafe : OUT std_logic;
	o_l_cafe_leite : OUT std_logic;
	o_l_mocaccino : OUT std_logic;
	o_l_tamanho : OUT std_logic;
	o_l_acucar : OUT std_logic;
	o_l_reposicao : OUT std_logic;
	o_l_preparo : OUT std_logic;
	o_l_pronto : OUT std_logic;
	o_v_leite : OUT std_logic;
	o_v_cafe : OUT std_logic;
	o_v_chocolate : OUT std_logic;
	o_v_acucar : OUT std_logic;
	o_v_agua : OUT std_logic;
	o_display_0 : OUT std_logic_vector(0 TO 6);
	o_display_1 : OUT std_logic_vector(0 TO 6);
	o_display_2 : OUT std_logic_vector(0 TO 6);
	o_display_3 : OUT std_logic_vector(0 TO 6);
	o_l_agua : OUT std_logic;
	o_l_temp : OUT std_logic
	);
END Cafeteira;

-- Design Ports Information
-- i_b_cafe	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_b_cafe_leite	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_b_mocaccino	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_b_tamanho	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_b_acucar	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_b_preparo	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_s_reposicao	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_clk	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_l_cafe	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_l_cafe_leite	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_l_mocaccino	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_l_tamanho	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_l_acucar	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_l_reposicao	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_l_preparo	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_l_pronto	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_v_leite	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_v_cafe	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_v_chocolate	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_v_acucar	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_v_agua	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_display_0[6]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_display_0[5]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_display_0[4]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_display_0[3]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_display_0[2]	=>  Location: PIN_V11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_display_0[1]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_display_0[0]	=>  Location: PIN_H18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_display_1[6]	=>  Location: PIN_W18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_display_1[5]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_display_1[4]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_display_1[3]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_display_1[2]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_display_1[1]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_display_1[0]	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_display_2[6]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_display_2[5]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_display_2[4]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_display_2[3]	=>  Location: PIN_U3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_display_2[2]	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_display_2[1]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_display_2[0]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_display_3[6]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_display_3[5]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_display_3[4]	=>  Location: PIN_Y8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_display_3[3]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_display_3[2]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_display_3[1]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_display_3[0]	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_l_agua	=>  Location: PIN_W5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_l_temp	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_s_agua	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_s_temp	=>  Location: PIN_AA11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_b_reposicao	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_b_rst	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Cafeteira IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_i_b_cafe : std_logic;
SIGNAL ww_i_b_cafe_leite : std_logic;
SIGNAL ww_i_b_mocaccino : std_logic;
SIGNAL ww_i_b_tamanho : std_logic;
SIGNAL ww_i_b_acucar : std_logic;
SIGNAL ww_i_b_preparo : std_logic;
SIGNAL ww_i_b_reposicao : std_logic;
SIGNAL ww_i_s_reposicao : std_logic;
SIGNAL ww_i_b_rst : std_logic;
SIGNAL ww_i_clk : std_logic;
SIGNAL ww_i_s_agua : std_logic;
SIGNAL ww_i_s_temp : std_logic;
SIGNAL ww_o_l_cafe : std_logic;
SIGNAL ww_o_l_cafe_leite : std_logic;
SIGNAL ww_o_l_mocaccino : std_logic;
SIGNAL ww_o_l_tamanho : std_logic;
SIGNAL ww_o_l_acucar : std_logic;
SIGNAL ww_o_l_reposicao : std_logic;
SIGNAL ww_o_l_preparo : std_logic;
SIGNAL ww_o_l_pronto : std_logic;
SIGNAL ww_o_v_leite : std_logic;
SIGNAL ww_o_v_cafe : std_logic;
SIGNAL ww_o_v_chocolate : std_logic;
SIGNAL ww_o_v_acucar : std_logic;
SIGNAL ww_o_v_agua : std_logic;
SIGNAL ww_o_display_0 : std_logic_vector(0 TO 6);
SIGNAL ww_o_display_1 : std_logic_vector(0 TO 6);
SIGNAL ww_o_display_2 : std_logic_vector(0 TO 6);
SIGNAL ww_o_display_3 : std_logic_vector(0 TO 6);
SIGNAL ww_o_l_agua : std_logic;
SIGNAL ww_o_l_temp : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \i_b_cafe~input_o\ : std_logic;
SIGNAL \i_b_cafe_leite~input_o\ : std_logic;
SIGNAL \i_b_mocaccino~input_o\ : std_logic;
SIGNAL \i_b_tamanho~input_o\ : std_logic;
SIGNAL \i_b_acucar~input_o\ : std_logic;
SIGNAL \i_b_preparo~input_o\ : std_logic;
SIGNAL \i_s_reposicao~input_o\ : std_logic;
SIGNAL \i_clk~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \o_l_cafe~output_o\ : std_logic;
SIGNAL \o_l_cafe_leite~output_o\ : std_logic;
SIGNAL \o_l_mocaccino~output_o\ : std_logic;
SIGNAL \o_l_tamanho~output_o\ : std_logic;
SIGNAL \o_l_acucar~output_o\ : std_logic;
SIGNAL \o_l_reposicao~output_o\ : std_logic;
SIGNAL \o_l_preparo~output_o\ : std_logic;
SIGNAL \o_l_pronto~output_o\ : std_logic;
SIGNAL \o_v_leite~output_o\ : std_logic;
SIGNAL \o_v_cafe~output_o\ : std_logic;
SIGNAL \o_v_chocolate~output_o\ : std_logic;
SIGNAL \o_v_acucar~output_o\ : std_logic;
SIGNAL \o_v_agua~output_o\ : std_logic;
SIGNAL \o_display_0[6]~output_o\ : std_logic;
SIGNAL \o_display_0[5]~output_o\ : std_logic;
SIGNAL \o_display_0[4]~output_o\ : std_logic;
SIGNAL \o_display_0[3]~output_o\ : std_logic;
SIGNAL \o_display_0[2]~output_o\ : std_logic;
SIGNAL \o_display_0[1]~output_o\ : std_logic;
SIGNAL \o_display_0[0]~output_o\ : std_logic;
SIGNAL \o_display_1[6]~output_o\ : std_logic;
SIGNAL \o_display_1[5]~output_o\ : std_logic;
SIGNAL \o_display_1[4]~output_o\ : std_logic;
SIGNAL \o_display_1[3]~output_o\ : std_logic;
SIGNAL \o_display_1[2]~output_o\ : std_logic;
SIGNAL \o_display_1[1]~output_o\ : std_logic;
SIGNAL \o_display_1[0]~output_o\ : std_logic;
SIGNAL \o_display_2[6]~output_o\ : std_logic;
SIGNAL \o_display_2[5]~output_o\ : std_logic;
SIGNAL \o_display_2[4]~output_o\ : std_logic;
SIGNAL \o_display_2[3]~output_o\ : std_logic;
SIGNAL \o_display_2[2]~output_o\ : std_logic;
SIGNAL \o_display_2[1]~output_o\ : std_logic;
SIGNAL \o_display_2[0]~output_o\ : std_logic;
SIGNAL \o_display_3[6]~output_o\ : std_logic;
SIGNAL \o_display_3[5]~output_o\ : std_logic;
SIGNAL \o_display_3[4]~output_o\ : std_logic;
SIGNAL \o_display_3[3]~output_o\ : std_logic;
SIGNAL \o_display_3[2]~output_o\ : std_logic;
SIGNAL \o_display_3[1]~output_o\ : std_logic;
SIGNAL \o_display_3[0]~output_o\ : std_logic;
SIGNAL \o_l_agua~output_o\ : std_logic;
SIGNAL \o_l_temp~output_o\ : std_logic;
SIGNAL \i_b_reposicao~input_o\ : std_logic;
SIGNAL \i_b_rst~input_o\ : std_logic;
SIGNAL \o_l_reposicao$latch~combout\ : std_logic;
SIGNAL \i_s_agua~input_o\ : std_logic;
SIGNAL \i_s_temp~input_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_i_b_cafe <= i_b_cafe;
ww_i_b_cafe_leite <= i_b_cafe_leite;
ww_i_b_mocaccino <= i_b_mocaccino;
ww_i_b_tamanho <= i_b_tamanho;
ww_i_b_acucar <= i_b_acucar;
ww_i_b_preparo <= i_b_preparo;
ww_i_b_reposicao <= i_b_reposicao;
ww_i_s_reposicao <= i_s_reposicao;
ww_i_b_rst <= i_b_rst;
ww_i_clk <= i_clk;
ww_i_s_agua <= i_s_agua;
ww_i_s_temp <= i_s_temp;
o_l_cafe <= ww_o_l_cafe;
o_l_cafe_leite <= ww_o_l_cafe_leite;
o_l_mocaccino <= ww_o_l_mocaccino;
o_l_tamanho <= ww_o_l_tamanho;
o_l_acucar <= ww_o_l_acucar;
o_l_reposicao <= ww_o_l_reposicao;
o_l_preparo <= ww_o_l_preparo;
o_l_pronto <= ww_o_l_pronto;
o_v_leite <= ww_o_v_leite;
o_v_cafe <= ww_o_v_cafe;
o_v_chocolate <= ww_o_v_chocolate;
o_v_acucar <= ww_o_v_acucar;
o_v_agua <= ww_o_v_agua;
o_display_0 <= ww_o_display_0;
o_display_1 <= ww_o_display_1;
o_display_2 <= ww_o_display_2;
o_display_3 <= ww_o_display_3;
o_l_agua <= ww_o_l_agua;
o_l_temp <= ww_o_l_temp;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y52_N16
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

-- Location: IOOBUF_X54_Y54_N9
\o_l_cafe~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_l_cafe~output_o\);

-- Location: IOOBUF_X31_Y39_N16
\o_l_cafe_leite~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_l_cafe_leite~output_o\);

-- Location: IOOBUF_X69_Y54_N30
\o_l_mocaccino~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_l_mocaccino~output_o\);

-- Location: IOOBUF_X62_Y54_N30
\o_l_tamanho~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_l_tamanho~output_o\);

-- Location: IOOBUF_X46_Y54_N23
\o_l_acucar~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_l_acucar~output_o\);

-- Location: IOOBUF_X24_Y39_N2
\o_l_reposicao~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_l_reposicao$latch~combout\,
	devoe => ww_devoe,
	o => \o_l_reposicao~output_o\);

-- Location: IOOBUF_X62_Y0_N30
\o_l_preparo~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_l_preparo~output_o\);

-- Location: IOOBUF_X29_Y39_N16
\o_l_pronto~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_l_pronto~output_o\);

-- Location: IOOBUF_X49_Y0_N30
\o_v_leite~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_v_leite~output_o\);

-- Location: IOOBUF_X54_Y54_N2
\o_v_cafe~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_v_cafe~output_o\);

-- Location: IOOBUF_X29_Y0_N9
\o_v_chocolate~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_v_chocolate~output_o\);

-- Location: IOOBUF_X54_Y54_N23
\o_v_acucar~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_v_acucar~output_o\);

-- Location: IOOBUF_X78_Y43_N23
\o_v_agua~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_v_agua~output_o\);

-- Location: IOOBUF_X54_Y0_N23
\o_display_0[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_display_0[6]~output_o\);

-- Location: IOOBUF_X78_Y25_N9
\o_display_0[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_display_0[5]~output_o\);

-- Location: IOOBUF_X78_Y30_N9
\o_display_0[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_display_0[4]~output_o\);

-- Location: IOOBUF_X56_Y0_N9
\o_display_0[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_display_0[3]~output_o\);

-- Location: IOOBUF_X38_Y0_N30
\o_display_0[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_display_0[2]~output_o\);

-- Location: IOOBUF_X34_Y39_N9
\o_display_0[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_display_0[1]~output_o\);

-- Location: IOOBUF_X78_Y45_N16
\o_display_0[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_display_0[0]~output_o\);

-- Location: IOOBUF_X62_Y0_N9
\o_display_1[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_display_1[6]~output_o\);

-- Location: IOOBUF_X26_Y39_N30
\o_display_1[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_display_1[5]~output_o\);

-- Location: IOOBUF_X49_Y54_N9
\o_display_1[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_display_1[4]~output_o\);

-- Location: IOOBUF_X78_Y18_N2
\o_display_1[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_display_1[3]~output_o\);

-- Location: IOOBUF_X78_Y21_N23
\o_display_1[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_display_1[2]~output_o\);

-- Location: IOOBUF_X34_Y0_N2
\o_display_1[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_display_1[1]~output_o\);

-- Location: IOOBUF_X22_Y0_N9
\o_display_1[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_display_1[0]~output_o\);

-- Location: IOOBUF_X31_Y39_N2
\o_display_2[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_display_2[6]~output_o\);

-- Location: IOOBUF_X46_Y54_N30
\o_display_2[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_display_2[5]~output_o\);

-- Location: IOOBUF_X54_Y0_N16
\o_display_2[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_display_2[4]~output_o\);

-- Location: IOOBUF_X0_Y10_N2
\o_display_2[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_display_2[3]~output_o\);

-- Location: IOOBUF_X0_Y34_N2
\o_display_2[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_display_2[2]~output_o\);

-- Location: IOOBUF_X0_Y30_N16
\o_display_2[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_display_2[1]~output_o\);

-- Location: IOOBUF_X0_Y18_N16
\o_display_2[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_display_2[0]~output_o\);

-- Location: IOOBUF_X34_Y39_N30
\o_display_3[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_display_3[6]~output_o\);

-- Location: IOOBUF_X78_Y35_N16
\o_display_3[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_display_3[5]~output_o\);

-- Location: IOOBUF_X20_Y0_N2
\o_display_3[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_display_3[4]~output_o\);

-- Location: IOOBUF_X0_Y9_N2
\o_display_3[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_display_3[3]~output_o\);

-- Location: IOOBUF_X51_Y54_N23
\o_display_3[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_display_3[2]~output_o\);

-- Location: IOOBUF_X78_Y29_N9
\o_display_3[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_display_3[1]~output_o\);

-- Location: IOOBUF_X78_Y42_N2
\o_display_3[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_display_3[0]~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\o_l_agua~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i_s_agua~input_o\,
	devoe => ww_devoe,
	o => \o_l_agua~output_o\);

-- Location: IOOBUF_X40_Y0_N23
\o_l_temp~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i_s_temp~input_o\,
	devoe => ww_devoe,
	o => \o_l_temp~output_o\);

-- Location: IOIBUF_X26_Y39_N22
\i_b_reposicao~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_b_reposicao,
	o => \i_b_reposicao~input_o\);

-- Location: IOIBUF_X24_Y39_N22
\i_b_rst~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_b_rst,
	o => \i_b_rst~input_o\);

-- Location: LCCOMB_X25_Y38_N0
\o_l_reposicao$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \o_l_reposicao$latch~combout\ = (\i_b_rst~input_o\ & ((\o_l_reposicao$latch~combout\))) # (!\i_b_rst~input_o\ & (!\i_b_reposicao~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_b_reposicao~input_o\,
	datac => \i_b_rst~input_o\,
	datad => \o_l_reposicao$latch~combout\,
	combout => \o_l_reposicao$latch~combout\);

-- Location: IOIBUF_X14_Y0_N8
\i_s_agua~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_s_agua,
	o => \i_s_agua~input_o\);

-- Location: IOIBUF_X40_Y0_N8
\i_s_temp~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_s_temp,
	o => \i_s_temp~input_o\);

-- Location: IOIBUF_X78_Y43_N15
\i_b_cafe~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_b_cafe,
	o => \i_b_cafe~input_o\);

-- Location: IOIBUF_X74_Y54_N1
\i_b_cafe_leite~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_b_cafe_leite,
	o => \i_b_cafe_leite~input_o\);

-- Location: IOIBUF_X69_Y54_N22
\i_b_mocaccino~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_b_mocaccino,
	o => \i_b_mocaccino~input_o\);

-- Location: IOIBUF_X78_Y30_N22
\i_b_tamanho~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_b_tamanho,
	o => \i_b_tamanho~input_o\);

-- Location: IOIBUF_X78_Y18_N15
\i_b_acucar~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_b_acucar,
	o => \i_b_acucar~input_o\);

-- Location: IOIBUF_X58_Y0_N1
\i_b_preparo~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_b_preparo,
	o => \i_b_preparo~input_o\);

-- Location: IOIBUF_X20_Y39_N15
\i_s_reposicao~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_s_reposicao,
	o => \i_s_reposicao~input_o\);

-- Location: IOIBUF_X29_Y0_N29
\i_clk~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_clk,
	o => \i_clk~input_o\);

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

ww_o_l_cafe <= \o_l_cafe~output_o\;

ww_o_l_cafe_leite <= \o_l_cafe_leite~output_o\;

ww_o_l_mocaccino <= \o_l_mocaccino~output_o\;

ww_o_l_tamanho <= \o_l_tamanho~output_o\;

ww_o_l_acucar <= \o_l_acucar~output_o\;

ww_o_l_reposicao <= \o_l_reposicao~output_o\;

ww_o_l_preparo <= \o_l_preparo~output_o\;

ww_o_l_pronto <= \o_l_pronto~output_o\;

ww_o_v_leite <= \o_v_leite~output_o\;

ww_o_v_cafe <= \o_v_cafe~output_o\;

ww_o_v_chocolate <= \o_v_chocolate~output_o\;

ww_o_v_acucar <= \o_v_acucar~output_o\;

ww_o_v_agua <= \o_v_agua~output_o\;

ww_o_display_0(6) <= \o_display_0[6]~output_o\;

ww_o_display_0(5) <= \o_display_0[5]~output_o\;

ww_o_display_0(4) <= \o_display_0[4]~output_o\;

ww_o_display_0(3) <= \o_display_0[3]~output_o\;

ww_o_display_0(2) <= \o_display_0[2]~output_o\;

ww_o_display_0(1) <= \o_display_0[1]~output_o\;

ww_o_display_0(0) <= \o_display_0[0]~output_o\;

ww_o_display_1(6) <= \o_display_1[6]~output_o\;

ww_o_display_1(5) <= \o_display_1[5]~output_o\;

ww_o_display_1(4) <= \o_display_1[4]~output_o\;

ww_o_display_1(3) <= \o_display_1[3]~output_o\;

ww_o_display_1(2) <= \o_display_1[2]~output_o\;

ww_o_display_1(1) <= \o_display_1[1]~output_o\;

ww_o_display_1(0) <= \o_display_1[0]~output_o\;

ww_o_display_2(6) <= \o_display_2[6]~output_o\;

ww_o_display_2(5) <= \o_display_2[5]~output_o\;

ww_o_display_2(4) <= \o_display_2[4]~output_o\;

ww_o_display_2(3) <= \o_display_2[3]~output_o\;

ww_o_display_2(2) <= \o_display_2[2]~output_o\;

ww_o_display_2(1) <= \o_display_2[1]~output_o\;

ww_o_display_2(0) <= \o_display_2[0]~output_o\;

ww_o_display_3(6) <= \o_display_3[6]~output_o\;

ww_o_display_3(5) <= \o_display_3[5]~output_o\;

ww_o_display_3(4) <= \o_display_3[4]~output_o\;

ww_o_display_3(3) <= \o_display_3[3]~output_o\;

ww_o_display_3(2) <= \o_display_3[2]~output_o\;

ww_o_display_3(1) <= \o_display_3[1]~output_o\;

ww_o_display_3(0) <= \o_display_3[0]~output_o\;

ww_o_l_agua <= \o_l_agua~output_o\;

ww_o_l_temp <= \o_l_temp~output_o\;
END structure;


