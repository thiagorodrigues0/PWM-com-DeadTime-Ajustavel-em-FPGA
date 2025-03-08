-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "07/22/2024 15:10:34"

-- 
-- Device: Altera EP2C20F484C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	PWM_DeadTime IS
    PORT (
	pwm : OUT std_logic;
	Clock : IN std_logic;
	switch2 : IN std_logic;
	key2 : IN std_logic;
	pwm2 : OUT std_logic;
	switch1 : IN std_logic;
	key1 : IN std_logic;
	ativador : IN std_logic
	);
END PWM_DeadTime;

-- Design Ports Information
-- pwm	=>  Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pwm2	=>  Location: PIN_C20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- switch2	=>  Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key2	=>  Location: PIN_R21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- switch1	=>  Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key1	=>  Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ativador	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Clock	=>  Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF PWM_DeadTime IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_pwm : std_logic;
SIGNAL ww_Clock : std_logic;
SIGNAL ww_switch2 : std_logic;
SIGNAL ww_key2 : std_logic;
SIGNAL ww_pwm2 : std_logic;
SIGNAL ww_switch1 : std_logic;
SIGNAL ww_key1 : std_logic;
SIGNAL ww_ativador : std_logic;
SIGNAL \inst|altpll_component|pll_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst|altpll_component|pll_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst|altpll_component|_clk0~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst3|freq_onehz~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst7|Add10~0_combout\ : std_logic;
SIGNAL \inst7|Add11~4_combout\ : std_logic;
SIGNAL \inst7|Add11~6_combout\ : std_logic;
SIGNAL \inst7|Add10~10_combout\ : std_logic;
SIGNAL \inst7|process_3:cont[6]~regout\ : std_logic;
SIGNAL \inst7|Add10~16_combout\ : std_logic;
SIGNAL \inst7|Add10~18_combout\ : std_logic;
SIGNAL \inst7|Add10~20_combout\ : std_logic;
SIGNAL \inst7|Add10~22_combout\ : std_logic;
SIGNAL \inst7|Add10~29\ : std_logic;
SIGNAL \inst7|Add10~31\ : std_logic;
SIGNAL \inst7|Add10~30_combout\ : std_logic;
SIGNAL \inst7|Add10~32_combout\ : std_logic;
SIGNAL \inst7|Add11~24_combout\ : std_logic;
SIGNAL \inst7|Add11~26_combout\ : std_logic;
SIGNAL \inst7|Add11~29\ : std_logic;
SIGNAL \inst7|Add11~31\ : std_logic;
SIGNAL \inst7|Add11~30_combout\ : std_logic;
SIGNAL \inst7|Add11~33\ : std_logic;
SIGNAL \inst7|Add11~32_combout\ : std_logic;
SIGNAL \inst7|Add11~35\ : std_logic;
SIGNAL \inst7|Add11~34_combout\ : std_logic;
SIGNAL \inst7|Add11~36_combout\ : std_logic;
SIGNAL \inst7|process_3:cont[8]~regout\ : std_logic;
SIGNAL \inst7|Add8~2_combout\ : std_logic;
SIGNAL \inst7|Add9~0_combout\ : std_logic;
SIGNAL \inst7|Add9~2_combout\ : std_logic;
SIGNAL \inst7|Add8~4_combout\ : std_logic;
SIGNAL \inst7|Add9~4_combout\ : std_logic;
SIGNAL \inst7|Add9~6_combout\ : std_logic;
SIGNAL \inst7|Add9~8_combout\ : std_logic;
SIGNAL \inst7|Add9~10_combout\ : std_logic;
SIGNAL \inst7|Add8~14_combout\ : std_logic;
SIGNAL \inst7|Add9~12_combout\ : std_logic;
SIGNAL \inst7|Add9~14_combout\ : std_logic;
SIGNAL \inst7|Add8~18_combout\ : std_logic;
SIGNAL \inst7|Add8~24_combout\ : std_logic;
SIGNAL \inst7|Add8~26_combout\ : std_logic;
SIGNAL \inst7|Add8~28_combout\ : std_logic;
SIGNAL \inst7|Add8~30_combout\ : std_logic;
SIGNAL \inst7|Add9~16_combout\ : std_logic;
SIGNAL \inst7|Add9~18_combout\ : std_logic;
SIGNAL \inst7|Add9~28_combout\ : std_logic;
SIGNAL \inst|altpll_component|_clk0\ : std_logic;
SIGNAL \inst|altpll_component|pll~CLK1\ : std_logic;
SIGNAL \inst|altpll_component|pll~CLK2\ : std_logic;
SIGNAL \inst4|Add0~24_combout\ : std_logic;
SIGNAL \inst4|Add0~42_combout\ : std_logic;
SIGNAL \inst4|Add0~44_combout\ : std_logic;
SIGNAL \inst4|Add0~52_combout\ : std_logic;
SIGNAL \inst4|Add0~61\ : std_logic;
SIGNAL \inst4|Add0~62_combout\ : std_logic;
SIGNAL \inst7|Add3~6_combout\ : std_logic;
SIGNAL \inst7|process_3:cont[6]~1_combout\ : std_logic;
SIGNAL \inst7|process_3:cont[8]~1_combout\ : std_logic;
SIGNAL \inst7|cont[5]~19_combout\ : std_logic;
SIGNAL \inst3|Add0~1\ : std_logic;
SIGNAL \inst3|Add0~0_combout\ : std_logic;
SIGNAL \inst3|Add0~3\ : std_logic;
SIGNAL \inst3|Add0~2_combout\ : std_logic;
SIGNAL \inst3|Add0~5\ : std_logic;
SIGNAL \inst3|Add0~4_combout\ : std_logic;
SIGNAL \inst3|Add0~7\ : std_logic;
SIGNAL \inst3|Add0~6_combout\ : std_logic;
SIGNAL \inst3|Add0~9\ : std_logic;
SIGNAL \inst3|Add0~8_combout\ : std_logic;
SIGNAL \inst3|Add0~11\ : std_logic;
SIGNAL \inst3|Add0~10_combout\ : std_logic;
SIGNAL \inst3|Add0~13\ : std_logic;
SIGNAL \inst3|Add0~12_combout\ : std_logic;
SIGNAL \inst3|Add0~15\ : std_logic;
SIGNAL \inst3|Add0~14_combout\ : std_logic;
SIGNAL \inst3|Add0~17\ : std_logic;
SIGNAL \inst3|Add0~16_combout\ : std_logic;
SIGNAL \inst3|Add0~19\ : std_logic;
SIGNAL \inst3|Add0~18_combout\ : std_logic;
SIGNAL \inst3|Add0~21\ : std_logic;
SIGNAL \inst3|Add0~20_combout\ : std_logic;
SIGNAL \inst3|Add0~23\ : std_logic;
SIGNAL \inst3|Add0~22_combout\ : std_logic;
SIGNAL \inst3|Add0~25\ : std_logic;
SIGNAL \inst3|Add0~24_combout\ : std_logic;
SIGNAL \inst3|Add0~27\ : std_logic;
SIGNAL \inst3|Add0~26_combout\ : std_logic;
SIGNAL \inst3|Add0~29\ : std_logic;
SIGNAL \inst3|Add0~28_combout\ : std_logic;
SIGNAL \inst3|Add0~31\ : std_logic;
SIGNAL \inst3|Add0~30_combout\ : std_logic;
SIGNAL \inst3|Add0~33\ : std_logic;
SIGNAL \inst3|Add0~32_combout\ : std_logic;
SIGNAL \inst3|Add0~35\ : std_logic;
SIGNAL \inst3|Add0~34_combout\ : std_logic;
SIGNAL \inst3|Add0~37\ : std_logic;
SIGNAL \inst3|Add0~36_combout\ : std_logic;
SIGNAL \inst3|Add0~39\ : std_logic;
SIGNAL \inst3|Add0~38_combout\ : std_logic;
SIGNAL \inst3|Add0~41\ : std_logic;
SIGNAL \inst3|Add0~40_combout\ : std_logic;
SIGNAL \inst3|Add0~43\ : std_logic;
SIGNAL \inst3|Add0~42_combout\ : std_logic;
SIGNAL \inst3|Add0~45\ : std_logic;
SIGNAL \inst3|Add0~44_combout\ : std_logic;
SIGNAL \inst3|Add0~47\ : std_logic;
SIGNAL \inst3|Add0~46_combout\ : std_logic;
SIGNAL \inst3|Add0~49\ : std_logic;
SIGNAL \inst3|Add0~48_combout\ : std_logic;
SIGNAL \inst3|Add0~51\ : std_logic;
SIGNAL \inst3|Add0~50_combout\ : std_logic;
SIGNAL \inst3|Add0~53\ : std_logic;
SIGNAL \inst3|Add0~52_combout\ : std_logic;
SIGNAL \inst3|Add0~55\ : std_logic;
SIGNAL \inst3|Add0~54_combout\ : std_logic;
SIGNAL \inst3|Add0~57\ : std_logic;
SIGNAL \inst3|Add0~56_combout\ : std_logic;
SIGNAL \inst3|Add0~59\ : std_logic;
SIGNAL \inst3|Add0~58_combout\ : std_logic;
SIGNAL \inst3|Add0~61\ : std_logic;
SIGNAL \inst3|Add0~60_combout\ : std_logic;
SIGNAL \inst3|Add0~62_combout\ : std_logic;
SIGNAL \inst7|cont1[5]~29_combout\ : std_logic;
SIGNAL \inst7|cont1[12]~44\ : std_logic;
SIGNAL \inst7|cont1[13]~46\ : std_logic;
SIGNAL \inst7|cont1[13]~45_combout\ : std_logic;
SIGNAL \inst7|cont1[14]~48\ : std_logic;
SIGNAL \inst7|cont1[14]~47_combout\ : std_logic;
SIGNAL \inst7|cont1[15]~49_combout\ : std_logic;
SIGNAL \inst3|freq_onehz~regout\ : std_logic;
SIGNAL \inst4|Equal0~3_combout\ : std_logic;
SIGNAL \inst4|Equal0~6_combout\ : std_logic;
SIGNAL \inst7|Equal6~1_combout\ : std_logic;
SIGNAL \inst7|Equal6~5_combout\ : std_logic;
SIGNAL \inst7|Equal6~8_combout\ : std_logic;
SIGNAL \inst7|pwm_s2~0_combout\ : std_logic;
SIGNAL \inst7|Equal5~0_combout\ : std_logic;
SIGNAL \inst7|Equal5~1_combout\ : std_logic;
SIGNAL \inst7|Equal5~2_combout\ : std_logic;
SIGNAL \inst7|Equal5~3_combout\ : std_logic;
SIGNAL \inst7|Equal5~4_combout\ : std_logic;
SIGNAL \inst7|Equal5~6_combout\ : std_logic;
SIGNAL \inst7|Equal0~2_combout\ : std_logic;
SIGNAL \inst3|Equal0~0_combout\ : std_logic;
SIGNAL \inst3|Equal0~1_combout\ : std_logic;
SIGNAL \inst3|Equal0~2_combout\ : std_logic;
SIGNAL \inst3|Equal0~3_combout\ : std_logic;
SIGNAL \inst3|Equal0~4_combout\ : std_logic;
SIGNAL \inst3|Equal0~5_combout\ : std_logic;
SIGNAL \inst3|Equal0~6_combout\ : std_logic;
SIGNAL \inst3|Equal0~7_combout\ : std_logic;
SIGNAL \inst3|Equal0~8_combout\ : std_logic;
SIGNAL \inst3|Equal0~9_combout\ : std_logic;
SIGNAL \inst3|freq_onehz~0_combout\ : std_logic;
SIGNAL \inst7|process_3:cont[5]~3_combout\ : std_logic;
SIGNAL \inst3|count~0_combout\ : std_logic;
SIGNAL \inst3|count~1_combout\ : std_logic;
SIGNAL \inst7|amostragem~0_combout\ : std_logic;
SIGNAL \inst7|amostragem[1]~2_combout\ : std_logic;
SIGNAL \inst4|port_comp[6]~1_combout\ : std_logic;
SIGNAL \inst4|port_comp[4]~3_combout\ : std_logic;
SIGNAL \inst7|dt_var_sub[3]~4_combout\ : std_logic;
SIGNAL \key2~combout\ : std_logic;
SIGNAL \key1~combout\ : std_logic;
SIGNAL \Clock~combout\ : std_logic;
SIGNAL \inst|altpll_component|_clk0~clkctrl_outclk\ : std_logic;
SIGNAL \inst3|freq_onehz~clkctrl_outclk\ : std_logic;
SIGNAL \inst5|Add1~0_combout\ : std_logic;
SIGNAL \inst5|Add0~0_combout\ : std_logic;
SIGNAL \inst5|mod_aux~10_combout\ : std_logic;
SIGNAL \inst5|mod_aux[6]~0_combout\ : std_logic;
SIGNAL \inst5|mod_aux[6]~1_combout\ : std_logic;
SIGNAL \inst5|mod_aux[6]~5_combout\ : std_logic;
SIGNAL \inst5|Add1~1\ : std_logic;
SIGNAL \inst5|Add1~2_combout\ : std_logic;
SIGNAL \inst5|Add0~1\ : std_logic;
SIGNAL \inst5|Add0~2_combout\ : std_logic;
SIGNAL \switch2~combout\ : std_logic;
SIGNAL \inst5|mod_aux~9_combout\ : std_logic;
SIGNAL \inst5|Add0~3\ : std_logic;
SIGNAL \inst5|Add0~4_combout\ : std_logic;
SIGNAL \inst5|Add1~3\ : std_logic;
SIGNAL \inst5|Add1~4_combout\ : std_logic;
SIGNAL \inst5|mod_aux~8_combout\ : std_logic;
SIGNAL \inst5|Add0~5\ : std_logic;
SIGNAL \inst5|Add0~6_combout\ : std_logic;
SIGNAL \inst5|Add1~5\ : std_logic;
SIGNAL \inst5|Add1~6_combout\ : std_logic;
SIGNAL \inst5|mod_aux~7_combout\ : std_logic;
SIGNAL \inst5|Add0~7\ : std_logic;
SIGNAL \inst5|Add0~8_combout\ : std_logic;
SIGNAL \inst5|Add1~7\ : std_logic;
SIGNAL \inst5|Add1~8_combout\ : std_logic;
SIGNAL \inst5|mod_aux~6_combout\ : std_logic;
SIGNAL \inst5|Add0~9\ : std_logic;
SIGNAL \inst5|Add0~10_combout\ : std_logic;
SIGNAL \inst5|Add1~9\ : std_logic;
SIGNAL \inst5|Add1~10_combout\ : std_logic;
SIGNAL \inst5|mod_aux~4_combout\ : std_logic;
SIGNAL \inst5|LessThan0~0_combout\ : std_logic;
SIGNAL \inst5|LessThan0~1_combout\ : std_logic;
SIGNAL \inst5|Add0~11\ : std_logic;
SIGNAL \inst5|Add0~12_combout\ : std_logic;
SIGNAL \inst5|Add1~11\ : std_logic;
SIGNAL \inst5|Add1~12_combout\ : std_logic;
SIGNAL \inst5|mod_aux~2_combout\ : std_logic;
SIGNAL \inst5|mod_aux~3_combout\ : std_logic;
SIGNAL \inst4|Add0~0_combout\ : std_logic;
SIGNAL \inst4|Add0~1\ : std_logic;
SIGNAL \inst4|Add0~2_combout\ : std_logic;
SIGNAL \inst4|Add0~3\ : std_logic;
SIGNAL \inst4|Add0~4_combout\ : std_logic;
SIGNAL \inst4|Add0~5\ : std_logic;
SIGNAL \inst4|Add0~7\ : std_logic;
SIGNAL \inst4|Add0~8_combout\ : std_logic;
SIGNAL \inst4|Add0~9\ : std_logic;
SIGNAL \inst4|Add0~11\ : std_logic;
SIGNAL \inst4|Add0~13\ : std_logic;
SIGNAL \inst4|Add0~14_combout\ : std_logic;
SIGNAL \inst4|port_comp[7]~0_combout\ : std_logic;
SIGNAL \inst4|Add0~15\ : std_logic;
SIGNAL \inst4|Add0~16_combout\ : std_logic;
SIGNAL \inst4|Add0~20_combout\ : std_logic;
SIGNAL \inst4|Equal0~2_combout\ : std_logic;
SIGNAL \inst4|Add0~6_combout\ : std_logic;
SIGNAL \inst4|Equal0~0_combout\ : std_logic;
SIGNAL \inst4|Add0~12_combout\ : std_logic;
SIGNAL \inst4|Add0~10_combout\ : std_logic;
SIGNAL \inst4|Equal0~1_combout\ : std_logic;
SIGNAL \inst4|Equal0~4_combout\ : std_logic;
SIGNAL \inst4|count~0_combout\ : std_logic;
SIGNAL \inst4|Add0~17\ : std_logic;
SIGNAL \inst4|Add0~18_combout\ : std_logic;
SIGNAL \inst4|Add0~19\ : std_logic;
SIGNAL \inst4|Add0~21\ : std_logic;
SIGNAL \inst4|Add0~22_combout\ : std_logic;
SIGNAL \inst4|Add0~23\ : std_logic;
SIGNAL \inst4|Add0~25\ : std_logic;
SIGNAL \inst4|Add0~26_combout\ : std_logic;
SIGNAL \inst4|Add0~27\ : std_logic;
SIGNAL \inst4|Add0~28_combout\ : std_logic;
SIGNAL \inst4|Add0~29\ : std_logic;
SIGNAL \inst4|Add0~30_combout\ : std_logic;
SIGNAL \inst4|Add0~31\ : std_logic;
SIGNAL \inst4|Add0~32_combout\ : std_logic;
SIGNAL \inst4|Add0~33\ : std_logic;
SIGNAL \inst4|Add0~34_combout\ : std_logic;
SIGNAL \inst4|Add0~35\ : std_logic;
SIGNAL \inst4|Add0~36_combout\ : std_logic;
SIGNAL \inst4|Add0~37\ : std_logic;
SIGNAL \inst4|Add0~38_combout\ : std_logic;
SIGNAL \inst4|Equal0~5_combout\ : std_logic;
SIGNAL \inst4|Add0~39\ : std_logic;
SIGNAL \inst4|Add0~40_combout\ : std_logic;
SIGNAL \inst4|Add0~41\ : std_logic;
SIGNAL \inst4|Add0~43\ : std_logic;
SIGNAL \inst4|Add0~45\ : std_logic;
SIGNAL \inst4|Add0~46_combout\ : std_logic;
SIGNAL \inst4|Add0~47\ : std_logic;
SIGNAL \inst4|Add0~49\ : std_logic;
SIGNAL \inst4|Add0~50_combout\ : std_logic;
SIGNAL \inst4|Add0~51\ : std_logic;
SIGNAL \inst4|Add0~53\ : std_logic;
SIGNAL \inst4|Add0~54_combout\ : std_logic;
SIGNAL \inst4|Add0~55\ : std_logic;
SIGNAL \inst4|Add0~56_combout\ : std_logic;
SIGNAL \inst4|Add0~57\ : std_logic;
SIGNAL \inst4|Add0~58_combout\ : std_logic;
SIGNAL \inst4|Add0~59\ : std_logic;
SIGNAL \inst4|Add0~60_combout\ : std_logic;
SIGNAL \inst4|Equal0~8_combout\ : std_logic;
SIGNAL \inst4|Add0~48_combout\ : std_logic;
SIGNAL \inst4|Equal0~7_combout\ : std_logic;
SIGNAL \inst4|Equal0~9_combout\ : std_logic;
SIGNAL \inst4|Equal0~10_combout\ : std_logic;
SIGNAL \inst4|port_comp[5]~2_combout\ : std_logic;
SIGNAL \inst4|port_comp[3]~4_combout\ : std_logic;
SIGNAL \inst4|port_comp[2]~5_combout\ : std_logic;
SIGNAL \inst4|port_comp[1]~6_combout\ : std_logic;
SIGNAL \inst9|LessThan0~1_cout\ : std_logic;
SIGNAL \inst9|LessThan0~3_cout\ : std_logic;
SIGNAL \inst9|LessThan0~5_cout\ : std_logic;
SIGNAL \inst9|LessThan0~7_cout\ : std_logic;
SIGNAL \inst9|LessThan0~9_cout\ : std_logic;
SIGNAL \inst9|LessThan0~11_cout\ : std_logic;
SIGNAL \inst9|LessThan0~12_combout\ : std_logic;
SIGNAL \inst7|start~feeder_combout\ : std_logic;
SIGNAL \inst7|pwm_old3~regout\ : std_logic;
SIGNAL \inst7|process_2:var1~feeder_combout\ : std_logic;
SIGNAL \inst7|process_2:var1~regout\ : std_logic;
SIGNAL \inst7|contador2[6]~0_combout\ : std_logic;
SIGNAL \inst7|start~regout\ : std_logic;
SIGNAL \inst7|cont2[0]~16_combout\ : std_logic;
SIGNAL \inst7|contador2[6]~1_combout\ : std_logic;
SIGNAL \inst7|amostragem[0]~5_combout\ : std_logic;
SIGNAL \inst7|Add5~0_combout\ : std_logic;
SIGNAL \inst7|estouro~0_combout\ : std_logic;
SIGNAL \inst7|estouro~regout\ : std_logic;
SIGNAL \inst7|process_2~1_combout\ : std_logic;
SIGNAL \inst7|amostragem[1]~1_combout\ : std_logic;
SIGNAL \inst7|amostragem[2]~3_combout\ : std_logic;
SIGNAL \inst7|Add5~1_combout\ : std_logic;
SIGNAL \inst7|amostragem[3]~4_combout\ : std_logic;
SIGNAL \inst7|process_2~0_combout\ : std_logic;
SIGNAL \inst7|process_2~2_combout\ : std_logic;
SIGNAL \inst7|cont2[0]~20_combout\ : std_logic;
SIGNAL \inst7|cont2[6]~21_combout\ : std_logic;
SIGNAL \inst7|cont2[0]~17\ : std_logic;
SIGNAL \inst7|cont2[1]~18_combout\ : std_logic;
SIGNAL \inst7|cont2[1]~19\ : std_logic;
SIGNAL \inst7|cont2[2]~22_combout\ : std_logic;
SIGNAL \inst7|cont2[2]~23\ : std_logic;
SIGNAL \inst7|cont2[3]~25\ : std_logic;
SIGNAL \inst7|cont2[4]~26_combout\ : std_logic;
SIGNAL \inst7|cont2[4]~27\ : std_logic;
SIGNAL \inst7|cont2[5]~29\ : std_logic;
SIGNAL \inst7|cont2[6]~31\ : std_logic;
SIGNAL \inst7|cont2[7]~32_combout\ : std_logic;
SIGNAL \inst7|cont2[7]~33\ : std_logic;
SIGNAL \inst7|cont2[8]~35\ : std_logic;
SIGNAL \inst7|cont2[9]~36_combout\ : std_logic;
SIGNAL \inst7|cont2[9]~37\ : std_logic;
SIGNAL \inst7|cont2[10]~39\ : std_logic;
SIGNAL \inst7|cont2[11]~40_combout\ : std_logic;
SIGNAL \inst7|cont2[11]~41\ : std_logic;
SIGNAL \inst7|cont2[12]~43\ : std_logic;
SIGNAL \inst7|cont2[13]~44_combout\ : std_logic;
SIGNAL \inst7|cont2[13]~45\ : std_logic;
SIGNAL \inst7|cont2[14]~46_combout\ : std_logic;
SIGNAL \inst7|cont2[14]~47\ : std_logic;
SIGNAL \inst7|cont2[15]~48_combout\ : std_logic;
SIGNAL \inst7|cont2[12]~42_combout\ : std_logic;
SIGNAL \inst7|cont2[10]~38_combout\ : std_logic;
SIGNAL \inst7|cont2[8]~34_combout\ : std_logic;
SIGNAL \inst7|cont2[6]~30_combout\ : std_logic;
SIGNAL \inst7|cont2[5]~28_combout\ : std_logic;
SIGNAL \switch1~combout\ : std_logic;
SIGNAL \inst7|Add3~0_combout\ : std_logic;
SIGNAL \inst7|Add3~9\ : std_logic;
SIGNAL \inst7|Add3~11\ : std_logic;
SIGNAL \inst7|Add3~12_combout\ : std_logic;
SIGNAL \ativador~combout\ : std_logic;
SIGNAL \inst7|Add3~10_combout\ : std_logic;
SIGNAL \inst7|dt_var_sub[5]~6_combout\ : std_logic;
SIGNAL \inst7|dt_var_sub[0]~0_combout\ : std_logic;
SIGNAL \inst7|Add3~2_combout\ : std_logic;
SIGNAL \inst7|dt_var_sub[0]~1_combout\ : std_logic;
SIGNAL \inst7|dt_var_sub[0]~2_combout\ : std_logic;
SIGNAL \inst7|dt_var_sub[0]~3_combout\ : std_logic;
SIGNAL \inst7|Add3~1\ : std_logic;
SIGNAL \inst7|Add3~3\ : std_logic;
SIGNAL \inst7|Add3~5\ : std_logic;
SIGNAL \inst7|Add3~7\ : std_logic;
SIGNAL \inst7|Add3~8_combout\ : std_logic;
SIGNAL \inst7|dt_var_sub[4]~7_combout\ : std_logic;
SIGNAL \inst7|cont2[3]~24_combout\ : std_logic;
SIGNAL \inst7|Add3~4_combout\ : std_logic;
SIGNAL \inst7|dt_var_sub[2]~5_combout\ : std_logic;
SIGNAL \inst7|Add8~1\ : std_logic;
SIGNAL \inst7|Add8~3\ : std_logic;
SIGNAL \inst7|Add8~5\ : std_logic;
SIGNAL \inst7|Add8~7\ : std_logic;
SIGNAL \inst7|Add8~9\ : std_logic;
SIGNAL \inst7|Add8~11\ : std_logic;
SIGNAL \inst7|Add8~13\ : std_logic;
SIGNAL \inst7|Add8~15\ : std_logic;
SIGNAL \inst7|Add8~17\ : std_logic;
SIGNAL \inst7|Add8~19\ : std_logic;
SIGNAL \inst7|Add8~21\ : std_logic;
SIGNAL \inst7|Add8~23\ : std_logic;
SIGNAL \inst7|Add8~25\ : std_logic;
SIGNAL \inst7|Add8~27\ : std_logic;
SIGNAL \inst7|Add8~29\ : std_logic;
SIGNAL \inst7|Add8~31\ : std_logic;
SIGNAL \inst7|Add8~32_combout\ : std_logic;
SIGNAL \inst7|Add8~22_combout\ : std_logic;
SIGNAL \inst7|Add8~20_combout\ : std_logic;
SIGNAL \inst7|Add8~16_combout\ : std_logic;
SIGNAL \inst7|Add8~12_combout\ : std_logic;
SIGNAL \inst7|Add8~10_combout\ : std_logic;
SIGNAL \inst7|Add8~8_combout\ : std_logic;
SIGNAL \inst7|Add8~6_combout\ : std_logic;
SIGNAL \inst7|Add8~0_combout\ : std_logic;
SIGNAL \inst7|Add9~1\ : std_logic;
SIGNAL \inst7|Add9~3\ : std_logic;
SIGNAL \inst7|Add9~5\ : std_logic;
SIGNAL \inst7|Add9~7\ : std_logic;
SIGNAL \inst7|Add9~9\ : std_logic;
SIGNAL \inst7|Add9~11\ : std_logic;
SIGNAL \inst7|Add9~13\ : std_logic;
SIGNAL \inst7|Add9~15\ : std_logic;
SIGNAL \inst7|Add9~17\ : std_logic;
SIGNAL \inst7|Add9~19\ : std_logic;
SIGNAL \inst7|Add9~21\ : std_logic;
SIGNAL \inst7|Add9~23\ : std_logic;
SIGNAL \inst7|Add9~25\ : std_logic;
SIGNAL \inst7|Add9~27\ : std_logic;
SIGNAL \inst7|Add9~29\ : std_logic;
SIGNAL \inst7|Add9~31\ : std_logic;
SIGNAL \inst7|Add9~32_combout\ : std_logic;
SIGNAL \inst7|Add9~33\ : std_logic;
SIGNAL \inst7|Add9~34_combout\ : std_logic;
SIGNAL \inst7|Add9~35\ : std_logic;
SIGNAL \inst7|Add9~36_combout\ : std_logic;
SIGNAL \inst7|Equal5~5_combout\ : std_logic;
SIGNAL \inst7|process_3:cont[0]~1_combout\ : std_logic;
SIGNAL \inst7|process_3:cont[11]~2\ : std_logic;
SIGNAL \inst7|process_3:cont[12]~2\ : std_logic;
SIGNAL \inst7|process_3:cont[13]~1_combout\ : std_logic;
SIGNAL \inst7|process_3:cont[13]~regout\ : std_logic;
SIGNAL \inst7|process_3:cont[13]~2\ : std_logic;
SIGNAL \inst7|process_3:cont[14]~1_combout\ : std_logic;
SIGNAL \inst7|process_3:cont[14]~regout\ : std_logic;
SIGNAL \inst7|process_3:cont[14]~2\ : std_logic;
SIGNAL \inst7|process_3:cont[15]~2_combout\ : std_logic;
SIGNAL \inst7|process_3:cont[15]~regout\ : std_logic;
SIGNAL \inst7|process_3:cont[5]~7_combout\ : std_logic;
SIGNAL \inst7|cont1[0]~16_combout\ : std_logic;
SIGNAL \inst7|cont1[13]~20_combout\ : std_logic;
SIGNAL \inst7|cont1[6]~21_combout\ : std_logic;
SIGNAL \inst7|cont1[6]~22_combout\ : std_logic;
SIGNAL \inst7|cont1[0]~17\ : std_logic;
SIGNAL \inst7|cont1[1]~18_combout\ : std_logic;
SIGNAL \inst7|contador1[6]~0_combout\ : std_logic;
SIGNAL \inst7|Add10~1\ : std_logic;
SIGNAL \inst7|Add10~2_combout\ : std_logic;
SIGNAL \inst7|Add11~1\ : std_logic;
SIGNAL \inst7|Add11~2_combout\ : std_logic;
SIGNAL \inst7|Add11~0_combout\ : std_logic;
SIGNAL \inst7|Equal6~0_combout\ : std_logic;
SIGNAL \inst7|process_3:cont[5]~8_combout\ : std_logic;
SIGNAL \inst7|process_3:cont[5]~regout\ : std_logic;
SIGNAL \inst7|cont1[1]~19\ : std_logic;
SIGNAL \inst7|cont1[2]~23_combout\ : std_logic;
SIGNAL \inst7|cont1[2]~24\ : std_logic;
SIGNAL \inst7|cont1[3]~25_combout\ : std_logic;
SIGNAL \inst7|Add10~3\ : std_logic;
SIGNAL \inst7|Add10~5\ : std_logic;
SIGNAL \inst7|Add10~7\ : std_logic;
SIGNAL \inst7|Add10~8_combout\ : std_logic;
SIGNAL \inst7|Add10~6_combout\ : std_logic;
SIGNAL \inst7|Add10~4_combout\ : std_logic;
SIGNAL \inst7|Add11~3\ : std_logic;
SIGNAL \inst7|Add11~5\ : std_logic;
SIGNAL \inst7|Add11~7\ : std_logic;
SIGNAL \inst7|Add11~9\ : std_logic;
SIGNAL \inst7|Add11~10_combout\ : std_logic;
SIGNAL \inst7|Add11~8_combout\ : std_logic;
SIGNAL \inst7|Equal6~2_combout\ : std_logic;
SIGNAL \inst7|cont1[3]~26\ : std_logic;
SIGNAL \inst7|cont1[4]~27_combout\ : std_logic;
SIGNAL \inst7|cont1[4]~28\ : std_logic;
SIGNAL \inst7|cont1[5]~30\ : std_logic;
SIGNAL \inst7|cont1[6]~32\ : std_logic;
SIGNAL \inst7|cont1[7]~33_combout\ : std_logic;
SIGNAL \inst7|cont1[6]~31_combout\ : std_logic;
SIGNAL \inst7|Add10~9\ : std_logic;
SIGNAL \inst7|Add10~11\ : std_logic;
SIGNAL \inst7|Add10~13\ : std_logic;
SIGNAL \inst7|Add10~14_combout\ : std_logic;
SIGNAL \inst7|Add10~12_combout\ : std_logic;
SIGNAL \inst7|Add11~11\ : std_logic;
SIGNAL \inst7|Add11~13\ : std_logic;
SIGNAL \inst7|Add11~14_combout\ : std_logic;
SIGNAL \inst7|Add11~12_combout\ : std_logic;
SIGNAL \inst7|Equal6~3_combout\ : std_logic;
SIGNAL \inst7|Equal6~4_combout\ : std_logic;
SIGNAL \inst7|process_3:cont[3]~1_combout\ : std_logic;
SIGNAL \inst7|process_3:cont[3]~regout\ : std_logic;
SIGNAL \inst7|process_3:cont[5]~2_combout\ : std_logic;
SIGNAL \inst7|process_3:cont[10]~1_combout\ : std_logic;
SIGNAL \inst7|process_3:cont[10]~regout\ : std_logic;
SIGNAL \inst7|process_3:cont[5]~4_combout\ : std_logic;
SIGNAL \inst7|process_3:cont[5]~1_combout\ : std_logic;
SIGNAL \inst7|process_3:cont[5]~5_combout\ : std_logic;
SIGNAL \inst7|Add11~15\ : std_logic;
SIGNAL \inst7|Add11~17\ : std_logic;
SIGNAL \inst7|Add11~19\ : std_logic;
SIGNAL \inst7|Add11~21\ : std_logic;
SIGNAL \inst7|Add11~22_combout\ : std_logic;
SIGNAL \inst7|Add11~20_combout\ : std_logic;
SIGNAL \inst7|Equal6~7_combout\ : std_logic;
SIGNAL \inst7|Add11~16_combout\ : std_logic;
SIGNAL \inst7|Add11~18_combout\ : std_logic;
SIGNAL \inst7|Equal6~6_combout\ : std_logic;
SIGNAL \inst7|cont1[7]~34\ : std_logic;
SIGNAL \inst7|cont1[8]~36\ : std_logic;
SIGNAL \inst7|cont1[9]~37_combout\ : std_logic;
SIGNAL \inst7|cont1[9]~38\ : std_logic;
SIGNAL \inst7|cont1[10]~40\ : std_logic;
SIGNAL \inst7|cont1[11]~41_combout\ : std_logic;
SIGNAL \inst7|cont1[11]~42\ : std_logic;
SIGNAL \inst7|cont1[12]~43_combout\ : std_logic;
SIGNAL \inst7|cont1[10]~39_combout\ : std_logic;
SIGNAL \inst7|cont1[8]~35_combout\ : std_logic;
SIGNAL \inst7|Add10~15\ : std_logic;
SIGNAL \inst7|Add10~17\ : std_logic;
SIGNAL \inst7|Add10~19\ : std_logic;
SIGNAL \inst7|Add10~21\ : std_logic;
SIGNAL \inst7|Add10~23\ : std_logic;
SIGNAL \inst7|Add10~25\ : std_logic;
SIGNAL \inst7|Add10~27\ : std_logic;
SIGNAL \inst7|Add10~28_combout\ : std_logic;
SIGNAL \inst7|Add10~26_combout\ : std_logic;
SIGNAL \inst7|Add10~24_combout\ : std_logic;
SIGNAL \inst7|Add11~23\ : std_logic;
SIGNAL \inst7|Add11~25\ : std_logic;
SIGNAL \inst7|Add11~27\ : std_logic;
SIGNAL \inst7|Add11~28_combout\ : std_logic;
SIGNAL \inst7|Equal6~9_combout\ : std_logic;
SIGNAL \inst7|Equal6~10_combout\ : std_logic;
SIGNAL \inst7|process_3:cont[5]~6_combout\ : std_logic;
SIGNAL \inst7|process_3:cont[15]~1_combout\ : std_logic;
SIGNAL \inst7|process_3:cont[0]~regout\ : std_logic;
SIGNAL \inst7|process_3:cont[0]~2\ : std_logic;
SIGNAL \inst7|process_3:cont[1]~1_combout\ : std_logic;
SIGNAL \inst7|process_3:cont[1]~regout\ : std_logic;
SIGNAL \inst7|process_3:cont[1]~2\ : std_logic;
SIGNAL \inst7|process_3:cont[2]~1_combout\ : std_logic;
SIGNAL \inst7|process_3:cont[2]~regout\ : std_logic;
SIGNAL \inst7|process_3:cont[2]~2\ : std_logic;
SIGNAL \inst7|process_3:cont[3]~2\ : std_logic;
SIGNAL \inst7|process_3:cont[4]~1_combout\ : std_logic;
SIGNAL \inst7|process_3:cont[4]~regout\ : std_logic;
SIGNAL \inst7|process_3:cont[4]~2\ : std_logic;
SIGNAL \inst7|process_3:cont[5]~9\ : std_logic;
SIGNAL \inst7|process_3:cont[6]~2\ : std_logic;
SIGNAL \inst7|process_3:cont[7]~1_combout\ : std_logic;
SIGNAL \inst7|process_3:cont[7]~regout\ : std_logic;
SIGNAL \inst7|process_3:cont[7]~2\ : std_logic;
SIGNAL \inst7|process_3:cont[8]~2\ : std_logic;
SIGNAL \inst7|process_3:cont[9]~1_combout\ : std_logic;
SIGNAL \inst7|process_3:cont[9]~regout\ : std_logic;
SIGNAL \inst7|process_3:cont[9]~2\ : std_logic;
SIGNAL \inst7|process_3:cont[10]~2\ : std_logic;
SIGNAL \inst7|process_3:cont[11]~1_combout\ : std_logic;
SIGNAL \inst7|process_3:cont[11]~regout\ : std_logic;
SIGNAL \inst7|Add9~22_combout\ : std_logic;
SIGNAL \inst7|Add9~20_combout\ : std_logic;
SIGNAL \inst7|Equal5~7_combout\ : std_logic;
SIGNAL \inst7|process_3:cont[12]~1_combout\ : std_logic;
SIGNAL \inst7|process_3:cont[12]~regout\ : std_logic;
SIGNAL \inst7|Add9~26_combout\ : std_logic;
SIGNAL \inst7|Add9~24_combout\ : std_logic;
SIGNAL \inst7|Equal5~8_combout\ : std_logic;
SIGNAL \inst7|Add9~30_combout\ : std_logic;
SIGNAL \inst7|Equal5~9_combout\ : std_logic;
SIGNAL \inst7|Equal5~10_combout\ : std_logic;
SIGNAL \inst7|Equal5~11_combout\ : std_logic;
SIGNAL \inst7|pwm_s2~1_combout\ : std_logic;
SIGNAL \inst7|pwm_s2~regout\ : std_logic;
SIGNAL \inst7|cont[0]~9\ : std_logic;
SIGNAL \inst7|cont[1]~11_combout\ : std_logic;
SIGNAL \inst7|Add2~0_combout\ : std_logic;
SIGNAL \inst7|Add2~1\ : std_logic;
SIGNAL \inst7|Add2~2_combout\ : std_logic;
SIGNAL \inst7|Add2~3\ : std_logic;
SIGNAL \inst7|Add2~5\ : std_logic;
SIGNAL \inst7|Add2~7\ : std_logic;
SIGNAL \inst7|Add2~8_combout\ : std_logic;
SIGNAL \inst7|dt_var_des[4]~6_combout\ : std_logic;
SIGNAL \inst7|Add2~6_combout\ : std_logic;
SIGNAL \inst7|Add2~9\ : std_logic;
SIGNAL \inst7|Add2~10_combout\ : std_logic;
SIGNAL \inst7|dt_var_des[0]~0_combout\ : std_logic;
SIGNAL \inst7|dt_var_des[0]~1_combout\ : std_logic;
SIGNAL \inst7|dt_var_des[0]~2_combout\ : std_logic;
SIGNAL \inst7|dt_var_des[0]~3_combout\ : std_logic;
SIGNAL \inst7|dt_var_des[0]~4_combout\ : std_logic;
SIGNAL \inst7|Equal2~0_combout\ : std_logic;
SIGNAL \inst7|cont[2]~14\ : std_logic;
SIGNAL \inst7|cont[3]~16\ : std_logic;
SIGNAL \inst7|cont[4]~17_combout\ : std_logic;
SIGNAL \inst7|cont[4]~18\ : std_logic;
SIGNAL \inst7|cont[5]~20\ : std_logic;
SIGNAL \inst7|cont[6]~21_combout\ : std_logic;
SIGNAL \inst7|cont[3]~15_combout\ : std_logic;
SIGNAL \inst7|Equal1~0_combout\ : std_logic;
SIGNAL \inst7|Equal1~1_combout\ : std_logic;
SIGNAL \inst7|pwm_old2~0_combout\ : std_logic;
SIGNAL \inst7|pwm_old2~regout\ : std_logic;
SIGNAL \inst7|var1~0_combout\ : std_logic;
SIGNAL \inst7|var1~regout\ : std_logic;
SIGNAL \inst7|cont[2]~7_combout\ : std_logic;
SIGNAL \inst7|cont[2]~10_combout\ : std_logic;
SIGNAL \inst7|cont[1]~12\ : std_logic;
SIGNAL \inst7|cont[2]~13_combout\ : std_logic;
SIGNAL \inst7|Add2~4_combout\ : std_logic;
SIGNAL \inst7|dt_var_des[2]~5_combout\ : std_logic;
SIGNAL \inst7|Equal0~1_combout\ : std_logic;
SIGNAL \inst7|cont[0]~8_combout\ : std_logic;
SIGNAL \inst7|Equal0~0_combout\ : std_logic;
SIGNAL \inst7|Add2~11\ : std_logic;
SIGNAL \inst7|Add2~12_combout\ : std_logic;
SIGNAL \inst7|Equal0~3_combout\ : std_logic;
SIGNAL \inst7|Equal0~4_combout\ : std_logic;
SIGNAL \inst7|pwm_data~0_combout\ : std_logic;
SIGNAL \inst7|pwm_data~1_combout\ : std_logic;
SIGNAL \inst7|pwm_data~regout\ : std_logic;
SIGNAL \inst7|pwm_s1~1_combout\ : std_logic;
SIGNAL \inst7|pwm_s1~0_combout\ : std_logic;
SIGNAL \inst7|pwm_s1~2_combout\ : std_logic;
SIGNAL \inst7|pwm_s1~regout\ : std_logic;
SIGNAL \inst7|pwm_out~0_combout\ : std_logic;
SIGNAL \inst7|dt_var_sub\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \inst7|dt_var_des\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \inst7|contador2\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst7|contador1\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst7|cont2\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst7|cont1\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst7|cont\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \inst7|amostragem\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst3|count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst4|port_comp\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst5|mod_aux\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst4|count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst3|ALT_INV_freq_onehz~clkctrl_outclk\ : std_logic;
SIGNAL \inst|altpll_component|ALT_INV__clk0~clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_key1~combout\ : std_logic;
SIGNAL \ALT_INV_key2~combout\ : std_logic;
SIGNAL \inst7|ALT_INV_pwm_out~0_combout\ : std_logic;

BEGIN

pwm <= ww_pwm;
ww_Clock <= Clock;
ww_switch2 <= switch2;
ww_key2 <= key2;
pwm2 <= ww_pwm2;
ww_switch1 <= switch1;
ww_key1 <= key1;
ww_ativador <= ativador;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst|altpll_component|pll_INCLK_bus\ <= (gnd & \Clock~combout\);

\inst|altpll_component|_clk0\ <= \inst|altpll_component|pll_CLK_bus\(0);
\inst|altpll_component|pll~CLK1\ <= \inst|altpll_component|pll_CLK_bus\(1);
\inst|altpll_component|pll~CLK2\ <= \inst|altpll_component|pll_CLK_bus\(2);

\inst|altpll_component|_clk0~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \inst|altpll_component|_clk0\);

\inst3|freq_onehz~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \inst3|freq_onehz~regout\);
\inst3|ALT_INV_freq_onehz~clkctrl_outclk\ <= NOT \inst3|freq_onehz~clkctrl_outclk\;
\inst|altpll_component|ALT_INV__clk0~clkctrl_outclk\ <= NOT \inst|altpll_component|_clk0~clkctrl_outclk\;
\ALT_INV_key1~combout\ <= NOT \key1~combout\;
\ALT_INV_key2~combout\ <= NOT \key2~combout\;
\inst7|ALT_INV_pwm_out~0_combout\ <= NOT \inst7|pwm_out~0_combout\;

-- Location: LCCOMB_X31_Y19_N16
\inst7|Add10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Add10~0_combout\ = (\inst7|contador1\(0) & ((GND) # (!\inst7|dt_var_sub\(0)))) # (!\inst7|contador1\(0) & (\inst7|dt_var_sub\(0) $ (GND)))
-- \inst7|Add10~1\ = CARRY((\inst7|contador1\(0)) # (!\inst7|dt_var_sub\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|contador1\(0),
	datab => \inst7|dt_var_sub\(0),
	datad => VCC,
	combout => \inst7|Add10~0_combout\,
	cout => \inst7|Add10~1\);

-- Location: LCCOMB_X30_Y19_N18
\inst7|Add11~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Add11~4_combout\ = (\inst7|Add10~4_combout\ & ((GND) # (!\inst7|Add11~3\))) # (!\inst7|Add10~4_combout\ & (\inst7|Add11~3\ $ (GND)))
-- \inst7|Add11~5\ = CARRY((\inst7|Add10~4_combout\) # (!\inst7|Add11~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Add10~4_combout\,
	datad => VCC,
	cin => \inst7|Add11~3\,
	combout => \inst7|Add11~4_combout\,
	cout => \inst7|Add11~5\);

-- Location: LCCOMB_X30_Y19_N20
\inst7|Add11~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Add11~6_combout\ = (\inst7|Add10~6_combout\ & (\inst7|Add11~5\ & VCC)) # (!\inst7|Add10~6_combout\ & (!\inst7|Add11~5\))
-- \inst7|Add11~7\ = CARRY((!\inst7|Add10~6_combout\ & !\inst7|Add11~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Add10~6_combout\,
	datad => VCC,
	cin => \inst7|Add11~5\,
	combout => \inst7|Add11~6_combout\,
	cout => \inst7|Add11~7\);

-- Location: LCCOMB_X31_Y19_N26
\inst7|Add10~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Add10~10_combout\ = (\inst7|contador1\(5) & ((\inst7|dt_var_sub\(5) & (\inst7|Add10~9\ & VCC)) # (!\inst7|dt_var_sub\(5) & (!\inst7|Add10~9\)))) # (!\inst7|contador1\(5) & ((\inst7|dt_var_sub\(5) & (!\inst7|Add10~9\)) # (!\inst7|dt_var_sub\(5) & 
-- ((\inst7|Add10~9\) # (GND)))))
-- \inst7|Add10~11\ = CARRY((\inst7|contador1\(5) & (!\inst7|dt_var_sub\(5) & !\inst7|Add10~9\)) # (!\inst7|contador1\(5) & ((!\inst7|Add10~9\) # (!\inst7|dt_var_sub\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|contador1\(5),
	datab => \inst7|dt_var_sub\(5),
	datad => VCC,
	cin => \inst7|Add10~9\,
	combout => \inst7|Add10~10_combout\,
	cout => \inst7|Add10~11\);

-- Location: LCFF_X25_Y18_N13
\inst7|process_3:cont[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|altpll_component|ALT_INV__clk0~clkctrl_outclk\,
	datain => \inst7|process_3:cont[6]~1_combout\,
	sclr => \inst7|Equal5~11_combout\,
	ena => \inst7|process_3:cont[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|process_3:cont[6]~regout\);

-- Location: LCCOMB_X31_Y18_N0
\inst7|Add10~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Add10~16_combout\ = (\inst7|contador1\(8) & ((GND) # (!\inst7|Add10~15\))) # (!\inst7|contador1\(8) & (\inst7|Add10~15\ $ (GND)))
-- \inst7|Add10~17\ = CARRY((\inst7|contador1\(8)) # (!\inst7|Add10~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|contador1\(8),
	datad => VCC,
	cin => \inst7|Add10~15\,
	combout => \inst7|Add10~16_combout\,
	cout => \inst7|Add10~17\);

-- Location: LCCOMB_X31_Y18_N2
\inst7|Add10~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Add10~18_combout\ = (\inst7|contador1\(9) & (\inst7|Add10~17\ & VCC)) # (!\inst7|contador1\(9) & (!\inst7|Add10~17\))
-- \inst7|Add10~19\ = CARRY((!\inst7|contador1\(9) & !\inst7|Add10~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|contador1\(9),
	datad => VCC,
	cin => \inst7|Add10~17\,
	combout => \inst7|Add10~18_combout\,
	cout => \inst7|Add10~19\);

-- Location: LCCOMB_X31_Y18_N4
\inst7|Add10~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Add10~20_combout\ = (\inst7|contador1\(10) & ((GND) # (!\inst7|Add10~19\))) # (!\inst7|contador1\(10) & (\inst7|Add10~19\ $ (GND)))
-- \inst7|Add10~21\ = CARRY((\inst7|contador1\(10)) # (!\inst7|Add10~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|contador1\(10),
	datad => VCC,
	cin => \inst7|Add10~19\,
	combout => \inst7|Add10~20_combout\,
	cout => \inst7|Add10~21\);

-- Location: LCCOMB_X31_Y18_N6
\inst7|Add10~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Add10~22_combout\ = (\inst7|contador1\(11) & (\inst7|Add10~21\ & VCC)) # (!\inst7|contador1\(11) & (!\inst7|Add10~21\))
-- \inst7|Add10~23\ = CARRY((!\inst7|contador1\(11) & !\inst7|Add10~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|contador1\(11),
	datad => VCC,
	cin => \inst7|Add10~21\,
	combout => \inst7|Add10~22_combout\,
	cout => \inst7|Add10~23\);

-- Location: LCCOMB_X31_Y18_N12
\inst7|Add10~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Add10~28_combout\ = (\inst7|contador1\(14) & ((GND) # (!\inst7|Add10~27\))) # (!\inst7|contador1\(14) & (\inst7|Add10~27\ $ (GND)))
-- \inst7|Add10~29\ = CARRY((\inst7|contador1\(14)) # (!\inst7|Add10~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|contador1\(14),
	datad => VCC,
	cin => \inst7|Add10~27\,
	combout => \inst7|Add10~28_combout\,
	cout => \inst7|Add10~29\);

-- Location: LCCOMB_X31_Y18_N14
\inst7|Add10~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Add10~30_combout\ = (\inst7|contador1\(15) & (\inst7|Add10~29\ & VCC)) # (!\inst7|contador1\(15) & (!\inst7|Add10~29\))
-- \inst7|Add10~31\ = CARRY((!\inst7|contador1\(15) & !\inst7|Add10~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|contador1\(15),
	datad => VCC,
	cin => \inst7|Add10~29\,
	combout => \inst7|Add10~30_combout\,
	cout => \inst7|Add10~31\);

-- Location: LCCOMB_X31_Y18_N16
\inst7|Add10~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Add10~32_combout\ = !\inst7|Add10~31\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst7|Add10~31\,
	combout => \inst7|Add10~32_combout\);

-- Location: LCCOMB_X30_Y18_N6
\inst7|Add11~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Add11~24_combout\ = (\inst7|Add10~24_combout\ & ((GND) # (!\inst7|Add11~23\))) # (!\inst7|Add10~24_combout\ & (\inst7|Add11~23\ $ (GND)))
-- \inst7|Add11~25\ = CARRY((\inst7|Add10~24_combout\) # (!\inst7|Add11~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Add10~24_combout\,
	datad => VCC,
	cin => \inst7|Add11~23\,
	combout => \inst7|Add11~24_combout\,
	cout => \inst7|Add11~25\);

-- Location: LCCOMB_X30_Y18_N8
\inst7|Add11~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Add11~26_combout\ = (\inst7|Add10~26_combout\ & (\inst7|Add11~25\ & VCC)) # (!\inst7|Add10~26_combout\ & (!\inst7|Add11~25\))
-- \inst7|Add11~27\ = CARRY((!\inst7|Add10~26_combout\ & !\inst7|Add11~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Add10~26_combout\,
	datad => VCC,
	cin => \inst7|Add11~25\,
	combout => \inst7|Add11~26_combout\,
	cout => \inst7|Add11~27\);

-- Location: LCCOMB_X30_Y18_N10
\inst7|Add11~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Add11~28_combout\ = (\inst7|Add10~28_combout\ & ((GND) # (!\inst7|Add11~27\))) # (!\inst7|Add10~28_combout\ & (\inst7|Add11~27\ $ (GND)))
-- \inst7|Add11~29\ = CARRY((\inst7|Add10~28_combout\) # (!\inst7|Add11~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Add10~28_combout\,
	datad => VCC,
	cin => \inst7|Add11~27\,
	combout => \inst7|Add11~28_combout\,
	cout => \inst7|Add11~29\);

-- Location: LCCOMB_X30_Y18_N12
\inst7|Add11~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Add11~30_combout\ = (\inst7|Add10~30_combout\ & (\inst7|Add11~29\ & VCC)) # (!\inst7|Add10~30_combout\ & (!\inst7|Add11~29\))
-- \inst7|Add11~31\ = CARRY((!\inst7|Add10~30_combout\ & !\inst7|Add11~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Add10~30_combout\,
	datad => VCC,
	cin => \inst7|Add11~29\,
	combout => \inst7|Add11~30_combout\,
	cout => \inst7|Add11~31\);

-- Location: LCCOMB_X30_Y18_N14
\inst7|Add11~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Add11~32_combout\ = (\inst7|Add10~32_combout\ & (\inst7|Add11~31\ $ (GND))) # (!\inst7|Add10~32_combout\ & ((GND) # (!\inst7|Add11~31\)))
-- \inst7|Add11~33\ = CARRY((!\inst7|Add11~31\) # (!\inst7|Add10~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add10~32_combout\,
	datad => VCC,
	cin => \inst7|Add11~31\,
	combout => \inst7|Add11~32_combout\,
	cout => \inst7|Add11~33\);

-- Location: LCCOMB_X30_Y18_N16
\inst7|Add11~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Add11~34_combout\ = (\inst7|Add10~32_combout\ & (!\inst7|Add11~33\)) # (!\inst7|Add10~32_combout\ & (\inst7|Add11~33\ & VCC))
-- \inst7|Add11~35\ = CARRY((\inst7|Add10~32_combout\ & !\inst7|Add11~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add10~32_combout\,
	datad => VCC,
	cin => \inst7|Add11~33\,
	combout => \inst7|Add11~34_combout\,
	cout => \inst7|Add11~35\);

-- Location: LCCOMB_X30_Y18_N18
\inst7|Add11~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Add11~36_combout\ = \inst7|Add10~32_combout\ $ (!\inst7|Add11~35\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add10~32_combout\,
	cin => \inst7|Add11~35\,
	combout => \inst7|Add11~36_combout\);

-- Location: LCFF_X25_Y18_N17
\inst7|process_3:cont[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|altpll_component|ALT_INV__clk0~clkctrl_outclk\,
	datain => \inst7|process_3:cont[8]~1_combout\,
	sclr => \inst7|Equal5~11_combout\,
	ena => \inst7|process_3:cont[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|process_3:cont[8]~regout\);

-- Location: LCCOMB_X26_Y19_N18
\inst7|Add8~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Add8~2_combout\ = (\inst7|contador2\(1) & ((\inst7|dt_var_sub\(1) & (!\inst7|Add8~1\)) # (!\inst7|dt_var_sub\(1) & (\inst7|Add8~1\ & VCC)))) # (!\inst7|contador2\(1) & ((\inst7|dt_var_sub\(1) & ((\inst7|Add8~1\) # (GND))) # (!\inst7|dt_var_sub\(1) 
-- & (!\inst7|Add8~1\))))
-- \inst7|Add8~3\ = CARRY((\inst7|contador2\(1) & (\inst7|dt_var_sub\(1) & !\inst7|Add8~1\)) # (!\inst7|contador2\(1) & ((\inst7|dt_var_sub\(1)) # (!\inst7|Add8~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|contador2\(1),
	datab => \inst7|dt_var_sub\(1),
	datad => VCC,
	cin => \inst7|Add8~1\,
	combout => \inst7|Add8~2_combout\,
	cout => \inst7|Add8~3\);

-- Location: LCCOMB_X27_Y19_N14
\inst7|Add9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Add9~0_combout\ = \inst7|Add8~0_combout\ $ (VCC)
-- \inst7|Add9~1\ = CARRY(\inst7|Add8~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Add8~0_combout\,
	datad => VCC,
	combout => \inst7|Add9~0_combout\,
	cout => \inst7|Add9~1\);

-- Location: LCCOMB_X27_Y19_N16
\inst7|Add9~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Add9~2_combout\ = (\inst7|Add8~2_combout\ & (\inst7|Add9~1\ & VCC)) # (!\inst7|Add8~2_combout\ & (!\inst7|Add9~1\))
-- \inst7|Add9~3\ = CARRY((!\inst7|Add8~2_combout\ & !\inst7|Add9~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add8~2_combout\,
	datad => VCC,
	cin => \inst7|Add9~1\,
	combout => \inst7|Add9~2_combout\,
	cout => \inst7|Add9~3\);

-- Location: LCCOMB_X26_Y19_N20
\inst7|Add8~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Add8~4_combout\ = ((\inst7|contador2\(2) $ (\inst7|dt_var_sub\(2) $ (!\inst7|Add8~3\)))) # (GND)
-- \inst7|Add8~5\ = CARRY((\inst7|contador2\(2) & ((\inst7|dt_var_sub\(2)) # (!\inst7|Add8~3\))) # (!\inst7|contador2\(2) & (\inst7|dt_var_sub\(2) & !\inst7|Add8~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|contador2\(2),
	datab => \inst7|dt_var_sub\(2),
	datad => VCC,
	cin => \inst7|Add8~3\,
	combout => \inst7|Add8~4_combout\,
	cout => \inst7|Add8~5\);

-- Location: LCCOMB_X27_Y19_N18
\inst7|Add9~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Add9~4_combout\ = (\inst7|Add8~4_combout\ & ((GND) # (!\inst7|Add9~3\))) # (!\inst7|Add8~4_combout\ & (\inst7|Add9~3\ $ (GND)))
-- \inst7|Add9~5\ = CARRY((\inst7|Add8~4_combout\) # (!\inst7|Add9~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add8~4_combout\,
	datad => VCC,
	cin => \inst7|Add9~3\,
	combout => \inst7|Add9~4_combout\,
	cout => \inst7|Add9~5\);

-- Location: LCCOMB_X27_Y19_N20
\inst7|Add9~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Add9~6_combout\ = (\inst7|Add8~6_combout\ & (\inst7|Add9~5\ & VCC)) # (!\inst7|Add8~6_combout\ & (!\inst7|Add9~5\))
-- \inst7|Add9~7\ = CARRY((!\inst7|Add8~6_combout\ & !\inst7|Add9~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Add8~6_combout\,
	datad => VCC,
	cin => \inst7|Add9~5\,
	combout => \inst7|Add9~6_combout\,
	cout => \inst7|Add9~7\);

-- Location: LCCOMB_X27_Y19_N22
\inst7|Add9~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Add9~8_combout\ = (\inst7|Add8~8_combout\ & ((GND) # (!\inst7|Add9~7\))) # (!\inst7|Add8~8_combout\ & (\inst7|Add9~7\ $ (GND)))
-- \inst7|Add9~9\ = CARRY((\inst7|Add8~8_combout\) # (!\inst7|Add9~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Add8~8_combout\,
	datad => VCC,
	cin => \inst7|Add9~7\,
	combout => \inst7|Add9~8_combout\,
	cout => \inst7|Add9~9\);

-- Location: LCCOMB_X27_Y19_N24
\inst7|Add9~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Add9~10_combout\ = (\inst7|Add8~10_combout\ & (\inst7|Add9~9\ & VCC)) # (!\inst7|Add8~10_combout\ & (!\inst7|Add9~9\))
-- \inst7|Add9~11\ = CARRY((!\inst7|Add8~10_combout\ & !\inst7|Add9~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Add8~10_combout\,
	datad => VCC,
	cin => \inst7|Add9~9\,
	combout => \inst7|Add9~10_combout\,
	cout => \inst7|Add9~11\);

-- Location: LCCOMB_X26_Y19_N30
\inst7|Add8~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Add8~14_combout\ = (\inst7|contador2\(7) & (\inst7|Add8~13\ & VCC)) # (!\inst7|contador2\(7) & (!\inst7|Add8~13\))
-- \inst7|Add8~15\ = CARRY((!\inst7|contador2\(7) & !\inst7|Add8~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|contador2\(7),
	datad => VCC,
	cin => \inst7|Add8~13\,
	combout => \inst7|Add8~14_combout\,
	cout => \inst7|Add8~15\);

-- Location: LCCOMB_X27_Y19_N26
\inst7|Add9~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Add9~12_combout\ = (\inst7|Add8~12_combout\ & ((GND) # (!\inst7|Add9~11\))) # (!\inst7|Add8~12_combout\ & (\inst7|Add9~11\ $ (GND)))
-- \inst7|Add9~13\ = CARRY((\inst7|Add8~12_combout\) # (!\inst7|Add9~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Add8~12_combout\,
	datad => VCC,
	cin => \inst7|Add9~11\,
	combout => \inst7|Add9~12_combout\,
	cout => \inst7|Add9~13\);

-- Location: LCCOMB_X27_Y19_N28
\inst7|Add9~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Add9~14_combout\ = (\inst7|Add8~14_combout\ & (\inst7|Add9~13\ & VCC)) # (!\inst7|Add8~14_combout\ & (!\inst7|Add9~13\))
-- \inst7|Add9~15\ = CARRY((!\inst7|Add8~14_combout\ & !\inst7|Add9~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add8~14_combout\,
	datad => VCC,
	cin => \inst7|Add9~13\,
	combout => \inst7|Add9~14_combout\,
	cout => \inst7|Add9~15\);

-- Location: LCCOMB_X26_Y18_N2
\inst7|Add8~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Add8~18_combout\ = (\inst7|contador2\(9) & (\inst7|Add8~17\ & VCC)) # (!\inst7|contador2\(9) & (!\inst7|Add8~17\))
-- \inst7|Add8~19\ = CARRY((!\inst7|contador2\(9) & !\inst7|Add8~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|contador2\(9),
	datad => VCC,
	cin => \inst7|Add8~17\,
	combout => \inst7|Add8~18_combout\,
	cout => \inst7|Add8~19\);

-- Location: LCCOMB_X26_Y18_N8
\inst7|Add8~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Add8~24_combout\ = (\inst7|contador2\(12) & ((GND) # (!\inst7|Add8~23\))) # (!\inst7|contador2\(12) & (\inst7|Add8~23\ $ (GND)))
-- \inst7|Add8~25\ = CARRY((\inst7|contador2\(12)) # (!\inst7|Add8~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|contador2\(12),
	datad => VCC,
	cin => \inst7|Add8~23\,
	combout => \inst7|Add8~24_combout\,
	cout => \inst7|Add8~25\);

-- Location: LCCOMB_X26_Y18_N10
\inst7|Add8~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Add8~26_combout\ = (\inst7|contador2\(13) & (\inst7|Add8~25\ & VCC)) # (!\inst7|contador2\(13) & (!\inst7|Add8~25\))
-- \inst7|Add8~27\ = CARRY((!\inst7|contador2\(13) & !\inst7|Add8~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|contador2\(13),
	datad => VCC,
	cin => \inst7|Add8~25\,
	combout => \inst7|Add8~26_combout\,
	cout => \inst7|Add8~27\);

-- Location: LCCOMB_X26_Y18_N12
\inst7|Add8~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Add8~28_combout\ = (\inst7|contador2\(14) & ((GND) # (!\inst7|Add8~27\))) # (!\inst7|contador2\(14) & (\inst7|Add8~27\ $ (GND)))
-- \inst7|Add8~29\ = CARRY((\inst7|contador2\(14)) # (!\inst7|Add8~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|contador2\(14),
	datad => VCC,
	cin => \inst7|Add8~27\,
	combout => \inst7|Add8~28_combout\,
	cout => \inst7|Add8~29\);

-- Location: LCCOMB_X26_Y18_N14
\inst7|Add8~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Add8~30_combout\ = (\inst7|contador2\(15) & (\inst7|Add8~29\ & VCC)) # (!\inst7|contador2\(15) & (!\inst7|Add8~29\))
-- \inst7|Add8~31\ = CARRY((!\inst7|contador2\(15) & !\inst7|Add8~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|contador2\(15),
	datad => VCC,
	cin => \inst7|Add8~29\,
	combout => \inst7|Add8~30_combout\,
	cout => \inst7|Add8~31\);

-- Location: LCCOMB_X27_Y19_N30
\inst7|Add9~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Add9~16_combout\ = (\inst7|Add8~16_combout\ & ((GND) # (!\inst7|Add9~15\))) # (!\inst7|Add8~16_combout\ & (\inst7|Add9~15\ $ (GND)))
-- \inst7|Add9~17\ = CARRY((\inst7|Add8~16_combout\) # (!\inst7|Add9~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Add8~16_combout\,
	datad => VCC,
	cin => \inst7|Add9~15\,
	combout => \inst7|Add9~16_combout\,
	cout => \inst7|Add9~17\);

-- Location: LCCOMB_X27_Y18_N0
\inst7|Add9~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Add9~18_combout\ = (\inst7|Add8~18_combout\ & (\inst7|Add9~17\ & VCC)) # (!\inst7|Add8~18_combout\ & (!\inst7|Add9~17\))
-- \inst7|Add9~19\ = CARRY((!\inst7|Add8~18_combout\ & !\inst7|Add9~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add8~18_combout\,
	datad => VCC,
	cin => \inst7|Add9~17\,
	combout => \inst7|Add9~18_combout\,
	cout => \inst7|Add9~19\);

-- Location: LCCOMB_X27_Y18_N10
\inst7|Add9~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Add9~28_combout\ = (\inst7|Add8~28_combout\ & ((GND) # (!\inst7|Add9~27\))) # (!\inst7|Add8~28_combout\ & (\inst7|Add9~27\ $ (GND)))
-- \inst7|Add9~29\ = CARRY((\inst7|Add8~28_combout\) # (!\inst7|Add9~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add8~28_combout\,
	datad => VCC,
	cin => \inst7|Add9~27\,
	combout => \inst7|Add9~28_combout\,
	cout => \inst7|Add9~29\);

-- Location: PLL_1
\inst|altpll_component|pll\ : cycloneii_pll
-- pragma translate_off
GENERIC MAP (
	bandwidth => 0,
	bandwidth_type => "low",
	c0_high => 5,
	c0_initial => 1,
	c0_low => 5,
	c0_mode => "even",
	c0_ph => 0,
	c1_mode => "bypass",
	c1_ph => 0,
	c2_mode => "bypass",
	c2_ph => 0,
	charge_pump_current => 80,
	clk0_counter => "c0",
	clk0_divide_by => 5,
	clk0_duty_cycle => 50,
	clk0_multiply_by => 8,
	clk0_phase_shift => "0",
	clk1_duty_cycle => 50,
	clk1_phase_shift => "0",
	clk2_duty_cycle => 50,
	clk2_phase_shift => "0",
	compensate_clock => "clk0",
	gate_lock_counter => 0,
	gate_lock_signal => "no",
	inclk0_input_frequency => 20000,
	inclk1_input_frequency => 20000,
	invalid_lock_multiplier => 5,
	loop_filter_c => 3,
	loop_filter_r => " 2.500000",
	m => 16,
	m_initial => 1,
	m_ph => 0,
	n => 1,
	operation_mode => "normal",
	pfd_max => 100000,
	pfd_min => 2484,
	pll_compensation_delay => 4185,
	self_reset_on_gated_loss_lock => "off",
	sim_gate_lock_device_behavior => "off",
	simulation_type => "timing",
	valid_lock_multiplier => 1,
	vco_center => 1333,
	vco_max => 2000,
	vco_min => 1000)
-- pragma translate_on
PORT MAP (
	inclk => \inst|altpll_component|pll_INCLK_bus\,
	clk => \inst|altpll_component|pll_CLK_bus\);

-- Location: LCFF_X44_Y13_N11
\inst7|cont[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|altpll_component|ALT_INV__clk0~clkctrl_outclk\,
	datain => \inst7|cont[5]~19_combout\,
	sclr => \inst7|Equal0~4_combout\,
	ena => \inst7|cont[2]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|cont\(5));

-- Location: LCCOMB_X22_Y20_N24
\inst4|Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Add0~24_combout\ = (\inst4|count\(12) & (\inst4|Add0~23\ $ (GND))) # (!\inst4|count\(12) & (!\inst4|Add0~23\ & VCC))
-- \inst4|Add0~25\ = CARRY((\inst4|count\(12) & !\inst4|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|count\(12),
	datad => VCC,
	cin => \inst4|Add0~23\,
	combout => \inst4|Add0~24_combout\,
	cout => \inst4|Add0~25\);

-- Location: LCCOMB_X22_Y19_N10
\inst4|Add0~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Add0~42_combout\ = (\inst4|count\(21) & (!\inst4|Add0~41\)) # (!\inst4|count\(21) & ((\inst4|Add0~41\) # (GND)))
-- \inst4|Add0~43\ = CARRY((!\inst4|Add0~41\) # (!\inst4|count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|count\(21),
	datad => VCC,
	cin => \inst4|Add0~41\,
	combout => \inst4|Add0~42_combout\,
	cout => \inst4|Add0~43\);

-- Location: LCCOMB_X22_Y19_N12
\inst4|Add0~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Add0~44_combout\ = (\inst4|count\(22) & (\inst4|Add0~43\ $ (GND))) # (!\inst4|count\(22) & (!\inst4|Add0~43\ & VCC))
-- \inst4|Add0~45\ = CARRY((\inst4|count\(22) & !\inst4|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|count\(22),
	datad => VCC,
	cin => \inst4|Add0~43\,
	combout => \inst4|Add0~44_combout\,
	cout => \inst4|Add0~45\);

-- Location: LCCOMB_X22_Y19_N20
\inst4|Add0~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Add0~52_combout\ = (\inst4|count\(26) & (\inst4|Add0~51\ $ (GND))) # (!\inst4|count\(26) & (!\inst4|Add0~51\ & VCC))
-- \inst4|Add0~53\ = CARRY((\inst4|count\(26) & !\inst4|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|count\(26),
	datad => VCC,
	cin => \inst4|Add0~51\,
	combout => \inst4|Add0~52_combout\,
	cout => \inst4|Add0~53\);

-- Location: LCCOMB_X22_Y19_N28
\inst4|Add0~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Add0~60_combout\ = (\inst4|count\(30) & (\inst4|Add0~59\ $ (GND))) # (!\inst4|count\(30) & (!\inst4|Add0~59\ & VCC))
-- \inst4|Add0~61\ = CARRY((\inst4|count\(30) & !\inst4|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|count\(30),
	datad => VCC,
	cin => \inst4|Add0~59\,
	combout => \inst4|Add0~60_combout\,
	cout => \inst4|Add0~61\);

-- Location: LCCOMB_X22_Y19_N30
\inst4|Add0~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Add0~62_combout\ = \inst4|Add0~61\ $ (\inst4|count\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst4|count\(31),
	cin => \inst4|Add0~61\,
	combout => \inst4|Add0~62_combout\);

-- Location: LCCOMB_X26_Y19_N6
\inst7|Add3~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Add3~6_combout\ = (\inst7|dt_var_sub\(3) & ((\switch1~combout\ & ((\inst7|Add3~5\) # (GND))) # (!\switch1~combout\ & (!\inst7|Add3~5\)))) # (!\inst7|dt_var_sub\(3) & ((\switch1~combout\ & (!\inst7|Add3~5\)) # (!\switch1~combout\ & (\inst7|Add3~5\ & 
-- VCC))))
-- \inst7|Add3~7\ = CARRY((\inst7|dt_var_sub\(3) & ((\switch1~combout\) # (!\inst7|Add3~5\))) # (!\inst7|dt_var_sub\(3) & (\switch1~combout\ & !\inst7|Add3~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|dt_var_sub\(3),
	datab => \switch1~combout\,
	datad => VCC,
	cin => \inst7|Add3~5\,
	combout => \inst7|Add3~6_combout\,
	cout => \inst7|Add3~7\);

-- Location: LCFF_X29_Y19_N11
\inst7|cont1[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|altpll_component|ALT_INV__clk0~clkctrl_outclk\,
	datain => \inst7|cont1[5]~29_combout\,
	sclr => \inst7|cont1[13]~20_combout\,
	ena => \inst7|cont1[6]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|cont1\(5));

-- Location: LCCOMB_X25_Y18_N12
\inst7|process_3:cont[6]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|process_3:cont[6]~1_combout\ = (\inst7|process_3:cont[6]~regout\ & (\inst7|process_3:cont[5]~9\ $ (GND))) # (!\inst7|process_3:cont[6]~regout\ & (!\inst7|process_3:cont[5]~9\ & VCC))
-- \inst7|process_3:cont[6]~2\ = CARRY((\inst7|process_3:cont[6]~regout\ & !\inst7|process_3:cont[5]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|process_3:cont[6]~regout\,
	datad => VCC,
	cin => \inst7|process_3:cont[5]~9\,
	combout => \inst7|process_3:cont[6]~1_combout\,
	cout => \inst7|process_3:cont[6]~2\);

-- Location: LCFF_X29_Y19_N31
\inst7|cont1[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|altpll_component|ALT_INV__clk0~clkctrl_outclk\,
	datain => \inst7|cont1[15]~49_combout\,
	sclr => \inst7|cont1[13]~20_combout\,
	ena => \inst7|cont1[6]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|cont1\(15));

-- Location: LCFF_X29_Y19_N29
\inst7|cont1[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|altpll_component|ALT_INV__clk0~clkctrl_outclk\,
	datain => \inst7|cont1[14]~47_combout\,
	sclr => \inst7|cont1[13]~20_combout\,
	ena => \inst7|cont1[6]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|cont1\(14));

-- Location: LCFF_X29_Y19_N27
\inst7|cont1[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|altpll_component|ALT_INV__clk0~clkctrl_outclk\,
	datain => \inst7|cont1[13]~45_combout\,
	sclr => \inst7|cont1[13]~20_combout\,
	ena => \inst7|cont1[6]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|cont1\(13));

-- Location: LCCOMB_X25_Y18_N16
\inst7|process_3:cont[8]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|process_3:cont[8]~1_combout\ = (\inst7|process_3:cont[8]~regout\ & (\inst7|process_3:cont[7]~2\ $ (GND))) # (!\inst7|process_3:cont[8]~regout\ & (!\inst7|process_3:cont[7]~2\ & VCC))
-- \inst7|process_3:cont[8]~2\ = CARRY((\inst7|process_3:cont[8]~regout\ & !\inst7|process_3:cont[7]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|process_3:cont[8]~regout\,
	datad => VCC,
	cin => \inst7|process_3:cont[7]~2\,
	combout => \inst7|process_3:cont[8]~1_combout\,
	cout => \inst7|process_3:cont[8]~2\);

-- Location: LCCOMB_X44_Y13_N10
\inst7|cont[5]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|cont[5]~19_combout\ = (\inst7|cont\(5) & (!\inst7|cont[4]~18\)) # (!\inst7|cont\(5) & ((\inst7|cont[4]~18\) # (GND)))
-- \inst7|cont[5]~20\ = CARRY((!\inst7|cont[4]~18\) # (!\inst7|cont\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|cont\(5),
	datad => VCC,
	cin => \inst7|cont[4]~18\,
	combout => \inst7|cont[5]~19_combout\,
	cout => \inst7|cont[5]~20\);

-- Location: LCCOMB_X48_Y17_N0
\inst3|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add0~0_combout\ = \inst3|count\(0) $ (VCC)
-- \inst3|Add0~1\ = CARRY(\inst3|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|count\(0),
	datad => VCC,
	combout => \inst3|Add0~0_combout\,
	cout => \inst3|Add0~1\);

-- Location: LCCOMB_X48_Y17_N2
\inst3|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add0~2_combout\ = (\inst3|count\(1) & (!\inst3|Add0~1\)) # (!\inst3|count\(1) & ((\inst3|Add0~1\) # (GND)))
-- \inst3|Add0~3\ = CARRY((!\inst3|Add0~1\) # (!\inst3|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|count\(1),
	datad => VCC,
	cin => \inst3|Add0~1\,
	combout => \inst3|Add0~2_combout\,
	cout => \inst3|Add0~3\);

-- Location: LCCOMB_X48_Y17_N4
\inst3|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add0~4_combout\ = (\inst3|count\(2) & (\inst3|Add0~3\ $ (GND))) # (!\inst3|count\(2) & (!\inst3|Add0~3\ & VCC))
-- \inst3|Add0~5\ = CARRY((\inst3|count\(2) & !\inst3|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|count\(2),
	datad => VCC,
	cin => \inst3|Add0~3\,
	combout => \inst3|Add0~4_combout\,
	cout => \inst3|Add0~5\);

-- Location: LCCOMB_X48_Y17_N6
\inst3|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add0~6_combout\ = (\inst3|count\(3) & (!\inst3|Add0~5\)) # (!\inst3|count\(3) & ((\inst3|Add0~5\) # (GND)))
-- \inst3|Add0~7\ = CARRY((!\inst3|Add0~5\) # (!\inst3|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|count\(3),
	datad => VCC,
	cin => \inst3|Add0~5\,
	combout => \inst3|Add0~6_combout\,
	cout => \inst3|Add0~7\);

-- Location: LCCOMB_X48_Y17_N8
\inst3|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add0~8_combout\ = (\inst3|count\(4) & (\inst3|Add0~7\ $ (GND))) # (!\inst3|count\(4) & (!\inst3|Add0~7\ & VCC))
-- \inst3|Add0~9\ = CARRY((\inst3|count\(4) & !\inst3|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|count\(4),
	datad => VCC,
	cin => \inst3|Add0~7\,
	combout => \inst3|Add0~8_combout\,
	cout => \inst3|Add0~9\);

-- Location: LCCOMB_X48_Y17_N10
\inst3|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add0~10_combout\ = (\inst3|count\(5) & (!\inst3|Add0~9\)) # (!\inst3|count\(5) & ((\inst3|Add0~9\) # (GND)))
-- \inst3|Add0~11\ = CARRY((!\inst3|Add0~9\) # (!\inst3|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|count\(5),
	datad => VCC,
	cin => \inst3|Add0~9\,
	combout => \inst3|Add0~10_combout\,
	cout => \inst3|Add0~11\);

-- Location: LCCOMB_X48_Y17_N12
\inst3|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add0~12_combout\ = (\inst3|count\(6) & (\inst3|Add0~11\ $ (GND))) # (!\inst3|count\(6) & (!\inst3|Add0~11\ & VCC))
-- \inst3|Add0~13\ = CARRY((\inst3|count\(6) & !\inst3|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|count\(6),
	datad => VCC,
	cin => \inst3|Add0~11\,
	combout => \inst3|Add0~12_combout\,
	cout => \inst3|Add0~13\);

-- Location: LCCOMB_X48_Y17_N14
\inst3|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add0~14_combout\ = (\inst3|count\(7) & (!\inst3|Add0~13\)) # (!\inst3|count\(7) & ((\inst3|Add0~13\) # (GND)))
-- \inst3|Add0~15\ = CARRY((!\inst3|Add0~13\) # (!\inst3|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|count\(7),
	datad => VCC,
	cin => \inst3|Add0~13\,
	combout => \inst3|Add0~14_combout\,
	cout => \inst3|Add0~15\);

-- Location: LCCOMB_X48_Y17_N16
\inst3|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add0~16_combout\ = (\inst3|count\(8) & (\inst3|Add0~15\ $ (GND))) # (!\inst3|count\(8) & (!\inst3|Add0~15\ & VCC))
-- \inst3|Add0~17\ = CARRY((\inst3|count\(8) & !\inst3|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|count\(8),
	datad => VCC,
	cin => \inst3|Add0~15\,
	combout => \inst3|Add0~16_combout\,
	cout => \inst3|Add0~17\);

-- Location: LCCOMB_X48_Y17_N18
\inst3|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add0~18_combout\ = (\inst3|count\(9) & (!\inst3|Add0~17\)) # (!\inst3|count\(9) & ((\inst3|Add0~17\) # (GND)))
-- \inst3|Add0~19\ = CARRY((!\inst3|Add0~17\) # (!\inst3|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|count\(9),
	datad => VCC,
	cin => \inst3|Add0~17\,
	combout => \inst3|Add0~18_combout\,
	cout => \inst3|Add0~19\);

-- Location: LCCOMB_X48_Y17_N20
\inst3|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add0~20_combout\ = (\inst3|count\(10) & (\inst3|Add0~19\ $ (GND))) # (!\inst3|count\(10) & (!\inst3|Add0~19\ & VCC))
-- \inst3|Add0~21\ = CARRY((\inst3|count\(10) & !\inst3|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|count\(10),
	datad => VCC,
	cin => \inst3|Add0~19\,
	combout => \inst3|Add0~20_combout\,
	cout => \inst3|Add0~21\);

-- Location: LCCOMB_X48_Y17_N22
\inst3|Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add0~22_combout\ = (\inst3|count\(11) & (!\inst3|Add0~21\)) # (!\inst3|count\(11) & ((\inst3|Add0~21\) # (GND)))
-- \inst3|Add0~23\ = CARRY((!\inst3|Add0~21\) # (!\inst3|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|count\(11),
	datad => VCC,
	cin => \inst3|Add0~21\,
	combout => \inst3|Add0~22_combout\,
	cout => \inst3|Add0~23\);

-- Location: LCCOMB_X48_Y17_N24
\inst3|Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add0~24_combout\ = (\inst3|count\(12) & (\inst3|Add0~23\ $ (GND))) # (!\inst3|count\(12) & (!\inst3|Add0~23\ & VCC))
-- \inst3|Add0~25\ = CARRY((\inst3|count\(12) & !\inst3|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|count\(12),
	datad => VCC,
	cin => \inst3|Add0~23\,
	combout => \inst3|Add0~24_combout\,
	cout => \inst3|Add0~25\);

-- Location: LCCOMB_X48_Y17_N26
\inst3|Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add0~26_combout\ = (\inst3|count\(13) & (!\inst3|Add0~25\)) # (!\inst3|count\(13) & ((\inst3|Add0~25\) # (GND)))
-- \inst3|Add0~27\ = CARRY((!\inst3|Add0~25\) # (!\inst3|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|count\(13),
	datad => VCC,
	cin => \inst3|Add0~25\,
	combout => \inst3|Add0~26_combout\,
	cout => \inst3|Add0~27\);

-- Location: LCCOMB_X48_Y17_N28
\inst3|Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add0~28_combout\ = (\inst3|count\(14) & (\inst3|Add0~27\ $ (GND))) # (!\inst3|count\(14) & (!\inst3|Add0~27\ & VCC))
-- \inst3|Add0~29\ = CARRY((\inst3|count\(14) & !\inst3|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|count\(14),
	datad => VCC,
	cin => \inst3|Add0~27\,
	combout => \inst3|Add0~28_combout\,
	cout => \inst3|Add0~29\);

-- Location: LCCOMB_X48_Y17_N30
\inst3|Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add0~30_combout\ = (\inst3|count\(15) & (!\inst3|Add0~29\)) # (!\inst3|count\(15) & ((\inst3|Add0~29\) # (GND)))
-- \inst3|Add0~31\ = CARRY((!\inst3|Add0~29\) # (!\inst3|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|count\(15),
	datad => VCC,
	cin => \inst3|Add0~29\,
	combout => \inst3|Add0~30_combout\,
	cout => \inst3|Add0~31\);

-- Location: LCCOMB_X48_Y16_N0
\inst3|Add0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add0~32_combout\ = (\inst3|count\(16) & (\inst3|Add0~31\ $ (GND))) # (!\inst3|count\(16) & (!\inst3|Add0~31\ & VCC))
-- \inst3|Add0~33\ = CARRY((\inst3|count\(16) & !\inst3|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|count\(16),
	datad => VCC,
	cin => \inst3|Add0~31\,
	combout => \inst3|Add0~32_combout\,
	cout => \inst3|Add0~33\);

-- Location: LCCOMB_X48_Y16_N2
\inst3|Add0~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add0~34_combout\ = (\inst3|count\(17) & (!\inst3|Add0~33\)) # (!\inst3|count\(17) & ((\inst3|Add0~33\) # (GND)))
-- \inst3|Add0~35\ = CARRY((!\inst3|Add0~33\) # (!\inst3|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|count\(17),
	datad => VCC,
	cin => \inst3|Add0~33\,
	combout => \inst3|Add0~34_combout\,
	cout => \inst3|Add0~35\);

-- Location: LCCOMB_X48_Y16_N4
\inst3|Add0~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add0~36_combout\ = (\inst3|count\(18) & (\inst3|Add0~35\ $ (GND))) # (!\inst3|count\(18) & (!\inst3|Add0~35\ & VCC))
-- \inst3|Add0~37\ = CARRY((\inst3|count\(18) & !\inst3|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|count\(18),
	datad => VCC,
	cin => \inst3|Add0~35\,
	combout => \inst3|Add0~36_combout\,
	cout => \inst3|Add0~37\);

-- Location: LCCOMB_X48_Y16_N6
\inst3|Add0~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add0~38_combout\ = (\inst3|count\(19) & (!\inst3|Add0~37\)) # (!\inst3|count\(19) & ((\inst3|Add0~37\) # (GND)))
-- \inst3|Add0~39\ = CARRY((!\inst3|Add0~37\) # (!\inst3|count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|count\(19),
	datad => VCC,
	cin => \inst3|Add0~37\,
	combout => \inst3|Add0~38_combout\,
	cout => \inst3|Add0~39\);

-- Location: LCCOMB_X48_Y16_N8
\inst3|Add0~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add0~40_combout\ = (\inst3|count\(20) & (\inst3|Add0~39\ $ (GND))) # (!\inst3|count\(20) & (!\inst3|Add0~39\ & VCC))
-- \inst3|Add0~41\ = CARRY((\inst3|count\(20) & !\inst3|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|count\(20),
	datad => VCC,
	cin => \inst3|Add0~39\,
	combout => \inst3|Add0~40_combout\,
	cout => \inst3|Add0~41\);

-- Location: LCCOMB_X48_Y16_N10
\inst3|Add0~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add0~42_combout\ = (\inst3|count\(21) & (!\inst3|Add0~41\)) # (!\inst3|count\(21) & ((\inst3|Add0~41\) # (GND)))
-- \inst3|Add0~43\ = CARRY((!\inst3|Add0~41\) # (!\inst3|count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|count\(21),
	datad => VCC,
	cin => \inst3|Add0~41\,
	combout => \inst3|Add0~42_combout\,
	cout => \inst3|Add0~43\);

-- Location: LCCOMB_X48_Y16_N12
\inst3|Add0~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add0~44_combout\ = (\inst3|count\(22) & (\inst3|Add0~43\ $ (GND))) # (!\inst3|count\(22) & (!\inst3|Add0~43\ & VCC))
-- \inst3|Add0~45\ = CARRY((\inst3|count\(22) & !\inst3|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|count\(22),
	datad => VCC,
	cin => \inst3|Add0~43\,
	combout => \inst3|Add0~44_combout\,
	cout => \inst3|Add0~45\);

-- Location: LCCOMB_X48_Y16_N14
\inst3|Add0~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add0~46_combout\ = (\inst3|count\(23) & (!\inst3|Add0~45\)) # (!\inst3|count\(23) & ((\inst3|Add0~45\) # (GND)))
-- \inst3|Add0~47\ = CARRY((!\inst3|Add0~45\) # (!\inst3|count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|count\(23),
	datad => VCC,
	cin => \inst3|Add0~45\,
	combout => \inst3|Add0~46_combout\,
	cout => \inst3|Add0~47\);

-- Location: LCCOMB_X48_Y16_N16
\inst3|Add0~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add0~48_combout\ = (\inst3|count\(24) & (\inst3|Add0~47\ $ (GND))) # (!\inst3|count\(24) & (!\inst3|Add0~47\ & VCC))
-- \inst3|Add0~49\ = CARRY((\inst3|count\(24) & !\inst3|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|count\(24),
	datad => VCC,
	cin => \inst3|Add0~47\,
	combout => \inst3|Add0~48_combout\,
	cout => \inst3|Add0~49\);

-- Location: LCCOMB_X48_Y16_N18
\inst3|Add0~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add0~50_combout\ = (\inst3|count\(25) & (!\inst3|Add0~49\)) # (!\inst3|count\(25) & ((\inst3|Add0~49\) # (GND)))
-- \inst3|Add0~51\ = CARRY((!\inst3|Add0~49\) # (!\inst3|count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|count\(25),
	datad => VCC,
	cin => \inst3|Add0~49\,
	combout => \inst3|Add0~50_combout\,
	cout => \inst3|Add0~51\);

-- Location: LCCOMB_X48_Y16_N20
\inst3|Add0~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add0~52_combout\ = (\inst3|count\(26) & (\inst3|Add0~51\ $ (GND))) # (!\inst3|count\(26) & (!\inst3|Add0~51\ & VCC))
-- \inst3|Add0~53\ = CARRY((\inst3|count\(26) & !\inst3|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|count\(26),
	datad => VCC,
	cin => \inst3|Add0~51\,
	combout => \inst3|Add0~52_combout\,
	cout => \inst3|Add0~53\);

-- Location: LCCOMB_X48_Y16_N22
\inst3|Add0~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add0~54_combout\ = (\inst3|count\(27) & (!\inst3|Add0~53\)) # (!\inst3|count\(27) & ((\inst3|Add0~53\) # (GND)))
-- \inst3|Add0~55\ = CARRY((!\inst3|Add0~53\) # (!\inst3|count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|count\(27),
	datad => VCC,
	cin => \inst3|Add0~53\,
	combout => \inst3|Add0~54_combout\,
	cout => \inst3|Add0~55\);

-- Location: LCCOMB_X48_Y16_N24
\inst3|Add0~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add0~56_combout\ = (\inst3|count\(28) & (\inst3|Add0~55\ $ (GND))) # (!\inst3|count\(28) & (!\inst3|Add0~55\ & VCC))
-- \inst3|Add0~57\ = CARRY((\inst3|count\(28) & !\inst3|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|count\(28),
	datad => VCC,
	cin => \inst3|Add0~55\,
	combout => \inst3|Add0~56_combout\,
	cout => \inst3|Add0~57\);

-- Location: LCCOMB_X48_Y16_N26
\inst3|Add0~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add0~58_combout\ = (\inst3|count\(29) & (!\inst3|Add0~57\)) # (!\inst3|count\(29) & ((\inst3|Add0~57\) # (GND)))
-- \inst3|Add0~59\ = CARRY((!\inst3|Add0~57\) # (!\inst3|count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|count\(29),
	datad => VCC,
	cin => \inst3|Add0~57\,
	combout => \inst3|Add0~58_combout\,
	cout => \inst3|Add0~59\);

-- Location: LCCOMB_X48_Y16_N28
\inst3|Add0~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add0~60_combout\ = (\inst3|count\(30) & (\inst3|Add0~59\ $ (GND))) # (!\inst3|count\(30) & (!\inst3|Add0~59\ & VCC))
-- \inst3|Add0~61\ = CARRY((\inst3|count\(30) & !\inst3|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|count\(30),
	datad => VCC,
	cin => \inst3|Add0~59\,
	combout => \inst3|Add0~60_combout\,
	cout => \inst3|Add0~61\);

-- Location: LCCOMB_X48_Y16_N30
\inst3|Add0~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add0~62_combout\ = \inst3|Add0~61\ $ (\inst3|count\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst3|count\(31),
	cin => \inst3|Add0~61\,
	combout => \inst3|Add0~62_combout\);

-- Location: LCCOMB_X29_Y19_N10
\inst7|cont1[5]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|cont1[5]~29_combout\ = (\inst7|cont1\(5) & (!\inst7|cont1[4]~28\)) # (!\inst7|cont1\(5) & ((\inst7|cont1[4]~28\) # (GND)))
-- \inst7|cont1[5]~30\ = CARRY((!\inst7|cont1[4]~28\) # (!\inst7|cont1\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|cont1\(5),
	datad => VCC,
	cin => \inst7|cont1[4]~28\,
	combout => \inst7|cont1[5]~29_combout\,
	cout => \inst7|cont1[5]~30\);

-- Location: LCCOMB_X29_Y19_N24
\inst7|cont1[12]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|cont1[12]~43_combout\ = (\inst7|cont1\(12) & (\inst7|cont1[11]~42\ $ (GND))) # (!\inst7|cont1\(12) & (!\inst7|cont1[11]~42\ & VCC))
-- \inst7|cont1[12]~44\ = CARRY((\inst7|cont1\(12) & !\inst7|cont1[11]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|cont1\(12),
	datad => VCC,
	cin => \inst7|cont1[11]~42\,
	combout => \inst7|cont1[12]~43_combout\,
	cout => \inst7|cont1[12]~44\);

-- Location: LCCOMB_X29_Y19_N26
\inst7|cont1[13]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|cont1[13]~45_combout\ = (\inst7|cont1\(13) & (!\inst7|cont1[12]~44\)) # (!\inst7|cont1\(13) & ((\inst7|cont1[12]~44\) # (GND)))
-- \inst7|cont1[13]~46\ = CARRY((!\inst7|cont1[12]~44\) # (!\inst7|cont1\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|cont1\(13),
	datad => VCC,
	cin => \inst7|cont1[12]~44\,
	combout => \inst7|cont1[13]~45_combout\,
	cout => \inst7|cont1[13]~46\);

-- Location: LCCOMB_X29_Y19_N28
\inst7|cont1[14]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|cont1[14]~47_combout\ = (\inst7|cont1\(14) & (\inst7|cont1[13]~46\ $ (GND))) # (!\inst7|cont1\(14) & (!\inst7|cont1[13]~46\ & VCC))
-- \inst7|cont1[14]~48\ = CARRY((\inst7|cont1\(14) & !\inst7|cont1[13]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|cont1\(14),
	datad => VCC,
	cin => \inst7|cont1[13]~46\,
	combout => \inst7|cont1[14]~47_combout\,
	cout => \inst7|cont1[14]~48\);

-- Location: LCCOMB_X29_Y19_N30
\inst7|cont1[15]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|cont1[15]~49_combout\ = \inst7|cont1[14]~48\ $ (\inst7|cont1\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst7|cont1\(15),
	cin => \inst7|cont1[14]~48\,
	combout => \inst7|cont1[15]~49_combout\);

-- Location: LCFF_X24_Y19_N21
\inst4|port_comp[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|ALT_INV_freq_onehz~clkctrl_outclk\,
	datain => \inst4|port_comp[6]~1_combout\,
	ena => \inst4|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|port_comp\(6));

-- Location: LCFF_X24_Y19_N25
\inst4|port_comp[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|ALT_INV_freq_onehz~clkctrl_outclk\,
	sdata => \inst4|port_comp[4]~3_combout\,
	sload => VCC,
	ena => \inst4|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|port_comp\(4));

-- Location: LCFF_X49_Y14_N7
\inst3|freq_onehz\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|altpll_component|ALT_INV__clk0~clkctrl_outclk\,
	datain => \inst3|freq_onehz~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|freq_onehz~regout\);

-- Location: LCFF_X22_Y20_N25
\inst4|count[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|ALT_INV_freq_onehz~clkctrl_outclk\,
	datain => \inst4|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|count\(12));

-- Location: LCCOMB_X23_Y20_N16
\inst4|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Equal0~3_combout\ = (!\inst4|count\(15) & (!\inst4|count\(12) & (!\inst4|count\(13) & !\inst4|count\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|count\(15),
	datab => \inst4|count\(12),
	datac => \inst4|count\(13),
	datad => \inst4|count\(14),
	combout => \inst4|Equal0~3_combout\);

-- Location: LCFF_X22_Y19_N11
\inst4|count[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|ALT_INV_freq_onehz~clkctrl_outclk\,
	datain => \inst4|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|count\(21));

-- Location: LCFF_X22_Y19_N13
\inst4|count[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|ALT_INV_freq_onehz~clkctrl_outclk\,
	datain => \inst4|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|count\(22));

-- Location: LCCOMB_X23_Y19_N24
\inst4|Equal0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Equal0~6_combout\ = (!\inst4|count\(23) & (!\inst4|count\(20) & (!\inst4|count\(21) & !\inst4|count\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|count\(23),
	datab => \inst4|count\(20),
	datac => \inst4|count\(21),
	datad => \inst4|count\(22),
	combout => \inst4|Equal0~6_combout\);

-- Location: LCFF_X22_Y19_N21
\inst4|count[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|ALT_INV_freq_onehz~clkctrl_outclk\,
	datain => \inst4|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|count\(26));

-- Location: LCFF_X22_Y19_N31
\inst4|count[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|ALT_INV_freq_onehz~clkctrl_outclk\,
	datain => \inst4|Add0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|count\(31));

-- Location: LCFF_X31_Y19_N17
\inst7|contador1[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|altpll_component|ALT_INV__clk0~clkctrl_outclk\,
	sdata => \inst7|cont1\(0),
	sload => VCC,
	ena => \inst7|contador1[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|contador1\(0));

-- Location: LCFF_X31_Y19_N13
\inst7|dt_var_sub[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_key1~combout\,
	datain => \inst7|dt_var_sub[3]~4_combout\,
	ena => \inst7|dt_var_sub[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|dt_var_sub\(3));

-- Location: LCFF_X31_Y19_N21
\inst7|contador1[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|altpll_component|ALT_INV__clk0~clkctrl_outclk\,
	sdata => \inst7|cont1\(2),
	sload => VCC,
	ena => \inst7|contador1[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|contador1\(2));

-- Location: LCCOMB_X30_Y19_N6
\inst7|Equal6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Equal6~1_combout\ = (\inst7|process_3:cont[2]~regout\ & (\inst7|Add11~4_combout\ & (\inst7|process_3:cont[3]~regout\ $ (!\inst7|Add11~6_combout\)))) # (!\inst7|process_3:cont[2]~regout\ & (!\inst7|Add11~4_combout\ & 
-- (\inst7|process_3:cont[3]~regout\ $ (!\inst7|Add11~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|process_3:cont[2]~regout\,
	datab => \inst7|process_3:cont[3]~regout\,
	datac => \inst7|Add11~6_combout\,
	datad => \inst7|Add11~4_combout\,
	combout => \inst7|Equal6~1_combout\);

-- Location: LCFF_X31_Y19_N27
\inst7|contador1[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|altpll_component|ALT_INV__clk0~clkctrl_outclk\,
	sdata => \inst7|cont1\(5),
	sload => VCC,
	ena => \inst7|contador1[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|contador1\(5));

-- Location: LCFF_X31_Y19_N25
\inst7|contador1[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|altpll_component|ALT_INV__clk0~clkctrl_outclk\,
	sdata => \inst7|cont1\(4),
	sload => VCC,
	ena => \inst7|contador1[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|contador1\(4));

-- Location: LCFF_X31_Y18_N15
\inst7|contador1[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|altpll_component|ALT_INV__clk0~clkctrl_outclk\,
	sdata => \inst7|cont1\(15),
	sload => VCC,
	ena => \inst7|contador1[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|contador1\(15));

-- Location: LCFF_X31_Y18_N13
\inst7|contador1[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|altpll_component|ALT_INV__clk0~clkctrl_outclk\,
	sdata => \inst7|cont1\(14),
	sload => VCC,
	ena => \inst7|contador1[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|contador1\(14));

-- Location: LCFF_X31_Y18_N11
\inst7|contador1[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|altpll_component|ALT_INV__clk0~clkctrl_outclk\,
	sdata => \inst7|cont1\(13),
	sload => VCC,
	ena => \inst7|contador1[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|contador1\(13));

-- Location: LCFF_X31_Y18_N7
\inst7|contador1[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|altpll_component|ALT_INV__clk0~clkctrl_outclk\,
	sdata => \inst7|cont1\(11),
	sload => VCC,
	ena => \inst7|contador1[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|contador1\(11));

-- Location: LCCOMB_X30_Y18_N20
\inst7|Equal6~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Equal6~5_combout\ = (!\inst7|Add11~32_combout\ & (!\inst7|Add11~34_combout\ & !\inst7|Add11~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Add11~32_combout\,
	datac => \inst7|Add11~34_combout\,
	datad => \inst7|Add11~36_combout\,
	combout => \inst7|Equal6~5_combout\);

-- Location: LCCOMB_X30_Y18_N30
\inst7|Equal6~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Equal6~8_combout\ = (\inst7|process_3:cont[12]~regout\ & (\inst7|Add11~24_combout\ & (\inst7|process_3:cont[13]~regout\ $ (!\inst7|Add11~26_combout\)))) # (!\inst7|process_3:cont[12]~regout\ & (!\inst7|Add11~24_combout\ & 
-- (\inst7|process_3:cont[13]~regout\ $ (!\inst7|Add11~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|process_3:cont[12]~regout\,
	datab => \inst7|process_3:cont[13]~regout\,
	datac => \inst7|Add11~26_combout\,
	datad => \inst7|Add11~24_combout\,
	combout => \inst7|Equal6~8_combout\);

-- Location: LCCOMB_X26_Y18_N24
\inst7|pwm_s2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|pwm_s2~0_combout\ = (\inst7|start~regout\ & (\inst7|Equal6~4_combout\ & (\inst7|Equal6~5_combout\ & \inst7|Equal6~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|start~regout\,
	datab => \inst7|Equal6~4_combout\,
	datac => \inst7|Equal6~5_combout\,
	datad => \inst7|Equal6~10_combout\,
	combout => \inst7|pwm_s2~0_combout\);

-- Location: LCFF_X26_Y19_N19
\inst7|contador2[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|altpll_component|ALT_INV__clk0~clkctrl_outclk\,
	sdata => \inst7|cont2\(1),
	sload => VCC,
	ena => \inst7|contador2[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|contador2\(1));

-- Location: LCFF_X26_Y19_N17
\inst7|contador2[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|altpll_component|ALT_INV__clk0~clkctrl_outclk\,
	sdata => \inst7|cont2\(0),
	sload => VCC,
	ena => \inst7|contador2[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|contador2\(0));

-- Location: LCCOMB_X26_Y19_N14
\inst7|Equal5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Equal5~0_combout\ = (\inst7|process_3:cont[1]~regout\ & (\inst7|Add9~2_combout\ & (\inst7|process_3:cont[0]~regout\ $ (!\inst7|Add9~0_combout\)))) # (!\inst7|process_3:cont[1]~regout\ & (!\inst7|Add9~2_combout\ & (\inst7|process_3:cont[0]~regout\ $ 
-- (!\inst7|Add9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|process_3:cont[1]~regout\,
	datab => \inst7|process_3:cont[0]~regout\,
	datac => \inst7|Add9~0_combout\,
	datad => \inst7|Add9~2_combout\,
	combout => \inst7|Equal5~0_combout\);

-- Location: LCFF_X26_Y19_N21
\inst7|contador2[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|altpll_component|ALT_INV__clk0~clkctrl_outclk\,
	sdata => \inst7|cont2\(2),
	sload => VCC,
	ena => \inst7|contador2[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|contador2\(2));

-- Location: LCCOMB_X27_Y19_N0
\inst7|Equal5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Equal5~1_combout\ = (\inst7|process_3:cont[2]~regout\ & (\inst7|Add9~4_combout\ & (\inst7|process_3:cont[3]~regout\ $ (!\inst7|Add9~6_combout\)))) # (!\inst7|process_3:cont[2]~regout\ & (!\inst7|Add9~4_combout\ & (\inst7|process_3:cont[3]~regout\ $ 
-- (!\inst7|Add9~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|process_3:cont[2]~regout\,
	datab => \inst7|process_3:cont[3]~regout\,
	datac => \inst7|Add9~6_combout\,
	datad => \inst7|Add9~4_combout\,
	combout => \inst7|Equal5~1_combout\);

-- Location: LCFF_X26_Y19_N25
\inst7|contador2[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|altpll_component|ALT_INV__clk0~clkctrl_outclk\,
	sdata => \inst7|cont2\(4),
	sload => VCC,
	ena => \inst7|contador2[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|contador2\(4));

-- Location: LCCOMB_X27_Y19_N6
\inst7|Equal5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Equal5~2_combout\ = (\inst7|process_3:cont[4]~regout\ & (\inst7|Add9~8_combout\ & (\inst7|Add9~10_combout\ $ (!\inst7|process_3:cont[5]~regout\)))) # (!\inst7|process_3:cont[4]~regout\ & (!\inst7|Add9~8_combout\ & (\inst7|Add9~10_combout\ $ 
-- (!\inst7|process_3:cont[5]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|process_3:cont[4]~regout\,
	datab => \inst7|Add9~8_combout\,
	datac => \inst7|Add9~10_combout\,
	datad => \inst7|process_3:cont[5]~regout\,
	combout => \inst7|Equal5~2_combout\);

-- Location: LCCOMB_X27_Y19_N4
\inst7|Equal5~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Equal5~3_combout\ = (\inst7|process_3:cont[6]~regout\ & (\inst7|Add9~12_combout\ & (\inst7|Add9~14_combout\ $ (!\inst7|process_3:cont[7]~regout\)))) # (!\inst7|process_3:cont[6]~regout\ & (!\inst7|Add9~12_combout\ & (\inst7|Add9~14_combout\ $ 
-- (!\inst7|process_3:cont[7]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|process_3:cont[6]~regout\,
	datab => \inst7|Add9~14_combout\,
	datac => \inst7|process_3:cont[7]~regout\,
	datad => \inst7|Add9~12_combout\,
	combout => \inst7|Equal5~3_combout\);

-- Location: LCCOMB_X27_Y19_N10
\inst7|Equal5~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Equal5~4_combout\ = (\inst7|Equal5~0_combout\ & (\inst7|Equal5~1_combout\ & (\inst7|Equal5~3_combout\ & \inst7|Equal5~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Equal5~0_combout\,
	datab => \inst7|Equal5~1_combout\,
	datac => \inst7|Equal5~3_combout\,
	datad => \inst7|Equal5~2_combout\,
	combout => \inst7|Equal5~4_combout\);

-- Location: LCFF_X26_Y18_N13
\inst7|contador2[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|altpll_component|ALT_INV__clk0~clkctrl_outclk\,
	sdata => \inst7|cont2\(14),
	sload => VCC,
	ena => \inst7|contador2[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|contador2\(14));

-- Location: LCFF_X26_Y18_N11
\inst7|contador2[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|altpll_component|ALT_INV__clk0~clkctrl_outclk\,
	sdata => \inst7|cont2\(13),
	sload => VCC,
	ena => \inst7|contador2[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|contador2\(13));

-- Location: LCFF_X26_Y18_N7
\inst7|contador2[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|altpll_component|ALT_INV__clk0~clkctrl_outclk\,
	sdata => \inst7|cont2\(11),
	sload => VCC,
	ena => \inst7|contador2[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|contador2\(11));

-- Location: LCCOMB_X27_Y19_N8
\inst7|Equal5~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Equal5~6_combout\ = (\inst7|process_3:cont[9]~regout\ & (\inst7|Add9~18_combout\ & (\inst7|Add9~16_combout\ $ (!\inst7|process_3:cont[8]~regout\)))) # (!\inst7|process_3:cont[9]~regout\ & (!\inst7|Add9~18_combout\ & (\inst7|Add9~16_combout\ $ 
-- (!\inst7|process_3:cont[8]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|process_3:cont[9]~regout\,
	datab => \inst7|Add9~16_combout\,
	datac => \inst7|process_3:cont[8]~regout\,
	datad => \inst7|Add9~18_combout\,
	combout => \inst7|Equal5~6_combout\);

-- Location: LCCOMB_X44_Y13_N24
\inst7|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Equal0~2_combout\ = (\inst7|cont\(5) & (\inst7|dt_var_des\(5) & (\inst7|cont\(4) $ (\inst7|dt_var_des\(4))))) # (!\inst7|cont\(5) & (!\inst7|dt_var_des\(5) & (\inst7|cont\(4) $ (\inst7|dt_var_des\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|cont\(5),
	datab => \inst7|cont\(4),
	datac => \inst7|dt_var_des\(4),
	datad => \inst7|dt_var_des\(5),
	combout => \inst7|Equal0~2_combout\);

-- Location: LCFF_X49_Y17_N9
\inst3|count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|altpll_component|ALT_INV__clk0~clkctrl_outclk\,
	datain => \inst3|count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|count\(1));

-- Location: LCFF_X49_Y17_N31
\inst3|count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|altpll_component|ALT_INV__clk0~clkctrl_outclk\,
	datain => \inst3|count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|count\(0));

-- Location: LCFF_X48_Y17_N5
\inst3|count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|altpll_component|ALT_INV__clk0~clkctrl_outclk\,
	datain => \inst3|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|count\(2));

-- Location: LCFF_X48_Y17_N7
\inst3|count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|altpll_component|ALT_INV__clk0~clkctrl_outclk\,
	datain => \inst3|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|count\(3));

-- Location: LCCOMB_X49_Y17_N16
\inst3|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Equal0~0_combout\ = (\inst3|count\(1) & (!\inst3|count\(2) & (!\inst3|count\(3) & !\inst3|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|count\(1),
	datab => \inst3|count\(2),
	datac => \inst3|count\(3),
	datad => \inst3|count\(0),
	combout => \inst3|Equal0~0_combout\);

-- Location: LCFF_X48_Y17_N9
\inst3|count[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|altpll_component|ALT_INV__clk0~clkctrl_outclk\,
	datain => \inst3|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|count\(4));

-- Location: LCFF_X48_Y17_N11
\inst3|count[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|altpll_component|ALT_INV__clk0~clkctrl_outclk\,
	datain => \inst3|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|count\(5));

-- Location: LCFF_X48_Y17_N13
\inst3|count[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|altpll_component|ALT_INV__clk0~clkctrl_outclk\,
	datain => \inst3|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|count\(6));

-- Location: LCFF_X48_Y17_N15
\inst3|count[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|altpll_component|ALT_INV__clk0~clkctrl_outclk\,
	datain => \inst3|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|count\(7));

-- Location: LCCOMB_X49_Y17_N18
\inst3|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Equal0~1_combout\ = (!\inst3|count\(6) & (!\inst3|count\(5) & (!\inst3|count\(4) & !\inst3|count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|count\(6),
	datab => \inst3|count\(5),
	datac => \inst3|count\(4),
	datad => \inst3|count\(7),
	combout => \inst3|Equal0~1_combout\);

-- Location: LCFF_X48_Y17_N17
\inst3|count[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|altpll_component|ALT_INV__clk0~clkctrl_outclk\,
	datain => \inst3|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|count\(8));

-- Location: LCFF_X48_Y17_N19
\inst3|count[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|altpll_component|ALT_INV__clk0~clkctrl_outclk\,
	datain => \inst3|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|count\(9));

-- Location: LCFF_X48_Y17_N21
\inst3|count[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|altpll_component|ALT_INV__clk0~clkctrl_outclk\,
	datain => \inst3|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|count\(10));

-- Location: LCFF_X48_Y17_N23
\inst3|count[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|altpll_component|ALT_INV__clk0~clkctrl_outclk\,
	datain => \inst3|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|count\(11));

-- Location: LCCOMB_X49_Y17_N0
\inst3|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Equal0~2_combout\ = (!\inst3|count\(8) & (!\inst3|count\(9) & (!\inst3|count\(10) & !\inst3|count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|count\(8),
	datab => \inst3|count\(9),
	datac => \inst3|count\(10),
	datad => \inst3|count\(11),
	combout => \inst3|Equal0~2_combout\);

-- Location: LCFF_X48_Y17_N25
\inst3|count[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|altpll_component|ALT_INV__clk0~clkctrl_outclk\,
	datain => \inst3|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|count\(12));

-- Location: LCFF_X48_Y17_N27
\inst3|count[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|altpll_component|ALT_INV__clk0~clkctrl_outclk\,
	datain => \inst3|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|count\(13));

-- Location: LCFF_X48_Y17_N29
\inst3|count[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|altpll_component|ALT_INV__clk0~clkctrl_outclk\,
	datain => \inst3|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|count\(14));

-- Location: LCFF_X48_Y17_N31
\inst3|count[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|altpll_component|ALT_INV__clk0~clkctrl_outclk\,
	datain => \inst3|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|count\(15));

-- Location: LCCOMB_X49_Y17_N14
\inst3|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Equal0~3_combout\ = (!\inst3|count\(14) & (!\inst3|count\(13) & (!\inst3|count\(15) & !\inst3|count\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|count\(14),
	datab => \inst3|count\(13),
	datac => \inst3|count\(15),
	datad => \inst3|count\(12),
	combout => \inst3|Equal0~3_combout\);

-- Location: LCCOMB_X49_Y17_N20
\inst3|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Equal0~4_combout\ = (\inst3|Equal0~0_combout\ & (\inst3|Equal0~2_combout\ & (\inst3|Equal0~3_combout\ & \inst3|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Equal0~0_combout\,
	datab => \inst3|Equal0~2_combout\,
	datac => \inst3|Equal0~3_combout\,
	datad => \inst3|Equal0~1_combout\,
	combout => \inst3|Equal0~4_combout\);

-- Location: LCFF_X48_Y16_N1
\inst3|count[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|altpll_component|ALT_INV__clk0~clkctrl_outclk\,
	datain => \inst3|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|count\(16));

-- Location: LCFF_X48_Y16_N3
\inst3|count[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|altpll_component|ALT_INV__clk0~clkctrl_outclk\,
	datain => \inst3|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|count\(17));

-- Location: LCFF_X48_Y16_N5
\inst3|count[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|altpll_component|ALT_INV__clk0~clkctrl_outclk\,
	datain => \inst3|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|count\(18));

-- Location: LCFF_X48_Y16_N7
\inst3|count[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|altpll_component|ALT_INV__clk0~clkctrl_outclk\,
	datain => \inst3|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|count\(19));

-- Location: LCCOMB_X49_Y16_N12
\inst3|Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Equal0~5_combout\ = (!\inst3|count\(16) & (!\inst3|count\(19) & (!\inst3|count\(18) & !\inst3|count\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|count\(16),
	datab => \inst3|count\(19),
	datac => \inst3|count\(18),
	datad => \inst3|count\(17),
	combout => \inst3|Equal0~5_combout\);

-- Location: LCFF_X48_Y16_N9
\inst3|count[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|altpll_component|ALT_INV__clk0~clkctrl_outclk\,
	datain => \inst3|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|count\(20));

-- Location: LCFF_X48_Y16_N11
\inst3|count[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|altpll_component|ALT_INV__clk0~clkctrl_outclk\,
	datain => \inst3|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|count\(21));

-- Location: LCFF_X48_Y16_N13
\inst3|count[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|altpll_component|ALT_INV__clk0~clkctrl_outclk\,
	datain => \inst3|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|count\(22));

-- Location: LCFF_X48_Y16_N15
\inst3|count[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|altpll_component|ALT_INV__clk0~clkctrl_outclk\,
	datain => \inst3|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|count\(23));

-- Location: LCCOMB_X49_Y16_N18
\inst3|Equal0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Equal0~6_combout\ = (!\inst3|count\(22) & (!\inst3|count\(21) & (!\inst3|count\(23) & !\inst3|count\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|count\(22),
	datab => \inst3|count\(21),
	datac => \inst3|count\(23),
	datad => \inst3|count\(20),
	combout => \inst3|Equal0~6_combout\);

-- Location: LCFF_X48_Y16_N17
\inst3|count[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|altpll_component|ALT_INV__clk0~clkctrl_outclk\,
	datain => \inst3|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|count\(24));

-- Location: LCFF_X48_Y16_N19
\inst3|count[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|altpll_component|ALT_INV__clk0~clkctrl_outclk\,
	datain => \inst3|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|count\(25));

-- Location: LCFF_X48_Y16_N21
\inst3|count[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|altpll_component|ALT_INV__clk0~clkctrl_outclk\,
	datain => \inst3|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|count\(26));

-- Location: LCFF_X48_Y16_N23
\inst3|count[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|altpll_component|ALT_INV__clk0~clkctrl_outclk\,
	datain => \inst3|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|count\(27));

-- Location: LCCOMB_X49_Y16_N16
\inst3|Equal0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Equal0~7_combout\ = (!\inst3|count\(27) & (!\inst3|count\(25) & (!\inst3|count\(26) & !\inst3|count\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|count\(27),
	datab => \inst3|count\(25),
	datac => \inst3|count\(26),
	datad => \inst3|count\(24),
	combout => \inst3|Equal0~7_combout\);

-- Location: LCFF_X48_Y16_N25
\inst3|count[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|altpll_component|ALT_INV__clk0~clkctrl_outclk\,
	datain => \inst3|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|count\(28));

-- Location: LCFF_X48_Y16_N27
\inst3|count[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|altpll_component|ALT_INV__clk0~clkctrl_outclk\,
	datain => \inst3|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|count\(29));

-- Location: LCFF_X48_Y16_N29
\inst3|count[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|altpll_component|ALT_INV__clk0~clkctrl_outclk\,
	datain => \inst3|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|count\(30));

-- Location: LCFF_X48_Y16_N31
\inst3|count[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|altpll_component|ALT_INV__clk0~clkctrl_outclk\,
	datain => \inst3|Add0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|count\(31));

-- Location: LCCOMB_X49_Y16_N2
\inst3|Equal0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Equal0~8_combout\ = (!\inst3|count\(30) & (!\inst3|count\(29) & (!\inst3|count\(31) & !\inst3|count\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|count\(30),
	datab => \inst3|count\(29),
	datac => \inst3|count\(31),
	datad => \inst3|count\(28),
	combout => \inst3|Equal0~8_combout\);

-- Location: LCCOMB_X49_Y16_N0
\inst3|Equal0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Equal0~9_combout\ = (\inst3|Equal0~5_combout\ & (\inst3|Equal0~8_combout\ & (\inst3|Equal0~7_combout\ & \inst3|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Equal0~5_combout\,
	datab => \inst3|Equal0~8_combout\,
	datac => \inst3|Equal0~7_combout\,
	datad => \inst3|Equal0~6_combout\,
	combout => \inst3|Equal0~9_combout\);

-- Location: LCCOMB_X49_Y14_N6
\inst3|freq_onehz~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|freq_onehz~0_combout\ = \inst3|freq_onehz~regout\ $ (((\inst3|Equal0~9_combout\ & \inst3|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Equal0~9_combout\,
	datac => \inst3|freq_onehz~regout\,
	datad => \inst3|Equal0~4_combout\,
	combout => \inst3|freq_onehz~0_combout\);

-- Location: LCCOMB_X30_Y19_N10
\inst7|process_3:cont[5]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|process_3:cont[5]~3_combout\ = (!\inst7|process_3:cont[7]~regout\ & (!\inst7|process_3:cont[8]~regout\ & (!\inst7|process_3:cont[9]~regout\ & !\inst7|process_3:cont[6]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|process_3:cont[7]~regout\,
	datab => \inst7|process_3:cont[8]~regout\,
	datac => \inst7|process_3:cont[9]~regout\,
	datad => \inst7|process_3:cont[6]~regout\,
	combout => \inst7|process_3:cont[5]~3_combout\);

-- Location: LCCOMB_X49_Y17_N8
\inst3|count~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|count~0_combout\ = (\inst3|Add0~2_combout\ & ((!\inst3|Equal0~4_combout\) # (!\inst3|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add0~2_combout\,
	datab => \inst3|Equal0~9_combout\,
	datac => \inst3|Equal0~4_combout\,
	combout => \inst3|count~0_combout\);

-- Location: LCCOMB_X49_Y17_N30
\inst3|count~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|count~1_combout\ = (\inst3|Add0~0_combout\ & ((!\inst3|Equal0~9_combout\) # (!\inst3|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Equal0~4_combout\,
	datab => \inst3|Equal0~9_combout\,
	datac => \inst3|Add0~0_combout\,
	combout => \inst3|count~1_combout\);

-- Location: LCFF_X25_Y19_N25
\inst7|amostragem[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|altpll_component|ALT_INV__clk0~clkctrl_outclk\,
	datain => \inst7|amostragem[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|amostragem\(1));

-- Location: LCCOMB_X25_Y19_N16
\inst7|amostragem~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|amostragem~0_combout\ = (\inst7|amostragem\(1) & (!\inst7|amostragem\(2) & (\inst7|amostragem\(0) & \inst7|amostragem\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|amostragem\(1),
	datab => \inst7|amostragem\(2),
	datac => \inst7|amostragem\(0),
	datad => \inst7|amostragem\(3),
	combout => \inst7|amostragem~0_combout\);

-- Location: LCCOMB_X25_Y19_N24
\inst7|amostragem[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|amostragem[1]~2_combout\ = (\inst7|amostragem[1]~1_combout\ & (!\inst7|amostragem~0_combout\ & (\inst7|amostragem\(0) $ (!\inst7|amostragem\(1))))) # (!\inst7|amostragem[1]~1_combout\ & (((\inst7|amostragem\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|amostragem~0_combout\,
	datab => \inst7|amostragem\(0),
	datac => \inst7|amostragem\(1),
	datad => \inst7|amostragem[1]~1_combout\,
	combout => \inst7|amostragem[1]~2_combout\);

-- Location: LCCOMB_X24_Y19_N20
\inst4|port_comp[6]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|port_comp[6]~1_combout\ = !\inst4|count\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|count\(6),
	combout => \inst4|port_comp[6]~1_combout\);

-- Location: LCCOMB_X23_Y20_N12
\inst4|port_comp[4]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|port_comp[4]~3_combout\ = !\inst4|count\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|count\(4),
	combout => \inst4|port_comp[4]~3_combout\);

-- Location: LCCOMB_X31_Y19_N12
\inst7|dt_var_sub[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|dt_var_sub[3]~4_combout\ = !\inst7|Add3~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst7|Add3~6_combout\,
	combout => \inst7|dt_var_sub[3]~4_combout\);

-- Location: PIN_R21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\key2~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_key2,
	combout => \key2~combout\);

-- Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\key1~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_key1,
	combout => \key1~combout\);

-- Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Clock~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Clock,
	combout => \Clock~combout\);

-- Location: CLKCTRL_G3
\inst|altpll_component|_clk0~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst|altpll_component|_clk0~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst|altpll_component|_clk0~clkctrl_outclk\);

-- Location: CLKCTRL_G7
\inst3|freq_onehz~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst3|freq_onehz~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst3|freq_onehz~clkctrl_outclk\);

-- Location: LCCOMB_X20_Y19_N4
\inst5|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Add1~0_combout\ = \inst5|mod_aux\(1) $ (VCC)
-- \inst5|Add1~1\ = CARRY(\inst5|mod_aux\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|mod_aux\(1),
	datad => VCC,
	combout => \inst5|Add1~0_combout\,
	cout => \inst5|Add1~1\);

-- Location: LCCOMB_X20_Y19_N18
\inst5|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Add0~0_combout\ = \inst5|mod_aux\(1) $ (VCC)
-- \inst5|Add0~1\ = CARRY(\inst5|mod_aux\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|mod_aux\(1),
	datad => VCC,
	combout => \inst5|Add0~0_combout\,
	cout => \inst5|Add0~1\);

-- Location: LCCOMB_X21_Y19_N8
\inst5|mod_aux~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|mod_aux~10_combout\ = (\switch2~combout\ & (\inst5|Add1~0_combout\)) # (!\switch2~combout\ & ((\inst5|Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch2~combout\,
	datac => \inst5|Add1~0_combout\,
	datad => \inst5|Add0~0_combout\,
	combout => \inst5|mod_aux~10_combout\);

-- Location: LCCOMB_X21_Y19_N18
\inst5|mod_aux[6]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|mod_aux[6]~0_combout\ = (\inst5|mod_aux\(4) & ((\inst5|mod_aux\(3)) # ((\inst5|mod_aux\(1) & \inst5|mod_aux\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|mod_aux\(3),
	datab => \inst5|mod_aux\(4),
	datac => \inst5|mod_aux\(1),
	datad => \inst5|mod_aux\(2),
	combout => \inst5|mod_aux[6]~0_combout\);

-- Location: LCCOMB_X21_Y19_N24
\inst5|mod_aux[6]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|mod_aux[6]~1_combout\ = (\inst5|mod_aux\(5) & (!\inst5|mod_aux\(7) & \inst5|mod_aux\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|mod_aux\(5),
	datac => \inst5|mod_aux\(7),
	datad => \inst5|mod_aux\(6),
	combout => \inst5|mod_aux[6]~1_combout\);

-- Location: LCCOMB_X21_Y19_N4
\inst5|mod_aux[6]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|mod_aux[6]~5_combout\ = (\switch2~combout\ & (((!\inst5|mod_aux[6]~1_combout\)) # (!\inst5|mod_aux[6]~0_combout\))) # (!\switch2~combout\ & (((\inst5|LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch2~combout\,
	datab => \inst5|mod_aux[6]~0_combout\,
	datac => \inst5|mod_aux[6]~1_combout\,
	datad => \inst5|LessThan0~1_combout\,
	combout => \inst5|mod_aux[6]~5_combout\);

-- Location: LCFF_X21_Y19_N9
\inst5|mod_aux[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_key2~combout\,
	datain => \inst5|mod_aux~10_combout\,
	ena => \inst5|mod_aux[6]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|mod_aux\(1));

-- Location: LCCOMB_X20_Y19_N6
\inst5|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Add1~2_combout\ = (\inst5|mod_aux\(2) & (!\inst5|Add1~1\)) # (!\inst5|mod_aux\(2) & ((\inst5|Add1~1\) # (GND)))
-- \inst5|Add1~3\ = CARRY((!\inst5|Add1~1\) # (!\inst5|mod_aux\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|mod_aux\(2),
	datad => VCC,
	cin => \inst5|Add1~1\,
	combout => \inst5|Add1~2_combout\,
	cout => \inst5|Add1~3\);

-- Location: LCCOMB_X20_Y19_N20
\inst5|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Add0~2_combout\ = (\inst5|mod_aux\(2) & (\inst5|Add0~1\ & VCC)) # (!\inst5|mod_aux\(2) & (!\inst5|Add0~1\))
-- \inst5|Add0~3\ = CARRY((!\inst5|mod_aux\(2) & !\inst5|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|mod_aux\(2),
	datad => VCC,
	cin => \inst5|Add0~1\,
	combout => \inst5|Add0~2_combout\,
	cout => \inst5|Add0~3\);

-- Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\switch2~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_switch2,
	combout => \switch2~combout\);

-- Location: LCCOMB_X21_Y19_N30
\inst5|mod_aux~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|mod_aux~9_combout\ = (\switch2~combout\ & (\inst5|Add1~2_combout\)) # (!\switch2~combout\ & ((\inst5|Add0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|Add1~2_combout\,
	datac => \inst5|Add0~2_combout\,
	datad => \switch2~combout\,
	combout => \inst5|mod_aux~9_combout\);

-- Location: LCFF_X21_Y19_N31
\inst5|mod_aux[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_key2~combout\,
	datain => \inst5|mod_aux~9_combout\,
	ena => \inst5|mod_aux[6]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|mod_aux\(2));

-- Location: LCCOMB_X20_Y19_N22
\inst5|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Add0~4_combout\ = (\inst5|mod_aux\(3) & (\inst5|Add0~3\ $ (GND))) # (!\inst5|mod_aux\(3) & (!\inst5|Add0~3\ & VCC))
-- \inst5|Add0~5\ = CARRY((\inst5|mod_aux\(3) & !\inst5|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|mod_aux\(3),
	datad => VCC,
	cin => \inst5|Add0~3\,
	combout => \inst5|Add0~4_combout\,
	cout => \inst5|Add0~5\);

-- Location: LCCOMB_X20_Y19_N8
\inst5|Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Add1~4_combout\ = (\inst5|mod_aux\(3) & ((GND) # (!\inst5|Add1~3\))) # (!\inst5|mod_aux\(3) & (\inst5|Add1~3\ $ (GND)))
-- \inst5|Add1~5\ = CARRY((\inst5|mod_aux\(3)) # (!\inst5|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|mod_aux\(3),
	datad => VCC,
	cin => \inst5|Add1~3\,
	combout => \inst5|Add1~4_combout\,
	cout => \inst5|Add1~5\);

-- Location: LCCOMB_X21_Y19_N20
\inst5|mod_aux~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|mod_aux~8_combout\ = (\switch2~combout\ & ((\inst5|Add1~4_combout\))) # (!\switch2~combout\ & (\inst5|Add0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch2~combout\,
	datab => \inst5|Add0~4_combout\,
	datad => \inst5|Add1~4_combout\,
	combout => \inst5|mod_aux~8_combout\);

-- Location: LCFF_X21_Y19_N21
\inst5|mod_aux[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_key2~combout\,
	datain => \inst5|mod_aux~8_combout\,
	ena => \inst5|mod_aux[6]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|mod_aux\(3));

-- Location: LCCOMB_X20_Y19_N24
\inst5|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Add0~6_combout\ = (\inst5|mod_aux\(4) & (\inst5|Add0~5\ & VCC)) # (!\inst5|mod_aux\(4) & (!\inst5|Add0~5\))
-- \inst5|Add0~7\ = CARRY((!\inst5|mod_aux\(4) & !\inst5|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|mod_aux\(4),
	datad => VCC,
	cin => \inst5|Add0~5\,
	combout => \inst5|Add0~6_combout\,
	cout => \inst5|Add0~7\);

-- Location: LCCOMB_X20_Y19_N10
\inst5|Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Add1~6_combout\ = (\inst5|mod_aux\(4) & (!\inst5|Add1~5\)) # (!\inst5|mod_aux\(4) & ((\inst5|Add1~5\) # (GND)))
-- \inst5|Add1~7\ = CARRY((!\inst5|Add1~5\) # (!\inst5|mod_aux\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|mod_aux\(4),
	datad => VCC,
	cin => \inst5|Add1~5\,
	combout => \inst5|Add1~6_combout\,
	cout => \inst5|Add1~7\);

-- Location: LCCOMB_X21_Y19_N22
\inst5|mod_aux~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|mod_aux~7_combout\ = (\switch2~combout\ & ((\inst5|Add1~6_combout\))) # (!\switch2~combout\ & (\inst5|Add0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch2~combout\,
	datab => \inst5|Add0~6_combout\,
	datad => \inst5|Add1~6_combout\,
	combout => \inst5|mod_aux~7_combout\);

-- Location: LCFF_X21_Y19_N23
\inst5|mod_aux[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_key2~combout\,
	datain => \inst5|mod_aux~7_combout\,
	ena => \inst5|mod_aux[6]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|mod_aux\(4));

-- Location: LCCOMB_X20_Y19_N26
\inst5|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Add0~8_combout\ = (\inst5|mod_aux\(5) & ((GND) # (!\inst5|Add0~7\))) # (!\inst5|mod_aux\(5) & (\inst5|Add0~7\ $ (GND)))
-- \inst5|Add0~9\ = CARRY((\inst5|mod_aux\(5)) # (!\inst5|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|mod_aux\(5),
	datad => VCC,
	cin => \inst5|Add0~7\,
	combout => \inst5|Add0~8_combout\,
	cout => \inst5|Add0~9\);

-- Location: LCCOMB_X20_Y19_N12
\inst5|Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Add1~8_combout\ = (\inst5|mod_aux\(5) & (\inst5|Add1~7\ $ (GND))) # (!\inst5|mod_aux\(5) & (!\inst5|Add1~7\ & VCC))
-- \inst5|Add1~9\ = CARRY((\inst5|mod_aux\(5) & !\inst5|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|mod_aux\(5),
	datad => VCC,
	cin => \inst5|Add1~7\,
	combout => \inst5|Add1~8_combout\,
	cout => \inst5|Add1~9\);

-- Location: LCCOMB_X21_Y19_N28
\inst5|mod_aux~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|mod_aux~6_combout\ = (\switch2~combout\ & ((\inst5|Add1~8_combout\))) # (!\switch2~combout\ & (\inst5|Add0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch2~combout\,
	datab => \inst5|Add0~8_combout\,
	datad => \inst5|Add1~8_combout\,
	combout => \inst5|mod_aux~6_combout\);

-- Location: LCFF_X21_Y19_N29
\inst5|mod_aux[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_key2~combout\,
	datain => \inst5|mod_aux~6_combout\,
	ena => \inst5|mod_aux[6]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|mod_aux\(5));

-- Location: LCCOMB_X20_Y19_N28
\inst5|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Add0~10_combout\ = (\inst5|mod_aux\(6) & (\inst5|Add0~9\ & VCC)) # (!\inst5|mod_aux\(6) & (!\inst5|Add0~9\))
-- \inst5|Add0~11\ = CARRY((!\inst5|mod_aux\(6) & !\inst5|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|mod_aux\(6),
	datad => VCC,
	cin => \inst5|Add0~9\,
	combout => \inst5|Add0~10_combout\,
	cout => \inst5|Add0~11\);

-- Location: LCCOMB_X20_Y19_N14
\inst5|Add1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Add1~10_combout\ = (\inst5|mod_aux\(6) & (!\inst5|Add1~9\)) # (!\inst5|mod_aux\(6) & ((\inst5|Add1~9\) # (GND)))
-- \inst5|Add1~11\ = CARRY((!\inst5|Add1~9\) # (!\inst5|mod_aux\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|mod_aux\(6),
	datad => VCC,
	cin => \inst5|Add1~9\,
	combout => \inst5|Add1~10_combout\,
	cout => \inst5|Add1~11\);

-- Location: LCCOMB_X21_Y19_N26
\inst5|mod_aux~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|mod_aux~4_combout\ = (\switch2~combout\ & ((\inst5|Add1~10_combout\))) # (!\switch2~combout\ & (\inst5|Add0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch2~combout\,
	datab => \inst5|Add0~10_combout\,
	datad => \inst5|Add1~10_combout\,
	combout => \inst5|mod_aux~4_combout\);

-- Location: LCFF_X21_Y19_N27
\inst5|mod_aux[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_key2~combout\,
	datain => \inst5|mod_aux~4_combout\,
	ena => \inst5|mod_aux[6]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|mod_aux\(6));

-- Location: LCCOMB_X21_Y19_N0
\inst5|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|LessThan0~0_combout\ = (\inst5|mod_aux\(4)) # ((\inst5|mod_aux\(5)) # ((\inst5|mod_aux\(3) & \inst5|mod_aux\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|mod_aux\(3),
	datab => \inst5|mod_aux\(2),
	datac => \inst5|mod_aux\(4),
	datad => \inst5|mod_aux\(5),
	combout => \inst5|LessThan0~0_combout\);

-- Location: LCCOMB_X21_Y19_N10
\inst5|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|LessThan0~1_combout\ = (\inst5|mod_aux\(6)) # ((\inst5|LessThan0~0_combout\) # (!\inst5|mod_aux\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|mod_aux\(6),
	datac => \inst5|mod_aux\(7),
	datad => \inst5|LessThan0~0_combout\,
	combout => \inst5|LessThan0~1_combout\);

-- Location: LCCOMB_X20_Y19_N30
\inst5|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Add0~12_combout\ = \inst5|mod_aux\(7) $ (!\inst5|Add0~11\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|mod_aux\(7),
	cin => \inst5|Add0~11\,
	combout => \inst5|Add0~12_combout\);

-- Location: LCCOMB_X20_Y19_N16
\inst5|Add1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Add1~12_combout\ = \inst5|mod_aux\(7) $ (\inst5|Add1~11\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|mod_aux\(7),
	cin => \inst5|Add1~11\,
	combout => \inst5|Add1~12_combout\);

-- Location: LCCOMB_X21_Y19_N2
\inst5|mod_aux~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|mod_aux~2_combout\ = (\switch2~combout\ & ((\inst5|Add1~12_combout\) # ((\inst5|mod_aux[6]~0_combout\ & \inst5|mod_aux[6]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch2~combout\,
	datab => \inst5|mod_aux[6]~0_combout\,
	datac => \inst5|mod_aux[6]~1_combout\,
	datad => \inst5|Add1~12_combout\,
	combout => \inst5|mod_aux~2_combout\);

-- Location: LCCOMB_X21_Y19_N16
\inst5|mod_aux~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|mod_aux~3_combout\ = (!\inst5|mod_aux~2_combout\ & ((\switch2~combout\) # ((!\inst5|Add0~12_combout\) # (!\inst5|LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch2~combout\,
	datab => \inst5|LessThan0~1_combout\,
	datac => \inst5|Add0~12_combout\,
	datad => \inst5|mod_aux~2_combout\,
	combout => \inst5|mod_aux~3_combout\);

-- Location: LCFF_X21_Y19_N17
\inst5|mod_aux[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_key2~combout\,
	datain => \inst5|mod_aux~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|mod_aux\(7));

-- Location: LCCOMB_X22_Y20_N0
\inst4|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Add0~0_combout\ = \inst4|count\(0) $ (VCC)
-- \inst4|Add0~1\ = CARRY(\inst4|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|count\(0),
	datad => VCC,
	combout => \inst4|Add0~0_combout\,
	cout => \inst4|Add0~1\);

-- Location: LCFF_X22_Y20_N1
\inst4|count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|ALT_INV_freq_onehz~clkctrl_outclk\,
	datain => \inst4|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|count\(0));

-- Location: LCCOMB_X22_Y20_N2
\inst4|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Add0~2_combout\ = (\inst4|count\(1) & (!\inst4|Add0~1\)) # (!\inst4|count\(1) & ((\inst4|Add0~1\) # (GND)))
-- \inst4|Add0~3\ = CARRY((!\inst4|Add0~1\) # (!\inst4|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|count\(1),
	datad => VCC,
	cin => \inst4|Add0~1\,
	combout => \inst4|Add0~2_combout\,
	cout => \inst4|Add0~3\);

-- Location: LCFF_X22_Y20_N3
\inst4|count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|ALT_INV_freq_onehz~clkctrl_outclk\,
	datain => \inst4|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|count\(1));

-- Location: LCCOMB_X22_Y20_N4
\inst4|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Add0~4_combout\ = (\inst4|count\(2) & (\inst4|Add0~3\ $ (GND))) # (!\inst4|count\(2) & (!\inst4|Add0~3\ & VCC))
-- \inst4|Add0~5\ = CARRY((\inst4|count\(2) & !\inst4|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|count\(2),
	datad => VCC,
	cin => \inst4|Add0~3\,
	combout => \inst4|Add0~4_combout\,
	cout => \inst4|Add0~5\);

-- Location: LCFF_X22_Y20_N5
\inst4|count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|ALT_INV_freq_onehz~clkctrl_outclk\,
	datain => \inst4|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|count\(2));

-- Location: LCCOMB_X22_Y20_N6
\inst4|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Add0~6_combout\ = (\inst4|count\(3) & (!\inst4|Add0~5\)) # (!\inst4|count\(3) & ((\inst4|Add0~5\) # (GND)))
-- \inst4|Add0~7\ = CARRY((!\inst4|Add0~5\) # (!\inst4|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|count\(3),
	datad => VCC,
	cin => \inst4|Add0~5\,
	combout => \inst4|Add0~6_combout\,
	cout => \inst4|Add0~7\);

-- Location: LCCOMB_X22_Y20_N8
\inst4|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Add0~8_combout\ = (\inst4|count\(4) & (\inst4|Add0~7\ $ (GND))) # (!\inst4|count\(4) & (!\inst4|Add0~7\ & VCC))
-- \inst4|Add0~9\ = CARRY((\inst4|count\(4) & !\inst4|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|count\(4),
	datad => VCC,
	cin => \inst4|Add0~7\,
	combout => \inst4|Add0~8_combout\,
	cout => \inst4|Add0~9\);

-- Location: LCFF_X22_Y20_N9
\inst4|count[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|ALT_INV_freq_onehz~clkctrl_outclk\,
	datain => \inst4|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|count\(4));

-- Location: LCCOMB_X22_Y20_N10
\inst4|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Add0~10_combout\ = (\inst4|count\(5) & (!\inst4|Add0~9\)) # (!\inst4|count\(5) & ((\inst4|Add0~9\) # (GND)))
-- \inst4|Add0~11\ = CARRY((!\inst4|Add0~9\) # (!\inst4|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|count\(5),
	datad => VCC,
	cin => \inst4|Add0~9\,
	combout => \inst4|Add0~10_combout\,
	cout => \inst4|Add0~11\);

-- Location: LCCOMB_X22_Y20_N12
\inst4|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Add0~12_combout\ = (\inst4|count\(6) & (\inst4|Add0~11\ $ (GND))) # (!\inst4|count\(6) & (!\inst4|Add0~11\ & VCC))
-- \inst4|Add0~13\ = CARRY((\inst4|count\(6) & !\inst4|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|count\(6),
	datad => VCC,
	cin => \inst4|Add0~11\,
	combout => \inst4|Add0~12_combout\,
	cout => \inst4|Add0~13\);

-- Location: LCCOMB_X22_Y20_N14
\inst4|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Add0~14_combout\ = (\inst4|count\(7) & (!\inst4|Add0~13\)) # (!\inst4|count\(7) & ((\inst4|Add0~13\) # (GND)))
-- \inst4|Add0~15\ = CARRY((!\inst4|Add0~13\) # (!\inst4|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|count\(7),
	datad => VCC,
	cin => \inst4|Add0~13\,
	combout => \inst4|Add0~14_combout\,
	cout => \inst4|Add0~15\);

-- Location: LCFF_X22_Y20_N15
\inst4|count[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|ALT_INV_freq_onehz~clkctrl_outclk\,
	datain => \inst4|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|count\(7));

-- Location: LCCOMB_X23_Y20_N14
\inst4|port_comp[7]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|port_comp[7]~0_combout\ = !\inst4|count\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|count\(7),
	combout => \inst4|port_comp[7]~0_combout\);

-- Location: LCCOMB_X22_Y20_N16
\inst4|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Add0~16_combout\ = (\inst4|count\(8) & (\inst4|Add0~15\ $ (GND))) # (!\inst4|count\(8) & (!\inst4|Add0~15\ & VCC))
-- \inst4|Add0~17\ = CARRY((\inst4|count\(8) & !\inst4|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|count\(8),
	datad => VCC,
	cin => \inst4|Add0~15\,
	combout => \inst4|Add0~16_combout\,
	cout => \inst4|Add0~17\);

-- Location: LCCOMB_X22_Y20_N20
\inst4|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Add0~20_combout\ = (\inst4|count\(10) & (\inst4|Add0~19\ $ (GND))) # (!\inst4|count\(10) & (!\inst4|Add0~19\ & VCC))
-- \inst4|Add0~21\ = CARRY((\inst4|count\(10) & !\inst4|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|count\(10),
	datad => VCC,
	cin => \inst4|Add0~19\,
	combout => \inst4|Add0~20_combout\,
	cout => \inst4|Add0~21\);

-- Location: LCFF_X22_Y20_N21
\inst4|count[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|ALT_INV_freq_onehz~clkctrl_outclk\,
	datain => \inst4|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|count\(10));

-- Location: LCCOMB_X23_Y20_N2
\inst4|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Equal0~2_combout\ = (!\inst4|count\(8) & (!\inst4|count\(9) & (!\inst4|count\(10) & !\inst4|count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|count\(8),
	datab => \inst4|count\(9),
	datac => \inst4|count\(10),
	datad => \inst4|count\(11),
	combout => \inst4|Equal0~2_combout\);

-- Location: LCFF_X22_Y20_N7
\inst4|count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|ALT_INV_freq_onehz~clkctrl_outclk\,
	datain => \inst4|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|count\(3));

-- Location: LCCOMB_X23_Y20_N28
\inst4|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Equal0~0_combout\ = (\inst4|count\(1) & (\inst4|count\(2) & (\inst4|count\(0) & \inst4|count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|count\(1),
	datab => \inst4|count\(2),
	datac => \inst4|count\(0),
	datad => \inst4|count\(3),
	combout => \inst4|Equal0~0_combout\);

-- Location: LCFF_X22_Y20_N13
\inst4|count[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|ALT_INV_freq_onehz~clkctrl_outclk\,
	datain => \inst4|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|count\(6));

-- Location: LCFF_X22_Y20_N11
\inst4|count[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|ALT_INV_freq_onehz~clkctrl_outclk\,
	datain => \inst4|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|count\(5));

-- Location: LCCOMB_X23_Y20_N10
\inst4|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Equal0~1_combout\ = (\inst4|count\(7) & (\inst4|count\(6) & (\inst4|count\(5) & \inst4|count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|count\(7),
	datab => \inst4|count\(6),
	datac => \inst4|count\(5),
	datad => \inst4|count\(4),
	combout => \inst4|Equal0~1_combout\);

-- Location: LCCOMB_X23_Y19_N0
\inst4|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Equal0~4_combout\ = (\inst4|Equal0~3_combout\ & (\inst4|Equal0~2_combout\ & (\inst4|Equal0~0_combout\ & \inst4|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Equal0~3_combout\,
	datab => \inst4|Equal0~2_combout\,
	datac => \inst4|Equal0~0_combout\,
	datad => \inst4|Equal0~1_combout\,
	combout => \inst4|Equal0~4_combout\);

-- Location: LCCOMB_X23_Y20_N20
\inst4|count~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|count~0_combout\ = (\inst4|Add0~16_combout\ & ((!\inst4|Equal0~4_combout\) # (!\inst4|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Equal0~9_combout\,
	datab => \inst4|Add0~16_combout\,
	datad => \inst4|Equal0~4_combout\,
	combout => \inst4|count~0_combout\);

-- Location: LCFF_X23_Y20_N21
\inst4|count[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|ALT_INV_freq_onehz~clkctrl_outclk\,
	datain => \inst4|count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|count\(8));

-- Location: LCCOMB_X22_Y20_N18
\inst4|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Add0~18_combout\ = (\inst4|count\(9) & (!\inst4|Add0~17\)) # (!\inst4|count\(9) & ((\inst4|Add0~17\) # (GND)))
-- \inst4|Add0~19\ = CARRY((!\inst4|Add0~17\) # (!\inst4|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|count\(9),
	datad => VCC,
	cin => \inst4|Add0~17\,
	combout => \inst4|Add0~18_combout\,
	cout => \inst4|Add0~19\);

-- Location: LCFF_X22_Y20_N19
\inst4|count[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|ALT_INV_freq_onehz~clkctrl_outclk\,
	datain => \inst4|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|count\(9));

-- Location: LCCOMB_X22_Y20_N22
\inst4|Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Add0~22_combout\ = (\inst4|count\(11) & (!\inst4|Add0~21\)) # (!\inst4|count\(11) & ((\inst4|Add0~21\) # (GND)))
-- \inst4|Add0~23\ = CARRY((!\inst4|Add0~21\) # (!\inst4|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|count\(11),
	datad => VCC,
	cin => \inst4|Add0~21\,
	combout => \inst4|Add0~22_combout\,
	cout => \inst4|Add0~23\);

-- Location: LCFF_X22_Y20_N23
\inst4|count[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|ALT_INV_freq_onehz~clkctrl_outclk\,
	datain => \inst4|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|count\(11));

-- Location: LCCOMB_X22_Y20_N26
\inst4|Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Add0~26_combout\ = (\inst4|count\(13) & (!\inst4|Add0~25\)) # (!\inst4|count\(13) & ((\inst4|Add0~25\) # (GND)))
-- \inst4|Add0~27\ = CARRY((!\inst4|Add0~25\) # (!\inst4|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|count\(13),
	datad => VCC,
	cin => \inst4|Add0~25\,
	combout => \inst4|Add0~26_combout\,
	cout => \inst4|Add0~27\);

-- Location: LCFF_X22_Y20_N27
\inst4|count[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|ALT_INV_freq_onehz~clkctrl_outclk\,
	datain => \inst4|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|count\(13));

-- Location: LCCOMB_X22_Y20_N28
\inst4|Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Add0~28_combout\ = (\inst4|count\(14) & (\inst4|Add0~27\ $ (GND))) # (!\inst4|count\(14) & (!\inst4|Add0~27\ & VCC))
-- \inst4|Add0~29\ = CARRY((\inst4|count\(14) & !\inst4|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|count\(14),
	datad => VCC,
	cin => \inst4|Add0~27\,
	combout => \inst4|Add0~28_combout\,
	cout => \inst4|Add0~29\);

-- Location: LCFF_X22_Y20_N29
\inst4|count[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|ALT_INV_freq_onehz~clkctrl_outclk\,
	datain => \inst4|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|count\(14));

-- Location: LCCOMB_X22_Y20_N30
\inst4|Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Add0~30_combout\ = (\inst4|count\(15) & (!\inst4|Add0~29\)) # (!\inst4|count\(15) & ((\inst4|Add0~29\) # (GND)))
-- \inst4|Add0~31\ = CARRY((!\inst4|Add0~29\) # (!\inst4|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|count\(15),
	datad => VCC,
	cin => \inst4|Add0~29\,
	combout => \inst4|Add0~30_combout\,
	cout => \inst4|Add0~31\);

-- Location: LCFF_X22_Y20_N31
\inst4|count[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|ALT_INV_freq_onehz~clkctrl_outclk\,
	datain => \inst4|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|count\(15));

-- Location: LCCOMB_X22_Y19_N0
\inst4|Add0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Add0~32_combout\ = (\inst4|count\(16) & (\inst4|Add0~31\ $ (GND))) # (!\inst4|count\(16) & (!\inst4|Add0~31\ & VCC))
-- \inst4|Add0~33\ = CARRY((\inst4|count\(16) & !\inst4|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|count\(16),
	datad => VCC,
	cin => \inst4|Add0~31\,
	combout => \inst4|Add0~32_combout\,
	cout => \inst4|Add0~33\);

-- Location: LCFF_X22_Y19_N1
\inst4|count[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|ALT_INV_freq_onehz~clkctrl_outclk\,
	datain => \inst4|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|count\(16));

-- Location: LCCOMB_X22_Y19_N2
\inst4|Add0~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Add0~34_combout\ = (\inst4|count\(17) & (!\inst4|Add0~33\)) # (!\inst4|count\(17) & ((\inst4|Add0~33\) # (GND)))
-- \inst4|Add0~35\ = CARRY((!\inst4|Add0~33\) # (!\inst4|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|count\(17),
	datad => VCC,
	cin => \inst4|Add0~33\,
	combout => \inst4|Add0~34_combout\,
	cout => \inst4|Add0~35\);

-- Location: LCFF_X22_Y19_N3
\inst4|count[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|ALT_INV_freq_onehz~clkctrl_outclk\,
	datain => \inst4|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|count\(17));

-- Location: LCCOMB_X22_Y19_N4
\inst4|Add0~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Add0~36_combout\ = (\inst4|count\(18) & (\inst4|Add0~35\ $ (GND))) # (!\inst4|count\(18) & (!\inst4|Add0~35\ & VCC))
-- \inst4|Add0~37\ = CARRY((\inst4|count\(18) & !\inst4|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|count\(18),
	datad => VCC,
	cin => \inst4|Add0~35\,
	combout => \inst4|Add0~36_combout\,
	cout => \inst4|Add0~37\);

-- Location: LCFF_X22_Y19_N5
\inst4|count[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|ALT_INV_freq_onehz~clkctrl_outclk\,
	datain => \inst4|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|count\(18));

-- Location: LCCOMB_X22_Y19_N6
\inst4|Add0~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Add0~38_combout\ = (\inst4|count\(19) & (!\inst4|Add0~37\)) # (!\inst4|count\(19) & ((\inst4|Add0~37\) # (GND)))
-- \inst4|Add0~39\ = CARRY((!\inst4|Add0~37\) # (!\inst4|count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|count\(19),
	datad => VCC,
	cin => \inst4|Add0~37\,
	combout => \inst4|Add0~38_combout\,
	cout => \inst4|Add0~39\);

-- Location: LCFF_X22_Y19_N7
\inst4|count[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|ALT_INV_freq_onehz~clkctrl_outclk\,
	datain => \inst4|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|count\(19));

-- Location: LCCOMB_X23_Y19_N26
\inst4|Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Equal0~5_combout\ = (!\inst4|count\(17) & (!\inst4|count\(18) & (!\inst4|count\(16) & !\inst4|count\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|count\(17),
	datab => \inst4|count\(18),
	datac => \inst4|count\(16),
	datad => \inst4|count\(19),
	combout => \inst4|Equal0~5_combout\);

-- Location: LCCOMB_X22_Y19_N8
\inst4|Add0~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Add0~40_combout\ = (\inst4|count\(20) & (\inst4|Add0~39\ $ (GND))) # (!\inst4|count\(20) & (!\inst4|Add0~39\ & VCC))
-- \inst4|Add0~41\ = CARRY((\inst4|count\(20) & !\inst4|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|count\(20),
	datad => VCC,
	cin => \inst4|Add0~39\,
	combout => \inst4|Add0~40_combout\,
	cout => \inst4|Add0~41\);

-- Location: LCFF_X22_Y19_N9
\inst4|count[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|ALT_INV_freq_onehz~clkctrl_outclk\,
	datain => \inst4|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|count\(20));

-- Location: LCCOMB_X22_Y19_N14
\inst4|Add0~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Add0~46_combout\ = (\inst4|count\(23) & (!\inst4|Add0~45\)) # (!\inst4|count\(23) & ((\inst4|Add0~45\) # (GND)))
-- \inst4|Add0~47\ = CARRY((!\inst4|Add0~45\) # (!\inst4|count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|count\(23),
	datad => VCC,
	cin => \inst4|Add0~45\,
	combout => \inst4|Add0~46_combout\,
	cout => \inst4|Add0~47\);

-- Location: LCFF_X22_Y19_N15
\inst4|count[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|ALT_INV_freq_onehz~clkctrl_outclk\,
	datain => \inst4|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|count\(23));

-- Location: LCCOMB_X22_Y19_N16
\inst4|Add0~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Add0~48_combout\ = (\inst4|count\(24) & (\inst4|Add0~47\ $ (GND))) # (!\inst4|count\(24) & (!\inst4|Add0~47\ & VCC))
-- \inst4|Add0~49\ = CARRY((\inst4|count\(24) & !\inst4|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|count\(24),
	datad => VCC,
	cin => \inst4|Add0~47\,
	combout => \inst4|Add0~48_combout\,
	cout => \inst4|Add0~49\);

-- Location: LCCOMB_X22_Y19_N18
\inst4|Add0~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Add0~50_combout\ = (\inst4|count\(25) & (!\inst4|Add0~49\)) # (!\inst4|count\(25) & ((\inst4|Add0~49\) # (GND)))
-- \inst4|Add0~51\ = CARRY((!\inst4|Add0~49\) # (!\inst4|count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|count\(25),
	datad => VCC,
	cin => \inst4|Add0~49\,
	combout => \inst4|Add0~50_combout\,
	cout => \inst4|Add0~51\);

-- Location: LCFF_X22_Y19_N19
\inst4|count[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|ALT_INV_freq_onehz~clkctrl_outclk\,
	datain => \inst4|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|count\(25));

-- Location: LCCOMB_X22_Y19_N22
\inst4|Add0~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Add0~54_combout\ = (\inst4|count\(27) & (!\inst4|Add0~53\)) # (!\inst4|count\(27) & ((\inst4|Add0~53\) # (GND)))
-- \inst4|Add0~55\ = CARRY((!\inst4|Add0~53\) # (!\inst4|count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|count\(27),
	datad => VCC,
	cin => \inst4|Add0~53\,
	combout => \inst4|Add0~54_combout\,
	cout => \inst4|Add0~55\);

-- Location: LCFF_X22_Y19_N23
\inst4|count[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|ALT_INV_freq_onehz~clkctrl_outclk\,
	datain => \inst4|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|count\(27));

-- Location: LCCOMB_X22_Y19_N24
\inst4|Add0~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Add0~56_combout\ = (\inst4|count\(28) & (\inst4|Add0~55\ $ (GND))) # (!\inst4|count\(28) & (!\inst4|Add0~55\ & VCC))
-- \inst4|Add0~57\ = CARRY((\inst4|count\(28) & !\inst4|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|count\(28),
	datad => VCC,
	cin => \inst4|Add0~55\,
	combout => \inst4|Add0~56_combout\,
	cout => \inst4|Add0~57\);

-- Location: LCFF_X22_Y19_N25
\inst4|count[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|ALT_INV_freq_onehz~clkctrl_outclk\,
	datain => \inst4|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|count\(28));

-- Location: LCCOMB_X22_Y19_N26
\inst4|Add0~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Add0~58_combout\ = (\inst4|count\(29) & (!\inst4|Add0~57\)) # (!\inst4|count\(29) & ((\inst4|Add0~57\) # (GND)))
-- \inst4|Add0~59\ = CARRY((!\inst4|Add0~57\) # (!\inst4|count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|count\(29),
	datad => VCC,
	cin => \inst4|Add0~57\,
	combout => \inst4|Add0~58_combout\,
	cout => \inst4|Add0~59\);

-- Location: LCFF_X22_Y19_N27
\inst4|count[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|ALT_INV_freq_onehz~clkctrl_outclk\,
	datain => \inst4|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|count\(29));

-- Location: LCFF_X22_Y19_N29
\inst4|count[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|ALT_INV_freq_onehz~clkctrl_outclk\,
	datain => \inst4|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|count\(30));

-- Location: LCCOMB_X23_Y19_N16
\inst4|Equal0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Equal0~8_combout\ = (!\inst4|count\(31) & (!\inst4|count\(28) & (!\inst4|count\(30) & !\inst4|count\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|count\(31),
	datab => \inst4|count\(28),
	datac => \inst4|count\(30),
	datad => \inst4|count\(29),
	combout => \inst4|Equal0~8_combout\);

-- Location: LCFF_X22_Y19_N17
\inst4|count[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|ALT_INV_freq_onehz~clkctrl_outclk\,
	datain => \inst4|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|count\(24));

-- Location: LCCOMB_X23_Y19_N22
\inst4|Equal0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Equal0~7_combout\ = (!\inst4|count\(26) & (!\inst4|count\(24) & (!\inst4|count\(25) & !\inst4|count\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|count\(26),
	datab => \inst4|count\(24),
	datac => \inst4|count\(25),
	datad => \inst4|count\(27),
	combout => \inst4|Equal0~7_combout\);

-- Location: LCCOMB_X23_Y19_N14
\inst4|Equal0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Equal0~9_combout\ = (\inst4|Equal0~6_combout\ & (\inst4|Equal0~5_combout\ & (\inst4|Equal0~8_combout\ & \inst4|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Equal0~6_combout\,
	datab => \inst4|Equal0~5_combout\,
	datac => \inst4|Equal0~8_combout\,
	datad => \inst4|Equal0~7_combout\,
	combout => \inst4|Equal0~9_combout\);

-- Location: LCCOMB_X23_Y19_N28
\inst4|Equal0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Equal0~10_combout\ = (!\inst4|Equal0~4_combout\) # (!\inst4|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|Equal0~9_combout\,
	datad => \inst4|Equal0~4_combout\,
	combout => \inst4|Equal0~10_combout\);

-- Location: LCFF_X24_Y19_N19
\inst4|port_comp[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|ALT_INV_freq_onehz~clkctrl_outclk\,
	sdata => \inst4|port_comp[7]~0_combout\,
	sload => VCC,
	ena => \inst4|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|port_comp\(7));

-- Location: LCCOMB_X24_Y19_N30
\inst4|port_comp[5]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|port_comp[5]~2_combout\ = !\inst4|count\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|count\(5),
	combout => \inst4|port_comp[5]~2_combout\);

-- Location: LCFF_X24_Y19_N31
\inst4|port_comp[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|ALT_INV_freq_onehz~clkctrl_outclk\,
	datain => \inst4|port_comp[5]~2_combout\,
	ena => \inst4|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|port_comp\(5));

-- Location: LCCOMB_X23_Y20_N18
\inst4|port_comp[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|port_comp[3]~4_combout\ = !\inst4|count\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|count\(3),
	combout => \inst4|port_comp[3]~4_combout\);

-- Location: LCFF_X24_Y19_N5
\inst4|port_comp[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|ALT_INV_freq_onehz~clkctrl_outclk\,
	sdata => \inst4|port_comp[3]~4_combout\,
	sload => VCC,
	ena => \inst4|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|port_comp\(3));

-- Location: LCCOMB_X23_Y20_N24
\inst4|port_comp[2]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|port_comp[2]~5_combout\ = !\inst4|count\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|count\(2),
	combout => \inst4|port_comp[2]~5_combout\);

-- Location: LCFF_X24_Y19_N3
\inst4|port_comp[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|ALT_INV_freq_onehz~clkctrl_outclk\,
	sdata => \inst4|port_comp[2]~5_combout\,
	sload => VCC,
	ena => \inst4|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|port_comp\(2));

-- Location: LCCOMB_X23_Y20_N22
\inst4|port_comp[1]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|port_comp[1]~6_combout\ = !\inst4|count\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|count\(1),
	combout => \inst4|port_comp[1]~6_combout\);

-- Location: LCFF_X24_Y19_N15
\inst4|port_comp[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|ALT_INV_freq_onehz~clkctrl_outclk\,
	sdata => \inst4|port_comp[1]~6_combout\,
	sload => VCC,
	ena => \inst4|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|port_comp\(1));

-- Location: LCCOMB_X24_Y19_N0
\inst9|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|LessThan0~1_cout\ = CARRY((\inst5|mod_aux\(1) & \inst4|port_comp\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|mod_aux\(1),
	datab => \inst4|port_comp\(1),
	datad => VCC,
	cout => \inst9|LessThan0~1_cout\);

-- Location: LCCOMB_X24_Y19_N2
\inst9|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|LessThan0~3_cout\ = CARRY((\inst5|mod_aux\(2) & (!\inst4|port_comp\(2) & !\inst9|LessThan0~1_cout\)) # (!\inst5|mod_aux\(2) & ((!\inst9|LessThan0~1_cout\) # (!\inst4|port_comp\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|mod_aux\(2),
	datab => \inst4|port_comp\(2),
	datad => VCC,
	cin => \inst9|LessThan0~1_cout\,
	cout => \inst9|LessThan0~3_cout\);

-- Location: LCCOMB_X24_Y19_N4
\inst9|LessThan0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|LessThan0~5_cout\ = CARRY((\inst5|mod_aux\(3) & ((\inst4|port_comp\(3)) # (!\inst9|LessThan0~3_cout\))) # (!\inst5|mod_aux\(3) & (\inst4|port_comp\(3) & !\inst9|LessThan0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|mod_aux\(3),
	datab => \inst4|port_comp\(3),
	datad => VCC,
	cin => \inst9|LessThan0~3_cout\,
	cout => \inst9|LessThan0~5_cout\);

-- Location: LCCOMB_X24_Y19_N6
\inst9|LessThan0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|LessThan0~7_cout\ = CARRY((\inst4|port_comp\(4) & (!\inst5|mod_aux\(4) & !\inst9|LessThan0~5_cout\)) # (!\inst4|port_comp\(4) & ((!\inst9|LessThan0~5_cout\) # (!\inst5|mod_aux\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|port_comp\(4),
	datab => \inst5|mod_aux\(4),
	datad => VCC,
	cin => \inst9|LessThan0~5_cout\,
	cout => \inst9|LessThan0~7_cout\);

-- Location: LCCOMB_X24_Y19_N8
\inst9|LessThan0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|LessThan0~9_cout\ = CARRY((\inst5|mod_aux\(5) & ((\inst4|port_comp\(5)) # (!\inst9|LessThan0~7_cout\))) # (!\inst5|mod_aux\(5) & (\inst4|port_comp\(5) & !\inst9|LessThan0~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|mod_aux\(5),
	datab => \inst4|port_comp\(5),
	datad => VCC,
	cin => \inst9|LessThan0~7_cout\,
	cout => \inst9|LessThan0~9_cout\);

-- Location: LCCOMB_X24_Y19_N10
\inst9|LessThan0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|LessThan0~11_cout\ = CARRY((\inst4|port_comp\(6) & (!\inst5|mod_aux\(6) & !\inst9|LessThan0~9_cout\)) # (!\inst4|port_comp\(6) & ((!\inst9|LessThan0~9_cout\) # (!\inst5|mod_aux\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|port_comp\(6),
	datab => \inst5|mod_aux\(6),
	datad => VCC,
	cin => \inst9|LessThan0~9_cout\,
	cout => \inst9|LessThan0~11_cout\);

-- Location: LCCOMB_X24_Y19_N12
\inst9|LessThan0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|LessThan0~12_combout\ = (\inst5|mod_aux\(7) & (!\inst9|LessThan0~11_cout\ & \inst4|port_comp\(7))) # (!\inst5|mod_aux\(7) & ((\inst4|port_comp\(7)) # (!\inst9|LessThan0~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|mod_aux\(7),
	datad => \inst4|port_comp\(7),
	cin => \inst9|LessThan0~11_cout\,
	combout => \inst9|LessThan0~12_combout\);

-- Location: LCCOMB_X26_Y18_N28
\inst7|start~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|start~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst7|start~feeder_combout\);

-- Location: LCFF_X24_Y19_N13
\inst7|pwm_old3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|altpll_component|ALT_INV__clk0~clkctrl_outclk\,
	datain => \inst9|LessThan0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|pwm_old3~regout\);

-- Location: LCCOMB_X23_Y19_N18
\inst7|process_2:var1~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|process_2:var1~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst7|process_2:var1~feeder_combout\);

-- Location: LCFF_X23_Y19_N19
\inst7|process_2:var1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|altpll_component|ALT_INV__clk0~clkctrl_outclk\,
	datain => \inst7|process_2:var1~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|process_2:var1~regout\);

-- Location: LCCOMB_X25_Y19_N22
\inst7|contador2[6]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|contador2[6]~0_combout\ = (\inst7|estouro~regout\ & (\inst7|pwm_old3~regout\ & (\inst7|process_2:var1~regout\ & !\inst9|LessThan0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|estouro~regout\,
	datab => \inst7|pwm_old3~regout\,
	datac => \inst7|process_2:var1~regout\,
	datad => \inst9|LessThan0~12_combout\,
	combout => \inst7|contador2[6]~0_combout\);

-- Location: LCFF_X26_Y18_N29
\inst7|start\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|altpll_component|ALT_INV__clk0~clkctrl_outclk\,
	datain => \inst7|start~feeder_combout\,
	ena => \inst7|contador2[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|start~regout\);

-- Location: LCCOMB_X26_Y20_N0
\inst7|cont2[0]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|cont2[0]~16_combout\ = \inst7|cont2\(0) $ (VCC)
-- \inst7|cont2[0]~17\ = CARRY(\inst7|cont2\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|cont2\(0),
	datad => VCC,
	combout => \inst7|cont2[0]~16_combout\,
	cout => \inst7|cont2[0]~17\);

-- Location: LCCOMB_X25_Y19_N10
\inst7|contador2[6]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|contador2[6]~1_combout\ = (\inst7|pwm_old3~regout\ & (\inst7|process_2:var1~regout\ & !\inst9|LessThan0~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|pwm_old3~regout\,
	datac => \inst7|process_2:var1~regout\,
	datad => \inst9|LessThan0~12_combout\,
	combout => \inst7|contador2[6]~1_combout\);

-- Location: LCCOMB_X25_Y19_N4
\inst7|amostragem[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|amostragem[0]~5_combout\ = (\inst7|estouro~regout\ & (((\inst7|amostragem\(0))))) # (!\inst7|estouro~regout\ & ((\inst7|amostragem\(0) & ((\inst7|process_2~0_combout\) # (!\inst7|contador2[6]~1_combout\))) # (!\inst7|amostragem\(0) & 
-- ((\inst7|contador2[6]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|estouro~regout\,
	datab => \inst7|process_2~0_combout\,
	datac => \inst7|amostragem\(0),
	datad => \inst7|contador2[6]~1_combout\,
	combout => \inst7|amostragem[0]~5_combout\);

-- Location: LCFF_X25_Y19_N5
\inst7|amostragem[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|altpll_component|ALT_INV__clk0~clkctrl_outclk\,
	datain => \inst7|amostragem[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|amostragem\(0));

-- Location: LCCOMB_X25_Y19_N8
\inst7|Add5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Add5~0_combout\ = \inst7|amostragem\(2) $ (((\inst7|amostragem\(1) & !\inst7|amostragem\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|amostragem\(1),
	datab => \inst7|amostragem\(0),
	datac => \inst7|amostragem\(2),
	combout => \inst7|Add5~0_combout\);

-- Location: LCCOMB_X25_Y19_N12
\inst7|estouro~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|estouro~0_combout\ = (\inst7|contador2[6]~1_combout\ & (\inst7|process_2:var1~regout\ & ((\inst7|process_2~2_combout\)))) # (!\inst7|contador2[6]~1_combout\ & ((\inst7|estouro~regout\) # ((\inst7|process_2:var1~regout\ & 
-- \inst7|process_2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|contador2[6]~1_combout\,
	datab => \inst7|process_2:var1~regout\,
	datac => \inst7|estouro~regout\,
	datad => \inst7|process_2~2_combout\,
	combout => \inst7|estouro~0_combout\);

-- Location: LCFF_X25_Y19_N13
\inst7|estouro\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|altpll_component|ALT_INV__clk0~clkctrl_outclk\,
	datain => \inst7|estouro~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|estouro~regout\);

-- Location: LCCOMB_X24_Y19_N28
\inst7|process_2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|process_2~1_combout\ = (\inst7|pwm_old3~regout\ & (!\inst7|estouro~regout\ & !\inst9|LessThan0~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|pwm_old3~regout\,
	datac => \inst7|estouro~regout\,
	datad => \inst9|LessThan0~12_combout\,
	combout => \inst7|process_2~1_combout\);

-- Location: LCCOMB_X25_Y19_N6
\inst7|amostragem[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|amostragem[1]~1_combout\ = (\inst7|process_2:var1~regout\ & (\inst7|process_2~1_combout\ & ((!\inst7|amostragem\(0)) # (!\inst7|process_2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|process_2~0_combout\,
	datab => \inst7|amostragem\(0),
	datac => \inst7|process_2:var1~regout\,
	datad => \inst7|process_2~1_combout\,
	combout => \inst7|amostragem[1]~1_combout\);

-- Location: LCCOMB_X25_Y19_N14
\inst7|amostragem[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|amostragem[2]~3_combout\ = (\inst7|amostragem[1]~1_combout\ & (!\inst7|amostragem~0_combout\ & (\inst7|Add5~0_combout\))) # (!\inst7|amostragem[1]~1_combout\ & (((\inst7|amostragem\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|amostragem~0_combout\,
	datab => \inst7|Add5~0_combout\,
	datac => \inst7|amostragem\(2),
	datad => \inst7|amostragem[1]~1_combout\,
	combout => \inst7|amostragem[2]~3_combout\);

-- Location: LCFF_X25_Y19_N15
\inst7|amostragem[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|altpll_component|ALT_INV__clk0~clkctrl_outclk\,
	datain => \inst7|amostragem[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|amostragem\(2));

-- Location: LCCOMB_X25_Y19_N2
\inst7|Add5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Add5~1_combout\ = \inst7|amostragem\(3) $ (((\inst7|amostragem\(1) & (\inst7|amostragem\(2) & !\inst7|amostragem\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|amostragem\(1),
	datab => \inst7|amostragem\(2),
	datac => \inst7|amostragem\(0),
	datad => \inst7|amostragem\(3),
	combout => \inst7|Add5~1_combout\);

-- Location: LCCOMB_X25_Y19_N28
\inst7|amostragem[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|amostragem[3]~4_combout\ = (\inst7|amostragem[1]~1_combout\ & (!\inst7|amostragem~0_combout\ & (\inst7|Add5~1_combout\))) # (!\inst7|amostragem[1]~1_combout\ & (((\inst7|amostragem\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|amostragem~0_combout\,
	datab => \inst7|Add5~1_combout\,
	datac => \inst7|amostragem\(3),
	datad => \inst7|amostragem[1]~1_combout\,
	combout => \inst7|amostragem[3]~4_combout\);

-- Location: LCFF_X25_Y19_N29
\inst7|amostragem[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|altpll_component|ALT_INV__clk0~clkctrl_outclk\,
	datain => \inst7|amostragem[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|amostragem\(3));

-- Location: LCCOMB_X25_Y19_N30
\inst7|process_2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|process_2~0_combout\ = (!\inst7|amostragem\(1) & (!\inst7|amostragem\(3) & !\inst7|amostragem\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|amostragem\(1),
	datab => \inst7|amostragem\(3),
	datac => \inst7|amostragem\(2),
	combout => \inst7|process_2~0_combout\);

-- Location: LCCOMB_X24_Y19_N14
\inst7|process_2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|process_2~2_combout\ = (!\inst7|amostragem\(0) & (\inst7|process_2~0_combout\ & \inst7|process_2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|amostragem\(0),
	datab => \inst7|process_2~0_combout\,
	datad => \inst7|process_2~1_combout\,
	combout => \inst7|process_2~2_combout\);

-- Location: LCCOMB_X25_Y19_N20
\inst7|cont2[0]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|cont2[0]~20_combout\ = (!\inst9|LessThan0~12_combout\ & (\inst7|pwm_old3~regout\ & !\inst7|process_2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|LessThan0~12_combout\,
	datac => \inst7|pwm_old3~regout\,
	datad => \inst7|process_2~2_combout\,
	combout => \inst7|cont2[0]~20_combout\);

-- Location: LCCOMB_X25_Y19_N18
\inst7|cont2[6]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|cont2[6]~21_combout\ = (\inst7|process_2:var1~regout\ & ((\inst7|estouro~regout\) # (\inst7|process_2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|estouro~regout\,
	datac => \inst7|process_2:var1~regout\,
	datad => \inst7|process_2~2_combout\,
	combout => \inst7|cont2[6]~21_combout\);

-- Location: LCFF_X26_Y20_N1
\inst7|cont2[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|altpll_component|ALT_INV__clk0~clkctrl_outclk\,
	datain => \inst7|cont2[0]~16_combout\,
	sclr => \inst7|cont2[0]~20_combout\,
	ena => \inst7|cont2[6]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|cont2\(0));

-- Location: LCCOMB_X26_Y20_N2
\inst7|cont2[1]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|cont2[1]~18_combout\ = (\inst7|cont2\(1) & (!\inst7|cont2[0]~17\)) # (!\inst7|cont2\(1) & ((\inst7|cont2[0]~17\) # (GND)))
-- \inst7|cont2[1]~19\ = CARRY((!\inst7|cont2[0]~17\) # (!\inst7|cont2\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|cont2\(1),
	datad => VCC,
	cin => \inst7|cont2[0]~17\,
	combout => \inst7|cont2[1]~18_combout\,
	cout => \inst7|cont2[1]~19\);

-- Location: LCFF_X26_Y20_N3
\inst7|cont2[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|altpll_component|ALT_INV__clk0~clkctrl_outclk\,
	datain => \inst7|cont2[1]~18_combout\,
	sclr => \inst7|cont2[0]~20_combout\,
	ena => \inst7|cont2[6]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|cont2\(1));

-- Location: LCCOMB_X26_Y20_N4
\inst7|cont2[2]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|cont2[2]~22_combout\ = (\inst7|cont2\(2) & (\inst7|cont2[1]~19\ $ (GND))) # (!\inst7|cont2\(2) & (!\inst7|cont2[1]~19\ & VCC))
-- \inst7|cont2[2]~23\ = CARRY((\inst7|cont2\(2) & !\inst7|cont2[1]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|cont2\(2),
	datad => VCC,
	cin => \inst7|cont2[1]~19\,
	combout => \inst7|cont2[2]~22_combout\,
	cout => \inst7|cont2[2]~23\);

-- Location: LCFF_X26_Y20_N5
\inst7|cont2[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|altpll_component|ALT_INV__clk0~clkctrl_outclk\,
	datain => \inst7|cont2[2]~22_combout\,
	sclr => \inst7|cont2[0]~20_combout\,
	ena => \inst7|cont2[6]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|cont2\(2));

-- Location: LCCOMB_X26_Y20_N6
\inst7|cont2[3]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|cont2[3]~24_combout\ = (\inst7|cont2\(3) & (!\inst7|cont2[2]~23\)) # (!\inst7|cont2\(3) & ((\inst7|cont2[2]~23\) # (GND)))
-- \inst7|cont2[3]~25\ = CARRY((!\inst7|cont2[2]~23\) # (!\inst7|cont2\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|cont2\(3),
	datad => VCC,
	cin => \inst7|cont2[2]~23\,
	combout => \inst7|cont2[3]~24_combout\,
	cout => \inst7|cont2[3]~25\);

-- Location: LCCOMB_X26_Y20_N8
\inst7|cont2[4]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|cont2[4]~26_combout\ = (\inst7|cont2\(4) & (\inst7|cont2[3]~25\ $ (GND))) # (!\inst7|cont2\(4) & (!\inst7|cont2[3]~25\ & VCC))
-- \inst7|cont2[4]~27\ = CARRY((\inst7|cont2\(4) & !\inst7|cont2[3]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|cont2\(4),
	datad => VCC,
	cin => \inst7|cont2[3]~25\,
	combout => \inst7|cont2[4]~26_combout\,
	cout => \inst7|cont2[4]~27\);

-- Location: LCFF_X26_Y20_N9
\inst7|cont2[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|altpll_component|ALT_INV__clk0~clkctrl_outclk\,
	datain => \inst7|cont2[4]~26_combout\,
	sclr => \inst7|cont2[0]~20_combout\,
	ena => \inst7|cont2[6]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|cont2\(4));

-- Location: LCCOMB_X26_Y20_N10
\inst7|cont2[5]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|cont2[5]~28_combout\ = (\inst7|cont2\(5) & (!\inst7|cont2[4]~27\)) # (!\inst7|cont2\(5) & ((\inst7|cont2[4]~27\) # (GND)))
-- \inst7|cont2[5]~29\ = CARRY((!\inst7|cont2[4]~27\) # (!\inst7|cont2\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|cont2\(5),
	datad => VCC,
	cin => \inst7|cont2[4]~27\,
	combout => \inst7|cont2[5]~28_combout\,
	cout => \inst7|cont2[5]~29\);

-- Location: LCCOMB_X26_Y20_N12
\inst7|cont2[6]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|cont2[6]~30_combout\ = (\inst7|cont2\(6) & (\inst7|cont2[5]~29\ $ (GND))) # (!\inst7|cont2\(6) & (!\inst7|cont2[5]~29\ & VCC))
-- \inst7|cont2[6]~31\ = CARRY((\inst7|cont2\(6) & !\inst7|cont2[5]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|cont2\(6),
	datad => VCC,
	cin => \inst7|cont2[5]~29\,
	combout => \inst7|cont2[6]~30_combout\,
	cout => \inst7|cont2[6]~31\);

-- Location: LCCOMB_X26_Y20_N14
\inst7|cont2[7]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|cont2[7]~32_combout\ = (\inst7|cont2\(7) & (!\inst7|cont2[6]~31\)) # (!\inst7|cont2\(7) & ((\inst7|cont2[6]~31\) # (GND)))
-- \inst7|cont2[7]~33\ = CARRY((!\inst7|cont2[6]~31\) # (!\inst7|cont2\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|cont2\(7),
	datad => VCC,
	cin => \inst7|cont2[6]~31\,
	combout => \inst7|cont2[7]~32_combout\,
	cout => \inst7|cont2[7]~33\);

-- Location: LCFF_X26_Y20_N15
\inst7|cont2[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|altpll_component|ALT_INV__clk0~clkctrl_outclk\,
	datain => \inst7|cont2[7]~32_combout\,
	sclr => \inst7|cont2[0]~20_combout\,
	ena => \inst7|cont2[6]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|cont2\(7));

-- Location: LCCOMB_X26_Y20_N16
\inst7|cont2[8]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|cont2[8]~34_combout\ = (\inst7|cont2\(8) & (\inst7|cont2[7]~33\ $ (GND))) # (!\inst7|cont2\(8) & (!\inst7|cont2[7]~33\ & VCC))
-- \inst7|cont2[8]~35\ = CARRY((\inst7|cont2\(8) & !\inst7|cont2[7]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|cont2\(8),
	datad => VCC,
	cin => \inst7|cont2[7]~33\,
	combout => \inst7|cont2[8]~34_combout\,
	cout => \inst7|cont2[8]~35\);

-- Location: LCCOMB_X26_Y20_N18
\inst7|cont2[9]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|cont2[9]~36_combout\ = (\inst7|cont2\(9) & (!\inst7|cont2[8]~35\)) # (!\inst7|cont2\(9) & ((\inst7|cont2[8]~35\) # (GND)))
-- \inst7|cont2[9]~37\ = CARRY((!\inst7|cont2[8]~35\) # (!\inst7|cont2\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|cont2\(9),
	datad => VCC,
	cin => \inst7|cont2[8]~35\,
	combout => \inst7|cont2[9]~36_combout\,
	cout => \inst7|cont2[9]~37\);

-- Location: LCFF_X26_Y20_N19
\inst7|cont2[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|altpll_component|ALT_INV__clk0~clkctrl_outclk\,
	datain => \inst7|cont2[9]~36_combout\,
	sclr => \inst7|cont2[0]~20_combout\,
	ena => \inst7|cont2[6]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|cont2\(9));

-- Location: LCCOMB_X26_Y20_N20
\inst7|cont2[10]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|cont2[10]~38_combout\ = (\inst7|cont2\(10) & (\inst7|cont2[9]~37\ $ (GND))) # (!\inst7|cont2\(10) & (!\inst7|cont2[9]~37\ & VCC))
-- \inst7|cont2[10]~39\ = CARRY((\inst7|cont2\(10) & !\inst7|cont2[9]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|cont2\(10),
	datad => VCC,
	cin => \inst7|cont2[9]~37\,
	combout => \inst7|cont2[10]~38_combout\,
	cout => \inst7|cont2[10]~39\);

-- Location: LCCOMB_X26_Y20_N22
\inst7|cont2[11]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|cont2[11]~40_combout\ = (\inst7|cont2\(11) & (!\inst7|cont2[10]~39\)) # (!\inst7|cont2\(11) & ((\inst7|cont2[10]~39\) # (GND)))
-- \inst7|cont2[11]~41\ = CARRY((!\inst7|cont2[10]~39\) # (!\inst7|cont2\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|cont2\(11),
	datad => VCC,
	cin => \inst7|cont2[10]~39\,
	combout => \inst7|cont2[11]~40_combout\,
	cout => \inst7|cont2[11]~41\);

-- Location: LCFF_X26_Y20_N23
\inst7|cont2[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|altpll_component|ALT_INV__clk0~clkctrl_outclk\,
	datain => \inst7|cont2[11]~40_combout\,
	sclr => \inst7|cont2[0]~20_combout\,
	ena => \inst7|cont2[6]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|cont2\(11));

-- Location: LCCOMB_X26_Y20_N24
\inst7|cont2[12]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|cont2[12]~42_combout\ = (\inst7|cont2\(12) & (\inst7|cont2[11]~41\ $ (GND))) # (!\inst7|cont2\(12) & (!\inst7|cont2[11]~41\ & VCC))
-- \inst7|cont2[12]~43\ = CARRY((\inst7|cont2\(12) & !\inst7|cont2[11]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|cont2\(12),
	datad => VCC,
	cin => \inst7|cont2[11]~41\,
	combout => \inst7|cont2[12]~42_combout\,
	cout => \inst7|cont2[12]~43\);

-- Location: LCCOMB_X26_Y20_N26
\inst7|cont2[13]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|cont2[13]~44_combout\ = (\inst7|cont2\(13) & (!\inst7|cont2[12]~43\)) # (!\inst7|cont2\(13) & ((\inst7|cont2[12]~43\) # (GND)))
-- \inst7|cont2[13]~45\ = CARRY((!\inst7|cont2[12]~43\) # (!\inst7|cont2\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|cont2\(13),
	datad => VCC,
	cin => \inst7|cont2[12]~43\,
	combout => \inst7|cont2[13]~44_combout\,
	cout => \inst7|cont2[13]~45\);

-- Location: LCFF_X26_Y20_N27
\inst7|cont2[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|altpll_component|ALT_INV__clk0~clkctrl_outclk\,
	datain => \inst7|cont2[13]~44_combout\,
	sclr => \inst7|cont2[0]~20_combout\,
	ena => \inst7|cont2[6]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|cont2\(13));

-- Location: LCCOMB_X26_Y20_N28
\inst7|cont2[14]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|cont2[14]~46_combout\ = (\inst7|cont2\(14) & (\inst7|cont2[13]~45\ $ (GND))) # (!\inst7|cont2\(14) & (!\inst7|cont2[13]~45\ & VCC))
-- \inst7|cont2[14]~47\ = CARRY((\inst7|cont2\(14) & !\inst7|cont2[13]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|cont2\(14),
	datad => VCC,
	cin => \inst7|cont2[13]~45\,
	combout => \inst7|cont2[14]~46_combout\,
	cout => \inst7|cont2[14]~47\);

-- Location: LCFF_X26_Y20_N29
\inst7|cont2[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|altpll_component|ALT_INV__clk0~clkctrl_outclk\,
	datain => \inst7|cont2[14]~46_combout\,
	sclr => \inst7|cont2[0]~20_combout\,
	ena => \inst7|cont2[6]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|cont2\(14));

-- Location: LCCOMB_X26_Y20_N30
\inst7|cont2[15]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|cont2[15]~48_combout\ = \inst7|cont2[14]~47\ $ (\inst7|cont2\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst7|cont2\(15),
	cin => \inst7|cont2[14]~47\,
	combout => \inst7|cont2[15]~48_combout\);

-- Location: LCFF_X26_Y20_N31
\inst7|cont2[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|altpll_component|ALT_INV__clk0~clkctrl_outclk\,
	datain => \inst7|cont2[15]~48_combout\,
	sclr => \inst7|cont2[0]~20_combout\,
	ena => \inst7|cont2[6]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|cont2\(15));

-- Location: LCFF_X26_Y18_N15
\inst7|contador2[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|altpll_component|ALT_INV__clk0~clkctrl_outclk\,
	sdata => \inst7|cont2\(15),
	sload => VCC,
	ena => \inst7|contador2[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|contador2\(15));

-- Location: LCFF_X26_Y20_N25
\inst7|cont2[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|altpll_component|ALT_INV__clk0~clkctrl_outclk\,
	datain => \inst7|cont2[12]~42_combout\,
	sclr => \inst7|cont2[0]~20_combout\,
	ena => \inst7|cont2[6]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|cont2\(12));

-- Location: LCFF_X26_Y18_N9
\inst7|contador2[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|altpll_component|ALT_INV__clk0~clkctrl_outclk\,
	sdata => \inst7|cont2\(12),
	sload => VCC,
	ena => \inst7|contador2[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|contador2\(12));

-- Location: LCFF_X26_Y20_N21
\inst7|cont2[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|altpll_component|ALT_INV__clk0~clkctrl_outclk\,
	datain => \inst7|cont2[10]~38_combout\,
	sclr => \inst7|cont2[0]~20_combout\,
	ena => \inst7|cont2[6]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|cont2\(10));

-- Location: LCFF_X26_Y18_N5
\inst7|contador2[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|altpll_component|ALT_INV__clk0~clkctrl_outclk\,
	sdata => \inst7|cont2\(10),
	sload => VCC,
	ena => \inst7|contador2[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|contador2\(10));

-- Location: LCFF_X26_Y18_N3
\inst7|contador2[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|altpll_component|ALT_INV__clk0~clkctrl_outclk\,
	sdata => \inst7|cont2\(9),
	sload => VCC,
	ena => \inst7|contador2[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|contador2\(9));

-- Location: LCFF_X26_Y20_N17
\inst7|cont2[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|altpll_component|ALT_INV__clk0~clkctrl_outclk\,
	datain => \inst7|cont2[8]~34_combout\,
	sclr => \inst7|cont2[0]~20_combout\,
	ena => \inst7|cont2[6]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|cont2\(8));

-- Location: LCFF_X26_Y18_N1
\inst7|contador2[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|altpll_component|ALT_INV__clk0~clkctrl_outclk\,
	sdata => \inst7|cont2\(8),
	sload => VCC,
	ena => \inst7|contador2[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|contador2\(8));

-- Location: LCFF_X26_Y19_N31
\inst7|contador2[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|altpll_component|ALT_INV__clk0~clkctrl_outclk\,
	sdata => \inst7|cont2\(7),
	sload => VCC,
	ena => \inst7|contador2[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|contador2\(7));

-- Location: LCFF_X26_Y20_N13
\inst7|cont2[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|altpll_component|ALT_INV__clk0~clkctrl_outclk\,
	datain => \inst7|cont2[6]~30_combout\,
	sclr => \inst7|cont2[0]~20_combout\,
	ena => \inst7|cont2[6]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|cont2\(6));

-- Location: LCFF_X26_Y19_N29
\inst7|contador2[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|altpll_component|ALT_INV__clk0~clkctrl_outclk\,
	sdata => \inst7|cont2\(6),
	sload => VCC,
	ena => \inst7|contador2[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|contador2\(6));

-- Location: LCFF_X26_Y20_N11
\inst7|cont2[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|altpll_component|ALT_INV__clk0~clkctrl_outclk\,
	datain => \inst7|cont2[5]~28_combout\,
	sclr => \inst7|cont2[0]~20_combout\,
	ena => \inst7|cont2[6]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|cont2\(5));

-- Location: LCFF_X26_Y19_N27
\inst7|contador2[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|altpll_component|ALT_INV__clk0~clkctrl_outclk\,
	sdata => \inst7|cont2\(5),
	sload => VCC,
	ena => \inst7|contador2[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|contador2\(5));

-- Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\switch1~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_switch1,
	combout => \switch1~combout\);

-- Location: LCCOMB_X26_Y19_N0
\inst7|Add3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Add3~0_combout\ = \inst7|dt_var_sub\(0) $ (VCC)
-- \inst7|Add3~1\ = CARRY(\inst7|dt_var_sub\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|dt_var_sub\(0),
	datad => VCC,
	combout => \inst7|Add3~0_combout\,
	cout => \inst7|Add3~1\);

-- Location: LCCOMB_X26_Y19_N8
\inst7|Add3~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Add3~8_combout\ = ((\inst7|dt_var_sub\(4) $ (\switch1~combout\ $ (!\inst7|Add3~7\)))) # (GND)
-- \inst7|Add3~9\ = CARRY((\inst7|dt_var_sub\(4) & (!\switch1~combout\ & !\inst7|Add3~7\)) # (!\inst7|dt_var_sub\(4) & ((!\inst7|Add3~7\) # (!\switch1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|dt_var_sub\(4),
	datab => \switch1~combout\,
	datad => VCC,
	cin => \inst7|Add3~7\,
	combout => \inst7|Add3~8_combout\,
	cout => \inst7|Add3~9\);

-- Location: LCCOMB_X26_Y19_N10
\inst7|Add3~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Add3~10_combout\ = (\inst7|dt_var_sub\(5) & ((\switch1~combout\ & ((\inst7|Add3~9\) # (GND))) # (!\switch1~combout\ & (!\inst7|Add3~9\)))) # (!\inst7|dt_var_sub\(5) & ((\switch1~combout\ & (!\inst7|Add3~9\)) # (!\switch1~combout\ & (\inst7|Add3~9\ 
-- & VCC))))
-- \inst7|Add3~11\ = CARRY((\inst7|dt_var_sub\(5) & ((\switch1~combout\) # (!\inst7|Add3~9\))) # (!\inst7|dt_var_sub\(5) & (\switch1~combout\ & !\inst7|Add3~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|dt_var_sub\(5),
	datab => \switch1~combout\,
	datad => VCC,
	cin => \inst7|Add3~9\,
	combout => \inst7|Add3~10_combout\,
	cout => \inst7|Add3~11\);

-- Location: LCCOMB_X26_Y19_N12
\inst7|Add3~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Add3~12_combout\ = \inst7|dt_var_sub\(6) $ (\switch1~combout\ $ (\inst7|Add3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|dt_var_sub\(6),
	datab => \switch1~combout\,
	cin => \inst7|Add3~11\,
	combout => \inst7|Add3~12_combout\);

-- Location: LCFF_X26_Y19_N13
\inst7|dt_var_sub[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_key1~combout\,
	datain => \inst7|Add3~12_combout\,
	ena => \inst7|dt_var_sub[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|dt_var_sub\(6));

-- Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ativador~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_ativador,
	combout => \ativador~combout\);

-- Location: LCCOMB_X31_Y19_N8
\inst7|dt_var_sub[5]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|dt_var_sub[5]~6_combout\ = !\inst7|Add3~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|Add3~10_combout\,
	combout => \inst7|dt_var_sub[5]~6_combout\);

-- Location: LCFF_X31_Y19_N9
\inst7|dt_var_sub[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_key1~combout\,
	datain => \inst7|dt_var_sub[5]~6_combout\,
	ena => \inst7|dt_var_sub[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|dt_var_sub\(5));

-- Location: LCCOMB_X31_Y19_N4
\inst7|dt_var_sub[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|dt_var_sub[0]~0_combout\ = (\inst7|dt_var_sub\(5) & \inst7|dt_var_sub\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|dt_var_sub\(5),
	datad => \inst7|dt_var_sub\(4),
	combout => \inst7|dt_var_sub[0]~0_combout\);

-- Location: LCCOMB_X26_Y19_N2
\inst7|Add3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Add3~2_combout\ = (\inst7|dt_var_sub\(1) & ((\switch1~combout\ & (!\inst7|Add3~1\)) # (!\switch1~combout\ & (\inst7|Add3~1\ & VCC)))) # (!\inst7|dt_var_sub\(1) & ((\switch1~combout\ & ((\inst7|Add3~1\) # (GND))) # (!\switch1~combout\ & 
-- (!\inst7|Add3~1\))))
-- \inst7|Add3~3\ = CARRY((\inst7|dt_var_sub\(1) & (\switch1~combout\ & !\inst7|Add3~1\)) # (!\inst7|dt_var_sub\(1) & ((\switch1~combout\) # (!\inst7|Add3~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|dt_var_sub\(1),
	datab => \switch1~combout\,
	datad => VCC,
	cin => \inst7|Add3~1\,
	combout => \inst7|Add3~2_combout\,
	cout => \inst7|Add3~3\);

-- Location: LCFF_X26_Y19_N3
\inst7|dt_var_sub[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_key1~combout\,
	datain => \inst7|Add3~2_combout\,
	ena => \inst7|dt_var_sub[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|dt_var_sub\(1));

-- Location: LCCOMB_X31_Y19_N6
\inst7|dt_var_sub[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|dt_var_sub[0]~1_combout\ = (\inst7|dt_var_sub\(2) & (\inst7|dt_var_sub\(6) & ((!\inst7|dt_var_sub\(1)) # (!\inst7|dt_var_sub\(0))))) # (!\inst7|dt_var_sub\(2) & (!\inst7|dt_var_sub\(6) & ((\inst7|dt_var_sub\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|dt_var_sub\(2),
	datab => \inst7|dt_var_sub\(6),
	datac => \inst7|dt_var_sub\(0),
	datad => \inst7|dt_var_sub\(1),
	combout => \inst7|dt_var_sub[0]~1_combout\);

-- Location: LCCOMB_X31_Y19_N0
\inst7|dt_var_sub[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|dt_var_sub[0]~2_combout\ = (\inst7|dt_var_sub[0]~0_combout\ & ((\inst7|dt_var_sub[0]~1_combout\ & ((\inst7|dt_var_sub\(6)))) # (!\inst7|dt_var_sub[0]~1_combout\ & (\inst7|dt_var_sub\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|dt_var_sub\(3),
	datab => \inst7|dt_var_sub\(6),
	datac => \inst7|dt_var_sub[0]~0_combout\,
	datad => \inst7|dt_var_sub[0]~1_combout\,
	combout => \inst7|dt_var_sub[0]~2_combout\);

-- Location: LCCOMB_X31_Y19_N10
\inst7|dt_var_sub[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|dt_var_sub[0]~3_combout\ = (!\ativador~combout\ & ((\switch1~combout\ & ((\inst7|dt_var_sub[0]~2_combout\) # (!\inst7|dt_var_sub\(6)))) # (!\switch1~combout\ & ((\inst7|dt_var_sub\(6)) # (!\inst7|dt_var_sub[0]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch1~combout\,
	datab => \inst7|dt_var_sub\(6),
	datac => \ativador~combout\,
	datad => \inst7|dt_var_sub[0]~2_combout\,
	combout => \inst7|dt_var_sub[0]~3_combout\);

-- Location: LCFF_X26_Y19_N1
\inst7|dt_var_sub[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_key1~combout\,
	datain => \inst7|Add3~0_combout\,
	ena => \inst7|dt_var_sub[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|dt_var_sub\(0));

-- Location: LCCOMB_X26_Y19_N4
\inst7|Add3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Add3~4_combout\ = ((\inst7|dt_var_sub\(2) $ (\switch1~combout\ $ (\inst7|Add3~3\)))) # (GND)
-- \inst7|Add3~5\ = CARRY((\inst7|dt_var_sub\(2) & (\switch1~combout\ & !\inst7|Add3~3\)) # (!\inst7|dt_var_sub\(2) & ((\switch1~combout\) # (!\inst7|Add3~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|dt_var_sub\(2),
	datab => \switch1~combout\,
	datad => VCC,
	cin => \inst7|Add3~3\,
	combout => \inst7|Add3~4_combout\,
	cout => \inst7|Add3~5\);

-- Location: LCCOMB_X31_Y19_N2
\inst7|dt_var_sub[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|dt_var_sub[4]~7_combout\ = !\inst7|Add3~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst7|Add3~8_combout\,
	combout => \inst7|dt_var_sub[4]~7_combout\);

-- Location: LCFF_X31_Y19_N3
\inst7|dt_var_sub[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_key1~combout\,
	datain => \inst7|dt_var_sub[4]~7_combout\,
	ena => \inst7|dt_var_sub[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|dt_var_sub\(4));

-- Location: LCFF_X26_Y20_N7
\inst7|cont2[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|altpll_component|ALT_INV__clk0~clkctrl_outclk\,
	datain => \inst7|cont2[3]~24_combout\,
	sclr => \inst7|cont2[0]~20_combout\,
	ena => \inst7|cont2[6]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|cont2\(3));

-- Location: LCFF_X26_Y19_N23
\inst7|contador2[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|altpll_component|ALT_INV__clk0~clkctrl_outclk\,
	sdata => \inst7|cont2\(3),
	sload => VCC,
	ena => \inst7|contador2[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|contador2\(3));

-- Location: LCCOMB_X31_Y19_N14
\inst7|dt_var_sub[2]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|dt_var_sub[2]~5_combout\ = !\inst7|Add3~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst7|Add3~4_combout\,
	combout => \inst7|dt_var_sub[2]~5_combout\);

-- Location: LCFF_X31_Y19_N15
\inst7|dt_var_sub[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_key1~combout\,
	datain => \inst7|dt_var_sub[2]~5_combout\,
	ena => \inst7|dt_var_sub[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|dt_var_sub\(2));

-- Location: LCCOMB_X26_Y19_N16
\inst7|Add8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Add8~0_combout\ = (\inst7|contador2\(0) & ((GND) # (!\inst7|dt_var_sub\(0)))) # (!\inst7|contador2\(0) & (\inst7|dt_var_sub\(0) $ (GND)))
-- \inst7|Add8~1\ = CARRY((\inst7|contador2\(0)) # (!\inst7|dt_var_sub\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|contador2\(0),
	datab => \inst7|dt_var_sub\(0),
	datad => VCC,
	combout => \inst7|Add8~0_combout\,
	cout => \inst7|Add8~1\);

-- Location: LCCOMB_X26_Y19_N22
\inst7|Add8~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Add8~6_combout\ = (\inst7|dt_var_sub\(3) & ((\inst7|contador2\(3) & (\inst7|Add8~5\ & VCC)) # (!\inst7|contador2\(3) & (!\inst7|Add8~5\)))) # (!\inst7|dt_var_sub\(3) & ((\inst7|contador2\(3) & (!\inst7|Add8~5\)) # (!\inst7|contador2\(3) & 
-- ((\inst7|Add8~5\) # (GND)))))
-- \inst7|Add8~7\ = CARRY((\inst7|dt_var_sub\(3) & (!\inst7|contador2\(3) & !\inst7|Add8~5\)) # (!\inst7|dt_var_sub\(3) & ((!\inst7|Add8~5\) # (!\inst7|contador2\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|dt_var_sub\(3),
	datab => \inst7|contador2\(3),
	datad => VCC,
	cin => \inst7|Add8~5\,
	combout => \inst7|Add8~6_combout\,
	cout => \inst7|Add8~7\);

-- Location: LCCOMB_X26_Y19_N24
\inst7|Add8~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Add8~8_combout\ = ((\inst7|contador2\(4) $ (\inst7|dt_var_sub\(4) $ (!\inst7|Add8~7\)))) # (GND)
-- \inst7|Add8~9\ = CARRY((\inst7|contador2\(4) & ((\inst7|dt_var_sub\(4)) # (!\inst7|Add8~7\))) # (!\inst7|contador2\(4) & (\inst7|dt_var_sub\(4) & !\inst7|Add8~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|contador2\(4),
	datab => \inst7|dt_var_sub\(4),
	datad => VCC,
	cin => \inst7|Add8~7\,
	combout => \inst7|Add8~8_combout\,
	cout => \inst7|Add8~9\);

-- Location: LCCOMB_X26_Y19_N26
\inst7|Add8~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Add8~10_combout\ = (\inst7|dt_var_sub\(5) & ((\inst7|contador2\(5) & (\inst7|Add8~9\ & VCC)) # (!\inst7|contador2\(5) & (!\inst7|Add8~9\)))) # (!\inst7|dt_var_sub\(5) & ((\inst7|contador2\(5) & (!\inst7|Add8~9\)) # (!\inst7|contador2\(5) & 
-- ((\inst7|Add8~9\) # (GND)))))
-- \inst7|Add8~11\ = CARRY((\inst7|dt_var_sub\(5) & (!\inst7|contador2\(5) & !\inst7|Add8~9\)) # (!\inst7|dt_var_sub\(5) & ((!\inst7|Add8~9\) # (!\inst7|contador2\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|dt_var_sub\(5),
	datab => \inst7|contador2\(5),
	datad => VCC,
	cin => \inst7|Add8~9\,
	combout => \inst7|Add8~10_combout\,
	cout => \inst7|Add8~11\);

-- Location: LCCOMB_X26_Y19_N28
\inst7|Add8~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Add8~12_combout\ = ((\inst7|dt_var_sub\(6) $ (\inst7|contador2\(6) $ (\inst7|Add8~11\)))) # (GND)
-- \inst7|Add8~13\ = CARRY((\inst7|dt_var_sub\(6) & (\inst7|contador2\(6) & !\inst7|Add8~11\)) # (!\inst7|dt_var_sub\(6) & ((\inst7|contador2\(6)) # (!\inst7|Add8~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|dt_var_sub\(6),
	datab => \inst7|contador2\(6),
	datad => VCC,
	cin => \inst7|Add8~11\,
	combout => \inst7|Add8~12_combout\,
	cout => \inst7|Add8~13\);

-- Location: LCCOMB_X26_Y18_N0
\inst7|Add8~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Add8~16_combout\ = (\inst7|contador2\(8) & ((GND) # (!\inst7|Add8~15\))) # (!\inst7|contador2\(8) & (\inst7|Add8~15\ $ (GND)))
-- \inst7|Add8~17\ = CARRY((\inst7|contador2\(8)) # (!\inst7|Add8~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|contador2\(8),
	datad => VCC,
	cin => \inst7|Add8~15\,
	combout => \inst7|Add8~16_combout\,
	cout => \inst7|Add8~17\);

-- Location: LCCOMB_X26_Y18_N4
\inst7|Add8~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Add8~20_combout\ = (\inst7|contador2\(10) & ((GND) # (!\inst7|Add8~19\))) # (!\inst7|contador2\(10) & (\inst7|Add8~19\ $ (GND)))
-- \inst7|Add8~21\ = CARRY((\inst7|contador2\(10)) # (!\inst7|Add8~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|contador2\(10),
	datad => VCC,
	cin => \inst7|Add8~19\,
	combout => \inst7|Add8~20_combout\,
	cout => \inst7|Add8~21\);

-- Location: LCCOMB_X26_Y18_N6
\inst7|Add8~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Add8~22_combout\ = (\inst7|contador2\(11) & (\inst7|Add8~21\ & VCC)) # (!\inst7|contador2\(11) & (!\inst7|Add8~21\))
-- \inst7|Add8~23\ = CARRY((!\inst7|contador2\(11) & !\inst7|Add8~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|contador2\(11),
	datad => VCC,
	cin => \inst7|Add8~21\,
	combout => \inst7|Add8~22_combout\,
	cout => \inst7|Add8~23\);

-- Location: LCCOMB_X26_Y18_N16
\inst7|Add8~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Add8~32_combout\ = !\inst7|Add8~31\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst7|Add8~31\,
	combout => \inst7|Add8~32_combout\);

-- Location: LCCOMB_X27_Y18_N2
\inst7|Add9~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Add9~20_combout\ = (\inst7|Add8~20_combout\ & ((GND) # (!\inst7|Add9~19\))) # (!\inst7|Add8~20_combout\ & (\inst7|Add9~19\ $ (GND)))
-- \inst7|Add9~21\ = CARRY((\inst7|Add8~20_combout\) # (!\inst7|Add9~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Add8~20_combout\,
	datad => VCC,
	cin => \inst7|Add9~19\,
	combout => \inst7|Add9~20_combout\,
	cout => \inst7|Add9~21\);

-- Location: LCCOMB_X27_Y18_N4
\inst7|Add9~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Add9~22_combout\ = (\inst7|Add8~22_combout\ & (\inst7|Add9~21\ & VCC)) # (!\inst7|Add8~22_combout\ & (!\inst7|Add9~21\))
-- \inst7|Add9~23\ = CARRY((!\inst7|Add8~22_combout\ & !\inst7|Add9~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Add8~22_combout\,
	datad => VCC,
	cin => \inst7|Add9~21\,
	combout => \inst7|Add9~22_combout\,
	cout => \inst7|Add9~23\);

-- Location: LCCOMB_X27_Y18_N6
\inst7|Add9~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Add9~24_combout\ = (\inst7|Add8~24_combout\ & ((GND) # (!\inst7|Add9~23\))) # (!\inst7|Add8~24_combout\ & (\inst7|Add9~23\ $ (GND)))
-- \inst7|Add9~25\ = CARRY((\inst7|Add8~24_combout\) # (!\inst7|Add9~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add8~24_combout\,
	datad => VCC,
	cin => \inst7|Add9~23\,
	combout => \inst7|Add9~24_combout\,
	cout => \inst7|Add9~25\);

-- Location: LCCOMB_X27_Y18_N8
\inst7|Add9~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Add9~26_combout\ = (\inst7|Add8~26_combout\ & (\inst7|Add9~25\ & VCC)) # (!\inst7|Add8~26_combout\ & (!\inst7|Add9~25\))
-- \inst7|Add9~27\ = CARRY((!\inst7|Add8~26_combout\ & !\inst7|Add9~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add8~26_combout\,
	datad => VCC,
	cin => \inst7|Add9~25\,
	combout => \inst7|Add9~26_combout\,
	cout => \inst7|Add9~27\);

-- Location: LCCOMB_X27_Y18_N12
\inst7|Add9~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Add9~30_combout\ = (\inst7|Add8~30_combout\ & (\inst7|Add9~29\ & VCC)) # (!\inst7|Add8~30_combout\ & (!\inst7|Add9~29\))
-- \inst7|Add9~31\ = CARRY((!\inst7|Add8~30_combout\ & !\inst7|Add9~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add8~30_combout\,
	datad => VCC,
	cin => \inst7|Add9~29\,
	combout => \inst7|Add9~30_combout\,
	cout => \inst7|Add9~31\);

-- Location: LCCOMB_X27_Y18_N14
\inst7|Add9~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Add9~32_combout\ = (\inst7|Add8~32_combout\ & (\inst7|Add9~31\ $ (GND))) # (!\inst7|Add8~32_combout\ & ((GND) # (!\inst7|Add9~31\)))
-- \inst7|Add9~33\ = CARRY((!\inst7|Add9~31\) # (!\inst7|Add8~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Add8~32_combout\,
	datad => VCC,
	cin => \inst7|Add9~31\,
	combout => \inst7|Add9~32_combout\,
	cout => \inst7|Add9~33\);

-- Location: LCCOMB_X27_Y18_N16
\inst7|Add9~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Add9~34_combout\ = (\inst7|Add8~32_combout\ & (!\inst7|Add9~33\)) # (!\inst7|Add8~32_combout\ & (\inst7|Add9~33\ & VCC))
-- \inst7|Add9~35\ = CARRY((\inst7|Add8~32_combout\ & !\inst7|Add9~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Add8~32_combout\,
	datad => VCC,
	cin => \inst7|Add9~33\,
	combout => \inst7|Add9~34_combout\,
	cout => \inst7|Add9~35\);

-- Location: LCCOMB_X27_Y18_N18
\inst7|Add9~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Add9~36_combout\ = \inst7|Add9~35\ $ (!\inst7|Add8~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst7|Add8~32_combout\,
	cin => \inst7|Add9~35\,
	combout => \inst7|Add9~36_combout\);

-- Location: LCCOMB_X27_Y18_N24
\inst7|Equal5~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Equal5~5_combout\ = (!\inst7|Add9~32_combout\ & (!\inst7|Add9~34_combout\ & !\inst7|Add9~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Add9~32_combout\,
	datac => \inst7|Add9~34_combout\,
	datad => \inst7|Add9~36_combout\,
	combout => \inst7|Equal5~5_combout\);

-- Location: LCCOMB_X25_Y18_N0
\inst7|process_3:cont[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|process_3:cont[0]~1_combout\ = \inst7|process_3:cont[0]~regout\ $ (VCC)
-- \inst7|process_3:cont[0]~2\ = CARRY(\inst7|process_3:cont[0]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|process_3:cont[0]~regout\,
	datad => VCC,
	combout => \inst7|process_3:cont[0]~1_combout\,
	cout => \inst7|process_3:cont[0]~2\);

-- Location: LCCOMB_X25_Y18_N22
\inst7|process_3:cont[11]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|process_3:cont[11]~1_combout\ = (\inst7|process_3:cont[11]~regout\ & (!\inst7|process_3:cont[10]~2\)) # (!\inst7|process_3:cont[11]~regout\ & ((\inst7|process_3:cont[10]~2\) # (GND)))
-- \inst7|process_3:cont[11]~2\ = CARRY((!\inst7|process_3:cont[10]~2\) # (!\inst7|process_3:cont[11]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|process_3:cont[11]~regout\,
	datad => VCC,
	cin => \inst7|process_3:cont[10]~2\,
	combout => \inst7|process_3:cont[11]~1_combout\,
	cout => \inst7|process_3:cont[11]~2\);

-- Location: LCCOMB_X25_Y18_N24
\inst7|process_3:cont[12]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|process_3:cont[12]~1_combout\ = (\inst7|process_3:cont[12]~regout\ & (\inst7|process_3:cont[11]~2\ $ (GND))) # (!\inst7|process_3:cont[12]~regout\ & (!\inst7|process_3:cont[11]~2\ & VCC))
-- \inst7|process_3:cont[12]~2\ = CARRY((\inst7|process_3:cont[12]~regout\ & !\inst7|process_3:cont[11]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|process_3:cont[12]~regout\,
	datad => VCC,
	cin => \inst7|process_3:cont[11]~2\,
	combout => \inst7|process_3:cont[12]~1_combout\,
	cout => \inst7|process_3:cont[12]~2\);

-- Location: LCCOMB_X25_Y18_N26
\inst7|process_3:cont[13]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|process_3:cont[13]~1_combout\ = (\inst7|process_3:cont[13]~regout\ & (!\inst7|process_3:cont[12]~2\)) # (!\inst7|process_3:cont[13]~regout\ & ((\inst7|process_3:cont[12]~2\) # (GND)))
-- \inst7|process_3:cont[13]~2\ = CARRY((!\inst7|process_3:cont[12]~2\) # (!\inst7|process_3:cont[13]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|process_3:cont[13]~regout\,
	datad => VCC,
	cin => \inst7|process_3:cont[12]~2\,
	combout => \inst7|process_3:cont[13]~1_combout\,
	cout => \inst7|process_3:cont[13]~2\);

-- Location: LCFF_X25_Y18_N27
\inst7|process_3:cont[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|altpll_component|ALT_INV__clk0~clkctrl_outclk\,
	datain => \inst7|process_3:cont[13]~1_combout\,
	sclr => \inst7|Equal5~11_combout\,
	ena => \inst7|process_3:cont[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|process_3:cont[13]~regout\);

-- Location: LCCOMB_X25_Y18_N28
\inst7|process_3:cont[14]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|process_3:cont[14]~1_combout\ = (\inst7|process_3:cont[14]~regout\ & (\inst7|process_3:cont[13]~2\ $ (GND))) # (!\inst7|process_3:cont[14]~regout\ & (!\inst7|process_3:cont[13]~2\ & VCC))
-- \inst7|process_3:cont[14]~2\ = CARRY((\inst7|process_3:cont[14]~regout\ & !\inst7|process_3:cont[13]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|process_3:cont[14]~regout\,
	datad => VCC,
	cin => \inst7|process_3:cont[13]~2\,
	combout => \inst7|process_3:cont[14]~1_combout\,
	cout => \inst7|process_3:cont[14]~2\);

-- Location: LCFF_X25_Y18_N29
\inst7|process_3:cont[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|altpll_component|ALT_INV__clk0~clkctrl_outclk\,
	datain => \inst7|process_3:cont[14]~1_combout\,
	sclr => \inst7|Equal5~11_combout\,
	ena => \inst7|process_3:cont[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|process_3:cont[14]~regout\);

-- Location: LCCOMB_X25_Y18_N30
\inst7|process_3:cont[15]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|process_3:cont[15]~2_combout\ = \inst7|process_3:cont[14]~2\ $ (\inst7|process_3:cont[15]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst7|process_3:cont[15]~regout\,
	cin => \inst7|process_3:cont[14]~2\,
	combout => \inst7|process_3:cont[15]~2_combout\);

-- Location: LCFF_X25_Y18_N31
\inst7|process_3:cont[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|altpll_component|ALT_INV__clk0~clkctrl_outclk\,
	datain => \inst7|process_3:cont[15]~2_combout\,
	sclr => \inst7|Equal5~11_combout\,
	ena => \inst7|process_3:cont[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|process_3:cont[15]~regout\);

-- Location: LCCOMB_X27_Y18_N20
\inst7|process_3:cont[5]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|process_3:cont[5]~7_combout\ = (!\inst7|process_3:cont[15]~regout\ & !\inst7|process_3:cont[14]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|process_3:cont[15]~regout\,
	datad => \inst7|process_3:cont[14]~regout\,
	combout => \inst7|process_3:cont[5]~7_combout\);

-- Location: LCCOMB_X29_Y19_N0
\inst7|cont1[0]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|cont1[0]~16_combout\ = \inst7|cont1\(0) $ (VCC)
-- \inst7|cont1[0]~17\ = CARRY(\inst7|cont1\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|cont1\(0),
	datad => VCC,
	combout => \inst7|cont1[0]~16_combout\,
	cout => \inst7|cont1[0]~17\);

-- Location: LCCOMB_X24_Y19_N22
\inst7|cont1[13]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|cont1[13]~20_combout\ = (!\inst7|process_2~2_combout\ & ((\inst9|LessThan0~12_combout\) # ((\inst7|pwm_old3~regout\) # (!\inst7|estouro~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|LessThan0~12_combout\,
	datab => \inst7|estouro~regout\,
	datac => \inst7|pwm_old3~regout\,
	datad => \inst7|process_2~2_combout\,
	combout => \inst7|cont1[13]~20_combout\);

-- Location: LCCOMB_X24_Y19_N18
\inst7|cont1[6]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|cont1[6]~21_combout\ = (\inst7|estouro~regout\ & (\inst7|pwm_old3~regout\ $ (!\inst9|LessThan0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|estouro~regout\,
	datab => \inst7|pwm_old3~regout\,
	datad => \inst9|LessThan0~12_combout\,
	combout => \inst7|cont1[6]~21_combout\);

-- Location: LCCOMB_X24_Y19_N24
\inst7|cont1[6]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|cont1[6]~22_combout\ = (\inst7|process_2:var1~regout\ & ((\inst7|cont1[6]~21_combout\) # (\inst7|process_2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|process_2:var1~regout\,
	datab => \inst7|cont1[6]~21_combout\,
	datad => \inst7|process_2~2_combout\,
	combout => \inst7|cont1[6]~22_combout\);

-- Location: LCFF_X29_Y19_N1
\inst7|cont1[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|altpll_component|ALT_INV__clk0~clkctrl_outclk\,
	datain => \inst7|cont1[0]~16_combout\,
	sclr => \inst7|cont1[13]~20_combout\,
	ena => \inst7|cont1[6]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|cont1\(0));

-- Location: LCCOMB_X29_Y19_N2
\inst7|cont1[1]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|cont1[1]~18_combout\ = (\inst7|cont1\(1) & (!\inst7|cont1[0]~17\)) # (!\inst7|cont1\(1) & ((\inst7|cont1[0]~17\) # (GND)))
-- \inst7|cont1[1]~19\ = CARRY((!\inst7|cont1[0]~17\) # (!\inst7|cont1\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|cont1\(1),
	datad => VCC,
	cin => \inst7|cont1[0]~17\,
	combout => \inst7|cont1[1]~18_combout\,
	cout => \inst7|cont1[1]~19\);

-- Location: LCFF_X29_Y19_N3
\inst7|cont1[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|altpll_component|ALT_INV__clk0~clkctrl_outclk\,
	datain => \inst7|cont1[1]~18_combout\,
	sclr => \inst7|cont1[13]~20_combout\,
	ena => \inst7|cont1[6]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|cont1\(1));

-- Location: LCCOMB_X24_Y19_N26
\inst7|contador1[6]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|contador1[6]~0_combout\ = (\inst7|process_2:var1~regout\ & (!\inst7|pwm_old3~regout\ & (\inst7|estouro~regout\ & \inst9|LessThan0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|process_2:var1~regout\,
	datab => \inst7|pwm_old3~regout\,
	datac => \inst7|estouro~regout\,
	datad => \inst9|LessThan0~12_combout\,
	combout => \inst7|contador1[6]~0_combout\);

-- Location: LCFF_X31_Y19_N19
\inst7|contador1[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|altpll_component|ALT_INV__clk0~clkctrl_outclk\,
	sdata => \inst7|cont1\(1),
	sload => VCC,
	ena => \inst7|contador1[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|contador1\(1));

-- Location: LCCOMB_X31_Y19_N18
\inst7|Add10~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Add10~2_combout\ = (\inst7|dt_var_sub\(1) & ((\inst7|contador1\(1) & (!\inst7|Add10~1\)) # (!\inst7|contador1\(1) & ((\inst7|Add10~1\) # (GND))))) # (!\inst7|dt_var_sub\(1) & ((\inst7|contador1\(1) & (\inst7|Add10~1\ & VCC)) # 
-- (!\inst7|contador1\(1) & (!\inst7|Add10~1\))))
-- \inst7|Add10~3\ = CARRY((\inst7|dt_var_sub\(1) & ((!\inst7|Add10~1\) # (!\inst7|contador1\(1)))) # (!\inst7|dt_var_sub\(1) & (!\inst7|contador1\(1) & !\inst7|Add10~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|dt_var_sub\(1),
	datab => \inst7|contador1\(1),
	datad => VCC,
	cin => \inst7|Add10~1\,
	combout => \inst7|Add10~2_combout\,
	cout => \inst7|Add10~3\);

-- Location: LCCOMB_X30_Y19_N14
\inst7|Add11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Add11~0_combout\ = \inst7|Add10~0_combout\ $ (VCC)
-- \inst7|Add11~1\ = CARRY(\inst7|Add10~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add10~0_combout\,
	datad => VCC,
	combout => \inst7|Add11~0_combout\,
	cout => \inst7|Add11~1\);

-- Location: LCCOMB_X30_Y19_N16
\inst7|Add11~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Add11~2_combout\ = (\inst7|Add10~2_combout\ & (\inst7|Add11~1\ & VCC)) # (!\inst7|Add10~2_combout\ & (!\inst7|Add11~1\))
-- \inst7|Add11~3\ = CARRY((!\inst7|Add10~2_combout\ & !\inst7|Add11~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Add10~2_combout\,
	datad => VCC,
	cin => \inst7|Add11~1\,
	combout => \inst7|Add11~2_combout\,
	cout => \inst7|Add11~3\);

-- Location: LCCOMB_X30_Y19_N8
\inst7|Equal6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Equal6~0_combout\ = (\inst7|process_3:cont[1]~regout\ & (\inst7|Add11~2_combout\ & (\inst7|process_3:cont[0]~regout\ $ (!\inst7|Add11~0_combout\)))) # (!\inst7|process_3:cont[1]~regout\ & (!\inst7|Add11~2_combout\ & 
-- (\inst7|process_3:cont[0]~regout\ $ (!\inst7|Add11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|process_3:cont[1]~regout\,
	datab => \inst7|process_3:cont[0]~regout\,
	datac => \inst7|Add11~2_combout\,
	datad => \inst7|Add11~0_combout\,
	combout => \inst7|Equal6~0_combout\);

-- Location: LCCOMB_X25_Y18_N10
\inst7|process_3:cont[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|process_3:cont[5]~8_combout\ = (\inst7|process_3:cont[5]~regout\ & (!\inst7|process_3:cont[4]~2\)) # (!\inst7|process_3:cont[5]~regout\ & ((\inst7|process_3:cont[4]~2\) # (GND)))
-- \inst7|process_3:cont[5]~9\ = CARRY((!\inst7|process_3:cont[4]~2\) # (!\inst7|process_3:cont[5]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|process_3:cont[5]~regout\,
	datad => VCC,
	cin => \inst7|process_3:cont[4]~2\,
	combout => \inst7|process_3:cont[5]~8_combout\,
	cout => \inst7|process_3:cont[5]~9\);

-- Location: LCFF_X25_Y18_N11
\inst7|process_3:cont[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|altpll_component|ALT_INV__clk0~clkctrl_outclk\,
	datain => \inst7|process_3:cont[5]~8_combout\,
	sclr => \inst7|Equal5~11_combout\,
	ena => \inst7|process_3:cont[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|process_3:cont[5]~regout\);

-- Location: LCCOMB_X29_Y19_N4
\inst7|cont1[2]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|cont1[2]~23_combout\ = (\inst7|cont1\(2) & (\inst7|cont1[1]~19\ $ (GND))) # (!\inst7|cont1\(2) & (!\inst7|cont1[1]~19\ & VCC))
-- \inst7|cont1[2]~24\ = CARRY((\inst7|cont1\(2) & !\inst7|cont1[1]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|cont1\(2),
	datad => VCC,
	cin => \inst7|cont1[1]~19\,
	combout => \inst7|cont1[2]~23_combout\,
	cout => \inst7|cont1[2]~24\);

-- Location: LCFF_X29_Y19_N5
\inst7|cont1[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|altpll_component|ALT_INV__clk0~clkctrl_outclk\,
	datain => \inst7|cont1[2]~23_combout\,
	sclr => \inst7|cont1[13]~20_combout\,
	ena => \inst7|cont1[6]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|cont1\(2));

-- Location: LCCOMB_X29_Y19_N6
\inst7|cont1[3]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|cont1[3]~25_combout\ = (\inst7|cont1\(3) & (!\inst7|cont1[2]~24\)) # (!\inst7|cont1\(3) & ((\inst7|cont1[2]~24\) # (GND)))
-- \inst7|cont1[3]~26\ = CARRY((!\inst7|cont1[2]~24\) # (!\inst7|cont1\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|cont1\(3),
	datad => VCC,
	cin => \inst7|cont1[2]~24\,
	combout => \inst7|cont1[3]~25_combout\,
	cout => \inst7|cont1[3]~26\);

-- Location: LCFF_X29_Y19_N7
\inst7|cont1[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|altpll_component|ALT_INV__clk0~clkctrl_outclk\,
	datain => \inst7|cont1[3]~25_combout\,
	sclr => \inst7|cont1[13]~20_combout\,
	ena => \inst7|cont1[6]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|cont1\(3));

-- Location: LCFF_X31_Y19_N23
\inst7|contador1[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|altpll_component|ALT_INV__clk0~clkctrl_outclk\,
	sdata => \inst7|cont1\(3),
	sload => VCC,
	ena => \inst7|contador1[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|contador1\(3));

-- Location: LCCOMB_X31_Y19_N20
\inst7|Add10~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Add10~4_combout\ = ((\inst7|contador1\(2) $ (\inst7|dt_var_sub\(2) $ (!\inst7|Add10~3\)))) # (GND)
-- \inst7|Add10~5\ = CARRY((\inst7|contador1\(2) & ((\inst7|dt_var_sub\(2)) # (!\inst7|Add10~3\))) # (!\inst7|contador1\(2) & (\inst7|dt_var_sub\(2) & !\inst7|Add10~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|contador1\(2),
	datab => \inst7|dt_var_sub\(2),
	datad => VCC,
	cin => \inst7|Add10~3\,
	combout => \inst7|Add10~4_combout\,
	cout => \inst7|Add10~5\);

-- Location: LCCOMB_X31_Y19_N22
\inst7|Add10~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Add10~6_combout\ = (\inst7|dt_var_sub\(3) & ((\inst7|contador1\(3) & (\inst7|Add10~5\ & VCC)) # (!\inst7|contador1\(3) & (!\inst7|Add10~5\)))) # (!\inst7|dt_var_sub\(3) & ((\inst7|contador1\(3) & (!\inst7|Add10~5\)) # (!\inst7|contador1\(3) & 
-- ((\inst7|Add10~5\) # (GND)))))
-- \inst7|Add10~7\ = CARRY((\inst7|dt_var_sub\(3) & (!\inst7|contador1\(3) & !\inst7|Add10~5\)) # (!\inst7|dt_var_sub\(3) & ((!\inst7|Add10~5\) # (!\inst7|contador1\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|dt_var_sub\(3),
	datab => \inst7|contador1\(3),
	datad => VCC,
	cin => \inst7|Add10~5\,
	combout => \inst7|Add10~6_combout\,
	cout => \inst7|Add10~7\);

-- Location: LCCOMB_X31_Y19_N24
\inst7|Add10~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Add10~8_combout\ = ((\inst7|contador1\(4) $ (\inst7|dt_var_sub\(4) $ (!\inst7|Add10~7\)))) # (GND)
-- \inst7|Add10~9\ = CARRY((\inst7|contador1\(4) & ((\inst7|dt_var_sub\(4)) # (!\inst7|Add10~7\))) # (!\inst7|contador1\(4) & (\inst7|dt_var_sub\(4) & !\inst7|Add10~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|contador1\(4),
	datab => \inst7|dt_var_sub\(4),
	datad => VCC,
	cin => \inst7|Add10~7\,
	combout => \inst7|Add10~8_combout\,
	cout => \inst7|Add10~9\);

-- Location: LCCOMB_X30_Y19_N22
\inst7|Add11~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Add11~8_combout\ = (\inst7|Add10~8_combout\ & ((GND) # (!\inst7|Add11~7\))) # (!\inst7|Add10~8_combout\ & (\inst7|Add11~7\ $ (GND)))
-- \inst7|Add11~9\ = CARRY((\inst7|Add10~8_combout\) # (!\inst7|Add11~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Add10~8_combout\,
	datad => VCC,
	cin => \inst7|Add11~7\,
	combout => \inst7|Add11~8_combout\,
	cout => \inst7|Add11~9\);

-- Location: LCCOMB_X30_Y19_N24
\inst7|Add11~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Add11~10_combout\ = (\inst7|Add10~10_combout\ & (\inst7|Add11~9\ & VCC)) # (!\inst7|Add10~10_combout\ & (!\inst7|Add11~9\))
-- \inst7|Add11~11\ = CARRY((!\inst7|Add10~10_combout\ & !\inst7|Add11~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add10~10_combout\,
	datad => VCC,
	cin => \inst7|Add11~9\,
	combout => \inst7|Add11~10_combout\,
	cout => \inst7|Add11~11\);

-- Location: LCCOMB_X30_Y19_N4
\inst7|Equal6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Equal6~2_combout\ = (\inst7|process_3:cont[4]~regout\ & (\inst7|Add11~8_combout\ & (\inst7|process_3:cont[5]~regout\ $ (!\inst7|Add11~10_combout\)))) # (!\inst7|process_3:cont[4]~regout\ & (!\inst7|Add11~8_combout\ & 
-- (\inst7|process_3:cont[5]~regout\ $ (!\inst7|Add11~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|process_3:cont[4]~regout\,
	datab => \inst7|process_3:cont[5]~regout\,
	datac => \inst7|Add11~10_combout\,
	datad => \inst7|Add11~8_combout\,
	combout => \inst7|Equal6~2_combout\);

-- Location: LCCOMB_X29_Y19_N8
\inst7|cont1[4]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|cont1[4]~27_combout\ = (\inst7|cont1\(4) & (\inst7|cont1[3]~26\ $ (GND))) # (!\inst7|cont1\(4) & (!\inst7|cont1[3]~26\ & VCC))
-- \inst7|cont1[4]~28\ = CARRY((\inst7|cont1\(4) & !\inst7|cont1[3]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|cont1\(4),
	datad => VCC,
	cin => \inst7|cont1[3]~26\,
	combout => \inst7|cont1[4]~27_combout\,
	cout => \inst7|cont1[4]~28\);

-- Location: LCFF_X29_Y19_N9
\inst7|cont1[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|altpll_component|ALT_INV__clk0~clkctrl_outclk\,
	datain => \inst7|cont1[4]~27_combout\,
	sclr => \inst7|cont1[13]~20_combout\,
	ena => \inst7|cont1[6]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|cont1\(4));

-- Location: LCCOMB_X29_Y19_N12
\inst7|cont1[6]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|cont1[6]~31_combout\ = (\inst7|cont1\(6) & (\inst7|cont1[5]~30\ $ (GND))) # (!\inst7|cont1\(6) & (!\inst7|cont1[5]~30\ & VCC))
-- \inst7|cont1[6]~32\ = CARRY((\inst7|cont1\(6) & !\inst7|cont1[5]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|cont1\(6),
	datad => VCC,
	cin => \inst7|cont1[5]~30\,
	combout => \inst7|cont1[6]~31_combout\,
	cout => \inst7|cont1[6]~32\);

-- Location: LCCOMB_X29_Y19_N14
\inst7|cont1[7]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|cont1[7]~33_combout\ = (\inst7|cont1\(7) & (!\inst7|cont1[6]~32\)) # (!\inst7|cont1\(7) & ((\inst7|cont1[6]~32\) # (GND)))
-- \inst7|cont1[7]~34\ = CARRY((!\inst7|cont1[6]~32\) # (!\inst7|cont1\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|cont1\(7),
	datad => VCC,
	cin => \inst7|cont1[6]~32\,
	combout => \inst7|cont1[7]~33_combout\,
	cout => \inst7|cont1[7]~34\);

-- Location: LCFF_X29_Y19_N15
\inst7|cont1[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|altpll_component|ALT_INV__clk0~clkctrl_outclk\,
	datain => \inst7|cont1[7]~33_combout\,
	sclr => \inst7|cont1[13]~20_combout\,
	ena => \inst7|cont1[6]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|cont1\(7));

-- Location: LCFF_X31_Y19_N31
\inst7|contador1[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|altpll_component|ALT_INV__clk0~clkctrl_outclk\,
	sdata => \inst7|cont1\(7),
	sload => VCC,
	ena => \inst7|contador1[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|contador1\(7));

-- Location: LCFF_X29_Y19_N13
\inst7|cont1[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|altpll_component|ALT_INV__clk0~clkctrl_outclk\,
	datain => \inst7|cont1[6]~31_combout\,
	sclr => \inst7|cont1[13]~20_combout\,
	ena => \inst7|cont1[6]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|cont1\(6));

-- Location: LCFF_X31_Y19_N29
\inst7|contador1[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|altpll_component|ALT_INV__clk0~clkctrl_outclk\,
	sdata => \inst7|cont1\(6),
	sload => VCC,
	ena => \inst7|contador1[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|contador1\(6));

-- Location: LCCOMB_X31_Y19_N28
\inst7|Add10~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Add10~12_combout\ = ((\inst7|dt_var_sub\(6) $ (\inst7|contador1\(6) $ (\inst7|Add10~11\)))) # (GND)
-- \inst7|Add10~13\ = CARRY((\inst7|dt_var_sub\(6) & (\inst7|contador1\(6) & !\inst7|Add10~11\)) # (!\inst7|dt_var_sub\(6) & ((\inst7|contador1\(6)) # (!\inst7|Add10~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|dt_var_sub\(6),
	datab => \inst7|contador1\(6),
	datad => VCC,
	cin => \inst7|Add10~11\,
	combout => \inst7|Add10~12_combout\,
	cout => \inst7|Add10~13\);

-- Location: LCCOMB_X31_Y19_N30
\inst7|Add10~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Add10~14_combout\ = (\inst7|contador1\(7) & (\inst7|Add10~13\ & VCC)) # (!\inst7|contador1\(7) & (!\inst7|Add10~13\))
-- \inst7|Add10~15\ = CARRY((!\inst7|contador1\(7) & !\inst7|Add10~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|contador1\(7),
	datad => VCC,
	cin => \inst7|Add10~13\,
	combout => \inst7|Add10~14_combout\,
	cout => \inst7|Add10~15\);

-- Location: LCCOMB_X30_Y19_N26
\inst7|Add11~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Add11~12_combout\ = (\inst7|Add10~12_combout\ & ((GND) # (!\inst7|Add11~11\))) # (!\inst7|Add10~12_combout\ & (\inst7|Add11~11\ $ (GND)))
-- \inst7|Add11~13\ = CARRY((\inst7|Add10~12_combout\) # (!\inst7|Add11~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Add10~12_combout\,
	datad => VCC,
	cin => \inst7|Add11~11\,
	combout => \inst7|Add11~12_combout\,
	cout => \inst7|Add11~13\);

-- Location: LCCOMB_X30_Y19_N28
\inst7|Add11~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Add11~14_combout\ = (\inst7|Add10~14_combout\ & (\inst7|Add11~13\ & VCC)) # (!\inst7|Add10~14_combout\ & (!\inst7|Add11~13\))
-- \inst7|Add11~15\ = CARRY((!\inst7|Add10~14_combout\ & !\inst7|Add11~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Add10~14_combout\,
	datad => VCC,
	cin => \inst7|Add11~13\,
	combout => \inst7|Add11~14_combout\,
	cout => \inst7|Add11~15\);

-- Location: LCCOMB_X30_Y19_N2
\inst7|Equal6~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Equal6~3_combout\ = (\inst7|process_3:cont[6]~regout\ & (\inst7|Add11~12_combout\ & (\inst7|Add11~14_combout\ $ (!\inst7|process_3:cont[7]~regout\)))) # (!\inst7|process_3:cont[6]~regout\ & (!\inst7|Add11~12_combout\ & (\inst7|Add11~14_combout\ $ 
-- (!\inst7|process_3:cont[7]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|process_3:cont[6]~regout\,
	datab => \inst7|Add11~14_combout\,
	datac => \inst7|process_3:cont[7]~regout\,
	datad => \inst7|Add11~12_combout\,
	combout => \inst7|Equal6~3_combout\);

-- Location: LCCOMB_X30_Y19_N12
\inst7|Equal6~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Equal6~4_combout\ = (\inst7|Equal6~1_combout\ & (\inst7|Equal6~0_combout\ & (\inst7|Equal6~2_combout\ & \inst7|Equal6~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Equal6~1_combout\,
	datab => \inst7|Equal6~0_combout\,
	datac => \inst7|Equal6~2_combout\,
	datad => \inst7|Equal6~3_combout\,
	combout => \inst7|Equal6~4_combout\);

-- Location: LCCOMB_X25_Y18_N6
\inst7|process_3:cont[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|process_3:cont[3]~1_combout\ = (\inst7|process_3:cont[3]~regout\ & (!\inst7|process_3:cont[2]~2\)) # (!\inst7|process_3:cont[3]~regout\ & ((\inst7|process_3:cont[2]~2\) # (GND)))
-- \inst7|process_3:cont[3]~2\ = CARRY((!\inst7|process_3:cont[2]~2\) # (!\inst7|process_3:cont[3]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|process_3:cont[3]~regout\,
	datad => VCC,
	cin => \inst7|process_3:cont[2]~2\,
	combout => \inst7|process_3:cont[3]~1_combout\,
	cout => \inst7|process_3:cont[3]~2\);

-- Location: LCFF_X25_Y18_N7
\inst7|process_3:cont[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|altpll_component|ALT_INV__clk0~clkctrl_outclk\,
	datain => \inst7|process_3:cont[3]~1_combout\,
	sclr => \inst7|Equal5~11_combout\,
	ena => \inst7|process_3:cont[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|process_3:cont[3]~regout\);

-- Location: LCCOMB_X25_Y19_N0
\inst7|process_3:cont[5]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|process_3:cont[5]~2_combout\ = (!\inst7|process_3:cont[5]~regout\ & (!\inst7|process_3:cont[3]~regout\ & (!\inst7|process_3:cont[2]~regout\ & !\inst7|process_3:cont[4]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|process_3:cont[5]~regout\,
	datab => \inst7|process_3:cont[3]~regout\,
	datac => \inst7|process_3:cont[2]~regout\,
	datad => \inst7|process_3:cont[4]~regout\,
	combout => \inst7|process_3:cont[5]~2_combout\);

-- Location: LCCOMB_X25_Y18_N20
\inst7|process_3:cont[10]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|process_3:cont[10]~1_combout\ = (\inst7|process_3:cont[10]~regout\ & (\inst7|process_3:cont[9]~2\ $ (GND))) # (!\inst7|process_3:cont[10]~regout\ & (!\inst7|process_3:cont[9]~2\ & VCC))
-- \inst7|process_3:cont[10]~2\ = CARRY((\inst7|process_3:cont[10]~regout\ & !\inst7|process_3:cont[9]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|process_3:cont[10]~regout\,
	datad => VCC,
	cin => \inst7|process_3:cont[9]~2\,
	combout => \inst7|process_3:cont[10]~1_combout\,
	cout => \inst7|process_3:cont[10]~2\);

-- Location: LCFF_X25_Y18_N21
\inst7|process_3:cont[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|altpll_component|ALT_INV__clk0~clkctrl_outclk\,
	datain => \inst7|process_3:cont[10]~1_combout\,
	sclr => \inst7|Equal5~11_combout\,
	ena => \inst7|process_3:cont[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|process_3:cont[10]~regout\);

-- Location: LCCOMB_X26_Y18_N22
\inst7|process_3:cont[5]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|process_3:cont[5]~4_combout\ = (!\inst7|process_3:cont[12]~regout\ & (!\inst7|process_3:cont[13]~regout\ & (!\inst7|process_3:cont[10]~regout\ & !\inst7|process_3:cont[11]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|process_3:cont[12]~regout\,
	datab => \inst7|process_3:cont[13]~regout\,
	datac => \inst7|process_3:cont[10]~regout\,
	datad => \inst7|process_3:cont[11]~regout\,
	combout => \inst7|process_3:cont[5]~4_combout\);

-- Location: LCCOMB_X24_Y19_N16
\inst7|process_3:cont[5]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|process_3:cont[5]~1_combout\ = (!\inst7|process_3:cont[1]~regout\ & (!\inst7|process_3:cont[0]~regout\ & ((\inst9|LessThan0~12_combout\) # (!\inst7|pwm_old3~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|process_3:cont[1]~regout\,
	datab => \inst7|process_3:cont[0]~regout\,
	datac => \inst7|pwm_old3~regout\,
	datad => \inst9|LessThan0~12_combout\,
	combout => \inst7|process_3:cont[5]~1_combout\);

-- Location: LCCOMB_X25_Y19_N26
\inst7|process_3:cont[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|process_3:cont[5]~5_combout\ = (\inst7|process_3:cont[5]~3_combout\ & (\inst7|process_3:cont[5]~2_combout\ & (\inst7|process_3:cont[5]~4_combout\ & \inst7|process_3:cont[5]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|process_3:cont[5]~3_combout\,
	datab => \inst7|process_3:cont[5]~2_combout\,
	datac => \inst7|process_3:cont[5]~4_combout\,
	datad => \inst7|process_3:cont[5]~1_combout\,
	combout => \inst7|process_3:cont[5]~5_combout\);

-- Location: LCCOMB_X30_Y19_N30
\inst7|Add11~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Add11~16_combout\ = (\inst7|Add10~16_combout\ & ((GND) # (!\inst7|Add11~15\))) # (!\inst7|Add10~16_combout\ & (\inst7|Add11~15\ $ (GND)))
-- \inst7|Add11~17\ = CARRY((\inst7|Add10~16_combout\) # (!\inst7|Add11~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add10~16_combout\,
	datad => VCC,
	cin => \inst7|Add11~15\,
	combout => \inst7|Add11~16_combout\,
	cout => \inst7|Add11~17\);

-- Location: LCCOMB_X30_Y18_N0
\inst7|Add11~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Add11~18_combout\ = (\inst7|Add10~18_combout\ & (\inst7|Add11~17\ & VCC)) # (!\inst7|Add10~18_combout\ & (!\inst7|Add11~17\))
-- \inst7|Add11~19\ = CARRY((!\inst7|Add10~18_combout\ & !\inst7|Add11~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add10~18_combout\,
	datad => VCC,
	cin => \inst7|Add11~17\,
	combout => \inst7|Add11~18_combout\,
	cout => \inst7|Add11~19\);

-- Location: LCCOMB_X30_Y18_N2
\inst7|Add11~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Add11~20_combout\ = (\inst7|Add10~20_combout\ & ((GND) # (!\inst7|Add11~19\))) # (!\inst7|Add10~20_combout\ & (\inst7|Add11~19\ $ (GND)))
-- \inst7|Add11~21\ = CARRY((\inst7|Add10~20_combout\) # (!\inst7|Add11~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add10~20_combout\,
	datad => VCC,
	cin => \inst7|Add11~19\,
	combout => \inst7|Add11~20_combout\,
	cout => \inst7|Add11~21\);

-- Location: LCCOMB_X30_Y18_N4
\inst7|Add11~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Add11~22_combout\ = (\inst7|Add10~22_combout\ & (\inst7|Add11~21\ & VCC)) # (!\inst7|Add10~22_combout\ & (!\inst7|Add11~21\))
-- \inst7|Add11~23\ = CARRY((!\inst7|Add10~22_combout\ & !\inst7|Add11~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add10~22_combout\,
	datad => VCC,
	cin => \inst7|Add11~21\,
	combout => \inst7|Add11~22_combout\,
	cout => \inst7|Add11~23\);

-- Location: LCCOMB_X30_Y18_N28
\inst7|Equal6~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Equal6~7_combout\ = (\inst7|process_3:cont[11]~regout\ & (\inst7|Add11~22_combout\ & (\inst7|process_3:cont[10]~regout\ $ (!\inst7|Add11~20_combout\)))) # (!\inst7|process_3:cont[11]~regout\ & (!\inst7|Add11~22_combout\ & 
-- (\inst7|process_3:cont[10]~regout\ $ (!\inst7|Add11~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|process_3:cont[11]~regout\,
	datab => \inst7|process_3:cont[10]~regout\,
	datac => \inst7|Add11~22_combout\,
	datad => \inst7|Add11~20_combout\,
	combout => \inst7|Equal6~7_combout\);

-- Location: LCCOMB_X30_Y18_N26
\inst7|Equal6~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Equal6~6_combout\ = (\inst7|process_3:cont[8]~regout\ & (\inst7|Add11~16_combout\ & (\inst7|process_3:cont[9]~regout\ $ (!\inst7|Add11~18_combout\)))) # (!\inst7|process_3:cont[8]~regout\ & (!\inst7|Add11~16_combout\ & 
-- (\inst7|process_3:cont[9]~regout\ $ (!\inst7|Add11~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|process_3:cont[8]~regout\,
	datab => \inst7|process_3:cont[9]~regout\,
	datac => \inst7|Add11~16_combout\,
	datad => \inst7|Add11~18_combout\,
	combout => \inst7|Equal6~6_combout\);

-- Location: LCCOMB_X29_Y19_N16
\inst7|cont1[8]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|cont1[8]~35_combout\ = (\inst7|cont1\(8) & (\inst7|cont1[7]~34\ $ (GND))) # (!\inst7|cont1\(8) & (!\inst7|cont1[7]~34\ & VCC))
-- \inst7|cont1[8]~36\ = CARRY((\inst7|cont1\(8) & !\inst7|cont1[7]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|cont1\(8),
	datad => VCC,
	cin => \inst7|cont1[7]~34\,
	combout => \inst7|cont1[8]~35_combout\,
	cout => \inst7|cont1[8]~36\);

-- Location: LCCOMB_X29_Y19_N18
\inst7|cont1[9]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|cont1[9]~37_combout\ = (\inst7|cont1\(9) & (!\inst7|cont1[8]~36\)) # (!\inst7|cont1\(9) & ((\inst7|cont1[8]~36\) # (GND)))
-- \inst7|cont1[9]~38\ = CARRY((!\inst7|cont1[8]~36\) # (!\inst7|cont1\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|cont1\(9),
	datad => VCC,
	cin => \inst7|cont1[8]~36\,
	combout => \inst7|cont1[9]~37_combout\,
	cout => \inst7|cont1[9]~38\);

-- Location: LCFF_X29_Y19_N19
\inst7|cont1[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|altpll_component|ALT_INV__clk0~clkctrl_outclk\,
	datain => \inst7|cont1[9]~37_combout\,
	sclr => \inst7|cont1[13]~20_combout\,
	ena => \inst7|cont1[6]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|cont1\(9));

-- Location: LCCOMB_X29_Y19_N20
\inst7|cont1[10]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|cont1[10]~39_combout\ = (\inst7|cont1\(10) & (\inst7|cont1[9]~38\ $ (GND))) # (!\inst7|cont1\(10) & (!\inst7|cont1[9]~38\ & VCC))
-- \inst7|cont1[10]~40\ = CARRY((\inst7|cont1\(10) & !\inst7|cont1[9]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|cont1\(10),
	datad => VCC,
	cin => \inst7|cont1[9]~38\,
	combout => \inst7|cont1[10]~39_combout\,
	cout => \inst7|cont1[10]~40\);

-- Location: LCCOMB_X29_Y19_N22
\inst7|cont1[11]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|cont1[11]~41_combout\ = (\inst7|cont1\(11) & (!\inst7|cont1[10]~40\)) # (!\inst7|cont1\(11) & ((\inst7|cont1[10]~40\) # (GND)))
-- \inst7|cont1[11]~42\ = CARRY((!\inst7|cont1[10]~40\) # (!\inst7|cont1\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|cont1\(11),
	datad => VCC,
	cin => \inst7|cont1[10]~40\,
	combout => \inst7|cont1[11]~41_combout\,
	cout => \inst7|cont1[11]~42\);

-- Location: LCFF_X29_Y19_N23
\inst7|cont1[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|altpll_component|ALT_INV__clk0~clkctrl_outclk\,
	datain => \inst7|cont1[11]~41_combout\,
	sclr => \inst7|cont1[13]~20_combout\,
	ena => \inst7|cont1[6]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|cont1\(11));

-- Location: LCFF_X29_Y19_N25
\inst7|cont1[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|altpll_component|ALT_INV__clk0~clkctrl_outclk\,
	datain => \inst7|cont1[12]~43_combout\,
	sclr => \inst7|cont1[13]~20_combout\,
	ena => \inst7|cont1[6]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|cont1\(12));

-- Location: LCFF_X31_Y18_N9
\inst7|contador1[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|altpll_component|ALT_INV__clk0~clkctrl_outclk\,
	sdata => \inst7|cont1\(12),
	sload => VCC,
	ena => \inst7|contador1[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|contador1\(12));

-- Location: LCFF_X29_Y19_N21
\inst7|cont1[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|altpll_component|ALT_INV__clk0~clkctrl_outclk\,
	datain => \inst7|cont1[10]~39_combout\,
	sclr => \inst7|cont1[13]~20_combout\,
	ena => \inst7|cont1[6]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|cont1\(10));

-- Location: LCFF_X31_Y18_N5
\inst7|contador1[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|altpll_component|ALT_INV__clk0~clkctrl_outclk\,
	sdata => \inst7|cont1\(10),
	sload => VCC,
	ena => \inst7|contador1[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|contador1\(10));

-- Location: LCFF_X31_Y18_N3
\inst7|contador1[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|altpll_component|ALT_INV__clk0~clkctrl_outclk\,
	sdata => \inst7|cont1\(9),
	sload => VCC,
	ena => \inst7|contador1[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|contador1\(9));

-- Location: LCFF_X29_Y19_N17
\inst7|cont1[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|altpll_component|ALT_INV__clk0~clkctrl_outclk\,
	datain => \inst7|cont1[8]~35_combout\,
	sclr => \inst7|cont1[13]~20_combout\,
	ena => \inst7|cont1[6]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|cont1\(8));

-- Location: LCFF_X31_Y18_N1
\inst7|contador1[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|altpll_component|ALT_INV__clk0~clkctrl_outclk\,
	sdata => \inst7|cont1\(8),
	sload => VCC,
	ena => \inst7|contador1[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|contador1\(8));

-- Location: LCCOMB_X31_Y18_N8
\inst7|Add10~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Add10~24_combout\ = (\inst7|contador1\(12) & ((GND) # (!\inst7|Add10~23\))) # (!\inst7|contador1\(12) & (\inst7|Add10~23\ $ (GND)))
-- \inst7|Add10~25\ = CARRY((\inst7|contador1\(12)) # (!\inst7|Add10~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|contador1\(12),
	datad => VCC,
	cin => \inst7|Add10~23\,
	combout => \inst7|Add10~24_combout\,
	cout => \inst7|Add10~25\);

-- Location: LCCOMB_X31_Y18_N10
\inst7|Add10~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Add10~26_combout\ = (\inst7|contador1\(13) & (\inst7|Add10~25\ & VCC)) # (!\inst7|contador1\(13) & (!\inst7|Add10~25\))
-- \inst7|Add10~27\ = CARRY((!\inst7|contador1\(13) & !\inst7|Add10~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|contador1\(13),
	datad => VCC,
	cin => \inst7|Add10~25\,
	combout => \inst7|Add10~26_combout\,
	cout => \inst7|Add10~27\);

-- Location: LCCOMB_X30_Y18_N24
\inst7|Equal6~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Equal6~9_combout\ = (\inst7|Add11~30_combout\ & (\inst7|process_3:cont[15]~regout\ & (\inst7|process_3:cont[14]~regout\ $ (!\inst7|Add11~28_combout\)))) # (!\inst7|Add11~30_combout\ & (!\inst7|process_3:cont[15]~regout\ & 
-- (\inst7|process_3:cont[14]~regout\ $ (!\inst7|Add11~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add11~30_combout\,
	datab => \inst7|process_3:cont[14]~regout\,
	datac => \inst7|process_3:cont[15]~regout\,
	datad => \inst7|Add11~28_combout\,
	combout => \inst7|Equal6~9_combout\);

-- Location: LCCOMB_X26_Y18_N26
\inst7|Equal6~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Equal6~10_combout\ = (\inst7|Equal6~8_combout\ & (\inst7|Equal6~7_combout\ & (\inst7|Equal6~6_combout\ & \inst7|Equal6~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Equal6~8_combout\,
	datab => \inst7|Equal6~7_combout\,
	datac => \inst7|Equal6~6_combout\,
	datad => \inst7|Equal6~9_combout\,
	combout => \inst7|Equal6~10_combout\);

-- Location: LCCOMB_X26_Y18_N20
\inst7|process_3:cont[5]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|process_3:cont[5]~6_combout\ = (\inst7|process_3:cont[5]~5_combout\ & (((!\inst7|Equal6~10_combout\) # (!\inst7|Equal6~4_combout\)) # (!\inst7|Equal6~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Equal6~5_combout\,
	datab => \inst7|Equal6~4_combout\,
	datac => \inst7|process_3:cont[5]~5_combout\,
	datad => \inst7|Equal6~10_combout\,
	combout => \inst7|process_3:cont[5]~6_combout\);

-- Location: LCCOMB_X26_Y18_N30
\inst7|process_3:cont[15]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|process_3:cont[15]~1_combout\ = (\inst7|start~regout\ & (((\inst7|Equal5~11_combout\) # (!\inst7|process_3:cont[5]~6_combout\)) # (!\inst7|process_3:cont[5]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|start~regout\,
	datab => \inst7|process_3:cont[5]~7_combout\,
	datac => \inst7|process_3:cont[5]~6_combout\,
	datad => \inst7|Equal5~11_combout\,
	combout => \inst7|process_3:cont[15]~1_combout\);

-- Location: LCFF_X25_Y18_N1
\inst7|process_3:cont[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|altpll_component|ALT_INV__clk0~clkctrl_outclk\,
	datain => \inst7|process_3:cont[0]~1_combout\,
	sclr => \inst7|Equal5~11_combout\,
	ena => \inst7|process_3:cont[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|process_3:cont[0]~regout\);

-- Location: LCCOMB_X25_Y18_N2
\inst7|process_3:cont[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|process_3:cont[1]~1_combout\ = (\inst7|process_3:cont[1]~regout\ & (!\inst7|process_3:cont[0]~2\)) # (!\inst7|process_3:cont[1]~regout\ & ((\inst7|process_3:cont[0]~2\) # (GND)))
-- \inst7|process_3:cont[1]~2\ = CARRY((!\inst7|process_3:cont[0]~2\) # (!\inst7|process_3:cont[1]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|process_3:cont[1]~regout\,
	datad => VCC,
	cin => \inst7|process_3:cont[0]~2\,
	combout => \inst7|process_3:cont[1]~1_combout\,
	cout => \inst7|process_3:cont[1]~2\);

-- Location: LCFF_X25_Y18_N3
\inst7|process_3:cont[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|altpll_component|ALT_INV__clk0~clkctrl_outclk\,
	datain => \inst7|process_3:cont[1]~1_combout\,
	sclr => \inst7|Equal5~11_combout\,
	ena => \inst7|process_3:cont[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|process_3:cont[1]~regout\);

-- Location: LCCOMB_X25_Y18_N4
\inst7|process_3:cont[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|process_3:cont[2]~1_combout\ = (\inst7|process_3:cont[2]~regout\ & (\inst7|process_3:cont[1]~2\ $ (GND))) # (!\inst7|process_3:cont[2]~regout\ & (!\inst7|process_3:cont[1]~2\ & VCC))
-- \inst7|process_3:cont[2]~2\ = CARRY((\inst7|process_3:cont[2]~regout\ & !\inst7|process_3:cont[1]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|process_3:cont[2]~regout\,
	datad => VCC,
	cin => \inst7|process_3:cont[1]~2\,
	combout => \inst7|process_3:cont[2]~1_combout\,
	cout => \inst7|process_3:cont[2]~2\);

-- Location: LCFF_X25_Y18_N5
\inst7|process_3:cont[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|altpll_component|ALT_INV__clk0~clkctrl_outclk\,
	datain => \inst7|process_3:cont[2]~1_combout\,
	sclr => \inst7|Equal5~11_combout\,
	ena => \inst7|process_3:cont[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|process_3:cont[2]~regout\);

-- Location: LCCOMB_X25_Y18_N8
\inst7|process_3:cont[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|process_3:cont[4]~1_combout\ = (\inst7|process_3:cont[4]~regout\ & (\inst7|process_3:cont[3]~2\ $ (GND))) # (!\inst7|process_3:cont[4]~regout\ & (!\inst7|process_3:cont[3]~2\ & VCC))
-- \inst7|process_3:cont[4]~2\ = CARRY((\inst7|process_3:cont[4]~regout\ & !\inst7|process_3:cont[3]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|process_3:cont[4]~regout\,
	datad => VCC,
	cin => \inst7|process_3:cont[3]~2\,
	combout => \inst7|process_3:cont[4]~1_combout\,
	cout => \inst7|process_3:cont[4]~2\);

-- Location: LCFF_X25_Y18_N9
\inst7|process_3:cont[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|altpll_component|ALT_INV__clk0~clkctrl_outclk\,
	datain => \inst7|process_3:cont[4]~1_combout\,
	sclr => \inst7|Equal5~11_combout\,
	ena => \inst7|process_3:cont[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|process_3:cont[4]~regout\);

-- Location: LCCOMB_X25_Y18_N14
\inst7|process_3:cont[7]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|process_3:cont[7]~1_combout\ = (\inst7|process_3:cont[7]~regout\ & (!\inst7|process_3:cont[6]~2\)) # (!\inst7|process_3:cont[7]~regout\ & ((\inst7|process_3:cont[6]~2\) # (GND)))
-- \inst7|process_3:cont[7]~2\ = CARRY((!\inst7|process_3:cont[6]~2\) # (!\inst7|process_3:cont[7]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|process_3:cont[7]~regout\,
	datad => VCC,
	cin => \inst7|process_3:cont[6]~2\,
	combout => \inst7|process_3:cont[7]~1_combout\,
	cout => \inst7|process_3:cont[7]~2\);

-- Location: LCFF_X25_Y18_N15
\inst7|process_3:cont[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|altpll_component|ALT_INV__clk0~clkctrl_outclk\,
	datain => \inst7|process_3:cont[7]~1_combout\,
	sclr => \inst7|Equal5~11_combout\,
	ena => \inst7|process_3:cont[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|process_3:cont[7]~regout\);

-- Location: LCCOMB_X25_Y18_N18
\inst7|process_3:cont[9]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|process_3:cont[9]~1_combout\ = (\inst7|process_3:cont[9]~regout\ & (!\inst7|process_3:cont[8]~2\)) # (!\inst7|process_3:cont[9]~regout\ & ((\inst7|process_3:cont[8]~2\) # (GND)))
-- \inst7|process_3:cont[9]~2\ = CARRY((!\inst7|process_3:cont[8]~2\) # (!\inst7|process_3:cont[9]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|process_3:cont[9]~regout\,
	datad => VCC,
	cin => \inst7|process_3:cont[8]~2\,
	combout => \inst7|process_3:cont[9]~1_combout\,
	cout => \inst7|process_3:cont[9]~2\);

-- Location: LCFF_X25_Y18_N19
\inst7|process_3:cont[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|altpll_component|ALT_INV__clk0~clkctrl_outclk\,
	datain => \inst7|process_3:cont[9]~1_combout\,
	sclr => \inst7|Equal5~11_combout\,
	ena => \inst7|process_3:cont[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|process_3:cont[9]~regout\);

-- Location: LCFF_X25_Y18_N23
\inst7|process_3:cont[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|altpll_component|ALT_INV__clk0~clkctrl_outclk\,
	datain => \inst7|process_3:cont[11]~1_combout\,
	sclr => \inst7|Equal5~11_combout\,
	ena => \inst7|process_3:cont[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|process_3:cont[11]~regout\);

-- Location: LCCOMB_X27_Y18_N30
\inst7|Equal5~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Equal5~7_combout\ = (\inst7|process_3:cont[10]~regout\ & (\inst7|Add9~20_combout\ & (\inst7|process_3:cont[11]~regout\ $ (!\inst7|Add9~22_combout\)))) # (!\inst7|process_3:cont[10]~regout\ & (!\inst7|Add9~20_combout\ & 
-- (\inst7|process_3:cont[11]~regout\ $ (!\inst7|Add9~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|process_3:cont[10]~regout\,
	datab => \inst7|process_3:cont[11]~regout\,
	datac => \inst7|Add9~22_combout\,
	datad => \inst7|Add9~20_combout\,
	combout => \inst7|Equal5~7_combout\);

-- Location: LCFF_X25_Y18_N25
\inst7|process_3:cont[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|altpll_component|ALT_INV__clk0~clkctrl_outclk\,
	datain => \inst7|process_3:cont[12]~1_combout\,
	sclr => \inst7|Equal5~11_combout\,
	ena => \inst7|process_3:cont[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|process_3:cont[12]~regout\);

-- Location: LCCOMB_X27_Y18_N28
\inst7|Equal5~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Equal5~8_combout\ = (\inst7|process_3:cont[13]~regout\ & (\inst7|Add9~26_combout\ & (\inst7|process_3:cont[12]~regout\ $ (!\inst7|Add9~24_combout\)))) # (!\inst7|process_3:cont[13]~regout\ & (!\inst7|Add9~26_combout\ & 
-- (\inst7|process_3:cont[12]~regout\ $ (!\inst7|Add9~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|process_3:cont[13]~regout\,
	datab => \inst7|process_3:cont[12]~regout\,
	datac => \inst7|Add9~26_combout\,
	datad => \inst7|Add9~24_combout\,
	combout => \inst7|Equal5~8_combout\);

-- Location: LCCOMB_X27_Y18_N26
\inst7|Equal5~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Equal5~9_combout\ = (\inst7|Add9~28_combout\ & (\inst7|process_3:cont[14]~regout\ & (\inst7|process_3:cont[15]~regout\ $ (!\inst7|Add9~30_combout\)))) # (!\inst7|Add9~28_combout\ & (!\inst7|process_3:cont[14]~regout\ & 
-- (\inst7|process_3:cont[15]~regout\ $ (!\inst7|Add9~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add9~28_combout\,
	datab => \inst7|process_3:cont[14]~regout\,
	datac => \inst7|process_3:cont[15]~regout\,
	datad => \inst7|Add9~30_combout\,
	combout => \inst7|Equal5~9_combout\);

-- Location: LCCOMB_X27_Y19_N2
\inst7|Equal5~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Equal5~10_combout\ = (\inst7|Equal5~6_combout\ & (\inst7|Equal5~7_combout\ & (\inst7|Equal5~8_combout\ & \inst7|Equal5~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Equal5~6_combout\,
	datab => \inst7|Equal5~7_combout\,
	datac => \inst7|Equal5~8_combout\,
	datad => \inst7|Equal5~9_combout\,
	combout => \inst7|Equal5~10_combout\);

-- Location: LCCOMB_X27_Y19_N12
\inst7|Equal5~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Equal5~11_combout\ = (\inst7|Equal5~4_combout\ & (\inst7|Equal5~5_combout\ & \inst7|Equal5~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Equal5~4_combout\,
	datac => \inst7|Equal5~5_combout\,
	datad => \inst7|Equal5~10_combout\,
	combout => \inst7|Equal5~11_combout\);

-- Location: LCCOMB_X26_Y18_N18
\inst7|pwm_s2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|pwm_s2~1_combout\ = (\inst7|pwm_s2~regout\ & (((!\inst7|Equal5~11_combout\) # (!\inst7|start~regout\)))) # (!\inst7|pwm_s2~regout\ & (\inst7|pwm_s2~0_combout\ & ((!\inst7|Equal5~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|pwm_s2~0_combout\,
	datab => \inst7|start~regout\,
	datac => \inst7|pwm_s2~regout\,
	datad => \inst7|Equal5~11_combout\,
	combout => \inst7|pwm_s2~1_combout\);

-- Location: LCFF_X26_Y18_N19
\inst7|pwm_s2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|altpll_component|ALT_INV__clk0~clkctrl_outclk\,
	datain => \inst7|pwm_s2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|pwm_s2~regout\);

-- Location: LCCOMB_X44_Y13_N0
\inst7|cont[0]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|cont[0]~8_combout\ = \inst7|cont\(0) $ (VCC)
-- \inst7|cont[0]~9\ = CARRY(\inst7|cont\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|cont\(0),
	datad => VCC,
	combout => \inst7|cont[0]~8_combout\,
	cout => \inst7|cont[0]~9\);

-- Location: LCCOMB_X44_Y13_N2
\inst7|cont[1]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|cont[1]~11_combout\ = (\inst7|cont\(1) & (!\inst7|cont[0]~9\)) # (!\inst7|cont\(1) & ((\inst7|cont[0]~9\) # (GND)))
-- \inst7|cont[1]~12\ = CARRY((!\inst7|cont[0]~9\) # (!\inst7|cont\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|cont\(1),
	datad => VCC,
	cin => \inst7|cont[0]~9\,
	combout => \inst7|cont[1]~11_combout\,
	cout => \inst7|cont[1]~12\);

-- Location: LCCOMB_X43_Y13_N8
\inst7|Add2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Add2~0_combout\ = \inst7|dt_var_des\(0) $ (VCC)
-- \inst7|Add2~1\ = CARRY(\inst7|dt_var_des\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|dt_var_des\(0),
	datad => VCC,
	combout => \inst7|Add2~0_combout\,
	cout => \inst7|Add2~1\);

-- Location: LCCOMB_X43_Y13_N10
\inst7|Add2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Add2~2_combout\ = (\inst7|dt_var_des\(1) & ((\switch1~combout\ & (!\inst7|Add2~1\)) # (!\switch1~combout\ & (\inst7|Add2~1\ & VCC)))) # (!\inst7|dt_var_des\(1) & ((\switch1~combout\ & ((\inst7|Add2~1\) # (GND))) # (!\switch1~combout\ & 
-- (!\inst7|Add2~1\))))
-- \inst7|Add2~3\ = CARRY((\inst7|dt_var_des\(1) & (\switch1~combout\ & !\inst7|Add2~1\)) # (!\inst7|dt_var_des\(1) & ((\switch1~combout\) # (!\inst7|Add2~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|dt_var_des\(1),
	datab => \switch1~combout\,
	datad => VCC,
	cin => \inst7|Add2~1\,
	combout => \inst7|Add2~2_combout\,
	cout => \inst7|Add2~3\);

-- Location: LCFF_X43_Y13_N11
\inst7|dt_var_des[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_key1~combout\,
	datain => \inst7|Add2~2_combout\,
	ena => \inst7|dt_var_des[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|dt_var_des\(1));

-- Location: LCCOMB_X43_Y13_N12
\inst7|Add2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Add2~4_combout\ = ((\inst7|dt_var_des\(2) $ (\switch1~combout\ $ (\inst7|Add2~3\)))) # (GND)
-- \inst7|Add2~5\ = CARRY((\inst7|dt_var_des\(2) & (\switch1~combout\ & !\inst7|Add2~3\)) # (!\inst7|dt_var_des\(2) & ((\switch1~combout\) # (!\inst7|Add2~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|dt_var_des\(2),
	datab => \switch1~combout\,
	datad => VCC,
	cin => \inst7|Add2~3\,
	combout => \inst7|Add2~4_combout\,
	cout => \inst7|Add2~5\);

-- Location: LCCOMB_X43_Y13_N14
\inst7|Add2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Add2~6_combout\ = (\inst7|dt_var_des\(3) & ((\switch1~combout\ & (!\inst7|Add2~5\)) # (!\switch1~combout\ & (\inst7|Add2~5\ & VCC)))) # (!\inst7|dt_var_des\(3) & ((\switch1~combout\ & ((\inst7|Add2~5\) # (GND))) # (!\switch1~combout\ & 
-- (!\inst7|Add2~5\))))
-- \inst7|Add2~7\ = CARRY((\inst7|dt_var_des\(3) & (\switch1~combout\ & !\inst7|Add2~5\)) # (!\inst7|dt_var_des\(3) & ((\switch1~combout\) # (!\inst7|Add2~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|dt_var_des\(3),
	datab => \switch1~combout\,
	datad => VCC,
	cin => \inst7|Add2~5\,
	combout => \inst7|Add2~6_combout\,
	cout => \inst7|Add2~7\);

-- Location: LCCOMB_X43_Y13_N16
\inst7|Add2~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Add2~8_combout\ = ((\inst7|dt_var_des\(4) $ (\switch1~combout\ $ (!\inst7|Add2~7\)))) # (GND)
-- \inst7|Add2~9\ = CARRY((\inst7|dt_var_des\(4) & (!\switch1~combout\ & !\inst7|Add2~7\)) # (!\inst7|dt_var_des\(4) & ((!\inst7|Add2~7\) # (!\switch1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|dt_var_des\(4),
	datab => \switch1~combout\,
	datad => VCC,
	cin => \inst7|Add2~7\,
	combout => \inst7|Add2~8_combout\,
	cout => \inst7|Add2~9\);

-- Location: LCCOMB_X43_Y13_N4
\inst7|dt_var_des[4]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|dt_var_des[4]~6_combout\ = !\inst7|Add2~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|Add2~8_combout\,
	combout => \inst7|dt_var_des[4]~6_combout\);

-- Location: LCFF_X43_Y13_N5
\inst7|dt_var_des[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_key1~combout\,
	datain => \inst7|dt_var_des[4]~6_combout\,
	ena => \inst7|dt_var_des[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|dt_var_des\(4));

-- Location: LCFF_X43_Y13_N15
\inst7|dt_var_des[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_key1~combout\,
	datain => \inst7|Add2~6_combout\,
	ena => \inst7|dt_var_des[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|dt_var_des\(3));

-- Location: LCCOMB_X43_Y13_N18
\inst7|Add2~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Add2~10_combout\ = (\inst7|dt_var_des\(5) & ((\switch1~combout\ & (!\inst7|Add2~9\)) # (!\switch1~combout\ & (\inst7|Add2~9\ & VCC)))) # (!\inst7|dt_var_des\(5) & ((\switch1~combout\ & ((\inst7|Add2~9\) # (GND))) # (!\switch1~combout\ & 
-- (!\inst7|Add2~9\))))
-- \inst7|Add2~11\ = CARRY((\inst7|dt_var_des\(5) & (\switch1~combout\ & !\inst7|Add2~9\)) # (!\inst7|dt_var_des\(5) & ((\switch1~combout\) # (!\inst7|Add2~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|dt_var_des\(5),
	datab => \switch1~combout\,
	datad => VCC,
	cin => \inst7|Add2~9\,
	combout => \inst7|Add2~10_combout\,
	cout => \inst7|Add2~11\);

-- Location: LCFF_X43_Y13_N19
\inst7|dt_var_des[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_key1~combout\,
	datain => \inst7|Add2~10_combout\,
	ena => \inst7|dt_var_des[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|dt_var_des\(5));

-- Location: LCCOMB_X43_Y13_N22
\inst7|dt_var_des[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|dt_var_des[0]~0_combout\ = (!\inst7|dt_var_des\(6) & (\inst7|dt_var_des\(4) & (!\inst7|dt_var_des\(3) & !\inst7|dt_var_des\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|dt_var_des\(6),
	datab => \inst7|dt_var_des\(4),
	datac => \inst7|dt_var_des\(3),
	datad => \inst7|dt_var_des\(5),
	combout => \inst7|dt_var_des[0]~0_combout\);

-- Location: LCCOMB_X43_Y13_N24
\inst7|dt_var_des[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|dt_var_des[0]~1_combout\ = (!\switch1~combout\ & (\inst7|dt_var_des[0]~0_combout\ & ((\inst7|dt_var_des\(2)) # (!\inst7|dt_var_des\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|dt_var_des\(2),
	datab => \switch1~combout\,
	datac => \inst7|dt_var_des\(1),
	datad => \inst7|dt_var_des[0]~0_combout\,
	combout => \inst7|dt_var_des[0]~1_combout\);

-- Location: LCCOMB_X43_Y13_N26
\inst7|dt_var_des[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|dt_var_des[0]~2_combout\ = (\inst7|dt_var_des\(3) & (((\inst7|dt_var_des\(0) & \inst7|dt_var_des\(1))) # (!\inst7|dt_var_des\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|dt_var_des\(2),
	datab => \inst7|dt_var_des\(3),
	datac => \inst7|dt_var_des\(0),
	datad => \inst7|dt_var_des\(1),
	combout => \inst7|dt_var_des[0]~2_combout\);

-- Location: LCCOMB_X43_Y13_N0
\inst7|dt_var_des[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|dt_var_des[0]~3_combout\ = (\inst7|dt_var_des\(5)) # ((\inst7|dt_var_des[0]~2_combout\) # (!\inst7|dt_var_des\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|dt_var_des\(5),
	datac => \inst7|dt_var_des\(4),
	datad => \inst7|dt_var_des[0]~2_combout\,
	combout => \inst7|dt_var_des[0]~3_combout\);

-- Location: LCCOMB_X43_Y13_N2
\inst7|dt_var_des[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|dt_var_des[0]~4_combout\ = (!\inst7|dt_var_des[0]~1_combout\ & (((!\inst7|dt_var_des[0]~3_combout\) # (!\switch1~combout\)) # (!\inst7|dt_var_des\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|dt_var_des\(6),
	datab => \switch1~combout\,
	datac => \inst7|dt_var_des[0]~1_combout\,
	datad => \inst7|dt_var_des[0]~3_combout\,
	combout => \inst7|dt_var_des[0]~4_combout\);

-- Location: LCFF_X43_Y13_N9
\inst7|dt_var_des[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_key1~combout\,
	datain => \inst7|Add2~0_combout\,
	ena => \inst7|dt_var_des[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|dt_var_des\(0));

-- Location: LCCOMB_X43_Y13_N30
\inst7|Equal2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Equal2~0_combout\ = (\inst7|dt_var_des\(2) & (\inst7|dt_var_des\(0) & (!\inst7|dt_var_des\(1) & \inst7|dt_var_des[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|dt_var_des\(2),
	datab => \inst7|dt_var_des\(0),
	datac => \inst7|dt_var_des\(1),
	datad => \inst7|dt_var_des[0]~0_combout\,
	combout => \inst7|Equal2~0_combout\);

-- Location: LCCOMB_X44_Y13_N4
\inst7|cont[2]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|cont[2]~13_combout\ = (\inst7|cont\(2) & (\inst7|cont[1]~12\ $ (GND))) # (!\inst7|cont\(2) & (!\inst7|cont[1]~12\ & VCC))
-- \inst7|cont[2]~14\ = CARRY((\inst7|cont\(2) & !\inst7|cont[1]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|cont\(2),
	datad => VCC,
	cin => \inst7|cont[1]~12\,
	combout => \inst7|cont[2]~13_combout\,
	cout => \inst7|cont[2]~14\);

-- Location: LCCOMB_X44_Y13_N6
\inst7|cont[3]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|cont[3]~15_combout\ = (\inst7|cont\(3) & (!\inst7|cont[2]~14\)) # (!\inst7|cont\(3) & ((\inst7|cont[2]~14\) # (GND)))
-- \inst7|cont[3]~16\ = CARRY((!\inst7|cont[2]~14\) # (!\inst7|cont\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|cont\(3),
	datad => VCC,
	cin => \inst7|cont[2]~14\,
	combout => \inst7|cont[3]~15_combout\,
	cout => \inst7|cont[3]~16\);

-- Location: LCCOMB_X44_Y13_N8
\inst7|cont[4]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|cont[4]~17_combout\ = (\inst7|cont\(4) & (\inst7|cont[3]~16\ $ (GND))) # (!\inst7|cont\(4) & (!\inst7|cont[3]~16\ & VCC))
-- \inst7|cont[4]~18\ = CARRY((\inst7|cont\(4) & !\inst7|cont[3]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|cont\(4),
	datad => VCC,
	cin => \inst7|cont[3]~16\,
	combout => \inst7|cont[4]~17_combout\,
	cout => \inst7|cont[4]~18\);

-- Location: LCFF_X44_Y13_N9
\inst7|cont[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|altpll_component|ALT_INV__clk0~clkctrl_outclk\,
	datain => \inst7|cont[4]~17_combout\,
	sclr => \inst7|Equal0~4_combout\,
	ena => \inst7|cont[2]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|cont\(4));

-- Location: LCCOMB_X44_Y13_N12
\inst7|cont[6]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|cont[6]~21_combout\ = \inst7|cont[5]~20\ $ (!\inst7|cont\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst7|cont\(6),
	cin => \inst7|cont[5]~20\,
	combout => \inst7|cont[6]~21_combout\);

-- Location: LCFF_X44_Y13_N13
\inst7|cont[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|altpll_component|ALT_INV__clk0~clkctrl_outclk\,
	datain => \inst7|cont[6]~21_combout\,
	sclr => \inst7|Equal0~4_combout\,
	ena => \inst7|cont[2]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|cont\(6));

-- Location: LCFF_X44_Y13_N7
\inst7|cont[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|altpll_component|ALT_INV__clk0~clkctrl_outclk\,
	datain => \inst7|cont[3]~15_combout\,
	sclr => \inst7|Equal0~4_combout\,
	ena => \inst7|cont[2]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|cont\(3));

-- Location: LCCOMB_X45_Y13_N20
\inst7|Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Equal1~0_combout\ = (!\inst7|cont\(0) & (!\inst7|cont\(3) & (!\inst7|cont\(2) & !\inst7|cont\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|cont\(0),
	datab => \inst7|cont\(3),
	datac => \inst7|cont\(2),
	datad => \inst7|cont\(1),
	combout => \inst7|Equal1~0_combout\);

-- Location: LCCOMB_X45_Y13_N30
\inst7|Equal1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Equal1~1_combout\ = (!\inst7|cont\(5) & (!\inst7|cont\(6) & (\inst7|Equal1~0_combout\ & !\inst7|cont\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|cont\(5),
	datab => \inst7|cont\(6),
	datac => \inst7|Equal1~0_combout\,
	datad => \inst7|cont\(4),
	combout => \inst7|Equal1~1_combout\);

-- Location: LCCOMB_X44_Y13_N30
\inst7|pwm_old2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|pwm_old2~0_combout\ = (\inst7|Equal1~1_combout\ & (\inst9|LessThan0~12_combout\)) # (!\inst7|Equal1~1_combout\ & ((\inst7|Equal0~4_combout\ & (\inst9|LessThan0~12_combout\)) # (!\inst7|Equal0~4_combout\ & ((\inst7|pwm_old2~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|LessThan0~12_combout\,
	datab => \inst7|Equal1~1_combout\,
	datac => \inst7|pwm_old2~regout\,
	datad => \inst7|Equal0~4_combout\,
	combout => \inst7|pwm_old2~0_combout\);

-- Location: LCFF_X44_Y13_N31
\inst7|pwm_old2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|altpll_component|ALT_INV__clk0~clkctrl_outclk\,
	datain => \inst7|pwm_old2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|pwm_old2~regout\);

-- Location: LCCOMB_X44_Y13_N16
\inst7|var1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|var1~0_combout\ = (\inst7|var1~regout\) # ((\inst7|Equal1~1_combout\ & !\inst7|Equal0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Equal1~1_combout\,
	datac => \inst7|var1~regout\,
	datad => \inst7|Equal0~4_combout\,
	combout => \inst7|var1~0_combout\);

-- Location: LCFF_X44_Y13_N17
\inst7|var1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|altpll_component|ALT_INV__clk0~clkctrl_outclk\,
	datain => \inst7|var1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|var1~regout\);

-- Location: LCCOMB_X43_Y13_N28
\inst7|cont[2]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|cont[2]~7_combout\ = (\inst7|var1~regout\ & (\inst7|pwm_old2~regout\ $ (\inst9|LessThan0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|pwm_old2~regout\,
	datac => \inst7|var1~regout\,
	datad => \inst9|LessThan0~12_combout\,
	combout => \inst7|cont[2]~7_combout\);

-- Location: LCCOMB_X44_Y13_N18
\inst7|cont[2]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|cont[2]~10_combout\ = ((\inst7|Equal0~4_combout\) # ((!\inst7|Equal2~0_combout\ & \inst7|cont[2]~7_combout\))) # (!\inst7|Equal1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Equal1~1_combout\,
	datab => \inst7|Equal0~4_combout\,
	datac => \inst7|Equal2~0_combout\,
	datad => \inst7|cont[2]~7_combout\,
	combout => \inst7|cont[2]~10_combout\);

-- Location: LCFF_X44_Y13_N3
\inst7|cont[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|altpll_component|ALT_INV__clk0~clkctrl_outclk\,
	datain => \inst7|cont[1]~11_combout\,
	sclr => \inst7|Equal0~4_combout\,
	ena => \inst7|cont[2]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|cont\(1));

-- Location: LCFF_X44_Y13_N5
\inst7|cont[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|altpll_component|ALT_INV__clk0~clkctrl_outclk\,
	datain => \inst7|cont[2]~13_combout\,
	sclr => \inst7|Equal0~4_combout\,
	ena => \inst7|cont[2]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|cont\(2));

-- Location: LCCOMB_X43_Y13_N6
\inst7|dt_var_des[2]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|dt_var_des[2]~5_combout\ = !\inst7|Add2~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst7|Add2~4_combout\,
	combout => \inst7|dt_var_des[2]~5_combout\);

-- Location: LCFF_X43_Y13_N7
\inst7|dt_var_des[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_key1~combout\,
	datain => \inst7|dt_var_des[2]~5_combout\,
	ena => \inst7|dt_var_des[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|dt_var_des\(2));

-- Location: LCCOMB_X44_Y13_N22
\inst7|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Equal0~1_combout\ = (\inst7|cont\(3) & (\inst7|dt_var_des\(3) & (\inst7|cont\(2) $ (\inst7|dt_var_des\(2))))) # (!\inst7|cont\(3) & (!\inst7|dt_var_des\(3) & (\inst7|cont\(2) $ (\inst7|dt_var_des\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|cont\(3),
	datab => \inst7|cont\(2),
	datac => \inst7|dt_var_des\(2),
	datad => \inst7|dt_var_des\(3),
	combout => \inst7|Equal0~1_combout\);

-- Location: LCFF_X44_Y13_N1
\inst7|cont[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|altpll_component|ALT_INV__clk0~clkctrl_outclk\,
	datain => \inst7|cont[0]~8_combout\,
	sclr => \inst7|Equal0~4_combout\,
	ena => \inst7|cont[2]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|cont\(0));

-- Location: LCCOMB_X44_Y13_N20
\inst7|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Equal0~0_combout\ = (\inst7|dt_var_des\(0) & (\inst7|cont\(0) & (\inst7|cont\(1) $ (!\inst7|dt_var_des\(1))))) # (!\inst7|dt_var_des\(0) & (!\inst7|cont\(0) & (\inst7|cont\(1) $ (!\inst7|dt_var_des\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|dt_var_des\(0),
	datab => \inst7|cont\(1),
	datac => \inst7|cont\(0),
	datad => \inst7|dt_var_des\(1),
	combout => \inst7|Equal0~0_combout\);

-- Location: LCCOMB_X43_Y13_N20
\inst7|Add2~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Add2~12_combout\ = \inst7|dt_var_des\(6) $ (\inst7|Add2~11\ $ (\switch1~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|dt_var_des\(6),
	datad => \switch1~combout\,
	cin => \inst7|Add2~11\,
	combout => \inst7|Add2~12_combout\);

-- Location: LCFF_X43_Y13_N21
\inst7|dt_var_des[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_key1~combout\,
	datain => \inst7|Add2~12_combout\,
	ena => \inst7|dt_var_des[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|dt_var_des\(6));

-- Location: LCCOMB_X42_Y13_N18
\inst7|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Equal0~3_combout\ = \inst7|cont\(6) $ (\inst7|dt_var_des\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|cont\(6),
	datad => \inst7|dt_var_des\(6),
	combout => \inst7|Equal0~3_combout\);

-- Location: LCCOMB_X44_Y13_N14
\inst7|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Equal0~4_combout\ = (\inst7|Equal0~2_combout\ & (\inst7|Equal0~1_combout\ & (\inst7|Equal0~0_combout\ & !\inst7|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Equal0~2_combout\,
	datab => \inst7|Equal0~1_combout\,
	datac => \inst7|Equal0~0_combout\,
	datad => \inst7|Equal0~3_combout\,
	combout => \inst7|Equal0~4_combout\);

-- Location: LCCOMB_X44_Y13_N28
\inst7|pwm_data~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|pwm_data~0_combout\ = (\inst7|Equal1~1_combout\ & (!\inst7|Equal2~0_combout\ & \inst7|cont[2]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Equal1~1_combout\,
	datac => \inst7|Equal2~0_combout\,
	datad => \inst7|cont[2]~7_combout\,
	combout => \inst7|pwm_data~0_combout\);

-- Location: LCCOMB_X44_Y13_N26
\inst7|pwm_data~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|pwm_data~1_combout\ = (\inst7|Equal0~4_combout\ & (((\inst7|pwm_data~regout\)))) # (!\inst7|Equal0~4_combout\ & ((\inst7|pwm_data~0_combout\ & (\inst9|LessThan0~12_combout\)) # (!\inst7|pwm_data~0_combout\ & ((\inst7|pwm_data~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|LessThan0~12_combout\,
	datab => \inst7|Equal0~4_combout\,
	datac => \inst7|pwm_data~regout\,
	datad => \inst7|pwm_data~0_combout\,
	combout => \inst7|pwm_data~1_combout\);

-- Location: LCFF_X44_Y13_N27
\inst7|pwm_data\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|altpll_component|ALT_INV__clk0~clkctrl_outclk\,
	datain => \inst7|pwm_data~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|pwm_data~regout\);

-- Location: LCCOMB_X42_Y13_N20
\inst7|pwm_s1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|pwm_s1~1_combout\ = (\inst7|pwm_s1~regout\ & (((!\inst7|cont[2]~7_combout\) # (!\inst7|Equal1~1_combout\)) # (!\inst7|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|pwm_s1~regout\,
	datab => \inst7|Equal2~0_combout\,
	datac => \inst7|Equal1~1_combout\,
	datad => \inst7|cont[2]~7_combout\,
	combout => \inst7|pwm_s1~1_combout\);

-- Location: LCCOMB_X42_Y13_N6
\inst7|pwm_s1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|pwm_s1~0_combout\ = (\inst7|Equal1~1_combout\ & (\inst7|Equal2~0_combout\ & (\inst9|LessThan0~12_combout\ & \inst7|cont[2]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Equal1~1_combout\,
	datab => \inst7|Equal2~0_combout\,
	datac => \inst9|LessThan0~12_combout\,
	datad => \inst7|cont[2]~7_combout\,
	combout => \inst7|pwm_s1~0_combout\);

-- Location: LCCOMB_X42_Y13_N0
\inst7|pwm_s1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|pwm_s1~2_combout\ = (\inst7|Equal0~4_combout\ & (\inst7|pwm_data~regout\)) # (!\inst7|Equal0~4_combout\ & (((\inst7|pwm_s1~1_combout\) # (\inst7|pwm_s1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Equal0~4_combout\,
	datab => \inst7|pwm_data~regout\,
	datac => \inst7|pwm_s1~1_combout\,
	datad => \inst7|pwm_s1~0_combout\,
	combout => \inst7|pwm_s1~2_combout\);

-- Location: LCFF_X42_Y13_N1
\inst7|pwm_s1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|altpll_component|ALT_INV__clk0~clkctrl_outclk\,
	datain => \inst7|pwm_s1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|pwm_s1~regout\);

-- Location: LCCOMB_X42_Y18_N0
\inst7|pwm_out~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|pwm_out~0_combout\ = (\inst7|pwm_s2~regout\) # (\inst7|pwm_s1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|pwm_s2~regout\,
	datad => \inst7|pwm_s1~regout\,
	combout => \inst7|pwm_out~0_combout\);

-- Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\pwm~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst9|LessThan0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_pwm);

-- Location: PIN_C20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\pwm2~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|ALT_INV_pwm_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_pwm2);
END structure;


