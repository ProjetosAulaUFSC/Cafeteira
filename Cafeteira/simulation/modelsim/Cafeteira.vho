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

-- DATE "07/29/2022 05:41:37"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
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
-- i_s_reposicao	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_l_cafe	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_l_cafe_leite	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_l_mocaccino	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_l_tamanho	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_l_acucar	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_l_reposicao	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_l_preparo	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_l_pronto	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_v_leite	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_v_cafe	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_v_chocolate	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_v_acucar	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_v_agua	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_display_0[6]	=>  Location: PIN_AB2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_display_0[5]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_display_0[4]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_display_0[3]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_display_0[2]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_display_0[1]	=>  Location: PIN_V22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_display_0[0]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_display_1[6]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_display_1[5]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_display_1[4]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_display_1[3]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_display_1[2]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_display_1[1]	=>  Location: PIN_W18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_display_1[0]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_display_2[6]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_display_2[5]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_display_2[4]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_display_2[3]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_display_2[2]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_display_2[1]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_display_2[0]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_display_3[6]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_display_3[5]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_display_3[4]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_display_3[3]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_display_3[2]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_display_3[1]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_display_3[0]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_l_agua	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_l_temp	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_s_agua	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_s_temp	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_b_cafe	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_b_rst	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_b_mocaccino	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_b_cafe_leite	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_b_reposicao	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_b_tamanho	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_b_acucar	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_clk	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_b_preparo	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \U01|altpll_component|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \U01|altpll_component|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \U01|altpll_component|auto_generated|locked~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \i_b_rst~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \i_s_reposicao~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_TDO~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \~ALTERA_TDO~~obuf_o\ : std_logic;
SIGNAL \i_b_rst~input_o\ : std_logic;
SIGNAL \i_b_rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \i_clk~input_o\ : std_logic;
SIGNAL \U01|altpll_component|auto_generated|wire_pll1_fbout\ : std_logic;
SIGNAL \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \i_b_cafe~input_o\ : std_logic;
SIGNAL \i_b_cafe_leite~input_o\ : std_logic;
SIGNAL \i_b_mocaccino~input_o\ : std_logic;
SIGNAL \i_b_reposicao~input_o\ : std_logic;
SIGNAL \w_state[1]~1_combout\ : std_logic;
SIGNAL \w_state[1]~3_combout\ : std_logic;
SIGNAL \w_state[0]~6_combout\ : std_logic;
SIGNAL \w_state[1]~_emulated_q\ : std_logic;
SIGNAL \w_state[1]~2_combout\ : std_logic;
SIGNAL \i_b_preparo~input_o\ : std_logic;
SIGNAL \w_state[0]~5_combout\ : std_logic;
SIGNAL \w_opt[1]~0_combout\ : std_logic;
SIGNAL \U06|Equal1~2_combout\ : std_logic;
SIGNAL \U06|Add4~0_combout\ : std_logic;
SIGNAL \U06|Add4~10_combout\ : std_logic;
SIGNAL \U07|w_counter[0]~24_combout\ : std_logic;
SIGNAL \U01|altpll_component|auto_generated|wire_pll1_locked\ : std_logic;
SIGNAL \U01|altpll_component|auto_generated|pll_lock_sync~feeder_combout\ : std_logic;
SIGNAL \U01|altpll_component|auto_generated|pll_lock_sync~q\ : std_logic;
SIGNAL \U01|altpll_component|auto_generated|locked~combout\ : std_logic;
SIGNAL \U01|altpll_component|auto_generated|locked~clkctrl_outclk\ : std_logic;
SIGNAL \U06|w_q_sec[1]~31_combout\ : std_logic;
SIGNAL \U06|w_n_cafe[0]~0_combout\ : std_logic;
SIGNAL \U06|Add0~1_cout\ : std_logic;
SIGNAL \U06|Add0~2_combout\ : std_logic;
SIGNAL \U06|w_n_acucar[31]~4_combout\ : std_logic;
SIGNAL \U06|Add0~3\ : std_logic;
SIGNAL \U06|Add0~4_combout\ : std_logic;
SIGNAL \U06|w_n_cafe[2]~1_combout\ : std_logic;
SIGNAL \U06|Add0~5\ : std_logic;
SIGNAL \U06|Add0~6_combout\ : std_logic;
SIGNAL \U06|Add0~7\ : std_logic;
SIGNAL \U06|Add0~8_combout\ : std_logic;
SIGNAL \U06|w_n_cafe[4]~2_combout\ : std_logic;
SIGNAL \U06|Add0~9\ : std_logic;
SIGNAL \U06|Add0~10_combout\ : std_logic;
SIGNAL \U06|Add0~11\ : std_logic;
SIGNAL \U06|Add0~12_combout\ : std_logic;
SIGNAL \U06|Add0~13\ : std_logic;
SIGNAL \U06|Add0~14_combout\ : std_logic;
SIGNAL \U06|Add0~15\ : std_logic;
SIGNAL \U06|Add0~16_combout\ : std_logic;
SIGNAL \U06|Add0~17\ : std_logic;
SIGNAL \U06|Add0~18_combout\ : std_logic;
SIGNAL \U06|Add0~19\ : std_logic;
SIGNAL \U06|Add0~20_combout\ : std_logic;
SIGNAL \U06|Add0~21\ : std_logic;
SIGNAL \U06|Add0~22_combout\ : std_logic;
SIGNAL \U06|Add0~23\ : std_logic;
SIGNAL \U06|Add0~24_combout\ : std_logic;
SIGNAL \U06|Add0~25\ : std_logic;
SIGNAL \U06|Add0~26_combout\ : std_logic;
SIGNAL \U06|Add0~27\ : std_logic;
SIGNAL \U06|Add0~28_combout\ : std_logic;
SIGNAL \U06|Add0~29\ : std_logic;
SIGNAL \U06|Add0~30_combout\ : std_logic;
SIGNAL \U06|Add0~31\ : std_logic;
SIGNAL \U06|Add0~32_combout\ : std_logic;
SIGNAL \U06|Add0~33\ : std_logic;
SIGNAL \U06|Add0~34_combout\ : std_logic;
SIGNAL \U06|Add0~35\ : std_logic;
SIGNAL \U06|Add0~36_combout\ : std_logic;
SIGNAL \U06|Add0~37\ : std_logic;
SIGNAL \U06|Add0~38_combout\ : std_logic;
SIGNAL \U06|Add0~39\ : std_logic;
SIGNAL \U06|Add0~40_combout\ : std_logic;
SIGNAL \U06|Add0~41\ : std_logic;
SIGNAL \U06|Add0~42_combout\ : std_logic;
SIGNAL \U06|Add0~43\ : std_logic;
SIGNAL \U06|Add0~44_combout\ : std_logic;
SIGNAL \U06|Add0~45\ : std_logic;
SIGNAL \U06|Add0~46_combout\ : std_logic;
SIGNAL \U06|Add0~47\ : std_logic;
SIGNAL \U06|Add0~48_combout\ : std_logic;
SIGNAL \U06|Add0~49\ : std_logic;
SIGNAL \U06|Add0~50_combout\ : std_logic;
SIGNAL \U06|Add0~51\ : std_logic;
SIGNAL \U06|Add0~52_combout\ : std_logic;
SIGNAL \U06|Add0~53\ : std_logic;
SIGNAL \U06|Add0~54_combout\ : std_logic;
SIGNAL \U06|LessThan0~7_combout\ : std_logic;
SIGNAL \U06|Add0~55\ : std_logic;
SIGNAL \U06|Add0~56_combout\ : std_logic;
SIGNAL \U06|Add0~57\ : std_logic;
SIGNAL \U06|Add0~58_combout\ : std_logic;
SIGNAL \U06|Add0~59\ : std_logic;
SIGNAL \U06|Add0~60_combout\ : std_logic;
SIGNAL \U06|LessThan0~8_combout\ : std_logic;
SIGNAL \U06|LessThan0~6_combout\ : std_logic;
SIGNAL \U06|LessThan0~5_combout\ : std_logic;
SIGNAL \U06|LessThan0~0_combout\ : std_logic;
SIGNAL \U06|LessThan0~1_combout\ : std_logic;
SIGNAL \U06|LessThan0~2_combout\ : std_logic;
SIGNAL \U06|LessThan0~3_combout\ : std_logic;
SIGNAL \U06|LessThan0~4_combout\ : std_logic;
SIGNAL \U06|LessThan0~9_combout\ : std_logic;
SIGNAL \U06|o_f_preparo~2_combout\ : std_logic;
SIGNAL \Mux17~0_combout\ : std_logic;
SIGNAL \w_opt[0]~1_combout\ : std_logic;
SIGNAL \U06|w_n_chocolate[31]~0_combout\ : std_logic;
SIGNAL \U06|w_n_chocolate[0]~1_combout\ : std_logic;
SIGNAL \U06|Add2~1_cout\ : std_logic;
SIGNAL \U06|Add2~2_combout\ : std_logic;
SIGNAL \U06|Add2~3\ : std_logic;
SIGNAL \U06|Add2~4_combout\ : std_logic;
SIGNAL \U06|w_n_chocolate[2]~2_combout\ : std_logic;
SIGNAL \U06|Add2~5\ : std_logic;
SIGNAL \U06|Add2~6_combout\ : std_logic;
SIGNAL \U06|Add2~7\ : std_logic;
SIGNAL \U06|Add2~8_combout\ : std_logic;
SIGNAL \U06|w_n_chocolate[4]~3_combout\ : std_logic;
SIGNAL \U06|Add2~9\ : std_logic;
SIGNAL \U06|Add2~10_combout\ : std_logic;
SIGNAL \U06|Add2~11\ : std_logic;
SIGNAL \U06|Add2~12_combout\ : std_logic;
SIGNAL \U06|Add2~13\ : std_logic;
SIGNAL \U06|Add2~14_combout\ : std_logic;
SIGNAL \U06|Add2~15\ : std_logic;
SIGNAL \U06|Add2~16_combout\ : std_logic;
SIGNAL \U06|Add2~17\ : std_logic;
SIGNAL \U06|Add2~18_combout\ : std_logic;
SIGNAL \U06|Add2~19\ : std_logic;
SIGNAL \U06|Add2~20_combout\ : std_logic;
SIGNAL \U06|Add2~21\ : std_logic;
SIGNAL \U06|Add2~22_combout\ : std_logic;
SIGNAL \U06|Add2~23\ : std_logic;
SIGNAL \U06|Add2~24_combout\ : std_logic;
SIGNAL \U06|Add2~25\ : std_logic;
SIGNAL \U06|Add2~26_combout\ : std_logic;
SIGNAL \U06|Add2~27\ : std_logic;
SIGNAL \U06|Add2~28_combout\ : std_logic;
SIGNAL \U06|Add2~29\ : std_logic;
SIGNAL \U06|Add2~30_combout\ : std_logic;
SIGNAL \U06|Add2~31\ : std_logic;
SIGNAL \U06|Add2~32_combout\ : std_logic;
SIGNAL \U06|Add2~33\ : std_logic;
SIGNAL \U06|Add2~34_combout\ : std_logic;
SIGNAL \U06|Add2~35\ : std_logic;
SIGNAL \U06|Add2~36_combout\ : std_logic;
SIGNAL \U06|Add2~37\ : std_logic;
SIGNAL \U06|Add2~38_combout\ : std_logic;
SIGNAL \U06|Add2~39\ : std_logic;
SIGNAL \U06|Add2~40_combout\ : std_logic;
SIGNAL \U06|Add2~41\ : std_logic;
SIGNAL \U06|Add2~42_combout\ : std_logic;
SIGNAL \U06|Add2~43\ : std_logic;
SIGNAL \U06|Add2~44_combout\ : std_logic;
SIGNAL \U06|Add2~45\ : std_logic;
SIGNAL \U06|Add2~46_combout\ : std_logic;
SIGNAL \U06|Add2~47\ : std_logic;
SIGNAL \U06|Add2~48_combout\ : std_logic;
SIGNAL \U06|Add2~49\ : std_logic;
SIGNAL \U06|Add2~50_combout\ : std_logic;
SIGNAL \U06|Add2~51\ : std_logic;
SIGNAL \U06|Add2~52_combout\ : std_logic;
SIGNAL \U06|Add2~53\ : std_logic;
SIGNAL \U06|Add2~54_combout\ : std_logic;
SIGNAL \U06|Add2~55\ : std_logic;
SIGNAL \U06|Add2~56_combout\ : std_logic;
SIGNAL \U06|LessThan2~7_combout\ : std_logic;
SIGNAL \U06|Add2~57\ : std_logic;
SIGNAL \U06|Add2~58_combout\ : std_logic;
SIGNAL \U06|Add2~59\ : std_logic;
SIGNAL \U06|Add2~60_combout\ : std_logic;
SIGNAL \U06|LessThan2~8_combout\ : std_logic;
SIGNAL \U06|LessThan2~3_combout\ : std_logic;
SIGNAL \U06|LessThan2~0_combout\ : std_logic;
SIGNAL \U06|LessThan2~1_combout\ : std_logic;
SIGNAL \U06|LessThan2~2_combout\ : std_logic;
SIGNAL \U06|LessThan2~4_combout\ : std_logic;
SIGNAL \U06|LessThan2~5_combout\ : std_logic;
SIGNAL \U06|LessThan2~6_combout\ : std_logic;
SIGNAL \U06|LessThan2~9_combout\ : std_logic;
SIGNAL \U06|Add1~45\ : std_logic;
SIGNAL \U06|Add1~46_combout\ : std_logic;
SIGNAL \U06|Add1~47\ : std_logic;
SIGNAL \U06|Add1~48_combout\ : std_logic;
SIGNAL \U06|Add1~49\ : std_logic;
SIGNAL \U06|Add1~50_combout\ : std_logic;
SIGNAL \U06|Add1~51\ : std_logic;
SIGNAL \U06|Add1~52_combout\ : std_logic;
SIGNAL \U06|Add1~53\ : std_logic;
SIGNAL \U06|Add1~54_combout\ : std_logic;
SIGNAL \U06|Add1~55\ : std_logic;
SIGNAL \U06|Add1~56_combout\ : std_logic;
SIGNAL \U06|Add1~57\ : std_logic;
SIGNAL \U06|Add1~58_combout\ : std_logic;
SIGNAL \U06|Add1~59\ : std_logic;
SIGNAL \U06|Add1~60_combout\ : std_logic;
SIGNAL \U06|Add1~61\ : std_logic;
SIGNAL \U06|Add1~62_combout\ : std_logic;
SIGNAL \U06|Add0~61\ : std_logic;
SIGNAL \U06|Add0~62_combout\ : std_logic;
SIGNAL \U06|Add2~61\ : std_logic;
SIGNAL \U06|Add2~62_combout\ : std_logic;
SIGNAL \i_b_acucar~input_o\ : std_logic;
SIGNAL \w_tamanho~0_combout\ : std_logic;
SIGNAL \w_acucar~0_combout\ : std_logic;
SIGNAL \w_acucar~q\ : std_logic;
SIGNAL \U06|w_n_acucar[0]~3_combout\ : std_logic;
SIGNAL \U06|Add3~1_cout\ : std_logic;
SIGNAL \U06|Add3~2_combout\ : std_logic;
SIGNAL \U06|w_n_acucar[31]~2_combout\ : std_logic;
SIGNAL \U06|Add3~3\ : std_logic;
SIGNAL \U06|Add3~4_combout\ : std_logic;
SIGNAL \U06|w_n_acucar[2]~5_combout\ : std_logic;
SIGNAL \U06|Add3~5\ : std_logic;
SIGNAL \U06|Add3~6_combout\ : std_logic;
SIGNAL \U06|Add3~7\ : std_logic;
SIGNAL \U06|Add3~8_combout\ : std_logic;
SIGNAL \U06|w_n_acucar[4]~6_combout\ : std_logic;
SIGNAL \U06|Add3~9\ : std_logic;
SIGNAL \U06|Add3~10_combout\ : std_logic;
SIGNAL \U06|Add3~11\ : std_logic;
SIGNAL \U06|Add3~12_combout\ : std_logic;
SIGNAL \U06|Add3~13\ : std_logic;
SIGNAL \U06|Add3~14_combout\ : std_logic;
SIGNAL \U06|Add3~15\ : std_logic;
SIGNAL \U06|Add3~16_combout\ : std_logic;
SIGNAL \U06|Add3~17\ : std_logic;
SIGNAL \U06|Add3~18_combout\ : std_logic;
SIGNAL \U06|Add3~19\ : std_logic;
SIGNAL \U06|Add3~20_combout\ : std_logic;
SIGNAL \U06|Add3~21\ : std_logic;
SIGNAL \U06|Add3~22_combout\ : std_logic;
SIGNAL \U06|Add3~23\ : std_logic;
SIGNAL \U06|Add3~24_combout\ : std_logic;
SIGNAL \U06|Add3~25\ : std_logic;
SIGNAL \U06|Add3~26_combout\ : std_logic;
SIGNAL \U06|Add3~27\ : std_logic;
SIGNAL \U06|Add3~28_combout\ : std_logic;
SIGNAL \U06|Add3~29\ : std_logic;
SIGNAL \U06|Add3~30_combout\ : std_logic;
SIGNAL \U06|Add3~31\ : std_logic;
SIGNAL \U06|Add3~32_combout\ : std_logic;
SIGNAL \U06|Add3~33\ : std_logic;
SIGNAL \U06|Add3~34_combout\ : std_logic;
SIGNAL \U06|Add3~35\ : std_logic;
SIGNAL \U06|Add3~36_combout\ : std_logic;
SIGNAL \U06|Add3~37\ : std_logic;
SIGNAL \U06|Add3~38_combout\ : std_logic;
SIGNAL \U06|Add3~39\ : std_logic;
SIGNAL \U06|Add3~40_combout\ : std_logic;
SIGNAL \U06|Add3~41\ : std_logic;
SIGNAL \U06|Add3~42_combout\ : std_logic;
SIGNAL \U06|Add3~43\ : std_logic;
SIGNAL \U06|Add3~44_combout\ : std_logic;
SIGNAL \U06|Add3~45\ : std_logic;
SIGNAL \U06|Add3~46_combout\ : std_logic;
SIGNAL \U06|Add3~47\ : std_logic;
SIGNAL \U06|Add3~48_combout\ : std_logic;
SIGNAL \U06|Add3~49\ : std_logic;
SIGNAL \U06|Add3~50_combout\ : std_logic;
SIGNAL \U06|Add3~51\ : std_logic;
SIGNAL \U06|Add3~52_combout\ : std_logic;
SIGNAL \U06|Add3~53\ : std_logic;
SIGNAL \U06|Add3~54_combout\ : std_logic;
SIGNAL \U06|Add3~55\ : std_logic;
SIGNAL \U06|Add3~56_combout\ : std_logic;
SIGNAL \U06|Add3~57\ : std_logic;
SIGNAL \U06|Add3~58_combout\ : std_logic;
SIGNAL \U06|Add3~59\ : std_logic;
SIGNAL \U06|Add3~60_combout\ : std_logic;
SIGNAL \U06|Add3~61\ : std_logic;
SIGNAL \U06|Add3~62_combout\ : std_logic;
SIGNAL \U06|preparo~2_combout\ : std_logic;
SIGNAL \U06|LessThan3~2_combout\ : std_logic;
SIGNAL \U06|LessThan3~3_combout\ : std_logic;
SIGNAL \U06|LessThan3~0_combout\ : std_logic;
SIGNAL \U06|LessThan3~1_combout\ : std_logic;
SIGNAL \U06|LessThan3~4_combout\ : std_logic;
SIGNAL \U06|LessThan3~7_combout\ : std_logic;
SIGNAL \U06|LessThan3~6_combout\ : std_logic;
SIGNAL \U06|LessThan3~8_combout\ : std_logic;
SIGNAL \U06|LessThan3~5_combout\ : std_logic;
SIGNAL \U06|LessThan3~9_combout\ : std_logic;
SIGNAL \U06|preparo~3_combout\ : std_logic;
SIGNAL \U06|o_f_preparo~3_combout\ : std_logic;
SIGNAL \U06|w_f_pisca[31]~2_combout\ : std_logic;
SIGNAL \U06|w_f_sec~0_combout\ : std_logic;
SIGNAL \U06|w_q_sec[31]~42_combout\ : std_logic;
SIGNAL \U06|w_q_sec[1]~32\ : std_logic;
SIGNAL \U06|w_q_sec[2]~33_combout\ : std_logic;
SIGNAL \U06|w_q_sec[2]~34\ : std_logic;
SIGNAL \U06|w_q_sec[3]~35_combout\ : std_logic;
SIGNAL \U06|w_q_sec[3]~36\ : std_logic;
SIGNAL \U06|w_q_sec[4]~37_combout\ : std_logic;
SIGNAL \U06|preparo~0_combout\ : std_logic;
SIGNAL \U06|w_q_sec[4]~38\ : std_logic;
SIGNAL \U06|w_q_sec[5]~39_combout\ : std_logic;
SIGNAL \i_b_tamanho~input_o\ : std_logic;
SIGNAL \w_tamanho~1_combout\ : std_logic;
SIGNAL \w_tamanho~q\ : std_logic;
SIGNAL \U06|preparo~1_combout\ : std_logic;
SIGNAL \U06|w_q_sec[5]~40\ : std_logic;
SIGNAL \U06|w_q_sec[6]~43_combout\ : std_logic;
SIGNAL \U06|w_q_sec[6]~44\ : std_logic;
SIGNAL \U06|w_q_sec[7]~45_combout\ : std_logic;
SIGNAL \U06|w_q_sec[7]~46\ : std_logic;
SIGNAL \U06|w_q_sec[8]~47_combout\ : std_logic;
SIGNAL \U06|w_q_sec[8]~48\ : std_logic;
SIGNAL \U06|w_q_sec[9]~49_combout\ : std_logic;
SIGNAL \U06|w_q_sec[9]~50\ : std_logic;
SIGNAL \U06|w_q_sec[10]~51_combout\ : std_logic;
SIGNAL \U06|w_q_sec[10]~52\ : std_logic;
SIGNAL \U06|w_q_sec[11]~53_combout\ : std_logic;
SIGNAL \U06|w_q_sec[11]~54\ : std_logic;
SIGNAL \U06|w_q_sec[12]~55_combout\ : std_logic;
SIGNAL \U06|w_q_sec[12]~56\ : std_logic;
SIGNAL \U06|w_q_sec[13]~57_combout\ : std_logic;
SIGNAL \U06|w_q_sec[13]~58\ : std_logic;
SIGNAL \U06|w_q_sec[14]~59_combout\ : std_logic;
SIGNAL \U06|w_q_sec[14]~60\ : std_logic;
SIGNAL \U06|w_q_sec[15]~61_combout\ : std_logic;
SIGNAL \U06|w_q_sec[15]~62\ : std_logic;
SIGNAL \U06|w_q_sec[16]~63_combout\ : std_logic;
SIGNAL \U06|w_q_sec[16]~64\ : std_logic;
SIGNAL \U06|w_q_sec[17]~65_combout\ : std_logic;
SIGNAL \U06|w_q_sec[17]~66\ : std_logic;
SIGNAL \U06|w_q_sec[18]~67_combout\ : std_logic;
SIGNAL \U06|w_q_sec[18]~68\ : std_logic;
SIGNAL \U06|w_q_sec[19]~69_combout\ : std_logic;
SIGNAL \U06|w_q_sec[19]~70\ : std_logic;
SIGNAL \U06|w_q_sec[20]~71_combout\ : std_logic;
SIGNAL \U06|w_q_sec[20]~72\ : std_logic;
SIGNAL \U06|w_q_sec[21]~73_combout\ : std_logic;
SIGNAL \U06|w_q_sec[21]~74\ : std_logic;
SIGNAL \U06|w_q_sec[22]~75_combout\ : std_logic;
SIGNAL \U06|w_q_sec[22]~76\ : std_logic;
SIGNAL \U06|w_q_sec[23]~77_combout\ : std_logic;
SIGNAL \U06|w_q_sec[23]~78\ : std_logic;
SIGNAL \U06|w_q_sec[24]~79_combout\ : std_logic;
SIGNAL \U06|w_q_sec[24]~80\ : std_logic;
SIGNAL \U06|w_q_sec[25]~81_combout\ : std_logic;
SIGNAL \U06|w_q_sec[25]~82\ : std_logic;
SIGNAL \U06|w_q_sec[26]~83_combout\ : std_logic;
SIGNAL \U06|w_q_sec[26]~84\ : std_logic;
SIGNAL \U06|w_q_sec[27]~85_combout\ : std_logic;
SIGNAL \U06|w_q_sec[27]~86\ : std_logic;
SIGNAL \U06|w_q_sec[28]~87_combout\ : std_logic;
SIGNAL \U06|w_q_sec[28]~88\ : std_logic;
SIGNAL \U06|w_q_sec[29]~89_combout\ : std_logic;
SIGNAL \U06|w_q_sec[29]~90\ : std_logic;
SIGNAL \U06|w_q_sec[30]~91_combout\ : std_logic;
SIGNAL \U06|LessThan4~6_combout\ : std_logic;
SIGNAL \U06|LessThan4~0_combout\ : std_logic;
SIGNAL \U06|LessThan4~2_combout\ : std_logic;
SIGNAL \U06|LessThan4~1_combout\ : std_logic;
SIGNAL \U06|LessThan4~3_combout\ : std_logic;
SIGNAL \U06|LessThan4~4_combout\ : std_logic;
SIGNAL \U06|LessThan4~5_combout\ : std_logic;
SIGNAL \U06|LessThan4~7_combout\ : std_logic;
SIGNAL \U06|Equal1~1_combout\ : std_logic;
SIGNAL \U06|w_q_sec[30]~92\ : std_logic;
SIGNAL \U06|w_q_sec[31]~93_combout\ : std_logic;
SIGNAL \U06|o_f_preparo~0_combout\ : std_logic;
SIGNAL \U06|w_start~0_combout\ : std_logic;
SIGNAL \U06|w_start~1_combout\ : std_logic;
SIGNAL \U06|o_f_pronto~2_combout\ : std_logic;
SIGNAL \U06|w_start~2_combout\ : std_logic;
SIGNAL \U06|w_start~q\ : std_logic;
SIGNAL \U06|w_clear~q\ : std_logic;
SIGNAL \U07|w_counter[3]~72_combout\ : std_logic;
SIGNAL \U07|w_counter[0]~25\ : std_logic;
SIGNAL \U07|w_counter[1]~26_combout\ : std_logic;
SIGNAL \U07|w_counter[1]~27\ : std_logic;
SIGNAL \U07|w_counter[2]~28_combout\ : std_logic;
SIGNAL \U07|w_counter[2]~29\ : std_logic;
SIGNAL \U07|w_counter[3]~30_combout\ : std_logic;
SIGNAL \U07|w_counter[3]~31\ : std_logic;
SIGNAL \U07|w_counter[4]~32_combout\ : std_logic;
SIGNAL \U07|w_counter[4]~33\ : std_logic;
SIGNAL \U07|w_counter[5]~34_combout\ : std_logic;
SIGNAL \U07|w_counter[5]~35\ : std_logic;
SIGNAL \U07|w_counter[6]~36_combout\ : std_logic;
SIGNAL \U07|w_counter[6]~37\ : std_logic;
SIGNAL \U07|w_counter[7]~38_combout\ : std_logic;
SIGNAL \U07|w_counter[7]~39\ : std_logic;
SIGNAL \U07|w_counter[8]~40_combout\ : std_logic;
SIGNAL \U07|w_counter[8]~41\ : std_logic;
SIGNAL \U07|w_counter[9]~42_combout\ : std_logic;
SIGNAL \U07|w_counter[9]~43\ : std_logic;
SIGNAL \U07|w_counter[10]~44_combout\ : std_logic;
SIGNAL \U07|w_counter[10]~45\ : std_logic;
SIGNAL \U07|w_counter[11]~46_combout\ : std_logic;
SIGNAL \U07|w_counter[11]~47\ : std_logic;
SIGNAL \U07|w_counter[12]~48_combout\ : std_logic;
SIGNAL \U07|w_counter[12]~49\ : std_logic;
SIGNAL \U07|w_counter[13]~50_combout\ : std_logic;
SIGNAL \U07|w_counter[13]~51\ : std_logic;
SIGNAL \U07|w_counter[14]~52_combout\ : std_logic;
SIGNAL \U07|w_counter[14]~53\ : std_logic;
SIGNAL \U07|w_counter[15]~54_combout\ : std_logic;
SIGNAL \U07|w_counter[15]~55\ : std_logic;
SIGNAL \U07|w_counter[16]~56_combout\ : std_logic;
SIGNAL \U06|LessThan9~0_combout\ : std_logic;
SIGNAL \U06|LessThan9~1_combout\ : std_logic;
SIGNAL \U06|LessThan9~2_combout\ : std_logic;
SIGNAL \U06|LessThan9~3_combout\ : std_logic;
SIGNAL \U06|LessThan9~4_combout\ : std_logic;
SIGNAL \U06|LessThan9~5_combout\ : std_logic;
SIGNAL \U07|w_counter[16]~57\ : std_logic;
SIGNAL \U07|w_counter[17]~58_combout\ : std_logic;
SIGNAL \U07|w_counter[17]~59\ : std_logic;
SIGNAL \U07|w_counter[18]~60_combout\ : std_logic;
SIGNAL \U07|w_counter[18]~61\ : std_logic;
SIGNAL \U07|w_counter[19]~62_combout\ : std_logic;
SIGNAL \U07|w_counter[19]~63\ : std_logic;
SIGNAL \U07|w_counter[20]~64_combout\ : std_logic;
SIGNAL \U07|w_counter[20]~65\ : std_logic;
SIGNAL \U07|w_counter[21]~66_combout\ : std_logic;
SIGNAL \U07|w_counter[21]~67\ : std_logic;
SIGNAL \U07|w_counter[22]~68_combout\ : std_logic;
SIGNAL \U07|w_counter[22]~69\ : std_logic;
SIGNAL \U07|w_counter[23]~70_combout\ : std_logic;
SIGNAL \U06|LessThan9~6_combout\ : std_logic;
SIGNAL \U06|LessThan9~7_combout\ : std_logic;
SIGNAL \U06|w_q_sec[31]~41_combout\ : std_logic;
SIGNAL \U06|w_q_sec[0]~95_combout\ : std_logic;
SIGNAL \U06|preparo~5_combout\ : std_logic;
SIGNAL \U06|LessThan4~8_combout\ : std_logic;
SIGNAL \U06|preparo~6_combout\ : std_logic;
SIGNAL \U06|Add4~3\ : std_logic;
SIGNAL \U06|Add4~4_combout\ : std_logic;
SIGNAL \U06|Add4~12_combout\ : std_logic;
SIGNAL \U06|Add4~5\ : std_logic;
SIGNAL \U06|Add4~6_combout\ : std_logic;
SIGNAL \U06|Add4~13_combout\ : std_logic;
SIGNAL \U06|Add4~7\ : std_logic;
SIGNAL \U06|Add4~8_combout\ : std_logic;
SIGNAL \U06|w_f_pisca[4]~4_combout\ : std_logic;
SIGNAL \U06|Add4~9\ : std_logic;
SIGNAL \U06|Add4~14_combout\ : std_logic;
SIGNAL \U06|w_f_pisca[5]~5_combout\ : std_logic;
SIGNAL \U06|Add4~15\ : std_logic;
SIGNAL \U06|Add4~16_combout\ : std_logic;
SIGNAL \U06|w_f_pisca[6]~6_combout\ : std_logic;
SIGNAL \U06|Add4~17\ : std_logic;
SIGNAL \U06|Add4~18_combout\ : std_logic;
SIGNAL \U06|w_f_pisca[7]~7_combout\ : std_logic;
SIGNAL \U06|Add4~19\ : std_logic;
SIGNAL \U06|Add4~20_combout\ : std_logic;
SIGNAL \U06|w_f_pisca[8]~8_combout\ : std_logic;
SIGNAL \U06|Add4~21\ : std_logic;
SIGNAL \U06|Add4~22_combout\ : std_logic;
SIGNAL \U06|w_f_pisca[9]~9_combout\ : std_logic;
SIGNAL \U06|Add4~23\ : std_logic;
SIGNAL \U06|Add4~24_combout\ : std_logic;
SIGNAL \U06|w_f_pisca[10]~10_combout\ : std_logic;
SIGNAL \U06|Add4~25\ : std_logic;
SIGNAL \U06|Add4~26_combout\ : std_logic;
SIGNAL \U06|w_f_pisca[11]~11_combout\ : std_logic;
SIGNAL \U06|Add4~27\ : std_logic;
SIGNAL \U06|Add4~28_combout\ : std_logic;
SIGNAL \U06|w_f_pisca[12]~12_combout\ : std_logic;
SIGNAL \U06|Add4~29\ : std_logic;
SIGNAL \U06|Add4~30_combout\ : std_logic;
SIGNAL \U06|w_f_pisca[13]~13_combout\ : std_logic;
SIGNAL \U06|Add4~31\ : std_logic;
SIGNAL \U06|Add4~32_combout\ : std_logic;
SIGNAL \U06|w_f_pisca[14]~14_combout\ : std_logic;
SIGNAL \U06|Add4~33\ : std_logic;
SIGNAL \U06|Add4~34_combout\ : std_logic;
SIGNAL \U06|w_f_pisca[15]~15_combout\ : std_logic;
SIGNAL \U06|Add4~35\ : std_logic;
SIGNAL \U06|Add4~36_combout\ : std_logic;
SIGNAL \U06|w_f_pisca[16]~16_combout\ : std_logic;
SIGNAL \U06|Add4~37\ : std_logic;
SIGNAL \U06|Add4~38_combout\ : std_logic;
SIGNAL \U06|w_f_pisca[17]~17_combout\ : std_logic;
SIGNAL \U06|Add4~39\ : std_logic;
SIGNAL \U06|Add4~40_combout\ : std_logic;
SIGNAL \U06|w_f_pisca[18]~18_combout\ : std_logic;
SIGNAL \U06|Add4~41\ : std_logic;
SIGNAL \U06|Add4~42_combout\ : std_logic;
SIGNAL \U06|w_f_pisca[19]~19_combout\ : std_logic;
SIGNAL \U06|Add4~43\ : std_logic;
SIGNAL \U06|Add4~44_combout\ : std_logic;
SIGNAL \U06|w_f_pisca[20]~20_combout\ : std_logic;
SIGNAL \U06|Add4~45\ : std_logic;
SIGNAL \U06|Add4~46_combout\ : std_logic;
SIGNAL \U06|w_f_pisca[21]~21_combout\ : std_logic;
SIGNAL \U06|Add4~47\ : std_logic;
SIGNAL \U06|Add4~48_combout\ : std_logic;
SIGNAL \U06|w_f_pisca[22]~22_combout\ : std_logic;
SIGNAL \U06|Add4~49\ : std_logic;
SIGNAL \U06|Add4~50_combout\ : std_logic;
SIGNAL \U06|w_f_pisca[23]~23_combout\ : std_logic;
SIGNAL \U06|Add4~51\ : std_logic;
SIGNAL \U06|Add4~52_combout\ : std_logic;
SIGNAL \U06|w_f_pisca[24]~24_combout\ : std_logic;
SIGNAL \U06|Add4~53\ : std_logic;
SIGNAL \U06|Add4~54_combout\ : std_logic;
SIGNAL \U06|w_f_pisca[25]~25_combout\ : std_logic;
SIGNAL \U06|Add4~55\ : std_logic;
SIGNAL \U06|Add4~56_combout\ : std_logic;
SIGNAL \U06|w_f_pisca[26]~26_combout\ : std_logic;
SIGNAL \U06|Add4~57\ : std_logic;
SIGNAL \U06|Add4~58_combout\ : std_logic;
SIGNAL \U06|w_f_pisca[27]~27_combout\ : std_logic;
SIGNAL \U06|Add4~59\ : std_logic;
SIGNAL \U06|Add4~60_combout\ : std_logic;
SIGNAL \U06|w_f_pisca[28]~28_combout\ : std_logic;
SIGNAL \U06|Add4~61\ : std_logic;
SIGNAL \U06|Add4~62_combout\ : std_logic;
SIGNAL \U06|w_f_pisca[29]~29_combout\ : std_logic;
SIGNAL \U06|Add4~63\ : std_logic;
SIGNAL \U06|Add4~64_combout\ : std_logic;
SIGNAL \U06|w_f_pisca[30]~30_combout\ : std_logic;
SIGNAL \U06|Add4~65\ : std_logic;
SIGNAL \U06|Add4~66_combout\ : std_logic;
SIGNAL \U06|w_f_pisca[31]~31_combout\ : std_logic;
SIGNAL \U06|w_f_etapa[1]~15_combout\ : std_logic;
SIGNAL \U06|w_f_etapa[1]~9_combout\ : std_logic;
SIGNAL \U06|w_f_etapa[1]~8_combout\ : std_logic;
SIGNAL \U06|w_f_etapa[1]~7_combout\ : std_logic;
SIGNAL \U06|w_f_etapa[1]~4_combout\ : std_logic;
SIGNAL \U06|w_f_etapa[1]~3_combout\ : std_logic;
SIGNAL \U06|w_f_etapa[1]~2_combout\ : std_logic;
SIGNAL \U06|w_f_etapa[1]~5_combout\ : std_logic;
SIGNAL \U06|w_f_etapa[1]~6_combout\ : std_logic;
SIGNAL \U06|w_f_etapa[1]~10_combout\ : std_logic;
SIGNAL \U06|w_f_etapa[1]~14_combout\ : std_logic;
SIGNAL \U06|w_f_etapa[1]~16_combout\ : std_logic;
SIGNAL \U06|w_f_pisca[31]~3_combout\ : std_logic;
SIGNAL \U06|w_f_pisca[31]~32_combout\ : std_logic;
SIGNAL \U06|Add4~1\ : std_logic;
SIGNAL \U06|Add4~2_combout\ : std_logic;
SIGNAL \U06|Add4~11_combout\ : std_logic;
SIGNAL \U06|LessThan7~0_combout\ : std_logic;
SIGNAL \U06|LessThan7~1_combout\ : std_logic;
SIGNAL \U06|w_f_etapa[2]~11_combout\ : std_logic;
SIGNAL \U06|w_f_etapa[1]~18_combout\ : std_logic;
SIGNAL \U06|w_f_etapa[1]~17_combout\ : std_logic;
SIGNAL \U06|w_f_etapa[0]~12_combout\ : std_logic;
SIGNAL \U06|preparo~4_combout\ : std_logic;
SIGNAL \U06|w_f_etapa[0]~13_combout\ : std_logic;
SIGNAL \U06|w_f_etapa[0]~19_combout\ : std_logic;
SIGNAL \U06|w_f_etapa[2]~20_combout\ : std_logic;
SIGNAL \U06|o_f_pronto~4_combout\ : std_logic;
SIGNAL \U06|w_f_etapa[0]~21_combout\ : std_logic;
SIGNAL \U06|w_f_etapa[1]~22_combout\ : std_logic;
SIGNAL \U06|Equal1~0_combout\ : std_logic;
SIGNAL \U06|w_n_leite[31]~0_combout\ : std_logic;
SIGNAL \U06|w_n_leite[0]~1_combout\ : std_logic;
SIGNAL \U06|Add1~1_cout\ : std_logic;
SIGNAL \U06|Add1~2_combout\ : std_logic;
SIGNAL \U06|Add1~3\ : std_logic;
SIGNAL \U06|Add1~4_combout\ : std_logic;
SIGNAL \U06|w_n_leite[2]~2_combout\ : std_logic;
SIGNAL \U06|Add1~5\ : std_logic;
SIGNAL \U06|Add1~6_combout\ : std_logic;
SIGNAL \U06|Add1~7\ : std_logic;
SIGNAL \U06|Add1~8_combout\ : std_logic;
SIGNAL \U06|w_n_leite[4]~3_combout\ : std_logic;
SIGNAL \U06|Add1~9\ : std_logic;
SIGNAL \U06|Add1~10_combout\ : std_logic;
SIGNAL \U06|Add1~11\ : std_logic;
SIGNAL \U06|Add1~12_combout\ : std_logic;
SIGNAL \U06|Add1~13\ : std_logic;
SIGNAL \U06|Add1~14_combout\ : std_logic;
SIGNAL \U06|Add1~15\ : std_logic;
SIGNAL \U06|Add1~16_combout\ : std_logic;
SIGNAL \U06|Add1~17\ : std_logic;
SIGNAL \U06|Add1~18_combout\ : std_logic;
SIGNAL \U06|Add1~19\ : std_logic;
SIGNAL \U06|Add1~20_combout\ : std_logic;
SIGNAL \U06|Add1~21\ : std_logic;
SIGNAL \U06|Add1~22_combout\ : std_logic;
SIGNAL \U06|Add1~23\ : std_logic;
SIGNAL \U06|Add1~24_combout\ : std_logic;
SIGNAL \U06|Add1~25\ : std_logic;
SIGNAL \U06|Add1~26_combout\ : std_logic;
SIGNAL \U06|Add1~27\ : std_logic;
SIGNAL \U06|Add1~28_combout\ : std_logic;
SIGNAL \U06|Add1~29\ : std_logic;
SIGNAL \U06|Add1~30_combout\ : std_logic;
SIGNAL \U06|Add1~31\ : std_logic;
SIGNAL \U06|Add1~32_combout\ : std_logic;
SIGNAL \U06|Add1~33\ : std_logic;
SIGNAL \U06|Add1~34_combout\ : std_logic;
SIGNAL \U06|Add1~35\ : std_logic;
SIGNAL \U06|Add1~36_combout\ : std_logic;
SIGNAL \U06|Add1~37\ : std_logic;
SIGNAL \U06|Add1~38_combout\ : std_logic;
SIGNAL \U06|Add1~39\ : std_logic;
SIGNAL \U06|Add1~40_combout\ : std_logic;
SIGNAL \U06|Add1~41\ : std_logic;
SIGNAL \U06|Add1~42_combout\ : std_logic;
SIGNAL \U06|Add1~43\ : std_logic;
SIGNAL \U06|Add1~44_combout\ : std_logic;
SIGNAL \U06|LessThan1~6_combout\ : std_logic;
SIGNAL \U06|LessThan1~7_combout\ : std_logic;
SIGNAL \U06|LessThan1~8_combout\ : std_logic;
SIGNAL \U06|LessThan1~5_combout\ : std_logic;
SIGNAL \U06|LessThan1~0_combout\ : std_logic;
SIGNAL \U06|LessThan1~1_combout\ : std_logic;
SIGNAL \U06|LessThan1~3_combout\ : std_logic;
SIGNAL \U06|LessThan1~2_combout\ : std_logic;
SIGNAL \U06|LessThan1~4_combout\ : std_logic;
SIGNAL \U06|LessThan1~9_combout\ : std_logic;
SIGNAL \U06|Equal0~0_combout\ : std_logic;
SIGNAL \U06|o_f_repo~0_combout\ : std_logic;
SIGNAL \U06|o_f_repo~1_combout\ : std_logic;
SIGNAL \U06|o_f_repo~q\ : std_logic;
SIGNAL \o_l_cafe~0_combout\ : std_logic;
SIGNAL \o_l_cafe~1_combout\ : std_logic;
SIGNAL \o_l_cafe~reg0_q\ : std_logic;
SIGNAL \o_l_cafe_leite~reg0_q\ : std_logic;
SIGNAL \o_l_cafe~2_combout\ : std_logic;
SIGNAL \o_l_mocaccino~reg0_q\ : std_logic;
SIGNAL \o_l_tamanho~0_combout\ : std_logic;
SIGNAL \o_l_tamanho~reg0_q\ : std_logic;
SIGNAL \o_l_acucar~0_combout\ : std_logic;
SIGNAL \o_l_acucar~reg0_q\ : std_logic;
SIGNAL \o_l_reposicao~0_combout\ : std_logic;
SIGNAL \o_l_reposicao$latch~combout\ : std_logic;
SIGNAL \U06|o_f_preparo~1_combout\ : std_logic;
SIGNAL \U06|o_f_preparo~q\ : std_logic;
SIGNAL \U06|w_f_l_pronto~0_combout\ : std_logic;
SIGNAL \U06|w_f_l_pronto~1_combout\ : std_logic;
SIGNAL \U06|w_f_l_pronto~q\ : std_logic;
SIGNAL \U06|o_f_pronto~3_combout\ : std_logic;
SIGNAL \U06|o_f_pronto~q\ : std_logic;
SIGNAL \U06|o_valv_cafe~0_combout\ : std_logic;
SIGNAL \U06|o_valv_leite~0_combout\ : std_logic;
SIGNAL \U06|o_valv_leite~1_combout\ : std_logic;
SIGNAL \U06|o_valv_leite~q\ : std_logic;
SIGNAL \U06|o_valv_cafe~1_combout\ : std_logic;
SIGNAL \U06|o_valv_cafe~q\ : std_logic;
SIGNAL \U06|o_valv_chocolate~0_combout\ : std_logic;
SIGNAL \U06|o_valv_chocolate~q\ : std_logic;
SIGNAL \U06|o_valv_acucar~0_combout\ : std_logic;
SIGNAL \U06|o_valv_acucar~q\ : std_logic;
SIGNAL \U02|o_display[1]~feeder_combout\ : std_logic;
SIGNAL \U02|o_display[2]~feeder_combout\ : std_logic;
SIGNAL \U02|o_display[3]~feeder_combout\ : std_logic;
SIGNAL \U02|o_display[4]~feeder_combout\ : std_logic;
SIGNAL \U02|o_display[5]~feeder_combout\ : std_logic;
SIGNAL \w_letra_1[0]~0_combout\ : std_logic;
SIGNAL \U03|o_display[0]~feeder_combout\ : std_logic;
SIGNAL \U03|o_display[1]~feeder_combout\ : std_logic;
SIGNAL \U03|o_display[2]~feeder_combout\ : std_logic;
SIGNAL \U03|o_display[3]~0_combout\ : std_logic;
SIGNAL \U03|o_display[4]~feeder_combout\ : std_logic;
SIGNAL \U03|o_display[5]~feeder_combout\ : std_logic;
SIGNAL \U03|o_display[6]~feeder_combout\ : std_logic;
SIGNAL \U04|o_display[1]~feeder_combout\ : std_logic;
SIGNAL \U04|o_display[2]~feeder_combout\ : std_logic;
SIGNAL \U04|o_display[3]~0_combout\ : std_logic;
SIGNAL \U04|o_display[4]~1_combout\ : std_logic;
SIGNAL \U04|o_display[5]~2_combout\ : std_logic;
SIGNAL \U05|o_display[0]~feeder_combout\ : std_logic;
SIGNAL \U05|o_display[1]~feeder_combout\ : std_logic;
SIGNAL \U05|o_display[2]~feeder_combout\ : std_logic;
SIGNAL \U05|o_display[3]~feeder_combout\ : std_logic;
SIGNAL \U05|o_display[4]~feeder_combout\ : std_logic;
SIGNAL \U05|o_display[5]~0_combout\ : std_logic;
SIGNAL \i_s_agua~input_o\ : std_logic;
SIGNAL \i_s_temp~input_o\ : std_logic;
SIGNAL \U05|o_display\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \U01|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \U07|w_counter\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \U06|w_q_sec\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \U02|o_display\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \U06|w_f_etapa\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \U03|o_display\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \U04|o_display\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \U06|w_n_cafe\ : std_logic_vector(31 DOWNTO 0);
SIGNAL w_state : std_logic_vector(1 DOWNTO 0);
SIGNAL w_opt : std_logic_vector(1 DOWNTO 0);
SIGNAL \U06|w_n_acucar\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \U06|w_n_chocolate\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \U06|w_n_leite\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \U06|w_f_pisca\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \U06|w_f_sec\ : std_logic_vector(31 DOWNTO 0);
SIGNAL w_letra_1 : std_logic_vector(2 DOWNTO 0);
SIGNAL \ALT_INV_i_b_rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \U01|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\ : std_logic;
SIGNAL \U06|ALT_INV_w_start~q\ : std_logic;
SIGNAL \U06|ALT_INV_w_f_sec\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ALT_INV_w_state[0]~6_combout\ : std_logic;

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

\U01|altpll_component|auto_generated|pll1_INCLK_bus\ <= (gnd & \i_clk~input_o\);

\U01|altpll_component|auto_generated|wire_pll1_clk\(0) <= \U01|altpll_component|auto_generated|pll1_CLK_bus\(0);
\U01|altpll_component|auto_generated|wire_pll1_clk\(1) <= \U01|altpll_component|auto_generated|pll1_CLK_bus\(1);
\U01|altpll_component|auto_generated|wire_pll1_clk\(2) <= \U01|altpll_component|auto_generated|pll1_CLK_bus\(2);
\U01|altpll_component|auto_generated|wire_pll1_clk\(3) <= \U01|altpll_component|auto_generated|pll1_CLK_bus\(3);
\U01|altpll_component|auto_generated|wire_pll1_clk\(4) <= \U01|altpll_component|auto_generated|pll1_CLK_bus\(4);

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\U01|altpll_component|auto_generated|locked~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \U01|altpll_component|auto_generated|locked~combout\);

\U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \U01|altpll_component|auto_generated|wire_pll1_clk\(0));

\i_b_rst~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \i_b_rst~input_o\);
\ALT_INV_i_b_rst~inputclkctrl_outclk\ <= NOT \i_b_rst~inputclkctrl_outclk\;
\U01|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\ <= NOT \U01|altpll_component|auto_generated|locked~clkctrl_outclk\;
\U06|ALT_INV_w_start~q\ <= NOT \U06|w_start~q\;
\U06|ALT_INV_w_f_sec\(0) <= NOT \U06|w_f_sec\(0);
\ALT_INV_w_state[0]~6_combout\ <= NOT \w_state[0]~6_combout\;

-- Location: LCCOMB_X44_Y52_N4
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

-- Location: IOOBUF_X46_Y54_N23
\o_l_cafe~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_l_cafe~reg0_q\,
	devoe => ww_devoe,
	o => ww_o_l_cafe);

-- Location: IOOBUF_X54_Y54_N23
\o_l_cafe_leite~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_l_cafe_leite~reg0_q\,
	devoe => ww_devoe,
	o => ww_o_l_cafe_leite);

-- Location: IOOBUF_X49_Y54_N30
\o_l_mocaccino~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_l_mocaccino~reg0_q\,
	devoe => ww_devoe,
	o => ww_o_l_mocaccino);

-- Location: IOOBUF_X54_Y54_N16
\o_l_tamanho~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_l_tamanho~reg0_q\,
	devoe => ww_devoe,
	o => ww_o_l_tamanho);

-- Location: IOOBUF_X46_Y54_N30
\o_l_acucar~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_l_acucar~reg0_q\,
	devoe => ww_devoe,
	o => ww_o_l_acucar);

-- Location: IOOBUF_X49_Y54_N23
\o_l_reposicao~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_l_reposicao$latch~combout\,
	devoe => ww_devoe,
	o => ww_o_l_reposicao);

-- Location: IOOBUF_X51_Y54_N2
\o_l_preparo~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U06|o_f_preparo~q\,
	devoe => ww_devoe,
	o => ww_o_l_preparo);

-- Location: IOOBUF_X49_Y54_N9
\o_l_pronto~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U06|o_f_pronto~q\,
	devoe => ww_devoe,
	o => ww_o_l_pronto);

-- Location: IOOBUF_X54_Y54_N30
\o_v_leite~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U06|o_valv_leite~q\,
	devoe => ww_devoe,
	o => ww_o_v_leite);

-- Location: IOOBUF_X54_Y54_N9
\o_v_cafe~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U06|o_valv_cafe~q\,
	devoe => ww_devoe,
	o => ww_o_v_cafe);

-- Location: IOOBUF_X51_Y54_N16
\o_v_chocolate~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U06|o_valv_chocolate~q\,
	devoe => ww_devoe,
	o => ww_o_v_chocolate);

-- Location: IOOBUF_X51_Y54_N23
\o_v_acucar~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U06|o_valv_acucar~q\,
	devoe => ww_devoe,
	o => ww_o_v_acucar);

-- Location: IOOBUF_X51_Y54_N9
\o_v_agua~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U06|o_f_preparo~q\,
	devoe => ww_devoe,
	o => ww_o_v_agua);

-- Location: IOOBUF_X22_Y0_N16
\o_display_0[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_o_display_0(6));

-- Location: IOOBUF_X0_Y13_N2
\o_display_0[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U02|o_display\(1),
	devoe => ww_devoe,
	o => ww_o_display_0(5));

-- Location: IOOBUF_X0_Y27_N9
\o_display_0[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U02|o_display\(2),
	devoe => ww_devoe,
	o => ww_o_display_0(4));

-- Location: IOOBUF_X34_Y39_N2
\o_display_0[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U02|o_display\(3),
	devoe => ww_devoe,
	o => ww_o_display_0(3));

-- Location: IOOBUF_X51_Y0_N23
\o_display_0[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U02|o_display\(4),
	devoe => ww_devoe,
	o => ww_o_display_0(2));

-- Location: IOOBUF_X78_Y17_N2
\o_display_0[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U02|o_display\(5),
	devoe => ww_devoe,
	o => ww_o_display_0(1));

-- Location: IOOBUF_X22_Y0_N30
\o_display_0[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_o_display_0(0));

-- Location: IOOBUF_X60_Y54_N16
\o_display_1[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U03|o_display\(0),
	devoe => ww_devoe,
	o => ww_o_display_1(6));

-- Location: IOOBUF_X29_Y39_N16
\o_display_1[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U03|o_display\(1),
	devoe => ww_devoe,
	o => ww_o_display_1(5));

-- Location: IOOBUF_X0_Y16_N2
\o_display_1[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U03|o_display\(2),
	devoe => ww_devoe,
	o => ww_o_display_1(4));

-- Location: IOOBUF_X58_Y54_N30
\o_display_1[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U03|o_display\(3),
	devoe => ww_devoe,
	o => ww_o_display_1(3));

-- Location: IOOBUF_X36_Y39_N23
\o_display_1[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U03|o_display\(4),
	devoe => ww_devoe,
	o => ww_o_display_1(2));

-- Location: IOOBUF_X62_Y0_N9
\o_display_1[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U03|o_display\(5),
	devoe => ww_devoe,
	o => ww_o_display_1(1));

-- Location: IOOBUF_X58_Y54_N9
\o_display_1[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U03|o_display\(6),
	devoe => ww_devoe,
	o => ww_o_display_1(0));

-- Location: IOOBUF_X24_Y39_N23
\o_display_2[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_o_display_2(6));

-- Location: IOOBUF_X34_Y0_N9
\o_display_2[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U04|o_display\(1),
	devoe => ww_devoe,
	o => ww_o_display_2(5));

-- Location: IOOBUF_X56_Y54_N16
\o_display_2[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U04|o_display\(2),
	devoe => ww_devoe,
	o => ww_o_display_2(4));

-- Location: IOOBUF_X58_Y54_N16
\o_display_2[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U04|o_display\(3),
	devoe => ww_devoe,
	o => ww_o_display_2(3));

-- Location: IOOBUF_X58_Y54_N23
\o_display_2[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U04|o_display\(4),
	devoe => ww_devoe,
	o => ww_o_display_2(2));

-- Location: IOOBUF_X56_Y54_N9
\o_display_2[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U04|o_display\(5),
	devoe => ww_devoe,
	o => ww_o_display_2(1));

-- Location: IOOBUF_X58_Y0_N23
\o_display_2[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_o_display_2(0));

-- Location: IOOBUF_X56_Y54_N2
\o_display_3[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U05|o_display\(0),
	devoe => ww_devoe,
	o => ww_o_display_3(6));

-- Location: IOOBUF_X0_Y13_N23
\o_display_3[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U05|o_display\(1),
	devoe => ww_devoe,
	o => ww_o_display_3(5));

-- Location: IOOBUF_X26_Y39_N9
\o_display_3[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U05|o_display\(2),
	devoe => ww_devoe,
	o => ww_o_display_3(4));

-- Location: IOOBUF_X24_Y0_N16
\o_display_3[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U05|o_display\(3),
	devoe => ww_devoe,
	o => ww_o_display_3(3));

-- Location: IOOBUF_X29_Y39_N2
\o_display_3[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U05|o_display\(4),
	devoe => ww_devoe,
	o => ww_o_display_3(2));

-- Location: IOOBUF_X58_Y54_N2
\o_display_3[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U05|o_display\(5),
	devoe => ww_devoe,
	o => ww_o_display_3(1));

-- Location: IOOBUF_X16_Y0_N9
\o_display_3[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_o_display_3(0));

-- Location: IOOBUF_X69_Y54_N30
\o_l_agua~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i_s_agua~input_o\,
	devoe => ww_devoe,
	o => ww_o_l_agua);

-- Location: IOOBUF_X29_Y0_N16
\o_l_temp~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i_s_temp~input_o\,
	devoe => ww_devoe,
	o => ww_o_l_temp);

-- Location: IOIBUF_X31_Y0_N22
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

-- Location: CLKCTRL_G19
\i_b_rst~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \i_b_rst~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \i_b_rst~inputclkctrl_outclk\);

-- Location: IOIBUF_X31_Y0_N1
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

-- Location: PLL_1
\U01|altpll_component|auto_generated|pll1\ : fiftyfivenm_pll
-- pragma translate_off
GENERIC MAP (
	auto_settings => "false",
	bandwidth_type => "medium",
	c0_high => 4,
	c0_initial => 1,
	c0_low => 4,
	c0_mode => "even",
	c0_ph => 0,
	c1_high => 0,
	c1_initial => 0,
	c1_low => 0,
	c1_mode => "bypass",
	c1_ph => 0,
	c1_use_casc_in => "off",
	c2_high => 0,
	c2_initial => 0,
	c2_low => 0,
	c2_mode => "bypass",
	c2_ph => 0,
	c2_use_casc_in => "off",
	c3_high => 0,
	c3_initial => 0,
	c3_low => 0,
	c3_mode => "bypass",
	c3_ph => 0,
	c3_use_casc_in => "off",
	c4_high => 0,
	c4_initial => 0,
	c4_low => 0,
	c4_mode => "bypass",
	c4_ph => 0,
	c4_use_casc_in => "off",
	charge_pump_current_bits => 1,
	clk0_counter => "c0",
	clk0_divide_by => 2,
	clk0_duty_cycle => 50,
	clk0_multiply_by => 3,
	clk0_phase_shift => "0",
	clk1_counter => "unused",
	clk1_divide_by => 0,
	clk1_duty_cycle => 50,
	clk1_multiply_by => 0,
	clk1_phase_shift => "0",
	clk2_counter => "unused",
	clk2_divide_by => 0,
	clk2_duty_cycle => 50,
	clk2_multiply_by => 0,
	clk2_phase_shift => "0",
	clk3_counter => "unused",
	clk3_divide_by => 0,
	clk3_duty_cycle => 50,
	clk3_multiply_by => 0,
	clk3_phase_shift => "0",
	clk4_counter => "unused",
	clk4_divide_by => 0,
	clk4_duty_cycle => 50,
	clk4_multiply_by => 0,
	clk4_phase_shift => "0",
	compensate_clock => "clock0",
	inclk0_input_frequency => 20000,
	inclk1_input_frequency => 0,
	loop_filter_c_bits => 0,
	loop_filter_r_bits => 27,
	m => 12,
	m_initial => 1,
	m_ph => 0,
	n => 1,
	operation_mode => "normal",
	pfd_max => 200000,
	pfd_min => 3076,
	self_reset_on_loss_lock => "off",
	simulation_type => "functional",
	switch_over_type => "auto",
	vco_center => 1538,
	vco_divide_by => 0,
	vco_frequency_control => "auto",
	vco_max => 3333,
	vco_min => 1538,
	vco_multiply_by => 0,
	vco_phase_shift_step => 208,
	vco_post_scale => 2)
-- pragma translate_on
PORT MAP (
	areset => \ALT_INV_i_b_rst~inputclkctrl_outclk\,
	fbin => \U01|altpll_component|auto_generated|wire_pll1_fbout\,
	inclk => \U01|altpll_component|auto_generated|pll1_INCLK_bus\,
	locked => \U01|altpll_component|auto_generated|wire_pll1_locked\,
	fbout => \U01|altpll_component|auto_generated|wire_pll1_fbout\,
	clk => \U01|altpll_component|auto_generated|pll1_CLK_bus\);

-- Location: CLKCTRL_G18
\U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\);

-- Location: IOIBUF_X49_Y54_N15
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

-- Location: IOIBUF_X46_Y54_N15
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

-- Location: IOIBUF_X46_Y54_N1
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

-- Location: IOIBUF_X46_Y54_N8
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

-- Location: LCCOMB_X46_Y52_N6
\w_state[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \w_state[1]~1_combout\ = (!\i_b_rst~input_o\ & ((\i_b_reposicao~input_o\) # (\w_state[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_b_reposicao~input_o\,
	datac => \i_b_rst~input_o\,
	datad => \w_state[1]~1_combout\,
	combout => \w_state[1]~1_combout\);

-- Location: LCCOMB_X46_Y50_N28
\w_state[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \w_state[1]~3_combout\ = \w_state[1]~1_combout\ $ (((\w_state[1]~2_combout\ & ((\U06|o_f_repo~q\) # (w_state(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U06|o_f_repo~q\,
	datab => \w_state[1]~1_combout\,
	datac => w_state(0),
	datad => \w_state[1]~2_combout\,
	combout => \w_state[1]~3_combout\);

-- Location: LCCOMB_X46_Y50_N4
\w_state[0]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \w_state[0]~6_combout\ = (\i_b_rst~input_o\) # (\i_b_reposicao~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_b_rst~input_o\,
	datad => \i_b_reposicao~input_o\,
	combout => \w_state[0]~6_combout\);

-- Location: FF_X46_Y50_N29
\w_state[1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \w_state[1]~3_combout\,
	clrn => \ALT_INV_w_state[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w_state[1]~_emulated_q\);

-- Location: LCCOMB_X46_Y50_N6
\w_state[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \w_state[1]~2_combout\ = (!\i_b_rst~input_o\ & ((\i_b_reposicao~input_o\) # (\w_state[1]~1_combout\ $ (\w_state[1]~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \w_state[1]~1_combout\,
	datab => \w_state[1]~_emulated_q\,
	datac => \i_b_rst~input_o\,
	datad => \i_b_reposicao~input_o\,
	combout => \w_state[1]~2_combout\);

-- Location: IOIBUF_X49_Y54_N1
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

-- Location: LCCOMB_X46_Y50_N12
\w_state[0]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \w_state[0]~5_combout\ = (w_state(0)) # ((!\w_state[1]~2_combout\ & (\i_b_preparo~input_o\ & !\U06|o_f_repo~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \w_state[1]~2_combout\,
	datab => \i_b_preparo~input_o\,
	datac => w_state(0),
	datad => \U06|o_f_repo~q\,
	combout => \w_state[0]~5_combout\);

-- Location: FF_X46_Y50_N13
\w_state[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \w_state[0]~5_combout\,
	clrn => \ALT_INV_w_state[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w_state(0));

-- Location: LCCOMB_X46_Y52_N18
\w_opt[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \w_opt[1]~0_combout\ = !\i_b_cafe~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_b_cafe~input_o\,
	combout => \w_opt[1]~0_combout\);

-- Location: FF_X46_Y52_N19
\w_opt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \w_opt[1]~0_combout\,
	clrn => \ALT_INV_i_b_rst~inputclkctrl_outclk\,
	ena => \o_l_cafe~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w_opt(1));

-- Location: LCCOMB_X46_Y50_N24
\U06|Equal1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Equal1~2_combout\ = (\U06|w_f_etapa\(0) & (!\U06|w_f_etapa\(1) & !\U06|w_f_etapa\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U06|w_f_etapa\(0),
	datac => \U06|w_f_etapa\(1),
	datad => \U06|w_f_etapa\(2),
	combout => \U06|Equal1~2_combout\);

-- Location: LCCOMB_X49_Y49_N0
\U06|Add4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Add4~0_combout\ = \U06|w_f_pisca\(0) $ (VCC)
-- \U06|Add4~1\ = CARRY(\U06|w_f_pisca\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U06|w_f_pisca\(0),
	datad => VCC,
	combout => \U06|Add4~0_combout\,
	cout => \U06|Add4~1\);

-- Location: LCCOMB_X47_Y49_N26
\U06|Add4~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Add4~10_combout\ = (!\U06|LessThan7~1_combout\ & \U06|Add4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U06|LessThan7~1_combout\,
	datad => \U06|Add4~0_combout\,
	combout => \U06|Add4~10_combout\);

-- Location: LCCOMB_X50_Y49_N8
\U07|w_counter[0]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U07|w_counter[0]~24_combout\ = \U07|w_counter\(0) $ (VCC)
-- \U07|w_counter[0]~25\ = CARRY(\U07|w_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U07|w_counter\(0),
	datad => VCC,
	combout => \U07|w_counter[0]~24_combout\,
	cout => \U07|w_counter[0]~25\);

-- Location: LCCOMB_X1_Y31_N28
\U01|altpll_component|auto_generated|pll_lock_sync~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U01|altpll_component|auto_generated|pll_lock_sync~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \U01|altpll_component|auto_generated|pll_lock_sync~feeder_combout\);

-- Location: FF_X1_Y31_N29
\U01|altpll_component|auto_generated|pll_lock_sync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_locked\,
	d => \U01|altpll_component|auto_generated|pll_lock_sync~feeder_combout\,
	clrn => \i_b_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U01|altpll_component|auto_generated|pll_lock_sync~q\);

-- Location: LCCOMB_X1_Y31_N2
\U01|altpll_component|auto_generated|locked\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U01|altpll_component|auto_generated|locked~combout\ = (!\U01|altpll_component|auto_generated|pll_lock_sync~q\) # (!\U01|altpll_component|auto_generated|wire_pll1_locked\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U01|altpll_component|auto_generated|wire_pll1_locked\,
	datad => \U01|altpll_component|auto_generated|pll_lock_sync~q\,
	combout => \U01|altpll_component|auto_generated|locked~combout\);

-- Location: CLKCTRL_G3
\U01|altpll_component|auto_generated|locked~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \U01|altpll_component|auto_generated|locked~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \U01|altpll_component|auto_generated|locked~clkctrl_outclk\);

-- Location: LCCOMB_X52_Y51_N2
\U06|w_q_sec[1]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|w_q_sec[1]~31_combout\ = (\U06|w_q_sec\(0) & (\U06|w_q_sec\(1) $ (VCC))) # (!\U06|w_q_sec\(0) & (\U06|w_q_sec\(1) & VCC))
-- \U06|w_q_sec[1]~32\ = CARRY((\U06|w_q_sec\(0) & \U06|w_q_sec\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U06|w_q_sec\(0),
	datab => \U06|w_q_sec\(1),
	datad => VCC,
	combout => \U06|w_q_sec[1]~31_combout\,
	cout => \U06|w_q_sec[1]~32\);

-- Location: LCCOMB_X50_Y50_N26
\U06|w_n_cafe[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|w_n_cafe[0]~0_combout\ = \U06|w_n_cafe\(0) $ (((\U06|Equal1~0_combout\ & \U06|o_f_preparo~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U06|Equal1~0_combout\,
	datac => \U06|w_n_cafe\(0),
	datad => \U06|o_f_preparo~3_combout\,
	combout => \U06|w_n_cafe[0]~0_combout\);

-- Location: FF_X50_Y50_N27
\U06|w_n_cafe[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|w_n_cafe[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_n_cafe\(0));

-- Location: LCCOMB_X47_Y53_N0
\U06|Add0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Add0~1_cout\ = CARRY(\U06|w_n_cafe\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U06|w_n_cafe\(0),
	datad => VCC,
	cout => \U06|Add0~1_cout\);

-- Location: LCCOMB_X47_Y53_N2
\U06|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Add0~2_combout\ = (\U06|w_n_cafe\(1) & (\U06|Add0~1_cout\ & VCC)) # (!\U06|w_n_cafe\(1) & (!\U06|Add0~1_cout\))
-- \U06|Add0~3\ = CARRY((!\U06|w_n_cafe\(1) & !\U06|Add0~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U06|w_n_cafe\(1),
	datad => VCC,
	cin => \U06|Add0~1_cout\,
	combout => \U06|Add0~2_combout\,
	cout => \U06|Add0~3\);

-- Location: LCCOMB_X46_Y50_N16
\U06|w_n_acucar[31]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|w_n_acucar[31]~4_combout\ = (!\U06|w_f_etapa\(2) & (!\U06|w_f_etapa\(0) & (!\U06|w_f_etapa\(1) & \U06|o_f_preparo~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U06|w_f_etapa\(2),
	datab => \U06|w_f_etapa\(0),
	datac => \U06|w_f_etapa\(1),
	datad => \U06|o_f_preparo~3_combout\,
	combout => \U06|w_n_acucar[31]~4_combout\);

-- Location: FF_X47_Y53_N3
\U06|w_n_cafe[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|Add0~2_combout\,
	ena => \U06|w_n_acucar[31]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_n_cafe\(1));

-- Location: LCCOMB_X47_Y53_N4
\U06|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Add0~4_combout\ = (\U06|w_n_cafe\(2) & (\U06|Add0~3\ $ (GND))) # (!\U06|w_n_cafe\(2) & ((GND) # (!\U06|Add0~3\)))
-- \U06|Add0~5\ = CARRY((!\U06|Add0~3\) # (!\U06|w_n_cafe\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U06|w_n_cafe\(2),
	datad => VCC,
	cin => \U06|Add0~3\,
	combout => \U06|Add0~4_combout\,
	cout => \U06|Add0~5\);

-- Location: LCCOMB_X46_Y53_N16
\U06|w_n_cafe[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|w_n_cafe[2]~1_combout\ = !\U06|Add0~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U06|Add0~4_combout\,
	combout => \U06|w_n_cafe[2]~1_combout\);

-- Location: FF_X46_Y53_N17
\U06|w_n_cafe[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|w_n_cafe[2]~1_combout\,
	ena => \U06|w_n_acucar[31]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_n_cafe\(2));

-- Location: LCCOMB_X47_Y53_N6
\U06|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Add0~6_combout\ = (\U06|w_n_cafe\(3) & (\U06|Add0~5\ & VCC)) # (!\U06|w_n_cafe\(3) & (!\U06|Add0~5\))
-- \U06|Add0~7\ = CARRY((!\U06|w_n_cafe\(3) & !\U06|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U06|w_n_cafe\(3),
	datad => VCC,
	cin => \U06|Add0~5\,
	combout => \U06|Add0~6_combout\,
	cout => \U06|Add0~7\);

-- Location: FF_X47_Y53_N7
\U06|w_n_cafe[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|Add0~6_combout\,
	ena => \U06|w_n_acucar[31]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_n_cafe\(3));

-- Location: LCCOMB_X47_Y53_N8
\U06|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Add0~8_combout\ = (\U06|w_n_cafe\(4) & (\U06|Add0~7\ $ (GND))) # (!\U06|w_n_cafe\(4) & ((GND) # (!\U06|Add0~7\)))
-- \U06|Add0~9\ = CARRY((!\U06|Add0~7\) # (!\U06|w_n_cafe\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U06|w_n_cafe\(4),
	datad => VCC,
	cin => \U06|Add0~7\,
	combout => \U06|Add0~8_combout\,
	cout => \U06|Add0~9\);

-- Location: LCCOMB_X46_Y53_N28
\U06|w_n_cafe[4]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|w_n_cafe[4]~2_combout\ = !\U06|Add0~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U06|Add0~8_combout\,
	combout => \U06|w_n_cafe[4]~2_combout\);

-- Location: FF_X46_Y53_N29
\U06|w_n_cafe[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|w_n_cafe[4]~2_combout\,
	ena => \U06|w_n_acucar[31]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_n_cafe\(4));

-- Location: LCCOMB_X47_Y53_N10
\U06|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Add0~10_combout\ = (\U06|w_n_cafe\(5) & (\U06|Add0~9\ & VCC)) # (!\U06|w_n_cafe\(5) & (!\U06|Add0~9\))
-- \U06|Add0~11\ = CARRY((!\U06|w_n_cafe\(5) & !\U06|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U06|w_n_cafe\(5),
	datad => VCC,
	cin => \U06|Add0~9\,
	combout => \U06|Add0~10_combout\,
	cout => \U06|Add0~11\);

-- Location: FF_X47_Y53_N11
\U06|w_n_cafe[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|Add0~10_combout\,
	ena => \U06|w_n_acucar[31]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_n_cafe\(5));

-- Location: LCCOMB_X47_Y53_N12
\U06|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Add0~12_combout\ = (\U06|w_n_cafe\(6) & ((GND) # (!\U06|Add0~11\))) # (!\U06|w_n_cafe\(6) & (\U06|Add0~11\ $ (GND)))
-- \U06|Add0~13\ = CARRY((\U06|w_n_cafe\(6)) # (!\U06|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U06|w_n_cafe\(6),
	datad => VCC,
	cin => \U06|Add0~11\,
	combout => \U06|Add0~12_combout\,
	cout => \U06|Add0~13\);

-- Location: FF_X47_Y53_N13
\U06|w_n_cafe[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|Add0~12_combout\,
	ena => \U06|w_n_acucar[31]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_n_cafe\(6));

-- Location: LCCOMB_X47_Y53_N14
\U06|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Add0~14_combout\ = (\U06|w_n_cafe\(7) & (\U06|Add0~13\ & VCC)) # (!\U06|w_n_cafe\(7) & (!\U06|Add0~13\))
-- \U06|Add0~15\ = CARRY((!\U06|w_n_cafe\(7) & !\U06|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U06|w_n_cafe\(7),
	datad => VCC,
	cin => \U06|Add0~13\,
	combout => \U06|Add0~14_combout\,
	cout => \U06|Add0~15\);

-- Location: FF_X47_Y53_N15
\U06|w_n_cafe[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|Add0~14_combout\,
	ena => \U06|w_n_acucar[31]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_n_cafe\(7));

-- Location: LCCOMB_X47_Y53_N16
\U06|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Add0~16_combout\ = (\U06|w_n_cafe\(8) & ((GND) # (!\U06|Add0~15\))) # (!\U06|w_n_cafe\(8) & (\U06|Add0~15\ $ (GND)))
-- \U06|Add0~17\ = CARRY((\U06|w_n_cafe\(8)) # (!\U06|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U06|w_n_cafe\(8),
	datad => VCC,
	cin => \U06|Add0~15\,
	combout => \U06|Add0~16_combout\,
	cout => \U06|Add0~17\);

-- Location: FF_X47_Y53_N17
\U06|w_n_cafe[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|Add0~16_combout\,
	ena => \U06|w_n_acucar[31]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_n_cafe\(8));

-- Location: LCCOMB_X47_Y53_N18
\U06|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Add0~18_combout\ = (\U06|w_n_cafe\(9) & (\U06|Add0~17\ & VCC)) # (!\U06|w_n_cafe\(9) & (!\U06|Add0~17\))
-- \U06|Add0~19\ = CARRY((!\U06|w_n_cafe\(9) & !\U06|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U06|w_n_cafe\(9),
	datad => VCC,
	cin => \U06|Add0~17\,
	combout => \U06|Add0~18_combout\,
	cout => \U06|Add0~19\);

-- Location: FF_X47_Y53_N19
\U06|w_n_cafe[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|Add0~18_combout\,
	ena => \U06|w_n_acucar[31]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_n_cafe\(9));

-- Location: LCCOMB_X47_Y53_N20
\U06|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Add0~20_combout\ = (\U06|w_n_cafe\(10) & ((GND) # (!\U06|Add0~19\))) # (!\U06|w_n_cafe\(10) & (\U06|Add0~19\ $ (GND)))
-- \U06|Add0~21\ = CARRY((\U06|w_n_cafe\(10)) # (!\U06|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U06|w_n_cafe\(10),
	datad => VCC,
	cin => \U06|Add0~19\,
	combout => \U06|Add0~20_combout\,
	cout => \U06|Add0~21\);

-- Location: FF_X47_Y53_N21
\U06|w_n_cafe[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|Add0~20_combout\,
	ena => \U06|w_n_acucar[31]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_n_cafe\(10));

-- Location: LCCOMB_X47_Y53_N22
\U06|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Add0~22_combout\ = (\U06|w_n_cafe\(11) & (\U06|Add0~21\ & VCC)) # (!\U06|w_n_cafe\(11) & (!\U06|Add0~21\))
-- \U06|Add0~23\ = CARRY((!\U06|w_n_cafe\(11) & !\U06|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U06|w_n_cafe\(11),
	datad => VCC,
	cin => \U06|Add0~21\,
	combout => \U06|Add0~22_combout\,
	cout => \U06|Add0~23\);

-- Location: FF_X47_Y53_N23
\U06|w_n_cafe[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|Add0~22_combout\,
	ena => \U06|w_n_acucar[31]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_n_cafe\(11));

-- Location: LCCOMB_X47_Y53_N24
\U06|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Add0~24_combout\ = (\U06|w_n_cafe\(12) & ((GND) # (!\U06|Add0~23\))) # (!\U06|w_n_cafe\(12) & (\U06|Add0~23\ $ (GND)))
-- \U06|Add0~25\ = CARRY((\U06|w_n_cafe\(12)) # (!\U06|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U06|w_n_cafe\(12),
	datad => VCC,
	cin => \U06|Add0~23\,
	combout => \U06|Add0~24_combout\,
	cout => \U06|Add0~25\);

-- Location: FF_X47_Y53_N25
\U06|w_n_cafe[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|Add0~24_combout\,
	ena => \U06|w_n_acucar[31]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_n_cafe\(12));

-- Location: LCCOMB_X47_Y53_N26
\U06|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Add0~26_combout\ = (\U06|w_n_cafe\(13) & (\U06|Add0~25\ & VCC)) # (!\U06|w_n_cafe\(13) & (!\U06|Add0~25\))
-- \U06|Add0~27\ = CARRY((!\U06|w_n_cafe\(13) & !\U06|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U06|w_n_cafe\(13),
	datad => VCC,
	cin => \U06|Add0~25\,
	combout => \U06|Add0~26_combout\,
	cout => \U06|Add0~27\);

-- Location: FF_X47_Y53_N27
\U06|w_n_cafe[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|Add0~26_combout\,
	ena => \U06|w_n_acucar[31]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_n_cafe\(13));

-- Location: LCCOMB_X47_Y53_N28
\U06|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Add0~28_combout\ = (\U06|w_n_cafe\(14) & ((GND) # (!\U06|Add0~27\))) # (!\U06|w_n_cafe\(14) & (\U06|Add0~27\ $ (GND)))
-- \U06|Add0~29\ = CARRY((\U06|w_n_cafe\(14)) # (!\U06|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U06|w_n_cafe\(14),
	datad => VCC,
	cin => \U06|Add0~27\,
	combout => \U06|Add0~28_combout\,
	cout => \U06|Add0~29\);

-- Location: FF_X47_Y53_N29
\U06|w_n_cafe[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|Add0~28_combout\,
	ena => \U06|w_n_acucar[31]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_n_cafe\(14));

-- Location: LCCOMB_X47_Y53_N30
\U06|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Add0~30_combout\ = (\U06|w_n_cafe\(15) & (\U06|Add0~29\ & VCC)) # (!\U06|w_n_cafe\(15) & (!\U06|Add0~29\))
-- \U06|Add0~31\ = CARRY((!\U06|w_n_cafe\(15) & !\U06|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U06|w_n_cafe\(15),
	datad => VCC,
	cin => \U06|Add0~29\,
	combout => \U06|Add0~30_combout\,
	cout => \U06|Add0~31\);

-- Location: FF_X47_Y53_N31
\U06|w_n_cafe[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|Add0~30_combout\,
	ena => \U06|w_n_acucar[31]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_n_cafe\(15));

-- Location: LCCOMB_X47_Y52_N0
\U06|Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Add0~32_combout\ = (\U06|w_n_cafe\(16) & ((GND) # (!\U06|Add0~31\))) # (!\U06|w_n_cafe\(16) & (\U06|Add0~31\ $ (GND)))
-- \U06|Add0~33\ = CARRY((\U06|w_n_cafe\(16)) # (!\U06|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U06|w_n_cafe\(16),
	datad => VCC,
	cin => \U06|Add0~31\,
	combout => \U06|Add0~32_combout\,
	cout => \U06|Add0~33\);

-- Location: FF_X47_Y52_N1
\U06|w_n_cafe[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|Add0~32_combout\,
	ena => \U06|w_n_acucar[31]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_n_cafe\(16));

-- Location: LCCOMB_X47_Y52_N2
\U06|Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Add0~34_combout\ = (\U06|w_n_cafe\(17) & (\U06|Add0~33\ & VCC)) # (!\U06|w_n_cafe\(17) & (!\U06|Add0~33\))
-- \U06|Add0~35\ = CARRY((!\U06|w_n_cafe\(17) & !\U06|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U06|w_n_cafe\(17),
	datad => VCC,
	cin => \U06|Add0~33\,
	combout => \U06|Add0~34_combout\,
	cout => \U06|Add0~35\);

-- Location: FF_X47_Y52_N3
\U06|w_n_cafe[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|Add0~34_combout\,
	ena => \U06|w_n_acucar[31]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_n_cafe\(17));

-- Location: LCCOMB_X47_Y52_N4
\U06|Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Add0~36_combout\ = (\U06|w_n_cafe\(18) & ((GND) # (!\U06|Add0~35\))) # (!\U06|w_n_cafe\(18) & (\U06|Add0~35\ $ (GND)))
-- \U06|Add0~37\ = CARRY((\U06|w_n_cafe\(18)) # (!\U06|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U06|w_n_cafe\(18),
	datad => VCC,
	cin => \U06|Add0~35\,
	combout => \U06|Add0~36_combout\,
	cout => \U06|Add0~37\);

-- Location: FF_X47_Y52_N5
\U06|w_n_cafe[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|Add0~36_combout\,
	ena => \U06|w_n_acucar[31]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_n_cafe\(18));

-- Location: LCCOMB_X47_Y52_N6
\U06|Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Add0~38_combout\ = (\U06|w_n_cafe\(19) & (\U06|Add0~37\ & VCC)) # (!\U06|w_n_cafe\(19) & (!\U06|Add0~37\))
-- \U06|Add0~39\ = CARRY((!\U06|w_n_cafe\(19) & !\U06|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U06|w_n_cafe\(19),
	datad => VCC,
	cin => \U06|Add0~37\,
	combout => \U06|Add0~38_combout\,
	cout => \U06|Add0~39\);

-- Location: FF_X47_Y52_N7
\U06|w_n_cafe[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|Add0~38_combout\,
	ena => \U06|w_n_acucar[31]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_n_cafe\(19));

-- Location: LCCOMB_X47_Y52_N8
\U06|Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Add0~40_combout\ = (\U06|w_n_cafe\(20) & ((GND) # (!\U06|Add0~39\))) # (!\U06|w_n_cafe\(20) & (\U06|Add0~39\ $ (GND)))
-- \U06|Add0~41\ = CARRY((\U06|w_n_cafe\(20)) # (!\U06|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U06|w_n_cafe\(20),
	datad => VCC,
	cin => \U06|Add0~39\,
	combout => \U06|Add0~40_combout\,
	cout => \U06|Add0~41\);

-- Location: FF_X47_Y52_N9
\U06|w_n_cafe[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|Add0~40_combout\,
	ena => \U06|w_n_acucar[31]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_n_cafe\(20));

-- Location: LCCOMB_X47_Y52_N10
\U06|Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Add0~42_combout\ = (\U06|w_n_cafe\(21) & (\U06|Add0~41\ & VCC)) # (!\U06|w_n_cafe\(21) & (!\U06|Add0~41\))
-- \U06|Add0~43\ = CARRY((!\U06|w_n_cafe\(21) & !\U06|Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U06|w_n_cafe\(21),
	datad => VCC,
	cin => \U06|Add0~41\,
	combout => \U06|Add0~42_combout\,
	cout => \U06|Add0~43\);

-- Location: FF_X47_Y52_N11
\U06|w_n_cafe[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|Add0~42_combout\,
	ena => \U06|w_n_acucar[31]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_n_cafe\(21));

-- Location: LCCOMB_X47_Y52_N12
\U06|Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Add0~44_combout\ = (\U06|w_n_cafe\(22) & ((GND) # (!\U06|Add0~43\))) # (!\U06|w_n_cafe\(22) & (\U06|Add0~43\ $ (GND)))
-- \U06|Add0~45\ = CARRY((\U06|w_n_cafe\(22)) # (!\U06|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U06|w_n_cafe\(22),
	datad => VCC,
	cin => \U06|Add0~43\,
	combout => \U06|Add0~44_combout\,
	cout => \U06|Add0~45\);

-- Location: FF_X47_Y52_N13
\U06|w_n_cafe[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|Add0~44_combout\,
	ena => \U06|w_n_acucar[31]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_n_cafe\(22));

-- Location: LCCOMB_X47_Y52_N14
\U06|Add0~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Add0~46_combout\ = (\U06|w_n_cafe\(23) & (\U06|Add0~45\ & VCC)) # (!\U06|w_n_cafe\(23) & (!\U06|Add0~45\))
-- \U06|Add0~47\ = CARRY((!\U06|w_n_cafe\(23) & !\U06|Add0~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U06|w_n_cafe\(23),
	datad => VCC,
	cin => \U06|Add0~45\,
	combout => \U06|Add0~46_combout\,
	cout => \U06|Add0~47\);

-- Location: FF_X47_Y52_N15
\U06|w_n_cafe[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|Add0~46_combout\,
	ena => \U06|w_n_acucar[31]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_n_cafe\(23));

-- Location: LCCOMB_X47_Y52_N16
\U06|Add0~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Add0~48_combout\ = (\U06|w_n_cafe\(24) & ((GND) # (!\U06|Add0~47\))) # (!\U06|w_n_cafe\(24) & (\U06|Add0~47\ $ (GND)))
-- \U06|Add0~49\ = CARRY((\U06|w_n_cafe\(24)) # (!\U06|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U06|w_n_cafe\(24),
	datad => VCC,
	cin => \U06|Add0~47\,
	combout => \U06|Add0~48_combout\,
	cout => \U06|Add0~49\);

-- Location: FF_X47_Y52_N17
\U06|w_n_cafe[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|Add0~48_combout\,
	ena => \U06|w_n_acucar[31]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_n_cafe\(24));

-- Location: LCCOMB_X47_Y52_N18
\U06|Add0~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Add0~50_combout\ = (\U06|w_n_cafe\(25) & (\U06|Add0~49\ & VCC)) # (!\U06|w_n_cafe\(25) & (!\U06|Add0~49\))
-- \U06|Add0~51\ = CARRY((!\U06|w_n_cafe\(25) & !\U06|Add0~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U06|w_n_cafe\(25),
	datad => VCC,
	cin => \U06|Add0~49\,
	combout => \U06|Add0~50_combout\,
	cout => \U06|Add0~51\);

-- Location: FF_X47_Y52_N19
\U06|w_n_cafe[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|Add0~50_combout\,
	ena => \U06|w_n_acucar[31]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_n_cafe\(25));

-- Location: LCCOMB_X47_Y52_N20
\U06|Add0~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Add0~52_combout\ = (\U06|w_n_cafe\(26) & ((GND) # (!\U06|Add0~51\))) # (!\U06|w_n_cafe\(26) & (\U06|Add0~51\ $ (GND)))
-- \U06|Add0~53\ = CARRY((\U06|w_n_cafe\(26)) # (!\U06|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U06|w_n_cafe\(26),
	datad => VCC,
	cin => \U06|Add0~51\,
	combout => \U06|Add0~52_combout\,
	cout => \U06|Add0~53\);

-- Location: FF_X47_Y52_N21
\U06|w_n_cafe[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|Add0~52_combout\,
	ena => \U06|w_n_acucar[31]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_n_cafe\(26));

-- Location: LCCOMB_X47_Y52_N22
\U06|Add0~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Add0~54_combout\ = (\U06|w_n_cafe\(27) & (\U06|Add0~53\ & VCC)) # (!\U06|w_n_cafe\(27) & (!\U06|Add0~53\))
-- \U06|Add0~55\ = CARRY((!\U06|w_n_cafe\(27) & !\U06|Add0~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U06|w_n_cafe\(27),
	datad => VCC,
	cin => \U06|Add0~53\,
	combout => \U06|Add0~54_combout\,
	cout => \U06|Add0~55\);

-- Location: FF_X47_Y52_N23
\U06|w_n_cafe[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|Add0~54_combout\,
	ena => \U06|w_n_acucar[31]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_n_cafe\(27));

-- Location: LCCOMB_X46_Y53_N10
\U06|LessThan0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|LessThan0~7_combout\ = (!\U06|w_n_cafe\(25) & (!\U06|w_n_cafe\(27) & (!\U06|w_n_cafe\(24) & !\U06|w_n_cafe\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U06|w_n_cafe\(25),
	datab => \U06|w_n_cafe\(27),
	datac => \U06|w_n_cafe\(24),
	datad => \U06|w_n_cafe\(26),
	combout => \U06|LessThan0~7_combout\);

-- Location: LCCOMB_X47_Y52_N24
\U06|Add0~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Add0~56_combout\ = (\U06|w_n_cafe\(28) & ((GND) # (!\U06|Add0~55\))) # (!\U06|w_n_cafe\(28) & (\U06|Add0~55\ $ (GND)))
-- \U06|Add0~57\ = CARRY((\U06|w_n_cafe\(28)) # (!\U06|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U06|w_n_cafe\(28),
	datad => VCC,
	cin => \U06|Add0~55\,
	combout => \U06|Add0~56_combout\,
	cout => \U06|Add0~57\);

-- Location: FF_X47_Y52_N25
\U06|w_n_cafe[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|Add0~56_combout\,
	ena => \U06|w_n_acucar[31]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_n_cafe\(28));

-- Location: LCCOMB_X47_Y52_N26
\U06|Add0~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Add0~58_combout\ = (\U06|w_n_cafe\(29) & (\U06|Add0~57\ & VCC)) # (!\U06|w_n_cafe\(29) & (!\U06|Add0~57\))
-- \U06|Add0~59\ = CARRY((!\U06|w_n_cafe\(29) & !\U06|Add0~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U06|w_n_cafe\(29),
	datad => VCC,
	cin => \U06|Add0~57\,
	combout => \U06|Add0~58_combout\,
	cout => \U06|Add0~59\);

-- Location: FF_X47_Y52_N27
\U06|w_n_cafe[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|Add0~58_combout\,
	ena => \U06|w_n_acucar[31]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_n_cafe\(29));

-- Location: LCCOMB_X47_Y52_N28
\U06|Add0~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Add0~60_combout\ = (\U06|w_n_cafe\(30) & ((GND) # (!\U06|Add0~59\))) # (!\U06|w_n_cafe\(30) & (\U06|Add0~59\ $ (GND)))
-- \U06|Add0~61\ = CARRY((\U06|w_n_cafe\(30)) # (!\U06|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U06|w_n_cafe\(30),
	datad => VCC,
	cin => \U06|Add0~59\,
	combout => \U06|Add0~60_combout\,
	cout => \U06|Add0~61\);

-- Location: FF_X47_Y52_N29
\U06|w_n_cafe[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|Add0~60_combout\,
	ena => \U06|w_n_acucar[31]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_n_cafe\(30));

-- Location: LCCOMB_X46_Y53_N12
\U06|LessThan0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|LessThan0~8_combout\ = (\U06|LessThan0~7_combout\ & (!\U06|w_n_cafe\(28) & (!\U06|w_n_cafe\(30) & !\U06|w_n_cafe\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U06|LessThan0~7_combout\,
	datab => \U06|w_n_cafe\(28),
	datac => \U06|w_n_cafe\(30),
	datad => \U06|w_n_cafe\(29),
	combout => \U06|LessThan0~8_combout\);

-- Location: LCCOMB_X46_Y53_N20
\U06|LessThan0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|LessThan0~6_combout\ = (!\U06|w_n_cafe\(21) & (!\U06|w_n_cafe\(22) & (!\U06|w_n_cafe\(20) & !\U06|w_n_cafe\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U06|w_n_cafe\(21),
	datab => \U06|w_n_cafe\(22),
	datac => \U06|w_n_cafe\(20),
	datad => \U06|w_n_cafe\(23),
	combout => \U06|LessThan0~6_combout\);

-- Location: LCCOMB_X46_Y53_N22
\U06|LessThan0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|LessThan0~5_combout\ = (!\U06|w_n_cafe\(17) & (!\U06|w_n_cafe\(16) & (!\U06|w_n_cafe\(19) & !\U06|w_n_cafe\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U06|w_n_cafe\(17),
	datab => \U06|w_n_cafe\(16),
	datac => \U06|w_n_cafe\(19),
	datad => \U06|w_n_cafe\(18),
	combout => \U06|LessThan0~5_combout\);

-- Location: LCCOMB_X46_Y53_N26
\U06|LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|LessThan0~0_combout\ = (!\U06|w_n_cafe\(3) & (\U06|w_n_cafe\(2) & (!\U06|w_n_cafe\(1) & !\U06|w_n_cafe\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U06|w_n_cafe\(3),
	datab => \U06|w_n_cafe\(2),
	datac => \U06|w_n_cafe\(1),
	datad => \U06|w_n_cafe\(0),
	combout => \U06|LessThan0~0_combout\);

-- Location: LCCOMB_X46_Y53_N2
\U06|LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|LessThan0~1_combout\ = (!\U06|w_n_cafe\(5) & (\U06|w_n_cafe\(4) & (!\U06|w_n_cafe\(6) & !\U06|w_n_cafe\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U06|w_n_cafe\(5),
	datab => \U06|w_n_cafe\(4),
	datac => \U06|w_n_cafe\(6),
	datad => \U06|w_n_cafe\(7),
	combout => \U06|LessThan0~1_combout\);

-- Location: LCCOMB_X46_Y53_N4
\U06|LessThan0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|LessThan0~2_combout\ = (!\U06|w_n_cafe\(10) & (!\U06|w_n_cafe\(11) & (!\U06|w_n_cafe\(9) & !\U06|w_n_cafe\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U06|w_n_cafe\(10),
	datab => \U06|w_n_cafe\(11),
	datac => \U06|w_n_cafe\(9),
	datad => \U06|w_n_cafe\(8),
	combout => \U06|LessThan0~2_combout\);

-- Location: LCCOMB_X46_Y53_N18
\U06|LessThan0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|LessThan0~3_combout\ = (!\U06|w_n_cafe\(13) & (!\U06|w_n_cafe\(14) & (!\U06|w_n_cafe\(15) & !\U06|w_n_cafe\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U06|w_n_cafe\(13),
	datab => \U06|w_n_cafe\(14),
	datac => \U06|w_n_cafe\(15),
	datad => \U06|w_n_cafe\(12),
	combout => \U06|LessThan0~3_combout\);

-- Location: LCCOMB_X46_Y53_N24
\U06|LessThan0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|LessThan0~4_combout\ = (\U06|LessThan0~0_combout\ & (\U06|LessThan0~1_combout\ & (\U06|LessThan0~2_combout\ & \U06|LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U06|LessThan0~0_combout\,
	datab => \U06|LessThan0~1_combout\,
	datac => \U06|LessThan0~2_combout\,
	datad => \U06|LessThan0~3_combout\,
	combout => \U06|LessThan0~4_combout\);

-- Location: LCCOMB_X46_Y53_N6
\U06|LessThan0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|LessThan0~9_combout\ = (\U06|LessThan0~8_combout\ & (\U06|LessThan0~6_combout\ & (\U06|LessThan0~5_combout\ & \U06|LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U06|LessThan0~8_combout\,
	datab => \U06|LessThan0~6_combout\,
	datac => \U06|LessThan0~5_combout\,
	datad => \U06|LessThan0~4_combout\,
	combout => \U06|LessThan0~9_combout\);

-- Location: LCCOMB_X46_Y52_N24
\U06|o_f_preparo~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|o_f_preparo~2_combout\ = (w_state(0) & !\U06|LessThan1~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => w_state(0),
	datad => \U06|LessThan1~9_combout\,
	combout => \U06|o_f_preparo~2_combout\);

-- Location: LCCOMB_X46_Y52_N26
\Mux17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux17~0_combout\ = (\i_b_cafe_leite~input_o\ & !\i_b_cafe~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_b_cafe_leite~input_o\,
	datad => \i_b_cafe~input_o\,
	combout => \Mux17~0_combout\);

-- Location: LCCOMB_X46_Y52_N30
\w_opt[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \w_opt[0]~1_combout\ = !\Mux17~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux17~0_combout\,
	combout => \w_opt[0]~1_combout\);

-- Location: FF_X46_Y52_N31
\w_opt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \w_opt[0]~1_combout\,
	clrn => \ALT_INV_i_b_rst~inputclkctrl_outclk\,
	ena => \o_l_cafe~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w_opt(0));

-- Location: LCCOMB_X46_Y50_N22
\U06|w_n_chocolate[31]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|w_n_chocolate[31]~0_combout\ = (w_opt(1) & (\U06|Equal1~0_combout\ & (w_opt(0) & \U06|o_f_preparo~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => w_opt(1),
	datab => \U06|Equal1~0_combout\,
	datac => w_opt(0),
	datad => \U06|o_f_preparo~3_combout\,
	combout => \U06|w_n_chocolate[31]~0_combout\);

-- Location: LCCOMB_X45_Y49_N6
\U06|w_n_chocolate[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|w_n_chocolate[0]~1_combout\ = \U06|w_n_chocolate\(0) $ (\U06|w_n_chocolate[31]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U06|w_n_chocolate\(0),
	datad => \U06|w_n_chocolate[31]~0_combout\,
	combout => \U06|w_n_chocolate[0]~1_combout\);

-- Location: FF_X45_Y49_N7
\U06|w_n_chocolate[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|w_n_chocolate[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_n_chocolate\(0));

-- Location: LCCOMB_X46_Y49_N0
\U06|Add2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Add2~1_cout\ = CARRY(\U06|w_n_chocolate\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U06|w_n_chocolate\(0),
	datad => VCC,
	cout => \U06|Add2~1_cout\);

-- Location: LCCOMB_X46_Y49_N2
\U06|Add2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Add2~2_combout\ = (\U06|w_n_chocolate\(1) & (\U06|Add2~1_cout\ & VCC)) # (!\U06|w_n_chocolate\(1) & (!\U06|Add2~1_cout\))
-- \U06|Add2~3\ = CARRY((!\U06|w_n_chocolate\(1) & !\U06|Add2~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U06|w_n_chocolate\(1),
	datad => VCC,
	cin => \U06|Add2~1_cout\,
	combout => \U06|Add2~2_combout\,
	cout => \U06|Add2~3\);

-- Location: FF_X46_Y49_N3
\U06|w_n_chocolate[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|Add2~2_combout\,
	ena => \U06|w_n_chocolate[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_n_chocolate\(1));

-- Location: LCCOMB_X46_Y49_N4
\U06|Add2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Add2~4_combout\ = (\U06|w_n_chocolate\(2) & (\U06|Add2~3\ $ (GND))) # (!\U06|w_n_chocolate\(2) & ((GND) # (!\U06|Add2~3\)))
-- \U06|Add2~5\ = CARRY((!\U06|Add2~3\) # (!\U06|w_n_chocolate\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U06|w_n_chocolate\(2),
	datad => VCC,
	cin => \U06|Add2~3\,
	combout => \U06|Add2~4_combout\,
	cout => \U06|Add2~5\);

-- Location: LCCOMB_X45_Y49_N16
\U06|w_n_chocolate[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|w_n_chocolate[2]~2_combout\ = !\U06|Add2~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U06|Add2~4_combout\,
	combout => \U06|w_n_chocolate[2]~2_combout\);

-- Location: FF_X45_Y49_N17
\U06|w_n_chocolate[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|w_n_chocolate[2]~2_combout\,
	ena => \U06|w_n_chocolate[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_n_chocolate\(2));

-- Location: LCCOMB_X46_Y49_N6
\U06|Add2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Add2~6_combout\ = (\U06|w_n_chocolate\(3) & (\U06|Add2~5\ & VCC)) # (!\U06|w_n_chocolate\(3) & (!\U06|Add2~5\))
-- \U06|Add2~7\ = CARRY((!\U06|w_n_chocolate\(3) & !\U06|Add2~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U06|w_n_chocolate\(3),
	datad => VCC,
	cin => \U06|Add2~5\,
	combout => \U06|Add2~6_combout\,
	cout => \U06|Add2~7\);

-- Location: FF_X46_Y49_N7
\U06|w_n_chocolate[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|Add2~6_combout\,
	ena => \U06|w_n_chocolate[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_n_chocolate\(3));

-- Location: LCCOMB_X46_Y49_N8
\U06|Add2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Add2~8_combout\ = (\U06|w_n_chocolate\(4) & (\U06|Add2~7\ $ (GND))) # (!\U06|w_n_chocolate\(4) & ((GND) # (!\U06|Add2~7\)))
-- \U06|Add2~9\ = CARRY((!\U06|Add2~7\) # (!\U06|w_n_chocolate\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U06|w_n_chocolate\(4),
	datad => VCC,
	cin => \U06|Add2~7\,
	combout => \U06|Add2~8_combout\,
	cout => \U06|Add2~9\);

-- Location: LCCOMB_X45_Y49_N2
\U06|w_n_chocolate[4]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|w_n_chocolate[4]~3_combout\ = !\U06|Add2~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U06|Add2~8_combout\,
	combout => \U06|w_n_chocolate[4]~3_combout\);

-- Location: FF_X45_Y49_N3
\U06|w_n_chocolate[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|w_n_chocolate[4]~3_combout\,
	ena => \U06|w_n_chocolate[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_n_chocolate\(4));

-- Location: LCCOMB_X46_Y49_N10
\U06|Add2~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Add2~10_combout\ = (\U06|w_n_chocolate\(5) & (\U06|Add2~9\ & VCC)) # (!\U06|w_n_chocolate\(5) & (!\U06|Add2~9\))
-- \U06|Add2~11\ = CARRY((!\U06|w_n_chocolate\(5) & !\U06|Add2~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U06|w_n_chocolate\(5),
	datad => VCC,
	cin => \U06|Add2~9\,
	combout => \U06|Add2~10_combout\,
	cout => \U06|Add2~11\);

-- Location: FF_X46_Y49_N11
\U06|w_n_chocolate[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|Add2~10_combout\,
	ena => \U06|w_n_chocolate[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_n_chocolate\(5));

-- Location: LCCOMB_X46_Y49_N12
\U06|Add2~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Add2~12_combout\ = (\U06|w_n_chocolate\(6) & ((GND) # (!\U06|Add2~11\))) # (!\U06|w_n_chocolate\(6) & (\U06|Add2~11\ $ (GND)))
-- \U06|Add2~13\ = CARRY((\U06|w_n_chocolate\(6)) # (!\U06|Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U06|w_n_chocolate\(6),
	datad => VCC,
	cin => \U06|Add2~11\,
	combout => \U06|Add2~12_combout\,
	cout => \U06|Add2~13\);

-- Location: FF_X46_Y49_N13
\U06|w_n_chocolate[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|Add2~12_combout\,
	ena => \U06|w_n_chocolate[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_n_chocolate\(6));

-- Location: LCCOMB_X46_Y49_N14
\U06|Add2~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Add2~14_combout\ = (\U06|w_n_chocolate\(7) & (\U06|Add2~13\ & VCC)) # (!\U06|w_n_chocolate\(7) & (!\U06|Add2~13\))
-- \U06|Add2~15\ = CARRY((!\U06|w_n_chocolate\(7) & !\U06|Add2~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U06|w_n_chocolate\(7),
	datad => VCC,
	cin => \U06|Add2~13\,
	combout => \U06|Add2~14_combout\,
	cout => \U06|Add2~15\);

-- Location: FF_X46_Y49_N15
\U06|w_n_chocolate[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|Add2~14_combout\,
	ena => \U06|w_n_chocolate[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_n_chocolate\(7));

-- Location: LCCOMB_X46_Y49_N16
\U06|Add2~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Add2~16_combout\ = (\U06|w_n_chocolate\(8) & ((GND) # (!\U06|Add2~15\))) # (!\U06|w_n_chocolate\(8) & (\U06|Add2~15\ $ (GND)))
-- \U06|Add2~17\ = CARRY((\U06|w_n_chocolate\(8)) # (!\U06|Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U06|w_n_chocolate\(8),
	datad => VCC,
	cin => \U06|Add2~15\,
	combout => \U06|Add2~16_combout\,
	cout => \U06|Add2~17\);

-- Location: FF_X46_Y49_N17
\U06|w_n_chocolate[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|Add2~16_combout\,
	ena => \U06|w_n_chocolate[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_n_chocolate\(8));

-- Location: LCCOMB_X46_Y49_N18
\U06|Add2~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Add2~18_combout\ = (\U06|w_n_chocolate\(9) & (\U06|Add2~17\ & VCC)) # (!\U06|w_n_chocolate\(9) & (!\U06|Add2~17\))
-- \U06|Add2~19\ = CARRY((!\U06|w_n_chocolate\(9) & !\U06|Add2~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U06|w_n_chocolate\(9),
	datad => VCC,
	cin => \U06|Add2~17\,
	combout => \U06|Add2~18_combout\,
	cout => \U06|Add2~19\);

-- Location: FF_X46_Y49_N19
\U06|w_n_chocolate[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|Add2~18_combout\,
	ena => \U06|w_n_chocolate[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_n_chocolate\(9));

-- Location: LCCOMB_X46_Y49_N20
\U06|Add2~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Add2~20_combout\ = (\U06|w_n_chocolate\(10) & ((GND) # (!\U06|Add2~19\))) # (!\U06|w_n_chocolate\(10) & (\U06|Add2~19\ $ (GND)))
-- \U06|Add2~21\ = CARRY((\U06|w_n_chocolate\(10)) # (!\U06|Add2~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U06|w_n_chocolate\(10),
	datad => VCC,
	cin => \U06|Add2~19\,
	combout => \U06|Add2~20_combout\,
	cout => \U06|Add2~21\);

-- Location: FF_X46_Y49_N21
\U06|w_n_chocolate[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|Add2~20_combout\,
	ena => \U06|w_n_chocolate[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_n_chocolate\(10));

-- Location: LCCOMB_X46_Y49_N22
\U06|Add2~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Add2~22_combout\ = (\U06|w_n_chocolate\(11) & (\U06|Add2~21\ & VCC)) # (!\U06|w_n_chocolate\(11) & (!\U06|Add2~21\))
-- \U06|Add2~23\ = CARRY((!\U06|w_n_chocolate\(11) & !\U06|Add2~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U06|w_n_chocolate\(11),
	datad => VCC,
	cin => \U06|Add2~21\,
	combout => \U06|Add2~22_combout\,
	cout => \U06|Add2~23\);

-- Location: FF_X46_Y49_N23
\U06|w_n_chocolate[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|Add2~22_combout\,
	ena => \U06|w_n_chocolate[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_n_chocolate\(11));

-- Location: LCCOMB_X46_Y49_N24
\U06|Add2~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Add2~24_combout\ = (\U06|w_n_chocolate\(12) & ((GND) # (!\U06|Add2~23\))) # (!\U06|w_n_chocolate\(12) & (\U06|Add2~23\ $ (GND)))
-- \U06|Add2~25\ = CARRY((\U06|w_n_chocolate\(12)) # (!\U06|Add2~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U06|w_n_chocolate\(12),
	datad => VCC,
	cin => \U06|Add2~23\,
	combout => \U06|Add2~24_combout\,
	cout => \U06|Add2~25\);

-- Location: FF_X46_Y49_N25
\U06|w_n_chocolate[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|Add2~24_combout\,
	ena => \U06|w_n_chocolate[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_n_chocolate\(12));

-- Location: LCCOMB_X46_Y49_N26
\U06|Add2~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Add2~26_combout\ = (\U06|w_n_chocolate\(13) & (\U06|Add2~25\ & VCC)) # (!\U06|w_n_chocolate\(13) & (!\U06|Add2~25\))
-- \U06|Add2~27\ = CARRY((!\U06|w_n_chocolate\(13) & !\U06|Add2~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U06|w_n_chocolate\(13),
	datad => VCC,
	cin => \U06|Add2~25\,
	combout => \U06|Add2~26_combout\,
	cout => \U06|Add2~27\);

-- Location: FF_X46_Y49_N27
\U06|w_n_chocolate[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|Add2~26_combout\,
	ena => \U06|w_n_chocolate[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_n_chocolate\(13));

-- Location: LCCOMB_X46_Y49_N28
\U06|Add2~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Add2~28_combout\ = (\U06|w_n_chocolate\(14) & ((GND) # (!\U06|Add2~27\))) # (!\U06|w_n_chocolate\(14) & (\U06|Add2~27\ $ (GND)))
-- \U06|Add2~29\ = CARRY((\U06|w_n_chocolate\(14)) # (!\U06|Add2~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U06|w_n_chocolate\(14),
	datad => VCC,
	cin => \U06|Add2~27\,
	combout => \U06|Add2~28_combout\,
	cout => \U06|Add2~29\);

-- Location: FF_X46_Y49_N29
\U06|w_n_chocolate[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|Add2~28_combout\,
	ena => \U06|w_n_chocolate[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_n_chocolate\(14));

-- Location: LCCOMB_X46_Y49_N30
\U06|Add2~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Add2~30_combout\ = (\U06|w_n_chocolate\(15) & (\U06|Add2~29\ & VCC)) # (!\U06|w_n_chocolate\(15) & (!\U06|Add2~29\))
-- \U06|Add2~31\ = CARRY((!\U06|w_n_chocolate\(15) & !\U06|Add2~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U06|w_n_chocolate\(15),
	datad => VCC,
	cin => \U06|Add2~29\,
	combout => \U06|Add2~30_combout\,
	cout => \U06|Add2~31\);

-- Location: FF_X46_Y49_N31
\U06|w_n_chocolate[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|Add2~30_combout\,
	ena => \U06|w_n_chocolate[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_n_chocolate\(15));

-- Location: LCCOMB_X46_Y48_N0
\U06|Add2~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Add2~32_combout\ = (\U06|w_n_chocolate\(16) & ((GND) # (!\U06|Add2~31\))) # (!\U06|w_n_chocolate\(16) & (\U06|Add2~31\ $ (GND)))
-- \U06|Add2~33\ = CARRY((\U06|w_n_chocolate\(16)) # (!\U06|Add2~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U06|w_n_chocolate\(16),
	datad => VCC,
	cin => \U06|Add2~31\,
	combout => \U06|Add2~32_combout\,
	cout => \U06|Add2~33\);

-- Location: FF_X46_Y48_N1
\U06|w_n_chocolate[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|Add2~32_combout\,
	ena => \U06|w_n_chocolate[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_n_chocolate\(16));

-- Location: LCCOMB_X46_Y48_N2
\U06|Add2~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Add2~34_combout\ = (\U06|w_n_chocolate\(17) & (\U06|Add2~33\ & VCC)) # (!\U06|w_n_chocolate\(17) & (!\U06|Add2~33\))
-- \U06|Add2~35\ = CARRY((!\U06|w_n_chocolate\(17) & !\U06|Add2~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U06|w_n_chocolate\(17),
	datad => VCC,
	cin => \U06|Add2~33\,
	combout => \U06|Add2~34_combout\,
	cout => \U06|Add2~35\);

-- Location: FF_X46_Y48_N3
\U06|w_n_chocolate[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|Add2~34_combout\,
	ena => \U06|w_n_chocolate[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_n_chocolate\(17));

-- Location: LCCOMB_X46_Y48_N4
\U06|Add2~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Add2~36_combout\ = (\U06|w_n_chocolate\(18) & ((GND) # (!\U06|Add2~35\))) # (!\U06|w_n_chocolate\(18) & (\U06|Add2~35\ $ (GND)))
-- \U06|Add2~37\ = CARRY((\U06|w_n_chocolate\(18)) # (!\U06|Add2~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U06|w_n_chocolate\(18),
	datad => VCC,
	cin => \U06|Add2~35\,
	combout => \U06|Add2~36_combout\,
	cout => \U06|Add2~37\);

-- Location: FF_X46_Y48_N5
\U06|w_n_chocolate[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|Add2~36_combout\,
	ena => \U06|w_n_chocolate[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_n_chocolate\(18));

-- Location: LCCOMB_X46_Y48_N6
\U06|Add2~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Add2~38_combout\ = (\U06|w_n_chocolate\(19) & (\U06|Add2~37\ & VCC)) # (!\U06|w_n_chocolate\(19) & (!\U06|Add2~37\))
-- \U06|Add2~39\ = CARRY((!\U06|w_n_chocolate\(19) & !\U06|Add2~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U06|w_n_chocolate\(19),
	datad => VCC,
	cin => \U06|Add2~37\,
	combout => \U06|Add2~38_combout\,
	cout => \U06|Add2~39\);

-- Location: FF_X46_Y48_N7
\U06|w_n_chocolate[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|Add2~38_combout\,
	ena => \U06|w_n_chocolate[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_n_chocolate\(19));

-- Location: LCCOMB_X46_Y48_N8
\U06|Add2~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Add2~40_combout\ = (\U06|w_n_chocolate\(20) & ((GND) # (!\U06|Add2~39\))) # (!\U06|w_n_chocolate\(20) & (\U06|Add2~39\ $ (GND)))
-- \U06|Add2~41\ = CARRY((\U06|w_n_chocolate\(20)) # (!\U06|Add2~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U06|w_n_chocolate\(20),
	datad => VCC,
	cin => \U06|Add2~39\,
	combout => \U06|Add2~40_combout\,
	cout => \U06|Add2~41\);

-- Location: FF_X46_Y48_N9
\U06|w_n_chocolate[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|Add2~40_combout\,
	ena => \U06|w_n_chocolate[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_n_chocolate\(20));

-- Location: LCCOMB_X46_Y48_N10
\U06|Add2~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Add2~42_combout\ = (\U06|w_n_chocolate\(21) & (\U06|Add2~41\ & VCC)) # (!\U06|w_n_chocolate\(21) & (!\U06|Add2~41\))
-- \U06|Add2~43\ = CARRY((!\U06|w_n_chocolate\(21) & !\U06|Add2~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U06|w_n_chocolate\(21),
	datad => VCC,
	cin => \U06|Add2~41\,
	combout => \U06|Add2~42_combout\,
	cout => \U06|Add2~43\);

-- Location: FF_X46_Y48_N11
\U06|w_n_chocolate[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|Add2~42_combout\,
	ena => \U06|w_n_chocolate[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_n_chocolate\(21));

-- Location: LCCOMB_X46_Y48_N12
\U06|Add2~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Add2~44_combout\ = (\U06|w_n_chocolate\(22) & ((GND) # (!\U06|Add2~43\))) # (!\U06|w_n_chocolate\(22) & (\U06|Add2~43\ $ (GND)))
-- \U06|Add2~45\ = CARRY((\U06|w_n_chocolate\(22)) # (!\U06|Add2~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U06|w_n_chocolate\(22),
	datad => VCC,
	cin => \U06|Add2~43\,
	combout => \U06|Add2~44_combout\,
	cout => \U06|Add2~45\);

-- Location: FF_X46_Y48_N13
\U06|w_n_chocolate[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|Add2~44_combout\,
	ena => \U06|w_n_chocolate[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_n_chocolate\(22));

-- Location: LCCOMB_X46_Y48_N14
\U06|Add2~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Add2~46_combout\ = (\U06|w_n_chocolate\(23) & (\U06|Add2~45\ & VCC)) # (!\U06|w_n_chocolate\(23) & (!\U06|Add2~45\))
-- \U06|Add2~47\ = CARRY((!\U06|w_n_chocolate\(23) & !\U06|Add2~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U06|w_n_chocolate\(23),
	datad => VCC,
	cin => \U06|Add2~45\,
	combout => \U06|Add2~46_combout\,
	cout => \U06|Add2~47\);

-- Location: FF_X46_Y48_N15
\U06|w_n_chocolate[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|Add2~46_combout\,
	ena => \U06|w_n_chocolate[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_n_chocolate\(23));

-- Location: LCCOMB_X46_Y48_N16
\U06|Add2~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Add2~48_combout\ = (\U06|w_n_chocolate\(24) & ((GND) # (!\U06|Add2~47\))) # (!\U06|w_n_chocolate\(24) & (\U06|Add2~47\ $ (GND)))
-- \U06|Add2~49\ = CARRY((\U06|w_n_chocolate\(24)) # (!\U06|Add2~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U06|w_n_chocolate\(24),
	datad => VCC,
	cin => \U06|Add2~47\,
	combout => \U06|Add2~48_combout\,
	cout => \U06|Add2~49\);

-- Location: FF_X46_Y48_N17
\U06|w_n_chocolate[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|Add2~48_combout\,
	ena => \U06|w_n_chocolate[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_n_chocolate\(24));

-- Location: LCCOMB_X46_Y48_N18
\U06|Add2~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Add2~50_combout\ = (\U06|w_n_chocolate\(25) & (\U06|Add2~49\ & VCC)) # (!\U06|w_n_chocolate\(25) & (!\U06|Add2~49\))
-- \U06|Add2~51\ = CARRY((!\U06|w_n_chocolate\(25) & !\U06|Add2~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U06|w_n_chocolate\(25),
	datad => VCC,
	cin => \U06|Add2~49\,
	combout => \U06|Add2~50_combout\,
	cout => \U06|Add2~51\);

-- Location: FF_X46_Y48_N19
\U06|w_n_chocolate[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|Add2~50_combout\,
	ena => \U06|w_n_chocolate[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_n_chocolate\(25));

-- Location: LCCOMB_X46_Y48_N20
\U06|Add2~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Add2~52_combout\ = (\U06|w_n_chocolate\(26) & ((GND) # (!\U06|Add2~51\))) # (!\U06|w_n_chocolate\(26) & (\U06|Add2~51\ $ (GND)))
-- \U06|Add2~53\ = CARRY((\U06|w_n_chocolate\(26)) # (!\U06|Add2~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U06|w_n_chocolate\(26),
	datad => VCC,
	cin => \U06|Add2~51\,
	combout => \U06|Add2~52_combout\,
	cout => \U06|Add2~53\);

-- Location: FF_X46_Y48_N21
\U06|w_n_chocolate[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|Add2~52_combout\,
	ena => \U06|w_n_chocolate[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_n_chocolate\(26));

-- Location: LCCOMB_X46_Y48_N22
\U06|Add2~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Add2~54_combout\ = (\U06|w_n_chocolate\(27) & (\U06|Add2~53\ & VCC)) # (!\U06|w_n_chocolate\(27) & (!\U06|Add2~53\))
-- \U06|Add2~55\ = CARRY((!\U06|w_n_chocolate\(27) & !\U06|Add2~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U06|w_n_chocolate\(27),
	datad => VCC,
	cin => \U06|Add2~53\,
	combout => \U06|Add2~54_combout\,
	cout => \U06|Add2~55\);

-- Location: FF_X46_Y48_N23
\U06|w_n_chocolate[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|Add2~54_combout\,
	ena => \U06|w_n_chocolate[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_n_chocolate\(27));

-- Location: LCCOMB_X46_Y48_N24
\U06|Add2~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Add2~56_combout\ = (\U06|w_n_chocolate\(28) & ((GND) # (!\U06|Add2~55\))) # (!\U06|w_n_chocolate\(28) & (\U06|Add2~55\ $ (GND)))
-- \U06|Add2~57\ = CARRY((\U06|w_n_chocolate\(28)) # (!\U06|Add2~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U06|w_n_chocolate\(28),
	datad => VCC,
	cin => \U06|Add2~55\,
	combout => \U06|Add2~56_combout\,
	cout => \U06|Add2~57\);

-- Location: FF_X46_Y48_N25
\U06|w_n_chocolate[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|Add2~56_combout\,
	ena => \U06|w_n_chocolate[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_n_chocolate\(28));

-- Location: LCCOMB_X46_Y45_N28
\U06|LessThan2~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|LessThan2~7_combout\ = (!\U06|w_n_chocolate\(26) & (!\U06|w_n_chocolate\(27) & (!\U06|w_n_chocolate\(25) & !\U06|w_n_chocolate\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U06|w_n_chocolate\(26),
	datab => \U06|w_n_chocolate\(27),
	datac => \U06|w_n_chocolate\(25),
	datad => \U06|w_n_chocolate\(24),
	combout => \U06|LessThan2~7_combout\);

-- Location: LCCOMB_X46_Y48_N26
\U06|Add2~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Add2~58_combout\ = (\U06|w_n_chocolate\(29) & (\U06|Add2~57\ & VCC)) # (!\U06|w_n_chocolate\(29) & (!\U06|Add2~57\))
-- \U06|Add2~59\ = CARRY((!\U06|w_n_chocolate\(29) & !\U06|Add2~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U06|w_n_chocolate\(29),
	datad => VCC,
	cin => \U06|Add2~57\,
	combout => \U06|Add2~58_combout\,
	cout => \U06|Add2~59\);

-- Location: FF_X46_Y48_N27
\U06|w_n_chocolate[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|Add2~58_combout\,
	ena => \U06|w_n_chocolate[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_n_chocolate\(29));

-- Location: LCCOMB_X46_Y48_N28
\U06|Add2~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Add2~60_combout\ = (\U06|w_n_chocolate\(30) & ((GND) # (!\U06|Add2~59\))) # (!\U06|w_n_chocolate\(30) & (\U06|Add2~59\ $ (GND)))
-- \U06|Add2~61\ = CARRY((\U06|w_n_chocolate\(30)) # (!\U06|Add2~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U06|w_n_chocolate\(30),
	datad => VCC,
	cin => \U06|Add2~59\,
	combout => \U06|Add2~60_combout\,
	cout => \U06|Add2~61\);

-- Location: FF_X46_Y48_N29
\U06|w_n_chocolate[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|Add2~60_combout\,
	ena => \U06|w_n_chocolate[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_n_chocolate\(30));

-- Location: LCCOMB_X46_Y45_N2
\U06|LessThan2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|LessThan2~8_combout\ = (!\U06|w_n_chocolate\(28) & (\U06|LessThan2~7_combout\ & (!\U06|w_n_chocolate\(30) & !\U06|w_n_chocolate\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U06|w_n_chocolate\(28),
	datab => \U06|LessThan2~7_combout\,
	datac => \U06|w_n_chocolate\(30),
	datad => \U06|w_n_chocolate\(29),
	combout => \U06|LessThan2~8_combout\);

-- Location: LCCOMB_X45_Y49_N12
\U06|LessThan2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|LessThan2~3_combout\ = (!\U06|w_n_chocolate\(14) & (!\U06|w_n_chocolate\(13) & (!\U06|w_n_chocolate\(15) & !\U06|w_n_chocolate\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U06|w_n_chocolate\(14),
	datab => \U06|w_n_chocolate\(13),
	datac => \U06|w_n_chocolate\(15),
	datad => \U06|w_n_chocolate\(12),
	combout => \U06|LessThan2~3_combout\);

-- Location: LCCOMB_X45_Y49_N4
\U06|LessThan2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|LessThan2~0_combout\ = (!\U06|w_n_chocolate\(3) & (\U06|w_n_chocolate\(2) & (!\U06|w_n_chocolate\(1) & !\U06|w_n_chocolate\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U06|w_n_chocolate\(3),
	datab => \U06|w_n_chocolate\(2),
	datac => \U06|w_n_chocolate\(1),
	datad => \U06|w_n_chocolate\(0),
	combout => \U06|LessThan2~0_combout\);

-- Location: LCCOMB_X45_Y49_N8
\U06|LessThan2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|LessThan2~1_combout\ = (!\U06|w_n_chocolate\(7) & (!\U06|w_n_chocolate\(5) & (!\U06|w_n_chocolate\(6) & \U06|w_n_chocolate\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U06|w_n_chocolate\(7),
	datab => \U06|w_n_chocolate\(5),
	datac => \U06|w_n_chocolate\(6),
	datad => \U06|w_n_chocolate\(4),
	combout => \U06|LessThan2~1_combout\);

-- Location: LCCOMB_X45_Y49_N10
\U06|LessThan2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|LessThan2~2_combout\ = (!\U06|w_n_chocolate\(11) & (!\U06|w_n_chocolate\(9) & (!\U06|w_n_chocolate\(10) & !\U06|w_n_chocolate\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U06|w_n_chocolate\(11),
	datab => \U06|w_n_chocolate\(9),
	datac => \U06|w_n_chocolate\(10),
	datad => \U06|w_n_chocolate\(8),
	combout => \U06|LessThan2~2_combout\);

-- Location: LCCOMB_X45_Y49_N18
\U06|LessThan2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|LessThan2~4_combout\ = (\U06|LessThan2~3_combout\ & (\U06|LessThan2~0_combout\ & (\U06|LessThan2~1_combout\ & \U06|LessThan2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U06|LessThan2~3_combout\,
	datab => \U06|LessThan2~0_combout\,
	datac => \U06|LessThan2~1_combout\,
	datad => \U06|LessThan2~2_combout\,
	combout => \U06|LessThan2~4_combout\);

-- Location: LCCOMB_X46_Y46_N0
\U06|LessThan2~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|LessThan2~5_combout\ = (!\U06|w_n_chocolate\(16) & (!\U06|w_n_chocolate\(18) & (!\U06|w_n_chocolate\(19) & !\U06|w_n_chocolate\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U06|w_n_chocolate\(16),
	datab => \U06|w_n_chocolate\(18),
	datac => \U06|w_n_chocolate\(19),
	datad => \U06|w_n_chocolate\(17),
	combout => \U06|LessThan2~5_combout\);

-- Location: LCCOMB_X45_Y48_N0
\U06|LessThan2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|LessThan2~6_combout\ = (!\U06|w_n_chocolate\(23) & (!\U06|w_n_chocolate\(22) & (!\U06|w_n_chocolate\(21) & !\U06|w_n_chocolate\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U06|w_n_chocolate\(23),
	datab => \U06|w_n_chocolate\(22),
	datac => \U06|w_n_chocolate\(21),
	datad => \U06|w_n_chocolate\(20),
	combout => \U06|LessThan2~6_combout\);

-- Location: LCCOMB_X45_Y49_N24
\U06|LessThan2~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|LessThan2~9_combout\ = (\U06|LessThan2~8_combout\ & (\U06|LessThan2~4_combout\ & (\U06|LessThan2~5_combout\ & \U06|LessThan2~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U06|LessThan2~8_combout\,
	datab => \U06|LessThan2~4_combout\,
	datac => \U06|LessThan2~5_combout\,
	datad => \U06|LessThan2~6_combout\,
	combout => \U06|LessThan2~9_combout\);

-- Location: LCCOMB_X45_Y50_N12
\U06|Add1~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Add1~44_combout\ = (\U06|w_n_leite\(22) & ((GND) # (!\U06|Add1~43\))) # (!\U06|w_n_leite\(22) & (\U06|Add1~43\ $ (GND)))
-- \U06|Add1~45\ = CARRY((\U06|w_n_leite\(22)) # (!\U06|Add1~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U06|w_n_leite\(22),
	datad => VCC,
	cin => \U06|Add1~43\,
	combout => \U06|Add1~44_combout\,
	cout => \U06|Add1~45\);

-- Location: LCCOMB_X45_Y50_N14
\U06|Add1~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Add1~46_combout\ = (\U06|w_n_leite\(23) & (\U06|Add1~45\ & VCC)) # (!\U06|w_n_leite\(23) & (!\U06|Add1~45\))
-- \U06|Add1~47\ = CARRY((!\U06|w_n_leite\(23) & !\U06|Add1~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U06|w_n_leite\(23),
	datad => VCC,
	cin => \U06|Add1~45\,
	combout => \U06|Add1~46_combout\,
	cout => \U06|Add1~47\);

-- Location: FF_X45_Y50_N15
\U06|w_n_leite[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|Add1~46_combout\,
	ena => \U06|w_n_leite[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_n_leite\(23));

-- Location: LCCOMB_X45_Y50_N16
\U06|Add1~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Add1~48_combout\ = (\U06|w_n_leite\(24) & ((GND) # (!\U06|Add1~47\))) # (!\U06|w_n_leite\(24) & (\U06|Add1~47\ $ (GND)))
-- \U06|Add1~49\ = CARRY((\U06|w_n_leite\(24)) # (!\U06|Add1~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U06|w_n_leite\(24),
	datad => VCC,
	cin => \U06|Add1~47\,
	combout => \U06|Add1~48_combout\,
	cout => \U06|Add1~49\);

-- Location: FF_X45_Y50_N17
\U06|w_n_leite[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|Add1~48_combout\,
	ena => \U06|w_n_leite[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_n_leite\(24));

-- Location: LCCOMB_X45_Y50_N18
\U06|Add1~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Add1~50_combout\ = (\U06|w_n_leite\(25) & (\U06|Add1~49\ & VCC)) # (!\U06|w_n_leite\(25) & (!\U06|Add1~49\))
-- \U06|Add1~51\ = CARRY((!\U06|w_n_leite\(25) & !\U06|Add1~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U06|w_n_leite\(25),
	datad => VCC,
	cin => \U06|Add1~49\,
	combout => \U06|Add1~50_combout\,
	cout => \U06|Add1~51\);

-- Location: FF_X45_Y50_N19
\U06|w_n_leite[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|Add1~50_combout\,
	ena => \U06|w_n_leite[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_n_leite\(25));

-- Location: LCCOMB_X45_Y50_N20
\U06|Add1~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Add1~52_combout\ = (\U06|w_n_leite\(26) & ((GND) # (!\U06|Add1~51\))) # (!\U06|w_n_leite\(26) & (\U06|Add1~51\ $ (GND)))
-- \U06|Add1~53\ = CARRY((\U06|w_n_leite\(26)) # (!\U06|Add1~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U06|w_n_leite\(26),
	datad => VCC,
	cin => \U06|Add1~51\,
	combout => \U06|Add1~52_combout\,
	cout => \U06|Add1~53\);

-- Location: FF_X45_Y50_N21
\U06|w_n_leite[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|Add1~52_combout\,
	ena => \U06|w_n_leite[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_n_leite\(26));

-- Location: LCCOMB_X45_Y50_N22
\U06|Add1~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Add1~54_combout\ = (\U06|w_n_leite\(27) & (\U06|Add1~53\ & VCC)) # (!\U06|w_n_leite\(27) & (!\U06|Add1~53\))
-- \U06|Add1~55\ = CARRY((!\U06|w_n_leite\(27) & !\U06|Add1~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U06|w_n_leite\(27),
	datad => VCC,
	cin => \U06|Add1~53\,
	combout => \U06|Add1~54_combout\,
	cout => \U06|Add1~55\);

-- Location: FF_X45_Y50_N23
\U06|w_n_leite[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|Add1~54_combout\,
	ena => \U06|w_n_leite[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_n_leite\(27));

-- Location: LCCOMB_X45_Y50_N24
\U06|Add1~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Add1~56_combout\ = (\U06|w_n_leite\(28) & ((GND) # (!\U06|Add1~55\))) # (!\U06|w_n_leite\(28) & (\U06|Add1~55\ $ (GND)))
-- \U06|Add1~57\ = CARRY((\U06|w_n_leite\(28)) # (!\U06|Add1~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U06|w_n_leite\(28),
	datad => VCC,
	cin => \U06|Add1~55\,
	combout => \U06|Add1~56_combout\,
	cout => \U06|Add1~57\);

-- Location: FF_X45_Y50_N25
\U06|w_n_leite[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|Add1~56_combout\,
	ena => \U06|w_n_leite[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_n_leite\(28));

-- Location: LCCOMB_X45_Y50_N26
\U06|Add1~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Add1~58_combout\ = (\U06|w_n_leite\(29) & (\U06|Add1~57\ & VCC)) # (!\U06|w_n_leite\(29) & (!\U06|Add1~57\))
-- \U06|Add1~59\ = CARRY((!\U06|w_n_leite\(29) & !\U06|Add1~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U06|w_n_leite\(29),
	datad => VCC,
	cin => \U06|Add1~57\,
	combout => \U06|Add1~58_combout\,
	cout => \U06|Add1~59\);

-- Location: FF_X45_Y50_N27
\U06|w_n_leite[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|Add1~58_combout\,
	ena => \U06|w_n_leite[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_n_leite\(29));

-- Location: LCCOMB_X45_Y50_N28
\U06|Add1~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Add1~60_combout\ = (\U06|w_n_leite\(30) & ((GND) # (!\U06|Add1~59\))) # (!\U06|w_n_leite\(30) & (\U06|Add1~59\ $ (GND)))
-- \U06|Add1~61\ = CARRY((\U06|w_n_leite\(30)) # (!\U06|Add1~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U06|w_n_leite\(30),
	datad => VCC,
	cin => \U06|Add1~59\,
	combout => \U06|Add1~60_combout\,
	cout => \U06|Add1~61\);

-- Location: FF_X45_Y50_N29
\U06|w_n_leite[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|Add1~60_combout\,
	ena => \U06|w_n_leite[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_n_leite\(30));

-- Location: LCCOMB_X45_Y50_N30
\U06|Add1~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Add1~62_combout\ = \U06|w_n_leite\(31) $ (!\U06|Add1~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U06|w_n_leite\(31),
	cin => \U06|Add1~61\,
	combout => \U06|Add1~62_combout\);

-- Location: FF_X45_Y50_N31
\U06|w_n_leite[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|Add1~62_combout\,
	ena => \U06|w_n_leite[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_n_leite\(31));

-- Location: LCCOMB_X47_Y52_N30
\U06|Add0~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Add0~62_combout\ = \U06|w_n_cafe\(31) $ (!\U06|Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U06|w_n_cafe\(31),
	cin => \U06|Add0~61\,
	combout => \U06|Add0~62_combout\);

-- Location: FF_X47_Y52_N31
\U06|w_n_cafe[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|Add0~62_combout\,
	ena => \U06|w_n_acucar[31]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_n_cafe\(31));

-- Location: LCCOMB_X46_Y48_N30
\U06|Add2~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Add2~62_combout\ = \U06|w_n_chocolate\(31) $ (!\U06|Add2~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U06|w_n_chocolate\(31),
	cin => \U06|Add2~61\,
	combout => \U06|Add2~62_combout\);

-- Location: FF_X46_Y48_N31
\U06|w_n_chocolate[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|Add2~62_combout\,
	ena => \U06|w_n_chocolate[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_n_chocolate\(31));

-- Location: IOIBUF_X54_Y54_N1
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

-- Location: LCCOMB_X51_Y50_N18
\w_tamanho~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \w_tamanho~0_combout\ = (!w_state(0) & (!\w_state[0]~6_combout\ & (!\w_state[1]~2_combout\ & !\U06|o_f_repo~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => w_state(0),
	datab => \w_state[0]~6_combout\,
	datac => \w_state[1]~2_combout\,
	datad => \U06|o_f_repo~q\,
	combout => \w_tamanho~0_combout\);

-- Location: LCCOMB_X51_Y50_N20
\w_acucar~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \w_acucar~0_combout\ = \w_acucar~q\ $ (((\i_b_acucar~input_o\ & \w_tamanho~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_b_acucar~input_o\,
	datac => \w_acucar~q\,
	datad => \w_tamanho~0_combout\,
	combout => \w_acucar~0_combout\);

-- Location: FF_X51_Y50_N21
w_acucar : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \w_acucar~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w_acucar~q\);

-- Location: LCCOMB_X51_Y50_N22
\U06|w_n_acucar[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|w_n_acucar[0]~3_combout\ = \U06|w_n_acucar\(0) $ (((\U06|Equal1~0_combout\ & (\w_acucar~q\ & \U06|o_f_preparo~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U06|Equal1~0_combout\,
	datab => \w_acucar~q\,
	datac => \U06|w_n_acucar\(0),
	datad => \U06|o_f_preparo~3_combout\,
	combout => \U06|w_n_acucar[0]~3_combout\);

-- Location: FF_X51_Y50_N23
\U06|w_n_acucar[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|w_n_acucar[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_n_acucar\(0));

-- Location: LCCOMB_X47_Y51_N0
\U06|Add3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Add3~1_cout\ = CARRY(\U06|w_n_acucar\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U06|w_n_acucar\(0),
	datad => VCC,
	cout => \U06|Add3~1_cout\);

-- Location: LCCOMB_X47_Y51_N2
\U06|Add3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Add3~2_combout\ = (\U06|w_n_acucar\(1) & (\U06|Add3~1_cout\ & VCC)) # (!\U06|w_n_acucar\(1) & (!\U06|Add3~1_cout\))
-- \U06|Add3~3\ = CARRY((!\U06|w_n_acucar\(1) & !\U06|Add3~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U06|w_n_acucar\(1),
	datad => VCC,
	cin => \U06|Add3~1_cout\,
	combout => \U06|Add3~2_combout\,
	cout => \U06|Add3~3\);

-- Location: LCCOMB_X46_Y50_N0
\U06|w_n_acucar[31]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|w_n_acucar[31]~2_combout\ = (\w_acucar~q\ & (\U06|Equal1~0_combout\ & \U06|o_f_preparo~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \w_acucar~q\,
	datac => \U06|Equal1~0_combout\,
	datad => \U06|o_f_preparo~3_combout\,
	combout => \U06|w_n_acucar[31]~2_combout\);

-- Location: FF_X47_Y51_N3
\U06|w_n_acucar[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|Add3~2_combout\,
	ena => \U06|w_n_acucar[31]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_n_acucar\(1));

-- Location: LCCOMB_X47_Y51_N4
\U06|Add3~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Add3~4_combout\ = (\U06|w_n_acucar\(2) & (\U06|Add3~3\ $ (GND))) # (!\U06|w_n_acucar\(2) & ((GND) # (!\U06|Add3~3\)))
-- \U06|Add3~5\ = CARRY((!\U06|Add3~3\) # (!\U06|w_n_acucar\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U06|w_n_acucar\(2),
	datad => VCC,
	cin => \U06|Add3~3\,
	combout => \U06|Add3~4_combout\,
	cout => \U06|Add3~5\);

-- Location: LCCOMB_X46_Y51_N6
\U06|w_n_acucar[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|w_n_acucar[2]~5_combout\ = !\U06|Add3~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U06|Add3~4_combout\,
	combout => \U06|w_n_acucar[2]~5_combout\);

-- Location: FF_X46_Y51_N7
\U06|w_n_acucar[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|w_n_acucar[2]~5_combout\,
	ena => \U06|w_n_acucar[31]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_n_acucar\(2));

-- Location: LCCOMB_X47_Y51_N6
\U06|Add3~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Add3~6_combout\ = (\U06|w_n_acucar\(3) & (\U06|Add3~5\ & VCC)) # (!\U06|w_n_acucar\(3) & (!\U06|Add3~5\))
-- \U06|Add3~7\ = CARRY((!\U06|w_n_acucar\(3) & !\U06|Add3~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U06|w_n_acucar\(3),
	datad => VCC,
	cin => \U06|Add3~5\,
	combout => \U06|Add3~6_combout\,
	cout => \U06|Add3~7\);

-- Location: FF_X47_Y51_N7
\U06|w_n_acucar[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|Add3~6_combout\,
	ena => \U06|w_n_acucar[31]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_n_acucar\(3));

-- Location: LCCOMB_X47_Y51_N8
\U06|Add3~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Add3~8_combout\ = (\U06|w_n_acucar\(4) & (\U06|Add3~7\ $ (GND))) # (!\U06|w_n_acucar\(4) & ((GND) # (!\U06|Add3~7\)))
-- \U06|Add3~9\ = CARRY((!\U06|Add3~7\) # (!\U06|w_n_acucar\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U06|w_n_acucar\(4),
	datad => VCC,
	cin => \U06|Add3~7\,
	combout => \U06|Add3~8_combout\,
	cout => \U06|Add3~9\);

-- Location: LCCOMB_X46_Y51_N26
\U06|w_n_acucar[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|w_n_acucar[4]~6_combout\ = !\U06|Add3~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U06|Add3~8_combout\,
	combout => \U06|w_n_acucar[4]~6_combout\);

-- Location: FF_X46_Y51_N27
\U06|w_n_acucar[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|w_n_acucar[4]~6_combout\,
	ena => \U06|w_n_acucar[31]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_n_acucar\(4));

-- Location: LCCOMB_X47_Y51_N10
\U06|Add3~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Add3~10_combout\ = (\U06|w_n_acucar\(5) & (\U06|Add3~9\ & VCC)) # (!\U06|w_n_acucar\(5) & (!\U06|Add3~9\))
-- \U06|Add3~11\ = CARRY((!\U06|w_n_acucar\(5) & !\U06|Add3~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U06|w_n_acucar\(5),
	datad => VCC,
	cin => \U06|Add3~9\,
	combout => \U06|Add3~10_combout\,
	cout => \U06|Add3~11\);

-- Location: FF_X47_Y51_N11
\U06|w_n_acucar[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|Add3~10_combout\,
	ena => \U06|w_n_acucar[31]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_n_acucar\(5));

-- Location: LCCOMB_X47_Y51_N12
\U06|Add3~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Add3~12_combout\ = (\U06|w_n_acucar\(6) & ((GND) # (!\U06|Add3~11\))) # (!\U06|w_n_acucar\(6) & (\U06|Add3~11\ $ (GND)))
-- \U06|Add3~13\ = CARRY((\U06|w_n_acucar\(6)) # (!\U06|Add3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U06|w_n_acucar\(6),
	datad => VCC,
	cin => \U06|Add3~11\,
	combout => \U06|Add3~12_combout\,
	cout => \U06|Add3~13\);

-- Location: FF_X47_Y51_N13
\U06|w_n_acucar[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|Add3~12_combout\,
	ena => \U06|w_n_acucar[31]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_n_acucar\(6));

-- Location: LCCOMB_X47_Y51_N14
\U06|Add3~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Add3~14_combout\ = (\U06|w_n_acucar\(7) & (\U06|Add3~13\ & VCC)) # (!\U06|w_n_acucar\(7) & (!\U06|Add3~13\))
-- \U06|Add3~15\ = CARRY((!\U06|w_n_acucar\(7) & !\U06|Add3~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U06|w_n_acucar\(7),
	datad => VCC,
	cin => \U06|Add3~13\,
	combout => \U06|Add3~14_combout\,
	cout => \U06|Add3~15\);

-- Location: FF_X47_Y51_N15
\U06|w_n_acucar[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|Add3~14_combout\,
	ena => \U06|w_n_acucar[31]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_n_acucar\(7));

-- Location: LCCOMB_X47_Y51_N16
\U06|Add3~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Add3~16_combout\ = (\U06|w_n_acucar\(8) & ((GND) # (!\U06|Add3~15\))) # (!\U06|w_n_acucar\(8) & (\U06|Add3~15\ $ (GND)))
-- \U06|Add3~17\ = CARRY((\U06|w_n_acucar\(8)) # (!\U06|Add3~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U06|w_n_acucar\(8),
	datad => VCC,
	cin => \U06|Add3~15\,
	combout => \U06|Add3~16_combout\,
	cout => \U06|Add3~17\);

-- Location: FF_X47_Y51_N17
\U06|w_n_acucar[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|Add3~16_combout\,
	ena => \U06|w_n_acucar[31]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_n_acucar\(8));

-- Location: LCCOMB_X47_Y51_N18
\U06|Add3~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Add3~18_combout\ = (\U06|w_n_acucar\(9) & (\U06|Add3~17\ & VCC)) # (!\U06|w_n_acucar\(9) & (!\U06|Add3~17\))
-- \U06|Add3~19\ = CARRY((!\U06|w_n_acucar\(9) & !\U06|Add3~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U06|w_n_acucar\(9),
	datad => VCC,
	cin => \U06|Add3~17\,
	combout => \U06|Add3~18_combout\,
	cout => \U06|Add3~19\);

-- Location: FF_X47_Y51_N19
\U06|w_n_acucar[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|Add3~18_combout\,
	ena => \U06|w_n_acucar[31]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_n_acucar\(9));

-- Location: LCCOMB_X47_Y51_N20
\U06|Add3~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Add3~20_combout\ = (\U06|w_n_acucar\(10) & ((GND) # (!\U06|Add3~19\))) # (!\U06|w_n_acucar\(10) & (\U06|Add3~19\ $ (GND)))
-- \U06|Add3~21\ = CARRY((\U06|w_n_acucar\(10)) # (!\U06|Add3~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U06|w_n_acucar\(10),
	datad => VCC,
	cin => \U06|Add3~19\,
	combout => \U06|Add3~20_combout\,
	cout => \U06|Add3~21\);

-- Location: FF_X47_Y51_N21
\U06|w_n_acucar[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|Add3~20_combout\,
	ena => \U06|w_n_acucar[31]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_n_acucar\(10));

-- Location: LCCOMB_X47_Y51_N22
\U06|Add3~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Add3~22_combout\ = (\U06|w_n_acucar\(11) & (\U06|Add3~21\ & VCC)) # (!\U06|w_n_acucar\(11) & (!\U06|Add3~21\))
-- \U06|Add3~23\ = CARRY((!\U06|w_n_acucar\(11) & !\U06|Add3~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U06|w_n_acucar\(11),
	datad => VCC,
	cin => \U06|Add3~21\,
	combout => \U06|Add3~22_combout\,
	cout => \U06|Add3~23\);

-- Location: FF_X47_Y51_N23
\U06|w_n_acucar[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|Add3~22_combout\,
	ena => \U06|w_n_acucar[31]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_n_acucar\(11));

-- Location: LCCOMB_X47_Y51_N24
\U06|Add3~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Add3~24_combout\ = (\U06|w_n_acucar\(12) & ((GND) # (!\U06|Add3~23\))) # (!\U06|w_n_acucar\(12) & (\U06|Add3~23\ $ (GND)))
-- \U06|Add3~25\ = CARRY((\U06|w_n_acucar\(12)) # (!\U06|Add3~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U06|w_n_acucar\(12),
	datad => VCC,
	cin => \U06|Add3~23\,
	combout => \U06|Add3~24_combout\,
	cout => \U06|Add3~25\);

-- Location: FF_X47_Y51_N25
\U06|w_n_acucar[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|Add3~24_combout\,
	ena => \U06|w_n_acucar[31]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_n_acucar\(12));

-- Location: LCCOMB_X47_Y51_N26
\U06|Add3~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Add3~26_combout\ = (\U06|w_n_acucar\(13) & (\U06|Add3~25\ & VCC)) # (!\U06|w_n_acucar\(13) & (!\U06|Add3~25\))
-- \U06|Add3~27\ = CARRY((!\U06|w_n_acucar\(13) & !\U06|Add3~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U06|w_n_acucar\(13),
	datad => VCC,
	cin => \U06|Add3~25\,
	combout => \U06|Add3~26_combout\,
	cout => \U06|Add3~27\);

-- Location: FF_X47_Y51_N27
\U06|w_n_acucar[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|Add3~26_combout\,
	ena => \U06|w_n_acucar[31]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_n_acucar\(13));

-- Location: LCCOMB_X47_Y51_N28
\U06|Add3~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Add3~28_combout\ = (\U06|w_n_acucar\(14) & ((GND) # (!\U06|Add3~27\))) # (!\U06|w_n_acucar\(14) & (\U06|Add3~27\ $ (GND)))
-- \U06|Add3~29\ = CARRY((\U06|w_n_acucar\(14)) # (!\U06|Add3~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U06|w_n_acucar\(14),
	datad => VCC,
	cin => \U06|Add3~27\,
	combout => \U06|Add3~28_combout\,
	cout => \U06|Add3~29\);

-- Location: FF_X47_Y51_N29
\U06|w_n_acucar[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|Add3~28_combout\,
	ena => \U06|w_n_acucar[31]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_n_acucar\(14));

-- Location: LCCOMB_X47_Y51_N30
\U06|Add3~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Add3~30_combout\ = (\U06|w_n_acucar\(15) & (\U06|Add3~29\ & VCC)) # (!\U06|w_n_acucar\(15) & (!\U06|Add3~29\))
-- \U06|Add3~31\ = CARRY((!\U06|w_n_acucar\(15) & !\U06|Add3~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U06|w_n_acucar\(15),
	datad => VCC,
	cin => \U06|Add3~29\,
	combout => \U06|Add3~30_combout\,
	cout => \U06|Add3~31\);

-- Location: FF_X47_Y51_N31
\U06|w_n_acucar[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|Add3~30_combout\,
	ena => \U06|w_n_acucar[31]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_n_acucar\(15));

-- Location: LCCOMB_X47_Y50_N0
\U06|Add3~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Add3~32_combout\ = (\U06|w_n_acucar\(16) & ((GND) # (!\U06|Add3~31\))) # (!\U06|w_n_acucar\(16) & (\U06|Add3~31\ $ (GND)))
-- \U06|Add3~33\ = CARRY((\U06|w_n_acucar\(16)) # (!\U06|Add3~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U06|w_n_acucar\(16),
	datad => VCC,
	cin => \U06|Add3~31\,
	combout => \U06|Add3~32_combout\,
	cout => \U06|Add3~33\);

-- Location: FF_X47_Y50_N1
\U06|w_n_acucar[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|Add3~32_combout\,
	ena => \U06|w_n_acucar[31]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_n_acucar\(16));

-- Location: LCCOMB_X47_Y50_N2
\U06|Add3~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Add3~34_combout\ = (\U06|w_n_acucar\(17) & (\U06|Add3~33\ & VCC)) # (!\U06|w_n_acucar\(17) & (!\U06|Add3~33\))
-- \U06|Add3~35\ = CARRY((!\U06|w_n_acucar\(17) & !\U06|Add3~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U06|w_n_acucar\(17),
	datad => VCC,
	cin => \U06|Add3~33\,
	combout => \U06|Add3~34_combout\,
	cout => \U06|Add3~35\);

-- Location: FF_X47_Y50_N3
\U06|w_n_acucar[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|Add3~34_combout\,
	ena => \U06|w_n_acucar[31]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_n_acucar\(17));

-- Location: LCCOMB_X47_Y50_N4
\U06|Add3~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Add3~36_combout\ = (\U06|w_n_acucar\(18) & ((GND) # (!\U06|Add3~35\))) # (!\U06|w_n_acucar\(18) & (\U06|Add3~35\ $ (GND)))
-- \U06|Add3~37\ = CARRY((\U06|w_n_acucar\(18)) # (!\U06|Add3~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U06|w_n_acucar\(18),
	datad => VCC,
	cin => \U06|Add3~35\,
	combout => \U06|Add3~36_combout\,
	cout => \U06|Add3~37\);

-- Location: FF_X47_Y50_N5
\U06|w_n_acucar[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|Add3~36_combout\,
	ena => \U06|w_n_acucar[31]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_n_acucar\(18));

-- Location: LCCOMB_X47_Y50_N6
\U06|Add3~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Add3~38_combout\ = (\U06|w_n_acucar\(19) & (\U06|Add3~37\ & VCC)) # (!\U06|w_n_acucar\(19) & (!\U06|Add3~37\))
-- \U06|Add3~39\ = CARRY((!\U06|w_n_acucar\(19) & !\U06|Add3~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U06|w_n_acucar\(19),
	datad => VCC,
	cin => \U06|Add3~37\,
	combout => \U06|Add3~38_combout\,
	cout => \U06|Add3~39\);

-- Location: FF_X47_Y50_N7
\U06|w_n_acucar[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|Add3~38_combout\,
	ena => \U06|w_n_acucar[31]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_n_acucar\(19));

-- Location: LCCOMB_X47_Y50_N8
\U06|Add3~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Add3~40_combout\ = (\U06|w_n_acucar\(20) & ((GND) # (!\U06|Add3~39\))) # (!\U06|w_n_acucar\(20) & (\U06|Add3~39\ $ (GND)))
-- \U06|Add3~41\ = CARRY((\U06|w_n_acucar\(20)) # (!\U06|Add3~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U06|w_n_acucar\(20),
	datad => VCC,
	cin => \U06|Add3~39\,
	combout => \U06|Add3~40_combout\,
	cout => \U06|Add3~41\);

-- Location: FF_X47_Y50_N9
\U06|w_n_acucar[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|Add3~40_combout\,
	ena => \U06|w_n_acucar[31]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_n_acucar\(20));

-- Location: LCCOMB_X47_Y50_N10
\U06|Add3~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Add3~42_combout\ = (\U06|w_n_acucar\(21) & (\U06|Add3~41\ & VCC)) # (!\U06|w_n_acucar\(21) & (!\U06|Add3~41\))
-- \U06|Add3~43\ = CARRY((!\U06|w_n_acucar\(21) & !\U06|Add3~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U06|w_n_acucar\(21),
	datad => VCC,
	cin => \U06|Add3~41\,
	combout => \U06|Add3~42_combout\,
	cout => \U06|Add3~43\);

-- Location: FF_X47_Y50_N11
\U06|w_n_acucar[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|Add3~42_combout\,
	ena => \U06|w_n_acucar[31]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_n_acucar\(21));

-- Location: LCCOMB_X47_Y50_N12
\U06|Add3~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Add3~44_combout\ = (\U06|w_n_acucar\(22) & ((GND) # (!\U06|Add3~43\))) # (!\U06|w_n_acucar\(22) & (\U06|Add3~43\ $ (GND)))
-- \U06|Add3~45\ = CARRY((\U06|w_n_acucar\(22)) # (!\U06|Add3~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U06|w_n_acucar\(22),
	datad => VCC,
	cin => \U06|Add3~43\,
	combout => \U06|Add3~44_combout\,
	cout => \U06|Add3~45\);

-- Location: FF_X47_Y50_N13
\U06|w_n_acucar[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|Add3~44_combout\,
	ena => \U06|w_n_acucar[31]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_n_acucar\(22));

-- Location: LCCOMB_X47_Y50_N14
\U06|Add3~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Add3~46_combout\ = (\U06|w_n_acucar\(23) & (\U06|Add3~45\ & VCC)) # (!\U06|w_n_acucar\(23) & (!\U06|Add3~45\))
-- \U06|Add3~47\ = CARRY((!\U06|w_n_acucar\(23) & !\U06|Add3~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U06|w_n_acucar\(23),
	datad => VCC,
	cin => \U06|Add3~45\,
	combout => \U06|Add3~46_combout\,
	cout => \U06|Add3~47\);

-- Location: FF_X47_Y50_N15
\U06|w_n_acucar[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|Add3~46_combout\,
	ena => \U06|w_n_acucar[31]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_n_acucar\(23));

-- Location: LCCOMB_X47_Y50_N16
\U06|Add3~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Add3~48_combout\ = (\U06|w_n_acucar\(24) & ((GND) # (!\U06|Add3~47\))) # (!\U06|w_n_acucar\(24) & (\U06|Add3~47\ $ (GND)))
-- \U06|Add3~49\ = CARRY((\U06|w_n_acucar\(24)) # (!\U06|Add3~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U06|w_n_acucar\(24),
	datad => VCC,
	cin => \U06|Add3~47\,
	combout => \U06|Add3~48_combout\,
	cout => \U06|Add3~49\);

-- Location: FF_X47_Y50_N17
\U06|w_n_acucar[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|Add3~48_combout\,
	ena => \U06|w_n_acucar[31]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_n_acucar\(24));

-- Location: LCCOMB_X47_Y50_N18
\U06|Add3~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Add3~50_combout\ = (\U06|w_n_acucar\(25) & (\U06|Add3~49\ & VCC)) # (!\U06|w_n_acucar\(25) & (!\U06|Add3~49\))
-- \U06|Add3~51\ = CARRY((!\U06|w_n_acucar\(25) & !\U06|Add3~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U06|w_n_acucar\(25),
	datad => VCC,
	cin => \U06|Add3~49\,
	combout => \U06|Add3~50_combout\,
	cout => \U06|Add3~51\);

-- Location: FF_X47_Y50_N19
\U06|w_n_acucar[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|Add3~50_combout\,
	ena => \U06|w_n_acucar[31]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_n_acucar\(25));

-- Location: LCCOMB_X47_Y50_N20
\U06|Add3~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Add3~52_combout\ = (\U06|w_n_acucar\(26) & ((GND) # (!\U06|Add3~51\))) # (!\U06|w_n_acucar\(26) & (\U06|Add3~51\ $ (GND)))
-- \U06|Add3~53\ = CARRY((\U06|w_n_acucar\(26)) # (!\U06|Add3~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U06|w_n_acucar\(26),
	datad => VCC,
	cin => \U06|Add3~51\,
	combout => \U06|Add3~52_combout\,
	cout => \U06|Add3~53\);

-- Location: FF_X47_Y50_N21
\U06|w_n_acucar[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|Add3~52_combout\,
	ena => \U06|w_n_acucar[31]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_n_acucar\(26));

-- Location: LCCOMB_X47_Y50_N22
\U06|Add3~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Add3~54_combout\ = (\U06|w_n_acucar\(27) & (\U06|Add3~53\ & VCC)) # (!\U06|w_n_acucar\(27) & (!\U06|Add3~53\))
-- \U06|Add3~55\ = CARRY((!\U06|w_n_acucar\(27) & !\U06|Add3~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U06|w_n_acucar\(27),
	datad => VCC,
	cin => \U06|Add3~53\,
	combout => \U06|Add3~54_combout\,
	cout => \U06|Add3~55\);

-- Location: FF_X47_Y50_N23
\U06|w_n_acucar[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|Add3~54_combout\,
	ena => \U06|w_n_acucar[31]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_n_acucar\(27));

-- Location: LCCOMB_X47_Y50_N24
\U06|Add3~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Add3~56_combout\ = (\U06|w_n_acucar\(28) & ((GND) # (!\U06|Add3~55\))) # (!\U06|w_n_acucar\(28) & (\U06|Add3~55\ $ (GND)))
-- \U06|Add3~57\ = CARRY((\U06|w_n_acucar\(28)) # (!\U06|Add3~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U06|w_n_acucar\(28),
	datad => VCC,
	cin => \U06|Add3~55\,
	combout => \U06|Add3~56_combout\,
	cout => \U06|Add3~57\);

-- Location: FF_X47_Y50_N25
\U06|w_n_acucar[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|Add3~56_combout\,
	ena => \U06|w_n_acucar[31]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_n_acucar\(28));

-- Location: LCCOMB_X47_Y50_N26
\U06|Add3~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Add3~58_combout\ = (\U06|w_n_acucar\(29) & (\U06|Add3~57\ & VCC)) # (!\U06|w_n_acucar\(29) & (!\U06|Add3~57\))
-- \U06|Add3~59\ = CARRY((!\U06|w_n_acucar\(29) & !\U06|Add3~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U06|w_n_acucar\(29),
	datad => VCC,
	cin => \U06|Add3~57\,
	combout => \U06|Add3~58_combout\,
	cout => \U06|Add3~59\);

-- Location: FF_X47_Y50_N27
\U06|w_n_acucar[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|Add3~58_combout\,
	ena => \U06|w_n_acucar[31]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_n_acucar\(29));

-- Location: LCCOMB_X47_Y50_N28
\U06|Add3~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Add3~60_combout\ = (\U06|w_n_acucar\(30) & ((GND) # (!\U06|Add3~59\))) # (!\U06|w_n_acucar\(30) & (\U06|Add3~59\ $ (GND)))
-- \U06|Add3~61\ = CARRY((\U06|w_n_acucar\(30)) # (!\U06|Add3~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U06|w_n_acucar\(30),
	datad => VCC,
	cin => \U06|Add3~59\,
	combout => \U06|Add3~60_combout\,
	cout => \U06|Add3~61\);

-- Location: FF_X47_Y50_N29
\U06|w_n_acucar[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|Add3~60_combout\,
	ena => \U06|w_n_acucar[31]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_n_acucar\(30));

-- Location: LCCOMB_X47_Y50_N30
\U06|Add3~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Add3~62_combout\ = \U06|w_n_acucar\(31) $ (!\U06|Add3~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U06|w_n_acucar\(31),
	cin => \U06|Add3~61\,
	combout => \U06|Add3~62_combout\);

-- Location: FF_X47_Y50_N31
\U06|w_n_acucar[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|Add3~62_combout\,
	ena => \U06|w_n_acucar[31]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_n_acucar\(31));

-- Location: LCCOMB_X46_Y51_N24
\U06|preparo~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|preparo~2_combout\ = (\U06|w_n_leite\(31)) # ((\U06|w_n_cafe\(31)) # ((\U06|w_n_chocolate\(31)) # (\U06|w_n_acucar\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U06|w_n_leite\(31),
	datab => \U06|w_n_cafe\(31),
	datac => \U06|w_n_chocolate\(31),
	datad => \U06|w_n_acucar\(31),
	combout => \U06|preparo~2_combout\);

-- Location: LCCOMB_X46_Y51_N10
\U06|LessThan3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|LessThan3~2_combout\ = (!\U06|w_n_acucar\(8) & (!\U06|w_n_acucar\(11) & (!\U06|w_n_acucar\(10) & !\U06|w_n_acucar\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U06|w_n_acucar\(8),
	datab => \U06|w_n_acucar\(11),
	datac => \U06|w_n_acucar\(10),
	datad => \U06|w_n_acucar\(9),
	combout => \U06|LessThan3~2_combout\);

-- Location: LCCOMB_X46_Y51_N16
\U06|LessThan3~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|LessThan3~3_combout\ = (!\U06|w_n_acucar\(13) & (!\U06|w_n_acucar\(14) & (!\U06|w_n_acucar\(15) & !\U06|w_n_acucar\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U06|w_n_acucar\(13),
	datab => \U06|w_n_acucar\(14),
	datac => \U06|w_n_acucar\(15),
	datad => \U06|w_n_acucar\(12),
	combout => \U06|LessThan3~3_combout\);

-- Location: LCCOMB_X46_Y51_N4
\U06|LessThan3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|LessThan3~0_combout\ = (!\U06|w_n_acucar\(3) & (!\U06|w_n_acucar\(0) & (!\U06|w_n_acucar\(1) & \U06|w_n_acucar\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U06|w_n_acucar\(3),
	datab => \U06|w_n_acucar\(0),
	datac => \U06|w_n_acucar\(1),
	datad => \U06|w_n_acucar\(2),
	combout => \U06|LessThan3~0_combout\);

-- Location: LCCOMB_X46_Y51_N20
\U06|LessThan3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|LessThan3~1_combout\ = (\U06|w_n_acucar\(4) & (!\U06|w_n_acucar\(7) & (!\U06|w_n_acucar\(6) & !\U06|w_n_acucar\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U06|w_n_acucar\(4),
	datab => \U06|w_n_acucar\(7),
	datac => \U06|w_n_acucar\(6),
	datad => \U06|w_n_acucar\(5),
	combout => \U06|LessThan3~1_combout\);

-- Location: LCCOMB_X46_Y51_N14
\U06|LessThan3~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|LessThan3~4_combout\ = (\U06|LessThan3~2_combout\ & (\U06|LessThan3~3_combout\ & (\U06|LessThan3~0_combout\ & \U06|LessThan3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U06|LessThan3~2_combout\,
	datab => \U06|LessThan3~3_combout\,
	datac => \U06|LessThan3~0_combout\,
	datad => \U06|LessThan3~1_combout\,
	combout => \U06|LessThan3~4_combout\);

-- Location: LCCOMB_X46_Y51_N22
\U06|LessThan3~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|LessThan3~7_combout\ = (!\U06|w_n_acucar\(25) & (!\U06|w_n_acucar\(27) & (!\U06|w_n_acucar\(26) & !\U06|w_n_acucar\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U06|w_n_acucar\(25),
	datab => \U06|w_n_acucar\(27),
	datac => \U06|w_n_acucar\(26),
	datad => \U06|w_n_acucar\(24),
	combout => \U06|LessThan3~7_combout\);

-- Location: LCCOMB_X46_Y51_N28
\U06|LessThan3~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|LessThan3~6_combout\ = (!\U06|w_n_acucar\(22) & (!\U06|w_n_acucar\(21) & (!\U06|w_n_acucar\(20) & !\U06|w_n_acucar\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U06|w_n_acucar\(22),
	datab => \U06|w_n_acucar\(21),
	datac => \U06|w_n_acucar\(20),
	datad => \U06|w_n_acucar\(23),
	combout => \U06|LessThan3~6_combout\);

-- Location: LCCOMB_X46_Y51_N8
\U06|LessThan3~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|LessThan3~8_combout\ = (!\U06|w_n_acucar\(29) & (!\U06|w_n_acucar\(28) & !\U06|w_n_acucar\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U06|w_n_acucar\(29),
	datac => \U06|w_n_acucar\(28),
	datad => \U06|w_n_acucar\(30),
	combout => \U06|LessThan3~8_combout\);

-- Location: LCCOMB_X47_Y47_N28
\U06|LessThan3~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|LessThan3~5_combout\ = (!\U06|w_n_acucar\(19) & (!\U06|w_n_acucar\(18) & (!\U06|w_n_acucar\(17) & !\U06|w_n_acucar\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U06|w_n_acucar\(19),
	datab => \U06|w_n_acucar\(18),
	datac => \U06|w_n_acucar\(17),
	datad => \U06|w_n_acucar\(16),
	combout => \U06|LessThan3~5_combout\);

-- Location: LCCOMB_X46_Y51_N18
\U06|LessThan3~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|LessThan3~9_combout\ = (\U06|LessThan3~7_combout\ & (\U06|LessThan3~6_combout\ & (\U06|LessThan3~8_combout\ & \U06|LessThan3~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U06|LessThan3~7_combout\,
	datab => \U06|LessThan3~6_combout\,
	datac => \U06|LessThan3~8_combout\,
	datad => \U06|LessThan3~5_combout\,
	combout => \U06|LessThan3~9_combout\);

-- Location: LCCOMB_X46_Y51_N0
\U06|preparo~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|preparo~3_combout\ = (\U06|LessThan2~9_combout\) # ((\U06|preparo~2_combout\) # ((\U06|LessThan3~4_combout\ & \U06|LessThan3~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U06|LessThan2~9_combout\,
	datab => \U06|preparo~2_combout\,
	datac => \U06|LessThan3~4_combout\,
	datad => \U06|LessThan3~9_combout\,
	combout => \U06|preparo~3_combout\);

-- Location: LCCOMB_X46_Y50_N2
\U06|o_f_preparo~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|o_f_preparo~3_combout\ = (!\U06|LessThan0~9_combout\ & (\U06|o_f_preparo~2_combout\ & (!\U06|preparo~3_combout\ & !\w_state[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U06|LessThan0~9_combout\,
	datab => \U06|o_f_preparo~2_combout\,
	datac => \U06|preparo~3_combout\,
	datad => \w_state[1]~2_combout\,
	combout => \U06|o_f_preparo~3_combout\);

-- Location: LCCOMB_X49_Y50_N0
\U06|w_f_pisca[31]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|w_f_pisca[31]~2_combout\ = (\U06|o_f_preparo~3_combout\ & ((\U06|w_f_etapa\(1)) # (\U06|w_f_etapa\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U06|w_f_etapa\(1),
	datac => \U06|w_f_etapa\(2),
	datad => \U06|o_f_preparo~3_combout\,
	combout => \U06|w_f_pisca[31]~2_combout\);

-- Location: LCCOMB_X49_Y50_N6
\U06|w_f_sec~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|w_f_sec~0_combout\ = (\U06|w_f_pisca[31]~32_combout\) # ((\U06|o_f_preparo~0_combout\ & \U06|w_f_pisca[31]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U06|o_f_preparo~0_combout\,
	datac => \U06|w_f_pisca[31]~2_combout\,
	datad => \U06|w_f_pisca[31]~32_combout\,
	combout => \U06|w_f_sec~0_combout\);

-- Location: FF_X49_Y50_N7
\U06|w_f_sec[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|w_f_sec~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_f_sec\(0));

-- Location: LCCOMB_X52_Y48_N16
\U06|w_q_sec[31]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|w_q_sec[31]~42_combout\ = (\U06|w_start~q\ & \U06|w_q_sec[31]~41_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U06|w_start~q\,
	datad => \U06|w_q_sec[31]~41_combout\,
	combout => \U06|w_q_sec[31]~42_combout\);

-- Location: FF_X52_Y51_N3
\U06|w_q_sec[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|w_q_sec[1]~31_combout\,
	clrn => \U06|ALT_INV_w_f_sec\(0),
	ena => \U06|w_q_sec[31]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_q_sec\(1));

-- Location: LCCOMB_X52_Y51_N4
\U06|w_q_sec[2]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|w_q_sec[2]~33_combout\ = (\U06|w_q_sec\(2) & (!\U06|w_q_sec[1]~32\)) # (!\U06|w_q_sec\(2) & ((\U06|w_q_sec[1]~32\) # (GND)))
-- \U06|w_q_sec[2]~34\ = CARRY((!\U06|w_q_sec[1]~32\) # (!\U06|w_q_sec\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U06|w_q_sec\(2),
	datad => VCC,
	cin => \U06|w_q_sec[1]~32\,
	combout => \U06|w_q_sec[2]~33_combout\,
	cout => \U06|w_q_sec[2]~34\);

-- Location: FF_X52_Y51_N5
\U06|w_q_sec[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|w_q_sec[2]~33_combout\,
	clrn => \U06|ALT_INV_w_f_sec\(0),
	ena => \U06|w_q_sec[31]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_q_sec\(2));

-- Location: LCCOMB_X52_Y51_N6
\U06|w_q_sec[3]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|w_q_sec[3]~35_combout\ = (\U06|w_q_sec\(3) & (\U06|w_q_sec[2]~34\ $ (GND))) # (!\U06|w_q_sec\(3) & (!\U06|w_q_sec[2]~34\ & VCC))
-- \U06|w_q_sec[3]~36\ = CARRY((\U06|w_q_sec\(3) & !\U06|w_q_sec[2]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U06|w_q_sec\(3),
	datad => VCC,
	cin => \U06|w_q_sec[2]~34\,
	combout => \U06|w_q_sec[3]~35_combout\,
	cout => \U06|w_q_sec[3]~36\);

-- Location: FF_X52_Y51_N7
\U06|w_q_sec[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|w_q_sec[3]~35_combout\,
	clrn => \U06|ALT_INV_w_f_sec\(0),
	ena => \U06|w_q_sec[31]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_q_sec\(3));

-- Location: LCCOMB_X52_Y51_N8
\U06|w_q_sec[4]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|w_q_sec[4]~37_combout\ = (\U06|w_q_sec\(4) & (!\U06|w_q_sec[3]~36\)) # (!\U06|w_q_sec\(4) & ((\U06|w_q_sec[3]~36\) # (GND)))
-- \U06|w_q_sec[4]~38\ = CARRY((!\U06|w_q_sec[3]~36\) # (!\U06|w_q_sec\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U06|w_q_sec\(4),
	datad => VCC,
	cin => \U06|w_q_sec[3]~36\,
	combout => \U06|w_q_sec[4]~37_combout\,
	cout => \U06|w_q_sec[4]~38\);

-- Location: FF_X52_Y51_N9
\U06|w_q_sec[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|w_q_sec[4]~37_combout\,
	clrn => \U06|ALT_INV_w_f_sec\(0),
	ena => \U06|w_q_sec[31]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_q_sec\(4));

-- Location: LCCOMB_X54_Y50_N12
\U06|preparo~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|preparo~0_combout\ = (!\U06|w_q_sec\(2) & (!\U06|w_q_sec\(3) & !\U06|w_q_sec\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U06|w_q_sec\(2),
	datac => \U06|w_q_sec\(3),
	datad => \U06|w_q_sec\(4),
	combout => \U06|preparo~0_combout\);

-- Location: LCCOMB_X52_Y51_N10
\U06|w_q_sec[5]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|w_q_sec[5]~39_combout\ = (\U06|w_q_sec\(5) & (\U06|w_q_sec[4]~38\ $ (GND))) # (!\U06|w_q_sec\(5) & (!\U06|w_q_sec[4]~38\ & VCC))
-- \U06|w_q_sec[5]~40\ = CARRY((\U06|w_q_sec\(5) & !\U06|w_q_sec[4]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U06|w_q_sec\(5),
	datad => VCC,
	cin => \U06|w_q_sec[4]~38\,
	combout => \U06|w_q_sec[5]~39_combout\,
	cout => \U06|w_q_sec[5]~40\);

-- Location: FF_X52_Y51_N11
\U06|w_q_sec[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|w_q_sec[5]~39_combout\,
	clrn => \U06|ALT_INV_w_f_sec\(0),
	ena => \U06|w_q_sec[31]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_q_sec\(5));

-- Location: IOIBUF_X51_Y54_N29
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

-- Location: LCCOMB_X51_Y50_N6
\w_tamanho~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \w_tamanho~1_combout\ = \w_tamanho~q\ $ (((\i_b_tamanho~input_o\ & \w_tamanho~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_b_tamanho~input_o\,
	datac => \w_tamanho~q\,
	datad => \w_tamanho~0_combout\,
	combout => \w_tamanho~1_combout\);

-- Location: FF_X51_Y50_N7
w_tamanho : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \w_tamanho~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w_tamanho~q\);

-- Location: LCCOMB_X54_Y50_N10
\U06|preparo~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|preparo~1_combout\ = (\U06|w_q_sec\(5) & (((!\w_tamanho~q\)) # (!\U06|preparo~0_combout\))) # (!\U06|w_q_sec\(5) & (((!\w_tamanho~q\ & \U06|w_q_sec\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U06|preparo~0_combout\,
	datab => \U06|w_q_sec\(5),
	datac => \w_tamanho~q\,
	datad => \U06|w_q_sec\(4),
	combout => \U06|preparo~1_combout\);

-- Location: LCCOMB_X52_Y51_N12
\U06|w_q_sec[6]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|w_q_sec[6]~43_combout\ = (\U06|w_q_sec\(6) & (!\U06|w_q_sec[5]~40\)) # (!\U06|w_q_sec\(6) & ((\U06|w_q_sec[5]~40\) # (GND)))
-- \U06|w_q_sec[6]~44\ = CARRY((!\U06|w_q_sec[5]~40\) # (!\U06|w_q_sec\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U06|w_q_sec\(6),
	datad => VCC,
	cin => \U06|w_q_sec[5]~40\,
	combout => \U06|w_q_sec[6]~43_combout\,
	cout => \U06|w_q_sec[6]~44\);

-- Location: FF_X52_Y51_N13
\U06|w_q_sec[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|w_q_sec[6]~43_combout\,
	clrn => \U06|ALT_INV_w_f_sec\(0),
	ena => \U06|w_q_sec[31]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_q_sec\(6));

-- Location: LCCOMB_X52_Y51_N14
\U06|w_q_sec[7]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|w_q_sec[7]~45_combout\ = (\U06|w_q_sec\(7) & (\U06|w_q_sec[6]~44\ $ (GND))) # (!\U06|w_q_sec\(7) & (!\U06|w_q_sec[6]~44\ & VCC))
-- \U06|w_q_sec[7]~46\ = CARRY((\U06|w_q_sec\(7) & !\U06|w_q_sec[6]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U06|w_q_sec\(7),
	datad => VCC,
	cin => \U06|w_q_sec[6]~44\,
	combout => \U06|w_q_sec[7]~45_combout\,
	cout => \U06|w_q_sec[7]~46\);

-- Location: FF_X52_Y51_N15
\U06|w_q_sec[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|w_q_sec[7]~45_combout\,
	clrn => \U06|ALT_INV_w_f_sec\(0),
	ena => \U06|w_q_sec[31]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_q_sec\(7));

-- Location: LCCOMB_X52_Y51_N16
\U06|w_q_sec[8]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|w_q_sec[8]~47_combout\ = (\U06|w_q_sec\(8) & (!\U06|w_q_sec[7]~46\)) # (!\U06|w_q_sec\(8) & ((\U06|w_q_sec[7]~46\) # (GND)))
-- \U06|w_q_sec[8]~48\ = CARRY((!\U06|w_q_sec[7]~46\) # (!\U06|w_q_sec\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U06|w_q_sec\(8),
	datad => VCC,
	cin => \U06|w_q_sec[7]~46\,
	combout => \U06|w_q_sec[8]~47_combout\,
	cout => \U06|w_q_sec[8]~48\);

-- Location: FF_X52_Y51_N17
\U06|w_q_sec[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|w_q_sec[8]~47_combout\,
	clrn => \U06|ALT_INV_w_f_sec\(0),
	ena => \U06|w_q_sec[31]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_q_sec\(8));

-- Location: LCCOMB_X52_Y51_N18
\U06|w_q_sec[9]~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|w_q_sec[9]~49_combout\ = (\U06|w_q_sec\(9) & (\U06|w_q_sec[8]~48\ $ (GND))) # (!\U06|w_q_sec\(9) & (!\U06|w_q_sec[8]~48\ & VCC))
-- \U06|w_q_sec[9]~50\ = CARRY((\U06|w_q_sec\(9) & !\U06|w_q_sec[8]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U06|w_q_sec\(9),
	datad => VCC,
	cin => \U06|w_q_sec[8]~48\,
	combout => \U06|w_q_sec[9]~49_combout\,
	cout => \U06|w_q_sec[9]~50\);

-- Location: FF_X52_Y51_N19
\U06|w_q_sec[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|w_q_sec[9]~49_combout\,
	clrn => \U06|ALT_INV_w_f_sec\(0),
	ena => \U06|w_q_sec[31]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_q_sec\(9));

-- Location: LCCOMB_X52_Y51_N20
\U06|w_q_sec[10]~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|w_q_sec[10]~51_combout\ = (\U06|w_q_sec\(10) & (!\U06|w_q_sec[9]~50\)) # (!\U06|w_q_sec\(10) & ((\U06|w_q_sec[9]~50\) # (GND)))
-- \U06|w_q_sec[10]~52\ = CARRY((!\U06|w_q_sec[9]~50\) # (!\U06|w_q_sec\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U06|w_q_sec\(10),
	datad => VCC,
	cin => \U06|w_q_sec[9]~50\,
	combout => \U06|w_q_sec[10]~51_combout\,
	cout => \U06|w_q_sec[10]~52\);

-- Location: FF_X52_Y51_N21
\U06|w_q_sec[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|w_q_sec[10]~51_combout\,
	clrn => \U06|ALT_INV_w_f_sec\(0),
	ena => \U06|w_q_sec[31]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_q_sec\(10));

-- Location: LCCOMB_X52_Y51_N22
\U06|w_q_sec[11]~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|w_q_sec[11]~53_combout\ = (\U06|w_q_sec\(11) & (\U06|w_q_sec[10]~52\ $ (GND))) # (!\U06|w_q_sec\(11) & (!\U06|w_q_sec[10]~52\ & VCC))
-- \U06|w_q_sec[11]~54\ = CARRY((\U06|w_q_sec\(11) & !\U06|w_q_sec[10]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U06|w_q_sec\(11),
	datad => VCC,
	cin => \U06|w_q_sec[10]~52\,
	combout => \U06|w_q_sec[11]~53_combout\,
	cout => \U06|w_q_sec[11]~54\);

-- Location: FF_X52_Y51_N23
\U06|w_q_sec[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|w_q_sec[11]~53_combout\,
	clrn => \U06|ALT_INV_w_f_sec\(0),
	ena => \U06|w_q_sec[31]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_q_sec\(11));

-- Location: LCCOMB_X52_Y51_N24
\U06|w_q_sec[12]~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|w_q_sec[12]~55_combout\ = (\U06|w_q_sec\(12) & (!\U06|w_q_sec[11]~54\)) # (!\U06|w_q_sec\(12) & ((\U06|w_q_sec[11]~54\) # (GND)))
-- \U06|w_q_sec[12]~56\ = CARRY((!\U06|w_q_sec[11]~54\) # (!\U06|w_q_sec\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U06|w_q_sec\(12),
	datad => VCC,
	cin => \U06|w_q_sec[11]~54\,
	combout => \U06|w_q_sec[12]~55_combout\,
	cout => \U06|w_q_sec[12]~56\);

-- Location: FF_X52_Y51_N25
\U06|w_q_sec[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|w_q_sec[12]~55_combout\,
	clrn => \U06|ALT_INV_w_f_sec\(0),
	ena => \U06|w_q_sec[31]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_q_sec\(12));

-- Location: LCCOMB_X52_Y51_N26
\U06|w_q_sec[13]~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|w_q_sec[13]~57_combout\ = (\U06|w_q_sec\(13) & (\U06|w_q_sec[12]~56\ $ (GND))) # (!\U06|w_q_sec\(13) & (!\U06|w_q_sec[12]~56\ & VCC))
-- \U06|w_q_sec[13]~58\ = CARRY((\U06|w_q_sec\(13) & !\U06|w_q_sec[12]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U06|w_q_sec\(13),
	datad => VCC,
	cin => \U06|w_q_sec[12]~56\,
	combout => \U06|w_q_sec[13]~57_combout\,
	cout => \U06|w_q_sec[13]~58\);

-- Location: FF_X52_Y51_N27
\U06|w_q_sec[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|w_q_sec[13]~57_combout\,
	clrn => \U06|ALT_INV_w_f_sec\(0),
	ena => \U06|w_q_sec[31]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_q_sec\(13));

-- Location: LCCOMB_X52_Y51_N28
\U06|w_q_sec[14]~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|w_q_sec[14]~59_combout\ = (\U06|w_q_sec\(14) & (!\U06|w_q_sec[13]~58\)) # (!\U06|w_q_sec\(14) & ((\U06|w_q_sec[13]~58\) # (GND)))
-- \U06|w_q_sec[14]~60\ = CARRY((!\U06|w_q_sec[13]~58\) # (!\U06|w_q_sec\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U06|w_q_sec\(14),
	datad => VCC,
	cin => \U06|w_q_sec[13]~58\,
	combout => \U06|w_q_sec[14]~59_combout\,
	cout => \U06|w_q_sec[14]~60\);

-- Location: FF_X52_Y51_N29
\U06|w_q_sec[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|w_q_sec[14]~59_combout\,
	clrn => \U06|ALT_INV_w_f_sec\(0),
	ena => \U06|w_q_sec[31]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_q_sec\(14));

-- Location: LCCOMB_X52_Y51_N30
\U06|w_q_sec[15]~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|w_q_sec[15]~61_combout\ = (\U06|w_q_sec\(15) & (\U06|w_q_sec[14]~60\ $ (GND))) # (!\U06|w_q_sec\(15) & (!\U06|w_q_sec[14]~60\ & VCC))
-- \U06|w_q_sec[15]~62\ = CARRY((\U06|w_q_sec\(15) & !\U06|w_q_sec[14]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U06|w_q_sec\(15),
	datad => VCC,
	cin => \U06|w_q_sec[14]~60\,
	combout => \U06|w_q_sec[15]~61_combout\,
	cout => \U06|w_q_sec[15]~62\);

-- Location: FF_X52_Y51_N31
\U06|w_q_sec[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|w_q_sec[15]~61_combout\,
	clrn => \U06|ALT_INV_w_f_sec\(0),
	ena => \U06|w_q_sec[31]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_q_sec\(15));

-- Location: LCCOMB_X52_Y50_N0
\U06|w_q_sec[16]~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|w_q_sec[16]~63_combout\ = (\U06|w_q_sec\(16) & (!\U06|w_q_sec[15]~62\)) # (!\U06|w_q_sec\(16) & ((\U06|w_q_sec[15]~62\) # (GND)))
-- \U06|w_q_sec[16]~64\ = CARRY((!\U06|w_q_sec[15]~62\) # (!\U06|w_q_sec\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U06|w_q_sec\(16),
	datad => VCC,
	cin => \U06|w_q_sec[15]~62\,
	combout => \U06|w_q_sec[16]~63_combout\,
	cout => \U06|w_q_sec[16]~64\);

-- Location: FF_X52_Y50_N1
\U06|w_q_sec[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|w_q_sec[16]~63_combout\,
	clrn => \U06|ALT_INV_w_f_sec\(0),
	ena => \U06|w_q_sec[31]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_q_sec\(16));

-- Location: LCCOMB_X52_Y50_N2
\U06|w_q_sec[17]~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|w_q_sec[17]~65_combout\ = (\U06|w_q_sec\(17) & (\U06|w_q_sec[16]~64\ $ (GND))) # (!\U06|w_q_sec\(17) & (!\U06|w_q_sec[16]~64\ & VCC))
-- \U06|w_q_sec[17]~66\ = CARRY((\U06|w_q_sec\(17) & !\U06|w_q_sec[16]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U06|w_q_sec\(17),
	datad => VCC,
	cin => \U06|w_q_sec[16]~64\,
	combout => \U06|w_q_sec[17]~65_combout\,
	cout => \U06|w_q_sec[17]~66\);

-- Location: FF_X52_Y50_N3
\U06|w_q_sec[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|w_q_sec[17]~65_combout\,
	clrn => \U06|ALT_INV_w_f_sec\(0),
	ena => \U06|w_q_sec[31]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_q_sec\(17));

-- Location: LCCOMB_X52_Y50_N4
\U06|w_q_sec[18]~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|w_q_sec[18]~67_combout\ = (\U06|w_q_sec\(18) & (!\U06|w_q_sec[17]~66\)) # (!\U06|w_q_sec\(18) & ((\U06|w_q_sec[17]~66\) # (GND)))
-- \U06|w_q_sec[18]~68\ = CARRY((!\U06|w_q_sec[17]~66\) # (!\U06|w_q_sec\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U06|w_q_sec\(18),
	datad => VCC,
	cin => \U06|w_q_sec[17]~66\,
	combout => \U06|w_q_sec[18]~67_combout\,
	cout => \U06|w_q_sec[18]~68\);

-- Location: FF_X52_Y50_N5
\U06|w_q_sec[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|w_q_sec[18]~67_combout\,
	clrn => \U06|ALT_INV_w_f_sec\(0),
	ena => \U06|w_q_sec[31]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_q_sec\(18));

-- Location: LCCOMB_X52_Y50_N6
\U06|w_q_sec[19]~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|w_q_sec[19]~69_combout\ = (\U06|w_q_sec\(19) & (\U06|w_q_sec[18]~68\ $ (GND))) # (!\U06|w_q_sec\(19) & (!\U06|w_q_sec[18]~68\ & VCC))
-- \U06|w_q_sec[19]~70\ = CARRY((\U06|w_q_sec\(19) & !\U06|w_q_sec[18]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U06|w_q_sec\(19),
	datad => VCC,
	cin => \U06|w_q_sec[18]~68\,
	combout => \U06|w_q_sec[19]~69_combout\,
	cout => \U06|w_q_sec[19]~70\);

-- Location: FF_X52_Y50_N7
\U06|w_q_sec[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|w_q_sec[19]~69_combout\,
	clrn => \U06|ALT_INV_w_f_sec\(0),
	ena => \U06|w_q_sec[31]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_q_sec\(19));

-- Location: LCCOMB_X52_Y50_N8
\U06|w_q_sec[20]~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|w_q_sec[20]~71_combout\ = (\U06|w_q_sec\(20) & (!\U06|w_q_sec[19]~70\)) # (!\U06|w_q_sec\(20) & ((\U06|w_q_sec[19]~70\) # (GND)))
-- \U06|w_q_sec[20]~72\ = CARRY((!\U06|w_q_sec[19]~70\) # (!\U06|w_q_sec\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U06|w_q_sec\(20),
	datad => VCC,
	cin => \U06|w_q_sec[19]~70\,
	combout => \U06|w_q_sec[20]~71_combout\,
	cout => \U06|w_q_sec[20]~72\);

-- Location: FF_X52_Y50_N9
\U06|w_q_sec[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|w_q_sec[20]~71_combout\,
	clrn => \U06|ALT_INV_w_f_sec\(0),
	ena => \U06|w_q_sec[31]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_q_sec\(20));

-- Location: LCCOMB_X52_Y50_N10
\U06|w_q_sec[21]~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|w_q_sec[21]~73_combout\ = (\U06|w_q_sec\(21) & (\U06|w_q_sec[20]~72\ $ (GND))) # (!\U06|w_q_sec\(21) & (!\U06|w_q_sec[20]~72\ & VCC))
-- \U06|w_q_sec[21]~74\ = CARRY((\U06|w_q_sec\(21) & !\U06|w_q_sec[20]~72\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U06|w_q_sec\(21),
	datad => VCC,
	cin => \U06|w_q_sec[20]~72\,
	combout => \U06|w_q_sec[21]~73_combout\,
	cout => \U06|w_q_sec[21]~74\);

-- Location: FF_X52_Y50_N11
\U06|w_q_sec[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|w_q_sec[21]~73_combout\,
	clrn => \U06|ALT_INV_w_f_sec\(0),
	ena => \U06|w_q_sec[31]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_q_sec\(21));

-- Location: LCCOMB_X52_Y50_N12
\U06|w_q_sec[22]~75\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|w_q_sec[22]~75_combout\ = (\U06|w_q_sec\(22) & (!\U06|w_q_sec[21]~74\)) # (!\U06|w_q_sec\(22) & ((\U06|w_q_sec[21]~74\) # (GND)))
-- \U06|w_q_sec[22]~76\ = CARRY((!\U06|w_q_sec[21]~74\) # (!\U06|w_q_sec\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U06|w_q_sec\(22),
	datad => VCC,
	cin => \U06|w_q_sec[21]~74\,
	combout => \U06|w_q_sec[22]~75_combout\,
	cout => \U06|w_q_sec[22]~76\);

-- Location: FF_X52_Y50_N13
\U06|w_q_sec[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|w_q_sec[22]~75_combout\,
	clrn => \U06|ALT_INV_w_f_sec\(0),
	ena => \U06|w_q_sec[31]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_q_sec\(22));

-- Location: LCCOMB_X52_Y50_N14
\U06|w_q_sec[23]~77\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|w_q_sec[23]~77_combout\ = (\U06|w_q_sec\(23) & (\U06|w_q_sec[22]~76\ $ (GND))) # (!\U06|w_q_sec\(23) & (!\U06|w_q_sec[22]~76\ & VCC))
-- \U06|w_q_sec[23]~78\ = CARRY((\U06|w_q_sec\(23) & !\U06|w_q_sec[22]~76\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U06|w_q_sec\(23),
	datad => VCC,
	cin => \U06|w_q_sec[22]~76\,
	combout => \U06|w_q_sec[23]~77_combout\,
	cout => \U06|w_q_sec[23]~78\);

-- Location: FF_X52_Y50_N15
\U06|w_q_sec[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|w_q_sec[23]~77_combout\,
	clrn => \U06|ALT_INV_w_f_sec\(0),
	ena => \U06|w_q_sec[31]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_q_sec\(23));

-- Location: LCCOMB_X52_Y50_N16
\U06|w_q_sec[24]~79\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|w_q_sec[24]~79_combout\ = (\U06|w_q_sec\(24) & (!\U06|w_q_sec[23]~78\)) # (!\U06|w_q_sec\(24) & ((\U06|w_q_sec[23]~78\) # (GND)))
-- \U06|w_q_sec[24]~80\ = CARRY((!\U06|w_q_sec[23]~78\) # (!\U06|w_q_sec\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U06|w_q_sec\(24),
	datad => VCC,
	cin => \U06|w_q_sec[23]~78\,
	combout => \U06|w_q_sec[24]~79_combout\,
	cout => \U06|w_q_sec[24]~80\);

-- Location: FF_X52_Y50_N17
\U06|w_q_sec[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|w_q_sec[24]~79_combout\,
	clrn => \U06|ALT_INV_w_f_sec\(0),
	ena => \U06|w_q_sec[31]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_q_sec\(24));

-- Location: LCCOMB_X52_Y50_N18
\U06|w_q_sec[25]~81\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|w_q_sec[25]~81_combout\ = (\U06|w_q_sec\(25) & (\U06|w_q_sec[24]~80\ $ (GND))) # (!\U06|w_q_sec\(25) & (!\U06|w_q_sec[24]~80\ & VCC))
-- \U06|w_q_sec[25]~82\ = CARRY((\U06|w_q_sec\(25) & !\U06|w_q_sec[24]~80\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U06|w_q_sec\(25),
	datad => VCC,
	cin => \U06|w_q_sec[24]~80\,
	combout => \U06|w_q_sec[25]~81_combout\,
	cout => \U06|w_q_sec[25]~82\);

-- Location: FF_X52_Y50_N19
\U06|w_q_sec[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|w_q_sec[25]~81_combout\,
	clrn => \U06|ALT_INV_w_f_sec\(0),
	ena => \U06|w_q_sec[31]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_q_sec\(25));

-- Location: LCCOMB_X52_Y50_N20
\U06|w_q_sec[26]~83\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|w_q_sec[26]~83_combout\ = (\U06|w_q_sec\(26) & (!\U06|w_q_sec[25]~82\)) # (!\U06|w_q_sec\(26) & ((\U06|w_q_sec[25]~82\) # (GND)))
-- \U06|w_q_sec[26]~84\ = CARRY((!\U06|w_q_sec[25]~82\) # (!\U06|w_q_sec\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U06|w_q_sec\(26),
	datad => VCC,
	cin => \U06|w_q_sec[25]~82\,
	combout => \U06|w_q_sec[26]~83_combout\,
	cout => \U06|w_q_sec[26]~84\);

-- Location: FF_X52_Y50_N21
\U06|w_q_sec[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|w_q_sec[26]~83_combout\,
	clrn => \U06|ALT_INV_w_f_sec\(0),
	ena => \U06|w_q_sec[31]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_q_sec\(26));

-- Location: LCCOMB_X52_Y50_N22
\U06|w_q_sec[27]~85\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|w_q_sec[27]~85_combout\ = (\U06|w_q_sec\(27) & (\U06|w_q_sec[26]~84\ $ (GND))) # (!\U06|w_q_sec\(27) & (!\U06|w_q_sec[26]~84\ & VCC))
-- \U06|w_q_sec[27]~86\ = CARRY((\U06|w_q_sec\(27) & !\U06|w_q_sec[26]~84\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U06|w_q_sec\(27),
	datad => VCC,
	cin => \U06|w_q_sec[26]~84\,
	combout => \U06|w_q_sec[27]~85_combout\,
	cout => \U06|w_q_sec[27]~86\);

-- Location: FF_X52_Y50_N23
\U06|w_q_sec[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|w_q_sec[27]~85_combout\,
	clrn => \U06|ALT_INV_w_f_sec\(0),
	ena => \U06|w_q_sec[31]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_q_sec\(27));

-- Location: LCCOMB_X52_Y50_N24
\U06|w_q_sec[28]~87\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|w_q_sec[28]~87_combout\ = (\U06|w_q_sec\(28) & (!\U06|w_q_sec[27]~86\)) # (!\U06|w_q_sec\(28) & ((\U06|w_q_sec[27]~86\) # (GND)))
-- \U06|w_q_sec[28]~88\ = CARRY((!\U06|w_q_sec[27]~86\) # (!\U06|w_q_sec\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U06|w_q_sec\(28),
	datad => VCC,
	cin => \U06|w_q_sec[27]~86\,
	combout => \U06|w_q_sec[28]~87_combout\,
	cout => \U06|w_q_sec[28]~88\);

-- Location: FF_X52_Y50_N25
\U06|w_q_sec[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|w_q_sec[28]~87_combout\,
	clrn => \U06|ALT_INV_w_f_sec\(0),
	ena => \U06|w_q_sec[31]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_q_sec\(28));

-- Location: LCCOMB_X52_Y50_N26
\U06|w_q_sec[29]~89\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|w_q_sec[29]~89_combout\ = (\U06|w_q_sec\(29) & (\U06|w_q_sec[28]~88\ $ (GND))) # (!\U06|w_q_sec\(29) & (!\U06|w_q_sec[28]~88\ & VCC))
-- \U06|w_q_sec[29]~90\ = CARRY((\U06|w_q_sec\(29) & !\U06|w_q_sec[28]~88\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U06|w_q_sec\(29),
	datad => VCC,
	cin => \U06|w_q_sec[28]~88\,
	combout => \U06|w_q_sec[29]~89_combout\,
	cout => \U06|w_q_sec[29]~90\);

-- Location: FF_X52_Y50_N27
\U06|w_q_sec[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|w_q_sec[29]~89_combout\,
	clrn => \U06|ALT_INV_w_f_sec\(0),
	ena => \U06|w_q_sec[31]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_q_sec\(29));

-- Location: LCCOMB_X52_Y50_N28
\U06|w_q_sec[30]~91\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|w_q_sec[30]~91_combout\ = (\U06|w_q_sec\(30) & (!\U06|w_q_sec[29]~90\)) # (!\U06|w_q_sec\(30) & ((\U06|w_q_sec[29]~90\) # (GND)))
-- \U06|w_q_sec[30]~92\ = CARRY((!\U06|w_q_sec[29]~90\) # (!\U06|w_q_sec\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U06|w_q_sec\(30),
	datad => VCC,
	cin => \U06|w_q_sec[29]~90\,
	combout => \U06|w_q_sec[30]~91_combout\,
	cout => \U06|w_q_sec[30]~92\);

-- Location: FF_X52_Y50_N29
\U06|w_q_sec[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|w_q_sec[30]~91_combout\,
	clrn => \U06|ALT_INV_w_f_sec\(0),
	ena => \U06|w_q_sec[31]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_q_sec\(30));

-- Location: LCCOMB_X54_Y50_N18
\U06|LessThan4~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|LessThan4~6_combout\ = (!\U06|w_q_sec\(29) & (!\U06|w_q_sec\(28) & (!\U06|w_q_sec\(27) & !\U06|w_q_sec\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U06|w_q_sec\(29),
	datab => \U06|w_q_sec\(28),
	datac => \U06|w_q_sec\(27),
	datad => \U06|w_q_sec\(26),
	combout => \U06|LessThan4~6_combout\);

-- Location: LCCOMB_X52_Y51_N0
\U06|LessThan4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|LessThan4~0_combout\ = (!\U06|w_q_sec\(6) & (!\U06|w_q_sec\(8) & (!\U06|w_q_sec\(7) & !\U06|w_q_sec\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U06|w_q_sec\(6),
	datab => \U06|w_q_sec\(8),
	datac => \U06|w_q_sec\(7),
	datad => \U06|w_q_sec\(9),
	combout => \U06|LessThan4~0_combout\);

-- Location: LCCOMB_X51_Y50_N28
\U06|LessThan4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|LessThan4~2_combout\ = (!\U06|w_q_sec\(16) & (!\U06|w_q_sec\(15) & (!\U06|w_q_sec\(17) & !\U06|w_q_sec\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U06|w_q_sec\(16),
	datab => \U06|w_q_sec\(15),
	datac => \U06|w_q_sec\(17),
	datad => \U06|w_q_sec\(14),
	combout => \U06|LessThan4~2_combout\);

-- Location: LCCOMB_X51_Y50_N26
\U06|LessThan4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|LessThan4~1_combout\ = (!\U06|w_q_sec\(12) & (!\U06|w_q_sec\(10) & (!\U06|w_q_sec\(11) & !\U06|w_q_sec\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U06|w_q_sec\(12),
	datab => \U06|w_q_sec\(10),
	datac => \U06|w_q_sec\(11),
	datad => \U06|w_q_sec\(13),
	combout => \U06|LessThan4~1_combout\);

-- Location: LCCOMB_X51_Y50_N2
\U06|LessThan4~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|LessThan4~3_combout\ = (!\U06|w_q_sec\(19) & (!\U06|w_q_sec\(21) & (!\U06|w_q_sec\(20) & !\U06|w_q_sec\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U06|w_q_sec\(19),
	datab => \U06|w_q_sec\(21),
	datac => \U06|w_q_sec\(20),
	datad => \U06|w_q_sec\(18),
	combout => \U06|LessThan4~3_combout\);

-- Location: LCCOMB_X51_Y50_N24
\U06|LessThan4~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|LessThan4~4_combout\ = (\U06|LessThan4~0_combout\ & (\U06|LessThan4~2_combout\ & (\U06|LessThan4~1_combout\ & \U06|LessThan4~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U06|LessThan4~0_combout\,
	datab => \U06|LessThan4~2_combout\,
	datac => \U06|LessThan4~1_combout\,
	datad => \U06|LessThan4~3_combout\,
	combout => \U06|LessThan4~4_combout\);

-- Location: LCCOMB_X54_Y50_N24
\U06|LessThan4~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|LessThan4~5_combout\ = (!\U06|w_q_sec\(23) & (!\U06|w_q_sec\(24) & (!\U06|w_q_sec\(25) & !\U06|w_q_sec\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U06|w_q_sec\(23),
	datab => \U06|w_q_sec\(24),
	datac => \U06|w_q_sec\(25),
	datad => \U06|w_q_sec\(22),
	combout => \U06|LessThan4~5_combout\);

-- Location: LCCOMB_X54_Y50_N28
\U06|LessThan4~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|LessThan4~7_combout\ = (!\U06|w_q_sec\(30) & (\U06|LessThan4~6_combout\ & (\U06|LessThan4~4_combout\ & \U06|LessThan4~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U06|w_q_sec\(30),
	datab => \U06|LessThan4~6_combout\,
	datac => \U06|LessThan4~4_combout\,
	datad => \U06|LessThan4~5_combout\,
	combout => \U06|LessThan4~7_combout\);

-- Location: LCCOMB_X50_Y50_N28
\U06|Equal1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Equal1~1_combout\ = (\U06|w_f_etapa\(1) & (!\U06|w_f_etapa\(0) & !\U06|w_f_etapa\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U06|w_f_etapa\(1),
	datac => \U06|w_f_etapa\(0),
	datad => \U06|w_f_etapa\(2),
	combout => \U06|Equal1~1_combout\);

-- Location: LCCOMB_X52_Y50_N30
\U06|w_q_sec[31]~93\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|w_q_sec[31]~93_combout\ = \U06|w_q_sec\(31) $ (!\U06|w_q_sec[30]~92\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U06|w_q_sec\(31),
	cin => \U06|w_q_sec[30]~92\,
	combout => \U06|w_q_sec[31]~93_combout\);

-- Location: FF_X52_Y50_N31
\U06|w_q_sec[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|w_q_sec[31]~93_combout\,
	clrn => \U06|ALT_INV_w_f_sec\(0),
	ena => \U06|w_q_sec[31]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_q_sec\(31));

-- Location: LCCOMB_X54_Y50_N6
\U06|o_f_preparo~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|o_f_preparo~0_combout\ = (\U06|Equal1~1_combout\ & (!\U06|w_q_sec\(31) & ((\U06|preparo~1_combout\) # (!\U06|LessThan4~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U06|preparo~1_combout\,
	datab => \U06|LessThan4~7_combout\,
	datac => \U06|Equal1~1_combout\,
	datad => \U06|w_q_sec\(31),
	combout => \U06|o_f_preparo~0_combout\);

-- Location: LCCOMB_X50_Y50_N22
\U06|w_start~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|w_start~0_combout\ = (!\U06|Equal1~2_combout\ & ((\U06|o_f_preparo~0_combout\) # ((!\U06|LessThan7~1_combout\ & !\U06|Equal1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U06|Equal1~2_combout\,
	datab => \U06|LessThan7~1_combout\,
	datac => \U06|o_f_preparo~0_combout\,
	datad => \U06|Equal1~1_combout\,
	combout => \U06|w_start~0_combout\);

-- Location: LCCOMB_X50_Y50_N12
\U06|w_start~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|w_start~1_combout\ = (\U06|w_start~q\ & (((!\U06|preparo~6_combout\ & !\U06|Equal1~1_combout\)) # (!\U06|w_start~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U06|preparo~6_combout\,
	datab => \U06|w_start~q\,
	datac => \U06|w_start~0_combout\,
	datad => \U06|Equal1~1_combout\,
	combout => \U06|w_start~1_combout\);

-- Location: LCCOMB_X50_Y50_N0
\U06|o_f_pronto~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|o_f_pronto~2_combout\ = (!\U06|w_f_etapa\(1) & (!\U06|w_f_etapa\(0) & \U06|w_f_etapa\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U06|w_f_etapa\(1),
	datac => \U06|w_f_etapa\(0),
	datad => \U06|w_f_etapa\(2),
	combout => \U06|o_f_pronto~2_combout\);

-- Location: LCCOMB_X50_Y50_N4
\U06|w_start~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|w_start~2_combout\ = (\U06|w_start~1_combout\) # ((\U06|Equal1~0_combout\) # ((\U06|w_start~0_combout\ & \U06|o_f_pronto~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U06|w_start~1_combout\,
	datab => \U06|Equal1~0_combout\,
	datac => \U06|w_start~0_combout\,
	datad => \U06|o_f_pronto~2_combout\,
	combout => \U06|w_start~2_combout\);

-- Location: FF_X50_Y50_N5
\U06|w_start\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|w_start~2_combout\,
	ena => \U06|o_f_preparo~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_start~q\);

-- Location: FF_X51_Y48_N31
\U06|w_clear\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|w_q_sec[31]~41_combout\,
	ena => \U06|w_start~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_clear~q\);

-- Location: LCCOMB_X51_Y48_N4
\U07|w_counter[3]~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U07|w_counter[3]~72_combout\ = (\U06|w_clear~q\) # (\U06|w_start~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U06|w_clear~q\,
	datac => \U06|w_start~q\,
	combout => \U07|w_counter[3]~72_combout\);

-- Location: FF_X50_Y49_N9
\U07|w_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U07|w_counter[0]~24_combout\,
	clrn => \U01|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	sclr => \U06|ALT_INV_w_start~q\,
	ena => \U07|w_counter[3]~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U07|w_counter\(0));

-- Location: LCCOMB_X50_Y49_N10
\U07|w_counter[1]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U07|w_counter[1]~26_combout\ = (\U07|w_counter\(1) & (!\U07|w_counter[0]~25\)) # (!\U07|w_counter\(1) & ((\U07|w_counter[0]~25\) # (GND)))
-- \U07|w_counter[1]~27\ = CARRY((!\U07|w_counter[0]~25\) # (!\U07|w_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U07|w_counter\(1),
	datad => VCC,
	cin => \U07|w_counter[0]~25\,
	combout => \U07|w_counter[1]~26_combout\,
	cout => \U07|w_counter[1]~27\);

-- Location: FF_X50_Y49_N11
\U07|w_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U07|w_counter[1]~26_combout\,
	clrn => \U01|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	sclr => \U06|ALT_INV_w_start~q\,
	ena => \U07|w_counter[3]~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U07|w_counter\(1));

-- Location: LCCOMB_X50_Y49_N12
\U07|w_counter[2]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U07|w_counter[2]~28_combout\ = (\U07|w_counter\(2) & (\U07|w_counter[1]~27\ $ (GND))) # (!\U07|w_counter\(2) & (!\U07|w_counter[1]~27\ & VCC))
-- \U07|w_counter[2]~29\ = CARRY((\U07|w_counter\(2) & !\U07|w_counter[1]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U07|w_counter\(2),
	datad => VCC,
	cin => \U07|w_counter[1]~27\,
	combout => \U07|w_counter[2]~28_combout\,
	cout => \U07|w_counter[2]~29\);

-- Location: FF_X50_Y49_N13
\U07|w_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U07|w_counter[2]~28_combout\,
	clrn => \U01|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	sclr => \U06|ALT_INV_w_start~q\,
	ena => \U07|w_counter[3]~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U07|w_counter\(2));

-- Location: LCCOMB_X50_Y49_N14
\U07|w_counter[3]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U07|w_counter[3]~30_combout\ = (\U07|w_counter\(3) & (!\U07|w_counter[2]~29\)) # (!\U07|w_counter\(3) & ((\U07|w_counter[2]~29\) # (GND)))
-- \U07|w_counter[3]~31\ = CARRY((!\U07|w_counter[2]~29\) # (!\U07|w_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U07|w_counter\(3),
	datad => VCC,
	cin => \U07|w_counter[2]~29\,
	combout => \U07|w_counter[3]~30_combout\,
	cout => \U07|w_counter[3]~31\);

-- Location: FF_X50_Y49_N15
\U07|w_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U07|w_counter[3]~30_combout\,
	clrn => \U01|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	sclr => \U06|ALT_INV_w_start~q\,
	ena => \U07|w_counter[3]~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U07|w_counter\(3));

-- Location: LCCOMB_X50_Y49_N16
\U07|w_counter[4]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U07|w_counter[4]~32_combout\ = (\U07|w_counter\(4) & (\U07|w_counter[3]~31\ $ (GND))) # (!\U07|w_counter\(4) & (!\U07|w_counter[3]~31\ & VCC))
-- \U07|w_counter[4]~33\ = CARRY((\U07|w_counter\(4) & !\U07|w_counter[3]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U07|w_counter\(4),
	datad => VCC,
	cin => \U07|w_counter[3]~31\,
	combout => \U07|w_counter[4]~32_combout\,
	cout => \U07|w_counter[4]~33\);

-- Location: FF_X50_Y49_N17
\U07|w_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U07|w_counter[4]~32_combout\,
	clrn => \U01|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	sclr => \U06|ALT_INV_w_start~q\,
	ena => \U07|w_counter[3]~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U07|w_counter\(4));

-- Location: LCCOMB_X50_Y49_N18
\U07|w_counter[5]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U07|w_counter[5]~34_combout\ = (\U07|w_counter\(5) & (!\U07|w_counter[4]~33\)) # (!\U07|w_counter\(5) & ((\U07|w_counter[4]~33\) # (GND)))
-- \U07|w_counter[5]~35\ = CARRY((!\U07|w_counter[4]~33\) # (!\U07|w_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U07|w_counter\(5),
	datad => VCC,
	cin => \U07|w_counter[4]~33\,
	combout => \U07|w_counter[5]~34_combout\,
	cout => \U07|w_counter[5]~35\);

-- Location: FF_X50_Y49_N19
\U07|w_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U07|w_counter[5]~34_combout\,
	clrn => \U01|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	sclr => \U06|ALT_INV_w_start~q\,
	ena => \U07|w_counter[3]~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U07|w_counter\(5));

-- Location: LCCOMB_X50_Y49_N20
\U07|w_counter[6]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U07|w_counter[6]~36_combout\ = (\U07|w_counter\(6) & (\U07|w_counter[5]~35\ $ (GND))) # (!\U07|w_counter\(6) & (!\U07|w_counter[5]~35\ & VCC))
-- \U07|w_counter[6]~37\ = CARRY((\U07|w_counter\(6) & !\U07|w_counter[5]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U07|w_counter\(6),
	datad => VCC,
	cin => \U07|w_counter[5]~35\,
	combout => \U07|w_counter[6]~36_combout\,
	cout => \U07|w_counter[6]~37\);

-- Location: FF_X50_Y49_N21
\U07|w_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U07|w_counter[6]~36_combout\,
	clrn => \U01|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	sclr => \U06|ALT_INV_w_start~q\,
	ena => \U07|w_counter[3]~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U07|w_counter\(6));

-- Location: LCCOMB_X50_Y49_N22
\U07|w_counter[7]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U07|w_counter[7]~38_combout\ = (\U07|w_counter\(7) & (!\U07|w_counter[6]~37\)) # (!\U07|w_counter\(7) & ((\U07|w_counter[6]~37\) # (GND)))
-- \U07|w_counter[7]~39\ = CARRY((!\U07|w_counter[6]~37\) # (!\U07|w_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U07|w_counter\(7),
	datad => VCC,
	cin => \U07|w_counter[6]~37\,
	combout => \U07|w_counter[7]~38_combout\,
	cout => \U07|w_counter[7]~39\);

-- Location: FF_X50_Y49_N23
\U07|w_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U07|w_counter[7]~38_combout\,
	clrn => \U01|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	sclr => \U06|ALT_INV_w_start~q\,
	ena => \U07|w_counter[3]~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U07|w_counter\(7));

-- Location: LCCOMB_X50_Y49_N24
\U07|w_counter[8]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U07|w_counter[8]~40_combout\ = (\U07|w_counter\(8) & (\U07|w_counter[7]~39\ $ (GND))) # (!\U07|w_counter\(8) & (!\U07|w_counter[7]~39\ & VCC))
-- \U07|w_counter[8]~41\ = CARRY((\U07|w_counter\(8) & !\U07|w_counter[7]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U07|w_counter\(8),
	datad => VCC,
	cin => \U07|w_counter[7]~39\,
	combout => \U07|w_counter[8]~40_combout\,
	cout => \U07|w_counter[8]~41\);

-- Location: FF_X50_Y49_N25
\U07|w_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U07|w_counter[8]~40_combout\,
	clrn => \U01|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	sclr => \U06|ALT_INV_w_start~q\,
	ena => \U07|w_counter[3]~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U07|w_counter\(8));

-- Location: LCCOMB_X50_Y49_N26
\U07|w_counter[9]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U07|w_counter[9]~42_combout\ = (\U07|w_counter\(9) & (!\U07|w_counter[8]~41\)) # (!\U07|w_counter\(9) & ((\U07|w_counter[8]~41\) # (GND)))
-- \U07|w_counter[9]~43\ = CARRY((!\U07|w_counter[8]~41\) # (!\U07|w_counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U07|w_counter\(9),
	datad => VCC,
	cin => \U07|w_counter[8]~41\,
	combout => \U07|w_counter[9]~42_combout\,
	cout => \U07|w_counter[9]~43\);

-- Location: FF_X50_Y49_N27
\U07|w_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U07|w_counter[9]~42_combout\,
	clrn => \U01|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	sclr => \U06|ALT_INV_w_start~q\,
	ena => \U07|w_counter[3]~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U07|w_counter\(9));

-- Location: LCCOMB_X50_Y49_N28
\U07|w_counter[10]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U07|w_counter[10]~44_combout\ = (\U07|w_counter\(10) & (\U07|w_counter[9]~43\ $ (GND))) # (!\U07|w_counter\(10) & (!\U07|w_counter[9]~43\ & VCC))
-- \U07|w_counter[10]~45\ = CARRY((\U07|w_counter\(10) & !\U07|w_counter[9]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U07|w_counter\(10),
	datad => VCC,
	cin => \U07|w_counter[9]~43\,
	combout => \U07|w_counter[10]~44_combout\,
	cout => \U07|w_counter[10]~45\);

-- Location: FF_X50_Y49_N29
\U07|w_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U07|w_counter[10]~44_combout\,
	clrn => \U01|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	sclr => \U06|ALT_INV_w_start~q\,
	ena => \U07|w_counter[3]~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U07|w_counter\(10));

-- Location: LCCOMB_X50_Y49_N30
\U07|w_counter[11]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U07|w_counter[11]~46_combout\ = (\U07|w_counter\(11) & (!\U07|w_counter[10]~45\)) # (!\U07|w_counter\(11) & ((\U07|w_counter[10]~45\) # (GND)))
-- \U07|w_counter[11]~47\ = CARRY((!\U07|w_counter[10]~45\) # (!\U07|w_counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U07|w_counter\(11),
	datad => VCC,
	cin => \U07|w_counter[10]~45\,
	combout => \U07|w_counter[11]~46_combout\,
	cout => \U07|w_counter[11]~47\);

-- Location: FF_X50_Y49_N31
\U07|w_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U07|w_counter[11]~46_combout\,
	clrn => \U01|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	sclr => \U06|ALT_INV_w_start~q\,
	ena => \U07|w_counter[3]~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U07|w_counter\(11));

-- Location: LCCOMB_X50_Y48_N0
\U07|w_counter[12]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U07|w_counter[12]~48_combout\ = (\U07|w_counter\(12) & (\U07|w_counter[11]~47\ $ (GND))) # (!\U07|w_counter\(12) & (!\U07|w_counter[11]~47\ & VCC))
-- \U07|w_counter[12]~49\ = CARRY((\U07|w_counter\(12) & !\U07|w_counter[11]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U07|w_counter\(12),
	datad => VCC,
	cin => \U07|w_counter[11]~47\,
	combout => \U07|w_counter[12]~48_combout\,
	cout => \U07|w_counter[12]~49\);

-- Location: FF_X50_Y48_N1
\U07|w_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U07|w_counter[12]~48_combout\,
	clrn => \U01|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	sclr => \U06|ALT_INV_w_start~q\,
	ena => \U07|w_counter[3]~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U07|w_counter\(12));

-- Location: LCCOMB_X50_Y48_N2
\U07|w_counter[13]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U07|w_counter[13]~50_combout\ = (\U07|w_counter\(13) & (!\U07|w_counter[12]~49\)) # (!\U07|w_counter\(13) & ((\U07|w_counter[12]~49\) # (GND)))
-- \U07|w_counter[13]~51\ = CARRY((!\U07|w_counter[12]~49\) # (!\U07|w_counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U07|w_counter\(13),
	datad => VCC,
	cin => \U07|w_counter[12]~49\,
	combout => \U07|w_counter[13]~50_combout\,
	cout => \U07|w_counter[13]~51\);

-- Location: FF_X50_Y48_N3
\U07|w_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U07|w_counter[13]~50_combout\,
	clrn => \U01|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	sclr => \U06|ALT_INV_w_start~q\,
	ena => \U07|w_counter[3]~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U07|w_counter\(13));

-- Location: LCCOMB_X50_Y48_N4
\U07|w_counter[14]~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U07|w_counter[14]~52_combout\ = (\U07|w_counter\(14) & (\U07|w_counter[13]~51\ $ (GND))) # (!\U07|w_counter\(14) & (!\U07|w_counter[13]~51\ & VCC))
-- \U07|w_counter[14]~53\ = CARRY((\U07|w_counter\(14) & !\U07|w_counter[13]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U07|w_counter\(14),
	datad => VCC,
	cin => \U07|w_counter[13]~51\,
	combout => \U07|w_counter[14]~52_combout\,
	cout => \U07|w_counter[14]~53\);

-- Location: FF_X50_Y48_N5
\U07|w_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U07|w_counter[14]~52_combout\,
	clrn => \U01|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	sclr => \U06|ALT_INV_w_start~q\,
	ena => \U07|w_counter[3]~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U07|w_counter\(14));

-- Location: LCCOMB_X50_Y48_N6
\U07|w_counter[15]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U07|w_counter[15]~54_combout\ = (\U07|w_counter\(15) & (!\U07|w_counter[14]~53\)) # (!\U07|w_counter\(15) & ((\U07|w_counter[14]~53\) # (GND)))
-- \U07|w_counter[15]~55\ = CARRY((!\U07|w_counter[14]~53\) # (!\U07|w_counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U07|w_counter\(15),
	datad => VCC,
	cin => \U07|w_counter[14]~53\,
	combout => \U07|w_counter[15]~54_combout\,
	cout => \U07|w_counter[15]~55\);

-- Location: FF_X50_Y48_N7
\U07|w_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U07|w_counter[15]~54_combout\,
	clrn => \U01|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	sclr => \U06|ALT_INV_w_start~q\,
	ena => \U07|w_counter[3]~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U07|w_counter\(15));

-- Location: LCCOMB_X50_Y48_N8
\U07|w_counter[16]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U07|w_counter[16]~56_combout\ = (\U07|w_counter\(16) & (\U07|w_counter[15]~55\ $ (GND))) # (!\U07|w_counter\(16) & (!\U07|w_counter[15]~55\ & VCC))
-- \U07|w_counter[16]~57\ = CARRY((\U07|w_counter\(16) & !\U07|w_counter[15]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U07|w_counter\(16),
	datad => VCC,
	cin => \U07|w_counter[15]~55\,
	combout => \U07|w_counter[16]~56_combout\,
	cout => \U07|w_counter[16]~57\);

-- Location: FF_X50_Y48_N9
\U07|w_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U07|w_counter[16]~56_combout\,
	clrn => \U01|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	sclr => \U06|ALT_INV_w_start~q\,
	ena => \U07|w_counter[3]~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U07|w_counter\(16));

-- Location: LCCOMB_X50_Y49_N4
\U06|LessThan9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|LessThan9~0_combout\ = (\U07|w_counter\(13) & (\U07|w_counter\(10) & (\U07|w_counter\(11) & \U07|w_counter\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U07|w_counter\(13),
	datab => \U07|w_counter\(10),
	datac => \U07|w_counter\(11),
	datad => \U07|w_counter\(12),
	combout => \U06|LessThan9~0_combout\);

-- Location: LCCOMB_X50_Y49_N6
\U06|LessThan9~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|LessThan9~1_combout\ = (\U07|w_counter\(5) & ((\U07|w_counter\(2)) # ((\U07|w_counter\(0)) # (\U07|w_counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U07|w_counter\(2),
	datab => \U07|w_counter\(5),
	datac => \U07|w_counter\(0),
	datad => \U07|w_counter\(1),
	combout => \U06|LessThan9~1_combout\);

-- Location: LCCOMB_X50_Y49_N0
\U06|LessThan9~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|LessThan9~2_combout\ = (\U07|w_counter\(6)) # ((\U07|w_counter\(5) & ((\U07|w_counter\(4)) # (\U07|w_counter\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U07|w_counter\(4),
	datab => \U07|w_counter\(6),
	datac => \U07|w_counter\(3),
	datad => \U07|w_counter\(5),
	combout => \U06|LessThan9~2_combout\);

-- Location: LCCOMB_X50_Y49_N2
\U06|LessThan9~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|LessThan9~3_combout\ = (\U07|w_counter\(9)) # ((\U07|w_counter\(8)) # ((\U07|w_counter\(7)) # (\U06|LessThan9~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U07|w_counter\(9),
	datab => \U07|w_counter\(8),
	datac => \U07|w_counter\(7),
	datad => \U06|LessThan9~2_combout\,
	combout => \U06|LessThan9~3_combout\);

-- Location: LCCOMB_X50_Y48_N24
\U06|LessThan9~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|LessThan9~4_combout\ = (\U07|w_counter\(15) & (\U06|LessThan9~0_combout\ & ((\U06|LessThan9~1_combout\) # (\U06|LessThan9~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U07|w_counter\(15),
	datab => \U06|LessThan9~0_combout\,
	datac => \U06|LessThan9~1_combout\,
	datad => \U06|LessThan9~3_combout\,
	combout => \U06|LessThan9~4_combout\);

-- Location: LCCOMB_X50_Y48_N30
\U06|LessThan9~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|LessThan9~5_combout\ = (\U07|w_counter\(16)) # ((\U06|LessThan9~4_combout\) # ((\U07|w_counter\(15) & \U07|w_counter\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U07|w_counter\(15),
	datab => \U07|w_counter\(16),
	datac => \U07|w_counter\(14),
	datad => \U06|LessThan9~4_combout\,
	combout => \U06|LessThan9~5_combout\);

-- Location: LCCOMB_X50_Y48_N10
\U07|w_counter[17]~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U07|w_counter[17]~58_combout\ = (\U07|w_counter\(17) & (!\U07|w_counter[16]~57\)) # (!\U07|w_counter\(17) & ((\U07|w_counter[16]~57\) # (GND)))
-- \U07|w_counter[17]~59\ = CARRY((!\U07|w_counter[16]~57\) # (!\U07|w_counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U07|w_counter\(17),
	datad => VCC,
	cin => \U07|w_counter[16]~57\,
	combout => \U07|w_counter[17]~58_combout\,
	cout => \U07|w_counter[17]~59\);

-- Location: FF_X50_Y48_N11
\U07|w_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U07|w_counter[17]~58_combout\,
	clrn => \U01|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	sclr => \U06|ALT_INV_w_start~q\,
	ena => \U07|w_counter[3]~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U07|w_counter\(17));

-- Location: LCCOMB_X50_Y48_N12
\U07|w_counter[18]~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U07|w_counter[18]~60_combout\ = (\U07|w_counter\(18) & (\U07|w_counter[17]~59\ $ (GND))) # (!\U07|w_counter\(18) & (!\U07|w_counter[17]~59\ & VCC))
-- \U07|w_counter[18]~61\ = CARRY((\U07|w_counter\(18) & !\U07|w_counter[17]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U07|w_counter\(18),
	datad => VCC,
	cin => \U07|w_counter[17]~59\,
	combout => \U07|w_counter[18]~60_combout\,
	cout => \U07|w_counter[18]~61\);

-- Location: FF_X50_Y48_N13
\U07|w_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U07|w_counter[18]~60_combout\,
	clrn => \U01|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	sclr => \U06|ALT_INV_w_start~q\,
	ena => \U07|w_counter[3]~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U07|w_counter\(18));

-- Location: LCCOMB_X50_Y48_N14
\U07|w_counter[19]~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U07|w_counter[19]~62_combout\ = (\U07|w_counter\(19) & (!\U07|w_counter[18]~61\)) # (!\U07|w_counter\(19) & ((\U07|w_counter[18]~61\) # (GND)))
-- \U07|w_counter[19]~63\ = CARRY((!\U07|w_counter[18]~61\) # (!\U07|w_counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U07|w_counter\(19),
	datad => VCC,
	cin => \U07|w_counter[18]~61\,
	combout => \U07|w_counter[19]~62_combout\,
	cout => \U07|w_counter[19]~63\);

-- Location: FF_X50_Y48_N15
\U07|w_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U07|w_counter[19]~62_combout\,
	clrn => \U01|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	sclr => \U06|ALT_INV_w_start~q\,
	ena => \U07|w_counter[3]~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U07|w_counter\(19));

-- Location: LCCOMB_X50_Y48_N16
\U07|w_counter[20]~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U07|w_counter[20]~64_combout\ = (\U07|w_counter\(20) & (\U07|w_counter[19]~63\ $ (GND))) # (!\U07|w_counter\(20) & (!\U07|w_counter[19]~63\ & VCC))
-- \U07|w_counter[20]~65\ = CARRY((\U07|w_counter\(20) & !\U07|w_counter[19]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U07|w_counter\(20),
	datad => VCC,
	cin => \U07|w_counter[19]~63\,
	combout => \U07|w_counter[20]~64_combout\,
	cout => \U07|w_counter[20]~65\);

-- Location: FF_X50_Y48_N17
\U07|w_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U07|w_counter[20]~64_combout\,
	clrn => \U01|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	sclr => \U06|ALT_INV_w_start~q\,
	ena => \U07|w_counter[3]~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U07|w_counter\(20));

-- Location: LCCOMB_X50_Y48_N18
\U07|w_counter[21]~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U07|w_counter[21]~66_combout\ = (\U07|w_counter\(21) & (!\U07|w_counter[20]~65\)) # (!\U07|w_counter\(21) & ((\U07|w_counter[20]~65\) # (GND)))
-- \U07|w_counter[21]~67\ = CARRY((!\U07|w_counter[20]~65\) # (!\U07|w_counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U07|w_counter\(21),
	datad => VCC,
	cin => \U07|w_counter[20]~65\,
	combout => \U07|w_counter[21]~66_combout\,
	cout => \U07|w_counter[21]~67\);

-- Location: FF_X50_Y48_N19
\U07|w_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U07|w_counter[21]~66_combout\,
	clrn => \U01|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	sclr => \U06|ALT_INV_w_start~q\,
	ena => \U07|w_counter[3]~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U07|w_counter\(21));

-- Location: LCCOMB_X50_Y48_N20
\U07|w_counter[22]~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U07|w_counter[22]~68_combout\ = (\U07|w_counter\(22) & (\U07|w_counter[21]~67\ $ (GND))) # (!\U07|w_counter\(22) & (!\U07|w_counter[21]~67\ & VCC))
-- \U07|w_counter[22]~69\ = CARRY((\U07|w_counter\(22) & !\U07|w_counter[21]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U07|w_counter\(22),
	datad => VCC,
	cin => \U07|w_counter[21]~67\,
	combout => \U07|w_counter[22]~68_combout\,
	cout => \U07|w_counter[22]~69\);

-- Location: FF_X50_Y48_N21
\U07|w_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U07|w_counter[22]~68_combout\,
	clrn => \U01|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	sclr => \U06|ALT_INV_w_start~q\,
	ena => \U07|w_counter[3]~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U07|w_counter\(22));

-- Location: LCCOMB_X50_Y48_N22
\U07|w_counter[23]~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U07|w_counter[23]~70_combout\ = \U07|w_counter\(23) $ (\U07|w_counter[22]~69\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U07|w_counter\(23),
	cin => \U07|w_counter[22]~69\,
	combout => \U07|w_counter[23]~70_combout\);

-- Location: FF_X50_Y48_N23
\U07|w_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U07|w_counter[23]~70_combout\,
	clrn => \U01|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	sclr => \U06|ALT_INV_w_start~q\,
	ena => \U07|w_counter[3]~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U07|w_counter\(23));

-- Location: LCCOMB_X50_Y48_N28
\U06|LessThan9~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|LessThan9~6_combout\ = (\U07|w_counter\(18) & (\U07|w_counter\(20) & (\U07|w_counter\(19) & \U07|w_counter\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U07|w_counter\(18),
	datab => \U07|w_counter\(20),
	datac => \U07|w_counter\(19),
	datad => \U07|w_counter\(17),
	combout => \U06|LessThan9~6_combout\);

-- Location: LCCOMB_X50_Y48_N26
\U06|LessThan9~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|LessThan9~7_combout\ = (\U06|LessThan9~5_combout\ & (\U07|w_counter\(21) & (\U07|w_counter\(23) & \U06|LessThan9~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U06|LessThan9~5_combout\,
	datab => \U07|w_counter\(21),
	datac => \U07|w_counter\(23),
	datad => \U06|LessThan9~6_combout\,
	combout => \U06|LessThan9~7_combout\);

-- Location: LCCOMB_X51_Y48_N30
\U06|w_q_sec[31]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|w_q_sec[31]~41_combout\ = (!\U06|w_clear~q\ & ((\U06|LessThan9~7_combout\) # ((\U07|w_counter\(22) & \U07|w_counter\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U06|LessThan9~7_combout\,
	datab => \U07|w_counter\(22),
	datac => \U06|w_clear~q\,
	datad => \U07|w_counter\(23),
	combout => \U06|w_q_sec[31]~41_combout\);

-- Location: LCCOMB_X51_Y48_N24
\U06|w_q_sec[0]~95\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|w_q_sec[0]~95_combout\ = \U06|w_q_sec\(0) $ (((\U06|w_q_sec[31]~41_combout\ & \U06|w_start~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U06|w_q_sec[31]~41_combout\,
	datac => \U06|w_q_sec\(0),
	datad => \U06|w_start~q\,
	combout => \U06|w_q_sec[0]~95_combout\);

-- Location: FF_X51_Y48_N25
\U06|w_q_sec[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|w_q_sec[0]~95_combout\,
	clrn => \U06|ALT_INV_w_f_sec\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_q_sec\(0));

-- Location: LCCOMB_X54_Y50_N4
\U06|preparo~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|preparo~5_combout\ = (!\U06|w_f_etapa\(1) & (\U06|w_f_etapa\(2) & (\U06|w_f_etapa\(0) & !\U06|w_q_sec\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U06|w_f_etapa\(1),
	datab => \U06|w_f_etapa\(2),
	datac => \U06|w_f_etapa\(0),
	datad => \U06|w_q_sec\(31),
	combout => \U06|preparo~5_combout\);

-- Location: LCCOMB_X54_Y50_N16
\U06|LessThan4~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|LessThan4~8_combout\ = (\U06|preparo~0_combout\ & (!\U06|w_q_sec\(5) & \U06|LessThan4~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U06|preparo~0_combout\,
	datac => \U06|w_q_sec\(5),
	datad => \U06|LessThan4~7_combout\,
	combout => \U06|LessThan4~8_combout\);

-- Location: LCCOMB_X54_Y50_N22
\U06|preparo~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|preparo~6_combout\ = (\U06|preparo~5_combout\ & ((\U06|w_q_sec\(0)) # ((\U06|w_q_sec\(1)) # (!\U06|LessThan4~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U06|w_q_sec\(0),
	datab => \U06|w_q_sec\(1),
	datac => \U06|preparo~5_combout\,
	datad => \U06|LessThan4~8_combout\,
	combout => \U06|preparo~6_combout\);

-- Location: LCCOMB_X49_Y49_N2
\U06|Add4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Add4~2_combout\ = (\U06|w_f_pisca\(1) & (!\U06|Add4~1\)) # (!\U06|w_f_pisca\(1) & ((\U06|Add4~1\) # (GND)))
-- \U06|Add4~3\ = CARRY((!\U06|Add4~1\) # (!\U06|w_f_pisca\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U06|w_f_pisca\(1),
	datad => VCC,
	cin => \U06|Add4~1\,
	combout => \U06|Add4~2_combout\,
	cout => \U06|Add4~3\);

-- Location: LCCOMB_X49_Y49_N4
\U06|Add4~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Add4~4_combout\ = (\U06|w_f_pisca\(2) & (\U06|Add4~3\ $ (GND))) # (!\U06|w_f_pisca\(2) & (!\U06|Add4~3\ & VCC))
-- \U06|Add4~5\ = CARRY((\U06|w_f_pisca\(2) & !\U06|Add4~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U06|w_f_pisca\(2),
	datad => VCC,
	cin => \U06|Add4~3\,
	combout => \U06|Add4~4_combout\,
	cout => \U06|Add4~5\);

-- Location: LCCOMB_X46_Y50_N8
\U06|Add4~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Add4~12_combout\ = (\U06|Add4~4_combout\ & !\U06|LessThan7~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U06|Add4~4_combout\,
	datad => \U06|LessThan7~1_combout\,
	combout => \U06|Add4~12_combout\);

-- Location: FF_X46_Y50_N9
\U06|w_f_pisca[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|Add4~12_combout\,
	ena => \U06|w_f_pisca[31]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_f_pisca\(2));

-- Location: LCCOMB_X49_Y49_N6
\U06|Add4~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Add4~6_combout\ = (\U06|w_f_pisca\(3) & (!\U06|Add4~5\)) # (!\U06|w_f_pisca\(3) & ((\U06|Add4~5\) # (GND)))
-- \U06|Add4~7\ = CARRY((!\U06|Add4~5\) # (!\U06|w_f_pisca\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U06|w_f_pisca\(3),
	datad => VCC,
	cin => \U06|Add4~5\,
	combout => \U06|Add4~6_combout\,
	cout => \U06|Add4~7\);

-- Location: LCCOMB_X46_Y50_N30
\U06|Add4~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Add4~13_combout\ = (\U06|Add4~6_combout\ & !\U06|LessThan7~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U06|Add4~6_combout\,
	datad => \U06|LessThan7~1_combout\,
	combout => \U06|Add4~13_combout\);

-- Location: FF_X46_Y50_N31
\U06|w_f_pisca[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|Add4~13_combout\,
	ena => \U06|w_f_pisca[31]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_f_pisca\(3));

-- Location: LCCOMB_X49_Y49_N8
\U06|Add4~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Add4~8_combout\ = (\U06|w_f_pisca\(4) & (\U06|Add4~7\ $ (GND))) # (!\U06|w_f_pisca\(4) & (!\U06|Add4~7\ & VCC))
-- \U06|Add4~9\ = CARRY((\U06|w_f_pisca\(4) & !\U06|Add4~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U06|w_f_pisca\(4),
	datad => VCC,
	cin => \U06|Add4~7\,
	combout => \U06|Add4~8_combout\,
	cout => \U06|Add4~9\);

-- Location: LCCOMB_X49_Y50_N4
\U06|w_f_pisca[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|w_f_pisca[4]~4_combout\ = (\U06|w_f_pisca[31]~32_combout\ & (\U06|Add4~8_combout\ & (!\U06|LessThan7~1_combout\))) # (!\U06|w_f_pisca[31]~32_combout\ & (((\U06|w_f_pisca\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U06|Add4~8_combout\,
	datab => \U06|LessThan7~1_combout\,
	datac => \U06|w_f_pisca\(4),
	datad => \U06|w_f_pisca[31]~32_combout\,
	combout => \U06|w_f_pisca[4]~4_combout\);

-- Location: FF_X49_Y50_N5
\U06|w_f_pisca[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|w_f_pisca[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_f_pisca\(4));

-- Location: LCCOMB_X49_Y49_N10
\U06|Add4~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Add4~14_combout\ = (\U06|w_f_pisca\(5) & (!\U06|Add4~9\)) # (!\U06|w_f_pisca\(5) & ((\U06|Add4~9\) # (GND)))
-- \U06|Add4~15\ = CARRY((!\U06|Add4~9\) # (!\U06|w_f_pisca\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U06|w_f_pisca\(5),
	datad => VCC,
	cin => \U06|Add4~9\,
	combout => \U06|Add4~14_combout\,
	cout => \U06|Add4~15\);

-- Location: LCCOMB_X49_Y50_N16
\U06|w_f_pisca[5]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|w_f_pisca[5]~5_combout\ = (\U06|w_f_pisca[31]~32_combout\ & (\U06|Add4~14_combout\ & (!\U06|LessThan7~1_combout\))) # (!\U06|w_f_pisca[31]~32_combout\ & (((\U06|w_f_pisca\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U06|Add4~14_combout\,
	datab => \U06|LessThan7~1_combout\,
	datac => \U06|w_f_pisca\(5),
	datad => \U06|w_f_pisca[31]~32_combout\,
	combout => \U06|w_f_pisca[5]~5_combout\);

-- Location: FF_X49_Y50_N17
\U06|w_f_pisca[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|w_f_pisca[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_f_pisca\(5));

-- Location: LCCOMB_X49_Y49_N12
\U06|Add4~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Add4~16_combout\ = (\U06|w_f_pisca\(6) & (\U06|Add4~15\ $ (GND))) # (!\U06|w_f_pisca\(6) & (!\U06|Add4~15\ & VCC))
-- \U06|Add4~17\ = CARRY((\U06|w_f_pisca\(6) & !\U06|Add4~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U06|w_f_pisca\(6),
	datad => VCC,
	cin => \U06|Add4~15\,
	combout => \U06|Add4~16_combout\,
	cout => \U06|Add4~17\);

-- Location: LCCOMB_X49_Y50_N14
\U06|w_f_pisca[6]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|w_f_pisca[6]~6_combout\ = (\U06|w_f_pisca[31]~32_combout\ & (\U06|Add4~16_combout\ & (!\U06|LessThan7~1_combout\))) # (!\U06|w_f_pisca[31]~32_combout\ & (((\U06|w_f_pisca\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U06|Add4~16_combout\,
	datab => \U06|LessThan7~1_combout\,
	datac => \U06|w_f_pisca\(6),
	datad => \U06|w_f_pisca[31]~32_combout\,
	combout => \U06|w_f_pisca[6]~6_combout\);

-- Location: FF_X49_Y50_N15
\U06|w_f_pisca[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|w_f_pisca[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_f_pisca\(6));

-- Location: LCCOMB_X49_Y49_N14
\U06|Add4~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Add4~18_combout\ = (\U06|w_f_pisca\(7) & (!\U06|Add4~17\)) # (!\U06|w_f_pisca\(7) & ((\U06|Add4~17\) # (GND)))
-- \U06|Add4~19\ = CARRY((!\U06|Add4~17\) # (!\U06|w_f_pisca\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U06|w_f_pisca\(7),
	datad => VCC,
	cin => \U06|Add4~17\,
	combout => \U06|Add4~18_combout\,
	cout => \U06|Add4~19\);

-- Location: LCCOMB_X49_Y50_N20
\U06|w_f_pisca[7]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|w_f_pisca[7]~7_combout\ = (\U06|w_f_pisca[31]~32_combout\ & (\U06|Add4~18_combout\ & (!\U06|LessThan7~1_combout\))) # (!\U06|w_f_pisca[31]~32_combout\ & (((\U06|w_f_pisca\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U06|Add4~18_combout\,
	datab => \U06|LessThan7~1_combout\,
	datac => \U06|w_f_pisca\(7),
	datad => \U06|w_f_pisca[31]~32_combout\,
	combout => \U06|w_f_pisca[7]~7_combout\);

-- Location: FF_X49_Y50_N21
\U06|w_f_pisca[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|w_f_pisca[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_f_pisca\(7));

-- Location: LCCOMB_X49_Y49_N16
\U06|Add4~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Add4~20_combout\ = (\U06|w_f_pisca\(8) & (\U06|Add4~19\ $ (GND))) # (!\U06|w_f_pisca\(8) & (!\U06|Add4~19\ & VCC))
-- \U06|Add4~21\ = CARRY((\U06|w_f_pisca\(8) & !\U06|Add4~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U06|w_f_pisca\(8),
	datad => VCC,
	cin => \U06|Add4~19\,
	combout => \U06|Add4~20_combout\,
	cout => \U06|Add4~21\);

-- Location: LCCOMB_X46_Y50_N20
\U06|w_f_pisca[8]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|w_f_pisca[8]~8_combout\ = (\U06|w_f_pisca[31]~32_combout\ & (\U06|Add4~20_combout\ & (!\U06|LessThan7~1_combout\))) # (!\U06|w_f_pisca[31]~32_combout\ & (((\U06|w_f_pisca\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U06|Add4~20_combout\,
	datab => \U06|LessThan7~1_combout\,
	datac => \U06|w_f_pisca\(8),
	datad => \U06|w_f_pisca[31]~32_combout\,
	combout => \U06|w_f_pisca[8]~8_combout\);

-- Location: FF_X46_Y50_N21
\U06|w_f_pisca[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|w_f_pisca[8]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_f_pisca\(8));

-- Location: LCCOMB_X49_Y49_N18
\U06|Add4~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Add4~22_combout\ = (\U06|w_f_pisca\(9) & (!\U06|Add4~21\)) # (!\U06|w_f_pisca\(9) & ((\U06|Add4~21\) # (GND)))
-- \U06|Add4~23\ = CARRY((!\U06|Add4~21\) # (!\U06|w_f_pisca\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U06|w_f_pisca\(9),
	datad => VCC,
	cin => \U06|Add4~21\,
	combout => \U06|Add4~22_combout\,
	cout => \U06|Add4~23\);

-- Location: LCCOMB_X47_Y49_N4
\U06|w_f_pisca[9]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|w_f_pisca[9]~9_combout\ = (\U06|w_f_pisca[31]~32_combout\ & (\U06|Add4~22_combout\ & ((!\U06|LessThan7~1_combout\)))) # (!\U06|w_f_pisca[31]~32_combout\ & (((\U06|w_f_pisca\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U06|w_f_pisca[31]~32_combout\,
	datab => \U06|Add4~22_combout\,
	datac => \U06|w_f_pisca\(9),
	datad => \U06|LessThan7~1_combout\,
	combout => \U06|w_f_pisca[9]~9_combout\);

-- Location: FF_X47_Y49_N5
\U06|w_f_pisca[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|w_f_pisca[9]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_f_pisca\(9));

-- Location: LCCOMB_X49_Y49_N20
\U06|Add4~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Add4~24_combout\ = (\U06|w_f_pisca\(10) & (\U06|Add4~23\ $ (GND))) # (!\U06|w_f_pisca\(10) & (!\U06|Add4~23\ & VCC))
-- \U06|Add4~25\ = CARRY((\U06|w_f_pisca\(10) & !\U06|Add4~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U06|w_f_pisca\(10),
	datad => VCC,
	cin => \U06|Add4~23\,
	combout => \U06|Add4~24_combout\,
	cout => \U06|Add4~25\);

-- Location: LCCOMB_X47_Y49_N6
\U06|w_f_pisca[10]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|w_f_pisca[10]~10_combout\ = (\U06|w_f_pisca[31]~32_combout\ & (\U06|Add4~24_combout\ & ((!\U06|LessThan7~1_combout\)))) # (!\U06|w_f_pisca[31]~32_combout\ & (((\U06|w_f_pisca\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U06|w_f_pisca[31]~32_combout\,
	datab => \U06|Add4~24_combout\,
	datac => \U06|w_f_pisca\(10),
	datad => \U06|LessThan7~1_combout\,
	combout => \U06|w_f_pisca[10]~10_combout\);

-- Location: FF_X47_Y49_N7
\U06|w_f_pisca[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|w_f_pisca[10]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_f_pisca\(10));

-- Location: LCCOMB_X49_Y49_N22
\U06|Add4~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Add4~26_combout\ = (\U06|w_f_pisca\(11) & (!\U06|Add4~25\)) # (!\U06|w_f_pisca\(11) & ((\U06|Add4~25\) # (GND)))
-- \U06|Add4~27\ = CARRY((!\U06|Add4~25\) # (!\U06|w_f_pisca\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U06|w_f_pisca\(11),
	datad => VCC,
	cin => \U06|Add4~25\,
	combout => \U06|Add4~26_combout\,
	cout => \U06|Add4~27\);

-- Location: LCCOMB_X47_Y49_N8
\U06|w_f_pisca[11]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|w_f_pisca[11]~11_combout\ = (\U06|w_f_pisca[31]~32_combout\ & (\U06|Add4~26_combout\ & ((!\U06|LessThan7~1_combout\)))) # (!\U06|w_f_pisca[31]~32_combout\ & (((\U06|w_f_pisca\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U06|w_f_pisca[31]~32_combout\,
	datab => \U06|Add4~26_combout\,
	datac => \U06|w_f_pisca\(11),
	datad => \U06|LessThan7~1_combout\,
	combout => \U06|w_f_pisca[11]~11_combout\);

-- Location: FF_X47_Y49_N9
\U06|w_f_pisca[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|w_f_pisca[11]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_f_pisca\(11));

-- Location: LCCOMB_X49_Y49_N24
\U06|Add4~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Add4~28_combout\ = (\U06|w_f_pisca\(12) & (\U06|Add4~27\ $ (GND))) # (!\U06|w_f_pisca\(12) & (!\U06|Add4~27\ & VCC))
-- \U06|Add4~29\ = CARRY((\U06|w_f_pisca\(12) & !\U06|Add4~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U06|w_f_pisca\(12),
	datad => VCC,
	cin => \U06|Add4~27\,
	combout => \U06|Add4~28_combout\,
	cout => \U06|Add4~29\);

-- Location: LCCOMB_X47_Y49_N30
\U06|w_f_pisca[12]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|w_f_pisca[12]~12_combout\ = (\U06|w_f_pisca[31]~32_combout\ & (\U06|Add4~28_combout\ & ((!\U06|LessThan7~1_combout\)))) # (!\U06|w_f_pisca[31]~32_combout\ & (((\U06|w_f_pisca\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U06|w_f_pisca[31]~32_combout\,
	datab => \U06|Add4~28_combout\,
	datac => \U06|w_f_pisca\(12),
	datad => \U06|LessThan7~1_combout\,
	combout => \U06|w_f_pisca[12]~12_combout\);

-- Location: FF_X47_Y49_N31
\U06|w_f_pisca[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|w_f_pisca[12]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_f_pisca\(12));

-- Location: LCCOMB_X49_Y49_N26
\U06|Add4~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Add4~30_combout\ = (\U06|w_f_pisca\(13) & (!\U06|Add4~29\)) # (!\U06|w_f_pisca\(13) & ((\U06|Add4~29\) # (GND)))
-- \U06|Add4~31\ = CARRY((!\U06|Add4~29\) # (!\U06|w_f_pisca\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U06|w_f_pisca\(13),
	datad => VCC,
	cin => \U06|Add4~29\,
	combout => \U06|Add4~30_combout\,
	cout => \U06|Add4~31\);

-- Location: LCCOMB_X47_Y49_N22
\U06|w_f_pisca[13]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|w_f_pisca[13]~13_combout\ = (\U06|w_f_pisca[31]~32_combout\ & (\U06|Add4~30_combout\ & ((!\U06|LessThan7~1_combout\)))) # (!\U06|w_f_pisca[31]~32_combout\ & (((\U06|w_f_pisca\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U06|w_f_pisca[31]~32_combout\,
	datab => \U06|Add4~30_combout\,
	datac => \U06|w_f_pisca\(13),
	datad => \U06|LessThan7~1_combout\,
	combout => \U06|w_f_pisca[13]~13_combout\);

-- Location: FF_X47_Y49_N23
\U06|w_f_pisca[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|w_f_pisca[13]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_f_pisca\(13));

-- Location: LCCOMB_X49_Y49_N28
\U06|Add4~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Add4~32_combout\ = (\U06|w_f_pisca\(14) & (\U06|Add4~31\ $ (GND))) # (!\U06|w_f_pisca\(14) & (!\U06|Add4~31\ & VCC))
-- \U06|Add4~33\ = CARRY((\U06|w_f_pisca\(14) & !\U06|Add4~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U06|w_f_pisca\(14),
	datad => VCC,
	cin => \U06|Add4~31\,
	combout => \U06|Add4~32_combout\,
	cout => \U06|Add4~33\);

-- Location: LCCOMB_X47_Y49_N20
\U06|w_f_pisca[14]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|w_f_pisca[14]~14_combout\ = (\U06|w_f_pisca[31]~32_combout\ & (\U06|Add4~32_combout\ & ((!\U06|LessThan7~1_combout\)))) # (!\U06|w_f_pisca[31]~32_combout\ & (((\U06|w_f_pisca\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U06|w_f_pisca[31]~32_combout\,
	datab => \U06|Add4~32_combout\,
	datac => \U06|w_f_pisca\(14),
	datad => \U06|LessThan7~1_combout\,
	combout => \U06|w_f_pisca[14]~14_combout\);

-- Location: FF_X47_Y49_N21
\U06|w_f_pisca[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|w_f_pisca[14]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_f_pisca\(14));

-- Location: LCCOMB_X49_Y49_N30
\U06|Add4~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Add4~34_combout\ = (\U06|w_f_pisca\(15) & (!\U06|Add4~33\)) # (!\U06|w_f_pisca\(15) & ((\U06|Add4~33\) # (GND)))
-- \U06|Add4~35\ = CARRY((!\U06|Add4~33\) # (!\U06|w_f_pisca\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U06|w_f_pisca\(15),
	datad => VCC,
	cin => \U06|Add4~33\,
	combout => \U06|Add4~34_combout\,
	cout => \U06|Add4~35\);

-- Location: LCCOMB_X47_Y49_N14
\U06|w_f_pisca[15]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|w_f_pisca[15]~15_combout\ = (\U06|w_f_pisca[31]~32_combout\ & (\U06|Add4~34_combout\ & ((!\U06|LessThan7~1_combout\)))) # (!\U06|w_f_pisca[31]~32_combout\ & (((\U06|w_f_pisca\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U06|w_f_pisca[31]~32_combout\,
	datab => \U06|Add4~34_combout\,
	datac => \U06|w_f_pisca\(15),
	datad => \U06|LessThan7~1_combout\,
	combout => \U06|w_f_pisca[15]~15_combout\);

-- Location: FF_X47_Y49_N15
\U06|w_f_pisca[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|w_f_pisca[15]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_f_pisca\(15));

-- Location: LCCOMB_X49_Y48_N0
\U06|Add4~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Add4~36_combout\ = (\U06|w_f_pisca\(16) & (\U06|Add4~35\ $ (GND))) # (!\U06|w_f_pisca\(16) & (!\U06|Add4~35\ & VCC))
-- \U06|Add4~37\ = CARRY((\U06|w_f_pisca\(16) & !\U06|Add4~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U06|w_f_pisca\(16),
	datad => VCC,
	cin => \U06|Add4~35\,
	combout => \U06|Add4~36_combout\,
	cout => \U06|Add4~37\);

-- Location: LCCOMB_X47_Y48_N0
\U06|w_f_pisca[16]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|w_f_pisca[16]~16_combout\ = (\U06|w_f_pisca[31]~32_combout\ & (\U06|Add4~36_combout\ & (!\U06|LessThan7~1_combout\))) # (!\U06|w_f_pisca[31]~32_combout\ & (((\U06|w_f_pisca\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U06|Add4~36_combout\,
	datab => \U06|LessThan7~1_combout\,
	datac => \U06|w_f_pisca\(16),
	datad => \U06|w_f_pisca[31]~32_combout\,
	combout => \U06|w_f_pisca[16]~16_combout\);

-- Location: FF_X47_Y48_N1
\U06|w_f_pisca[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|w_f_pisca[16]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_f_pisca\(16));

-- Location: LCCOMB_X49_Y48_N2
\U06|Add4~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Add4~38_combout\ = (\U06|w_f_pisca\(17) & (!\U06|Add4~37\)) # (!\U06|w_f_pisca\(17) & ((\U06|Add4~37\) # (GND)))
-- \U06|Add4~39\ = CARRY((!\U06|Add4~37\) # (!\U06|w_f_pisca\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U06|w_f_pisca\(17),
	datad => VCC,
	cin => \U06|Add4~37\,
	combout => \U06|Add4~38_combout\,
	cout => \U06|Add4~39\);

-- Location: LCCOMB_X47_Y49_N18
\U06|w_f_pisca[17]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|w_f_pisca[17]~17_combout\ = (\U06|w_f_pisca[31]~32_combout\ & (\U06|Add4~38_combout\ & ((!\U06|LessThan7~1_combout\)))) # (!\U06|w_f_pisca[31]~32_combout\ & (((\U06|w_f_pisca\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U06|w_f_pisca[31]~32_combout\,
	datab => \U06|Add4~38_combout\,
	datac => \U06|w_f_pisca\(17),
	datad => \U06|LessThan7~1_combout\,
	combout => \U06|w_f_pisca[17]~17_combout\);

-- Location: FF_X47_Y49_N19
\U06|w_f_pisca[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|w_f_pisca[17]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_f_pisca\(17));

-- Location: LCCOMB_X49_Y48_N4
\U06|Add4~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Add4~40_combout\ = (\U06|w_f_pisca\(18) & (\U06|Add4~39\ $ (GND))) # (!\U06|w_f_pisca\(18) & (!\U06|Add4~39\ & VCC))
-- \U06|Add4~41\ = CARRY((\U06|w_f_pisca\(18) & !\U06|Add4~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U06|w_f_pisca\(18),
	datad => VCC,
	cin => \U06|Add4~39\,
	combout => \U06|Add4~40_combout\,
	cout => \U06|Add4~41\);

-- Location: LCCOMB_X47_Y48_N10
\U06|w_f_pisca[18]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|w_f_pisca[18]~18_combout\ = (\U06|w_f_pisca[31]~32_combout\ & (!\U06|LessThan7~1_combout\ & (\U06|Add4~40_combout\))) # (!\U06|w_f_pisca[31]~32_combout\ & (((\U06|w_f_pisca\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U06|LessThan7~1_combout\,
	datab => \U06|Add4~40_combout\,
	datac => \U06|w_f_pisca\(18),
	datad => \U06|w_f_pisca[31]~32_combout\,
	combout => \U06|w_f_pisca[18]~18_combout\);

-- Location: FF_X47_Y48_N11
\U06|w_f_pisca[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|w_f_pisca[18]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_f_pisca\(18));

-- Location: LCCOMB_X49_Y48_N6
\U06|Add4~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Add4~42_combout\ = (\U06|w_f_pisca\(19) & (!\U06|Add4~41\)) # (!\U06|w_f_pisca\(19) & ((\U06|Add4~41\) # (GND)))
-- \U06|Add4~43\ = CARRY((!\U06|Add4~41\) # (!\U06|w_f_pisca\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U06|w_f_pisca\(19),
	datad => VCC,
	cin => \U06|Add4~41\,
	combout => \U06|Add4~42_combout\,
	cout => \U06|Add4~43\);

-- Location: LCCOMB_X47_Y49_N24
\U06|w_f_pisca[19]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|w_f_pisca[19]~19_combout\ = (\U06|w_f_pisca[31]~32_combout\ & (\U06|Add4~42_combout\ & ((!\U06|LessThan7~1_combout\)))) # (!\U06|w_f_pisca[31]~32_combout\ & (((\U06|w_f_pisca\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U06|w_f_pisca[31]~32_combout\,
	datab => \U06|Add4~42_combout\,
	datac => \U06|w_f_pisca\(19),
	datad => \U06|LessThan7~1_combout\,
	combout => \U06|w_f_pisca[19]~19_combout\);

-- Location: FF_X47_Y49_N25
\U06|w_f_pisca[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|w_f_pisca[19]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_f_pisca\(19));

-- Location: LCCOMB_X49_Y48_N8
\U06|Add4~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Add4~44_combout\ = (\U06|w_f_pisca\(20) & (\U06|Add4~43\ $ (GND))) # (!\U06|w_f_pisca\(20) & (!\U06|Add4~43\ & VCC))
-- \U06|Add4~45\ = CARRY((\U06|w_f_pisca\(20) & !\U06|Add4~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U06|w_f_pisca\(20),
	datad => VCC,
	cin => \U06|Add4~43\,
	combout => \U06|Add4~44_combout\,
	cout => \U06|Add4~45\);

-- Location: LCCOMB_X47_Y48_N28
\U06|w_f_pisca[20]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|w_f_pisca[20]~20_combout\ = (\U06|w_f_pisca[31]~32_combout\ & (\U06|Add4~44_combout\ & (!\U06|LessThan7~1_combout\))) # (!\U06|w_f_pisca[31]~32_combout\ & (((\U06|w_f_pisca\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U06|Add4~44_combout\,
	datab => \U06|LessThan7~1_combout\,
	datac => \U06|w_f_pisca\(20),
	datad => \U06|w_f_pisca[31]~32_combout\,
	combout => \U06|w_f_pisca[20]~20_combout\);

-- Location: FF_X47_Y48_N29
\U06|w_f_pisca[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|w_f_pisca[20]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_f_pisca\(20));

-- Location: LCCOMB_X49_Y48_N10
\U06|Add4~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Add4~46_combout\ = (\U06|w_f_pisca\(21) & (!\U06|Add4~45\)) # (!\U06|w_f_pisca\(21) & ((\U06|Add4~45\) # (GND)))
-- \U06|Add4~47\ = CARRY((!\U06|Add4~45\) # (!\U06|w_f_pisca\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U06|w_f_pisca\(21),
	datad => VCC,
	cin => \U06|Add4~45\,
	combout => \U06|Add4~46_combout\,
	cout => \U06|Add4~47\);

-- Location: LCCOMB_X47_Y48_N22
\U06|w_f_pisca[21]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|w_f_pisca[21]~21_combout\ = (\U06|w_f_pisca[31]~32_combout\ & (\U06|Add4~46_combout\ & (!\U06|LessThan7~1_combout\))) # (!\U06|w_f_pisca[31]~32_combout\ & (((\U06|w_f_pisca\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U06|Add4~46_combout\,
	datab => \U06|LessThan7~1_combout\,
	datac => \U06|w_f_pisca\(21),
	datad => \U06|w_f_pisca[31]~32_combout\,
	combout => \U06|w_f_pisca[21]~21_combout\);

-- Location: FF_X47_Y48_N23
\U06|w_f_pisca[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|w_f_pisca[21]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_f_pisca\(21));

-- Location: LCCOMB_X49_Y48_N12
\U06|Add4~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Add4~48_combout\ = (\U06|w_f_pisca\(22) & (\U06|Add4~47\ $ (GND))) # (!\U06|w_f_pisca\(22) & (!\U06|Add4~47\ & VCC))
-- \U06|Add4~49\ = CARRY((\U06|w_f_pisca\(22) & !\U06|Add4~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U06|w_f_pisca\(22),
	datad => VCC,
	cin => \U06|Add4~47\,
	combout => \U06|Add4~48_combout\,
	cout => \U06|Add4~49\);

-- Location: LCCOMB_X47_Y48_N20
\U06|w_f_pisca[22]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|w_f_pisca[22]~22_combout\ = (\U06|w_f_pisca[31]~32_combout\ & (\U06|Add4~48_combout\ & (!\U06|LessThan7~1_combout\))) # (!\U06|w_f_pisca[31]~32_combout\ & (((\U06|w_f_pisca\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U06|Add4~48_combout\,
	datab => \U06|LessThan7~1_combout\,
	datac => \U06|w_f_pisca\(22),
	datad => \U06|w_f_pisca[31]~32_combout\,
	combout => \U06|w_f_pisca[22]~22_combout\);

-- Location: FF_X47_Y48_N21
\U06|w_f_pisca[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|w_f_pisca[22]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_f_pisca\(22));

-- Location: LCCOMB_X49_Y48_N14
\U06|Add4~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Add4~50_combout\ = (\U06|w_f_pisca\(23) & (!\U06|Add4~49\)) # (!\U06|w_f_pisca\(23) & ((\U06|Add4~49\) # (GND)))
-- \U06|Add4~51\ = CARRY((!\U06|Add4~49\) # (!\U06|w_f_pisca\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U06|w_f_pisca\(23),
	datad => VCC,
	cin => \U06|Add4~49\,
	combout => \U06|Add4~50_combout\,
	cout => \U06|Add4~51\);

-- Location: LCCOMB_X49_Y50_N24
\U06|w_f_pisca[23]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|w_f_pisca[23]~23_combout\ = (\U06|w_f_pisca[31]~32_combout\ & (\U06|Add4~50_combout\ & (!\U06|LessThan7~1_combout\))) # (!\U06|w_f_pisca[31]~32_combout\ & (((\U06|w_f_pisca\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U06|Add4~50_combout\,
	datab => \U06|LessThan7~1_combout\,
	datac => \U06|w_f_pisca\(23),
	datad => \U06|w_f_pisca[31]~32_combout\,
	combout => \U06|w_f_pisca[23]~23_combout\);

-- Location: FF_X49_Y50_N25
\U06|w_f_pisca[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|w_f_pisca[23]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_f_pisca\(23));

-- Location: LCCOMB_X49_Y48_N16
\U06|Add4~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Add4~52_combout\ = (\U06|w_f_pisca\(24) & (\U06|Add4~51\ $ (GND))) # (!\U06|w_f_pisca\(24) & (!\U06|Add4~51\ & VCC))
-- \U06|Add4~53\ = CARRY((\U06|w_f_pisca\(24) & !\U06|Add4~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U06|w_f_pisca\(24),
	datad => VCC,
	cin => \U06|Add4~51\,
	combout => \U06|Add4~52_combout\,
	cout => \U06|Add4~53\);

-- Location: LCCOMB_X47_Y48_N30
\U06|w_f_pisca[24]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|w_f_pisca[24]~24_combout\ = (\U06|w_f_pisca[31]~32_combout\ & (\U06|Add4~52_combout\ & (!\U06|LessThan7~1_combout\))) # (!\U06|w_f_pisca[31]~32_combout\ & (((\U06|w_f_pisca\(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U06|Add4~52_combout\,
	datab => \U06|LessThan7~1_combout\,
	datac => \U06|w_f_pisca\(24),
	datad => \U06|w_f_pisca[31]~32_combout\,
	combout => \U06|w_f_pisca[24]~24_combout\);

-- Location: FF_X47_Y48_N31
\U06|w_f_pisca[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|w_f_pisca[24]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_f_pisca\(24));

-- Location: LCCOMB_X49_Y48_N18
\U06|Add4~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Add4~54_combout\ = (\U06|w_f_pisca\(25) & (!\U06|Add4~53\)) # (!\U06|w_f_pisca\(25) & ((\U06|Add4~53\) # (GND)))
-- \U06|Add4~55\ = CARRY((!\U06|Add4~53\) # (!\U06|w_f_pisca\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U06|w_f_pisca\(25),
	datad => VCC,
	cin => \U06|Add4~53\,
	combout => \U06|Add4~54_combout\,
	cout => \U06|Add4~55\);

-- Location: LCCOMB_X47_Y48_N26
\U06|w_f_pisca[25]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|w_f_pisca[25]~25_combout\ = (\U06|w_f_pisca[31]~32_combout\ & (\U06|Add4~54_combout\ & (!\U06|LessThan7~1_combout\))) # (!\U06|w_f_pisca[31]~32_combout\ & (((\U06|w_f_pisca\(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U06|Add4~54_combout\,
	datab => \U06|LessThan7~1_combout\,
	datac => \U06|w_f_pisca\(25),
	datad => \U06|w_f_pisca[31]~32_combout\,
	combout => \U06|w_f_pisca[25]~25_combout\);

-- Location: FF_X47_Y48_N27
\U06|w_f_pisca[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|w_f_pisca[25]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_f_pisca\(25));

-- Location: LCCOMB_X49_Y48_N20
\U06|Add4~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Add4~56_combout\ = (\U06|w_f_pisca\(26) & (\U06|Add4~55\ $ (GND))) # (!\U06|w_f_pisca\(26) & (!\U06|Add4~55\ & VCC))
-- \U06|Add4~57\ = CARRY((\U06|w_f_pisca\(26) & !\U06|Add4~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U06|w_f_pisca\(26),
	datad => VCC,
	cin => \U06|Add4~55\,
	combout => \U06|Add4~56_combout\,
	cout => \U06|Add4~57\);

-- Location: LCCOMB_X47_Y48_N8
\U06|w_f_pisca[26]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|w_f_pisca[26]~26_combout\ = (\U06|w_f_pisca[31]~32_combout\ & (\U06|Add4~56_combout\ & (!\U06|LessThan7~1_combout\))) # (!\U06|w_f_pisca[31]~32_combout\ & (((\U06|w_f_pisca\(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U06|Add4~56_combout\,
	datab => \U06|LessThan7~1_combout\,
	datac => \U06|w_f_pisca\(26),
	datad => \U06|w_f_pisca[31]~32_combout\,
	combout => \U06|w_f_pisca[26]~26_combout\);

-- Location: FF_X47_Y48_N9
\U06|w_f_pisca[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|w_f_pisca[26]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_f_pisca\(26));

-- Location: LCCOMB_X49_Y48_N22
\U06|Add4~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Add4~58_combout\ = (\U06|w_f_pisca\(27) & (!\U06|Add4~57\)) # (!\U06|w_f_pisca\(27) & ((\U06|Add4~57\) # (GND)))
-- \U06|Add4~59\ = CARRY((!\U06|Add4~57\) # (!\U06|w_f_pisca\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U06|w_f_pisca\(27),
	datad => VCC,
	cin => \U06|Add4~57\,
	combout => \U06|Add4~58_combout\,
	cout => \U06|Add4~59\);

-- Location: LCCOMB_X47_Y48_N18
\U06|w_f_pisca[27]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|w_f_pisca[27]~27_combout\ = (\U06|w_f_pisca[31]~32_combout\ & (\U06|Add4~58_combout\ & (!\U06|LessThan7~1_combout\))) # (!\U06|w_f_pisca[31]~32_combout\ & (((\U06|w_f_pisca\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U06|Add4~58_combout\,
	datab => \U06|LessThan7~1_combout\,
	datac => \U06|w_f_pisca\(27),
	datad => \U06|w_f_pisca[31]~32_combout\,
	combout => \U06|w_f_pisca[27]~27_combout\);

-- Location: FF_X47_Y48_N19
\U06|w_f_pisca[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|w_f_pisca[27]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_f_pisca\(27));

-- Location: LCCOMB_X49_Y48_N24
\U06|Add4~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Add4~60_combout\ = (\U06|w_f_pisca\(28) & (\U06|Add4~59\ $ (GND))) # (!\U06|w_f_pisca\(28) & (!\U06|Add4~59\ & VCC))
-- \U06|Add4~61\ = CARRY((\U06|w_f_pisca\(28) & !\U06|Add4~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U06|w_f_pisca\(28),
	datad => VCC,
	cin => \U06|Add4~59\,
	combout => \U06|Add4~60_combout\,
	cout => \U06|Add4~61\);

-- Location: LCCOMB_X47_Y48_N16
\U06|w_f_pisca[28]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|w_f_pisca[28]~28_combout\ = (\U06|w_f_pisca[31]~32_combout\ & (\U06|Add4~60_combout\ & (!\U06|LessThan7~1_combout\))) # (!\U06|w_f_pisca[31]~32_combout\ & (((\U06|w_f_pisca\(28)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U06|Add4~60_combout\,
	datab => \U06|LessThan7~1_combout\,
	datac => \U06|w_f_pisca\(28),
	datad => \U06|w_f_pisca[31]~32_combout\,
	combout => \U06|w_f_pisca[28]~28_combout\);

-- Location: FF_X47_Y48_N17
\U06|w_f_pisca[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|w_f_pisca[28]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_f_pisca\(28));

-- Location: LCCOMB_X49_Y48_N26
\U06|Add4~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Add4~62_combout\ = (\U06|w_f_pisca\(29) & (!\U06|Add4~61\)) # (!\U06|w_f_pisca\(29) & ((\U06|Add4~61\) # (GND)))
-- \U06|Add4~63\ = CARRY((!\U06|Add4~61\) # (!\U06|w_f_pisca\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U06|w_f_pisca\(29),
	datad => VCC,
	cin => \U06|Add4~61\,
	combout => \U06|Add4~62_combout\,
	cout => \U06|Add4~63\);

-- Location: LCCOMB_X47_Y48_N24
\U06|w_f_pisca[29]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|w_f_pisca[29]~29_combout\ = (\U06|w_f_pisca[31]~32_combout\ & (\U06|Add4~62_combout\ & (!\U06|LessThan7~1_combout\))) # (!\U06|w_f_pisca[31]~32_combout\ & (((\U06|w_f_pisca\(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U06|Add4~62_combout\,
	datab => \U06|LessThan7~1_combout\,
	datac => \U06|w_f_pisca\(29),
	datad => \U06|w_f_pisca[31]~32_combout\,
	combout => \U06|w_f_pisca[29]~29_combout\);

-- Location: FF_X47_Y48_N25
\U06|w_f_pisca[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|w_f_pisca[29]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_f_pisca\(29));

-- Location: LCCOMB_X49_Y48_N28
\U06|Add4~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Add4~64_combout\ = (\U06|w_f_pisca\(30) & (\U06|Add4~63\ $ (GND))) # (!\U06|w_f_pisca\(30) & (!\U06|Add4~63\ & VCC))
-- \U06|Add4~65\ = CARRY((\U06|w_f_pisca\(30) & !\U06|Add4~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U06|w_f_pisca\(30),
	datad => VCC,
	cin => \U06|Add4~63\,
	combout => \U06|Add4~64_combout\,
	cout => \U06|Add4~65\);

-- Location: LCCOMB_X47_Y48_N14
\U06|w_f_pisca[30]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|w_f_pisca[30]~30_combout\ = (\U06|w_f_pisca[31]~32_combout\ & (\U06|Add4~64_combout\ & (!\U06|LessThan7~1_combout\))) # (!\U06|w_f_pisca[31]~32_combout\ & (((\U06|w_f_pisca\(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U06|Add4~64_combout\,
	datab => \U06|LessThan7~1_combout\,
	datac => \U06|w_f_pisca\(30),
	datad => \U06|w_f_pisca[31]~32_combout\,
	combout => \U06|w_f_pisca[30]~30_combout\);

-- Location: FF_X47_Y48_N15
\U06|w_f_pisca[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|w_f_pisca[30]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_f_pisca\(30));

-- Location: LCCOMB_X49_Y48_N30
\U06|Add4~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Add4~66_combout\ = \U06|w_f_pisca\(31) $ (\U06|Add4~65\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U06|w_f_pisca\(31),
	cin => \U06|Add4~65\,
	combout => \U06|Add4~66_combout\);

-- Location: LCCOMB_X50_Y50_N18
\U06|w_f_pisca[31]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|w_f_pisca[31]~31_combout\ = (\U06|w_f_pisca[31]~32_combout\ & (\U06|Add4~66_combout\ & (!\U06|LessThan7~1_combout\))) # (!\U06|w_f_pisca[31]~32_combout\ & (((\U06|w_f_pisca\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U06|Add4~66_combout\,
	datab => \U06|LessThan7~1_combout\,
	datac => \U06|w_f_pisca\(31),
	datad => \U06|w_f_pisca[31]~32_combout\,
	combout => \U06|w_f_pisca[31]~31_combout\);

-- Location: FF_X50_Y50_N19
\U06|w_f_pisca[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|w_f_pisca[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_f_pisca\(31));

-- Location: LCCOMB_X49_Y50_N10
\U06|w_f_etapa[1]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|w_f_etapa[1]~15_combout\ = (\U06|w_f_pisca\(4) & !\U06|w_f_pisca\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U06|w_f_pisca\(4),
	datad => \U06|w_f_pisca\(31),
	combout => \U06|w_f_etapa[1]~15_combout\);

-- Location: LCCOMB_X47_Y48_N12
\U06|w_f_etapa[1]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|w_f_etapa[1]~9_combout\ = (!\U06|w_f_pisca\(30) & !\U06|w_f_pisca\(29))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U06|w_f_pisca\(30),
	datad => \U06|w_f_pisca\(29),
	combout => \U06|w_f_etapa[1]~9_combout\);

-- Location: LCCOMB_X47_Y48_N2
\U06|w_f_etapa[1]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|w_f_etapa[1]~8_combout\ = (!\U06|w_f_pisca\(25) & (!\U06|w_f_pisca\(27) & (!\U06|w_f_pisca\(26) & !\U06|w_f_pisca\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U06|w_f_pisca\(25),
	datab => \U06|w_f_pisca\(27),
	datac => \U06|w_f_pisca\(26),
	datad => \U06|w_f_pisca\(28),
	combout => \U06|w_f_etapa[1]~8_combout\);

-- Location: LCCOMB_X47_Y48_N4
\U06|w_f_etapa[1]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|w_f_etapa[1]~7_combout\ = (!\U06|w_f_pisca\(24) & (!\U06|w_f_pisca\(22) & (!\U06|w_f_pisca\(23) & !\U06|w_f_pisca\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U06|w_f_pisca\(24),
	datab => \U06|w_f_pisca\(22),
	datac => \U06|w_f_pisca\(23),
	datad => \U06|w_f_pisca\(21),
	combout => \U06|w_f_etapa[1]~7_combout\);

-- Location: LCCOMB_X47_Y49_N12
\U06|w_f_etapa[1]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|w_f_etapa[1]~4_combout\ = (!\U06|w_f_pisca\(13) & (!\U06|w_f_pisca\(16) & (!\U06|w_f_pisca\(15) & !\U06|w_f_pisca\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U06|w_f_pisca\(13),
	datab => \U06|w_f_pisca\(16),
	datac => \U06|w_f_pisca\(15),
	datad => \U06|w_f_pisca\(14),
	combout => \U06|w_f_etapa[1]~4_combout\);

-- Location: LCCOMB_X47_Y49_N28
\U06|w_f_etapa[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|w_f_etapa[1]~3_combout\ = (!\U06|w_f_pisca\(12) & (!\U06|w_f_pisca\(11) & (!\U06|w_f_pisca\(9) & !\U06|w_f_pisca\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U06|w_f_pisca\(12),
	datab => \U06|w_f_pisca\(11),
	datac => \U06|w_f_pisca\(9),
	datad => \U06|w_f_pisca\(10),
	combout => \U06|w_f_etapa[1]~3_combout\);

-- Location: LCCOMB_X49_Y50_N30
\U06|w_f_etapa[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|w_f_etapa[1]~2_combout\ = (!\U06|w_f_pisca\(8) & (!\U06|w_f_pisca\(7) & (!\U06|w_f_pisca\(6) & !\U06|w_f_pisca\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U06|w_f_pisca\(8),
	datab => \U06|w_f_pisca\(7),
	datac => \U06|w_f_pisca\(6),
	datad => \U06|w_f_pisca\(5),
	combout => \U06|w_f_etapa[1]~2_combout\);

-- Location: LCCOMB_X47_Y49_N10
\U06|w_f_etapa[1]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|w_f_etapa[1]~5_combout\ = (!\U06|w_f_pisca\(18) & (!\U06|w_f_pisca\(19) & (!\U06|w_f_pisca\(20) & !\U06|w_f_pisca\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U06|w_f_pisca\(18),
	datab => \U06|w_f_pisca\(19),
	datac => \U06|w_f_pisca\(20),
	datad => \U06|w_f_pisca\(17),
	combout => \U06|w_f_etapa[1]~5_combout\);

-- Location: LCCOMB_X47_Y49_N16
\U06|w_f_etapa[1]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|w_f_etapa[1]~6_combout\ = (\U06|w_f_etapa[1]~4_combout\ & (\U06|w_f_etapa[1]~3_combout\ & (\U06|w_f_etapa[1]~2_combout\ & \U06|w_f_etapa[1]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U06|w_f_etapa[1]~4_combout\,
	datab => \U06|w_f_etapa[1]~3_combout\,
	datac => \U06|w_f_etapa[1]~2_combout\,
	datad => \U06|w_f_etapa[1]~5_combout\,
	combout => \U06|w_f_etapa[1]~6_combout\);

-- Location: LCCOMB_X47_Y48_N6
\U06|w_f_etapa[1]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|w_f_etapa[1]~10_combout\ = (\U06|w_f_etapa[1]~9_combout\ & (\U06|w_f_etapa[1]~8_combout\ & (\U06|w_f_etapa[1]~7_combout\ & \U06|w_f_etapa[1]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U06|w_f_etapa[1]~9_combout\,
	datab => \U06|w_f_etapa[1]~8_combout\,
	datac => \U06|w_f_etapa[1]~7_combout\,
	datad => \U06|w_f_etapa[1]~6_combout\,
	combout => \U06|w_f_etapa[1]~10_combout\);

-- Location: LCCOMB_X49_Y50_N12
\U06|w_f_etapa[1]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|w_f_etapa[1]~14_combout\ = (!\U06|w_f_pisca\(1) & (\U06|w_f_pisca\(0) & (\U06|w_f_pisca\(2) & !\U06|w_f_pisca\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U06|w_f_pisca\(1),
	datab => \U06|w_f_pisca\(0),
	datac => \U06|w_f_pisca\(2),
	datad => \U06|w_f_pisca\(3),
	combout => \U06|w_f_etapa[1]~14_combout\);

-- Location: LCCOMB_X49_Y50_N28
\U06|w_f_etapa[1]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|w_f_etapa[1]~16_combout\ = (\U06|w_f_etapa[1]~15_combout\ & (\U06|LessThan7~1_combout\ & (\U06|w_f_etapa[1]~10_combout\ & \U06|w_f_etapa[1]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U06|w_f_etapa[1]~15_combout\,
	datab => \U06|LessThan7~1_combout\,
	datac => \U06|w_f_etapa[1]~10_combout\,
	datad => \U06|w_f_etapa[1]~14_combout\,
	combout => \U06|w_f_etapa[1]~16_combout\);

-- Location: LCCOMB_X46_Y50_N10
\U06|w_f_pisca[31]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|w_f_pisca[31]~3_combout\ = (\U06|o_f_preparo~3_combout\ & ((\U06|w_f_etapa[1]~16_combout\) # ((\U06|preparo~6_combout\ & !\U06|LessThan7~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U06|preparo~6_combout\,
	datab => \U06|LessThan7~1_combout\,
	datac => \U06|w_f_etapa[1]~16_combout\,
	datad => \U06|o_f_preparo~3_combout\,
	combout => \U06|w_f_pisca[31]~3_combout\);

-- Location: LCCOMB_X46_Y50_N18
\U06|w_f_pisca[31]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|w_f_pisca[31]~32_combout\ = (\U06|w_f_pisca[31]~3_combout\ & ((\U06|w_f_etapa\(2)) # ((\U06|w_f_etapa\(0) & \U06|w_f_etapa\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U06|w_f_etapa\(2),
	datab => \U06|w_f_etapa\(0),
	datac => \U06|w_f_etapa\(1),
	datad => \U06|w_f_pisca[31]~3_combout\,
	combout => \U06|w_f_pisca[31]~32_combout\);

-- Location: FF_X46_Y50_N5
\U06|w_f_pisca[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \U06|Add4~10_combout\,
	sload => VCC,
	ena => \U06|w_f_pisca[31]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_f_pisca\(0));

-- Location: LCCOMB_X46_Y50_N26
\U06|Add4~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Add4~11_combout\ = (\U06|Add4~2_combout\ & !\U06|LessThan7~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U06|Add4~2_combout\,
	datad => \U06|LessThan7~1_combout\,
	combout => \U06|Add4~11_combout\);

-- Location: FF_X46_Y50_N27
\U06|w_f_pisca[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|Add4~11_combout\,
	ena => \U06|w_f_pisca[31]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_f_pisca\(1));

-- Location: LCCOMB_X49_Y50_N26
\U06|LessThan7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|LessThan7~0_combout\ = (!\U06|w_f_pisca\(3) & (((!\U06|w_f_pisca\(1) & !\U06|w_f_pisca\(0))) # (!\U06|w_f_pisca\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U06|w_f_pisca\(1),
	datab => \U06|w_f_pisca\(0),
	datac => \U06|w_f_pisca\(2),
	datad => \U06|w_f_pisca\(3),
	combout => \U06|LessThan7~0_combout\);

-- Location: LCCOMB_X49_Y50_N18
\U06|LessThan7~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|LessThan7~1_combout\ = (!\U06|w_f_pisca\(31) & (((!\U06|LessThan7~0_combout\ & \U06|w_f_pisca\(4))) # (!\U06|w_f_etapa[1]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U06|LessThan7~0_combout\,
	datab => \U06|w_f_pisca\(4),
	datac => \U06|w_f_etapa[1]~10_combout\,
	datad => \U06|w_f_pisca\(31),
	combout => \U06|LessThan7~1_combout\);

-- Location: LCCOMB_X50_Y50_N16
\U06|w_f_etapa[2]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|w_f_etapa[2]~11_combout\ = (!\U06|Equal1~2_combout\ & (!\U06|Equal1~0_combout\ & ((\U06|Equal1~1_combout\) # (!\U06|LessThan7~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U06|Equal1~2_combout\,
	datab => \U06|LessThan7~1_combout\,
	datac => \U06|Equal1~0_combout\,
	datad => \U06|Equal1~1_combout\,
	combout => \U06|w_f_etapa[2]~11_combout\);

-- Location: LCCOMB_X54_Y50_N8
\U06|w_f_etapa[1]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|w_f_etapa[1]~18_combout\ = (\U06|w_f_etapa\(2)) # ((\U06|w_f_etapa\(1) & \U06|w_f_etapa\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U06|w_f_etapa\(1),
	datac => \U06|w_f_etapa\(0),
	datad => \U06|w_f_etapa\(2),
	combout => \U06|w_f_etapa[1]~18_combout\);

-- Location: LCCOMB_X50_Y50_N8
\U06|w_f_etapa[1]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|w_f_etapa[1]~17_combout\ = (\U06|LessThan7~1_combout\) # ((!\U06|preparo~6_combout\ & !\U06|o_f_pronto~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U06|LessThan7~1_combout\,
	datac => \U06|preparo~6_combout\,
	datad => \U06|o_f_pronto~2_combout\,
	combout => \U06|w_f_etapa[1]~17_combout\);

-- Location: LCCOMB_X54_Y50_N20
\U06|w_f_etapa[0]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|w_f_etapa[0]~12_combout\ = (\U06|w_q_sec\(31) & (!\U06|Equal1~1_combout\ & ((!\U06|Equal1~2_combout\)))) # (!\U06|w_q_sec\(31) & (((!\U06|Equal1~2_combout\) # (!\U06|LessThan4~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U06|Equal1~1_combout\,
	datab => \U06|LessThan4~8_combout\,
	datac => \U06|w_q_sec\(31),
	datad => \U06|Equal1~2_combout\,
	combout => \U06|w_f_etapa[0]~12_combout\);

-- Location: LCCOMB_X54_Y50_N30
\U06|preparo~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|preparo~4_combout\ = (\U06|preparo~1_combout\) # (!\U06|LessThan4~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U06|preparo~1_combout\,
	datad => \U06|LessThan4~7_combout\,
	combout => \U06|preparo~4_combout\);

-- Location: LCCOMB_X50_Y50_N6
\U06|w_f_etapa[0]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|w_f_etapa[0]~13_combout\ = (\U06|w_f_etapa[0]~12_combout\ & (\U06|o_f_preparo~3_combout\ & ((\U06|preparo~4_combout\) # (!\U06|Equal1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U06|w_f_etapa[0]~12_combout\,
	datab => \U06|Equal1~1_combout\,
	datac => \U06|preparo~4_combout\,
	datad => \U06|o_f_preparo~3_combout\,
	combout => \U06|w_f_etapa[0]~13_combout\);

-- Location: LCCOMB_X50_Y50_N10
\U06|w_f_etapa[0]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|w_f_etapa[0]~19_combout\ = (\U06|w_f_etapa[0]~13_combout\ & (((\U06|w_f_etapa[1]~16_combout\) # (!\U06|w_f_etapa[1]~17_combout\)) # (!\U06|w_f_etapa[1]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U06|w_f_etapa[1]~18_combout\,
	datab => \U06|w_f_etapa[1]~16_combout\,
	datac => \U06|w_f_etapa[1]~17_combout\,
	datad => \U06|w_f_etapa[0]~13_combout\,
	combout => \U06|w_f_etapa[0]~19_combout\);

-- Location: LCCOMB_X50_Y50_N20
\U06|w_f_etapa[2]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|w_f_etapa[2]~20_combout\ = (\U06|w_f_etapa[0]~19_combout\ & (\U06|w_f_etapa[2]~11_combout\)) # (!\U06|w_f_etapa[0]~19_combout\ & ((\U06|w_f_etapa\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U06|w_f_etapa[2]~11_combout\,
	datac => \U06|w_f_etapa\(2),
	datad => \U06|w_f_etapa[0]~19_combout\,
	combout => \U06|w_f_etapa[2]~20_combout\);

-- Location: FF_X50_Y50_N21
\U06|w_f_etapa[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|w_f_etapa[2]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_f_etapa\(2));

-- Location: LCCOMB_X50_Y50_N14
\U06|o_f_pronto~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|o_f_pronto~4_combout\ = (\U06|w_f_etapa\(2) & (!\U06|w_f_etapa\(1) & (!\U06|w_f_etapa\(0) & !\U06|LessThan7~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U06|w_f_etapa\(2),
	datab => \U06|w_f_etapa\(1),
	datac => \U06|w_f_etapa\(0),
	datad => \U06|LessThan7~1_combout\,
	combout => \U06|o_f_pronto~4_combout\);

-- Location: LCCOMB_X50_Y50_N30
\U06|w_f_etapa[0]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|w_f_etapa[0]~21_combout\ = (\U06|w_f_etapa[0]~19_combout\ & ((\U06|o_f_pronto~4_combout\) # ((\U06|Equal1~0_combout\)))) # (!\U06|w_f_etapa[0]~19_combout\ & (((\U06|w_f_etapa\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U06|o_f_pronto~4_combout\,
	datab => \U06|Equal1~0_combout\,
	datac => \U06|w_f_etapa\(0),
	datad => \U06|w_f_etapa[0]~19_combout\,
	combout => \U06|w_f_etapa[0]~21_combout\);

-- Location: FF_X50_Y50_N31
\U06|w_f_etapa[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|w_f_etapa[0]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_f_etapa\(0));

-- Location: LCCOMB_X50_Y50_N24
\U06|w_f_etapa[1]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|w_f_etapa[1]~22_combout\ = (\U06|w_f_etapa\(1) & (((!\U06|w_f_etapa[0]~19_combout\)))) # (!\U06|w_f_etapa\(1) & (\U06|w_f_etapa\(0) & (!\U06|w_f_etapa\(2) & \U06|w_f_etapa[0]~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U06|w_f_etapa\(0),
	datab => \U06|w_f_etapa\(2),
	datac => \U06|w_f_etapa\(1),
	datad => \U06|w_f_etapa[0]~19_combout\,
	combout => \U06|w_f_etapa[1]~22_combout\);

-- Location: FF_X50_Y50_N25
\U06|w_f_etapa[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|w_f_etapa[1]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_f_etapa\(1));

-- Location: LCCOMB_X50_Y50_N2
\U06|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Equal1~0_combout\ = (!\U06|w_f_etapa\(1) & (!\U06|w_f_etapa\(0) & !\U06|w_f_etapa\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U06|w_f_etapa\(1),
	datac => \U06|w_f_etapa\(0),
	datad => \U06|w_f_etapa\(2),
	combout => \U06|Equal1~0_combout\);

-- Location: LCCOMB_X46_Y50_N14
\U06|w_n_leite[31]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|w_n_leite[31]~0_combout\ = (w_opt(1) & (\U06|Equal1~0_combout\ & (!w_opt(0) & \U06|o_f_preparo~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => w_opt(1),
	datab => \U06|Equal1~0_combout\,
	datac => w_opt(0),
	datad => \U06|o_f_preparo~3_combout\,
	combout => \U06|w_n_leite[31]~0_combout\);

-- Location: LCCOMB_X45_Y52_N6
\U06|w_n_leite[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|w_n_leite[0]~1_combout\ = \U06|w_n_leite[31]~0_combout\ $ (\U06|w_n_leite\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U06|w_n_leite[31]~0_combout\,
	datac => \U06|w_n_leite\(0),
	combout => \U06|w_n_leite[0]~1_combout\);

-- Location: FF_X45_Y52_N7
\U06|w_n_leite[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|w_n_leite[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_n_leite\(0));

-- Location: LCCOMB_X45_Y51_N0
\U06|Add1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Add1~1_cout\ = CARRY(\U06|w_n_leite\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U06|w_n_leite\(0),
	datad => VCC,
	cout => \U06|Add1~1_cout\);

-- Location: LCCOMB_X45_Y51_N2
\U06|Add1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Add1~2_combout\ = (\U06|w_n_leite\(1) & (\U06|Add1~1_cout\ & VCC)) # (!\U06|w_n_leite\(1) & (!\U06|Add1~1_cout\))
-- \U06|Add1~3\ = CARRY((!\U06|w_n_leite\(1) & !\U06|Add1~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U06|w_n_leite\(1),
	datad => VCC,
	cin => \U06|Add1~1_cout\,
	combout => \U06|Add1~2_combout\,
	cout => \U06|Add1~3\);

-- Location: FF_X45_Y51_N3
\U06|w_n_leite[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|Add1~2_combout\,
	ena => \U06|w_n_leite[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_n_leite\(1));

-- Location: LCCOMB_X45_Y51_N4
\U06|Add1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Add1~4_combout\ = (\U06|w_n_leite\(2) & (\U06|Add1~3\ $ (GND))) # (!\U06|w_n_leite\(2) & ((GND) # (!\U06|Add1~3\)))
-- \U06|Add1~5\ = CARRY((!\U06|Add1~3\) # (!\U06|w_n_leite\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U06|w_n_leite\(2),
	datad => VCC,
	cin => \U06|Add1~3\,
	combout => \U06|Add1~4_combout\,
	cout => \U06|Add1~5\);

-- Location: LCCOMB_X45_Y52_N16
\U06|w_n_leite[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|w_n_leite[2]~2_combout\ = !\U06|Add1~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U06|Add1~4_combout\,
	combout => \U06|w_n_leite[2]~2_combout\);

-- Location: FF_X45_Y52_N17
\U06|w_n_leite[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|w_n_leite[2]~2_combout\,
	ena => \U06|w_n_leite[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_n_leite\(2));

-- Location: LCCOMB_X45_Y51_N6
\U06|Add1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Add1~6_combout\ = (\U06|w_n_leite\(3) & (\U06|Add1~5\ & VCC)) # (!\U06|w_n_leite\(3) & (!\U06|Add1~5\))
-- \U06|Add1~7\ = CARRY((!\U06|w_n_leite\(3) & !\U06|Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U06|w_n_leite\(3),
	datad => VCC,
	cin => \U06|Add1~5\,
	combout => \U06|Add1~6_combout\,
	cout => \U06|Add1~7\);

-- Location: FF_X45_Y51_N7
\U06|w_n_leite[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|Add1~6_combout\,
	ena => \U06|w_n_leite[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_n_leite\(3));

-- Location: LCCOMB_X45_Y51_N8
\U06|Add1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Add1~8_combout\ = (\U06|w_n_leite\(4) & (\U06|Add1~7\ $ (GND))) # (!\U06|w_n_leite\(4) & ((GND) # (!\U06|Add1~7\)))
-- \U06|Add1~9\ = CARRY((!\U06|Add1~7\) # (!\U06|w_n_leite\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U06|w_n_leite\(4),
	datad => VCC,
	cin => \U06|Add1~7\,
	combout => \U06|Add1~8_combout\,
	cout => \U06|Add1~9\);

-- Location: LCCOMB_X46_Y51_N30
\U06|w_n_leite[4]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|w_n_leite[4]~3_combout\ = !\U06|Add1~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U06|Add1~8_combout\,
	combout => \U06|w_n_leite[4]~3_combout\);

-- Location: FF_X45_Y51_N5
\U06|w_n_leite[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \U06|w_n_leite[4]~3_combout\,
	sload => VCC,
	ena => \U06|w_n_leite[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_n_leite\(4));

-- Location: LCCOMB_X45_Y51_N10
\U06|Add1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Add1~10_combout\ = (\U06|w_n_leite\(5) & (\U06|Add1~9\ & VCC)) # (!\U06|w_n_leite\(5) & (!\U06|Add1~9\))
-- \U06|Add1~11\ = CARRY((!\U06|w_n_leite\(5) & !\U06|Add1~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U06|w_n_leite\(5),
	datad => VCC,
	cin => \U06|Add1~9\,
	combout => \U06|Add1~10_combout\,
	cout => \U06|Add1~11\);

-- Location: FF_X45_Y51_N11
\U06|w_n_leite[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|Add1~10_combout\,
	ena => \U06|w_n_leite[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_n_leite\(5));

-- Location: LCCOMB_X45_Y51_N12
\U06|Add1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Add1~12_combout\ = (\U06|w_n_leite\(6) & ((GND) # (!\U06|Add1~11\))) # (!\U06|w_n_leite\(6) & (\U06|Add1~11\ $ (GND)))
-- \U06|Add1~13\ = CARRY((\U06|w_n_leite\(6)) # (!\U06|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U06|w_n_leite\(6),
	datad => VCC,
	cin => \U06|Add1~11\,
	combout => \U06|Add1~12_combout\,
	cout => \U06|Add1~13\);

-- Location: FF_X45_Y51_N13
\U06|w_n_leite[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|Add1~12_combout\,
	ena => \U06|w_n_leite[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_n_leite\(6));

-- Location: LCCOMB_X45_Y51_N14
\U06|Add1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Add1~14_combout\ = (\U06|w_n_leite\(7) & (\U06|Add1~13\ & VCC)) # (!\U06|w_n_leite\(7) & (!\U06|Add1~13\))
-- \U06|Add1~15\ = CARRY((!\U06|w_n_leite\(7) & !\U06|Add1~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U06|w_n_leite\(7),
	datad => VCC,
	cin => \U06|Add1~13\,
	combout => \U06|Add1~14_combout\,
	cout => \U06|Add1~15\);

-- Location: FF_X45_Y51_N15
\U06|w_n_leite[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|Add1~14_combout\,
	ena => \U06|w_n_leite[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_n_leite\(7));

-- Location: LCCOMB_X45_Y51_N16
\U06|Add1~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Add1~16_combout\ = (\U06|w_n_leite\(8) & ((GND) # (!\U06|Add1~15\))) # (!\U06|w_n_leite\(8) & (\U06|Add1~15\ $ (GND)))
-- \U06|Add1~17\ = CARRY((\U06|w_n_leite\(8)) # (!\U06|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U06|w_n_leite\(8),
	datad => VCC,
	cin => \U06|Add1~15\,
	combout => \U06|Add1~16_combout\,
	cout => \U06|Add1~17\);

-- Location: FF_X45_Y51_N17
\U06|w_n_leite[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|Add1~16_combout\,
	ena => \U06|w_n_leite[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_n_leite\(8));

-- Location: LCCOMB_X45_Y51_N18
\U06|Add1~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Add1~18_combout\ = (\U06|w_n_leite\(9) & (\U06|Add1~17\ & VCC)) # (!\U06|w_n_leite\(9) & (!\U06|Add1~17\))
-- \U06|Add1~19\ = CARRY((!\U06|w_n_leite\(9) & !\U06|Add1~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U06|w_n_leite\(9),
	datad => VCC,
	cin => \U06|Add1~17\,
	combout => \U06|Add1~18_combout\,
	cout => \U06|Add1~19\);

-- Location: FF_X45_Y51_N19
\U06|w_n_leite[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|Add1~18_combout\,
	ena => \U06|w_n_leite[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_n_leite\(9));

-- Location: LCCOMB_X45_Y51_N20
\U06|Add1~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Add1~20_combout\ = (\U06|w_n_leite\(10) & ((GND) # (!\U06|Add1~19\))) # (!\U06|w_n_leite\(10) & (\U06|Add1~19\ $ (GND)))
-- \U06|Add1~21\ = CARRY((\U06|w_n_leite\(10)) # (!\U06|Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U06|w_n_leite\(10),
	datad => VCC,
	cin => \U06|Add1~19\,
	combout => \U06|Add1~20_combout\,
	cout => \U06|Add1~21\);

-- Location: FF_X45_Y51_N21
\U06|w_n_leite[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|Add1~20_combout\,
	ena => \U06|w_n_leite[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_n_leite\(10));

-- Location: LCCOMB_X45_Y51_N22
\U06|Add1~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Add1~22_combout\ = (\U06|w_n_leite\(11) & (\U06|Add1~21\ & VCC)) # (!\U06|w_n_leite\(11) & (!\U06|Add1~21\))
-- \U06|Add1~23\ = CARRY((!\U06|w_n_leite\(11) & !\U06|Add1~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U06|w_n_leite\(11),
	datad => VCC,
	cin => \U06|Add1~21\,
	combout => \U06|Add1~22_combout\,
	cout => \U06|Add1~23\);

-- Location: FF_X45_Y51_N23
\U06|w_n_leite[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|Add1~22_combout\,
	ena => \U06|w_n_leite[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_n_leite\(11));

-- Location: LCCOMB_X45_Y51_N24
\U06|Add1~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Add1~24_combout\ = (\U06|w_n_leite\(12) & ((GND) # (!\U06|Add1~23\))) # (!\U06|w_n_leite\(12) & (\U06|Add1~23\ $ (GND)))
-- \U06|Add1~25\ = CARRY((\U06|w_n_leite\(12)) # (!\U06|Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U06|w_n_leite\(12),
	datad => VCC,
	cin => \U06|Add1~23\,
	combout => \U06|Add1~24_combout\,
	cout => \U06|Add1~25\);

-- Location: FF_X45_Y51_N25
\U06|w_n_leite[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|Add1~24_combout\,
	ena => \U06|w_n_leite[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_n_leite\(12));

-- Location: LCCOMB_X45_Y51_N26
\U06|Add1~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Add1~26_combout\ = (\U06|w_n_leite\(13) & (\U06|Add1~25\ & VCC)) # (!\U06|w_n_leite\(13) & (!\U06|Add1~25\))
-- \U06|Add1~27\ = CARRY((!\U06|w_n_leite\(13) & !\U06|Add1~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U06|w_n_leite\(13),
	datad => VCC,
	cin => \U06|Add1~25\,
	combout => \U06|Add1~26_combout\,
	cout => \U06|Add1~27\);

-- Location: FF_X45_Y51_N27
\U06|w_n_leite[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|Add1~26_combout\,
	ena => \U06|w_n_leite[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_n_leite\(13));

-- Location: LCCOMB_X45_Y51_N28
\U06|Add1~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Add1~28_combout\ = (\U06|w_n_leite\(14) & ((GND) # (!\U06|Add1~27\))) # (!\U06|w_n_leite\(14) & (\U06|Add1~27\ $ (GND)))
-- \U06|Add1~29\ = CARRY((\U06|w_n_leite\(14)) # (!\U06|Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U06|w_n_leite\(14),
	datad => VCC,
	cin => \U06|Add1~27\,
	combout => \U06|Add1~28_combout\,
	cout => \U06|Add1~29\);

-- Location: FF_X45_Y51_N29
\U06|w_n_leite[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|Add1~28_combout\,
	ena => \U06|w_n_leite[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_n_leite\(14));

-- Location: LCCOMB_X45_Y51_N30
\U06|Add1~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Add1~30_combout\ = (\U06|w_n_leite\(15) & (\U06|Add1~29\ & VCC)) # (!\U06|w_n_leite\(15) & (!\U06|Add1~29\))
-- \U06|Add1~31\ = CARRY((!\U06|w_n_leite\(15) & !\U06|Add1~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U06|w_n_leite\(15),
	datad => VCC,
	cin => \U06|Add1~29\,
	combout => \U06|Add1~30_combout\,
	cout => \U06|Add1~31\);

-- Location: FF_X45_Y51_N31
\U06|w_n_leite[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|Add1~30_combout\,
	ena => \U06|w_n_leite[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_n_leite\(15));

-- Location: LCCOMB_X45_Y50_N0
\U06|Add1~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Add1~32_combout\ = (\U06|w_n_leite\(16) & ((GND) # (!\U06|Add1~31\))) # (!\U06|w_n_leite\(16) & (\U06|Add1~31\ $ (GND)))
-- \U06|Add1~33\ = CARRY((\U06|w_n_leite\(16)) # (!\U06|Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U06|w_n_leite\(16),
	datad => VCC,
	cin => \U06|Add1~31\,
	combout => \U06|Add1~32_combout\,
	cout => \U06|Add1~33\);

-- Location: FF_X45_Y50_N1
\U06|w_n_leite[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|Add1~32_combout\,
	ena => \U06|w_n_leite[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_n_leite\(16));

-- Location: LCCOMB_X45_Y50_N2
\U06|Add1~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Add1~34_combout\ = (\U06|w_n_leite\(17) & (\U06|Add1~33\ & VCC)) # (!\U06|w_n_leite\(17) & (!\U06|Add1~33\))
-- \U06|Add1~35\ = CARRY((!\U06|w_n_leite\(17) & !\U06|Add1~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U06|w_n_leite\(17),
	datad => VCC,
	cin => \U06|Add1~33\,
	combout => \U06|Add1~34_combout\,
	cout => \U06|Add1~35\);

-- Location: FF_X45_Y50_N3
\U06|w_n_leite[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|Add1~34_combout\,
	ena => \U06|w_n_leite[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_n_leite\(17));

-- Location: LCCOMB_X45_Y50_N4
\U06|Add1~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Add1~36_combout\ = (\U06|w_n_leite\(18) & ((GND) # (!\U06|Add1~35\))) # (!\U06|w_n_leite\(18) & (\U06|Add1~35\ $ (GND)))
-- \U06|Add1~37\ = CARRY((\U06|w_n_leite\(18)) # (!\U06|Add1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U06|w_n_leite\(18),
	datad => VCC,
	cin => \U06|Add1~35\,
	combout => \U06|Add1~36_combout\,
	cout => \U06|Add1~37\);

-- Location: FF_X45_Y50_N5
\U06|w_n_leite[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|Add1~36_combout\,
	ena => \U06|w_n_leite[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_n_leite\(18));

-- Location: LCCOMB_X45_Y50_N6
\U06|Add1~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Add1~38_combout\ = (\U06|w_n_leite\(19) & (\U06|Add1~37\ & VCC)) # (!\U06|w_n_leite\(19) & (!\U06|Add1~37\))
-- \U06|Add1~39\ = CARRY((!\U06|w_n_leite\(19) & !\U06|Add1~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U06|w_n_leite\(19),
	datad => VCC,
	cin => \U06|Add1~37\,
	combout => \U06|Add1~38_combout\,
	cout => \U06|Add1~39\);

-- Location: FF_X45_Y50_N7
\U06|w_n_leite[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|Add1~38_combout\,
	ena => \U06|w_n_leite[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_n_leite\(19));

-- Location: LCCOMB_X45_Y50_N8
\U06|Add1~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Add1~40_combout\ = (\U06|w_n_leite\(20) & ((GND) # (!\U06|Add1~39\))) # (!\U06|w_n_leite\(20) & (\U06|Add1~39\ $ (GND)))
-- \U06|Add1~41\ = CARRY((\U06|w_n_leite\(20)) # (!\U06|Add1~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U06|w_n_leite\(20),
	datad => VCC,
	cin => \U06|Add1~39\,
	combout => \U06|Add1~40_combout\,
	cout => \U06|Add1~41\);

-- Location: FF_X45_Y50_N9
\U06|w_n_leite[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|Add1~40_combout\,
	ena => \U06|w_n_leite[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_n_leite\(20));

-- Location: LCCOMB_X45_Y50_N10
\U06|Add1~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Add1~42_combout\ = (\U06|w_n_leite\(21) & (\U06|Add1~41\ & VCC)) # (!\U06|w_n_leite\(21) & (!\U06|Add1~41\))
-- \U06|Add1~43\ = CARRY((!\U06|w_n_leite\(21) & !\U06|Add1~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U06|w_n_leite\(21),
	datad => VCC,
	cin => \U06|Add1~41\,
	combout => \U06|Add1~42_combout\,
	cout => \U06|Add1~43\);

-- Location: FF_X45_Y50_N11
\U06|w_n_leite[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|Add1~42_combout\,
	ena => \U06|w_n_leite[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_n_leite\(21));

-- Location: FF_X45_Y50_N13
\U06|w_n_leite[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|Add1~44_combout\,
	ena => \U06|w_n_leite[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_n_leite\(22));

-- Location: LCCOMB_X45_Y49_N22
\U06|LessThan1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|LessThan1~6_combout\ = (!\U06|w_n_leite\(22) & (!\U06|w_n_leite\(20) & (!\U06|w_n_leite\(21) & !\U06|w_n_leite\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U06|w_n_leite\(22),
	datab => \U06|w_n_leite\(20),
	datac => \U06|w_n_leite\(21),
	datad => \U06|w_n_leite\(23),
	combout => \U06|LessThan1~6_combout\);

-- Location: LCCOMB_X45_Y53_N28
\U06|LessThan1~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|LessThan1~7_combout\ = (!\U06|w_n_leite\(25) & (!\U06|w_n_leite\(26) & (!\U06|w_n_leite\(27) & !\U06|w_n_leite\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U06|w_n_leite\(25),
	datab => \U06|w_n_leite\(26),
	datac => \U06|w_n_leite\(27),
	datad => \U06|w_n_leite\(24),
	combout => \U06|LessThan1~7_combout\);

-- Location: LCCOMB_X45_Y53_N30
\U06|LessThan1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|LessThan1~8_combout\ = (!\U06|w_n_leite\(30) & (!\U06|w_n_leite\(29) & (!\U06|w_n_leite\(28) & \U06|LessThan1~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U06|w_n_leite\(30),
	datab => \U06|w_n_leite\(29),
	datac => \U06|w_n_leite\(28),
	datad => \U06|LessThan1~7_combout\,
	combout => \U06|LessThan1~8_combout\);

-- Location: LCCOMB_X45_Y48_N10
\U06|LessThan1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|LessThan1~5_combout\ = (!\U06|w_n_leite\(19) & (!\U06|w_n_leite\(18) & (!\U06|w_n_leite\(16) & !\U06|w_n_leite\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U06|w_n_leite\(19),
	datab => \U06|w_n_leite\(18),
	datac => \U06|w_n_leite\(16),
	datad => \U06|w_n_leite\(17),
	combout => \U06|LessThan1~5_combout\);

-- Location: LCCOMB_X45_Y52_N12
\U06|LessThan1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|LessThan1~0_combout\ = (!\U06|w_n_leite\(3) & (\U06|w_n_leite\(2) & (!\U06|w_n_leite\(1) & !\U06|w_n_leite\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U06|w_n_leite\(3),
	datab => \U06|w_n_leite\(2),
	datac => \U06|w_n_leite\(1),
	datad => \U06|w_n_leite\(0),
	combout => \U06|LessThan1~0_combout\);

-- Location: LCCOMB_X45_Y52_N18
\U06|LessThan1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|LessThan1~1_combout\ = (!\U06|w_n_leite\(5) & (!\U06|w_n_leite\(6) & (\U06|w_n_leite\(4) & !\U06|w_n_leite\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U06|w_n_leite\(5),
	datab => \U06|w_n_leite\(6),
	datac => \U06|w_n_leite\(4),
	datad => \U06|w_n_leite\(7),
	combout => \U06|LessThan1~1_combout\);

-- Location: LCCOMB_X45_Y52_N30
\U06|LessThan1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|LessThan1~3_combout\ = (!\U06|w_n_leite\(13) & (!\U06|w_n_leite\(12) & (!\U06|w_n_leite\(15) & !\U06|w_n_leite\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U06|w_n_leite\(13),
	datab => \U06|w_n_leite\(12),
	datac => \U06|w_n_leite\(15),
	datad => \U06|w_n_leite\(14),
	combout => \U06|LessThan1~3_combout\);

-- Location: LCCOMB_X45_Y52_N28
\U06|LessThan1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|LessThan1~2_combout\ = (!\U06|w_n_leite\(8) & (!\U06|w_n_leite\(9) & (!\U06|w_n_leite\(11) & !\U06|w_n_leite\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U06|w_n_leite\(8),
	datab => \U06|w_n_leite\(9),
	datac => \U06|w_n_leite\(11),
	datad => \U06|w_n_leite\(10),
	combout => \U06|LessThan1~2_combout\);

-- Location: LCCOMB_X45_Y52_N24
\U06|LessThan1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|LessThan1~4_combout\ = (\U06|LessThan1~0_combout\ & (\U06|LessThan1~1_combout\ & (\U06|LessThan1~3_combout\ & \U06|LessThan1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U06|LessThan1~0_combout\,
	datab => \U06|LessThan1~1_combout\,
	datac => \U06|LessThan1~3_combout\,
	datad => \U06|LessThan1~2_combout\,
	combout => \U06|LessThan1~4_combout\);

-- Location: LCCOMB_X46_Y52_N12
\U06|LessThan1~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|LessThan1~9_combout\ = (\U06|LessThan1~6_combout\ & (\U06|LessThan1~8_combout\ & (\U06|LessThan1~5_combout\ & \U06|LessThan1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U06|LessThan1~6_combout\,
	datab => \U06|LessThan1~8_combout\,
	datac => \U06|LessThan1~5_combout\,
	datad => \U06|LessThan1~4_combout\,
	combout => \U06|LessThan1~9_combout\);

-- Location: LCCOMB_X46_Y52_N2
\U06|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|Equal0~0_combout\ = (w_state(0) & !\w_state[1]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => w_state(0),
	datad => \w_state[1]~2_combout\,
	combout => \U06|Equal0~0_combout\);

-- Location: LCCOMB_X46_Y52_N20
\U06|o_f_repo~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|o_f_repo~0_combout\ = (\U06|Equal0~0_combout\ & ((\U06|LessThan1~9_combout\) # ((\U06|preparo~3_combout\) # (\U06|LessThan0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U06|LessThan1~9_combout\,
	datab => \U06|preparo~3_combout\,
	datac => \U06|LessThan0~9_combout\,
	datad => \U06|Equal0~0_combout\,
	combout => \U06|o_f_repo~0_combout\);

-- Location: LCCOMB_X46_Y52_N28
\U06|o_f_repo~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|o_f_repo~1_combout\ = (\U06|o_f_repo~0_combout\) # ((\U06|o_f_repo~q\ & ((w_state(0)) # (!\w_state[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => w_state(0),
	datab => \w_state[1]~2_combout\,
	datac => \U06|o_f_repo~q\,
	datad => \U06|o_f_repo~0_combout\,
	combout => \U06|o_f_repo~1_combout\);

-- Location: FF_X46_Y52_N29
\U06|o_f_repo\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|o_f_repo~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|o_f_repo~q\);

-- Location: LCCOMB_X46_Y52_N10
\o_l_cafe~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \o_l_cafe~0_combout\ = (!\i_b_reposicao~input_o\ & (!\U06|o_f_repo~q\ & (!w_state(0) & !\w_state[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_b_reposicao~input_o\,
	datab => \U06|o_f_repo~q\,
	datac => w_state(0),
	datad => \w_state[1]~2_combout\,
	combout => \o_l_cafe~0_combout\);

-- Location: LCCOMB_X46_Y52_N8
\o_l_cafe~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \o_l_cafe~1_combout\ = (\o_l_cafe~0_combout\ & ((\i_b_cafe_leite~input_o\) # ((\i_b_mocaccino~input_o\) # (\i_b_cafe~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_b_cafe_leite~input_o\,
	datab => \i_b_mocaccino~input_o\,
	datac => \i_b_cafe~input_o\,
	datad => \o_l_cafe~0_combout\,
	combout => \o_l_cafe~1_combout\);

-- Location: FF_X46_Y52_N9
\o_l_cafe~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \i_b_cafe~input_o\,
	clrn => \ALT_INV_i_b_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \o_l_cafe~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_l_cafe~reg0_q\);

-- Location: FF_X46_Y52_N27
\o_l_cafe_leite~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Mux17~0_combout\,
	clrn => \ALT_INV_i_b_rst~inputclkctrl_outclk\,
	ena => \o_l_cafe~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_l_cafe_leite~reg0_q\);

-- Location: LCCOMB_X46_Y52_N4
\o_l_cafe~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \o_l_cafe~2_combout\ = (!\i_b_cafe_leite~input_o\ & !\i_b_cafe~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_b_cafe_leite~input_o\,
	datad => \i_b_cafe~input_o\,
	combout => \o_l_cafe~2_combout\);

-- Location: FF_X46_Y52_N5
\o_l_mocaccino~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \o_l_cafe~2_combout\,
	clrn => \ALT_INV_i_b_rst~inputclkctrl_outclk\,
	ena => \o_l_cafe~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_l_mocaccino~reg0_q\);

-- Location: LCCOMB_X51_Y52_N8
\o_l_tamanho~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \o_l_tamanho~0_combout\ = (\i_b_tamanho~input_o\ & ((\o_l_cafe~0_combout\ & (\w_tamanho~q\)) # (!\o_l_cafe~0_combout\ & ((\o_l_tamanho~reg0_q\))))) # (!\i_b_tamanho~input_o\ & (((\o_l_tamanho~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_b_tamanho~input_o\,
	datab => \w_tamanho~q\,
	datac => \o_l_tamanho~reg0_q\,
	datad => \o_l_cafe~0_combout\,
	combout => \o_l_tamanho~0_combout\);

-- Location: FF_X51_Y52_N9
\o_l_tamanho~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \o_l_tamanho~0_combout\,
	clrn => \ALT_INV_i_b_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_l_tamanho~reg0_q\);

-- Location: LCCOMB_X46_Y52_N16
\o_l_acucar~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \o_l_acucar~0_combout\ = (\i_b_acucar~input_o\ & ((\o_l_cafe~0_combout\ & (\w_acucar~q\)) # (!\o_l_cafe~0_combout\ & ((\o_l_acucar~reg0_q\))))) # (!\i_b_acucar~input_o\ & (((\o_l_acucar~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \w_acucar~q\,
	datab => \i_b_acucar~input_o\,
	datac => \o_l_acucar~reg0_q\,
	datad => \o_l_cafe~0_combout\,
	combout => \o_l_acucar~0_combout\);

-- Location: FF_X46_Y52_N17
\o_l_acucar~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \o_l_acucar~0_combout\,
	clrn => \ALT_INV_i_b_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_l_acucar~reg0_q\);

-- Location: LCCOMB_X46_Y52_N22
\o_l_reposicao~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \o_l_reposicao~0_combout\ = (!\i_b_rst~input_o\ & ((\i_b_reposicao~input_o\) # (\U06|o_f_repo~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_b_rst~input_o\,
	datac => \i_b_reposicao~input_o\,
	datad => \U06|o_f_repo~q\,
	combout => \o_l_reposicao~0_combout\);

-- Location: LCCOMB_X46_Y52_N14
\o_l_reposicao$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \o_l_reposicao$latch~combout\ = (\o_l_reposicao~0_combout\ & ((!\i_b_reposicao~input_o\))) # (!\o_l_reposicao~0_combout\ & (\o_l_reposicao$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \o_l_reposicao$latch~combout\,
	datac => \o_l_reposicao~0_combout\,
	datad => \i_b_reposicao~input_o\,
	combout => \o_l_reposicao$latch~combout\);

-- Location: LCCOMB_X51_Y50_N0
\U06|o_f_preparo~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|o_f_preparo~1_combout\ = (\U06|Equal1~0_combout\) # ((!\U06|o_f_preparo~0_combout\ & \U06|o_f_preparo~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U06|o_f_preparo~0_combout\,
	datac => \U06|o_f_preparo~q\,
	datad => \U06|Equal1~0_combout\,
	combout => \U06|o_f_preparo~1_combout\);

-- Location: FF_X51_Y50_N1
\U06|o_f_preparo\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|o_f_preparo~1_combout\,
	ena => \U06|o_f_preparo~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|o_f_preparo~q\);

-- Location: LCCOMB_X49_Y50_N2
\U06|w_f_l_pronto~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|w_f_l_pronto~0_combout\ = (\U06|w_f_pisca[31]~2_combout\ & ((\U06|o_f_preparo~0_combout\) # ((!\U06|LessThan7~1_combout\ & \U06|o_f_pronto~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U06|LessThan7~1_combout\,
	datab => \U06|o_f_preparo~0_combout\,
	datac => \U06|o_f_pronto~2_combout\,
	datad => \U06|w_f_pisca[31]~2_combout\,
	combout => \U06|w_f_l_pronto~0_combout\);

-- Location: LCCOMB_X49_Y50_N22
\U06|w_f_l_pronto~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|w_f_l_pronto~1_combout\ = (\U06|w_f_l_pronto~q\ & ((\U06|Equal1~1_combout\) # (!\U06|w_f_l_pronto~0_combout\))) # (!\U06|w_f_l_pronto~q\ & ((\U06|w_f_l_pronto~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U06|Equal1~1_combout\,
	datac => \U06|w_f_l_pronto~q\,
	datad => \U06|w_f_l_pronto~0_combout\,
	combout => \U06|w_f_l_pronto~1_combout\);

-- Location: FF_X49_Y50_N23
\U06|w_f_l_pronto\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|w_f_l_pronto~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|w_f_l_pronto~q\);

-- Location: LCCOMB_X49_Y50_N8
\U06|o_f_pronto~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|o_f_pronto~3_combout\ = (\U06|o_f_pronto~4_combout\ & ((\U06|o_f_preparo~3_combout\ & (\U06|w_f_l_pronto~q\)) # (!\U06|o_f_preparo~3_combout\ & ((\U06|o_f_pronto~q\))))) # (!\U06|o_f_pronto~4_combout\ & (((\U06|o_f_pronto~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U06|w_f_l_pronto~q\,
	datab => \U06|o_f_pronto~4_combout\,
	datac => \U06|o_f_pronto~q\,
	datad => \U06|o_f_preparo~3_combout\,
	combout => \U06|o_f_pronto~3_combout\);

-- Location: FF_X49_Y50_N9
\U06|o_f_pronto\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|o_f_pronto~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|o_f_pronto~q\);

-- Location: LCCOMB_X54_Y50_N26
\U06|o_valv_cafe~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|o_valv_cafe~0_combout\ = (!\U06|LessThan4~8_combout\ & (!\U06|w_q_sec\(31) & \U06|Equal1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U06|LessThan4~8_combout\,
	datac => \U06|w_q_sec\(31),
	datad => \U06|Equal1~2_combout\,
	combout => \U06|o_valv_cafe~0_combout\);

-- Location: LCCOMB_X51_Y50_N12
\U06|o_valv_leite~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|o_valv_leite~0_combout\ = (\U06|Equal1~0_combout\) # ((!\U06|o_f_preparo~3_combout\) # (!\U06|o_valv_cafe~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U06|Equal1~0_combout\,
	datac => \U06|o_valv_cafe~0_combout\,
	datad => \U06|o_f_preparo~3_combout\,
	combout => \U06|o_valv_leite~0_combout\);

-- Location: LCCOMB_X51_Y50_N30
\U06|o_valv_leite~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|o_valv_leite~1_combout\ = (\U06|w_n_leite[31]~0_combout\) # ((\U06|o_valv_leite~0_combout\ & \U06|o_valv_leite~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U06|o_valv_leite~0_combout\,
	datac => \U06|o_valv_leite~q\,
	datad => \U06|w_n_leite[31]~0_combout\,
	combout => \U06|o_valv_leite~1_combout\);

-- Location: FF_X51_Y50_N31
\U06|o_valv_leite\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|o_valv_leite~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|o_valv_leite~q\);

-- Location: LCCOMB_X51_Y50_N4
\U06|o_valv_cafe~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|o_valv_cafe~1_combout\ = (\U06|Equal1~0_combout\) # ((!\U06|o_valv_cafe~0_combout\ & \U06|o_valv_cafe~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U06|o_valv_cafe~0_combout\,
	datac => \U06|o_valv_cafe~q\,
	datad => \U06|Equal1~0_combout\,
	combout => \U06|o_valv_cafe~1_combout\);

-- Location: FF_X51_Y50_N5
\U06|o_valv_cafe\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|o_valv_cafe~1_combout\,
	ena => \U06|o_f_preparo~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|o_valv_cafe~q\);

-- Location: LCCOMB_X51_Y50_N10
\U06|o_valv_chocolate~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|o_valv_chocolate~0_combout\ = (\U06|w_n_chocolate[31]~0_combout\) # ((\U06|o_valv_leite~0_combout\ & \U06|o_valv_chocolate~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U06|o_valv_leite~0_combout\,
	datac => \U06|o_valv_chocolate~q\,
	datad => \U06|w_n_chocolate[31]~0_combout\,
	combout => \U06|o_valv_chocolate~0_combout\);

-- Location: FF_X51_Y50_N11
\U06|o_valv_chocolate\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|o_valv_chocolate~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|o_valv_chocolate~q\);

-- Location: LCCOMB_X51_Y50_N16
\U06|o_valv_acucar~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|o_valv_acucar~0_combout\ = (\w_acucar~q\ & ((\U06|w_n_acucar[31]~4_combout\) # ((\U06|o_valv_acucar~q\ & \U06|o_valv_leite~0_combout\)))) # (!\w_acucar~q\ & (((\U06|o_valv_acucar~q\ & \U06|o_valv_leite~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \w_acucar~q\,
	datab => \U06|w_n_acucar[31]~4_combout\,
	datac => \U06|o_valv_acucar~q\,
	datad => \U06|o_valv_leite~0_combout\,
	combout => \U06|o_valv_acucar~0_combout\);

-- Location: FF_X51_Y50_N17
\U06|o_valv_acucar\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U06|o_valv_acucar~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U06|o_valv_acucar~q\);

-- Location: LCCOMB_X3_Y13_N4
\U02|o_display[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U02|o_display[1]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \U02|o_display[1]~feeder_combout\);

-- Location: FF_X3_Y13_N5
\U02|o_display[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U02|o_display[1]~feeder_combout\,
	clrn => \ALT_INV_i_b_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U02|o_display\(1));

-- Location: LCCOMB_X1_Y27_N16
\U02|o_display[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U02|o_display[2]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \U02|o_display[2]~feeder_combout\);

-- Location: FF_X1_Y27_N17
\U02|o_display[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U02|o_display[2]~feeder_combout\,
	clrn => \ALT_INV_i_b_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U02|o_display\(2));

-- Location: LCCOMB_X35_Y38_N28
\U02|o_display[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U02|o_display[3]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \U02|o_display[3]~feeder_combout\);

-- Location: FF_X35_Y38_N29
\U02|o_display[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U02|o_display[3]~feeder_combout\,
	clrn => \ALT_INV_i_b_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U02|o_display\(3));

-- Location: LCCOMB_X51_Y1_N0
\U02|o_display[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U02|o_display[4]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \U02|o_display[4]~feeder_combout\);

-- Location: FF_X51_Y1_N1
\U02|o_display[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U02|o_display[4]~feeder_combout\,
	clrn => \ALT_INV_i_b_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U02|o_display\(4));

-- Location: LCCOMB_X77_Y17_N16
\U02|o_display[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U02|o_display[5]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \U02|o_display[5]~feeder_combout\);

-- Location: FF_X77_Y17_N17
\U02|o_display[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U02|o_display[5]~feeder_combout\,
	clrn => \ALT_INV_i_b_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U02|o_display\(5));

-- Location: LCCOMB_X46_Y52_N0
\w_letra_1[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \w_letra_1[0]~0_combout\ = (w_letra_1(0)) # ((!\i_b_reposicao~input_o\ & (!\U06|o_f_repo~q\ & \U06|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_b_reposicao~input_o\,
	datab => \U06|o_f_repo~q\,
	datac => w_letra_1(0),
	datad => \U06|Equal0~0_combout\,
	combout => \w_letra_1[0]~0_combout\);

-- Location: FF_X46_Y52_N1
\w_letra_1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \w_letra_1[0]~0_combout\,
	clrn => \ALT_INV_i_b_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w_letra_1(0));

-- Location: LCCOMB_X58_Y53_N24
\U03|o_display[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U03|o_display[0]~feeder_combout\ = w_letra_1(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => w_letra_1(0),
	combout => \U03|o_display[0]~feeder_combout\);

-- Location: FF_X58_Y53_N25
\U03|o_display[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U03|o_display[0]~feeder_combout\,
	clrn => \ALT_INV_i_b_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U03|o_display\(0));

-- Location: LCCOMB_X30_Y38_N4
\U03|o_display[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U03|o_display[1]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \U03|o_display[1]~feeder_combout\);

-- Location: FF_X30_Y38_N5
\U03|o_display[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U03|o_display[1]~feeder_combout\,
	clrn => \ALT_INV_i_b_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U03|o_display\(1));

-- Location: LCCOMB_X1_Y16_N16
\U03|o_display[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U03|o_display[2]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \U03|o_display[2]~feeder_combout\);

-- Location: FF_X1_Y16_N17
\U03|o_display[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U03|o_display[2]~feeder_combout\,
	clrn => \ALT_INV_i_b_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U03|o_display\(2));

-- Location: LCCOMB_X58_Y53_N26
\U03|o_display[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U03|o_display[3]~0_combout\ = !w_letra_1(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => w_letra_1(0),
	combout => \U03|o_display[3]~0_combout\);

-- Location: FF_X58_Y53_N27
\U03|o_display[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U03|o_display[3]~0_combout\,
	clrn => \ALT_INV_i_b_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U03|o_display\(3));

-- Location: LCCOMB_X36_Y38_N4
\U03|o_display[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U03|o_display[4]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \U03|o_display[4]~feeder_combout\);

-- Location: FF_X36_Y38_N5
\U03|o_display[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U03|o_display[4]~feeder_combout\,
	clrn => \ALT_INV_i_b_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U03|o_display\(4));

-- Location: LCCOMB_X63_Y1_N0
\U03|o_display[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U03|o_display[5]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \U03|o_display[5]~feeder_combout\);

-- Location: FF_X63_Y1_N1
\U03|o_display[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U03|o_display[5]~feeder_combout\,
	clrn => \ALT_INV_i_b_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U03|o_display\(5));

-- Location: LCCOMB_X58_Y53_N8
\U03|o_display[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U03|o_display[6]~feeder_combout\ = w_letra_1(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => w_letra_1(0),
	combout => \U03|o_display[6]~feeder_combout\);

-- Location: FF_X58_Y53_N9
\U03|o_display[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U03|o_display[6]~feeder_combout\,
	clrn => \ALT_INV_i_b_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U03|o_display\(6));

-- Location: LCCOMB_X35_Y4_N8
\U04|o_display[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U04|o_display[1]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \U04|o_display[1]~feeder_combout\);

-- Location: FF_X35_Y4_N9
\U04|o_display[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U04|o_display[1]~feeder_combout\,
	clrn => \ALT_INV_i_b_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U04|o_display\(1));

-- Location: LCCOMB_X57_Y53_N24
\U04|o_display[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U04|o_display[2]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \U04|o_display[2]~feeder_combout\);

-- Location: FF_X57_Y53_N25
\U04|o_display[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U04|o_display[2]~feeder_combout\,
	clrn => \ALT_INV_i_b_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U04|o_display\(2));

-- Location: LCCOMB_X58_Y53_N10
\U04|o_display[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U04|o_display[3]~0_combout\ = !w_letra_1(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => w_letra_1(0),
	combout => \U04|o_display[3]~0_combout\);

-- Location: FF_X58_Y53_N11
\U04|o_display[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U04|o_display[3]~0_combout\,
	clrn => \ALT_INV_i_b_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U04|o_display\(3));

-- Location: LCCOMB_X58_Y53_N4
\U04|o_display[4]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U04|o_display[4]~1_combout\ = !w_letra_1(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => w_letra_1(0),
	combout => \U04|o_display[4]~1_combout\);

-- Location: FF_X58_Y53_N5
\U04|o_display[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U04|o_display[4]~1_combout\,
	clrn => \ALT_INV_i_b_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U04|o_display\(4));

-- Location: LCCOMB_X58_Y53_N22
\U04|o_display[5]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U04|o_display[5]~2_combout\ = !w_letra_1(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => w_letra_1(0),
	combout => \U04|o_display[5]~2_combout\);

-- Location: FF_X58_Y53_N23
\U04|o_display[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U04|o_display[5]~2_combout\,
	clrn => \ALT_INV_i_b_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U04|o_display\(5));

-- Location: LCCOMB_X58_Y53_N20
\U05|o_display[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U05|o_display[0]~feeder_combout\ = w_letra_1(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => w_letra_1(0),
	combout => \U05|o_display[0]~feeder_combout\);

-- Location: FF_X58_Y53_N21
\U05|o_display[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U05|o_display[0]~feeder_combout\,
	clrn => \ALT_INV_i_b_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U05|o_display\(0));

-- Location: LCCOMB_X1_Y13_N16
\U05|o_display[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U05|o_display[1]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \U05|o_display[1]~feeder_combout\);

-- Location: FF_X1_Y13_N17
\U05|o_display[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U05|o_display[1]~feeder_combout\,
	clrn => \ALT_INV_i_b_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U05|o_display\(1));

-- Location: LCCOMB_X27_Y38_N28
\U05|o_display[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U05|o_display[2]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \U05|o_display[2]~feeder_combout\);

-- Location: FF_X27_Y38_N29
\U05|o_display[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U05|o_display[2]~feeder_combout\,
	clrn => \ALT_INV_i_b_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U05|o_display\(2));

-- Location: LCCOMB_X25_Y4_N16
\U05|o_display[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U05|o_display[3]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \U05|o_display[3]~feeder_combout\);

-- Location: FF_X25_Y4_N17
\U05|o_display[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U05|o_display[3]~feeder_combout\,
	clrn => \ALT_INV_i_b_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U05|o_display\(3));

-- Location: LCCOMB_X30_Y38_N2
\U05|o_display[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U05|o_display[4]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \U05|o_display[4]~feeder_combout\);

-- Location: FF_X30_Y38_N3
\U05|o_display[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U05|o_display[4]~feeder_combout\,
	clrn => \ALT_INV_i_b_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U05|o_display\(4));

-- Location: LCCOMB_X58_Y53_N18
\U05|o_display[5]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U05|o_display[5]~0_combout\ = !w_letra_1(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => w_letra_1(0),
	combout => \U05|o_display[5]~0_combout\);

-- Location: FF_X58_Y53_N19
\U05|o_display[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U05|o_display[5]~0_combout\,
	clrn => \ALT_INV_i_b_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U05|o_display\(5));

-- Location: IOIBUF_X69_Y54_N22
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

-- Location: IOIBUF_X29_Y0_N1
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

-- Location: IOIBUF_X34_Y39_N22
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
END structure;


