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
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Full Version"

-- DATE "03/05/2015 15:14:29"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	microprocessor IS
    PORT (
	cpu_clk : IN std_logic;
	cpu_rst : IN std_logic;
	cpu_output : OUT std_logic_vector(15 DOWNTO 0);
	D_addr_bus : OUT std_logic_vector(15 DOWNTO 0);
	D_mdin_bus : OUT std_logic_vector(15 DOWNTO 0);
	D_mdout_bus : OUT std_logic_vector(15 DOWNTO 0);
	D_immd_bus : OUT std_logic_vector(15 DOWNTO 0);
	D_rfout_bus : OUT std_logic_vector(15 DOWNTO 0);
	D_mem_addr : OUT std_logic_vector(11 DOWNTO 0);
	D_RFwa_s : OUT std_logic_vector(3 DOWNTO 0);
	D_RFr1a_s : OUT std_logic_vector(3 DOWNTO 0);
	D_RFr2a_s : OUT std_logic_vector(3 DOWNTO 0);
	D_RFwe_s : OUT std_logic;
	D_RFr1e_s : OUT std_logic;
	D_RFr2e_s : OUT std_logic;
	D_ALUs_s : OUT std_logic_vector(1 DOWNTO 0);
	D_RFs_s : OUT std_logic_vector(1 DOWNTO 0);
	D_PCld_s : OUT std_logic;
	D_Mre_s : OUT std_logic;
	D_Mwe_s : OUT std_logic;
	D_jpz_s : OUT std_logic;
	D_oe_s : OUT std_logic;
	D_cur_state : OUT std_logic_vector(3 DOWNTO 0);
	D_big_addr : OUT std_logic;
	D_main_mem_status : OUT std_logic;
	D_main_mem_clk : OUT std_logic
	);
END microprocessor;

-- Design Ports Information
-- cpu_output[0]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu_output[1]	=>  Location: PIN_V2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu_output[2]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu_output[3]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu_output[4]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu_output[5]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu_output[6]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu_output[7]	=>  Location: PIN_K3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu_output[8]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu_output[9]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu_output[10]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu_output[11]	=>  Location: PIN_AF7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu_output[12]	=>  Location: PIN_AE7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu_output[13]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu_output[14]	=>  Location: PIN_AB2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu_output[15]	=>  Location: PIN_AE8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_addr_bus[0]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_addr_bus[1]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_addr_bus[2]	=>  Location: PIN_AF12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_addr_bus[3]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_addr_bus[4]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_addr_bus[5]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_addr_bus[6]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_addr_bus[7]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_addr_bus[8]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_addr_bus[9]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_addr_bus[10]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_addr_bus[11]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_addr_bus[12]	=>  Location: PIN_J5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_addr_bus[13]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_addr_bus[14]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_addr_bus[15]	=>  Location: PIN_U4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_mdin_bus[0]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_mdin_bus[1]	=>  Location: PIN_AF11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_mdin_bus[2]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_mdin_bus[3]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_mdin_bus[4]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_mdin_bus[5]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_mdin_bus[6]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_mdin_bus[7]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_mdin_bus[8]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_mdin_bus[9]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_mdin_bus[10]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_mdin_bus[11]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_mdin_bus[12]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_mdin_bus[13]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_mdin_bus[14]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_mdin_bus[15]	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_mdout_bus[0]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_mdout_bus[1]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_mdout_bus[2]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_mdout_bus[3]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_mdout_bus[4]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_mdout_bus[5]	=>  Location: PIN_AE10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_mdout_bus[6]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_mdout_bus[7]	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_mdout_bus[8]	=>  Location: PIN_AB1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_mdout_bus[9]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_mdout_bus[10]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_mdout_bus[11]	=>  Location: PIN_AE9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_mdout_bus[12]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_mdout_bus[13]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_mdout_bus[14]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_mdout_bus[15]	=>  Location: PIN_AF8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_immd_bus[0]	=>  Location: PIN_AC10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_immd_bus[1]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_immd_bus[2]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_immd_bus[3]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_immd_bus[4]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_immd_bus[5]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_immd_bus[6]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_immd_bus[7]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_immd_bus[8]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_immd_bus[9]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_immd_bus[10]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_immd_bus[11]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_immd_bus[12]	=>  Location: PIN_B26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_immd_bus[13]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_immd_bus[14]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_immd_bus[15]	=>  Location: PIN_D25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rfout_bus[0]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rfout_bus[1]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rfout_bus[2]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rfout_bus[3]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rfout_bus[4]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rfout_bus[5]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rfout_bus[6]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rfout_bus[7]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rfout_bus[8]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rfout_bus[9]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rfout_bus[10]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rfout_bus[11]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rfout_bus[12]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rfout_bus[13]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rfout_bus[14]	=>  Location: PIN_AG11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rfout_bus[15]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_mem_addr[0]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_mem_addr[1]	=>  Location: PIN_U3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_mem_addr[2]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_mem_addr[3]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_mem_addr[4]	=>  Location: PIN_AC3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_mem_addr[5]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_mem_addr[6]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_mem_addr[7]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_mem_addr[8]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_mem_addr[9]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_mem_addr[10]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_mem_addr[11]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_RFwa_s[0]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_RFwa_s[1]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_RFwa_s[2]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_RFwa_s[3]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_RFr1a_s[0]	=>  Location: PIN_AE13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_RFr1a_s[1]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_RFr1a_s[2]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_RFr1a_s[3]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_RFr2a_s[0]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_RFr2a_s[1]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_RFr2a_s[2]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_RFr2a_s[3]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_RFwe_s	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_RFr1e_s	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_RFr2e_s	=>  Location: PIN_AG10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_ALUs_s[0]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_ALUs_s[1]	=>  Location: PIN_AH11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_RFs_s[0]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_RFs_s[1]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_PCld_s	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_Mre_s	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_Mwe_s	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_jpz_s	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_oe_s	=>  Location: PIN_AD3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_cur_state[0]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_cur_state[1]	=>  Location: PIN_AH10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_cur_state[2]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_cur_state[3]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_big_addr	=>  Location: PIN_A25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_main_mem_status	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_main_mem_clk	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu_clk	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu_rst	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF microprocessor IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_cpu_clk : std_logic;
SIGNAL ww_cpu_rst : std_logic;
SIGNAL ww_cpu_output : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_D_addr_bus : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_D_mdin_bus : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_D_mdout_bus : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_D_immd_bus : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_D_rfout_bus : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_D_mem_addr : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_D_RFwa_s : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_D_RFr1a_s : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_D_RFr2a_s : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_D_RFwe_s : std_logic;
SIGNAL ww_D_RFr1e_s : std_logic;
SIGNAL ww_D_RFr2e_s : std_logic;
SIGNAL ww_D_ALUs_s : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_D_RFs_s : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_D_PCld_s : std_logic;
SIGNAL ww_D_Mre_s : std_logic;
SIGNAL ww_D_Mwe_s : std_logic;
SIGNAL ww_D_jpz_s : std_logic;
SIGNAL ww_D_oe_s : std_logic;
SIGNAL ww_D_cur_state : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_D_big_addr : std_logic;
SIGNAL ww_D_main_mem_status : std_logic;
SIGNAL ww_D_main_mem_clk : std_logic;
SIGNAL \Unit2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Unit2|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Unit2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \cpu_rst~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Unit0|U0|IRld_ctrl~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \cpu_clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Unit0|U3|Mux14~0_combout\ : std_logic;
SIGNAL \Unit1|U3|Add0~1_combout\ : std_logic;
SIGNAL \Unit1|U3|Add0~8_combout\ : std_logic;
SIGNAL \Unit1|U3|Add0~13_combout\ : std_logic;
SIGNAL \Unit1|U3|Add0~18_combout\ : std_logic;
SIGNAL \Unit1|U3|Add0~27_combout\ : std_logic;
SIGNAL \Unit1|U3|Add0~33_combout\ : std_logic;
SIGNAL \Unit1|U3|Add0~43_combout\ : std_logic;
SIGNAL \Unit1|U3|Add0~48_combout\ : std_logic;
SIGNAL \Unit1|U3|Add0~58_combout\ : std_logic;
SIGNAL \Unit1|U3|Add0~68_combout\ : std_logic;
SIGNAL \Unit1|U3|Add0~73_combout\ : std_logic;
SIGNAL \Unit1|U3|ALUz~1_combout\ : std_logic;
SIGNAL \Unit0|U1|process_0~0_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[9][0]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[6][0]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[3][0]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[2][1]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[14][1]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[9][1]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[8][1]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[12][1]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[11][1]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[7][1]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[3][1]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux14~7_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[15][1]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux14~8_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[6][2]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[5][2]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[9][2]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[10][2]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[8][2]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux13~2_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[11][2]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux13~3_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[1][2]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[2][2]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[0][2]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux13~4_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[3][2]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux13~5_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux13~6_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[12][2]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[15][2]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[5][3]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[9][3]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[1][3]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux12~0_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[13][3]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux12~1_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[10][3]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[6][3]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[2][3]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux12~2_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[14][3]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux12~3_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[0][3]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[12][3]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[11][3]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[3][3]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux12~7_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux11~0_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[5][4]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[4][4]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[14][4]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[12][4]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux11~7_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[6][5]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[10][5]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[2][5]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux10~0_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[14][5]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux10~1_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[12][5]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux10~7_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[11][6]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[2][6]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[13][6]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[15][6]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[5][7]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[10][7]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux8~4_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[10][8]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[6][8]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux7~2_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[7][8]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux7~3_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[2][8]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[0][8]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux7~7_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[15][8]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux7~8_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[10][9]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[5][9]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[1][9]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux6~2_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[4][9]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[11][9]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux6~7_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux6~8_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[4][10]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[9][10]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux5~2_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux5~3_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[14][10]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[13][10]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[6][11]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[2][11]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux4~2_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[12][11]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[7][11]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[3][11]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[10][12]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[9][12]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux3~0_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux3~1_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[4][12]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux3~4_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[14][13]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[9][13]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[5][13]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[1][13]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux2~2_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[13][13]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux2~3_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[4][13]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[8][13]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[0][13]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux2~4_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[12][13]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux2~5_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux2~6_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[7][14]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[3][14]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[15][14]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[5][15]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[9][15]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux0~0_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux0~1_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux0~4_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux31~0_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux30~0_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux30~1_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux30~2_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux30~3_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux30~4_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux30~5_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux30~6_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux30~7_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux30~8_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux30~9_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux29~0_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux29~1_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux29~2_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux29~3_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux29~4_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux29~5_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux29~6_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux29~7_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux29~8_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux29~9_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux28~0_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux28~1_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux28~2_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux28~3_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux28~4_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux28~5_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux28~6_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux28~7_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux28~8_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux28~9_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux27~2_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux27~3_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux27~7_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux26~0_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux26~1_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux25~0_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux25~1_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux25~2_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux25~3_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux25~4_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux25~5_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux25~6_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux25~7_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux25~8_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux25~9_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux23~0_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux23~1_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux22~2_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux22~3_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux22~4_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux22~5_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux22~6_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux21~0_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux21~7_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux21~8_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux20~0_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux20~1_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux20~2_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux20~3_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux20~4_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux20~5_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux20~6_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux20~7_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux20~8_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux20~9_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux19~2_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux19~7_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux19~8_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux18~0_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux18~1_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux18~2_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux18~3_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux18~4_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux18~5_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux18~6_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux18~7_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux18~8_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux18~9_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux17~4_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux17~5_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux16~7_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux16~8_combout\ : std_logic;
SIGNAL \Unit0|U0|WideOr51~1_combout\ : std_logic;
SIGNAL \Unit0|U0|Selector44~0_combout\ : std_logic;
SIGNAL \Unit0|U0|WideOr19~1_combout\ : std_logic;
SIGNAL \Unit0|U0|WideOr19~3_combout\ : std_logic;
SIGNAL \Unit0|U0|Mux0~0_combout\ : std_logic;
SIGNAL \Unit0|U0|Selector1~0_combout\ : std_logic;
SIGNAL \Unit0|U0|state.S6a~q\ : std_logic;
SIGNAL \Unit0|U0|WideOr5~0_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[9][0]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[11][1]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[7][1]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[9][1]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[2][1]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[3][1]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[8][1]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[12][1]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[2][2]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[9][2]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[10][2]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[8][2]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[0][2]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[1][2]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[15][2]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[11][2]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[12][2]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[5][2]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[12][3]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[11][3]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[14][3]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[6][3]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[0][3]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[2][3]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[1][3]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[4][4]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[5][4]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[14][4]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[12][5]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[10][5]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[2][5]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[5][7]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[10][7]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[6][8]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[2][8]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[0][8]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[15][8]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[10][8]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[7][8]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[10][9]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[1][9]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[5][9]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[4][10]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[9][10]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[14][10]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[2][11]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[12][11]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[7][11]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[4][12]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[9][12]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[10][12]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[1][13]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[13][13]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[5][13]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[8][13]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[14][13]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[15][14]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[7][14]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[5][15]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[9][15]~feeder_combout\ : std_logic;
SIGNAL \cpu_output[0]~output_o\ : std_logic;
SIGNAL \cpu_output[1]~output_o\ : std_logic;
SIGNAL \cpu_output[2]~output_o\ : std_logic;
SIGNAL \cpu_output[3]~output_o\ : std_logic;
SIGNAL \cpu_output[4]~output_o\ : std_logic;
SIGNAL \cpu_output[5]~output_o\ : std_logic;
SIGNAL \cpu_output[6]~output_o\ : std_logic;
SIGNAL \cpu_output[7]~output_o\ : std_logic;
SIGNAL \cpu_output[8]~output_o\ : std_logic;
SIGNAL \cpu_output[9]~output_o\ : std_logic;
SIGNAL \cpu_output[10]~output_o\ : std_logic;
SIGNAL \cpu_output[11]~output_o\ : std_logic;
SIGNAL \cpu_output[12]~output_o\ : std_logic;
SIGNAL \cpu_output[13]~output_o\ : std_logic;
SIGNAL \cpu_output[14]~output_o\ : std_logic;
SIGNAL \cpu_output[15]~output_o\ : std_logic;
SIGNAL \D_addr_bus[0]~output_o\ : std_logic;
SIGNAL \D_addr_bus[1]~output_o\ : std_logic;
SIGNAL \D_addr_bus[2]~output_o\ : std_logic;
SIGNAL \D_addr_bus[3]~output_o\ : std_logic;
SIGNAL \D_addr_bus[4]~output_o\ : std_logic;
SIGNAL \D_addr_bus[5]~output_o\ : std_logic;
SIGNAL \D_addr_bus[6]~output_o\ : std_logic;
SIGNAL \D_addr_bus[7]~output_o\ : std_logic;
SIGNAL \D_addr_bus[8]~output_o\ : std_logic;
SIGNAL \D_addr_bus[9]~output_o\ : std_logic;
SIGNAL \D_addr_bus[10]~output_o\ : std_logic;
SIGNAL \D_addr_bus[11]~output_o\ : std_logic;
SIGNAL \D_addr_bus[12]~output_o\ : std_logic;
SIGNAL \D_addr_bus[13]~output_o\ : std_logic;
SIGNAL \D_addr_bus[14]~output_o\ : std_logic;
SIGNAL \D_addr_bus[15]~output_o\ : std_logic;
SIGNAL \D_mdin_bus[0]~output_o\ : std_logic;
SIGNAL \D_mdin_bus[1]~output_o\ : std_logic;
SIGNAL \D_mdin_bus[2]~output_o\ : std_logic;
SIGNAL \D_mdin_bus[3]~output_o\ : std_logic;
SIGNAL \D_mdin_bus[4]~output_o\ : std_logic;
SIGNAL \D_mdin_bus[5]~output_o\ : std_logic;
SIGNAL \D_mdin_bus[6]~output_o\ : std_logic;
SIGNAL \D_mdin_bus[7]~output_o\ : std_logic;
SIGNAL \D_mdin_bus[8]~output_o\ : std_logic;
SIGNAL \D_mdin_bus[9]~output_o\ : std_logic;
SIGNAL \D_mdin_bus[10]~output_o\ : std_logic;
SIGNAL \D_mdin_bus[11]~output_o\ : std_logic;
SIGNAL \D_mdin_bus[12]~output_o\ : std_logic;
SIGNAL \D_mdin_bus[13]~output_o\ : std_logic;
SIGNAL \D_mdin_bus[14]~output_o\ : std_logic;
SIGNAL \D_mdin_bus[15]~output_o\ : std_logic;
SIGNAL \D_mdout_bus[0]~output_o\ : std_logic;
SIGNAL \D_mdout_bus[1]~output_o\ : std_logic;
SIGNAL \D_mdout_bus[2]~output_o\ : std_logic;
SIGNAL \D_mdout_bus[3]~output_o\ : std_logic;
SIGNAL \D_mdout_bus[4]~output_o\ : std_logic;
SIGNAL \D_mdout_bus[5]~output_o\ : std_logic;
SIGNAL \D_mdout_bus[6]~output_o\ : std_logic;
SIGNAL \D_mdout_bus[7]~output_o\ : std_logic;
SIGNAL \D_mdout_bus[8]~output_o\ : std_logic;
SIGNAL \D_mdout_bus[9]~output_o\ : std_logic;
SIGNAL \D_mdout_bus[10]~output_o\ : std_logic;
SIGNAL \D_mdout_bus[11]~output_o\ : std_logic;
SIGNAL \D_mdout_bus[12]~output_o\ : std_logic;
SIGNAL \D_mdout_bus[13]~output_o\ : std_logic;
SIGNAL \D_mdout_bus[14]~output_o\ : std_logic;
SIGNAL \D_mdout_bus[15]~output_o\ : std_logic;
SIGNAL \D_immd_bus[0]~output_o\ : std_logic;
SIGNAL \D_immd_bus[1]~output_o\ : std_logic;
SIGNAL \D_immd_bus[2]~output_o\ : std_logic;
SIGNAL \D_immd_bus[3]~output_o\ : std_logic;
SIGNAL \D_immd_bus[4]~output_o\ : std_logic;
SIGNAL \D_immd_bus[5]~output_o\ : std_logic;
SIGNAL \D_immd_bus[6]~output_o\ : std_logic;
SIGNAL \D_immd_bus[7]~output_o\ : std_logic;
SIGNAL \D_immd_bus[8]~output_o\ : std_logic;
SIGNAL \D_immd_bus[9]~output_o\ : std_logic;
SIGNAL \D_immd_bus[10]~output_o\ : std_logic;
SIGNAL \D_immd_bus[11]~output_o\ : std_logic;
SIGNAL \D_immd_bus[12]~output_o\ : std_logic;
SIGNAL \D_immd_bus[13]~output_o\ : std_logic;
SIGNAL \D_immd_bus[14]~output_o\ : std_logic;
SIGNAL \D_immd_bus[15]~output_o\ : std_logic;
SIGNAL \D_rfout_bus[0]~output_o\ : std_logic;
SIGNAL \D_rfout_bus[1]~output_o\ : std_logic;
SIGNAL \D_rfout_bus[2]~output_o\ : std_logic;
SIGNAL \D_rfout_bus[3]~output_o\ : std_logic;
SIGNAL \D_rfout_bus[4]~output_o\ : std_logic;
SIGNAL \D_rfout_bus[5]~output_o\ : std_logic;
SIGNAL \D_rfout_bus[6]~output_o\ : std_logic;
SIGNAL \D_rfout_bus[7]~output_o\ : std_logic;
SIGNAL \D_rfout_bus[8]~output_o\ : std_logic;
SIGNAL \D_rfout_bus[9]~output_o\ : std_logic;
SIGNAL \D_rfout_bus[10]~output_o\ : std_logic;
SIGNAL \D_rfout_bus[11]~output_o\ : std_logic;
SIGNAL \D_rfout_bus[12]~output_o\ : std_logic;
SIGNAL \D_rfout_bus[13]~output_o\ : std_logic;
SIGNAL \D_rfout_bus[14]~output_o\ : std_logic;
SIGNAL \D_rfout_bus[15]~output_o\ : std_logic;
SIGNAL \D_mem_addr[0]~output_o\ : std_logic;
SIGNAL \D_mem_addr[1]~output_o\ : std_logic;
SIGNAL \D_mem_addr[2]~output_o\ : std_logic;
SIGNAL \D_mem_addr[3]~output_o\ : std_logic;
SIGNAL \D_mem_addr[4]~output_o\ : std_logic;
SIGNAL \D_mem_addr[5]~output_o\ : std_logic;
SIGNAL \D_mem_addr[6]~output_o\ : std_logic;
SIGNAL \D_mem_addr[7]~output_o\ : std_logic;
SIGNAL \D_mem_addr[8]~output_o\ : std_logic;
SIGNAL \D_mem_addr[9]~output_o\ : std_logic;
SIGNAL \D_mem_addr[10]~output_o\ : std_logic;
SIGNAL \D_mem_addr[11]~output_o\ : std_logic;
SIGNAL \D_RFwa_s[0]~output_o\ : std_logic;
SIGNAL \D_RFwa_s[1]~output_o\ : std_logic;
SIGNAL \D_RFwa_s[2]~output_o\ : std_logic;
SIGNAL \D_RFwa_s[3]~output_o\ : std_logic;
SIGNAL \D_RFr1a_s[0]~output_o\ : std_logic;
SIGNAL \D_RFr1a_s[1]~output_o\ : std_logic;
SIGNAL \D_RFr1a_s[2]~output_o\ : std_logic;
SIGNAL \D_RFr1a_s[3]~output_o\ : std_logic;
SIGNAL \D_RFr2a_s[0]~output_o\ : std_logic;
SIGNAL \D_RFr2a_s[1]~output_o\ : std_logic;
SIGNAL \D_RFr2a_s[2]~output_o\ : std_logic;
SIGNAL \D_RFr2a_s[3]~output_o\ : std_logic;
SIGNAL \D_RFwe_s~output_o\ : std_logic;
SIGNAL \D_RFr1e_s~output_o\ : std_logic;
SIGNAL \D_RFr2e_s~output_o\ : std_logic;
SIGNAL \D_ALUs_s[0]~output_o\ : std_logic;
SIGNAL \D_ALUs_s[1]~output_o\ : std_logic;
SIGNAL \D_RFs_s[0]~output_o\ : std_logic;
SIGNAL \D_RFs_s[1]~output_o\ : std_logic;
SIGNAL \D_PCld_s~output_o\ : std_logic;
SIGNAL \D_Mre_s~output_o\ : std_logic;
SIGNAL \D_Mwe_s~output_o\ : std_logic;
SIGNAL \D_jpz_s~output_o\ : std_logic;
SIGNAL \D_oe_s~output_o\ : std_logic;
SIGNAL \D_cur_state[0]~output_o\ : std_logic;
SIGNAL \D_cur_state[1]~output_o\ : std_logic;
SIGNAL \D_cur_state[2]~output_o\ : std_logic;
SIGNAL \D_cur_state[3]~output_o\ : std_logic;
SIGNAL \D_big_addr~output_o\ : std_logic;
SIGNAL \D_main_mem_status~output_o\ : std_logic;
SIGNAL \D_main_mem_clk~output_o\ : std_logic;
SIGNAL \cpu_clk~input_o\ : std_logic;
SIGNAL \Unit0|U0|Selector2~0_combout\ : std_logic;
SIGNAL \cpu_rst~input_o\ : std_logic;
SIGNAL \cpu_rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \Unit0|U0|state.S1a~q\ : std_logic;
SIGNAL \cpu_clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \Unit0|U0|Mux1~6_combout\ : std_logic;
SIGNAL \Unit0|U0|state.S1b~q\ : std_logic;
SIGNAL \Unit0|U0|state.S2~q\ : std_logic;
SIGNAL \Unit0|U0|state.S8~q\ : std_logic;
SIGNAL \Unit0|U0|state.S8a~q\ : std_logic;
SIGNAL \Unit0|U0|Mux1~7_combout\ : std_logic;
SIGNAL \Unit0|U0|state.S7~q\ : std_logic;
SIGNAL \Unit0|U0|state.S7a~q\ : std_logic;
SIGNAL \Unit0|U0|WideOr51~0_combout\ : std_logic;
SIGNAL \Unit0|U0|Mux1~3_combout\ : std_logic;
SIGNAL \Unit0|U0|state.SaveMemory_wait~q\ : std_logic;
SIGNAL \Unit0|U0|Mux1~8_combout\ : std_logic;
SIGNAL \Unit0|U0|state.S9~q\ : std_logic;
SIGNAL \Unit0|U0|state.S9a~feeder_combout\ : std_logic;
SIGNAL \Unit0|U0|state.S9a~q\ : std_logic;
SIGNAL \Unit0|U0|state.S9b~feeder_combout\ : std_logic;
SIGNAL \Unit0|U0|state.S9b~q\ : std_logic;
SIGNAL \Unit0|U0|state.S8b~q\ : std_logic;
SIGNAL \Unit0|U0|state.LoadMemory_wait~q\ : std_logic;
SIGNAL \Unit0|U0|Selector35~0_combout\ : std_logic;
SIGNAL \Unit0|U0|state.LoadMemory_a~q\ : std_logic;
SIGNAL \Unit0|U0|state.LoadMemory_b~q\ : std_logic;
SIGNAL \Unit0|U0|state.S7b~q\ : std_logic;
SIGNAL \Unit0|U0|state.S3b~feeder_combout\ : std_logic;
SIGNAL \Unit0|U0|state.S3b~q\ : std_logic;
SIGNAL \Unit0|U0|Selector1~1_combout\ : std_logic;
SIGNAL \Unit0|U0|Selector1~2_combout\ : std_logic;
SIGNAL \Unit0|U0|Mux1~0_combout\ : std_logic;
SIGNAL \Unit0|U0|state.S5~q\ : std_logic;
SIGNAL \Unit0|U0|Selector12~0_combout\ : std_logic;
SIGNAL \Unit0|U0|state.S5a~feeder_combout\ : std_logic;
SIGNAL \Unit0|U0|state.S5a~q\ : std_logic;
SIGNAL \Unit0|U0|state.S5_wait~q\ : std_logic;
SIGNAL \Unit0|U0|Selector13~0_combout\ : std_logic;
SIGNAL \Unit0|U0|state.S5b~q\ : std_logic;
SIGNAL \Unit0|U0|Selector9~0_combout\ : std_logic;
SIGNAL \Unit0|U0|state.S4a~q\ : std_logic;
SIGNAL \Unit0|U0|state.S4_wait~q\ : std_logic;
SIGNAL \Unit0|U0|Selector10~0_combout\ : std_logic;
SIGNAL \Unit0|U0|state.S4b~q\ : std_logic;
SIGNAL \Unit0|U0|Selector40~0_combout\ : std_logic;
SIGNAL \Unit0|U0|state.SaveMemory_b~q\ : std_logic;
SIGNAL \Unit0|U0|Selector53~1_combout\ : std_logic;
SIGNAL \Unit0|U0|state.S0~feeder_combout\ : std_logic;
SIGNAL \Unit0|U0|state.S0~q\ : std_logic;
SIGNAL \Unit0|U0|Selector1~3_combout\ : std_logic;
SIGNAL \Unit0|U0|state.S1~q\ : std_logic;
SIGNAL \Unit0|U0|state.S1_wait~q\ : std_logic;
SIGNAL \Unit0|U0|WideOr5~1_combout\ : std_logic;
SIGNAL \Unit0|U0|WideOr5~2_combout\ : std_logic;
SIGNAL \Unit0|U0|Selector5~0_combout\ : std_logic;
SIGNAL \Unit0|U0|state.LoadMemory~q\ : std_logic;
SIGNAL \Unit0|U0|Selector60~0_combout\ : std_logic;
SIGNAL \Unit0|U0|Selector61~0_combout\ : std_logic;
SIGNAL \Unit1|U1|Mux15~0_combout\ : std_logic;
SIGNAL \Unit1|U1|Mux15~1_combout\ : std_logic;
SIGNAL \Unit0|U0|Selector50~0_combout\ : std_logic;
SIGNAL \Unit0|U0|WideOr19~0_combout\ : std_logic;
SIGNAL \Unit0|U0|WideOr41~0_combout\ : std_logic;
SIGNAL \Unit0|U0|Mux1~5_combout\ : std_logic;
SIGNAL \Unit0|U0|state.S11~q\ : std_logic;
SIGNAL \Unit0|U0|Selector53~0_combout\ : std_logic;
SIGNAL \Unit0|U0|WideOr41~1_combout\ : std_logic;
SIGNAL \Unit0|U0|Selector52~0_combout\ : std_logic;
SIGNAL \Unit0|U0|Selector52~1_combout\ : std_logic;
SIGNAL \Unit0|U1|tmp_PC[0]~16_combout\ : std_logic;
SIGNAL \Unit0|U0|PCclr_ctrl~0_combout\ : std_logic;
SIGNAL \Unit0|U0|PCclr_ctrl~q\ : std_logic;
SIGNAL \Unit0|U0|Selector67~0_combout\ : std_logic;
SIGNAL \Unit0|U1|tmp_PC[4]~26\ : std_logic;
SIGNAL \Unit0|U1|tmp_PC[5]~27_combout\ : std_logic;
SIGNAL \Unit0|U0|Selector51~0_combout\ : std_logic;
SIGNAL \Unit0|U0|Selector66~0_combout\ : std_logic;
SIGNAL \Unit1|U3|Add0~32_combout\ : std_logic;
SIGNAL \Unit0|U0|RFr2a_ctrl[0]~0_combout\ : std_logic;
SIGNAL \Unit0|U1|tmp_PC[5]~28\ : std_logic;
SIGNAL \Unit0|U1|tmp_PC[6]~30\ : std_logic;
SIGNAL \Unit0|U1|tmp_PC[7]~31_combout\ : std_logic;
SIGNAL \Unit0|U0|Selector45~0_combout\ : std_logic;
SIGNAL \Unit0|U0|PCinc_ctrl~q\ : std_logic;
SIGNAL \Unit1|U1|Mux8~0_combout\ : std_logic;
SIGNAL \Unit1|U1|Mux8~1_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[9][7]~feeder_combout\ : std_logic;
SIGNAL \Unit0|U0|Selector57~0_combout\ : std_logic;
SIGNAL \Unit0|U0|Selector48~0_combout\ : std_logic;
SIGNAL \Unit0|U0|Selector48~1_combout\ : std_logic;
SIGNAL \Unit0|U0|RFwe_ctrl~q\ : std_logic;
SIGNAL \Unit0|U0|Selector59~0_combout\ : std_logic;
SIGNAL \Unit1|U2|Decoder0~2_combout\ : std_logic;
SIGNAL \Unit1|U2|Decoder0~3_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[9][7]~q\ : std_logic;
SIGNAL \Unit1|U2|Decoder0~17_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[1][7]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux24~0_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[13][7]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|Decoder0~8_combout\ : std_logic;
SIGNAL \Unit1|U2|Decoder0~20_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[13][7]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux24~1_combout\ : std_logic;
SIGNAL \Unit1|U2|Decoder0~14_combout\ : std_logic;
SIGNAL \Unit1|U2|Decoder0~23_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[15][7]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[3][7]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|Decoder0~6_combout\ : std_logic;
SIGNAL \Unit1|U2|Decoder0~19_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[3][7]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[11][7]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux24~7_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux24~8_combout\ : std_logic;
SIGNAL \Unit0|U0|Selector62~0_combout\ : std_logic;
SIGNAL \Unit0|U0|WideOr56~0_combout\ : std_logic;
SIGNAL \Unit0|U0|Selector63~0_combout\ : std_logic;
SIGNAL \Unit1|U1|Mux14~0_combout\ : std_logic;
SIGNAL \Unit1|U1|Mux14~1_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[0][1]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|Decoder0~18_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[0][1]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux14~4_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[4][1]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|Decoder0~12_combout\ : std_logic;
SIGNAL \Unit1|U2|Decoder0~13_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[4][1]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux14~5_combout\ : std_logic;
SIGNAL \Unit0|U0|Selector65~0_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[13][1]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[13][1]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[1][1]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[1][1]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[5][1]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|Decoder0~9_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[5][1]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux14~2_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux14~3_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux14~6_combout\ : std_logic;
SIGNAL \Unit1|U2|Decoder0~10_combout\ : std_logic;
SIGNAL \Unit1|U2|Decoder0~11_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[6][1]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[10][1]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|Decoder0~0_combout\ : std_logic;
SIGNAL \Unit1|U2|Decoder0~1_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[10][1]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux14~0_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux14~1_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux14~9_combout\ : std_logic;
SIGNAL \Unit0|U0|Selector50~1_combout\ : std_logic;
SIGNAL \Unit0|U0|Selector49~0_combout\ : std_logic;
SIGNAL \Unit0|U0|RFr1e_ctrl~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[10][0]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[10][0]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[8][0]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|Decoder0~4_combout\ : std_logic;
SIGNAL \Unit1|U2|Decoder0~5_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[8][0]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux15~0_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux15~1_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[5][0]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[5][0]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[4][0]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[4][0]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux15~2_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux15~3_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[2][0]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|Decoder0~16_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[2][0]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[0][0]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[0][0]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[1][0]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux15~4_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux15~5_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux15~6_combout\ : std_logic;
SIGNAL \Unit1|U2|Decoder0~21_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[14][0]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[12][0]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|Decoder0~22_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[12][0]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux15~7_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[15][0]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[15][0]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux15~8_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux15~9_combout\ : std_logic;
SIGNAL \Unit1|U3|Add0~3_cout\ : std_logic;
SIGNAL \Unit1|U3|Add0~5\ : std_logic;
SIGNAL \Unit1|U3|Add0~9_combout\ : std_logic;
SIGNAL \Unit1|U3|Add0~7_combout\ : std_logic;
SIGNAL \Unit1|U3|Add0~11_combout\ : std_logic;
SIGNAL \Unit1|U3|Add0~17_combout\ : std_logic;
SIGNAL \Unit1|U3|Add0~10\ : std_logic;
SIGNAL \Unit1|U3|Add0~15\ : std_logic;
SIGNAL \Unit1|U3|Add0~19_combout\ : std_logic;
SIGNAL \Unit1|U3|Add0~21_combout\ : std_logic;
SIGNAL \Unit1|U3|Add0~20\ : std_logic;
SIGNAL \Unit1|U3|Add0~24_combout\ : std_logic;
SIGNAL \Unit1|U3|Add0~22_combout\ : std_logic;
SIGNAL \Unit1|U3|Add0~26_combout\ : std_logic;
SIGNAL \Unit1|U1|Mux7~0_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[13][8]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[13][8]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[14][8]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[12][8]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[12][8]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux23~7_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux23~8_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[5][8]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[5][8]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[4][8]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[4][8]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux23~2_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux23~3_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[3][8]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[1][8]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[1][8]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux23~4_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux23~5_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux23~6_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux23~9_combout\ : std_logic;
SIGNAL \Unit0|U0|Selector50~2_combout\ : std_logic;
SIGNAL \Unit0|U0|RFr2e_ctrl~q\ : std_logic;
SIGNAL \Unit1|U3|Add0~42_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[11][8]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[11][8]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[9][8]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[9][8]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[8][8]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[8][8]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux7~0_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux7~1_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux7~4_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux7~5_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux7~6_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux7~9_combout\ : std_logic;
SIGNAL \Unit1|U3|Add0~38_combout\ : std_logic;
SIGNAL \Unit1|U3|Add0~35\ : std_logic;
SIGNAL \Unit1|U3|Add0~40\ : std_logic;
SIGNAL \Unit1|U3|Add0~44_combout\ : std_logic;
SIGNAL \Unit1|U3|Add0~46_combout\ : std_logic;
SIGNAL \Unit1|U1|Mux6~0_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[14][9]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[2][9]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[2][9]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux6~0_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[6][9]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[6][9]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux6~1_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[9][9]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[9][9]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[13][9]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[13][9]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux6~3_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[12][9]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[0][9]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[8][9]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[8][9]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux6~4_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux6~5_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux6~6_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux6~9_combout\ : std_logic;
SIGNAL \Unit1|U3|Add0~45\ : std_logic;
SIGNAL \Unit1|U3|Add0~49_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[7][9]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|Decoder0~15_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[7][9]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[3][9]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[3][9]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux22~7_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[15][9]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[15][9]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux22~8_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux22~0_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux22~1_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux22~9_combout\ : std_logic;
SIGNAL \Unit1|U3|Add0~47_combout\ : std_logic;
SIGNAL \Unit1|U3|Add0~51_combout\ : std_logic;
SIGNAL \Unit1|U1|Mux4~0_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[15][11]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[15][11]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[11][11]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux4~7_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux4~8_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[8][11]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[8][11]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[0][11]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[4][11]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[4][11]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux4~4_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux4~5_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[10][11]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[14][11]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[14][11]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux4~3_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux4~6_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[13][11]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[13][11]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[5][11]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[5][11]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[1][11]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[9][11]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[9][11]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux4~0_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux4~1_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux4~9_combout\ : std_logic;
SIGNAL \Unit1|U3|Add0~57_combout\ : std_logic;
SIGNAL \Unit1|U3|Add0~50\ : std_logic;
SIGNAL \Unit1|U3|Add0~55\ : std_logic;
SIGNAL \Unit1|U3|Add0~59_combout\ : std_logic;
SIGNAL \Unit1|U3|Add0~61_combout\ : std_logic;
SIGNAL \Unit1|U1|Mux1~0_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[12][14]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[12][14]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[13][14]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux1~7_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[14][14]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[14][14]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux1~8_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[1][14]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[1][14]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[2][14]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[0][14]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux1~4_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux1~5_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[10][14]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[10][14]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[8][14]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux1~2_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[9][14]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux1~3_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux1~6_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[6][14]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[6][14]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[4][14]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[4][14]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux1~0_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux1~1_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux1~9_combout\ : std_logic;
SIGNAL \Unit1|U3|Add0~63_combout\ : std_logic;
SIGNAL \Unit1|U3|Add0~60\ : std_logic;
SIGNAL \Unit1|U3|Add0~65\ : std_logic;
SIGNAL \Unit1|U3|Add0~70\ : std_logic;
SIGNAL \Unit1|U3|Add0~74_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[11][14]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[11][14]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux17~2_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux17~3_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux17~6_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux17~7_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux17~8_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[5][14]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux17~0_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux17~1_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux17~9_combout\ : std_logic;
SIGNAL \Unit1|U3|Add0~72_combout\ : std_logic;
SIGNAL \Unit1|U3|Add0~76_combout\ : std_logic;
SIGNAL \Unit1|U1|Mux0~0_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[1][15]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[1][15]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux16~0_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[13][15]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux16~1_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[12][15]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[0][15]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[4][15]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux16~4_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux16~5_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[10][15]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[10][15]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[2][15]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[2][15]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[6][15]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux16~2_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[14][15]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[14][15]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux16~3_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux16~6_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux16~9_combout\ : std_logic;
SIGNAL \Unit1|U3|Add0~77_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[15][15]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[15][15]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[7][15]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[7][15]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[11][15]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[11][15]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[3][15]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[3][15]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux0~7_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux0~8_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[8][15]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[8][15]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux0~5_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux0~2_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux0~3_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux0~6_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux0~9_combout\ : std_logic;
SIGNAL \Unit1|U3|Add0~78_combout\ : std_logic;
SIGNAL \Unit1|U3|Add0~75\ : std_logic;
SIGNAL \Unit1|U3|Add0~79_combout\ : std_logic;
SIGNAL \Unit1|U3|Add0~81_combout\ : std_logic;
SIGNAL \Unit1|U1|Mux2~0_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[7][13]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[7][13]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[3][13]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[3][13]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux2~7_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[11][13]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[11][13]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[15][13]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux2~8_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[6][13]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[6][13]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[10][13]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[2][13]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[2][13]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux2~0_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux2~1_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux2~9_combout\ : std_logic;
SIGNAL \Unit1|U3|Add0~67_combout\ : std_logic;
SIGNAL \Unit1|U3|Add0~69_combout\ : std_logic;
SIGNAL \Unit1|U3|Add0~71_combout\ : std_logic;
SIGNAL \Unit1|U1|Mux3~0_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[7][12]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[7][12]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[5][12]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux19~3_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[2][12]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[2][12]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[3][12]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[0][12]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[0][12]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[1][12]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[1][12]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux19~4_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux19~5_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux19~6_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[8][12]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[8][12]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux19~0_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[11][12]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[11][12]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux19~1_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux19~9_combout\ : std_logic;
SIGNAL \Unit1|U3|Add0~62_combout\ : std_logic;
SIGNAL \Unit1|U3|Add0~64_combout\ : std_logic;
SIGNAL \Unit1|U3|Add0~66_combout\ : std_logic;
SIGNAL \Unit1|U1|Mux13~0_combout\ : std_logic;
SIGNAL \Unit1|U1|Mux13~1_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[7][2]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[7][2]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[4][2]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[4][2]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux13~0_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux13~1_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[14][2]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[13][2]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[13][2]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux13~7_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux13~8_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux13~9_combout\ : std_logic;
SIGNAL \Unit1|U3|Add0~14_combout\ : std_logic;
SIGNAL \Unit1|U3|Add0~12_combout\ : std_logic;
SIGNAL \Unit1|U3|Add0~16_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[8][7]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[8][7]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[0][7]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[0][7]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[4][7]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux24~4_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[12][7]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux24~5_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[14][7]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[6][7]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[2][7]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[2][7]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux24~2_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux24~3_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux24~6_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux24~9_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux8~0_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux8~1_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux8~5_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux8~2_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux8~3_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux8~6_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux8~7_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[7][7]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[7][7]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux8~8_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux8~9_combout\ : std_logic;
SIGNAL \Unit1|U3|Add0~37_combout\ : std_logic;
SIGNAL \Unit1|U3|Add0~39_combout\ : std_logic;
SIGNAL \Unit1|U3|Add0~41_combout\ : std_logic;
SIGNAL \Unit1|U3|ALUz~0_combout\ : std_logic;
SIGNAL \Unit1|U3|ALUz~2_combout\ : std_logic;
SIGNAL \Unit1|U3|ALUz~4_combout\ : std_logic;
SIGNAL \Unit1|U3|ALUz~5_combout\ : std_logic;
SIGNAL \Unit0|U1|tmp_PC~18_combout\ : std_logic;
SIGNAL \Unit0|U3|Mux8~0_combout\ : std_logic;
SIGNAL \Unit0|U3|Mux8~1_combout\ : std_logic;
SIGNAL \Unit1|U1|Mux11~0_combout\ : std_logic;
SIGNAL \Unit1|U1|Mux11~1_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[2][4]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[2][4]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[1][4]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[0][4]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux27~4_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux27~5_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux27~6_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[11][4]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[10][4]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[10][4]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[8][4]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[8][4]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[9][4]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[9][4]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux27~0_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux27~1_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[15][4]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[13][4]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[13][4]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux27~8_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux27~9_combout\ : std_logic;
SIGNAL \Unit1|U3|Add0~23_combout\ : std_logic;
SIGNAL \Unit1|U3|Add0~25\ : std_logic;
SIGNAL \Unit1|U3|Add0~29_combout\ : std_logic;
SIGNAL \Unit1|U3|Add0~31_combout\ : std_logic;
SIGNAL \Unit1|U1|Mux10~0_combout\ : std_logic;
SIGNAL \Unit1|U1|Mux10~1_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[15][5]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[15][5]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[11][5]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[11][5]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[7][5]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[7][5]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[3][5]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[3][5]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux26~7_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux26~8_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[4][5]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[4][5]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[8][5]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[8][5]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[0][5]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux26~4_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux26~5_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[13][5]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[13][5]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[1][5]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux26~2_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux26~3_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux26~6_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux26~9_combout\ : std_logic;
SIGNAL \Unit1|U3|Add0~28_combout\ : std_logic;
SIGNAL \Unit1|U3|Add0~30\ : std_logic;
SIGNAL \Unit1|U3|Add0~34_combout\ : std_logic;
SIGNAL \Unit1|U3|Add0~36_combout\ : std_logic;
SIGNAL \Unit1|U1|Mux9~0_combout\ : std_logic;
SIGNAL \Unit1|U1|Mux9~1_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[14][6]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[12][6]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[12][6]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux9~7_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux9~8_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[3][6]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[3][6]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[1][6]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[0][6]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[0][6]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux9~4_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux9~5_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[9][6]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[9][6]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[10][6]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[10][6]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[8][6]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[8][6]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux9~2_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux9~3_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux9~6_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[7][6]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[7][6]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[6][6]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[6][6]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[5][6]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[5][6]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[4][6]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[4][6]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux9~0_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux9~1_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux9~9_combout\ : std_logic;
SIGNAL \Unit0|U3|Mux9~0_combout\ : std_logic;
SIGNAL \Unit0|U1|tmp_PC[6]~29_combout\ : std_logic;
SIGNAL \Unit0|U3|Mux9~1_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux10~8_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux10~4_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux10~5_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[5][5]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[5][5]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux10~2_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[9][5]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[9][5]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux10~3_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux10~6_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux10~9_combout\ : std_logic;
SIGNAL \Unit0|U3|Mux10~0_combout\ : std_logic;
SIGNAL \Unit0|U3|Mux10~1_combout\ : std_logic;
SIGNAL \Unit1|U1|Mux5~0_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[11][10]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[11][10]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[8][10]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[10][10]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[10][10]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux21~2_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux21~3_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[3][10]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[2][10]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux21~4_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[1][10]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[1][10]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux21~5_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux21~6_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[6][10]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[6][10]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[7][10]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[7][10]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux21~1_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux21~9_combout\ : std_logic;
SIGNAL \Unit1|U3|Add0~53_combout\ : std_logic;
SIGNAL \Unit1|U3|Add0~54_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[5][10]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[5][10]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux5~0_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux5~1_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[15][10]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[12][10]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[12][10]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux5~7_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux5~8_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[0][10]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[0][10]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux5~4_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux5~5_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux5~6_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux5~9_combout\ : std_logic;
SIGNAL \Unit1|U3|Add0~52_combout\ : std_logic;
SIGNAL \Unit1|U3|Add0~56_combout\ : std_logic;
SIGNAL \Unit1|U3|ALUz~3_combout\ : std_logic;
SIGNAL \Unit0|U1|process_0~1_combout\ : std_logic;
SIGNAL \Unit0|U1|tmp_PC[0]~17\ : std_logic;
SIGNAL \Unit0|U1|tmp_PC[1]~19_combout\ : std_logic;
SIGNAL \Unit0|U1|tmp_PC[1]~20\ : std_logic;
SIGNAL \Unit0|U1|tmp_PC[2]~21_combout\ : std_logic;
SIGNAL \Unit0|U1|tmp_PC[2]~22\ : std_logic;
SIGNAL \Unit0|U1|tmp_PC[3]~24\ : std_logic;
SIGNAL \Unit0|U1|tmp_PC[4]~25_combout\ : std_logic;
SIGNAL \Unit0|U3|Mux11~0_combout\ : std_logic;
SIGNAL \Unit0|U3|Mux11~1_combout\ : std_logic;
SIGNAL \Unit0|U0|Selector64~0_combout\ : std_logic;
SIGNAL \Unit1|U1|Mux12~0_combout\ : std_logic;
SIGNAL \Unit1|U1|Mux12~1_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[8][3]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[8][3]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[4][3]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux12~4_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux12~5_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux12~6_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[7][3]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[7][3]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[15][3]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[15][3]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux12~8_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux12~9_combout\ : std_logic;
SIGNAL \Unit0|U1|tmp_PC[3]~23_combout\ : std_logic;
SIGNAL \Unit0|U3|Mux12~0_combout\ : std_logic;
SIGNAL \Unit0|U3|Mux12~1_combout\ : std_logic;
SIGNAL \Unit0|U3|Mux13~0_combout\ : std_logic;
SIGNAL \Unit0|U3|Mux13~1_combout\ : std_logic;
SIGNAL \Unit0|U3|Mux14~1_combout\ : std_logic;
SIGNAL \Unit0|U3|Mux15~0_combout\ : std_logic;
SIGNAL \Unit0|U3|Mux15~1_combout\ : std_logic;
SIGNAL \Unit0|U0|Selector56~0_combout\ : std_logic;
SIGNAL \Unit1|U2|Decoder0~7_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[11][0]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux31~1_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[7][0]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[7][0]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux31~2_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux31~3_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux31~4_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux31~5_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux31~6_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux31~7_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[13][0]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux31~8_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux31~9_combout\ : std_logic;
SIGNAL \Unit1|U3|Add0~0_combout\ : std_logic;
SIGNAL \Unit1|U3|Add0~4_combout\ : std_logic;
SIGNAL \Unit1|U3|Add0~6_combout\ : std_logic;
SIGNAL \Unit0|U0|Mux1~1_combout\ : std_logic;
SIGNAL \Unit0|U0|state.S4~q\ : std_logic;
SIGNAL \Unit0|U0|Selector46~0_combout\ : std_logic;
SIGNAL \Unit0|U0|Selector46~1_combout\ : std_logic;
SIGNAL \Unit0|U0|IRld_ctrl~q\ : std_logic;
SIGNAL \Unit0|U0|IRld_ctrl~clkctrl_outclk\ : std_logic;
SIGNAL \Unit0|U0|Mux1~4_combout\ : std_logic;
SIGNAL \Unit0|U0|state.S3~q\ : std_logic;
SIGNAL \Unit0|U0|state.S3_wait~q\ : std_logic;
SIGNAL \Unit0|U0|Selector6~0_combout\ : std_logic;
SIGNAL \Unit0|U0|state.S3a~feeder_combout\ : std_logic;
SIGNAL \Unit0|U0|state.S3a~q\ : std_logic;
SIGNAL \Unit0|U0|Selector47~1_combout\ : std_logic;
SIGNAL \Unit0|U0|Selector47~2_combout\ : std_logic;
SIGNAL \Unit0|U0|Mre_ctrl~q\ : std_logic;
SIGNAL \Unit0|U0|Mux1~2_combout\ : std_logic;
SIGNAL \Unit0|U0|state.SaveMemory~q\ : std_logic;
SIGNAL \Unit0|U0|Selector39~0_combout\ : std_logic;
SIGNAL \Unit0|U0|state.SaveMemory_a~feeder_combout\ : std_logic;
SIGNAL \Unit0|U0|state.SaveMemory_a~q\ : std_logic;
SIGNAL \Unit0|U0|Selector47~0_combout\ : std_logic;
SIGNAL \Unit0|U0|Selector53~2_combout\ : std_logic;
SIGNAL \Unit0|U0|Mwe_ctrl~q\ : std_logic;
SIGNAL \Unit0|U0|state.S11_wait~feeder_combout\ : std_logic;
SIGNAL \Unit0|U0|state.S11_wait~q\ : std_logic;
SIGNAL \Unit0|U0|Selector27~0_combout\ : std_logic;
SIGNAL \Unit0|U0|state.S11a~q\ : std_logic;
SIGNAL \Unit0|U0|Selector55~0_combout\ : std_logic;
SIGNAL \Unit0|U0|oe_ctrl~q\ : std_logic;
SIGNAL \Unit0|U3|Mux7~0_combout\ : std_logic;
SIGNAL \Unit0|U1|tmp_PC[7]~32\ : std_logic;
SIGNAL \Unit0|U1|tmp_PC[8]~33_combout\ : std_logic;
SIGNAL \Unit0|U3|Mux7~1_combout\ : std_logic;
SIGNAL \Unit0|U1|tmp_PC[8]~34\ : std_logic;
SIGNAL \Unit0|U1|tmp_PC[9]~35_combout\ : std_logic;
SIGNAL \Unit0|U3|Mux6~0_combout\ : std_logic;
SIGNAL \Unit0|U3|Mux6~1_combout\ : std_logic;
SIGNAL \Unit0|U3|Mux5~0_combout\ : std_logic;
SIGNAL \Unit0|U1|tmp_PC[9]~36\ : std_logic;
SIGNAL \Unit0|U1|tmp_PC[10]~37_combout\ : std_logic;
SIGNAL \Unit0|U3|Mux5~1_combout\ : std_logic;
SIGNAL \Unit0|U3|Mux4~0_combout\ : std_logic;
SIGNAL \Unit0|U1|tmp_PC[10]~38\ : std_logic;
SIGNAL \Unit0|U1|tmp_PC[11]~39_combout\ : std_logic;
SIGNAL \Unit0|U3|Mux4~1_combout\ : std_logic;
SIGNAL \Unit0|U1|tmp_PC[11]~40\ : std_logic;
SIGNAL \Unit0|U1|tmp_PC[12]~41_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[13][12]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[15][12]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[15][12]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[14][12]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[14][12]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[12][12]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[12][12]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux3~7_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux3~8_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[6][12]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[6][12]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux3~2_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux3~3_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux3~5_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux3~6_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux3~9_combout\ : std_logic;
SIGNAL \Unit0|U3|Mux3~0_combout\ : std_logic;
SIGNAL \Unit0|U1|tmp_PC[12]~42\ : std_logic;
SIGNAL \Unit0|U1|tmp_PC[13]~43_combout\ : std_logic;
SIGNAL \Unit0|U3|Mux2~0_combout\ : std_logic;
SIGNAL \Unit0|U1|tmp_PC[13]~44\ : std_logic;
SIGNAL \Unit0|U1|tmp_PC[14]~45_combout\ : std_logic;
SIGNAL \Unit0|U3|Mux1~0_combout\ : std_logic;
SIGNAL \Unit0|U1|tmp_PC[14]~46\ : std_logic;
SIGNAL \Unit0|U1|tmp_PC[15]~47_combout\ : std_logic;
SIGNAL \Unit0|U3|Mux0~0_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux11~8_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[6][4]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[6][4]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux11~2_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[7][4]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[7][4]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux11~3_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[3][4]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[3][4]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux11~4_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux11~5_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux11~6_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux11~1_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux11~9_combout\ : std_logic;
SIGNAL \Unit0|U0|Selector58~0_combout\ : std_logic;
SIGNAL \Unit0|U0|Selector54~0_combout\ : std_logic;
SIGNAL \Unit0|U0|jmpen_ctrl~q\ : std_logic;
SIGNAL \Unit0|U0|Selector42~0_combout\ : std_logic;
SIGNAL \Unit0|U0|Selector44~1_combout\ : std_logic;
SIGNAL \Unit0|U0|Selector44~2_combout\ : std_logic;
SIGNAL \Unit0|U0|WideOr19~2_combout\ : std_logic;
SIGNAL \Unit0|U0|Selector43~0_combout\ : std_logic;
SIGNAL \Unit0|U0|Selector43~1_combout\ : std_logic;
SIGNAL \Unit0|U0|Mux1~9_combout\ : std_logic;
SIGNAL \Unit0|U0|state.S6~q\ : std_logic;
SIGNAL \Unit0|U0|Selector42~2_combout\ : std_logic;
SIGNAL \Unit0|U0|Selector42~1_combout\ : std_logic;
SIGNAL \Unit0|U0|Selector42~3_combout\ : std_logic;
SIGNAL \Unit0|U0|Mux1~10_combout\ : std_logic;
SIGNAL \Unit0|U0|state.S10~0_combout\ : std_logic;
SIGNAL \Unit0|U0|state.S10~q\ : std_logic;
SIGNAL \Unit0|U0|Selector41~0_combout\ : std_logic;
SIGNAL \Unit0|U0|Selector41~1_combout\ : std_logic;
SIGNAL \Unit0|U0|Selector41~2_combout\ : std_logic;
SIGNAL \Unit0|U1|tmp_PC\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \Unit1|U2|RFr2\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \Unit0|U0|RFr2a_ctrl\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Unit1|U2|RFr1\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \Unit0|U0|Ms_ctrl\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \Unit2|altsyncram_component|auto_generated|q_a\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \Unit0|U0|RFs_ctrl\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \Unit0|U0|RFr1a_ctrl\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Unit0|U0|RFwa_ctrl\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Unit0|U0|ALUs_ctrl\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \Unit0|U0|cur_state\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Unit0|U2|dir_addr\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \Unit0|U2|IRout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_cpu_rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_cpu_rst~input_o\ : std_logic;
SIGNAL \Unit0|U0|ALT_INV_state.S2~q\ : std_logic;

BEGIN

ww_cpu_clk <= cpu_clk;
ww_cpu_rst <= cpu_rst;
cpu_output <= ww_cpu_output;
D_addr_bus <= ww_D_addr_bus;
D_mdin_bus <= ww_D_mdin_bus;
D_mdout_bus <= ww_D_mdout_bus;
D_immd_bus <= ww_D_immd_bus;
D_rfout_bus <= ww_D_rfout_bus;
D_mem_addr <= ww_D_mem_addr;
D_RFwa_s <= ww_D_RFwa_s;
D_RFr1a_s <= ww_D_RFr1a_s;
D_RFr2a_s <= ww_D_RFr2a_s;
D_RFwe_s <= ww_D_RFwe_s;
D_RFr1e_s <= ww_D_RFr1e_s;
D_RFr2e_s <= ww_D_RFr2e_s;
D_ALUs_s <= ww_D_ALUs_s;
D_RFs_s <= ww_D_RFs_s;
D_PCld_s <= ww_D_PCld_s;
D_Mre_s <= ww_D_Mre_s;
D_Mwe_s <= ww_D_Mwe_s;
D_jpz_s <= ww_D_jpz_s;
D_oe_s <= ww_D_oe_s;
D_cur_state <= ww_D_cur_state;
D_big_addr <= ww_D_big_addr;
D_main_mem_status <= ww_D_main_mem_status;
D_main_mem_clk <= ww_D_main_mem_clk;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Unit2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & \Unit1|U3|Add0~81_combout\ & \Unit1|U3|Add0~76_combout\ & \Unit1|U3|Add0~71_combout\ & \Unit1|U3|Add0~66_combout\ & \Unit1|U3|Add0~61_combout\ & 
\Unit1|U3|Add0~56_combout\ & \Unit1|U3|Add0~51_combout\ & \Unit1|U3|Add0~46_combout\ & \Unit1|U3|Add0~41_combout\ & \Unit1|U3|Add0~36_combout\ & \Unit1|U3|Add0~31_combout\ & \Unit1|U3|Add0~26_combout\ & \Unit1|U3|Add0~21_combout\ & 
\Unit1|U3|Add0~16_combout\ & \Unit1|U3|Add0~11_combout\ & \Unit1|U3|Add0~6_combout\);

\Unit2|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\Unit0|U3|Mux8~1_combout\ & \Unit0|U3|Mux9~1_combout\ & \Unit0|U3|Mux10~1_combout\ & \Unit0|U3|Mux11~1_combout\ & \Unit0|U3|Mux12~1_combout\ & \Unit0|U3|Mux13~1_combout\ & 
\Unit0|U3|Mux14~1_combout\ & \Unit0|U3|Mux15~1_combout\);

\Unit2|altsyncram_component|auto_generated|q_a\(0) <= \Unit2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\Unit2|altsyncram_component|auto_generated|q_a\(1) <= \Unit2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\Unit2|altsyncram_component|auto_generated|q_a\(2) <= \Unit2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\Unit2|altsyncram_component|auto_generated|q_a\(3) <= \Unit2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\Unit2|altsyncram_component|auto_generated|q_a\(4) <= \Unit2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\Unit2|altsyncram_component|auto_generated|q_a\(5) <= \Unit2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\Unit2|altsyncram_component|auto_generated|q_a\(6) <= \Unit2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\Unit2|altsyncram_component|auto_generated|q_a\(7) <= \Unit2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\Unit2|altsyncram_component|auto_generated|q_a\(8) <= \Unit2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\Unit2|altsyncram_component|auto_generated|q_a\(9) <= \Unit2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(9);
\Unit2|altsyncram_component|auto_generated|q_a\(10) <= \Unit2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(10);
\Unit2|altsyncram_component|auto_generated|q_a\(11) <= \Unit2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(11);
\Unit2|altsyncram_component|auto_generated|q_a\(12) <= \Unit2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(12);
\Unit2|altsyncram_component|auto_generated|q_a\(13) <= \Unit2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(13);
\Unit2|altsyncram_component|auto_generated|q_a\(14) <= \Unit2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(14);
\Unit2|altsyncram_component|auto_generated|q_a\(15) <= \Unit2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(15);

\cpu_rst~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \cpu_rst~input_o\);

\Unit0|U0|IRld_ctrl~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Unit0|U0|IRld_ctrl~q\);

\cpu_clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \cpu_clk~input_o\);
\ALT_INV_cpu_rst~inputclkctrl_outclk\ <= NOT \cpu_rst~inputclkctrl_outclk\;
\ALT_INV_cpu_rst~input_o\ <= NOT \cpu_rst~input_o\;
\Unit0|U0|ALT_INV_state.S2~q\ <= NOT \Unit0|U0|state.S2~q\;

-- Location: LCCOMB_X36_Y42_N12
\Unit0|U3|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U3|Mux14~0_combout\ = (\Unit0|U0|Ms_ctrl\(1) & (\Unit1|U2|RFr1\(1) & (!\Unit0|U0|Ms_ctrl\(0)))) # (!\Unit0|U0|Ms_ctrl\(1) & (((\Unit0|U0|Ms_ctrl\(0)) # (\Unit0|U1|tmp_PC\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110101011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|Ms_ctrl\(1),
	datab => \Unit1|U2|RFr1\(1),
	datac => \Unit0|U0|Ms_ctrl\(0),
	datad => \Unit0|U1|tmp_PC\(1),
	combout => \Unit0|U3|Mux14~0_combout\);

-- Location: LCCOMB_X38_Y43_N16
\Unit1|U3|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|Add0~1_combout\ = \Unit1|U2|RFr2\(0) $ (\Unit0|U0|ALUs_ctrl\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Unit1|U2|RFr2\(0),
	datad => \Unit0|U0|ALUs_ctrl\(0),
	combout => \Unit1|U3|Add0~1_combout\);

-- Location: FF_X38_Y43_N27
\Unit1|U2|RFr2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|Mux30~9_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit0|U0|RFr2e_ctrl~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|RFr2\(1));

-- Location: LCCOMB_X39_Y43_N10
\Unit1|U3|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|Add0~8_combout\ = \Unit1|U2|RFr2\(1) $ (\Unit0|U0|ALUs_ctrl\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Unit1|U2|RFr2\(1),
	datad => \Unit0|U0|ALUs_ctrl\(0),
	combout => \Unit1|U3|Add0~8_combout\);

-- Location: FF_X38_Y43_N13
\Unit1|U2|RFr2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|Mux29~9_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit0|U0|RFr2e_ctrl~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|RFr2\(2));

-- Location: LCCOMB_X38_Y43_N8
\Unit1|U3|Add0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|Add0~13_combout\ = \Unit1|U2|RFr2\(2) $ (\Unit0|U0|ALUs_ctrl\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|RFr2\(2),
	datad => \Unit0|U0|ALUs_ctrl\(0),
	combout => \Unit1|U3|Add0~13_combout\);

-- Location: FF_X38_Y43_N11
\Unit1|U2|RFr2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|Mux28~9_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit0|U0|RFr2e_ctrl~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|RFr2\(3));

-- Location: LCCOMB_X38_Y43_N14
\Unit1|U3|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|Add0~18_combout\ = \Unit1|U2|RFr2\(3) $ (\Unit0|U0|ALUs_ctrl\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|RFr2\(3),
	datad => \Unit0|U0|ALUs_ctrl\(0),
	combout => \Unit1|U3|Add0~18_combout\);

-- Location: LCCOMB_X38_Y41_N6
\Unit1|U3|Add0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|Add0~27_combout\ = (!\Unit0|U0|ALUs_ctrl\(1) & ((\Unit0|U0|ALUs_ctrl\(0) & ((\Unit1|U2|RFr2\(5)))) # (!\Unit0|U0|ALUs_ctrl\(0) & (\Unit1|U2|RFr1\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|RFr1\(5),
	datab => \Unit0|U0|ALUs_ctrl\(0),
	datac => \Unit0|U0|ALUs_ctrl\(1),
	datad => \Unit1|U2|RFr2\(5),
	combout => \Unit1|U3|Add0~27_combout\);

-- Location: FF_X40_Y41_N27
\Unit1|U2|RFr2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|Mux25~9_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit0|U0|RFr2e_ctrl~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|RFr2\(6));

-- Location: LCCOMB_X40_Y41_N10
\Unit1|U3|Add0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|Add0~33_combout\ = \Unit1|U2|RFr2\(6) $ (\Unit0|U0|ALUs_ctrl\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|RFr2\(6),
	datac => \Unit0|U0|ALUs_ctrl\(0),
	combout => \Unit1|U3|Add0~33_combout\);

-- Location: LCCOMB_X38_Y41_N18
\Unit1|U3|Add0~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|Add0~43_combout\ = \Unit1|U2|RFr2\(8) $ (\Unit0|U0|ALUs_ctrl\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|RFr2\(8),
	datac => \Unit0|U0|ALUs_ctrl\(0),
	combout => \Unit1|U3|Add0~43_combout\);

-- Location: LCCOMB_X38_Y41_N0
\Unit1|U3|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|Add0~48_combout\ = \Unit1|U2|RFr2\(9) $ (\Unit0|U0|ALUs_ctrl\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Unit1|U2|RFr2\(9),
	datac => \Unit0|U0|ALUs_ctrl\(0),
	combout => \Unit1|U3|Add0~48_combout\);

-- Location: FF_X38_Y42_N19
\Unit1|U2|RFr2[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|Mux20~9_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit0|U0|RFr2e_ctrl~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|RFr2\(11));

-- Location: LCCOMB_X38_Y42_N16
\Unit1|U3|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|Add0~58_combout\ = \Unit1|U2|RFr2\(11) $ (\Unit0|U0|ALUs_ctrl\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Unit1|U2|RFr2\(11),
	datad => \Unit0|U0|ALUs_ctrl\(0),
	combout => \Unit1|U3|Add0~58_combout\);

-- Location: FF_X38_Y41_N15
\Unit1|U2|RFr2[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|Mux18~9_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit0|U0|RFr2e_ctrl~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|RFr2\(13));

-- Location: LCCOMB_X38_Y42_N14
\Unit1|U3|Add0~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|Add0~68_combout\ = \Unit1|U2|RFr2\(13) $ (\Unit0|U0|ALUs_ctrl\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|RFr2\(13),
	datad => \Unit0|U0|ALUs_ctrl\(0),
	combout => \Unit1|U3|Add0~68_combout\);

-- Location: LCCOMB_X40_Y42_N6
\Unit1|U3|Add0~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|Add0~73_combout\ = \Unit1|U2|RFr2\(14) $ (\Unit0|U0|ALUs_ctrl\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Unit1|U2|RFr2\(14),
	datad => \Unit0|U0|ALUs_ctrl\(0),
	combout => \Unit1|U3|Add0~73_combout\);

-- Location: LCCOMB_X39_Y43_N6
\Unit1|U3|ALUz~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|ALUz~1_combout\ = (!\Unit1|U3|Add0~27_combout\ & (!\Unit1|U3|Add0~26_combout\ & ((!\Unit1|U3|Add0~29_combout\) # (!\Unit0|U0|ALUs_ctrl\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|ALUs_ctrl\(1),
	datab => \Unit1|U3|Add0~29_combout\,
	datac => \Unit1|U3|Add0~27_combout\,
	datad => \Unit1|U3|Add0~26_combout\,
	combout => \Unit1|U3|ALUz~1_combout\);

-- Location: LCCOMB_X39_Y46_N26
\Unit0|U1|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U1|process_0~0_combout\ = (\Unit0|U0|jmpen_ctrl~q\ & !\Unit0|U0|PCinc_ctrl~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Unit0|U0|jmpen_ctrl~q\,
	datac => \Unit0|U0|PCinc_ctrl~q\,
	combout => \Unit0|U1|process_0~0_combout\);

-- Location: FF_X35_Y45_N27
\Unit1|U2|tmp_rf[9][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[9][0]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[9][0]~q\);

-- Location: FF_X38_Y45_N5
\Unit1|U2|tmp_rf[6][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U1|Mux15~1_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[6][0]~q\);

-- Location: FF_X39_Y43_N1
\Unit1|U2|tmp_rf[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	asdata => \Unit1|U1|Mux15~1_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|U2|Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[3][0]~q\);

-- Location: FF_X35_Y40_N15
\Unit1|U2|tmp_rf[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[2][1]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[2][1]~q\);

-- Location: FF_X36_Y42_N1
\Unit1|U2|tmp_rf[14][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	asdata => \Unit1|U1|Mux14~1_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|U2|Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[14][1]~q\);

-- Location: FF_X36_Y44_N31
\Unit1|U2|tmp_rf[9][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[9][1]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[9][1]~q\);

-- Location: FF_X40_Y40_N9
\Unit1|U2|tmp_rf[8][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[8][1]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[8][1]~q\);

-- Location: FF_X36_Y41_N5
\Unit1|U2|tmp_rf[12][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[12][1]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[12][1]~q\);

-- Location: FF_X36_Y43_N3
\Unit1|U2|tmp_rf[11][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[11][1]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[11][1]~q\);

-- Location: FF_X36_Y45_N7
\Unit1|U2|tmp_rf[7][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[7][1]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[7][1]~q\);

-- Location: FF_X35_Y44_N7
\Unit1|U2|tmp_rf[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[3][1]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[3][1]~q\);

-- Location: LCCOMB_X35_Y44_N20
\Unit1|U2|Mux14~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux14~7_combout\ = (\Unit0|U0|RFr1a_ctrl\(2) & ((\Unit1|U2|tmp_rf[7][1]~q\) # ((\Unit0|U0|RFr1a_ctrl\(3))))) # (!\Unit0|U0|RFr1a_ctrl\(2) & (((!\Unit0|U0|RFr1a_ctrl\(3) & \Unit1|U2|tmp_rf[3][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(2),
	datab => \Unit1|U2|tmp_rf[7][1]~q\,
	datac => \Unit0|U0|RFr1a_ctrl\(3),
	datad => \Unit1|U2|tmp_rf[3][1]~q\,
	combout => \Unit1|U2|Mux14~7_combout\);

-- Location: FF_X38_Y42_N15
\Unit1|U2|tmp_rf[15][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	asdata => \Unit1|U1|Mux14~1_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|U2|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[15][1]~q\);

-- Location: LCCOMB_X35_Y44_N10
\Unit1|U2|Mux14~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux14~8_combout\ = (\Unit1|U2|Mux14~7_combout\ & (((\Unit1|U2|tmp_rf[15][1]~q\) # (!\Unit0|U0|RFr1a_ctrl\(3))))) # (!\Unit1|U2|Mux14~7_combout\ & (\Unit1|U2|tmp_rf[11][1]~q\ & (\Unit0|U0|RFr1a_ctrl\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[11][1]~q\,
	datab => \Unit1|U2|Mux14~7_combout\,
	datac => \Unit0|U0|RFr1a_ctrl\(3),
	datad => \Unit1|U2|tmp_rf[15][1]~q\,
	combout => \Unit1|U2|Mux14~8_combout\);

-- Location: FF_X36_Y42_N3
\Unit1|U2|tmp_rf[6][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U1|Mux13~1_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[6][2]~q\);

-- Location: FF_X36_Y45_N17
\Unit1|U2|tmp_rf[5][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[5][2]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[5][2]~q\);

-- Location: FF_X36_Y44_N7
\Unit1|U2|tmp_rf[9][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[9][2]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[9][2]~q\);

-- Location: FF_X35_Y42_N13
\Unit1|U2|tmp_rf[10][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[10][2]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[10][2]~q\);

-- Location: FF_X35_Y42_N27
\Unit1|U2|tmp_rf[8][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[8][2]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[8][2]~q\);

-- Location: LCCOMB_X35_Y42_N0
\Unit1|U2|Mux13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux13~2_combout\ = (\Unit0|U0|RFr1a_ctrl\(0) & (((\Unit0|U0|RFr1a_ctrl\(1))))) # (!\Unit0|U0|RFr1a_ctrl\(0) & ((\Unit0|U0|RFr1a_ctrl\(1) & ((\Unit1|U2|tmp_rf[10][2]~q\))) # (!\Unit0|U0|RFr1a_ctrl\(1) & (\Unit1|U2|tmp_rf[8][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[8][2]~q\,
	datab => \Unit0|U0|RFr1a_ctrl\(0),
	datac => \Unit0|U0|RFr1a_ctrl\(1),
	datad => \Unit1|U2|tmp_rf[10][2]~q\,
	combout => \Unit1|U2|Mux13~2_combout\);

-- Location: FF_X36_Y43_N5
\Unit1|U2|tmp_rf[11][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[11][2]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[11][2]~q\);

-- Location: LCCOMB_X36_Y40_N8
\Unit1|U2|Mux13~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux13~3_combout\ = (\Unit1|U2|Mux13~2_combout\ & (((\Unit1|U2|tmp_rf[11][2]~q\) # (!\Unit0|U0|RFr1a_ctrl\(0))))) # (!\Unit1|U2|Mux13~2_combout\ & (\Unit1|U2|tmp_rf[9][2]~q\ & (\Unit0|U0|RFr1a_ctrl\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[9][2]~q\,
	datab => \Unit1|U2|Mux13~2_combout\,
	datac => \Unit0|U0|RFr1a_ctrl\(0),
	datad => \Unit1|U2|tmp_rf[11][2]~q\,
	combout => \Unit1|U2|Mux13~3_combout\);

-- Location: FF_X36_Y40_N23
\Unit1|U2|tmp_rf[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[1][2]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[1][2]~q\);

-- Location: FF_X35_Y44_N5
\Unit1|U2|tmp_rf[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[2][2]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[2][2]~q\);

-- Location: FF_X36_Y40_N1
\Unit1|U2|tmp_rf[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[0][2]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[0][2]~q\);

-- Location: LCCOMB_X36_Y40_N18
\Unit1|U2|Mux13~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux13~4_combout\ = (\Unit0|U0|RFr1a_ctrl\(1) & ((\Unit1|U2|tmp_rf[2][2]~q\) # ((\Unit0|U0|RFr1a_ctrl\(0))))) # (!\Unit0|U0|RFr1a_ctrl\(1) & (((!\Unit0|U0|RFr1a_ctrl\(0) & \Unit1|U2|tmp_rf[0][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(1),
	datab => \Unit1|U2|tmp_rf[2][2]~q\,
	datac => \Unit0|U0|RFr1a_ctrl\(0),
	datad => \Unit1|U2|tmp_rf[0][2]~q\,
	combout => \Unit1|U2|Mux13~4_combout\);

-- Location: FF_X35_Y41_N15
\Unit1|U2|tmp_rf[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	asdata => \Unit1|U1|Mux13~1_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|U2|Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[3][2]~q\);

-- Location: LCCOMB_X36_Y40_N16
\Unit1|U2|Mux13~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux13~5_combout\ = (\Unit0|U0|RFr1a_ctrl\(0) & ((\Unit1|U2|Mux13~4_combout\ & ((\Unit1|U2|tmp_rf[3][2]~q\))) # (!\Unit1|U2|Mux13~4_combout\ & (\Unit1|U2|tmp_rf[1][2]~q\)))) # (!\Unit0|U0|RFr1a_ctrl\(0) & (((\Unit1|U2|Mux13~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[1][2]~q\,
	datab => \Unit1|U2|tmp_rf[3][2]~q\,
	datac => \Unit0|U0|RFr1a_ctrl\(0),
	datad => \Unit1|U2|Mux13~4_combout\,
	combout => \Unit1|U2|Mux13~5_combout\);

-- Location: LCCOMB_X36_Y40_N6
\Unit1|U2|Mux13~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux13~6_combout\ = (\Unit0|U0|RFr1a_ctrl\(3) & ((\Unit0|U0|RFr1a_ctrl\(2)) # ((\Unit1|U2|Mux13~3_combout\)))) # (!\Unit0|U0|RFr1a_ctrl\(3) & (!\Unit0|U0|RFr1a_ctrl\(2) & ((\Unit1|U2|Mux13~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(3),
	datab => \Unit0|U0|RFr1a_ctrl\(2),
	datac => \Unit1|U2|Mux13~3_combout\,
	datad => \Unit1|U2|Mux13~5_combout\,
	combout => \Unit1|U2|Mux13~6_combout\);

-- Location: FF_X36_Y43_N7
\Unit1|U2|tmp_rf[12][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[12][2]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[12][2]~q\);

-- Location: FF_X36_Y41_N11
\Unit1|U2|tmp_rf[15][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[15][2]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[15][2]~q\);

-- Location: FF_X40_Y43_N25
\Unit1|U2|tmp_rf[5][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	asdata => \Unit1|U1|Mux12~1_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|U2|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[5][3]~q\);

-- Location: FF_X40_Y43_N31
\Unit1|U2|tmp_rf[9][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U1|Mux12~1_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[9][3]~q\);

-- Location: FF_X41_Y45_N27
\Unit1|U2|tmp_rf[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[1][3]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[1][3]~q\);

-- Location: LCCOMB_X40_Y43_N0
\Unit1|U2|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux12~0_combout\ = (\Unit0|U0|RFr1a_ctrl\(2) & (((\Unit0|U0|RFr1a_ctrl\(3))))) # (!\Unit0|U0|RFr1a_ctrl\(2) & ((\Unit0|U0|RFr1a_ctrl\(3) & (\Unit1|U2|tmp_rf[9][3]~q\)) # (!\Unit0|U0|RFr1a_ctrl\(3) & ((\Unit1|U2|tmp_rf[1][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[9][3]~q\,
	datab => \Unit0|U0|RFr1a_ctrl\(2),
	datac => \Unit1|U2|tmp_rf[1][3]~q\,
	datad => \Unit0|U0|RFr1a_ctrl\(3),
	combout => \Unit1|U2|Mux12~0_combout\);

-- Location: FF_X39_Y43_N13
\Unit1|U2|tmp_rf[13][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	asdata => \Unit1|U1|Mux12~1_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|U2|Decoder0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[13][3]~q\);

-- Location: LCCOMB_X40_Y43_N22
\Unit1|U2|Mux12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux12~1_combout\ = (\Unit0|U0|RFr1a_ctrl\(2) & ((\Unit1|U2|Mux12~0_combout\ & (\Unit1|U2|tmp_rf[13][3]~q\)) # (!\Unit1|U2|Mux12~0_combout\ & ((\Unit1|U2|tmp_rf[5][3]~q\))))) # (!\Unit0|U0|RFr1a_ctrl\(2) & (((\Unit1|U2|Mux12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[13][3]~q\,
	datab => \Unit0|U0|RFr1a_ctrl\(2),
	datac => \Unit1|U2|tmp_rf[5][3]~q\,
	datad => \Unit1|U2|Mux12~0_combout\,
	combout => \Unit1|U2|Mux12~1_combout\);

-- Location: FF_X40_Y42_N27
\Unit1|U2|tmp_rf[10][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	asdata => \Unit1|U1|Mux12~1_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|U2|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[10][3]~q\);

-- Location: FF_X41_Y43_N3
\Unit1|U2|tmp_rf[6][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[6][3]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[6][3]~q\);

-- Location: FF_X40_Y45_N3
\Unit1|U2|tmp_rf[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[2][3]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[2][3]~q\);

-- Location: LCCOMB_X41_Y43_N16
\Unit1|U2|Mux12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux12~2_combout\ = (\Unit0|U0|RFr1a_ctrl\(2) & (((\Unit0|U0|RFr1a_ctrl\(3)) # (\Unit1|U2|tmp_rf[6][3]~q\)))) # (!\Unit0|U0|RFr1a_ctrl\(2) & (\Unit1|U2|tmp_rf[2][3]~q\ & (!\Unit0|U0|RFr1a_ctrl\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[2][3]~q\,
	datab => \Unit0|U0|RFr1a_ctrl\(2),
	datac => \Unit0|U0|RFr1a_ctrl\(3),
	datad => \Unit1|U2|tmp_rf[6][3]~q\,
	combout => \Unit1|U2|Mux12~2_combout\);

-- Location: FF_X41_Y43_N23
\Unit1|U2|tmp_rf[14][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[14][3]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[14][3]~q\);

-- Location: LCCOMB_X41_Y43_N0
\Unit1|U2|Mux12~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux12~3_combout\ = (\Unit0|U0|RFr1a_ctrl\(3) & ((\Unit1|U2|Mux12~2_combout\ & (\Unit1|U2|tmp_rf[14][3]~q\)) # (!\Unit1|U2|Mux12~2_combout\ & ((\Unit1|U2|tmp_rf[10][3]~q\))))) # (!\Unit0|U0|RFr1a_ctrl\(3) & (((\Unit1|U2|Mux12~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[14][3]~q\,
	datab => \Unit0|U0|RFr1a_ctrl\(3),
	datac => \Unit1|U2|tmp_rf[10][3]~q\,
	datad => \Unit1|U2|Mux12~2_combout\,
	combout => \Unit1|U2|Mux12~3_combout\);

-- Location: FF_X42_Y43_N29
\Unit1|U2|tmp_rf[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[0][3]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[0][3]~q\);

-- Location: FF_X39_Y45_N7
\Unit1|U2|tmp_rf[12][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[12][3]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[12][3]~q\);

-- Location: FF_X38_Y43_N1
\Unit1|U2|tmp_rf[11][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[11][3]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[11][3]~q\);

-- Location: FF_X39_Y43_N15
\Unit1|U2|tmp_rf[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	asdata => \Unit1|U1|Mux12~1_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|U2|Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[3][3]~q\);

-- Location: LCCOMB_X35_Y44_N18
\Unit1|U2|Mux12~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux12~7_combout\ = (\Unit0|U0|RFr1a_ctrl\(3) & (((\Unit0|U0|RFr1a_ctrl\(2)) # (\Unit1|U2|tmp_rf[11][3]~q\)))) # (!\Unit0|U0|RFr1a_ctrl\(3) & (\Unit1|U2|tmp_rf[3][3]~q\ & (!\Unit0|U0|RFr1a_ctrl\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(3),
	datab => \Unit1|U2|tmp_rf[3][3]~q\,
	datac => \Unit0|U0|RFr1a_ctrl\(2),
	datad => \Unit1|U2|tmp_rf[11][3]~q\,
	combout => \Unit1|U2|Mux12~7_combout\);

-- Location: LCCOMB_X36_Y44_N22
\Unit1|U2|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux11~0_combout\ = (\Unit0|U0|RFr1a_ctrl\(1) & (((\Unit0|U0|RFr1a_ctrl\(0))))) # (!\Unit0|U0|RFr1a_ctrl\(1) & ((\Unit0|U0|RFr1a_ctrl\(0) & (\Unit1|U2|tmp_rf[9][4]~q\)) # (!\Unit0|U0|RFr1a_ctrl\(0) & ((\Unit1|U2|tmp_rf[8][4]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(1),
	datab => \Unit1|U2|tmp_rf[9][4]~q\,
	datac => \Unit1|U2|tmp_rf[8][4]~q\,
	datad => \Unit0|U0|RFr1a_ctrl\(0),
	combout => \Unit1|U2|Mux11~0_combout\);

-- Location: FF_X42_Y44_N13
\Unit1|U2|tmp_rf[5][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[5][4]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[5][4]~q\);

-- Location: FF_X36_Y44_N13
\Unit1|U2|tmp_rf[4][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[4][4]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[4][4]~q\);

-- Location: FF_X41_Y42_N13
\Unit1|U2|tmp_rf[14][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[14][4]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[14][4]~q\);

-- Location: FF_X41_Y42_N11
\Unit1|U2|tmp_rf[12][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	asdata => \Unit1|U1|Mux11~1_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|U2|Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[12][4]~q\);

-- Location: LCCOMB_X41_Y42_N10
\Unit1|U2|Mux11~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux11~7_combout\ = (\Unit0|U0|RFr1a_ctrl\(1) & ((\Unit0|U0|RFr1a_ctrl\(0)) # ((\Unit1|U2|tmp_rf[14][4]~q\)))) # (!\Unit0|U0|RFr1a_ctrl\(1) & (!\Unit0|U0|RFr1a_ctrl\(0) & (\Unit1|U2|tmp_rf[12][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(1),
	datab => \Unit0|U0|RFr1a_ctrl\(0),
	datac => \Unit1|U2|tmp_rf[12][4]~q\,
	datad => \Unit1|U2|tmp_rf[14][4]~q\,
	combout => \Unit1|U2|Mux11~7_combout\);

-- Location: FF_X41_Y43_N7
\Unit1|U2|tmp_rf[6][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U1|Mux10~1_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[6][5]~q\);

-- Location: FF_X42_Y43_N3
\Unit1|U2|tmp_rf[10][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[10][5]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[10][5]~q\);

-- Location: FF_X41_Y44_N9
\Unit1|U2|tmp_rf[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[2][5]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[2][5]~q\);

-- Location: LCCOMB_X42_Y43_N12
\Unit1|U2|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux10~0_combout\ = (\Unit0|U0|RFr1a_ctrl\(3) & (((\Unit1|U2|tmp_rf[10][5]~q\) # (\Unit0|U0|RFr1a_ctrl\(2))))) # (!\Unit0|U0|RFr1a_ctrl\(3) & (\Unit1|U2|tmp_rf[2][5]~q\ & ((!\Unit0|U0|RFr1a_ctrl\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[2][5]~q\,
	datab => \Unit1|U2|tmp_rf[10][5]~q\,
	datac => \Unit0|U0|RFr1a_ctrl\(3),
	datad => \Unit0|U0|RFr1a_ctrl\(2),
	combout => \Unit1|U2|Mux10~0_combout\);

-- Location: FF_X41_Y43_N25
\Unit1|U2|tmp_rf[14][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	asdata => \Unit1|U1|Mux10~1_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|U2|Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[14][5]~q\);

-- Location: LCCOMB_X41_Y43_N8
\Unit1|U2|Mux10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux10~1_combout\ = (\Unit0|U0|RFr1a_ctrl\(2) & ((\Unit1|U2|Mux10~0_combout\ & ((\Unit1|U2|tmp_rf[14][5]~q\))) # (!\Unit1|U2|Mux10~0_combout\ & (\Unit1|U2|tmp_rf[6][5]~q\)))) # (!\Unit0|U0|RFr1a_ctrl\(2) & (((\Unit1|U2|Mux10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[6][5]~q\,
	datab => \Unit0|U0|RFr1a_ctrl\(2),
	datac => \Unit1|U2|Mux10~0_combout\,
	datad => \Unit1|U2|tmp_rf[14][5]~q\,
	combout => \Unit1|U2|Mux10~1_combout\);

-- Location: FF_X40_Y40_N11
\Unit1|U2|tmp_rf[12][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[12][5]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[12][5]~q\);

-- Location: LCCOMB_X41_Y41_N2
\Unit1|U2|Mux10~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux10~7_combout\ = (\Unit0|U0|RFr1a_ctrl\(3) & (((\Unit0|U0|RFr1a_ctrl\(2))))) # (!\Unit0|U0|RFr1a_ctrl\(3) & ((\Unit0|U0|RFr1a_ctrl\(2) & ((\Unit1|U2|tmp_rf[7][5]~q\))) # (!\Unit0|U0|RFr1a_ctrl\(2) & (\Unit1|U2|tmp_rf[3][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(3),
	datab => \Unit1|U2|tmp_rf[3][5]~q\,
	datac => \Unit0|U0|RFr1a_ctrl\(2),
	datad => \Unit1|U2|tmp_rf[7][5]~q\,
	combout => \Unit1|U2|Mux10~7_combout\);

-- Location: FF_X42_Y44_N3
\Unit1|U2|tmp_rf[11][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	asdata => \Unit1|U1|Mux9~1_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|U2|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[11][6]~q\);

-- Location: FF_X41_Y44_N23
\Unit1|U2|tmp_rf[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	asdata => \Unit1|U1|Mux9~1_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|U2|Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[2][6]~q\);

-- Location: FF_X39_Y43_N21
\Unit1|U2|tmp_rf[13][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	asdata => \Unit1|U1|Mux9~1_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|U2|Decoder0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[13][6]~q\);

-- Location: FF_X40_Y44_N17
\Unit1|U2|tmp_rf[15][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U1|Mux9~1_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[15][6]~q\);

-- Location: FF_X42_Y44_N31
\Unit1|U2|tmp_rf[5][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[5][7]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[5][7]~q\);

-- Location: FF_X40_Y44_N19
\Unit1|U2|tmp_rf[10][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[10][7]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[10][7]~q\);

-- Location: LCCOMB_X40_Y45_N20
\Unit1|U2|Mux8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux8~4_combout\ = (\Unit0|U0|RFr1a_ctrl\(2) & (((\Unit0|U0|RFr1a_ctrl\(3)) # (\Unit1|U2|tmp_rf[4][7]~q\)))) # (!\Unit0|U0|RFr1a_ctrl\(2) & (\Unit1|U2|tmp_rf[0][7]~q\ & (!\Unit0|U0|RFr1a_ctrl\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(2),
	datab => \Unit1|U2|tmp_rf[0][7]~q\,
	datac => \Unit0|U0|RFr1a_ctrl\(3),
	datad => \Unit1|U2|tmp_rf[4][7]~q\,
	combout => \Unit1|U2|Mux8~4_combout\);

-- Location: FF_X40_Y42_N29
\Unit1|U2|tmp_rf[10][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[10][8]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[10][8]~q\);

-- Location: FF_X41_Y43_N31
\Unit1|U2|tmp_rf[6][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[6][8]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[6][8]~q\);

-- Location: LCCOMB_X41_Y42_N26
\Unit1|U2|Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux7~2_combout\ = (\Unit0|U0|RFr1a_ctrl\(1) & ((\Unit1|U2|tmp_rf[6][8]~q\) # ((\Unit0|U0|RFr1a_ctrl\(0))))) # (!\Unit0|U0|RFr1a_ctrl\(1) & (((\Unit1|U2|tmp_rf[4][8]~q\ & !\Unit0|U0|RFr1a_ctrl\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[6][8]~q\,
	datab => \Unit1|U2|tmp_rf[4][8]~q\,
	datac => \Unit0|U0|RFr1a_ctrl\(1),
	datad => \Unit0|U0|RFr1a_ctrl\(0),
	combout => \Unit1|U2|Mux7~2_combout\);

-- Location: FF_X41_Y41_N27
\Unit1|U2|tmp_rf[7][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[7][8]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[7][8]~q\);

-- Location: LCCOMB_X42_Y44_N18
\Unit1|U2|Mux7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux7~3_combout\ = (\Unit0|U0|RFr1a_ctrl\(0) & ((\Unit1|U2|Mux7~2_combout\ & (\Unit1|U2|tmp_rf[7][8]~q\)) # (!\Unit1|U2|Mux7~2_combout\ & ((\Unit1|U2|tmp_rf[5][8]~q\))))) # (!\Unit0|U0|RFr1a_ctrl\(0) & (((\Unit1|U2|Mux7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[7][8]~q\,
	datab => \Unit1|U2|tmp_rf[5][8]~q\,
	datac => \Unit0|U0|RFr1a_ctrl\(0),
	datad => \Unit1|U2|Mux7~2_combout\,
	combout => \Unit1|U2|Mux7~3_combout\);

-- Location: FF_X41_Y44_N25
\Unit1|U2|tmp_rf[2][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[2][8]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[2][8]~q\);

-- Location: FF_X41_Y45_N11
\Unit1|U2|tmp_rf[0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[0][8]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[0][8]~q\);

-- Location: LCCOMB_X42_Y45_N2
\Unit1|U2|Mux7~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux7~7_combout\ = (\Unit0|U0|RFr1a_ctrl\(0) & (\Unit0|U0|RFr1a_ctrl\(1))) # (!\Unit0|U0|RFr1a_ctrl\(0) & ((\Unit0|U0|RFr1a_ctrl\(1) & (\Unit1|U2|tmp_rf[14][8]~q\)) # (!\Unit0|U0|RFr1a_ctrl\(1) & ((\Unit1|U2|tmp_rf[12][8]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(0),
	datab => \Unit0|U0|RFr1a_ctrl\(1),
	datac => \Unit1|U2|tmp_rf[14][8]~q\,
	datad => \Unit1|U2|tmp_rf[12][8]~q\,
	combout => \Unit1|U2|Mux7~7_combout\);

-- Location: FF_X42_Y45_N13
\Unit1|U2|tmp_rf[15][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[15][8]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[15][8]~q\);

-- Location: LCCOMB_X42_Y45_N30
\Unit1|U2|Mux7~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux7~8_combout\ = (\Unit0|U0|RFr1a_ctrl\(0) & ((\Unit1|U2|Mux7~7_combout\ & (\Unit1|U2|tmp_rf[15][8]~q\)) # (!\Unit1|U2|Mux7~7_combout\ & ((\Unit1|U2|tmp_rf[13][8]~q\))))) # (!\Unit0|U0|RFr1a_ctrl\(0) & (((\Unit1|U2|Mux7~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[15][8]~q\,
	datab => \Unit1|U2|tmp_rf[13][8]~q\,
	datac => \Unit0|U0|RFr1a_ctrl\(0),
	datad => \Unit1|U2|Mux7~7_combout\,
	combout => \Unit1|U2|Mux7~8_combout\);

-- Location: FF_X40_Y42_N21
\Unit1|U2|tmp_rf[10][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[10][9]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[10][9]~q\);

-- Location: FF_X43_Y42_N29
\Unit1|U2|tmp_rf[5][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[5][9]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[5][9]~q\);

-- Location: FF_X39_Y40_N9
\Unit1|U2|tmp_rf[1][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[1][9]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[1][9]~q\);

-- Location: LCCOMB_X40_Y40_N14
\Unit1|U2|Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux6~2_combout\ = (\Unit0|U0|RFr1a_ctrl\(2) & (((\Unit0|U0|RFr1a_ctrl\(3)) # (\Unit1|U2|tmp_rf[5][9]~q\)))) # (!\Unit0|U0|RFr1a_ctrl\(2) & (\Unit1|U2|tmp_rf[1][9]~q\ & (!\Unit0|U0|RFr1a_ctrl\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[1][9]~q\,
	datab => \Unit0|U0|RFr1a_ctrl\(2),
	datac => \Unit0|U0|RFr1a_ctrl\(3),
	datad => \Unit1|U2|tmp_rf[5][9]~q\,
	combout => \Unit1|U2|Mux6~2_combout\);

-- Location: FF_X40_Y42_N3
\Unit1|U2|tmp_rf[4][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U1|Mux6~0_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[4][9]~q\);

-- Location: FF_X42_Y42_N9
\Unit1|U2|tmp_rf[11][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	asdata => \Unit1|U1|Mux6~0_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|U2|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[11][9]~q\);

-- Location: LCCOMB_X41_Y41_N10
\Unit1|U2|Mux6~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux6~7_combout\ = (\Unit0|U0|RFr1a_ctrl\(3) & (\Unit0|U0|RFr1a_ctrl\(2))) # (!\Unit0|U0|RFr1a_ctrl\(3) & ((\Unit0|U0|RFr1a_ctrl\(2) & (\Unit1|U2|tmp_rf[7][9]~q\)) # (!\Unit0|U0|RFr1a_ctrl\(2) & ((\Unit1|U2|tmp_rf[3][9]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(3),
	datab => \Unit0|U0|RFr1a_ctrl\(2),
	datac => \Unit1|U2|tmp_rf[7][9]~q\,
	datad => \Unit1|U2|tmp_rf[3][9]~q\,
	combout => \Unit1|U2|Mux6~7_combout\);

-- Location: LCCOMB_X36_Y41_N12
\Unit1|U2|Mux6~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux6~8_combout\ = (\Unit1|U2|Mux6~7_combout\ & (((\Unit1|U2|tmp_rf[15][9]~q\) # (!\Unit0|U0|RFr1a_ctrl\(3))))) # (!\Unit1|U2|Mux6~7_combout\ & (\Unit1|U2|tmp_rf[11][9]~q\ & ((\Unit0|U0|RFr1a_ctrl\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[11][9]~q\,
	datab => \Unit1|U2|tmp_rf[15][9]~q\,
	datac => \Unit1|U2|Mux6~7_combout\,
	datad => \Unit0|U0|RFr1a_ctrl\(3),
	combout => \Unit1|U2|Mux6~8_combout\);

-- Location: FF_X36_Y44_N25
\Unit1|U2|tmp_rf[4][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[4][10]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[4][10]~q\);

-- Location: FF_X36_Y44_N27
\Unit1|U2|tmp_rf[9][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[9][10]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[9][10]~q\);

-- Location: LCCOMB_X40_Y40_N16
\Unit1|U2|Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux5~2_combout\ = (\Unit0|U0|RFr1a_ctrl\(0) & (\Unit0|U0|RFr1a_ctrl\(1))) # (!\Unit0|U0|RFr1a_ctrl\(0) & ((\Unit0|U0|RFr1a_ctrl\(1) & ((\Unit1|U2|tmp_rf[10][10]~q\))) # (!\Unit0|U0|RFr1a_ctrl\(1) & (\Unit1|U2|tmp_rf[8][10]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(0),
	datab => \Unit0|U0|RFr1a_ctrl\(1),
	datac => \Unit1|U2|tmp_rf[8][10]~q\,
	datad => \Unit1|U2|tmp_rf[10][10]~q\,
	combout => \Unit1|U2|Mux5~2_combout\);

-- Location: LCCOMB_X39_Y40_N22
\Unit1|U2|Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux5~3_combout\ = (\Unit0|U0|RFr1a_ctrl\(0) & ((\Unit1|U2|Mux5~2_combout\ & (\Unit1|U2|tmp_rf[11][10]~q\)) # (!\Unit1|U2|Mux5~2_combout\ & ((\Unit1|U2|tmp_rf[9][10]~q\))))) # (!\Unit0|U0|RFr1a_ctrl\(0) & (((\Unit1|U2|Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(0),
	datab => \Unit1|U2|tmp_rf[11][10]~q\,
	datac => \Unit1|U2|tmp_rf[9][10]~q\,
	datad => \Unit1|U2|Mux5~2_combout\,
	combout => \Unit1|U2|Mux5~3_combout\);

-- Location: FF_X43_Y44_N27
\Unit1|U2|tmp_rf[14][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[14][10]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[14][10]~q\);

-- Location: FF_X39_Y43_N27
\Unit1|U2|tmp_rf[13][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	asdata => \Unit1|U1|Mux5~0_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|U2|Decoder0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[13][10]~q\);

-- Location: FF_X43_Y44_N9
\Unit1|U2|tmp_rf[6][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	asdata => \Unit1|U1|Mux4~0_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|U2|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[6][11]~q\);

-- Location: FF_X41_Y44_N13
\Unit1|U2|tmp_rf[2][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[2][11]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[2][11]~q\);

-- Location: LCCOMB_X43_Y44_N10
\Unit1|U2|Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux4~2_combout\ = (\Unit0|U0|RFr1a_ctrl\(3) & (((\Unit0|U0|RFr1a_ctrl\(2))))) # (!\Unit0|U0|RFr1a_ctrl\(3) & ((\Unit0|U0|RFr1a_ctrl\(2) & (\Unit1|U2|tmp_rf[6][11]~q\)) # (!\Unit0|U0|RFr1a_ctrl\(2) & ((\Unit1|U2|tmp_rf[2][11]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(3),
	datab => \Unit1|U2|tmp_rf[6][11]~q\,
	datac => \Unit0|U0|RFr1a_ctrl\(2),
	datad => \Unit1|U2|tmp_rf[2][11]~q\,
	combout => \Unit1|U2|Mux4~2_combout\);

-- Location: FF_X41_Y42_N25
\Unit1|U2|tmp_rf[12][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[12][11]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[12][11]~q\);

-- Location: FF_X41_Y41_N1
\Unit1|U2|tmp_rf[7][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[7][11]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[7][11]~q\);

-- Location: FF_X42_Y42_N23
\Unit1|U2|tmp_rf[3][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U1|Mux4~0_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[3][11]~q\);

-- Location: FF_X35_Y42_N11
\Unit1|U2|tmp_rf[10][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[10][12]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[10][12]~q\);

-- Location: FF_X40_Y43_N27
\Unit1|U2|tmp_rf[9][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[9][12]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[9][12]~q\);

-- Location: LCCOMB_X35_Y42_N6
\Unit1|U2|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux3~0_combout\ = (\Unit0|U0|RFr1a_ctrl\(1) & (((\Unit0|U0|RFr1a_ctrl\(0))))) # (!\Unit0|U0|RFr1a_ctrl\(1) & ((\Unit0|U0|RFr1a_ctrl\(0) & (\Unit1|U2|tmp_rf[9][12]~q\)) # (!\Unit0|U0|RFr1a_ctrl\(0) & ((\Unit1|U2|tmp_rf[8][12]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[9][12]~q\,
	datab => \Unit1|U2|tmp_rf[8][12]~q\,
	datac => \Unit0|U0|RFr1a_ctrl\(1),
	datad => \Unit0|U0|RFr1a_ctrl\(0),
	combout => \Unit1|U2|Mux3~0_combout\);

-- Location: LCCOMB_X35_Y42_N16
\Unit1|U2|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux3~1_combout\ = (\Unit1|U2|Mux3~0_combout\ & ((\Unit1|U2|tmp_rf[11][12]~q\) # ((!\Unit0|U0|RFr1a_ctrl\(1))))) # (!\Unit1|U2|Mux3~0_combout\ & (((\Unit0|U0|RFr1a_ctrl\(1) & \Unit1|U2|tmp_rf[10][12]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|Mux3~0_combout\,
	datab => \Unit1|U2|tmp_rf[11][12]~q\,
	datac => \Unit0|U0|RFr1a_ctrl\(1),
	datad => \Unit1|U2|tmp_rf[10][12]~q\,
	combout => \Unit1|U2|Mux3~1_combout\);

-- Location: FF_X42_Y46_N7
\Unit1|U2|tmp_rf[4][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[4][12]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[4][12]~q\);

-- Location: LCCOMB_X39_Y40_N26
\Unit1|U2|Mux3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux3~4_combout\ = (\Unit0|U0|RFr1a_ctrl\(0) & (((\Unit1|U2|tmp_rf[1][12]~q\) # (\Unit0|U0|RFr1a_ctrl\(1))))) # (!\Unit0|U0|RFr1a_ctrl\(0) & (\Unit1|U2|tmp_rf[0][12]~q\ & ((!\Unit0|U0|RFr1a_ctrl\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(0),
	datab => \Unit1|U2|tmp_rf[0][12]~q\,
	datac => \Unit1|U2|tmp_rf[1][12]~q\,
	datad => \Unit0|U0|RFr1a_ctrl\(1),
	combout => \Unit1|U2|Mux3~4_combout\);

-- Location: FF_X41_Y43_N19
\Unit1|U2|tmp_rf[14][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[14][13]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[14][13]~q\);

-- Location: FF_X40_Y43_N17
\Unit1|U2|tmp_rf[9][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	asdata => \Unit1|U1|Mux2~0_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|U2|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[9][13]~q\);

-- Location: FF_X43_Y42_N13
\Unit1|U2|tmp_rf[5][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[5][13]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[5][13]~q\);

-- Location: FF_X41_Y44_N21
\Unit1|U2|tmp_rf[1][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[1][13]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[1][13]~q\);

-- Location: LCCOMB_X42_Y42_N2
\Unit1|U2|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux2~2_combout\ = (\Unit0|U0|RFr1a_ctrl\(2) & ((\Unit1|U2|tmp_rf[5][13]~q\) # ((\Unit0|U0|RFr1a_ctrl\(3))))) # (!\Unit0|U0|RFr1a_ctrl\(2) & (((!\Unit0|U0|RFr1a_ctrl\(3) & \Unit1|U2|tmp_rf[1][13]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(2),
	datab => \Unit1|U2|tmp_rf[5][13]~q\,
	datac => \Unit0|U0|RFr1a_ctrl\(3),
	datad => \Unit1|U2|tmp_rf[1][13]~q\,
	combout => \Unit1|U2|Mux2~2_combout\);

-- Location: FF_X43_Y42_N19
\Unit1|U2|tmp_rf[13][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[13][13]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[13][13]~q\);

-- Location: LCCOMB_X42_Y42_N0
\Unit1|U2|Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux2~3_combout\ = (\Unit0|U0|RFr1a_ctrl\(3) & ((\Unit1|U2|Mux2~2_combout\ & ((\Unit1|U2|tmp_rf[13][13]~q\))) # (!\Unit1|U2|Mux2~2_combout\ & (\Unit1|U2|tmp_rf[9][13]~q\)))) # (!\Unit0|U0|RFr1a_ctrl\(3) & (((\Unit1|U2|Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[9][13]~q\,
	datab => \Unit0|U0|RFr1a_ctrl\(3),
	datac => \Unit1|U2|Mux2~2_combout\,
	datad => \Unit1|U2|tmp_rf[13][13]~q\,
	combout => \Unit1|U2|Mux2~3_combout\);

-- Location: FF_X40_Y42_N7
\Unit1|U2|tmp_rf[4][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	asdata => \Unit1|U1|Mux2~0_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|U2|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[4][13]~q\);

-- Location: FF_X40_Y40_N23
\Unit1|U2|tmp_rf[8][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[8][13]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[8][13]~q\);

-- Location: FF_X42_Y43_N21
\Unit1|U2|tmp_rf[0][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	asdata => \Unit1|U1|Mux2~0_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|U2|Decoder0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[0][13]~q\);

-- Location: LCCOMB_X40_Y40_N12
\Unit1|U2|Mux2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux2~4_combout\ = (\Unit0|U0|RFr1a_ctrl\(2) & (((\Unit0|U0|RFr1a_ctrl\(3))))) # (!\Unit0|U0|RFr1a_ctrl\(2) & ((\Unit0|U0|RFr1a_ctrl\(3) & (\Unit1|U2|tmp_rf[8][13]~q\)) # (!\Unit0|U0|RFr1a_ctrl\(3) & ((\Unit1|U2|tmp_rf[0][13]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[8][13]~q\,
	datab => \Unit0|U0|RFr1a_ctrl\(2),
	datac => \Unit0|U0|RFr1a_ctrl\(3),
	datad => \Unit1|U2|tmp_rf[0][13]~q\,
	combout => \Unit1|U2|Mux2~4_combout\);

-- Location: FF_X40_Y40_N7
\Unit1|U2|tmp_rf[12][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	asdata => \Unit1|U1|Mux2~0_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|U2|Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[12][13]~q\);

-- Location: LCCOMB_X40_Y40_N6
\Unit1|U2|Mux2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux2~5_combout\ = (\Unit1|U2|Mux2~4_combout\ & (((\Unit1|U2|tmp_rf[12][13]~q\)) # (!\Unit0|U0|RFr1a_ctrl\(2)))) # (!\Unit1|U2|Mux2~4_combout\ & (\Unit0|U0|RFr1a_ctrl\(2) & ((\Unit1|U2|tmp_rf[4][13]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|Mux2~4_combout\,
	datab => \Unit0|U0|RFr1a_ctrl\(2),
	datac => \Unit1|U2|tmp_rf[12][13]~q\,
	datad => \Unit1|U2|tmp_rf[4][13]~q\,
	combout => \Unit1|U2|Mux2~5_combout\);

-- Location: LCCOMB_X39_Y40_N14
\Unit1|U2|Mux2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux2~6_combout\ = (\Unit0|U0|RFr1a_ctrl\(0) & ((\Unit0|U0|RFr1a_ctrl\(1)) # ((\Unit1|U2|Mux2~3_combout\)))) # (!\Unit0|U0|RFr1a_ctrl\(0) & (!\Unit0|U0|RFr1a_ctrl\(1) & ((\Unit1|U2|Mux2~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(0),
	datab => \Unit0|U0|RFr1a_ctrl\(1),
	datac => \Unit1|U2|Mux2~3_combout\,
	datad => \Unit1|U2|Mux2~5_combout\,
	combout => \Unit1|U2|Mux2~6_combout\);

-- Location: FF_X41_Y41_N15
\Unit1|U2|tmp_rf[7][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[7][14]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[7][14]~q\);

-- Location: FF_X39_Y43_N19
\Unit1|U2|tmp_rf[3][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	asdata => \Unit1|U1|Mux1~0_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|U2|Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[3][14]~q\);

-- Location: FF_X42_Y41_N27
\Unit1|U2|tmp_rf[15][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[15][14]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[15][14]~q\);

-- Location: FF_X43_Y42_N21
\Unit1|U2|tmp_rf[5][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[5][15]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[5][15]~q\);

-- Location: FF_X43_Y41_N11
\Unit1|U2|tmp_rf[9][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[9][15]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[9][15]~q\);

-- Location: LCCOMB_X43_Y41_N12
\Unit1|U2|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux0~0_combout\ = (\Unit0|U0|RFr1a_ctrl\(3) & (((\Unit0|U0|RFr1a_ctrl\(2)) # (\Unit1|U2|tmp_rf[9][15]~q\)))) # (!\Unit0|U0|RFr1a_ctrl\(3) & (\Unit1|U2|tmp_rf[1][15]~q\ & (!\Unit0|U0|RFr1a_ctrl\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(3),
	datab => \Unit1|U2|tmp_rf[1][15]~q\,
	datac => \Unit0|U0|RFr1a_ctrl\(2),
	datad => \Unit1|U2|tmp_rf[9][15]~q\,
	combout => \Unit1|U2|Mux0~0_combout\);

-- Location: LCCOMB_X43_Y41_N22
\Unit1|U2|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux0~1_combout\ = (\Unit1|U2|Mux0~0_combout\ & ((\Unit1|U2|tmp_rf[13][15]~q\) # ((!\Unit0|U0|RFr1a_ctrl\(2))))) # (!\Unit1|U2|Mux0~0_combout\ & (((\Unit0|U0|RFr1a_ctrl\(2) & \Unit1|U2|tmp_rf[5][15]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|Mux0~0_combout\,
	datab => \Unit1|U2|tmp_rf[13][15]~q\,
	datac => \Unit0|U0|RFr1a_ctrl\(2),
	datad => \Unit1|U2|tmp_rf[5][15]~q\,
	combout => \Unit1|U2|Mux0~1_combout\);

-- Location: LCCOMB_X42_Y43_N24
\Unit1|U2|Mux0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux0~4_combout\ = (\Unit0|U0|RFr1a_ctrl\(2) & ((\Unit0|U0|RFr1a_ctrl\(3)) # ((\Unit1|U2|tmp_rf[4][15]~q\)))) # (!\Unit0|U0|RFr1a_ctrl\(2) & (!\Unit0|U0|RFr1a_ctrl\(3) & (\Unit1|U2|tmp_rf[0][15]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(2),
	datab => \Unit0|U0|RFr1a_ctrl\(3),
	datac => \Unit1|U2|tmp_rf[0][15]~q\,
	datad => \Unit1|U2|tmp_rf[4][15]~q\,
	combout => \Unit1|U2|Mux0~4_combout\);

-- Location: LCCOMB_X38_Y45_N6
\Unit1|U2|Mux31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux31~0_combout\ = (\Unit0|U0|RFr2a_ctrl\(0) & ((\Unit1|U2|tmp_rf[9][0]~q\) # ((\Unit0|U0|RFr2a_ctrl\(1))))) # (!\Unit0|U0|RFr2a_ctrl\(0) & (((!\Unit0|U0|RFr2a_ctrl\(1) & \Unit1|U2|tmp_rf[8][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[9][0]~q\,
	datab => \Unit0|U0|RFr2a_ctrl\(0),
	datac => \Unit0|U0|RFr2a_ctrl\(1),
	datad => \Unit1|U2|tmp_rf[8][0]~q\,
	combout => \Unit1|U2|Mux31~0_combout\);

-- Location: LCCOMB_X35_Y40_N6
\Unit1|U2|Mux30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux30~0_combout\ = (\Unit0|U0|RFr2a_ctrl\(2) & (((\Unit0|U0|RFr2a_ctrl\(3))))) # (!\Unit0|U0|RFr2a_ctrl\(2) & ((\Unit0|U0|RFr2a_ctrl\(3) & ((\Unit1|U2|tmp_rf[10][1]~q\))) # (!\Unit0|U0|RFr2a_ctrl\(3) & (\Unit1|U2|tmp_rf[2][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr2a_ctrl\(2),
	datab => \Unit1|U2|tmp_rf[2][1]~q\,
	datac => \Unit1|U2|tmp_rf[10][1]~q\,
	datad => \Unit0|U0|RFr2a_ctrl\(3),
	combout => \Unit1|U2|Mux30~0_combout\);

-- Location: LCCOMB_X35_Y40_N28
\Unit1|U2|Mux30~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux30~1_combout\ = (\Unit0|U0|RFr2a_ctrl\(2) & ((\Unit1|U2|Mux30~0_combout\ & (\Unit1|U2|tmp_rf[14][1]~q\)) # (!\Unit1|U2|Mux30~0_combout\ & ((\Unit1|U2|tmp_rf[6][1]~q\))))) # (!\Unit0|U0|RFr2a_ctrl\(2) & (((\Unit1|U2|Mux30~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[14][1]~q\,
	datab => \Unit1|U2|tmp_rf[6][1]~q\,
	datac => \Unit0|U0|RFr2a_ctrl\(2),
	datad => \Unit1|U2|Mux30~0_combout\,
	combout => \Unit1|U2|Mux30~1_combout\);

-- Location: LCCOMB_X36_Y43_N12
\Unit1|U2|Mux30~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux30~2_combout\ = (\Unit0|U0|RFr2a_ctrl\(3) & (((\Unit0|U0|RFr2a_ctrl\(2))))) # (!\Unit0|U0|RFr2a_ctrl\(3) & ((\Unit0|U0|RFr2a_ctrl\(2) & (\Unit1|U2|tmp_rf[5][1]~q\)) # (!\Unit0|U0|RFr2a_ctrl\(2) & ((\Unit1|U2|tmp_rf[1][1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[5][1]~q\,
	datab => \Unit1|U2|tmp_rf[1][1]~q\,
	datac => \Unit0|U0|RFr2a_ctrl\(3),
	datad => \Unit0|U0|RFr2a_ctrl\(2),
	combout => \Unit1|U2|Mux30~2_combout\);

-- Location: LCCOMB_X36_Y43_N22
\Unit1|U2|Mux30~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux30~3_combout\ = (\Unit0|U0|RFr2a_ctrl\(3) & ((\Unit1|U2|Mux30~2_combout\ & ((\Unit1|U2|tmp_rf[13][1]~q\))) # (!\Unit1|U2|Mux30~2_combout\ & (\Unit1|U2|tmp_rf[9][1]~q\)))) # (!\Unit0|U0|RFr2a_ctrl\(3) & (((\Unit1|U2|Mux30~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[9][1]~q\,
	datab => \Unit1|U2|tmp_rf[13][1]~q\,
	datac => \Unit0|U0|RFr2a_ctrl\(3),
	datad => \Unit1|U2|Mux30~2_combout\,
	combout => \Unit1|U2|Mux30~3_combout\);

-- Location: LCCOMB_X36_Y40_N12
\Unit1|U2|Mux30~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux30~4_combout\ = (\Unit0|U0|RFr2a_ctrl\(2) & (((\Unit0|U0|RFr2a_ctrl\(3))))) # (!\Unit0|U0|RFr2a_ctrl\(2) & ((\Unit0|U0|RFr2a_ctrl\(3) & (\Unit1|U2|tmp_rf[8][1]~q\)) # (!\Unit0|U0|RFr2a_ctrl\(3) & ((\Unit1|U2|tmp_rf[0][1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[8][1]~q\,
	datab => \Unit1|U2|tmp_rf[0][1]~q\,
	datac => \Unit0|U0|RFr2a_ctrl\(2),
	datad => \Unit0|U0|RFr2a_ctrl\(3),
	combout => \Unit1|U2|Mux30~4_combout\);

-- Location: LCCOMB_X36_Y40_N30
\Unit1|U2|Mux30~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux30~5_combout\ = (\Unit1|U2|Mux30~4_combout\ & ((\Unit1|U2|tmp_rf[12][1]~q\) # ((!\Unit0|U0|RFr2a_ctrl\(2))))) # (!\Unit1|U2|Mux30~4_combout\ & (((\Unit0|U0|RFr2a_ctrl\(2) & \Unit1|U2|tmp_rf[4][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[12][1]~q\,
	datab => \Unit1|U2|Mux30~4_combout\,
	datac => \Unit0|U0|RFr2a_ctrl\(2),
	datad => \Unit1|U2|tmp_rf[4][1]~q\,
	combout => \Unit1|U2|Mux30~5_combout\);

-- Location: LCCOMB_X35_Y43_N10
\Unit1|U2|Mux30~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux30~6_combout\ = (\Unit0|U0|RFr2a_ctrl\(0) & ((\Unit1|U2|Mux30~3_combout\) # ((\Unit0|U0|RFr2a_ctrl\(1))))) # (!\Unit0|U0|RFr2a_ctrl\(0) & (((\Unit1|U2|Mux30~5_combout\ & !\Unit0|U0|RFr2a_ctrl\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr2a_ctrl\(0),
	datab => \Unit1|U2|Mux30~3_combout\,
	datac => \Unit1|U2|Mux30~5_combout\,
	datad => \Unit0|U0|RFr2a_ctrl\(1),
	combout => \Unit1|U2|Mux30~6_combout\);

-- Location: LCCOMB_X35_Y44_N2
\Unit1|U2|Mux30~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux30~7_combout\ = (\Unit0|U0|RFr2a_ctrl\(3) & (((\Unit0|U0|RFr2a_ctrl\(2))))) # (!\Unit0|U0|RFr2a_ctrl\(3) & ((\Unit0|U0|RFr2a_ctrl\(2) & ((\Unit1|U2|tmp_rf[7][1]~q\))) # (!\Unit0|U0|RFr2a_ctrl\(2) & (\Unit1|U2|tmp_rf[3][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[3][1]~q\,
	datab => \Unit1|U2|tmp_rf[7][1]~q\,
	datac => \Unit0|U0|RFr2a_ctrl\(3),
	datad => \Unit0|U0|RFr2a_ctrl\(2),
	combout => \Unit1|U2|Mux30~7_combout\);

-- Location: LCCOMB_X35_Y44_N12
\Unit1|U2|Mux30~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux30~8_combout\ = (\Unit1|U2|Mux30~7_combout\ & (((\Unit1|U2|tmp_rf[15][1]~q\) # (!\Unit0|U0|RFr2a_ctrl\(3))))) # (!\Unit1|U2|Mux30~7_combout\ & (\Unit1|U2|tmp_rf[11][1]~q\ & (\Unit0|U0|RFr2a_ctrl\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[11][1]~q\,
	datab => \Unit1|U2|Mux30~7_combout\,
	datac => \Unit0|U0|RFr2a_ctrl\(3),
	datad => \Unit1|U2|tmp_rf[15][1]~q\,
	combout => \Unit1|U2|Mux30~8_combout\);

-- Location: LCCOMB_X38_Y43_N26
\Unit1|U2|Mux30~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux30~9_combout\ = (\Unit0|U0|RFr2a_ctrl\(1) & ((\Unit1|U2|Mux30~6_combout\ & ((\Unit1|U2|Mux30~8_combout\))) # (!\Unit1|U2|Mux30~6_combout\ & (\Unit1|U2|Mux30~1_combout\)))) # (!\Unit0|U0|RFr2a_ctrl\(1) & (\Unit1|U2|Mux30~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr2a_ctrl\(1),
	datab => \Unit1|U2|Mux30~6_combout\,
	datac => \Unit1|U2|Mux30~1_combout\,
	datad => \Unit1|U2|Mux30~8_combout\,
	combout => \Unit1|U2|Mux30~9_combout\);

-- Location: LCCOMB_X36_Y45_N8
\Unit1|U2|Mux29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux29~0_combout\ = (\Unit0|U0|RFr2a_ctrl\(1) & (((\Unit0|U0|RFr2a_ctrl\(0))))) # (!\Unit0|U0|RFr2a_ctrl\(1) & ((\Unit0|U0|RFr2a_ctrl\(0) & (\Unit1|U2|tmp_rf[5][2]~q\)) # (!\Unit0|U0|RFr2a_ctrl\(0) & ((\Unit1|U2|tmp_rf[4][2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[5][2]~q\,
	datab => \Unit0|U0|RFr2a_ctrl\(1),
	datac => \Unit0|U0|RFr2a_ctrl\(0),
	datad => \Unit1|U2|tmp_rf[4][2]~q\,
	combout => \Unit1|U2|Mux29~0_combout\);

-- Location: LCCOMB_X36_Y45_N18
\Unit1|U2|Mux29~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux29~1_combout\ = (\Unit0|U0|RFr2a_ctrl\(1) & ((\Unit1|U2|Mux29~0_combout\ & ((\Unit1|U2|tmp_rf[7][2]~q\))) # (!\Unit1|U2|Mux29~0_combout\ & (\Unit1|U2|tmp_rf[6][2]~q\)))) # (!\Unit0|U0|RFr2a_ctrl\(1) & (((\Unit1|U2|Mux29~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[6][2]~q\,
	datab => \Unit0|U0|RFr2a_ctrl\(1),
	datac => \Unit1|U2|Mux29~0_combout\,
	datad => \Unit1|U2|tmp_rf[7][2]~q\,
	combout => \Unit1|U2|Mux29~1_combout\);

-- Location: LCCOMB_X35_Y42_N22
\Unit1|U2|Mux29~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux29~2_combout\ = (\Unit0|U0|RFr2a_ctrl\(1) & (((\Unit0|U0|RFr2a_ctrl\(0)) # (\Unit1|U2|tmp_rf[10][2]~q\)))) # (!\Unit0|U0|RFr2a_ctrl\(1) & (\Unit1|U2|tmp_rf[8][2]~q\ & (!\Unit0|U0|RFr2a_ctrl\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[8][2]~q\,
	datab => \Unit0|U0|RFr2a_ctrl\(1),
	datac => \Unit0|U0|RFr2a_ctrl\(0),
	datad => \Unit1|U2|tmp_rf[10][2]~q\,
	combout => \Unit1|U2|Mux29~2_combout\);

-- Location: LCCOMB_X36_Y43_N16
\Unit1|U2|Mux29~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux29~3_combout\ = (\Unit0|U0|RFr2a_ctrl\(0) & ((\Unit1|U2|Mux29~2_combout\ & (\Unit1|U2|tmp_rf[11][2]~q\)) # (!\Unit1|U2|Mux29~2_combout\ & ((\Unit1|U2|tmp_rf[9][2]~q\))))) # (!\Unit0|U0|RFr2a_ctrl\(0) & (((\Unit1|U2|Mux29~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[11][2]~q\,
	datab => \Unit1|U2|tmp_rf[9][2]~q\,
	datac => \Unit0|U0|RFr2a_ctrl\(0),
	datad => \Unit1|U2|Mux29~2_combout\,
	combout => \Unit1|U2|Mux29~3_combout\);

-- Location: LCCOMB_X36_Y40_N24
\Unit1|U2|Mux29~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux29~4_combout\ = (\Unit0|U0|RFr2a_ctrl\(1) & (((\Unit1|U2|tmp_rf[2][2]~q\) # (\Unit0|U0|RFr2a_ctrl\(0))))) # (!\Unit0|U0|RFr2a_ctrl\(1) & (\Unit1|U2|tmp_rf[0][2]~q\ & ((!\Unit0|U0|RFr2a_ctrl\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr2a_ctrl\(1),
	datab => \Unit1|U2|tmp_rf[0][2]~q\,
	datac => \Unit1|U2|tmp_rf[2][2]~q\,
	datad => \Unit0|U0|RFr2a_ctrl\(0),
	combout => \Unit1|U2|Mux29~4_combout\);

-- Location: LCCOMB_X36_Y40_N14
\Unit1|U2|Mux29~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux29~5_combout\ = (\Unit0|U0|RFr2a_ctrl\(0) & ((\Unit1|U2|Mux29~4_combout\ & (\Unit1|U2|tmp_rf[3][2]~q\)) # (!\Unit1|U2|Mux29~4_combout\ & ((\Unit1|U2|tmp_rf[1][2]~q\))))) # (!\Unit0|U0|RFr2a_ctrl\(0) & (((\Unit1|U2|Mux29~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr2a_ctrl\(0),
	datab => \Unit1|U2|tmp_rf[3][2]~q\,
	datac => \Unit1|U2|tmp_rf[1][2]~q\,
	datad => \Unit1|U2|Mux29~4_combout\,
	combout => \Unit1|U2|Mux29~5_combout\);

-- Location: LCCOMB_X36_Y43_N14
\Unit1|U2|Mux29~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux29~6_combout\ = (\Unit0|U0|RFr2a_ctrl\(3) & (((\Unit1|U2|Mux29~3_combout\) # (\Unit0|U0|RFr2a_ctrl\(2))))) # (!\Unit0|U0|RFr2a_ctrl\(3) & (\Unit1|U2|Mux29~5_combout\ & ((!\Unit0|U0|RFr2a_ctrl\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|Mux29~5_combout\,
	datab => \Unit1|U2|Mux29~3_combout\,
	datac => \Unit0|U0|RFr2a_ctrl\(3),
	datad => \Unit0|U0|RFr2a_ctrl\(2),
	combout => \Unit1|U2|Mux29~6_combout\);

-- Location: LCCOMB_X35_Y43_N8
\Unit1|U2|Mux29~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux29~7_combout\ = (\Unit0|U0|RFr2a_ctrl\(1) & (((\Unit0|U0|RFr2a_ctrl\(0))))) # (!\Unit0|U0|RFr2a_ctrl\(1) & ((\Unit0|U0|RFr2a_ctrl\(0) & ((\Unit1|U2|tmp_rf[13][2]~q\))) # (!\Unit0|U0|RFr2a_ctrl\(0) & (\Unit1|U2|tmp_rf[12][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[12][2]~q\,
	datab => \Unit0|U0|RFr2a_ctrl\(1),
	datac => \Unit0|U0|RFr2a_ctrl\(0),
	datad => \Unit1|U2|tmp_rf[13][2]~q\,
	combout => \Unit1|U2|Mux29~7_combout\);

-- Location: LCCOMB_X35_Y43_N6
\Unit1|U2|Mux29~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux29~8_combout\ = (\Unit1|U2|Mux29~7_combout\ & (((\Unit1|U2|tmp_rf[15][2]~q\) # (!\Unit0|U0|RFr2a_ctrl\(1))))) # (!\Unit1|U2|Mux29~7_combout\ & (\Unit1|U2|tmp_rf[14][2]~q\ & ((\Unit0|U0|RFr2a_ctrl\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[14][2]~q\,
	datab => \Unit1|U2|Mux29~7_combout\,
	datac => \Unit1|U2|tmp_rf[15][2]~q\,
	datad => \Unit0|U0|RFr2a_ctrl\(1),
	combout => \Unit1|U2|Mux29~8_combout\);

-- Location: LCCOMB_X38_Y43_N12
\Unit1|U2|Mux29~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux29~9_combout\ = (\Unit0|U0|RFr2a_ctrl\(2) & ((\Unit1|U2|Mux29~6_combout\ & (\Unit1|U2|Mux29~8_combout\)) # (!\Unit1|U2|Mux29~6_combout\ & ((\Unit1|U2|Mux29~1_combout\))))) # (!\Unit0|U0|RFr2a_ctrl\(2) & (((\Unit1|U2|Mux29~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr2a_ctrl\(2),
	datab => \Unit1|U2|Mux29~8_combout\,
	datac => \Unit1|U2|Mux29~6_combout\,
	datad => \Unit1|U2|Mux29~1_combout\,
	combout => \Unit1|U2|Mux29~9_combout\);

-- Location: LCCOMB_X40_Y43_N18
\Unit1|U2|Mux28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux28~0_combout\ = (\Unit0|U0|RFr2a_ctrl\(2) & (((\Unit0|U0|RFr2a_ctrl\(3))))) # (!\Unit0|U0|RFr2a_ctrl\(2) & ((\Unit0|U0|RFr2a_ctrl\(3) & (\Unit1|U2|tmp_rf[9][3]~q\)) # (!\Unit0|U0|RFr2a_ctrl\(3) & ((\Unit1|U2|tmp_rf[1][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[9][3]~q\,
	datab => \Unit0|U0|RFr2a_ctrl\(2),
	datac => \Unit1|U2|tmp_rf[1][3]~q\,
	datad => \Unit0|U0|RFr2a_ctrl\(3),
	combout => \Unit1|U2|Mux28~0_combout\);

-- Location: LCCOMB_X40_Y43_N4
\Unit1|U2|Mux28~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux28~1_combout\ = (\Unit0|U0|RFr2a_ctrl\(2) & ((\Unit1|U2|Mux28~0_combout\ & (\Unit1|U2|tmp_rf[13][3]~q\)) # (!\Unit1|U2|Mux28~0_combout\ & ((\Unit1|U2|tmp_rf[5][3]~q\))))) # (!\Unit0|U0|RFr2a_ctrl\(2) & (((\Unit1|U2|Mux28~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[13][3]~q\,
	datab => \Unit1|U2|tmp_rf[5][3]~q\,
	datac => \Unit0|U0|RFr2a_ctrl\(2),
	datad => \Unit1|U2|Mux28~0_combout\,
	combout => \Unit1|U2|Mux28~1_combout\);

-- Location: LCCOMB_X40_Y45_N6
\Unit1|U2|Mux28~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux28~2_combout\ = (\Unit0|U0|RFr2a_ctrl\(2) & ((\Unit1|U2|tmp_rf[6][3]~q\) # ((\Unit0|U0|RFr2a_ctrl\(3))))) # (!\Unit0|U0|RFr2a_ctrl\(2) & (((\Unit1|U2|tmp_rf[2][3]~q\ & !\Unit0|U0|RFr2a_ctrl\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[6][3]~q\,
	datab => \Unit1|U2|tmp_rf[2][3]~q\,
	datac => \Unit0|U0|RFr2a_ctrl\(2),
	datad => \Unit0|U0|RFr2a_ctrl\(3),
	combout => \Unit1|U2|Mux28~2_combout\);

-- Location: LCCOMB_X40_Y45_N0
\Unit1|U2|Mux28~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux28~3_combout\ = (\Unit0|U0|RFr2a_ctrl\(3) & ((\Unit1|U2|Mux28~2_combout\ & ((\Unit1|U2|tmp_rf[14][3]~q\))) # (!\Unit1|U2|Mux28~2_combout\ & (\Unit1|U2|tmp_rf[10][3]~q\)))) # (!\Unit0|U0|RFr2a_ctrl\(3) & (((\Unit1|U2|Mux28~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr2a_ctrl\(3),
	datab => \Unit1|U2|tmp_rf[10][3]~q\,
	datac => \Unit1|U2|tmp_rf[14][3]~q\,
	datad => \Unit1|U2|Mux28~2_combout\,
	combout => \Unit1|U2|Mux28~3_combout\);

-- Location: LCCOMB_X40_Y42_N22
\Unit1|U2|Mux28~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux28~4_combout\ = (\Unit0|U0|RFr2a_ctrl\(2) & (((\Unit1|U2|tmp_rf[4][3]~q\) # (\Unit0|U0|RFr2a_ctrl\(3))))) # (!\Unit0|U0|RFr2a_ctrl\(2) & (\Unit1|U2|tmp_rf[0][3]~q\ & ((!\Unit0|U0|RFr2a_ctrl\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr2a_ctrl\(2),
	datab => \Unit1|U2|tmp_rf[0][3]~q\,
	datac => \Unit1|U2|tmp_rf[4][3]~q\,
	datad => \Unit0|U0|RFr2a_ctrl\(3),
	combout => \Unit1|U2|Mux28~4_combout\);

-- Location: LCCOMB_X40_Y45_N10
\Unit1|U2|Mux28~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux28~5_combout\ = (\Unit1|U2|Mux28~4_combout\ & (((\Unit1|U2|tmp_rf[12][3]~q\) # (!\Unit0|U0|RFr2a_ctrl\(3))))) # (!\Unit1|U2|Mux28~4_combout\ & (\Unit1|U2|tmp_rf[8][3]~q\ & ((\Unit0|U0|RFr2a_ctrl\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[8][3]~q\,
	datab => \Unit1|U2|tmp_rf[12][3]~q\,
	datac => \Unit1|U2|Mux28~4_combout\,
	datad => \Unit0|U0|RFr2a_ctrl\(3),
	combout => \Unit1|U2|Mux28~5_combout\);

-- Location: LCCOMB_X40_Y45_N8
\Unit1|U2|Mux28~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux28~6_combout\ = (\Unit0|U0|RFr2a_ctrl\(0) & (((\Unit0|U0|RFr2a_ctrl\(1))))) # (!\Unit0|U0|RFr2a_ctrl\(0) & ((\Unit0|U0|RFr2a_ctrl\(1) & ((\Unit1|U2|Mux28~3_combout\))) # (!\Unit0|U0|RFr2a_ctrl\(1) & (\Unit1|U2|Mux28~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|Mux28~5_combout\,
	datab => \Unit0|U0|RFr2a_ctrl\(0),
	datac => \Unit0|U0|RFr2a_ctrl\(1),
	datad => \Unit1|U2|Mux28~3_combout\,
	combout => \Unit1|U2|Mux28~6_combout\);

-- Location: LCCOMB_X35_Y44_N14
\Unit1|U2|Mux28~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux28~7_combout\ = (\Unit0|U0|RFr2a_ctrl\(2) & (((\Unit0|U0|RFr2a_ctrl\(3))))) # (!\Unit0|U0|RFr2a_ctrl\(2) & ((\Unit0|U0|RFr2a_ctrl\(3) & (\Unit1|U2|tmp_rf[11][3]~q\)) # (!\Unit0|U0|RFr2a_ctrl\(3) & ((\Unit1|U2|tmp_rf[3][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr2a_ctrl\(2),
	datab => \Unit1|U2|tmp_rf[11][3]~q\,
	datac => \Unit0|U0|RFr2a_ctrl\(3),
	datad => \Unit1|U2|tmp_rf[3][3]~q\,
	combout => \Unit1|U2|Mux28~7_combout\);

-- Location: LCCOMB_X38_Y44_N0
\Unit1|U2|Mux28~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux28~8_combout\ = (\Unit1|U2|Mux28~7_combout\ & (((\Unit1|U2|tmp_rf[15][3]~q\)) # (!\Unit0|U0|RFr2a_ctrl\(2)))) # (!\Unit1|U2|Mux28~7_combout\ & (\Unit0|U0|RFr2a_ctrl\(2) & (\Unit1|U2|tmp_rf[7][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|Mux28~7_combout\,
	datab => \Unit0|U0|RFr2a_ctrl\(2),
	datac => \Unit1|U2|tmp_rf[7][3]~q\,
	datad => \Unit1|U2|tmp_rf[15][3]~q\,
	combout => \Unit1|U2|Mux28~8_combout\);

-- Location: LCCOMB_X38_Y43_N10
\Unit1|U2|Mux28~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux28~9_combout\ = (\Unit0|U0|RFr2a_ctrl\(0) & ((\Unit1|U2|Mux28~6_combout\ & ((\Unit1|U2|Mux28~8_combout\))) # (!\Unit1|U2|Mux28~6_combout\ & (\Unit1|U2|Mux28~1_combout\)))) # (!\Unit0|U0|RFr2a_ctrl\(0) & (((\Unit1|U2|Mux28~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|Mux28~1_combout\,
	datab => \Unit0|U0|RFr2a_ctrl\(0),
	datac => \Unit1|U2|Mux28~8_combout\,
	datad => \Unit1|U2|Mux28~6_combout\,
	combout => \Unit1|U2|Mux28~9_combout\);

-- Location: LCCOMB_X35_Y44_N24
\Unit1|U2|Mux27~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux27~2_combout\ = (\Unit0|U0|RFr2a_ctrl\(0) & (((\Unit0|U0|RFr2a_ctrl\(1))))) # (!\Unit0|U0|RFr2a_ctrl\(0) & ((\Unit0|U0|RFr2a_ctrl\(1) & (\Unit1|U2|tmp_rf[6][4]~q\)) # (!\Unit0|U0|RFr2a_ctrl\(1) & ((\Unit1|U2|tmp_rf[4][4]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[6][4]~q\,
	datab => \Unit1|U2|tmp_rf[4][4]~q\,
	datac => \Unit0|U0|RFr2a_ctrl\(0),
	datad => \Unit0|U0|RFr2a_ctrl\(1),
	combout => \Unit1|U2|Mux27~2_combout\);

-- Location: LCCOMB_X35_Y44_N26
\Unit1|U2|Mux27~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux27~3_combout\ = (\Unit1|U2|Mux27~2_combout\ & (((\Unit1|U2|tmp_rf[7][4]~q\) # (!\Unit0|U0|RFr2a_ctrl\(0))))) # (!\Unit1|U2|Mux27~2_combout\ & (\Unit1|U2|tmp_rf[5][4]~q\ & (\Unit0|U0|RFr2a_ctrl\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[5][4]~q\,
	datab => \Unit1|U2|Mux27~2_combout\,
	datac => \Unit0|U0|RFr2a_ctrl\(0),
	datad => \Unit1|U2|tmp_rf[7][4]~q\,
	combout => \Unit1|U2|Mux27~3_combout\);

-- Location: LCCOMB_X41_Y42_N22
\Unit1|U2|Mux27~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux27~7_combout\ = (\Unit0|U0|RFr2a_ctrl\(0) & (((\Unit0|U0|RFr2a_ctrl\(1))))) # (!\Unit0|U0|RFr2a_ctrl\(0) & ((\Unit0|U0|RFr2a_ctrl\(1) & (\Unit1|U2|tmp_rf[14][4]~q\)) # (!\Unit0|U0|RFr2a_ctrl\(1) & ((\Unit1|U2|tmp_rf[12][4]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[14][4]~q\,
	datab => \Unit1|U2|tmp_rf[12][4]~q\,
	datac => \Unit0|U0|RFr2a_ctrl\(0),
	datad => \Unit0|U0|RFr2a_ctrl\(1),
	combout => \Unit1|U2|Mux27~7_combout\);

-- Location: LCCOMB_X42_Y43_N14
\Unit1|U2|Mux26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux26~0_combout\ = (\Unit0|U0|RFr2a_ctrl\(2) & (\Unit0|U0|RFr2a_ctrl\(3))) # (!\Unit0|U0|RFr2a_ctrl\(2) & ((\Unit0|U0|RFr2a_ctrl\(3) & ((\Unit1|U2|tmp_rf[10][5]~q\))) # (!\Unit0|U0|RFr2a_ctrl\(3) & (\Unit1|U2|tmp_rf[2][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr2a_ctrl\(2),
	datab => \Unit0|U0|RFr2a_ctrl\(3),
	datac => \Unit1|U2|tmp_rf[2][5]~q\,
	datad => \Unit1|U2|tmp_rf[10][5]~q\,
	combout => \Unit1|U2|Mux26~0_combout\);

-- Location: LCCOMB_X41_Y43_N10
\Unit1|U2|Mux26~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux26~1_combout\ = (\Unit0|U0|RFr2a_ctrl\(2) & ((\Unit1|U2|Mux26~0_combout\ & (\Unit1|U2|tmp_rf[14][5]~q\)) # (!\Unit1|U2|Mux26~0_combout\ & ((\Unit1|U2|tmp_rf[6][5]~q\))))) # (!\Unit0|U0|RFr2a_ctrl\(2) & (((\Unit1|U2|Mux26~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr2a_ctrl\(2),
	datab => \Unit1|U2|tmp_rf[14][5]~q\,
	datac => \Unit1|U2|Mux26~0_combout\,
	datad => \Unit1|U2|tmp_rf[6][5]~q\,
	combout => \Unit1|U2|Mux26~1_combout\);

-- Location: LCCOMB_X40_Y44_N8
\Unit1|U2|Mux25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux25~0_combout\ = (\Unit0|U0|RFr2a_ctrl\(1) & (\Unit0|U0|RFr2a_ctrl\(0))) # (!\Unit0|U0|RFr2a_ctrl\(1) & ((\Unit0|U0|RFr2a_ctrl\(0) & (\Unit1|U2|tmp_rf[5][6]~q\)) # (!\Unit0|U0|RFr2a_ctrl\(0) & ((\Unit1|U2|tmp_rf[4][6]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr2a_ctrl\(1),
	datab => \Unit0|U0|RFr2a_ctrl\(0),
	datac => \Unit1|U2|tmp_rf[5][6]~q\,
	datad => \Unit1|U2|tmp_rf[4][6]~q\,
	combout => \Unit1|U2|Mux25~0_combout\);

-- Location: LCCOMB_X41_Y43_N4
\Unit1|U2|Mux25~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux25~1_combout\ = (\Unit1|U2|Mux25~0_combout\ & ((\Unit1|U2|tmp_rf[7][6]~q\) # ((!\Unit0|U0|RFr2a_ctrl\(1))))) # (!\Unit1|U2|Mux25~0_combout\ & (((\Unit1|U2|tmp_rf[6][6]~q\ & \Unit0|U0|RFr2a_ctrl\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|Mux25~0_combout\,
	datab => \Unit1|U2|tmp_rf[7][6]~q\,
	datac => \Unit1|U2|tmp_rf[6][6]~q\,
	datad => \Unit0|U0|RFr2a_ctrl\(1),
	combout => \Unit1|U2|Mux25~1_combout\);

-- Location: LCCOMB_X40_Y44_N22
\Unit1|U2|Mux25~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux25~2_combout\ = (\Unit0|U0|RFr2a_ctrl\(0) & (((\Unit0|U0|RFr2a_ctrl\(1))))) # (!\Unit0|U0|RFr2a_ctrl\(0) & ((\Unit0|U0|RFr2a_ctrl\(1) & (\Unit1|U2|tmp_rf[10][6]~q\)) # (!\Unit0|U0|RFr2a_ctrl\(1) & ((\Unit1|U2|tmp_rf[8][6]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[10][6]~q\,
	datab => \Unit0|U0|RFr2a_ctrl\(0),
	datac => \Unit0|U0|RFr2a_ctrl\(1),
	datad => \Unit1|U2|tmp_rf[8][6]~q\,
	combout => \Unit1|U2|Mux25~2_combout\);

-- Location: LCCOMB_X42_Y44_N2
\Unit1|U2|Mux25~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux25~3_combout\ = (\Unit0|U0|RFr2a_ctrl\(0) & ((\Unit1|U2|Mux25~2_combout\ & ((\Unit1|U2|tmp_rf[11][6]~q\))) # (!\Unit1|U2|Mux25~2_combout\ & (\Unit1|U2|tmp_rf[9][6]~q\)))) # (!\Unit0|U0|RFr2a_ctrl\(0) & (((\Unit1|U2|Mux25~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr2a_ctrl\(0),
	datab => \Unit1|U2|tmp_rf[9][6]~q\,
	datac => \Unit1|U2|tmp_rf[11][6]~q\,
	datad => \Unit1|U2|Mux25~2_combout\,
	combout => \Unit1|U2|Mux25~3_combout\);

-- Location: LCCOMB_X41_Y44_N22
\Unit1|U2|Mux25~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux25~4_combout\ = (\Unit0|U0|RFr2a_ctrl\(0) & (\Unit0|U0|RFr2a_ctrl\(1))) # (!\Unit0|U0|RFr2a_ctrl\(0) & ((\Unit0|U0|RFr2a_ctrl\(1) & (\Unit1|U2|tmp_rf[2][6]~q\)) # (!\Unit0|U0|RFr2a_ctrl\(1) & ((\Unit1|U2|tmp_rf[0][6]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr2a_ctrl\(0),
	datab => \Unit0|U0|RFr2a_ctrl\(1),
	datac => \Unit1|U2|tmp_rf[2][6]~q\,
	datad => \Unit1|U2|tmp_rf[0][6]~q\,
	combout => \Unit1|U2|Mux25~4_combout\);

-- Location: LCCOMB_X41_Y44_N16
\Unit1|U2|Mux25~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux25~5_combout\ = (\Unit1|U2|Mux25~4_combout\ & ((\Unit1|U2|tmp_rf[3][6]~q\) # ((!\Unit0|U0|RFr2a_ctrl\(0))))) # (!\Unit1|U2|Mux25~4_combout\ & (((\Unit1|U2|tmp_rf[1][6]~q\ & \Unit0|U0|RFr2a_ctrl\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[3][6]~q\,
	datab => \Unit1|U2|tmp_rf[1][6]~q\,
	datac => \Unit1|U2|Mux25~4_combout\,
	datad => \Unit0|U0|RFr2a_ctrl\(0),
	combout => \Unit1|U2|Mux25~5_combout\);

-- Location: LCCOMB_X41_Y44_N18
\Unit1|U2|Mux25~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux25~6_combout\ = (\Unit0|U0|RFr2a_ctrl\(3) & ((\Unit1|U2|Mux25~3_combout\) # ((\Unit0|U0|RFr2a_ctrl\(2))))) # (!\Unit0|U0|RFr2a_ctrl\(3) & (((\Unit1|U2|Mux25~5_combout\ & !\Unit0|U0|RFr2a_ctrl\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|Mux25~3_combout\,
	datab => \Unit1|U2|Mux25~5_combout\,
	datac => \Unit0|U0|RFr2a_ctrl\(3),
	datad => \Unit0|U0|RFr2a_ctrl\(2),
	combout => \Unit1|U2|Mux25~6_combout\);

-- Location: LCCOMB_X40_Y40_N20
\Unit1|U2|Mux25~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux25~7_combout\ = (\Unit0|U0|RFr2a_ctrl\(0) & ((\Unit1|U2|tmp_rf[13][6]~q\) # ((\Unit0|U0|RFr2a_ctrl\(1))))) # (!\Unit0|U0|RFr2a_ctrl\(0) & (((\Unit1|U2|tmp_rf[12][6]~q\ & !\Unit0|U0|RFr2a_ctrl\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[13][6]~q\,
	datab => \Unit1|U2|tmp_rf[12][6]~q\,
	datac => \Unit0|U0|RFr2a_ctrl\(0),
	datad => \Unit0|U0|RFr2a_ctrl\(1),
	combout => \Unit1|U2|Mux25~7_combout\);

-- Location: LCCOMB_X40_Y40_N18
\Unit1|U2|Mux25~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux25~8_combout\ = (\Unit1|U2|Mux25~7_combout\ & ((\Unit1|U2|tmp_rf[15][6]~q\) # ((!\Unit0|U0|RFr2a_ctrl\(1))))) # (!\Unit1|U2|Mux25~7_combout\ & (((\Unit1|U2|tmp_rf[14][6]~q\ & \Unit0|U0|RFr2a_ctrl\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[15][6]~q\,
	datab => \Unit1|U2|tmp_rf[14][6]~q\,
	datac => \Unit1|U2|Mux25~7_combout\,
	datad => \Unit0|U0|RFr2a_ctrl\(1),
	combout => \Unit1|U2|Mux25~8_combout\);

-- Location: LCCOMB_X40_Y41_N26
\Unit1|U2|Mux25~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux25~9_combout\ = (\Unit0|U0|RFr2a_ctrl\(2) & ((\Unit1|U2|Mux25~6_combout\ & (\Unit1|U2|Mux25~8_combout\)) # (!\Unit1|U2|Mux25~6_combout\ & ((\Unit1|U2|Mux25~1_combout\))))) # (!\Unit0|U0|RFr2a_ctrl\(2) & (((\Unit1|U2|Mux25~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr2a_ctrl\(2),
	datab => \Unit1|U2|Mux25~8_combout\,
	datac => \Unit1|U2|Mux25~1_combout\,
	datad => \Unit1|U2|Mux25~6_combout\,
	combout => \Unit1|U2|Mux25~9_combout\);

-- Location: LCCOMB_X41_Y40_N24
\Unit1|U2|Mux23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux23~0_combout\ = (\Unit0|U0|RFr2a_ctrl\(0) & ((\Unit0|U0|RFr2a_ctrl\(1)) # ((\Unit1|U2|tmp_rf[9][8]~q\)))) # (!\Unit0|U0|RFr2a_ctrl\(0) & (!\Unit0|U0|RFr2a_ctrl\(1) & ((\Unit1|U2|tmp_rf[8][8]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr2a_ctrl\(0),
	datab => \Unit0|U0|RFr2a_ctrl\(1),
	datac => \Unit1|U2|tmp_rf[9][8]~q\,
	datad => \Unit1|U2|tmp_rf[8][8]~q\,
	combout => \Unit1|U2|Mux23~0_combout\);

-- Location: LCCOMB_X42_Y41_N20
\Unit1|U2|Mux23~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux23~1_combout\ = (\Unit0|U0|RFr2a_ctrl\(1) & ((\Unit1|U2|Mux23~0_combout\ & ((\Unit1|U2|tmp_rf[11][8]~q\))) # (!\Unit1|U2|Mux23~0_combout\ & (\Unit1|U2|tmp_rf[10][8]~q\)))) # (!\Unit0|U0|RFr2a_ctrl\(1) & (((\Unit1|U2|Mux23~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[10][8]~q\,
	datab => \Unit0|U0|RFr2a_ctrl\(1),
	datac => \Unit1|U2|tmp_rf[11][8]~q\,
	datad => \Unit1|U2|Mux23~0_combout\,
	combout => \Unit1|U2|Mux23~1_combout\);

-- Location: LCCOMB_X40_Y40_N4
\Unit1|U2|Mux22~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux22~2_combout\ = (\Unit0|U0|RFr2a_ctrl\(2) & (((\Unit0|U0|RFr2a_ctrl\(3)) # (\Unit1|U2|tmp_rf[5][9]~q\)))) # (!\Unit0|U0|RFr2a_ctrl\(2) & (\Unit1|U2|tmp_rf[1][9]~q\ & (!\Unit0|U0|RFr2a_ctrl\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[1][9]~q\,
	datab => \Unit0|U0|RFr2a_ctrl\(2),
	datac => \Unit0|U0|RFr2a_ctrl\(3),
	datad => \Unit1|U2|tmp_rf[5][9]~q\,
	combout => \Unit1|U2|Mux22~2_combout\);

-- Location: LCCOMB_X41_Y40_N18
\Unit1|U2|Mux22~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux22~3_combout\ = (\Unit0|U0|RFr2a_ctrl\(3) & ((\Unit1|U2|Mux22~2_combout\ & ((\Unit1|U2|tmp_rf[13][9]~q\))) # (!\Unit1|U2|Mux22~2_combout\ & (\Unit1|U2|tmp_rf[9][9]~q\)))) # (!\Unit0|U0|RFr2a_ctrl\(3) & (((\Unit1|U2|Mux22~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr2a_ctrl\(3),
	datab => \Unit1|U2|tmp_rf[9][9]~q\,
	datac => \Unit1|U2|Mux22~2_combout\,
	datad => \Unit1|U2|tmp_rf[13][9]~q\,
	combout => \Unit1|U2|Mux22~3_combout\);

-- Location: LCCOMB_X40_Y45_N28
\Unit1|U2|Mux22~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux22~4_combout\ = (\Unit0|U0|RFr2a_ctrl\(2) & (((\Unit0|U0|RFr2a_ctrl\(3))))) # (!\Unit0|U0|RFr2a_ctrl\(2) & ((\Unit0|U0|RFr2a_ctrl\(3) & (\Unit1|U2|tmp_rf[8][9]~q\)) # (!\Unit0|U0|RFr2a_ctrl\(3) & ((\Unit1|U2|tmp_rf[0][9]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[8][9]~q\,
	datab => \Unit1|U2|tmp_rf[0][9]~q\,
	datac => \Unit0|U0|RFr2a_ctrl\(2),
	datad => \Unit0|U0|RFr2a_ctrl\(3),
	combout => \Unit1|U2|Mux22~4_combout\);

-- Location: LCCOMB_X41_Y42_N2
\Unit1|U2|Mux22~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux22~5_combout\ = (\Unit0|U0|RFr2a_ctrl\(2) & ((\Unit1|U2|Mux22~4_combout\ & ((\Unit1|U2|tmp_rf[12][9]~q\))) # (!\Unit1|U2|Mux22~4_combout\ & (\Unit1|U2|tmp_rf[4][9]~q\)))) # (!\Unit0|U0|RFr2a_ctrl\(2) & (((\Unit1|U2|Mux22~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[4][9]~q\,
	datab => \Unit1|U2|tmp_rf[12][9]~q\,
	datac => \Unit0|U0|RFr2a_ctrl\(2),
	datad => \Unit1|U2|Mux22~4_combout\,
	combout => \Unit1|U2|Mux22~5_combout\);

-- Location: LCCOMB_X41_Y40_N0
\Unit1|U2|Mux22~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux22~6_combout\ = (\Unit0|U0|RFr2a_ctrl\(1) & (((\Unit0|U0|RFr2a_ctrl\(0))))) # (!\Unit0|U0|RFr2a_ctrl\(1) & ((\Unit0|U0|RFr2a_ctrl\(0) & (\Unit1|U2|Mux22~3_combout\)) # (!\Unit0|U0|RFr2a_ctrl\(0) & ((\Unit1|U2|Mux22~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|Mux22~3_combout\,
	datab => \Unit0|U0|RFr2a_ctrl\(1),
	datac => \Unit1|U2|Mux22~5_combout\,
	datad => \Unit0|U0|RFr2a_ctrl\(0),
	combout => \Unit1|U2|Mux22~6_combout\);

-- Location: LCCOMB_X38_Y45_N22
\Unit1|U2|Mux21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux21~0_combout\ = (\Unit0|U0|RFr2a_ctrl\(1) & (((\Unit0|U0|RFr2a_ctrl\(0))))) # (!\Unit0|U0|RFr2a_ctrl\(1) & ((\Unit0|U0|RFr2a_ctrl\(0) & ((\Unit1|U2|tmp_rf[5][10]~q\))) # (!\Unit0|U0|RFr2a_ctrl\(0) & (\Unit1|U2|tmp_rf[4][10]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[4][10]~q\,
	datab => \Unit0|U0|RFr2a_ctrl\(1),
	datac => \Unit0|U0|RFr2a_ctrl\(0),
	datad => \Unit1|U2|tmp_rf[5][10]~q\,
	combout => \Unit1|U2|Mux21~0_combout\);

-- Location: LCCOMB_X39_Y44_N6
\Unit1|U2|Mux21~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux21~7_combout\ = (\Unit0|U0|RFr2a_ctrl\(1) & (((\Unit0|U0|RFr2a_ctrl\(0))))) # (!\Unit0|U0|RFr2a_ctrl\(1) & ((\Unit0|U0|RFr2a_ctrl\(0) & ((\Unit1|U2|tmp_rf[13][10]~q\))) # (!\Unit0|U0|RFr2a_ctrl\(0) & (\Unit1|U2|tmp_rf[12][10]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[12][10]~q\,
	datab => \Unit0|U0|RFr2a_ctrl\(1),
	datac => \Unit0|U0|RFr2a_ctrl\(0),
	datad => \Unit1|U2|tmp_rf[13][10]~q\,
	combout => \Unit1|U2|Mux21~7_combout\);

-- Location: LCCOMB_X39_Y44_N0
\Unit1|U2|Mux21~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux21~8_combout\ = (\Unit0|U0|RFr2a_ctrl\(1) & ((\Unit1|U2|Mux21~7_combout\ & ((\Unit1|U2|tmp_rf[15][10]~q\))) # (!\Unit1|U2|Mux21~7_combout\ & (\Unit1|U2|tmp_rf[14][10]~q\)))) # (!\Unit0|U0|RFr2a_ctrl\(1) & (((\Unit1|U2|Mux21~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[14][10]~q\,
	datab => \Unit1|U2|tmp_rf[15][10]~q\,
	datac => \Unit0|U0|RFr2a_ctrl\(1),
	datad => \Unit1|U2|Mux21~7_combout\,
	combout => \Unit1|U2|Mux21~8_combout\);

-- Location: LCCOMB_X41_Y44_N28
\Unit1|U2|Mux20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux20~0_combout\ = (\Unit0|U0|RFr2a_ctrl\(3) & ((\Unit1|U2|tmp_rf[9][11]~q\) # ((\Unit0|U0|RFr2a_ctrl\(2))))) # (!\Unit0|U0|RFr2a_ctrl\(3) & (((\Unit1|U2|tmp_rf[1][11]~q\ & !\Unit0|U0|RFr2a_ctrl\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr2a_ctrl\(3),
	datab => \Unit1|U2|tmp_rf[9][11]~q\,
	datac => \Unit1|U2|tmp_rf[1][11]~q\,
	datad => \Unit0|U0|RFr2a_ctrl\(2),
	combout => \Unit1|U2|Mux20~0_combout\);

-- Location: LCCOMB_X42_Y42_N10
\Unit1|U2|Mux20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux20~1_combout\ = (\Unit0|U0|RFr2a_ctrl\(2) & ((\Unit1|U2|Mux20~0_combout\ & (\Unit1|U2|tmp_rf[13][11]~q\)) # (!\Unit1|U2|Mux20~0_combout\ & ((\Unit1|U2|tmp_rf[5][11]~q\))))) # (!\Unit0|U0|RFr2a_ctrl\(2) & (((\Unit1|U2|Mux20~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr2a_ctrl\(2),
	datab => \Unit1|U2|tmp_rf[13][11]~q\,
	datac => \Unit1|U2|tmp_rf[5][11]~q\,
	datad => \Unit1|U2|Mux20~0_combout\,
	combout => \Unit1|U2|Mux20~1_combout\);

-- Location: LCCOMB_X43_Y44_N8
\Unit1|U2|Mux20~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux20~2_combout\ = (\Unit0|U0|RFr2a_ctrl\(3) & (((\Unit0|U0|RFr2a_ctrl\(2))))) # (!\Unit0|U0|RFr2a_ctrl\(3) & ((\Unit0|U0|RFr2a_ctrl\(2) & ((\Unit1|U2|tmp_rf[6][11]~q\))) # (!\Unit0|U0|RFr2a_ctrl\(2) & (\Unit1|U2|tmp_rf[2][11]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr2a_ctrl\(3),
	datab => \Unit1|U2|tmp_rf[2][11]~q\,
	datac => \Unit1|U2|tmp_rf[6][11]~q\,
	datad => \Unit0|U0|RFr2a_ctrl\(2),
	combout => \Unit1|U2|Mux20~2_combout\);

-- Location: LCCOMB_X43_Y43_N30
\Unit1|U2|Mux20~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux20~3_combout\ = (\Unit1|U2|Mux20~2_combout\ & ((\Unit1|U2|tmp_rf[14][11]~q\) # ((!\Unit0|U0|RFr2a_ctrl\(3))))) # (!\Unit1|U2|Mux20~2_combout\ & (((\Unit1|U2|tmp_rf[10][11]~q\ & \Unit0|U0|RFr2a_ctrl\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[14][11]~q\,
	datab => \Unit1|U2|tmp_rf[10][11]~q\,
	datac => \Unit1|U2|Mux20~2_combout\,
	datad => \Unit0|U0|RFr2a_ctrl\(3),
	combout => \Unit1|U2|Mux20~3_combout\);

-- Location: LCCOMB_X42_Y43_N4
\Unit1|U2|Mux20~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux20~4_combout\ = (\Unit0|U0|RFr2a_ctrl\(3) & (((\Unit0|U0|RFr2a_ctrl\(2))))) # (!\Unit0|U0|RFr2a_ctrl\(3) & ((\Unit0|U0|RFr2a_ctrl\(2) & (\Unit1|U2|tmp_rf[4][11]~q\)) # (!\Unit0|U0|RFr2a_ctrl\(2) & ((\Unit1|U2|tmp_rf[0][11]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[4][11]~q\,
	datab => \Unit0|U0|RFr2a_ctrl\(3),
	datac => \Unit1|U2|tmp_rf[0][11]~q\,
	datad => \Unit0|U0|RFr2a_ctrl\(2),
	combout => \Unit1|U2|Mux20~4_combout\);

-- Location: LCCOMB_X35_Y42_N4
\Unit1|U2|Mux20~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux20~5_combout\ = (\Unit0|U0|RFr2a_ctrl\(3) & ((\Unit1|U2|Mux20~4_combout\ & (\Unit1|U2|tmp_rf[12][11]~q\)) # (!\Unit1|U2|Mux20~4_combout\ & ((\Unit1|U2|tmp_rf[8][11]~q\))))) # (!\Unit0|U0|RFr2a_ctrl\(3) & (((\Unit1|U2|Mux20~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[12][11]~q\,
	datab => \Unit1|U2|tmp_rf[8][11]~q\,
	datac => \Unit0|U0|RFr2a_ctrl\(3),
	datad => \Unit1|U2|Mux20~4_combout\,
	combout => \Unit1|U2|Mux20~5_combout\);

-- Location: LCCOMB_X35_Y42_N2
\Unit1|U2|Mux20~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux20~6_combout\ = (\Unit0|U0|RFr2a_ctrl\(0) & (((\Unit0|U0|RFr2a_ctrl\(1))))) # (!\Unit0|U0|RFr2a_ctrl\(0) & ((\Unit0|U0|RFr2a_ctrl\(1) & ((\Unit1|U2|Mux20~3_combout\))) # (!\Unit0|U0|RFr2a_ctrl\(1) & (\Unit1|U2|Mux20~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr2a_ctrl\(0),
	datab => \Unit1|U2|Mux20~5_combout\,
	datac => \Unit1|U2|Mux20~3_combout\,
	datad => \Unit0|U0|RFr2a_ctrl\(1),
	combout => \Unit1|U2|Mux20~6_combout\);

-- Location: LCCOMB_X42_Y42_N12
\Unit1|U2|Mux20~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux20~7_combout\ = (\Unit0|U0|RFr2a_ctrl\(3) & (((\Unit1|U2|tmp_rf[11][11]~q\) # (\Unit0|U0|RFr2a_ctrl\(2))))) # (!\Unit0|U0|RFr2a_ctrl\(3) & (\Unit1|U2|tmp_rf[3][11]~q\ & ((!\Unit0|U0|RFr2a_ctrl\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[3][11]~q\,
	datab => \Unit0|U0|RFr2a_ctrl\(3),
	datac => \Unit1|U2|tmp_rf[11][11]~q\,
	datad => \Unit0|U0|RFr2a_ctrl\(2),
	combout => \Unit1|U2|Mux20~7_combout\);

-- Location: LCCOMB_X38_Y42_N6
\Unit1|U2|Mux20~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux20~8_combout\ = (\Unit1|U2|Mux20~7_combout\ & (((\Unit1|U2|tmp_rf[15][11]~q\) # (!\Unit0|U0|RFr2a_ctrl\(2))))) # (!\Unit1|U2|Mux20~7_combout\ & (\Unit1|U2|tmp_rf[7][11]~q\ & ((\Unit0|U0|RFr2a_ctrl\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[7][11]~q\,
	datab => \Unit1|U2|tmp_rf[15][11]~q\,
	datac => \Unit1|U2|Mux20~7_combout\,
	datad => \Unit0|U0|RFr2a_ctrl\(2),
	combout => \Unit1|U2|Mux20~8_combout\);

-- Location: LCCOMB_X38_Y42_N18
\Unit1|U2|Mux20~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux20~9_combout\ = (\Unit0|U0|RFr2a_ctrl\(0) & ((\Unit1|U2|Mux20~6_combout\ & ((\Unit1|U2|Mux20~8_combout\))) # (!\Unit1|U2|Mux20~6_combout\ & (\Unit1|U2|Mux20~1_combout\)))) # (!\Unit0|U0|RFr2a_ctrl\(0) & (\Unit1|U2|Mux20~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr2a_ctrl\(0),
	datab => \Unit1|U2|Mux20~6_combout\,
	datac => \Unit1|U2|Mux20~1_combout\,
	datad => \Unit1|U2|Mux20~8_combout\,
	combout => \Unit1|U2|Mux20~9_combout\);

-- Location: LCCOMB_X38_Y46_N8
\Unit1|U2|Mux19~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux19~2_combout\ = (\Unit0|U0|RFr2a_ctrl\(1) & (((\Unit0|U0|RFr2a_ctrl\(0)) # (\Unit1|U2|tmp_rf[6][12]~q\)))) # (!\Unit0|U0|RFr2a_ctrl\(1) & (\Unit1|U2|tmp_rf[4][12]~q\ & (!\Unit0|U0|RFr2a_ctrl\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[4][12]~q\,
	datab => \Unit0|U0|RFr2a_ctrl\(1),
	datac => \Unit0|U0|RFr2a_ctrl\(0),
	datad => \Unit1|U2|tmp_rf[6][12]~q\,
	combout => \Unit1|U2|Mux19~2_combout\);

-- Location: LCCOMB_X38_Y43_N6
\Unit1|U2|Mux19~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux19~7_combout\ = (\Unit0|U0|RFr2a_ctrl\(1) & ((\Unit0|U0|RFr2a_ctrl\(0)) # ((\Unit1|U2|tmp_rf[14][12]~q\)))) # (!\Unit0|U0|RFr2a_ctrl\(1) & (!\Unit0|U0|RFr2a_ctrl\(0) & ((\Unit1|U2|tmp_rf[12][12]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr2a_ctrl\(1),
	datab => \Unit0|U0|RFr2a_ctrl\(0),
	datac => \Unit1|U2|tmp_rf[14][12]~q\,
	datad => \Unit1|U2|tmp_rf[12][12]~q\,
	combout => \Unit1|U2|Mux19~7_combout\);

-- Location: LCCOMB_X38_Y42_N10
\Unit1|U2|Mux19~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux19~8_combout\ = (\Unit0|U0|RFr2a_ctrl\(0) & ((\Unit1|U2|Mux19~7_combout\ & (\Unit1|U2|tmp_rf[15][12]~q\)) # (!\Unit1|U2|Mux19~7_combout\ & ((\Unit1|U2|tmp_rf[13][12]~q\))))) # (!\Unit0|U0|RFr2a_ctrl\(0) & (((\Unit1|U2|Mux19~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr2a_ctrl\(0),
	datab => \Unit1|U2|tmp_rf[15][12]~q\,
	datac => \Unit1|U2|tmp_rf[13][12]~q\,
	datad => \Unit1|U2|Mux19~7_combout\,
	combout => \Unit1|U2|Mux19~8_combout\);

-- Location: LCCOMB_X42_Y43_N26
\Unit1|U2|Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux18~0_combout\ = (\Unit0|U0|RFr2a_ctrl\(2) & (\Unit0|U0|RFr2a_ctrl\(3))) # (!\Unit0|U0|RFr2a_ctrl\(2) & ((\Unit0|U0|RFr2a_ctrl\(3) & (\Unit1|U2|tmp_rf[10][13]~q\)) # (!\Unit0|U0|RFr2a_ctrl\(3) & ((\Unit1|U2|tmp_rf[2][13]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr2a_ctrl\(2),
	datab => \Unit0|U0|RFr2a_ctrl\(3),
	datac => \Unit1|U2|tmp_rf[10][13]~q\,
	datad => \Unit1|U2|tmp_rf[2][13]~q\,
	combout => \Unit1|U2|Mux18~0_combout\);

-- Location: LCCOMB_X42_Y41_N14
\Unit1|U2|Mux18~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux18~1_combout\ = (\Unit1|U2|Mux18~0_combout\ & ((\Unit1|U2|tmp_rf[14][13]~q\) # ((!\Unit0|U0|RFr2a_ctrl\(2))))) # (!\Unit1|U2|Mux18~0_combout\ & (((\Unit1|U2|tmp_rf[6][13]~q\ & \Unit0|U0|RFr2a_ctrl\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[14][13]~q\,
	datab => \Unit1|U2|tmp_rf[6][13]~q\,
	datac => \Unit1|U2|Mux18~0_combout\,
	datad => \Unit0|U0|RFr2a_ctrl\(2),
	combout => \Unit1|U2|Mux18~1_combout\);

-- Location: LCCOMB_X42_Y42_N16
\Unit1|U2|Mux18~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux18~2_combout\ = (\Unit0|U0|RFr2a_ctrl\(2) & ((\Unit1|U2|tmp_rf[5][13]~q\) # ((\Unit0|U0|RFr2a_ctrl\(3))))) # (!\Unit0|U0|RFr2a_ctrl\(2) & (((!\Unit0|U0|RFr2a_ctrl\(3) & \Unit1|U2|tmp_rf[1][13]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr2a_ctrl\(2),
	datab => \Unit1|U2|tmp_rf[5][13]~q\,
	datac => \Unit0|U0|RFr2a_ctrl\(3),
	datad => \Unit1|U2|tmp_rf[1][13]~q\,
	combout => \Unit1|U2|Mux18~2_combout\);

-- Location: LCCOMB_X42_Y42_N14
\Unit1|U2|Mux18~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux18~3_combout\ = (\Unit1|U2|Mux18~2_combout\ & (((\Unit1|U2|tmp_rf[13][13]~q\) # (!\Unit0|U0|RFr2a_ctrl\(3))))) # (!\Unit1|U2|Mux18~2_combout\ & (\Unit1|U2|tmp_rf[9][13]~q\ & (\Unit0|U0|RFr2a_ctrl\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[9][13]~q\,
	datab => \Unit1|U2|Mux18~2_combout\,
	datac => \Unit0|U0|RFr2a_ctrl\(3),
	datad => \Unit1|U2|tmp_rf[13][13]~q\,
	combout => \Unit1|U2|Mux18~3_combout\);

-- Location: LCCOMB_X42_Y43_N20
\Unit1|U2|Mux18~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux18~4_combout\ = (\Unit0|U0|RFr2a_ctrl\(3) & ((\Unit1|U2|tmp_rf[8][13]~q\) # ((\Unit0|U0|RFr2a_ctrl\(2))))) # (!\Unit0|U0|RFr2a_ctrl\(3) & (((\Unit1|U2|tmp_rf[0][13]~q\ & !\Unit0|U0|RFr2a_ctrl\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[8][13]~q\,
	datab => \Unit0|U0|RFr2a_ctrl\(3),
	datac => \Unit1|U2|tmp_rf[0][13]~q\,
	datad => \Unit0|U0|RFr2a_ctrl\(2),
	combout => \Unit1|U2|Mux18~4_combout\);

-- Location: LCCOMB_X42_Y40_N24
\Unit1|U2|Mux18~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux18~5_combout\ = (\Unit0|U0|RFr2a_ctrl\(2) & ((\Unit1|U2|Mux18~4_combout\ & (\Unit1|U2|tmp_rf[12][13]~q\)) # (!\Unit1|U2|Mux18~4_combout\ & ((\Unit1|U2|tmp_rf[4][13]~q\))))) # (!\Unit0|U0|RFr2a_ctrl\(2) & (((\Unit1|U2|Mux18~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[12][13]~q\,
	datab => \Unit0|U0|RFr2a_ctrl\(2),
	datac => \Unit1|U2|tmp_rf[4][13]~q\,
	datad => \Unit1|U2|Mux18~4_combout\,
	combout => \Unit1|U2|Mux18~5_combout\);

-- Location: LCCOMB_X42_Y42_N28
\Unit1|U2|Mux18~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux18~6_combout\ = (\Unit0|U0|RFr2a_ctrl\(0) & ((\Unit0|U0|RFr2a_ctrl\(1)) # ((\Unit1|U2|Mux18~3_combout\)))) # (!\Unit0|U0|RFr2a_ctrl\(0) & (!\Unit0|U0|RFr2a_ctrl\(1) & ((\Unit1|U2|Mux18~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr2a_ctrl\(0),
	datab => \Unit0|U0|RFr2a_ctrl\(1),
	datac => \Unit1|U2|Mux18~3_combout\,
	datad => \Unit1|U2|Mux18~5_combout\,
	combout => \Unit1|U2|Mux18~6_combout\);

-- Location: LCCOMB_X43_Y41_N8
\Unit1|U2|Mux18~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux18~7_combout\ = (\Unit0|U0|RFr2a_ctrl\(3) & (((\Unit0|U0|RFr2a_ctrl\(2))))) # (!\Unit0|U0|RFr2a_ctrl\(3) & ((\Unit0|U0|RFr2a_ctrl\(2) & ((\Unit1|U2|tmp_rf[7][13]~q\))) # (!\Unit0|U0|RFr2a_ctrl\(2) & (\Unit1|U2|tmp_rf[3][13]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[3][13]~q\,
	datab => \Unit0|U0|RFr2a_ctrl\(3),
	datac => \Unit1|U2|tmp_rf[7][13]~q\,
	datad => \Unit0|U0|RFr2a_ctrl\(2),
	combout => \Unit1|U2|Mux18~7_combout\);

-- Location: LCCOMB_X43_Y41_N2
\Unit1|U2|Mux18~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux18~8_combout\ = (\Unit0|U0|RFr2a_ctrl\(3) & ((\Unit1|U2|Mux18~7_combout\ & ((\Unit1|U2|tmp_rf[15][13]~q\))) # (!\Unit1|U2|Mux18~7_combout\ & (\Unit1|U2|tmp_rf[11][13]~q\)))) # (!\Unit0|U0|RFr2a_ctrl\(3) & (((\Unit1|U2|Mux18~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[11][13]~q\,
	datab => \Unit0|U0|RFr2a_ctrl\(3),
	datac => \Unit1|U2|Mux18~7_combout\,
	datad => \Unit1|U2|tmp_rf[15][13]~q\,
	combout => \Unit1|U2|Mux18~8_combout\);

-- Location: LCCOMB_X38_Y41_N14
\Unit1|U2|Mux18~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux18~9_combout\ = (\Unit0|U0|RFr2a_ctrl\(1) & ((\Unit1|U2|Mux18~6_combout\ & (\Unit1|U2|Mux18~8_combout\)) # (!\Unit1|U2|Mux18~6_combout\ & ((\Unit1|U2|Mux18~1_combout\))))) # (!\Unit0|U0|RFr2a_ctrl\(1) & (((\Unit1|U2|Mux18~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|Mux18~8_combout\,
	datab => \Unit0|U0|RFr2a_ctrl\(1),
	datac => \Unit1|U2|Mux18~1_combout\,
	datad => \Unit1|U2|Mux18~6_combout\,
	combout => \Unit1|U2|Mux18~9_combout\);

-- Location: LCCOMB_X41_Y44_N10
\Unit1|U2|Mux17~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux17~4_combout\ = (\Unit0|U0|RFr2a_ctrl\(0) & (\Unit0|U0|RFr2a_ctrl\(1))) # (!\Unit0|U0|RFr2a_ctrl\(0) & ((\Unit0|U0|RFr2a_ctrl\(1) & (\Unit1|U2|tmp_rf[2][14]~q\)) # (!\Unit0|U0|RFr2a_ctrl\(1) & ((\Unit1|U2|tmp_rf[0][14]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr2a_ctrl\(0),
	datab => \Unit0|U0|RFr2a_ctrl\(1),
	datac => \Unit1|U2|tmp_rf[2][14]~q\,
	datad => \Unit1|U2|tmp_rf[0][14]~q\,
	combout => \Unit1|U2|Mux17~4_combout\);

-- Location: LCCOMB_X39_Y40_N10
\Unit1|U2|Mux17~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux17~5_combout\ = (\Unit0|U0|RFr2a_ctrl\(0) & ((\Unit1|U2|Mux17~4_combout\ & (\Unit1|U2|tmp_rf[3][14]~q\)) # (!\Unit1|U2|Mux17~4_combout\ & ((\Unit1|U2|tmp_rf[1][14]~q\))))) # (!\Unit0|U0|RFr2a_ctrl\(0) & (\Unit1|U2|Mux17~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr2a_ctrl\(0),
	datab => \Unit1|U2|Mux17~4_combout\,
	datac => \Unit1|U2|tmp_rf[3][14]~q\,
	datad => \Unit1|U2|tmp_rf[1][14]~q\,
	combout => \Unit1|U2|Mux17~5_combout\);

-- Location: LCCOMB_X42_Y42_N30
\Unit1|U2|Mux16~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux16~7_combout\ = (\Unit0|U0|RFr2a_ctrl\(2) & (((\Unit0|U0|RFr2a_ctrl\(3))))) # (!\Unit0|U0|RFr2a_ctrl\(2) & ((\Unit0|U0|RFr2a_ctrl\(3) & (\Unit1|U2|tmp_rf[11][15]~q\)) # (!\Unit0|U0|RFr2a_ctrl\(3) & ((\Unit1|U2|tmp_rf[3][15]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr2a_ctrl\(2),
	datab => \Unit1|U2|tmp_rf[11][15]~q\,
	datac => \Unit0|U0|RFr2a_ctrl\(3),
	datad => \Unit1|U2|tmp_rf[3][15]~q\,
	combout => \Unit1|U2|Mux16~7_combout\);

-- Location: LCCOMB_X42_Y41_N28
\Unit1|U2|Mux16~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux16~8_combout\ = (\Unit0|U0|RFr2a_ctrl\(2) & ((\Unit1|U2|Mux16~7_combout\ & ((\Unit1|U2|tmp_rf[15][15]~q\))) # (!\Unit1|U2|Mux16~7_combout\ & (\Unit1|U2|tmp_rf[7][15]~q\)))) # (!\Unit0|U0|RFr2a_ctrl\(2) & (((\Unit1|U2|Mux16~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[7][15]~q\,
	datab => \Unit1|U2|tmp_rf[15][15]~q\,
	datac => \Unit0|U0|RFr2a_ctrl\(2),
	datad => \Unit1|U2|Mux16~7_combout\,
	combout => \Unit1|U2|Mux16~8_combout\);

-- Location: LCCOMB_X32_Y42_N12
\Unit0|U0|WideOr51~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|WideOr51~1_combout\ = (!\Unit0|U0|state.S6~q\ & (!\Unit0|U0|state.S7a~q\ & !\Unit0|U0|state.S8a~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|state.S6~q\,
	datab => \Unit0|U0|state.S7a~q\,
	datad => \Unit0|U0|state.S8a~q\,
	combout => \Unit0|U0|WideOr51~1_combout\);

-- Location: LCCOMB_X32_Y41_N12
\Unit0|U0|Selector44~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|Selector44~0_combout\ = (\Unit0|U0|state.S1~q\) # ((\Unit0|U0|state.S1a~q\) # ((\Unit0|U0|state.S3~q\) # (\Unit0|U0|state.S11~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|state.S1~q\,
	datab => \Unit0|U0|state.S1a~q\,
	datac => \Unit0|U0|state.S3~q\,
	datad => \Unit0|U0|state.S11~q\,
	combout => \Unit0|U0|Selector44~0_combout\);

-- Location: LCCOMB_X32_Y42_N26
\Unit0|U0|WideOr19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|WideOr19~1_combout\ = (!\Unit0|U0|state.S6~q\ & (!\Unit0|U0|state.S10~q\ & (!\Unit0|U0|state.S1a~q\ & !\Unit0|U0|state.S11a~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|state.S6~q\,
	datab => \Unit0|U0|state.S10~q\,
	datac => \Unit0|U0|state.S1a~q\,
	datad => \Unit0|U0|state.S11a~q\,
	combout => \Unit0|U0|WideOr19~1_combout\);

-- Location: LCCOMB_X32_Y41_N22
\Unit0|U0|WideOr19~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|WideOr19~3_combout\ = (((\Unit0|U0|state.S1b~q\) # (!\Unit0|U0|WideOr19~2_combout\)) # (!\Unit0|U0|WideOr19~0_combout\)) # (!\Unit0|U0|Selector53~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|Selector53~0_combout\,
	datab => \Unit0|U0|WideOr19~0_combout\,
	datac => \Unit0|U0|WideOr19~2_combout\,
	datad => \Unit0|U0|state.S1b~q\,
	combout => \Unit0|U0|WideOr19~3_combout\);

-- Location: LCCOMB_X32_Y42_N0
\Unit0|U0|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|Mux0~0_combout\ = (\Unit0|U2|IRout\(15) & ((\Unit0|U2|IRout\(13) & ((!\Unit0|U2|IRout\(14)) # (!\Unit0|U2|IRout\(12)))) # (!\Unit0|U2|IRout\(13) & ((\Unit0|U2|IRout\(14))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U2|IRout\(13),
	datab => \Unit0|U2|IRout\(12),
	datac => \Unit0|U2|IRout\(15),
	datad => \Unit0|U2|IRout\(14),
	combout => \Unit0|U0|Mux0~0_combout\);

-- Location: LCCOMB_X32_Y42_N6
\Unit0|U0|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|Selector1~0_combout\ = (\Unit0|U0|state.S1~q\ & (((\Unit0|U0|state.S2~q\ & \Unit0|U0|Mux0~0_combout\)) # (!\cpu_clk~input_o\))) # (!\Unit0|U0|state.S1~q\ & (\Unit0|U0|state.S2~q\ & ((\Unit0|U0|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|state.S1~q\,
	datab => \Unit0|U0|state.S2~q\,
	datac => \cpu_clk~input_o\,
	datad => \Unit0|U0|Mux0~0_combout\,
	combout => \Unit0|U0|Selector1~0_combout\);

-- Location: FF_X32_Y42_N9
\Unit0|U0|state.S6a\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	asdata => \Unit0|U0|state.S6~q\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U0|state.S6a~q\);

-- Location: LCCOMB_X29_Y40_N14
\Unit0|U0|WideOr5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|WideOr5~0_combout\ = (!\Unit0|U0|state.S11_wait~q\ & (\Unit0|U0|Selector47~0_combout\ & \Unit0|U0|Selector53~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|state.S11_wait~q\,
	datab => \Unit0|U0|Selector47~0_combout\,
	datad => \Unit0|U0|Selector53~0_combout\,
	combout => \Unit0|U0|WideOr5~0_combout\);

-- Location: LCCOMB_X35_Y45_N26
\Unit1|U2|tmp_rf[9][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[9][0]~feeder_combout\ = \Unit1|U1|Mux15~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|U1|Mux15~1_combout\,
	combout => \Unit1|U2|tmp_rf[9][0]~feeder_combout\);

-- Location: LCCOMB_X36_Y43_N2
\Unit1|U2|tmp_rf[11][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[11][1]~feeder_combout\ = \Unit1|U1|Mux14~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|U1|Mux14~1_combout\,
	combout => \Unit1|U2|tmp_rf[11][1]~feeder_combout\);

-- Location: LCCOMB_X36_Y45_N6
\Unit1|U2|tmp_rf[7][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[7][1]~feeder_combout\ = \Unit1|U1|Mux14~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|U1|Mux14~1_combout\,
	combout => \Unit1|U2|tmp_rf[7][1]~feeder_combout\);

-- Location: LCCOMB_X36_Y44_N30
\Unit1|U2|tmp_rf[9][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[9][1]~feeder_combout\ = \Unit1|U1|Mux14~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|U1|Mux14~1_combout\,
	combout => \Unit1|U2|tmp_rf[9][1]~feeder_combout\);

-- Location: LCCOMB_X35_Y40_N14
\Unit1|U2|tmp_rf[2][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[2][1]~feeder_combout\ = \Unit1|U1|Mux14~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|U1|Mux14~1_combout\,
	combout => \Unit1|U2|tmp_rf[2][1]~feeder_combout\);

-- Location: LCCOMB_X35_Y44_N6
\Unit1|U2|tmp_rf[3][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[3][1]~feeder_combout\ = \Unit1|U1|Mux14~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|U1|Mux14~1_combout\,
	combout => \Unit1|U2|tmp_rf[3][1]~feeder_combout\);

-- Location: LCCOMB_X40_Y40_N8
\Unit1|U2|tmp_rf[8][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[8][1]~feeder_combout\ = \Unit1|U1|Mux14~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|U1|Mux14~1_combout\,
	combout => \Unit1|U2|tmp_rf[8][1]~feeder_combout\);

-- Location: LCCOMB_X36_Y41_N4
\Unit1|U2|tmp_rf[12][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[12][1]~feeder_combout\ = \Unit1|U1|Mux14~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|U1|Mux14~1_combout\,
	combout => \Unit1|U2|tmp_rf[12][1]~feeder_combout\);

-- Location: LCCOMB_X35_Y44_N4
\Unit1|U2|tmp_rf[2][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[2][2]~feeder_combout\ = \Unit1|U1|Mux13~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|U1|Mux13~1_combout\,
	combout => \Unit1|U2|tmp_rf[2][2]~feeder_combout\);

-- Location: LCCOMB_X36_Y44_N6
\Unit1|U2|tmp_rf[9][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[9][2]~feeder_combout\ = \Unit1|U1|Mux13~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Unit1|U1|Mux13~1_combout\,
	combout => \Unit1|U2|tmp_rf[9][2]~feeder_combout\);

-- Location: LCCOMB_X35_Y42_N12
\Unit1|U2|tmp_rf[10][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[10][2]~feeder_combout\ = \Unit1|U1|Mux13~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|U1|Mux13~1_combout\,
	combout => \Unit1|U2|tmp_rf[10][2]~feeder_combout\);

-- Location: LCCOMB_X35_Y42_N26
\Unit1|U2|tmp_rf[8][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[8][2]~feeder_combout\ = \Unit1|U1|Mux13~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|U1|Mux13~1_combout\,
	combout => \Unit1|U2|tmp_rf[8][2]~feeder_combout\);

-- Location: LCCOMB_X36_Y40_N0
\Unit1|U2|tmp_rf[0][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[0][2]~feeder_combout\ = \Unit1|U1|Mux13~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|U1|Mux13~1_combout\,
	combout => \Unit1|U2|tmp_rf[0][2]~feeder_combout\);

-- Location: LCCOMB_X36_Y40_N22
\Unit1|U2|tmp_rf[1][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[1][2]~feeder_combout\ = \Unit1|U1|Mux13~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|U1|Mux13~1_combout\,
	combout => \Unit1|U2|tmp_rf[1][2]~feeder_combout\);

-- Location: LCCOMB_X36_Y41_N10
\Unit1|U2|tmp_rf[15][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[15][2]~feeder_combout\ = \Unit1|U1|Mux13~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|U1|Mux13~1_combout\,
	combout => \Unit1|U2|tmp_rf[15][2]~feeder_combout\);

-- Location: LCCOMB_X36_Y43_N4
\Unit1|U2|tmp_rf[11][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[11][2]~feeder_combout\ = \Unit1|U1|Mux13~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Unit1|U1|Mux13~1_combout\,
	combout => \Unit1|U2|tmp_rf[11][2]~feeder_combout\);

-- Location: LCCOMB_X36_Y43_N6
\Unit1|U2|tmp_rf[12][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[12][2]~feeder_combout\ = \Unit1|U1|Mux13~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Unit1|U1|Mux13~1_combout\,
	combout => \Unit1|U2|tmp_rf[12][2]~feeder_combout\);

-- Location: LCCOMB_X36_Y45_N16
\Unit1|U2|tmp_rf[5][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[5][2]~feeder_combout\ = \Unit1|U1|Mux13~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Unit1|U1|Mux13~1_combout\,
	combout => \Unit1|U2|tmp_rf[5][2]~feeder_combout\);

-- Location: LCCOMB_X39_Y45_N6
\Unit1|U2|tmp_rf[12][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[12][3]~feeder_combout\ = \Unit1|U1|Mux12~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|U1|Mux12~1_combout\,
	combout => \Unit1|U2|tmp_rf[12][3]~feeder_combout\);

-- Location: LCCOMB_X38_Y43_N0
\Unit1|U2|tmp_rf[11][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[11][3]~feeder_combout\ = \Unit1|U1|Mux12~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|U1|Mux12~1_combout\,
	combout => \Unit1|U2|tmp_rf[11][3]~feeder_combout\);

-- Location: LCCOMB_X41_Y43_N22
\Unit1|U2|tmp_rf[14][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[14][3]~feeder_combout\ = \Unit1|U1|Mux12~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|U1|Mux12~1_combout\,
	combout => \Unit1|U2|tmp_rf[14][3]~feeder_combout\);

-- Location: LCCOMB_X41_Y43_N2
\Unit1|U2|tmp_rf[6][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[6][3]~feeder_combout\ = \Unit1|U1|Mux12~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|U1|Mux12~1_combout\,
	combout => \Unit1|U2|tmp_rf[6][3]~feeder_combout\);

-- Location: LCCOMB_X42_Y43_N28
\Unit1|U2|tmp_rf[0][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[0][3]~feeder_combout\ = \Unit1|U1|Mux12~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|U1|Mux12~1_combout\,
	combout => \Unit1|U2|tmp_rf[0][3]~feeder_combout\);

-- Location: LCCOMB_X40_Y45_N2
\Unit1|U2|tmp_rf[2][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[2][3]~feeder_combout\ = \Unit1|U1|Mux12~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|U1|Mux12~1_combout\,
	combout => \Unit1|U2|tmp_rf[2][3]~feeder_combout\);

-- Location: LCCOMB_X41_Y45_N26
\Unit1|U2|tmp_rf[1][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[1][3]~feeder_combout\ = \Unit1|U1|Mux12~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|U1|Mux12~1_combout\,
	combout => \Unit1|U2|tmp_rf[1][3]~feeder_combout\);

-- Location: LCCOMB_X36_Y44_N12
\Unit1|U2|tmp_rf[4][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[4][4]~feeder_combout\ = \Unit1|U1|Mux11~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|U1|Mux11~1_combout\,
	combout => \Unit1|U2|tmp_rf[4][4]~feeder_combout\);

-- Location: LCCOMB_X42_Y44_N12
\Unit1|U2|tmp_rf[5][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[5][4]~feeder_combout\ = \Unit1|U1|Mux11~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|U1|Mux11~1_combout\,
	combout => \Unit1|U2|tmp_rf[5][4]~feeder_combout\);

-- Location: LCCOMB_X41_Y42_N12
\Unit1|U2|tmp_rf[14][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[14][4]~feeder_combout\ = \Unit1|U1|Mux11~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Unit1|U1|Mux11~1_combout\,
	combout => \Unit1|U2|tmp_rf[14][4]~feeder_combout\);

-- Location: LCCOMB_X40_Y40_N10
\Unit1|U2|tmp_rf[12][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[12][5]~feeder_combout\ = \Unit1|U1|Mux10~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|U1|Mux10~1_combout\,
	combout => \Unit1|U2|tmp_rf[12][5]~feeder_combout\);

-- Location: LCCOMB_X42_Y43_N2
\Unit1|U2|tmp_rf[10][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[10][5]~feeder_combout\ = \Unit1|U1|Mux10~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Unit1|U1|Mux10~1_combout\,
	combout => \Unit1|U2|tmp_rf[10][5]~feeder_combout\);

-- Location: LCCOMB_X41_Y44_N8
\Unit1|U2|tmp_rf[2][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[2][5]~feeder_combout\ = \Unit1|U1|Mux10~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|U1|Mux10~1_combout\,
	combout => \Unit1|U2|tmp_rf[2][5]~feeder_combout\);

-- Location: LCCOMB_X42_Y44_N30
\Unit1|U2|tmp_rf[5][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[5][7]~feeder_combout\ = \Unit1|U1|Mux8~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Unit1|U1|Mux8~1_combout\,
	combout => \Unit1|U2|tmp_rf[5][7]~feeder_combout\);

-- Location: LCCOMB_X40_Y44_N18
\Unit1|U2|tmp_rf[10][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[10][7]~feeder_combout\ = \Unit1|U1|Mux8~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|U1|Mux8~1_combout\,
	combout => \Unit1|U2|tmp_rf[10][7]~feeder_combout\);

-- Location: LCCOMB_X41_Y43_N30
\Unit1|U2|tmp_rf[6][8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[6][8]~feeder_combout\ = \Unit1|U1|Mux7~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|U1|Mux7~0_combout\,
	combout => \Unit1|U2|tmp_rf[6][8]~feeder_combout\);

-- Location: LCCOMB_X41_Y44_N24
\Unit1|U2|tmp_rf[2][8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[2][8]~feeder_combout\ = \Unit1|U1|Mux7~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|U1|Mux7~0_combout\,
	combout => \Unit1|U2|tmp_rf[2][8]~feeder_combout\);

-- Location: LCCOMB_X41_Y45_N10
\Unit1|U2|tmp_rf[0][8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[0][8]~feeder_combout\ = \Unit1|U1|Mux7~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|U1|Mux7~0_combout\,
	combout => \Unit1|U2|tmp_rf[0][8]~feeder_combout\);

-- Location: LCCOMB_X42_Y45_N12
\Unit1|U2|tmp_rf[15][8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[15][8]~feeder_combout\ = \Unit1|U1|Mux7~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Unit1|U1|Mux7~0_combout\,
	combout => \Unit1|U2|tmp_rf[15][8]~feeder_combout\);

-- Location: LCCOMB_X40_Y42_N28
\Unit1|U2|tmp_rf[10][8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[10][8]~feeder_combout\ = \Unit1|U1|Mux7~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Unit1|U1|Mux7~0_combout\,
	combout => \Unit1|U2|tmp_rf[10][8]~feeder_combout\);

-- Location: LCCOMB_X41_Y41_N26
\Unit1|U2|tmp_rf[7][8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[7][8]~feeder_combout\ = \Unit1|U1|Mux7~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Unit1|U1|Mux7~0_combout\,
	combout => \Unit1|U2|tmp_rf[7][8]~feeder_combout\);

-- Location: LCCOMB_X40_Y42_N20
\Unit1|U2|tmp_rf[10][9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[10][9]~feeder_combout\ = \Unit1|U1|Mux6~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|U1|Mux6~0_combout\,
	combout => \Unit1|U2|tmp_rf[10][9]~feeder_combout\);

-- Location: LCCOMB_X39_Y40_N8
\Unit1|U2|tmp_rf[1][9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[1][9]~feeder_combout\ = \Unit1|U1|Mux6~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|U1|Mux6~0_combout\,
	combout => \Unit1|U2|tmp_rf[1][9]~feeder_combout\);

-- Location: LCCOMB_X43_Y42_N28
\Unit1|U2|tmp_rf[5][9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[5][9]~feeder_combout\ = \Unit1|U1|Mux6~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Unit1|U1|Mux6~0_combout\,
	combout => \Unit1|U2|tmp_rf[5][9]~feeder_combout\);

-- Location: LCCOMB_X36_Y44_N24
\Unit1|U2|tmp_rf[4][10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[4][10]~feeder_combout\ = \Unit1|U1|Mux5~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|U1|Mux5~0_combout\,
	combout => \Unit1|U2|tmp_rf[4][10]~feeder_combout\);

-- Location: LCCOMB_X36_Y44_N26
\Unit1|U2|tmp_rf[9][10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[9][10]~feeder_combout\ = \Unit1|U1|Mux5~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|U1|Mux5~0_combout\,
	combout => \Unit1|U2|tmp_rf[9][10]~feeder_combout\);

-- Location: LCCOMB_X43_Y44_N26
\Unit1|U2|tmp_rf[14][10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[14][10]~feeder_combout\ = \Unit1|U1|Mux5~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|U1|Mux5~0_combout\,
	combout => \Unit1|U2|tmp_rf[14][10]~feeder_combout\);

-- Location: LCCOMB_X41_Y44_N12
\Unit1|U2|tmp_rf[2][11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[2][11]~feeder_combout\ = \Unit1|U1|Mux4~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Unit1|U1|Mux4~0_combout\,
	combout => \Unit1|U2|tmp_rf[2][11]~feeder_combout\);

-- Location: LCCOMB_X41_Y42_N24
\Unit1|U2|tmp_rf[12][11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[12][11]~feeder_combout\ = \Unit1|U1|Mux4~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|U1|Mux4~0_combout\,
	combout => \Unit1|U2|tmp_rf[12][11]~feeder_combout\);

-- Location: LCCOMB_X41_Y41_N0
\Unit1|U2|tmp_rf[7][11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[7][11]~feeder_combout\ = \Unit1|U1|Mux4~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|U1|Mux4~0_combout\,
	combout => \Unit1|U2|tmp_rf[7][11]~feeder_combout\);

-- Location: LCCOMB_X42_Y46_N6
\Unit1|U2|tmp_rf[4][12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[4][12]~feeder_combout\ = \Unit1|U1|Mux3~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Unit1|U1|Mux3~0_combout\,
	combout => \Unit1|U2|tmp_rf[4][12]~feeder_combout\);

-- Location: LCCOMB_X40_Y43_N26
\Unit1|U2|tmp_rf[9][12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[9][12]~feeder_combout\ = \Unit1|U1|Mux3~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Unit1|U1|Mux3~0_combout\,
	combout => \Unit1|U2|tmp_rf[9][12]~feeder_combout\);

-- Location: LCCOMB_X35_Y42_N10
\Unit1|U2|tmp_rf[10][12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[10][12]~feeder_combout\ = \Unit1|U1|Mux3~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|U1|Mux3~0_combout\,
	combout => \Unit1|U2|tmp_rf[10][12]~feeder_combout\);

-- Location: LCCOMB_X41_Y44_N20
\Unit1|U2|tmp_rf[1][13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[1][13]~feeder_combout\ = \Unit1|U1|Mux2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|U1|Mux2~0_combout\,
	combout => \Unit1|U2|tmp_rf[1][13]~feeder_combout\);

-- Location: LCCOMB_X43_Y42_N18
\Unit1|U2|tmp_rf[13][13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[13][13]~feeder_combout\ = \Unit1|U1|Mux2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|U1|Mux2~0_combout\,
	combout => \Unit1|U2|tmp_rf[13][13]~feeder_combout\);

-- Location: LCCOMB_X43_Y42_N12
\Unit1|U2|tmp_rf[5][13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[5][13]~feeder_combout\ = \Unit1|U1|Mux2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|U1|Mux2~0_combout\,
	combout => \Unit1|U2|tmp_rf[5][13]~feeder_combout\);

-- Location: LCCOMB_X40_Y40_N22
\Unit1|U2|tmp_rf[8][13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[8][13]~feeder_combout\ = \Unit1|U1|Mux2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|U1|Mux2~0_combout\,
	combout => \Unit1|U2|tmp_rf[8][13]~feeder_combout\);

-- Location: LCCOMB_X41_Y43_N18
\Unit1|U2|tmp_rf[14][13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[14][13]~feeder_combout\ = \Unit1|U1|Mux2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Unit1|U1|Mux2~0_combout\,
	combout => \Unit1|U2|tmp_rf[14][13]~feeder_combout\);

-- Location: LCCOMB_X42_Y41_N26
\Unit1|U2|tmp_rf[15][14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[15][14]~feeder_combout\ = \Unit1|U1|Mux1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|U1|Mux1~0_combout\,
	combout => \Unit1|U2|tmp_rf[15][14]~feeder_combout\);

-- Location: LCCOMB_X41_Y41_N14
\Unit1|U2|tmp_rf[7][14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[7][14]~feeder_combout\ = \Unit1|U1|Mux1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|U1|Mux1~0_combout\,
	combout => \Unit1|U2|tmp_rf[7][14]~feeder_combout\);

-- Location: LCCOMB_X43_Y42_N20
\Unit1|U2|tmp_rf[5][15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[5][15]~feeder_combout\ = \Unit1|U1|Mux0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Unit1|U1|Mux0~0_combout\,
	combout => \Unit1|U2|tmp_rf[5][15]~feeder_combout\);

-- Location: LCCOMB_X43_Y41_N10
\Unit1|U2|tmp_rf[9][15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[9][15]~feeder_combout\ = \Unit1|U1|Mux0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|U1|Mux0~0_combout\,
	combout => \Unit1|U2|tmp_rf[9][15]~feeder_combout\);

-- Location: IOOBUF_X18_Y73_N23
\cpu_output[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit2|altsyncram_component|auto_generated|q_a\(0),
	oe => \Unit0|U0|oe_ctrl~q\,
	devoe => ww_devoe,
	o => \cpu_output[0]~output_o\);

-- Location: IOOBUF_X0_Y28_N16
\cpu_output[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit2|altsyncram_component|auto_generated|q_a\(1),
	oe => \Unit0|U0|oe_ctrl~q\,
	devoe => ww_devoe,
	o => \cpu_output[1]~output_o\);

-- Location: IOOBUF_X0_Y31_N16
\cpu_output[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit2|altsyncram_component|auto_generated|q_a\(2),
	oe => \Unit0|U0|oe_ctrl~q\,
	devoe => ww_devoe,
	o => \cpu_output[2]~output_o\);

-- Location: IOOBUF_X11_Y73_N16
\cpu_output[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit2|altsyncram_component|auto_generated|q_a\(3),
	oe => \Unit0|U0|oe_ctrl~q\,
	devoe => ww_devoe,
	o => \cpu_output[3]~output_o\);

-- Location: IOOBUF_X23_Y73_N9
\cpu_output[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit2|altsyncram_component|auto_generated|q_a\(4),
	oe => \Unit0|U0|oe_ctrl~q\,
	devoe => ww_devoe,
	o => \cpu_output[4]~output_o\);

-- Location: IOOBUF_X27_Y0_N9
\cpu_output[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit2|altsyncram_component|auto_generated|q_a\(5),
	oe => \Unit0|U0|oe_ctrl~q\,
	devoe => ww_devoe,
	o => \cpu_output[5]~output_o\);

-- Location: IOOBUF_X13_Y73_N23
\cpu_output[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit2|altsyncram_component|auto_generated|q_a\(6),
	oe => \Unit0|U0|oe_ctrl~q\,
	devoe => ww_devoe,
	o => \cpu_output[6]~output_o\);

-- Location: IOOBUF_X0_Y53_N9
\cpu_output[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit2|altsyncram_component|auto_generated|q_a\(7),
	oe => \Unit0|U0|oe_ctrl~q\,
	devoe => ww_devoe,
	o => \cpu_output[7]~output_o\);

-- Location: IOOBUF_X0_Y24_N16
\cpu_output[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit2|altsyncram_component|auto_generated|q_a\(8),
	oe => \Unit0|U0|oe_ctrl~q\,
	devoe => ww_devoe,
	o => \cpu_output[8]~output_o\);

-- Location: IOOBUF_X23_Y73_N23
\cpu_output[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit2|altsyncram_component|auto_generated|q_a\(9),
	oe => \Unit0|U0|oe_ctrl~q\,
	devoe => ww_devoe,
	o => \cpu_output[9]~output_o\);

-- Location: IOOBUF_X16_Y73_N23
\cpu_output[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit2|altsyncram_component|auto_generated|q_a\(10),
	oe => \Unit0|U0|oe_ctrl~q\,
	devoe => ww_devoe,
	o => \cpu_output[10]~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\cpu_output[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit2|altsyncram_component|auto_generated|q_a\(11),
	oe => \Unit0|U0|oe_ctrl~q\,
	devoe => ww_devoe,
	o => \cpu_output[11]~output_o\);

-- Location: IOOBUF_X20_Y0_N16
\cpu_output[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit2|altsyncram_component|auto_generated|q_a\(12),
	oe => \Unit0|U0|oe_ctrl~q\,
	devoe => ww_devoe,
	o => \cpu_output[12]~output_o\);

-- Location: IOOBUF_X23_Y73_N2
\cpu_output[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit2|altsyncram_component|auto_generated|q_a\(13),
	oe => \Unit0|U0|oe_ctrl~q\,
	devoe => ww_devoe,
	o => \cpu_output[13]~output_o\);

-- Location: IOOBUF_X0_Y27_N16
\cpu_output[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit2|altsyncram_component|auto_generated|q_a\(14),
	oe => \Unit0|U0|oe_ctrl~q\,
	devoe => ww_devoe,
	o => \cpu_output[14]~output_o\);

-- Location: IOOBUF_X23_Y0_N23
\cpu_output[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit2|altsyncram_component|auto_generated|q_a\(15),
	oe => \Unit0|U0|oe_ctrl~q\,
	devoe => ww_devoe,
	o => \cpu_output[15]~output_o\);

-- Location: IOOBUF_X52_Y73_N23
\D_addr_bus[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit0|U3|Mux15~1_combout\,
	devoe => ww_devoe,
	o => \D_addr_bus[0]~output_o\);

-- Location: IOOBUF_X0_Y34_N23
\D_addr_bus[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit0|U3|Mux14~1_combout\,
	devoe => ww_devoe,
	o => \D_addr_bus[1]~output_o\);

-- Location: IOOBUF_X33_Y0_N2
\D_addr_bus[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit0|U3|Mux13~1_combout\,
	devoe => ww_devoe,
	o => \D_addr_bus[2]~output_o\);

-- Location: IOOBUF_X20_Y73_N16
\D_addr_bus[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit0|U3|Mux12~1_combout\,
	devoe => ww_devoe,
	o => \D_addr_bus[3]~output_o\);

-- Location: IOOBUF_X0_Y24_N9
\D_addr_bus[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit0|U3|Mux11~1_combout\,
	devoe => ww_devoe,
	o => \D_addr_bus[4]~output_o\);

-- Location: IOOBUF_X0_Y52_N2
\D_addr_bus[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit0|U3|Mux10~1_combout\,
	devoe => ww_devoe,
	o => \D_addr_bus[5]~output_o\);

-- Location: IOOBUF_X29_Y73_N2
\D_addr_bus[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit0|U3|Mux9~1_combout\,
	devoe => ww_devoe,
	o => \D_addr_bus[6]~output_o\);

-- Location: IOOBUF_X0_Y25_N23
\D_addr_bus[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit0|U3|Mux8~1_combout\,
	devoe => ww_devoe,
	o => \D_addr_bus[7]~output_o\);

-- Location: IOOBUF_X58_Y73_N2
\D_addr_bus[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit0|U3|Mux7~1_combout\,
	devoe => ww_devoe,
	o => \D_addr_bus[8]~output_o\);

-- Location: IOOBUF_X0_Y29_N23
\D_addr_bus[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit0|U3|Mux6~1_combout\,
	devoe => ww_devoe,
	o => \D_addr_bus[9]~output_o\);

-- Location: IOOBUF_X27_Y73_N23
\D_addr_bus[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit0|U3|Mux5~1_combout\,
	devoe => ww_devoe,
	o => \D_addr_bus[10]~output_o\);

-- Location: IOOBUF_X54_Y73_N9
\D_addr_bus[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit0|U3|Mux4~1_combout\,
	devoe => ww_devoe,
	o => \D_addr_bus[11]~output_o\);

-- Location: IOOBUF_X0_Y50_N23
\D_addr_bus[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit0|U3|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \D_addr_bus[12]~output_o\);

-- Location: IOOBUF_X45_Y0_N23
\D_addr_bus[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit0|U3|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \D_addr_bus[13]~output_o\);

-- Location: IOOBUF_X0_Y30_N2
\D_addr_bus[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit0|U3|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \D_addr_bus[14]~output_o\);

-- Location: IOOBUF_X0_Y34_N16
\D_addr_bus[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit0|U3|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \D_addr_bus[15]~output_o\);

-- Location: IOOBUF_X0_Y49_N2
\D_mdin_bus[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U3|Add0~6_combout\,
	devoe => ww_devoe,
	o => \D_mdin_bus[0]~output_o\);

-- Location: IOOBUF_X35_Y0_N16
\D_mdin_bus[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U3|Add0~11_combout\,
	devoe => ww_devoe,
	o => \D_mdin_bus[1]~output_o\);

-- Location: IOOBUF_X31_Y73_N2
\D_mdin_bus[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U3|Add0~16_combout\,
	devoe => ww_devoe,
	o => \D_mdin_bus[2]~output_o\);

-- Location: IOOBUF_X31_Y73_N9
\D_mdin_bus[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U3|Add0~21_combout\,
	devoe => ww_devoe,
	o => \D_mdin_bus[3]~output_o\);

-- Location: IOOBUF_X0_Y43_N16
\D_mdin_bus[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U3|Add0~26_combout\,
	devoe => ww_devoe,
	o => \D_mdin_bus[4]~output_o\);

-- Location: IOOBUF_X45_Y0_N16
\D_mdin_bus[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U3|Add0~31_combout\,
	devoe => ww_devoe,
	o => \D_mdin_bus[5]~output_o\);

-- Location: IOOBUF_X0_Y50_N16
\D_mdin_bus[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U3|Add0~36_combout\,
	devoe => ww_devoe,
	o => \D_mdin_bus[6]~output_o\);

-- Location: IOOBUF_X47_Y73_N16
\D_mdin_bus[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U3|Add0~41_combout\,
	devoe => ww_devoe,
	o => \D_mdin_bus[7]~output_o\);

-- Location: IOOBUF_X115_Y42_N16
\D_mdin_bus[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U3|Add0~46_combout\,
	devoe => ww_devoe,
	o => \D_mdin_bus[8]~output_o\);

-- Location: IOOBUF_X52_Y73_N9
\D_mdin_bus[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U3|Add0~51_combout\,
	devoe => ww_devoe,
	o => \D_mdin_bus[9]~output_o\);

-- Location: IOOBUF_X58_Y73_N16
\D_mdin_bus[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U3|Add0~56_combout\,
	devoe => ww_devoe,
	o => \D_mdin_bus[10]~output_o\);

-- Location: IOOBUF_X0_Y42_N2
\D_mdin_bus[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U3|Add0~61_combout\,
	devoe => ww_devoe,
	o => \D_mdin_bus[11]~output_o\);

-- Location: IOOBUF_X49_Y73_N23
\D_mdin_bus[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U3|Add0~66_combout\,
	devoe => ww_devoe,
	o => \D_mdin_bus[12]~output_o\);

-- Location: IOOBUF_X0_Y47_N16
\D_mdin_bus[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U3|Add0~71_combout\,
	devoe => ww_devoe,
	o => \D_mdin_bus[13]~output_o\);

-- Location: IOOBUF_X38_Y73_N23
\D_mdin_bus[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U3|Add0~76_combout\,
	devoe => ww_devoe,
	o => \D_mdin_bus[14]~output_o\);

-- Location: IOOBUF_X42_Y0_N16
\D_mdin_bus[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U3|Add0~81_combout\,
	devoe => ww_devoe,
	o => \D_mdin_bus[15]~output_o\);

-- Location: IOOBUF_X18_Y73_N16
\D_mdout_bus[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit2|altsyncram_component|auto_generated|q_a\(0),
	devoe => ww_devoe,
	o => \D_mdout_bus[0]~output_o\);

-- Location: IOOBUF_X0_Y28_N23
\D_mdout_bus[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit2|altsyncram_component|auto_generated|q_a\(1),
	devoe => ww_devoe,
	o => \D_mdout_bus[1]~output_o\);

-- Location: IOOBUF_X0_Y32_N23
\D_mdout_bus[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit2|altsyncram_component|auto_generated|q_a\(2),
	devoe => ww_devoe,
	o => \D_mdout_bus[2]~output_o\);

-- Location: IOOBUF_X13_Y73_N2
\D_mdout_bus[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit2|altsyncram_component|auto_generated|q_a\(3),
	devoe => ww_devoe,
	o => \D_mdout_bus[3]~output_o\);

-- Location: IOOBUF_X20_Y73_N2
\D_mdout_bus[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit2|altsyncram_component|auto_generated|q_a\(4),
	devoe => ww_devoe,
	o => \D_mdout_bus[4]~output_o\);

-- Location: IOOBUF_X29_Y0_N23
\D_mdout_bus[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit2|altsyncram_component|auto_generated|q_a\(5),
	devoe => ww_devoe,
	o => \D_mdout_bus[5]~output_o\);

-- Location: IOOBUF_X16_Y73_N16
\D_mdout_bus[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit2|altsyncram_component|auto_generated|q_a\(6),
	devoe => ww_devoe,
	o => \D_mdout_bus[6]~output_o\);

-- Location: IOOBUF_X0_Y53_N2
\D_mdout_bus[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit2|altsyncram_component|auto_generated|q_a\(7),
	devoe => ww_devoe,
	o => \D_mdout_bus[7]~output_o\);

-- Location: IOOBUF_X0_Y27_N23
\D_mdout_bus[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit2|altsyncram_component|auto_generated|q_a\(8),
	devoe => ww_devoe,
	o => \D_mdout_bus[8]~output_o\);

-- Location: IOOBUF_X23_Y73_N16
\D_mdout_bus[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit2|altsyncram_component|auto_generated|q_a\(9),
	devoe => ww_devoe,
	o => \D_mdout_bus[9]~output_o\);

-- Location: IOOBUF_X20_Y73_N23
\D_mdout_bus[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit2|altsyncram_component|auto_generated|q_a\(10),
	devoe => ww_devoe,
	o => \D_mdout_bus[10]~output_o\);

-- Location: IOOBUF_X27_Y0_N23
\D_mdout_bus[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit2|altsyncram_component|auto_generated|q_a\(11),
	devoe => ww_devoe,
	o => \D_mdout_bus[11]~output_o\);

-- Location: IOOBUF_X20_Y0_N2
\D_mdout_bus[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit2|altsyncram_component|auto_generated|q_a\(12),
	devoe => ww_devoe,
	o => \D_mdout_bus[12]~output_o\);

-- Location: IOOBUF_X25_Y73_N23
\D_mdout_bus[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit2|altsyncram_component|auto_generated|q_a\(13),
	devoe => ww_devoe,
	o => \D_mdout_bus[13]~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\D_mdout_bus[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit2|altsyncram_component|auto_generated|q_a\(14),
	devoe => ww_devoe,
	o => \D_mdout_bus[14]~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\D_mdout_bus[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit2|altsyncram_component|auto_generated|q_a\(15),
	devoe => ww_devoe,
	o => \D_mdout_bus[15]~output_o\);

-- Location: IOOBUF_X38_Y0_N2
\D_immd_bus[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit0|U2|dir_addr\(0),
	devoe => ww_devoe,
	o => \D_immd_bus[0]~output_o\);

-- Location: IOOBUF_X0_Y52_N23
\D_immd_bus[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit0|U2|dir_addr\(1),
	devoe => ww_devoe,
	o => \D_immd_bus[1]~output_o\);

-- Location: IOOBUF_X0_Y48_N2
\D_immd_bus[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit0|U2|dir_addr\(2),
	devoe => ww_devoe,
	o => \D_immd_bus[2]~output_o\);

-- Location: IOOBUF_X49_Y73_N16
\D_immd_bus[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit0|U2|dir_addr\(3),
	devoe => ww_devoe,
	o => \D_immd_bus[3]~output_o\);

-- Location: IOOBUF_X52_Y73_N16
\D_immd_bus[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit0|U2|dir_addr\(4),
	devoe => ww_devoe,
	o => \D_immd_bus[4]~output_o\);

-- Location: IOOBUF_X38_Y73_N2
\D_immd_bus[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit0|U2|dir_addr\(5),
	devoe => ww_devoe,
	o => \D_immd_bus[5]~output_o\);

-- Location: IOOBUF_X0_Y51_N16
\D_immd_bus[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit0|U2|dir_addr\(6),
	devoe => ww_devoe,
	o => \D_immd_bus[6]~output_o\);

-- Location: IOOBUF_X0_Y48_N9
\D_immd_bus[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit0|U2|dir_addr\(7),
	devoe => ww_devoe,
	o => \D_immd_bus[7]~output_o\);

-- Location: IOOBUF_X52_Y0_N2
\D_immd_bus[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D_immd_bus[8]~output_o\);

-- Location: IOOBUF_X81_Y73_N2
\D_immd_bus[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D_immd_bus[9]~output_o\);

-- Location: IOOBUF_X72_Y0_N2
\D_immd_bus[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D_immd_bus[10]~output_o\);

-- Location: IOOBUF_X79_Y73_N2
\D_immd_bus[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D_immd_bus[11]~output_o\);

-- Location: IOOBUF_X113_Y73_N9
\D_immd_bus[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D_immd_bus[12]~output_o\);

-- Location: IOOBUF_X11_Y73_N23
\D_immd_bus[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D_immd_bus[13]~output_o\);

-- Location: IOOBUF_X0_Y68_N2
\D_immd_bus[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D_immd_bus[14]~output_o\);

-- Location: IOOBUF_X105_Y73_N2
\D_immd_bus[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D_immd_bus[15]~output_o\);

-- Location: IOOBUF_X0_Y47_N23
\D_rfout_bus[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|RFr1\(0),
	devoe => ww_devoe,
	o => \D_rfout_bus[0]~output_o\);

-- Location: IOOBUF_X0_Y42_N9
\D_rfout_bus[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|RFr1\(1),
	devoe => ww_devoe,
	o => \D_rfout_bus[1]~output_o\);

-- Location: IOOBUF_X33_Y73_N2
\D_rfout_bus[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|RFr1\(2),
	devoe => ww_devoe,
	o => \D_rfout_bus[2]~output_o\);

-- Location: IOOBUF_X38_Y73_N16
\D_rfout_bus[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|RFr1\(3),
	devoe => ww_devoe,
	o => \D_rfout_bus[3]~output_o\);

-- Location: IOOBUF_X0_Y44_N23
\D_rfout_bus[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|RFr1\(4),
	devoe => ww_devoe,
	o => \D_rfout_bus[4]~output_o\);

-- Location: IOOBUF_X0_Y45_N16
\D_rfout_bus[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|RFr1\(5),
	devoe => ww_devoe,
	o => \D_rfout_bus[5]~output_o\);

-- Location: IOOBUF_X0_Y33_N16
\D_rfout_bus[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|RFr1\(6),
	devoe => ww_devoe,
	o => \D_rfout_bus[6]~output_o\);

-- Location: IOOBUF_X47_Y73_N2
\D_rfout_bus[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|RFr1\(7),
	devoe => ww_devoe,
	o => \D_rfout_bus[7]~output_o\);

-- Location: IOOBUF_X38_Y0_N9
\D_rfout_bus[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|RFr1\(8),
	devoe => ww_devoe,
	o => \D_rfout_bus[8]~output_o\);

-- Location: IOOBUF_X35_Y0_N23
\D_rfout_bus[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|RFr1\(9),
	devoe => ww_devoe,
	o => \D_rfout_bus[9]~output_o\);

-- Location: IOOBUF_X33_Y73_N9
\D_rfout_bus[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|RFr1\(10),
	devoe => ww_devoe,
	o => \D_rfout_bus[10]~output_o\);

-- Location: IOOBUF_X45_Y73_N2
\D_rfout_bus[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|RFr1\(11),
	devoe => ww_devoe,
	o => \D_rfout_bus[11]~output_o\);

-- Location: IOOBUF_X38_Y73_N9
\D_rfout_bus[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|RFr1\(12),
	devoe => ww_devoe,
	o => \D_rfout_bus[12]~output_o\);

-- Location: IOOBUF_X45_Y73_N9
\D_rfout_bus[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|RFr1\(13),
	devoe => ww_devoe,
	o => \D_rfout_bus[13]~output_o\);

-- Location: IOOBUF_X40_Y0_N23
\D_rfout_bus[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|RFr1\(14),
	devoe => ww_devoe,
	o => \D_rfout_bus[14]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\D_rfout_bus[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|RFr1\(15),
	devoe => ww_devoe,
	o => \D_rfout_bus[15]~output_o\);

-- Location: IOOBUF_X52_Y73_N2
\D_mem_addr[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit0|U3|Mux15~1_combout\,
	devoe => ww_devoe,
	o => \D_mem_addr[0]~output_o\);

-- Location: IOOBUF_X0_Y34_N9
\D_mem_addr[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit0|U3|Mux14~1_combout\,
	devoe => ww_devoe,
	o => \D_mem_addr[1]~output_o\);

-- Location: IOOBUF_X33_Y0_N9
\D_mem_addr[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit0|U3|Mux13~1_combout\,
	devoe => ww_devoe,
	o => \D_mem_addr[2]~output_o\);

-- Location: IOOBUF_X20_Y73_N9
\D_mem_addr[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit0|U3|Mux12~1_combout\,
	devoe => ww_devoe,
	o => \D_mem_addr[3]~output_o\);

-- Location: IOOBUF_X0_Y23_N23
\D_mem_addr[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit0|U3|Mux11~1_combout\,
	devoe => ww_devoe,
	o => \D_mem_addr[4]~output_o\);

-- Location: IOOBUF_X0_Y52_N16
\D_mem_addr[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit0|U3|Mux10~1_combout\,
	devoe => ww_devoe,
	o => \D_mem_addr[5]~output_o\);

-- Location: IOOBUF_X29_Y73_N9
\D_mem_addr[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit0|U3|Mux9~1_combout\,
	devoe => ww_devoe,
	o => \D_mem_addr[6]~output_o\);

-- Location: IOOBUF_X0_Y25_N16
\D_mem_addr[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit0|U3|Mux8~1_combout\,
	devoe => ww_devoe,
	o => \D_mem_addr[7]~output_o\);

-- Location: IOOBUF_X58_Y73_N23
\D_mem_addr[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit0|U3|Mux7~1_combout\,
	devoe => ww_devoe,
	o => \D_mem_addr[8]~output_o\);

-- Location: IOOBUF_X0_Y29_N16
\D_mem_addr[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit0|U3|Mux6~1_combout\,
	devoe => ww_devoe,
	o => \D_mem_addr[9]~output_o\);

-- Location: IOOBUF_X25_Y73_N16
\D_mem_addr[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit0|U3|Mux5~1_combout\,
	devoe => ww_devoe,
	o => \D_mem_addr[10]~output_o\);

-- Location: IOOBUF_X54_Y73_N2
\D_mem_addr[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit0|U3|Mux4~1_combout\,
	devoe => ww_devoe,
	o => \D_mem_addr[11]~output_o\);

-- Location: IOOBUF_X0_Y54_N9
\D_RFwa_s[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit0|U0|RFwa_ctrl\(0),
	devoe => ww_devoe,
	o => \D_RFwa_s[0]~output_o\);

-- Location: IOOBUF_X0_Y34_N2
\D_RFwa_s[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit0|U0|RFwa_ctrl\(1),
	devoe => ww_devoe,
	o => \D_RFwa_s[1]~output_o\);

-- Location: IOOBUF_X0_Y33_N23
\D_RFwa_s[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit0|U0|RFwa_ctrl\(2),
	devoe => ww_devoe,
	o => \D_RFwa_s[2]~output_o\);

-- Location: IOOBUF_X42_Y73_N2
\D_RFwa_s[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit0|U0|RFwa_ctrl\(3),
	devoe => ww_devoe,
	o => \D_RFwa_s[3]~output_o\);

-- Location: IOOBUF_X42_Y0_N23
\D_RFr1a_s[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit0|U0|RFr1a_ctrl\(0),
	devoe => ww_devoe,
	o => \D_RFr1a_s[0]~output_o\);

-- Location: IOOBUF_X0_Y44_N16
\D_RFr1a_s[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit0|U0|RFr1a_ctrl\(1),
	devoe => ww_devoe,
	o => \D_RFr1a_s[1]~output_o\);

-- Location: IOOBUF_X42_Y73_N9
\D_RFr1a_s[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit0|U0|RFr1a_ctrl\(2),
	devoe => ww_devoe,
	o => \D_RFr1a_s[2]~output_o\);

-- Location: IOOBUF_X0_Y45_N23
\D_RFr1a_s[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit0|U0|RFr1a_ctrl\(3),
	devoe => ww_devoe,
	o => \D_RFr1a_s[3]~output_o\);

-- Location: IOOBUF_X0_Y46_N23
\D_RFr2a_s[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit0|U0|RFr2a_ctrl\(0),
	devoe => ww_devoe,
	o => \D_RFr2a_s[0]~output_o\);

-- Location: IOOBUF_X0_Y44_N2
\D_RFr2a_s[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit0|U0|RFr2a_ctrl\(1),
	devoe => ww_devoe,
	o => \D_RFr2a_s[1]~output_o\);

-- Location: IOOBUF_X35_Y73_N23
\D_RFr2a_s[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit0|U0|RFr2a_ctrl\(2),
	devoe => ww_devoe,
	o => \D_RFr2a_s[2]~output_o\);

-- Location: IOOBUF_X35_Y73_N16
\D_RFr2a_s[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit0|U0|RFr2a_ctrl\(3),
	devoe => ww_devoe,
	o => \D_RFr2a_s[3]~output_o\);

-- Location: IOOBUF_X27_Y73_N16
\D_RFwe_s~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit0|U0|RFwe_ctrl~q\,
	devoe => ww_devoe,
	o => \D_RFwe_s~output_o\);

-- Location: IOOBUF_X0_Y44_N9
\D_RFr1e_s~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit0|U0|RFr1e_ctrl~q\,
	devoe => ww_devoe,
	o => \D_RFr1e_s~output_o\);

-- Location: IOOBUF_X31_Y0_N9
\D_RFr2e_s~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit0|U0|RFr2e_ctrl~q\,
	devoe => ww_devoe,
	o => \D_RFr2e_s~output_o\);

-- Location: IOOBUF_X0_Y47_N2
\D_ALUs_s[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit0|U0|ALUs_ctrl\(0),
	devoe => ww_devoe,
	o => \D_ALUs_s[0]~output_o\);

-- Location: IOOBUF_X40_Y0_N16
\D_ALUs_s[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit0|U0|ALUs_ctrl\(1),
	devoe => ww_devoe,
	o => \D_ALUs_s[1]~output_o\);

-- Location: IOOBUF_X40_Y73_N2
\D_RFs_s[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit0|U0|RFs_ctrl\(0),
	devoe => ww_devoe,
	o => \D_RFs_s[0]~output_o\);

-- Location: IOOBUF_X40_Y73_N9
\D_RFs_s[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit0|U0|RFs_ctrl\(1),
	devoe => ww_devoe,
	o => \D_RFs_s[1]~output_o\);

-- Location: IOOBUF_X0_Y46_N16
\D_PCld_s~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U3|ALUz~5_combout\,
	devoe => ww_devoe,
	o => \D_PCld_s~output_o\);

-- Location: IOOBUF_X0_Y35_N9
\D_Mre_s~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit0|U0|Mre_ctrl~q\,
	devoe => ww_devoe,
	o => \D_Mre_s~output_o\);

-- Location: IOOBUF_X27_Y73_N9
\D_Mwe_s~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit0|U0|Mwe_ctrl~q\,
	devoe => ww_devoe,
	o => \D_Mwe_s~output_o\);

-- Location: IOOBUF_X0_Y32_N16
\D_jpz_s~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit0|U0|jmpen_ctrl~q\,
	devoe => ww_devoe,
	o => \D_jpz_s~output_o\);

-- Location: IOOBUF_X0_Y22_N16
\D_oe_s~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit0|U0|oe_ctrl~q\,
	devoe => ww_devoe,
	o => \D_oe_s~output_o\);

-- Location: IOOBUF_X0_Y49_N9
\D_cur_state[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit0|U0|cur_state\(0),
	devoe => ww_devoe,
	o => \D_cur_state[0]~output_o\);

-- Location: IOOBUF_X31_Y0_N2
\D_cur_state[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit0|U0|cur_state\(1),
	devoe => ww_devoe,
	o => \D_cur_state[1]~output_o\);

-- Location: IOOBUF_X29_Y0_N16
\D_cur_state[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit0|U0|cur_state\(2),
	devoe => ww_devoe,
	o => \D_cur_state[2]~output_o\);

-- Location: IOOBUF_X0_Y30_N9
\D_cur_state[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit0|U0|cur_state\(3),
	devoe => ww_devoe,
	o => \D_cur_state[3]~output_o\);

-- Location: IOOBUF_X109_Y73_N9
\D_big_addr~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D_big_addr~output_o\);

-- Location: IOOBUF_X0_Y35_N16
\D_main_mem_status~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cpu_clk~input_o\,
	devoe => ww_devoe,
	o => \D_main_mem_status~output_o\);

-- Location: IOOBUF_X0_Y35_N2
\D_main_mem_clk~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cpu_clk~input_o\,
	devoe => ww_devoe,
	o => \D_main_mem_clk~output_o\);

-- Location: IOIBUF_X0_Y36_N8
\cpu_clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cpu_clk,
	o => \cpu_clk~input_o\);

-- Location: LCCOMB_X32_Y42_N4
\Unit0|U0|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|Selector2~0_combout\ = (\Unit0|U0|state.S1_wait~q\ & \cpu_clk~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|state.S1_wait~q\,
	datad => \cpu_clk~input_o\,
	combout => \Unit0|U0|Selector2~0_combout\);

-- Location: IOIBUF_X0_Y36_N15
\cpu_rst~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cpu_rst,
	o => \cpu_rst~input_o\);

-- Location: CLKCTRL_G4
\cpu_rst~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \cpu_rst~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \cpu_rst~inputclkctrl_outclk\);

-- Location: FF_X32_Y42_N27
\Unit0|U0|state.S1a\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	asdata => \Unit0|U0|Selector2~0_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U0|state.S1a~q\);

-- Location: CLKCTRL_G2
\cpu_clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \cpu_clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \cpu_clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X33_Y42_N20
\Unit0|U0|Mux1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|Mux1~6_combout\ = (!\Unit0|U2|IRout\(13) & (!\Unit0|U2|IRout\(15) & (\Unit0|U2|IRout\(12) & \Unit0|U2|IRout\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U2|IRout\(13),
	datab => \Unit0|U2|IRout\(15),
	datac => \Unit0|U2|IRout\(12),
	datad => \Unit0|U2|IRout\(14),
	combout => \Unit0|U0|Mux1~6_combout\);

-- Location: FF_X32_Y42_N5
\Unit0|U0|state.S1b\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	asdata => \Unit0|U0|state.S1a~q\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U0|state.S1b~q\);

-- Location: FF_X32_Y42_N19
\Unit0|U0|state.S2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	asdata => \Unit0|U0|state.S1b~q\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U0|state.S2~q\);

-- Location: FF_X33_Y42_N21
\Unit0|U0|state.S8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit0|U0|Mux1~6_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sclr => \Unit0|U0|ALT_INV_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U0|state.S8~q\);

-- Location: FF_X39_Y41_N5
\Unit0|U0|state.S8a\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	asdata => \Unit0|U0|state.S8~q\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U0|state.S8a~q\);

-- Location: LCCOMB_X33_Y42_N6
\Unit0|U0|Mux1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|Mux1~7_combout\ = (!\Unit0|U2|IRout\(13) & (!\Unit0|U2|IRout\(15) & (!\Unit0|U2|IRout\(12) & \Unit0|U2|IRout\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U2|IRout\(13),
	datab => \Unit0|U2|IRout\(15),
	datac => \Unit0|U2|IRout\(12),
	datad => \Unit0|U2|IRout\(14),
	combout => \Unit0|U0|Mux1~7_combout\);

-- Location: FF_X33_Y42_N7
\Unit0|U0|state.S7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit0|U0|Mux1~7_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sclr => \Unit0|U0|ALT_INV_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U0|state.S7~q\);

-- Location: FF_X39_Y41_N23
\Unit0|U0|state.S7a\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	asdata => \Unit0|U0|state.S7~q\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U0|state.S7a~q\);

-- Location: LCCOMB_X39_Y41_N22
\Unit0|U0|WideOr51~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|WideOr51~0_combout\ = (!\Unit0|U0|state.S6~q\ & (!\Unit0|U0|state.S8a~q\ & (!\Unit0|U0|state.S7a~q\ & !\Unit0|U0|state.S3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|state.S6~q\,
	datab => \Unit0|U0|state.S8a~q\,
	datac => \Unit0|U0|state.S7a~q\,
	datad => \Unit0|U0|state.S3~q\,
	combout => \Unit0|U0|WideOr51~0_combout\);

-- Location: LCCOMB_X33_Y42_N18
\Unit0|U0|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|Mux1~3_combout\ = (!\Unit0|U2|IRout\(13) & (\Unit0|U2|IRout\(15) & (!\Unit0|U2|IRout\(12) & !\Unit0|U2|IRout\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U2|IRout\(13),
	datab => \Unit0|U2|IRout\(15),
	datac => \Unit0|U2|IRout\(12),
	datad => \Unit0|U2|IRout\(14),
	combout => \Unit0|U0|Mux1~3_combout\);

-- Location: FF_X29_Y40_N25
\Unit0|U0|state.SaveMemory_wait\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	asdata => \Unit0|U0|state.SaveMemory_a~q\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cpu_clk~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U0|state.SaveMemory_wait~q\);

-- Location: LCCOMB_X33_Y42_N24
\Unit0|U0|Mux1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|Mux1~8_combout\ = (\Unit0|U2|IRout\(13) & (!\Unit0|U2|IRout\(15) & (!\Unit0|U2|IRout\(12) & \Unit0|U2|IRout\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U2|IRout\(13),
	datab => \Unit0|U2|IRout\(15),
	datac => \Unit0|U2|IRout\(12),
	datad => \Unit0|U2|IRout\(14),
	combout => \Unit0|U0|Mux1~8_combout\);

-- Location: FF_X33_Y42_N25
\Unit0|U0|state.S9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit0|U0|Mux1~8_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sclr => \Unit0|U0|ALT_INV_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U0|state.S9~q\);

-- Location: LCCOMB_X32_Y40_N10
\Unit0|U0|state.S9a~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|state.S9a~feeder_combout\ = \Unit0|U0|state.S9~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Unit0|U0|state.S9~q\,
	combout => \Unit0|U0|state.S9a~feeder_combout\);

-- Location: FF_X32_Y40_N11
\Unit0|U0|state.S9a\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit0|U0|state.S9a~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U0|state.S9a~q\);

-- Location: LCCOMB_X32_Y40_N4
\Unit0|U0|state.S9b~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|state.S9b~feeder_combout\ = \Unit0|U0|state.S9a~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit0|U0|state.S9a~q\,
	combout => \Unit0|U0|state.S9b~feeder_combout\);

-- Location: FF_X32_Y40_N5
\Unit0|U0|state.S9b\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit0|U0|state.S9b~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U0|state.S9b~q\);

-- Location: FF_X32_Y42_N15
\Unit0|U0|state.S8b\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	asdata => \Unit0|U0|state.S8a~q\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U0|state.S8b~q\);

-- Location: FF_X29_Y40_N31
\Unit0|U0|state.LoadMemory_wait\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	asdata => \Unit0|U0|state.LoadMemory~q\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cpu_clk~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U0|state.LoadMemory_wait~q\);

-- Location: LCCOMB_X29_Y40_N18
\Unit0|U0|Selector35~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|Selector35~0_combout\ = (\cpu_clk~input_o\ & \Unit0|U0|state.LoadMemory_wait~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_clk~input_o\,
	datac => \Unit0|U0|state.LoadMemory_wait~q\,
	combout => \Unit0|U0|Selector35~0_combout\);

-- Location: FF_X29_Y40_N15
\Unit0|U0|state.LoadMemory_a\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	asdata => \Unit0|U0|Selector35~0_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U0|state.LoadMemory_a~q\);

-- Location: FF_X32_Y42_N29
\Unit0|U0|state.LoadMemory_b\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	asdata => \Unit0|U0|state.LoadMemory_a~q\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U0|state.LoadMemory_b~q\);

-- Location: FF_X32_Y42_N17
\Unit0|U0|state.S7b\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	asdata => \Unit0|U0|state.S7a~q\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U0|state.S7b~q\);

-- Location: LCCOMB_X32_Y42_N10
\Unit0|U0|state.S3b~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|state.S3b~feeder_combout\ = \Unit0|U0|state.S3a~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit0|U0|state.S3a~q\,
	combout => \Unit0|U0|state.S3b~feeder_combout\);

-- Location: FF_X32_Y42_N11
\Unit0|U0|state.S3b\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit0|U0|state.S3b~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U0|state.S3b~q\);

-- Location: LCCOMB_X32_Y42_N16
\Unit0|U0|Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|Selector1~1_combout\ = (\Unit0|U0|state.S6a~q\) # ((\Unit0|U0|state.LoadMemory_b~q\) # ((\Unit0|U0|state.S7b~q\) # (\Unit0|U0|state.S3b~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|state.S6a~q\,
	datab => \Unit0|U0|state.LoadMemory_b~q\,
	datac => \Unit0|U0|state.S7b~q\,
	datad => \Unit0|U0|state.S3b~q\,
	combout => \Unit0|U0|Selector1~1_combout\);

-- Location: LCCOMB_X32_Y42_N14
\Unit0|U0|Selector1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|Selector1~2_combout\ = (\Unit0|U0|state.S11a~q\) # ((\Unit0|U0|state.S9b~q\) # ((\Unit0|U0|state.S8b~q\) # (\Unit0|U0|Selector1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|state.S11a~q\,
	datab => \Unit0|U0|state.S9b~q\,
	datac => \Unit0|U0|state.S8b~q\,
	datad => \Unit0|U0|Selector1~1_combout\,
	combout => \Unit0|U0|Selector1~2_combout\);

-- Location: LCCOMB_X33_Y42_N16
\Unit0|U0|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|Mux1~0_combout\ = (\Unit0|U2|IRout\(13) & (!\Unit0|U2|IRout\(15) & (!\Unit0|U2|IRout\(12) & !\Unit0|U2|IRout\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U2|IRout\(13),
	datab => \Unit0|U2|IRout\(15),
	datac => \Unit0|U2|IRout\(12),
	datad => \Unit0|U2|IRout\(14),
	combout => \Unit0|U0|Mux1~0_combout\);

-- Location: FF_X33_Y42_N17
\Unit0|U0|state.S5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit0|U0|Mux1~0_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sclr => \Unit0|U0|ALT_INV_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U0|state.S5~q\);

-- Location: LCCOMB_X28_Y40_N18
\Unit0|U0|Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|Selector12~0_combout\ = (\Unit0|U0|state.S5~q\) # ((!\cpu_clk~input_o\ & \Unit0|U0|state.S5a~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_clk~input_o\,
	datac => \Unit0|U0|state.S5~q\,
	datad => \Unit0|U0|state.S5a~q\,
	combout => \Unit0|U0|Selector12~0_combout\);

-- Location: LCCOMB_X28_Y40_N24
\Unit0|U0|state.S5a~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|state.S5a~feeder_combout\ = \Unit0|U0|Selector12~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Unit0|U0|Selector12~0_combout\,
	combout => \Unit0|U0|state.S5a~feeder_combout\);

-- Location: FF_X28_Y40_N25
\Unit0|U0|state.S5a\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit0|U0|state.S5a~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U0|state.S5a~q\);

-- Location: FF_X29_Y40_N29
\Unit0|U0|state.S5_wait\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	asdata => \Unit0|U0|state.S5a~q\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cpu_clk~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U0|state.S5_wait~q\);

-- Location: LCCOMB_X29_Y40_N16
\Unit0|U0|Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|Selector13~0_combout\ = (\cpu_clk~input_o\ & \Unit0|U0|state.S5_wait~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_clk~input_o\,
	datad => \Unit0|U0|state.S5_wait~q\,
	combout => \Unit0|U0|Selector13~0_combout\);

-- Location: FF_X29_Y40_N5
\Unit0|U0|state.S5b\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	asdata => \Unit0|U0|Selector13~0_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U0|state.S5b~q\);

-- Location: LCCOMB_X29_Y40_N0
\Unit0|U0|Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|Selector9~0_combout\ = (\Unit0|U0|state.S4~q\) # ((!\cpu_clk~input_o\ & \Unit0|U0|state.S4a~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_clk~input_o\,
	datab => \Unit0|U0|state.S4a~q\,
	datad => \Unit0|U0|state.S4~q\,
	combout => \Unit0|U0|Selector9~0_combout\);

-- Location: FF_X29_Y40_N21
\Unit0|U0|state.S4a\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	asdata => \Unit0|U0|Selector9~0_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U0|state.S4a~q\);

-- Location: FF_X29_Y40_N13
\Unit0|U0|state.S4_wait\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	asdata => \Unit0|U0|state.S4a~q\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cpu_clk~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U0|state.S4_wait~q\);

-- Location: LCCOMB_X29_Y40_N12
\Unit0|U0|Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|Selector10~0_combout\ = (\cpu_clk~input_o\ & \Unit0|U0|state.S4_wait~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_clk~input_o\,
	datac => \Unit0|U0|state.S4_wait~q\,
	combout => \Unit0|U0|Selector10~0_combout\);

-- Location: FF_X29_Y40_N27
\Unit0|U0|state.S4b\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	asdata => \Unit0|U0|Selector10~0_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U0|state.S4b~q\);

-- Location: LCCOMB_X29_Y40_N4
\Unit0|U0|Selector40~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|Selector40~0_combout\ = (\cpu_clk~input_o\ & \Unit0|U0|state.SaveMemory_wait~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_clk~input_o\,
	datad => \Unit0|U0|state.SaveMemory_wait~q\,
	combout => \Unit0|U0|Selector40~0_combout\);

-- Location: FF_X29_Y40_N17
\Unit0|U0|state.SaveMemory_b\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	asdata => \Unit0|U0|Selector40~0_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U0|state.SaveMemory_b~q\);

-- Location: LCCOMB_X29_Y40_N26
\Unit0|U0|Selector53~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|Selector53~1_combout\ = (!\Unit0|U0|state.S5b~q\ & (!\Unit0|U0|state.S4b~q\ & !\Unit0|U0|state.SaveMemory_b~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Unit0|U0|state.S5b~q\,
	datac => \Unit0|U0|state.S4b~q\,
	datad => \Unit0|U0|state.SaveMemory_b~q\,
	combout => \Unit0|U0|Selector53~1_combout\);

-- Location: LCCOMB_X41_Y46_N24
\Unit0|U0|state.S0~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|state.S0~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \Unit0|U0|state.S0~feeder_combout\);

-- Location: FF_X41_Y46_N25
\Unit0|U0|state.S0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit0|U0|state.S0~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U0|state.S0~q\);

-- Location: LCCOMB_X32_Y42_N24
\Unit0|U0|Selector1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|Selector1~3_combout\ = (\Unit0|U0|Selector1~0_combout\) # ((\Unit0|U0|Selector1~2_combout\) # ((!\Unit0|U0|state.S0~q\) # (!\Unit0|U0|Selector53~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|Selector1~0_combout\,
	datab => \Unit0|U0|Selector1~2_combout\,
	datac => \Unit0|U0|Selector53~1_combout\,
	datad => \Unit0|U0|state.S0~q\,
	combout => \Unit0|U0|Selector1~3_combout\);

-- Location: FF_X32_Y42_N25
\Unit0|U0|state.S1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit0|U0|Selector1~3_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U0|state.S1~q\);

-- Location: FF_X29_Y40_N1
\Unit0|U0|state.S1_wait\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	asdata => \Unit0|U0|state.S1~q\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cpu_clk~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U0|state.S1_wait~q\);

-- Location: LCCOMB_X29_Y40_N28
\Unit0|U0|WideOr5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|WideOr5~1_combout\ = (!\Unit0|U0|state.S3_wait~q\ & (!\Unit0|U0|state.S1_wait~q\ & (!\Unit0|U0|state.S5_wait~q\ & !\Unit0|U0|state.S4_wait~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|state.S3_wait~q\,
	datab => \Unit0|U0|state.S1_wait~q\,
	datac => \Unit0|U0|state.S5_wait~q\,
	datad => \Unit0|U0|state.S4_wait~q\,
	combout => \Unit0|U0|WideOr5~1_combout\);

-- Location: LCCOMB_X29_Y40_N24
\Unit0|U0|WideOr5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|WideOr5~2_combout\ = (!\Unit0|U0|state.LoadMemory_wait~q\ & (!\Unit0|U0|state.SaveMemory_wait~q\ & \Unit0|U0|WideOr5~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|state.LoadMemory_wait~q\,
	datac => \Unit0|U0|state.SaveMemory_wait~q\,
	datad => \Unit0|U0|WideOr5~1_combout\,
	combout => \Unit0|U0|WideOr5~2_combout\);

-- Location: LCCOMB_X33_Y42_N2
\Unit0|U0|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|Selector5~0_combout\ = (\Unit0|U0|state.S2~q\) # ((\cpu_clk~input_o\) # ((\Unit0|U0|WideOr5~0_combout\ & \Unit0|U0|WideOr5~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|WideOr5~0_combout\,
	datab => \Unit0|U0|state.S2~q\,
	datac => \Unit0|U0|WideOr5~2_combout\,
	datad => \cpu_clk~input_o\,
	combout => \Unit0|U0|Selector5~0_combout\);

-- Location: FF_X33_Y42_N19
\Unit0|U0|state.LoadMemory\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit0|U0|Mux1~3_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sclr => \Unit0|U0|ALT_INV_state.S2~q\,
	ena => \Unit0|U0|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U0|state.LoadMemory~q\);

-- Location: LCCOMB_X39_Y41_N16
\Unit0|U0|Selector60~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|Selector60~0_combout\ = (\Unit0|U0|state.S6~q\) # ((\Unit0|U0|WideOr51~0_combout\ & (\Unit0|U0|RFs_ctrl\(1) & !\Unit0|U0|state.LoadMemory~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|state.S6~q\,
	datab => \Unit0|U0|WideOr51~0_combout\,
	datac => \Unit0|U0|RFs_ctrl\(1),
	datad => \Unit0|U0|state.LoadMemory~q\,
	combout => \Unit0|U0|Selector60~0_combout\);

-- Location: FF_X39_Y41_N17
\Unit0|U0|RFs_ctrl[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit0|U0|Selector60~0_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U0|RFs_ctrl\(1));

-- Location: LCCOMB_X39_Y41_N10
\Unit0|U0|Selector61~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|Selector61~0_combout\ = (\Unit0|U0|state.S3~q\) # ((\Unit0|U0|state.LoadMemory~q\) # ((\Unit0|U0|WideOr51~0_combout\ & \Unit0|U0|RFs_ctrl\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|WideOr51~0_combout\,
	datab => \Unit0|U0|state.S3~q\,
	datac => \Unit0|U0|RFs_ctrl\(0),
	datad => \Unit0|U0|state.LoadMemory~q\,
	combout => \Unit0|U0|Selector61~0_combout\);

-- Location: FF_X39_Y41_N11
\Unit0|U0|RFs_ctrl[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit0|U0|Selector61~0_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U0|RFs_ctrl\(0));

-- Location: LCCOMB_X38_Y45_N0
\Unit0|U2|dir_addr[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U2|dir_addr\(0) = (GLOBAL(\Unit0|U0|IRld_ctrl~clkctrl_outclk\) & ((\Unit2|altsyncram_component|auto_generated|q_a\(0)))) # (!GLOBAL(\Unit0|U0|IRld_ctrl~clkctrl_outclk\) & (\Unit0|U2|dir_addr\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|IRld_ctrl~clkctrl_outclk\,
	datab => \Unit0|U2|dir_addr\(0),
	datad => \Unit2|altsyncram_component|auto_generated|q_a\(0),
	combout => \Unit0|U2|dir_addr\(0));

-- Location: LCCOMB_X38_Y45_N18
\Unit1|U1|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U1|Mux15~0_combout\ = (\Unit0|U0|RFs_ctrl\(1) & (((\Unit0|U0|RFs_ctrl\(0)) # (\Unit0|U2|dir_addr\(0))))) # (!\Unit0|U0|RFs_ctrl\(1) & (\Unit2|altsyncram_component|auto_generated|q_a\(0) & (\Unit0|U0|RFs_ctrl\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit2|altsyncram_component|auto_generated|q_a\(0),
	datab => \Unit0|U0|RFs_ctrl\(1),
	datac => \Unit0|U0|RFs_ctrl\(0),
	datad => \Unit0|U2|dir_addr\(0),
	combout => \Unit1|U1|Mux15~0_combout\);

-- Location: LCCOMB_X38_Y45_N4
\Unit1|U1|Mux15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U1|Mux15~1_combout\ = (\Unit1|U1|Mux15~0_combout\) # ((!\Unit0|U0|RFs_ctrl\(0) & (!\Unit0|U0|RFs_ctrl\(1) & \Unit1|U3|Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFs_ctrl\(0),
	datab => \Unit0|U0|RFs_ctrl\(1),
	datac => \Unit1|U3|Add0~6_combout\,
	datad => \Unit1|U1|Mux15~0_combout\,
	combout => \Unit1|U1|Mux15~1_combout\);

-- Location: LCCOMB_X33_Y42_N4
\Unit0|U0|Selector50~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|Selector50~0_combout\ = (!\Unit0|U0|state.S7~q\ & (!\Unit0|U0|state.S5~q\ & !\Unit0|U0|state.S8~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|state.S7~q\,
	datab => \Unit0|U0|state.S5~q\,
	datad => \Unit0|U0|state.S8~q\,
	combout => \Unit0|U0|Selector50~0_combout\);

-- Location: LCCOMB_X32_Y40_N22
\Unit0|U0|WideOr19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|WideOr19~0_combout\ = (!\Unit0|U0|state.S9~q\ & (!\Unit0|U0|state.SaveMemory~q\ & (!\Unit0|U0|state.S4~q\ & \Unit0|U0|Selector50~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|state.S9~q\,
	datab => \Unit0|U0|state.SaveMemory~q\,
	datac => \Unit0|U0|state.S4~q\,
	datad => \Unit0|U0|Selector50~0_combout\,
	combout => \Unit0|U0|WideOr19~0_combout\);

-- Location: LCCOMB_X32_Y40_N28
\Unit0|U0|WideOr41~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|WideOr41~0_combout\ = (\Unit0|U0|state.S4~q\) # ((\Unit0|U0|state.S5~q\) # (\Unit0|U0|state.SaveMemory~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Unit0|U0|state.S4~q\,
	datac => \Unit0|U0|state.S5~q\,
	datad => \Unit0|U0|state.SaveMemory~q\,
	combout => \Unit0|U0|WideOr41~0_combout\);

-- Location: LCCOMB_X33_Y42_N26
\Unit0|U0|Mux1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|Mux1~5_combout\ = (\Unit0|U2|IRout\(13) & (!\Unit0|U2|IRout\(15) & (\Unit0|U2|IRout\(12) & \Unit0|U2|IRout\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U2|IRout\(13),
	datab => \Unit0|U2|IRout\(15),
	datac => \Unit0|U2|IRout\(12),
	datad => \Unit0|U2|IRout\(14),
	combout => \Unit0|U0|Mux1~5_combout\);

-- Location: FF_X33_Y42_N27
\Unit0|U0|state.S11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit0|U0|Mux1~5_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sclr => \Unit0|U0|ALT_INV_state.S2~q\,
	ena => \Unit0|U0|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U0|state.S11~q\);

-- Location: LCCOMB_X32_Y40_N14
\Unit0|U0|Selector53~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|Selector53~0_combout\ = (!\Unit0|U0|state.LoadMemory~q\ & (!\Unit0|U0|state.S3~q\ & (!\Unit0|U0|state.S1~q\ & !\Unit0|U0|state.S11~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|state.LoadMemory~q\,
	datab => \Unit0|U0|state.S3~q\,
	datac => \Unit0|U0|state.S1~q\,
	datad => \Unit0|U0|state.S11~q\,
	combout => \Unit0|U0|Selector53~0_combout\);

-- Location: LCCOMB_X32_Y40_N0
\Unit0|U0|WideOr41~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|WideOr41~1_combout\ = (\Unit0|U0|WideOr41~0_combout\) # ((!\Unit0|U0|Selector53~1_combout\) # (!\Unit0|U0|Selector53~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Unit0|U0|WideOr41~0_combout\,
	datac => \Unit0|U0|Selector53~0_combout\,
	datad => \Unit0|U0|Selector53~1_combout\,
	combout => \Unit0|U0|WideOr41~1_combout\);

-- Location: LCCOMB_X32_Y41_N24
\Unit0|U0|Selector52~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|Selector52~0_combout\ = (\Unit0|U0|state.S4~q\) # ((\Unit0|U0|state.SaveMemory~q\) # ((\Unit0|U0|state.LoadMemory~q\) # (\Unit0|U0|state.S11~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|state.S4~q\,
	datab => \Unit0|U0|state.SaveMemory~q\,
	datac => \Unit0|U0|state.LoadMemory~q\,
	datad => \Unit0|U0|state.S11~q\,
	combout => \Unit0|U0|Selector52~0_combout\);

-- Location: LCCOMB_X32_Y41_N8
\Unit0|U0|Selector52~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|Selector52~1_combout\ = (\Unit0|U0|state.S3~q\) # ((\Unit0|U0|Selector52~0_combout\) # ((!\Unit0|U0|WideOr41~1_combout\ & \Unit0|U0|Ms_ctrl\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|state.S3~q\,
	datab => \Unit0|U0|WideOr41~1_combout\,
	datac => \Unit0|U0|Ms_ctrl\(0),
	datad => \Unit0|U0|Selector52~0_combout\,
	combout => \Unit0|U0|Selector52~1_combout\);

-- Location: FF_X32_Y41_N9
\Unit0|U0|Ms_ctrl[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit0|U0|Selector52~1_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U0|Ms_ctrl\(0));

-- Location: LCCOMB_X40_Y46_N0
\Unit0|U1|tmp_PC[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U1|tmp_PC[0]~16_combout\ = \Unit0|U1|tmp_PC\(0) $ (VCC)
-- \Unit0|U1|tmp_PC[0]~17\ = CARRY(\Unit0|U1|tmp_PC\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Unit0|U1|tmp_PC\(0),
	datad => VCC,
	combout => \Unit0|U1|tmp_PC[0]~16_combout\,
	cout => \Unit0|U1|tmp_PC[0]~17\);

-- Location: LCCOMB_X41_Y46_N28
\Unit0|U0|PCclr_ctrl~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|PCclr_ctrl~0_combout\ = (\Unit0|U0|PCclr_ctrl~q\) # (!\Unit0|U0|state.S0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Unit0|U0|PCclr_ctrl~q\,
	datad => \Unit0|U0|state.S0~q\,
	combout => \Unit0|U0|PCclr_ctrl~0_combout\);

-- Location: FF_X41_Y46_N29
\Unit0|U0|PCclr_ctrl\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit0|U0|PCclr_ctrl~0_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U0|PCclr_ctrl~q\);

-- Location: LCCOMB_X39_Y41_N0
\Unit0|U0|Selector67~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|Selector67~0_combout\ = (\Unit0|U0|state.S5~q\) # ((\Unit0|U0|state.S8~q\) # ((\Unit0|U0|ALUs_ctrl\(0) & \Unit0|U0|WideOr19~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|state.S5~q\,
	datab => \Unit0|U0|state.S8~q\,
	datac => \Unit0|U0|ALUs_ctrl\(0),
	datad => \Unit0|U0|WideOr19~0_combout\,
	combout => \Unit0|U0|Selector67~0_combout\);

-- Location: FF_X39_Y41_N1
\Unit0|U0|ALUs_ctrl[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit0|U0|Selector67~0_combout\,
	ena => \ALT_INV_cpu_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U0|ALUs_ctrl\(0));

-- Location: LCCOMB_X40_Y46_N8
\Unit0|U1|tmp_PC[4]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U1|tmp_PC[4]~25_combout\ = (\Unit0|U1|tmp_PC\(4) & (\Unit0|U1|tmp_PC[3]~24\ $ (GND))) # (!\Unit0|U1|tmp_PC\(4) & (!\Unit0|U1|tmp_PC[3]~24\ & VCC))
-- \Unit0|U1|tmp_PC[4]~26\ = CARRY((\Unit0|U1|tmp_PC\(4) & !\Unit0|U1|tmp_PC[3]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Unit0|U1|tmp_PC\(4),
	datad => VCC,
	cin => \Unit0|U1|tmp_PC[3]~24\,
	combout => \Unit0|U1|tmp_PC[4]~25_combout\,
	cout => \Unit0|U1|tmp_PC[4]~26\);

-- Location: LCCOMB_X40_Y46_N10
\Unit0|U1|tmp_PC[5]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U1|tmp_PC[5]~27_combout\ = (\Unit0|U1|tmp_PC\(5) & (!\Unit0|U1|tmp_PC[4]~26\)) # (!\Unit0|U1|tmp_PC\(5) & ((\Unit0|U1|tmp_PC[4]~26\) # (GND)))
-- \Unit0|U1|tmp_PC[5]~28\ = CARRY((!\Unit0|U1|tmp_PC[4]~26\) # (!\Unit0|U1|tmp_PC\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U1|tmp_PC\(5),
	datad => VCC,
	cin => \Unit0|U1|tmp_PC[4]~26\,
	combout => \Unit0|U1|tmp_PC[5]~27_combout\,
	cout => \Unit0|U1|tmp_PC[5]~28\);

-- Location: LCCOMB_X32_Y40_N8
\Unit0|U0|Selector51~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|Selector51~0_combout\ = (!\Unit0|U0|state.S1~q\ & (\Unit0|U0|Selector53~1_combout\ & ((\Unit0|U0|WideOr41~1_combout\) # (\Unit0|U0|Ms_ctrl\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|state.S1~q\,
	datab => \Unit0|U0|WideOr41~1_combout\,
	datac => \Unit0|U0|Ms_ctrl\(1),
	datad => \Unit0|U0|Selector53~1_combout\,
	combout => \Unit0|U0|Selector51~0_combout\);

-- Location: FF_X32_Y40_N9
\Unit0|U0|Ms_ctrl[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit0|U0|Selector51~0_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U0|Ms_ctrl\(1));

-- Location: LCCOMB_X39_Y41_N14
\Unit0|U0|Selector66~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|Selector66~0_combout\ = (\Unit0|U0|state.S7~q\) # ((\Unit0|U0|state.S8~q\) # ((\Unit0|U0|ALUs_ctrl\(1) & \Unit0|U0|WideOr19~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|state.S7~q\,
	datab => \Unit0|U0|state.S8~q\,
	datac => \Unit0|U0|ALUs_ctrl\(1),
	datad => \Unit0|U0|WideOr19~0_combout\,
	combout => \Unit0|U0|Selector66~0_combout\);

-- Location: FF_X39_Y41_N15
\Unit0|U0|ALUs_ctrl[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit0|U0|Selector66~0_combout\,
	ena => \ALT_INV_cpu_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U0|ALUs_ctrl\(1));

-- Location: LCCOMB_X40_Y41_N28
\Unit1|U3|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|Add0~32_combout\ = (!\Unit0|U0|ALUs_ctrl\(1) & ((\Unit0|U0|ALUs_ctrl\(0) & (\Unit1|U2|RFr2\(6))) # (!\Unit0|U0|ALUs_ctrl\(0) & ((\Unit1|U2|RFr1\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|RFr2\(6),
	datab => \Unit1|U2|RFr1\(6),
	datac => \Unit0|U0|ALUs_ctrl\(0),
	datad => \Unit0|U0|ALUs_ctrl\(1),
	combout => \Unit1|U3|Add0~32_combout\);

-- Location: LCCOMB_X39_Y41_N2
\Unit0|U0|RFr2a_ctrl[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|RFr2a_ctrl[0]~0_combout\ = (!\cpu_rst~input_o\ & ((\Unit0|U0|state.S8~q\) # ((\Unit0|U0|state.S7~q\) # (\Unit0|U0|state.S5~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_rst~input_o\,
	datab => \Unit0|U0|state.S8~q\,
	datac => \Unit0|U0|state.S7~q\,
	datad => \Unit0|U0|state.S5~q\,
	combout => \Unit0|U0|RFr2a_ctrl[0]~0_combout\);

-- Location: FF_X39_Y44_N1
\Unit0|U0|RFr2a_ctrl[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	asdata => \Unit0|U2|dir_addr\(5),
	sload => VCC,
	ena => \Unit0|U0|RFr2a_ctrl[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U0|RFr2a_ctrl\(1));

-- Location: LCCOMB_X40_Y46_N12
\Unit0|U1|tmp_PC[6]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U1|tmp_PC[6]~29_combout\ = (\Unit0|U1|tmp_PC\(6) & (\Unit0|U1|tmp_PC[5]~28\ $ (GND))) # (!\Unit0|U1|tmp_PC\(6) & (!\Unit0|U1|tmp_PC[5]~28\ & VCC))
-- \Unit0|U1|tmp_PC[6]~30\ = CARRY((\Unit0|U1|tmp_PC\(6) & !\Unit0|U1|tmp_PC[5]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U1|tmp_PC\(6),
	datad => VCC,
	cin => \Unit0|U1|tmp_PC[5]~28\,
	combout => \Unit0|U1|tmp_PC[6]~29_combout\,
	cout => \Unit0|U1|tmp_PC[6]~30\);

-- Location: LCCOMB_X40_Y46_N14
\Unit0|U1|tmp_PC[7]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U1|tmp_PC[7]~31_combout\ = (\Unit0|U1|tmp_PC\(7) & (!\Unit0|U1|tmp_PC[6]~30\)) # (!\Unit0|U1|tmp_PC\(7) & ((\Unit0|U1|tmp_PC[6]~30\) # (GND)))
-- \Unit0|U1|tmp_PC[7]~32\ = CARRY((!\Unit0|U1|tmp_PC[6]~30\) # (!\Unit0|U1|tmp_PC\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Unit0|U1|tmp_PC\(7),
	datad => VCC,
	cin => \Unit0|U1|tmp_PC[6]~30\,
	combout => \Unit0|U1|tmp_PC[7]~31_combout\,
	cout => \Unit0|U1|tmp_PC[7]~32\);

-- Location: LCCOMB_X32_Y42_N22
\Unit0|U0|Selector45~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|Selector45~0_combout\ = (\Unit0|U0|state.S1a~q\) # ((!\Unit0|U0|state.S1~q\ & (\Unit0|U0|PCinc_ctrl~q\ & !\Unit0|U0|state.S1b~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|state.S1~q\,
	datab => \Unit0|U0|state.S1a~q\,
	datac => \Unit0|U0|PCinc_ctrl~q\,
	datad => \Unit0|U0|state.S1b~q\,
	combout => \Unit0|U0|Selector45~0_combout\);

-- Location: FF_X32_Y42_N23
\Unit0|U0|PCinc_ctrl\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit0|U0|Selector45~0_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U0|PCinc_ctrl~q\);

-- Location: LCCOMB_X39_Y44_N22
\Unit1|U1|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U1|Mux8~0_combout\ = (\Unit0|U0|RFs_ctrl\(0) & ((\Unit2|altsyncram_component|auto_generated|q_a\(7)) # ((\Unit0|U0|RFs_ctrl\(1))))) # (!\Unit0|U0|RFs_ctrl\(0) & (((\Unit0|U0|RFs_ctrl\(1) & \Unit0|U2|dir_addr\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit2|altsyncram_component|auto_generated|q_a\(7),
	datab => \Unit0|U0|RFs_ctrl\(0),
	datac => \Unit0|U0|RFs_ctrl\(1),
	datad => \Unit0|U2|dir_addr\(7),
	combout => \Unit1|U1|Mux8~0_combout\);

-- Location: LCCOMB_X40_Y44_N28
\Unit1|U1|Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U1|Mux8~1_combout\ = (\Unit1|U1|Mux8~0_combout\) # ((!\Unit0|U0|RFs_ctrl\(1) & (!\Unit0|U0|RFs_ctrl\(0) & \Unit1|U3|Add0~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFs_ctrl\(1),
	datab => \Unit0|U0|RFs_ctrl\(0),
	datac => \Unit1|U3|Add0~41_combout\,
	datad => \Unit1|U1|Mux8~0_combout\,
	combout => \Unit1|U1|Mux8~1_combout\);

-- Location: LCCOMB_X36_Y44_N10
\Unit1|U2|tmp_rf[9][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[9][7]~feeder_combout\ = \Unit1|U1|Mux8~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|U1|Mux8~1_combout\,
	combout => \Unit1|U2|tmp_rf[9][7]~feeder_combout\);

-- Location: LCCOMB_X35_Y41_N28
\Unit0|U0|Selector57~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|Selector57~0_combout\ = (\Unit0|U0|WideOr51~0_combout\ & (((!\Unit0|U0|state.LoadMemory~q\ & \Unit0|U0|RFwa_ctrl\(2))))) # (!\Unit0|U0|WideOr51~0_combout\ & (\Unit0|U2|IRout\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U2|IRout\(10),
	datab => \Unit0|U0|state.LoadMemory~q\,
	datac => \Unit0|U0|RFwa_ctrl\(2),
	datad => \Unit0|U0|WideOr51~0_combout\,
	combout => \Unit0|U0|Selector57~0_combout\);

-- Location: FF_X35_Y41_N29
\Unit0|U0|RFwa_ctrl[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit0|U0|Selector57~0_combout\,
	ena => \ALT_INV_cpu_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U0|RFwa_ctrl\(2));

-- Location: LCCOMB_X32_Y42_N28
\Unit0|U0|Selector48~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|Selector48~0_combout\ = (!\Unit0|U0|state.S1~q\ & (\Unit0|U0|RFwe_ctrl~q\ & (!\Unit0|U0|state.LoadMemory_b~q\ & !\Unit0|U0|state.S3b~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|state.S1~q\,
	datab => \Unit0|U0|RFwe_ctrl~q\,
	datac => \Unit0|U0|state.LoadMemory_b~q\,
	datad => \Unit0|U0|state.S3b~q\,
	combout => \Unit0|U0|Selector48~0_combout\);

-- Location: LCCOMB_X32_Y42_N30
\Unit0|U0|Selector48~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|Selector48~1_combout\ = ((\Unit0|U0|state.S3a~q\) # ((\Unit0|U0|state.LoadMemory_a~q\) # (\Unit0|U0|Selector48~0_combout\))) # (!\Unit0|U0|WideOr51~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|WideOr51~1_combout\,
	datab => \Unit0|U0|state.S3a~q\,
	datac => \Unit0|U0|state.LoadMemory_a~q\,
	datad => \Unit0|U0|Selector48~0_combout\,
	combout => \Unit0|U0|Selector48~1_combout\);

-- Location: FF_X32_Y42_N31
\Unit0|U0|RFwe_ctrl\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit0|U0|Selector48~1_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U0|RFwe_ctrl~q\);

-- Location: LCCOMB_X35_Y41_N24
\Unit0|U0|Selector59~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|Selector59~0_combout\ = (\Unit0|U0|WideOr51~0_combout\ & (((!\Unit0|U0|state.LoadMemory~q\ & \Unit0|U0|RFwa_ctrl\(0))))) # (!\Unit0|U0|WideOr51~0_combout\ & (\Unit0|U2|IRout\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U2|IRout\(8),
	datab => \Unit0|U0|state.LoadMemory~q\,
	datac => \Unit0|U0|RFwa_ctrl\(0),
	datad => \Unit0|U0|WideOr51~0_combout\,
	combout => \Unit0|U0|Selector59~0_combout\);

-- Location: FF_X35_Y41_N25
\Unit0|U0|RFwa_ctrl[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit0|U0|Selector59~0_combout\,
	ena => \ALT_INV_cpu_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U0|RFwa_ctrl\(0));

-- Location: LCCOMB_X35_Y41_N6
\Unit1|U2|Decoder0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Decoder0~2_combout\ = (!\Unit0|U0|RFwa_ctrl\(1) & (!\Unit0|U0|RFwa_ctrl\(2) & (\Unit0|U0|RFwe_ctrl~q\ & \Unit0|U0|RFwa_ctrl\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFwa_ctrl\(1),
	datab => \Unit0|U0|RFwa_ctrl\(2),
	datac => \Unit0|U0|RFwe_ctrl~q\,
	datad => \Unit0|U0|RFwa_ctrl\(0),
	combout => \Unit1|U2|Decoder0~2_combout\);

-- Location: LCCOMB_X35_Y41_N8
\Unit1|U2|Decoder0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Decoder0~3_combout\ = (\Unit0|U0|RFwa_ctrl\(3) & \Unit1|U2|Decoder0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Unit0|U0|RFwa_ctrl\(3),
	datad => \Unit1|U2|Decoder0~2_combout\,
	combout => \Unit1|U2|Decoder0~3_combout\);

-- Location: FF_X36_Y44_N11
\Unit1|U2|tmp_rf[9][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[9][7]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[9][7]~q\);

-- Location: LCCOMB_X35_Y41_N10
\Unit1|U2|Decoder0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Decoder0~17_combout\ = (!\Unit0|U0|RFwa_ctrl\(3) & \Unit1|U2|Decoder0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Unit0|U0|RFwa_ctrl\(3),
	datad => \Unit1|U2|Decoder0~2_combout\,
	combout => \Unit1|U2|Decoder0~17_combout\);

-- Location: FF_X41_Y44_N1
\Unit1|U2|tmp_rf[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	asdata => \Unit1|U1|Mux8~1_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|U2|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[1][7]~q\);

-- Location: LCCOMB_X43_Y43_N26
\Unit1|U2|Mux24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux24~0_combout\ = (\Unit0|U0|RFr2a_ctrl\(2) & (\Unit0|U0|RFr2a_ctrl\(3))) # (!\Unit0|U0|RFr2a_ctrl\(2) & ((\Unit0|U0|RFr2a_ctrl\(3) & (\Unit1|U2|tmp_rf[9][7]~q\)) # (!\Unit0|U0|RFr2a_ctrl\(3) & ((\Unit1|U2|tmp_rf[1][7]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr2a_ctrl\(2),
	datab => \Unit0|U0|RFr2a_ctrl\(3),
	datac => \Unit1|U2|tmp_rf[9][7]~q\,
	datad => \Unit1|U2|tmp_rf[1][7]~q\,
	combout => \Unit1|U2|Mux24~0_combout\);

-- Location: LCCOMB_X43_Y43_N18
\Unit1|U2|tmp_rf[13][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[13][7]~feeder_combout\ = \Unit1|U1|Mux8~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|U1|Mux8~1_combout\,
	combout => \Unit1|U2|tmp_rf[13][7]~feeder_combout\);

-- Location: LCCOMB_X35_Y41_N18
\Unit1|U2|Decoder0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Decoder0~8_combout\ = (!\Unit0|U0|RFwa_ctrl\(1) & (\Unit0|U0|RFwa_ctrl\(2) & (\Unit0|U0|RFwe_ctrl~q\ & \Unit0|U0|RFwa_ctrl\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFwa_ctrl\(1),
	datab => \Unit0|U0|RFwa_ctrl\(2),
	datac => \Unit0|U0|RFwe_ctrl~q\,
	datad => \Unit0|U0|RFwa_ctrl\(0),
	combout => \Unit1|U2|Decoder0~8_combout\);

-- Location: LCCOMB_X39_Y41_N18
\Unit1|U2|Decoder0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Decoder0~20_combout\ = (\Unit1|U2|Decoder0~8_combout\ & \Unit0|U0|RFwa_ctrl\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Unit1|U2|Decoder0~8_combout\,
	datad => \Unit0|U0|RFwa_ctrl\(3),
	combout => \Unit1|U2|Decoder0~20_combout\);

-- Location: FF_X43_Y43_N19
\Unit1|U2|tmp_rf[13][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[13][7]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[13][7]~q\);

-- Location: LCCOMB_X43_Y43_N20
\Unit1|U2|Mux24~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux24~1_combout\ = (\Unit1|U2|Mux24~0_combout\ & (((\Unit1|U2|tmp_rf[13][7]~q\) # (!\Unit0|U0|RFr2a_ctrl\(2))))) # (!\Unit1|U2|Mux24~0_combout\ & (\Unit1|U2|tmp_rf[5][7]~q\ & ((\Unit0|U0|RFr2a_ctrl\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[5][7]~q\,
	datab => \Unit1|U2|Mux24~0_combout\,
	datac => \Unit1|U2|tmp_rf[13][7]~q\,
	datad => \Unit0|U0|RFr2a_ctrl\(2),
	combout => \Unit1|U2|Mux24~1_combout\);

-- Location: LCCOMB_X35_Y41_N16
\Unit1|U2|Decoder0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Decoder0~14_combout\ = (\Unit0|U0|RFwa_ctrl\(1) & (\Unit0|U0|RFwa_ctrl\(2) & (\Unit0|U0|RFwe_ctrl~q\ & \Unit0|U0|RFwa_ctrl\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFwa_ctrl\(1),
	datab => \Unit0|U0|RFwa_ctrl\(2),
	datac => \Unit0|U0|RFwe_ctrl~q\,
	datad => \Unit0|U0|RFwa_ctrl\(0),
	combout => \Unit1|U2|Decoder0~14_combout\);

-- Location: LCCOMB_X35_Y41_N2
\Unit1|U2|Decoder0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Decoder0~23_combout\ = (\Unit0|U0|RFwa_ctrl\(3) & \Unit1|U2|Decoder0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Unit0|U0|RFwa_ctrl\(3),
	datad => \Unit1|U2|Decoder0~14_combout\,
	combout => \Unit1|U2|Decoder0~23_combout\);

-- Location: FF_X40_Y44_N29
\Unit1|U2|tmp_rf[15][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U1|Mux8~1_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[15][7]~q\);

-- Location: LCCOMB_X41_Y40_N26
\Unit1|U2|tmp_rf[3][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[3][7]~feeder_combout\ = \Unit1|U1|Mux8~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|U1|Mux8~1_combout\,
	combout => \Unit1|U2|tmp_rf[3][7]~feeder_combout\);

-- Location: LCCOMB_X35_Y41_N0
\Unit1|U2|Decoder0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Decoder0~6_combout\ = (\Unit0|U0|RFwa_ctrl\(1) & (!\Unit0|U0|RFwa_ctrl\(2) & (\Unit0|U0|RFwe_ctrl~q\ & \Unit0|U0|RFwa_ctrl\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFwa_ctrl\(1),
	datab => \Unit0|U0|RFwa_ctrl\(2),
	datac => \Unit0|U0|RFwe_ctrl~q\,
	datad => \Unit0|U0|RFwa_ctrl\(0),
	combout => \Unit1|U2|Decoder0~6_combout\);

-- Location: LCCOMB_X35_Y41_N4
\Unit1|U2|Decoder0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Decoder0~19_combout\ = (!\Unit0|U0|RFwa_ctrl\(3) & \Unit1|U2|Decoder0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Unit0|U0|RFwa_ctrl\(3),
	datad => \Unit1|U2|Decoder0~6_combout\,
	combout => \Unit1|U2|Decoder0~19_combout\);

-- Location: FF_X41_Y40_N27
\Unit1|U2|tmp_rf[3][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[3][7]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[3][7]~q\);

-- Location: FF_X39_Y44_N17
\Unit1|U2|tmp_rf[11][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	asdata => \Unit1|U1|Mux8~1_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|U2|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[11][7]~q\);

-- Location: LCCOMB_X39_Y44_N24
\Unit1|U2|Mux24~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux24~7_combout\ = (\Unit0|U0|RFr2a_ctrl\(2) & (((\Unit0|U0|RFr2a_ctrl\(3))))) # (!\Unit0|U0|RFr2a_ctrl\(2) & ((\Unit0|U0|RFr2a_ctrl\(3) & ((\Unit1|U2|tmp_rf[11][7]~q\))) # (!\Unit0|U0|RFr2a_ctrl\(3) & (\Unit1|U2|tmp_rf[3][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr2a_ctrl\(2),
	datab => \Unit1|U2|tmp_rf[3][7]~q\,
	datac => \Unit0|U0|RFr2a_ctrl\(3),
	datad => \Unit1|U2|tmp_rf[11][7]~q\,
	combout => \Unit1|U2|Mux24~7_combout\);

-- Location: LCCOMB_X38_Y44_N26
\Unit1|U2|Mux24~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux24~8_combout\ = (\Unit0|U0|RFr2a_ctrl\(2) & ((\Unit1|U2|Mux24~7_combout\ & ((\Unit1|U2|tmp_rf[15][7]~q\))) # (!\Unit1|U2|Mux24~7_combout\ & (\Unit1|U2|tmp_rf[7][7]~q\)))) # (!\Unit0|U0|RFr2a_ctrl\(2) & (((\Unit1|U2|Mux24~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[7][7]~q\,
	datab => \Unit0|U0|RFr2a_ctrl\(2),
	datac => \Unit1|U2|tmp_rf[15][7]~q\,
	datad => \Unit1|U2|Mux24~7_combout\,
	combout => \Unit1|U2|Mux24~8_combout\);

-- Location: LCCOMB_X39_Y41_N12
\Unit0|U0|Selector62~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|Selector62~0_combout\ = (\Unit0|U0|WideOr56~0_combout\ & (\Unit0|U0|WideOr19~0_combout\ & (\Unit0|U0|RFr1a_ctrl\(3)))) # (!\Unit0|U0|WideOr56~0_combout\ & ((\Unit0|U2|IRout\(11)) # ((\Unit0|U0|WideOr19~0_combout\ & \Unit0|U0|RFr1a_ctrl\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|WideOr56~0_combout\,
	datab => \Unit0|U0|WideOr19~0_combout\,
	datac => \Unit0|U0|RFr1a_ctrl\(3),
	datad => \Unit0|U2|IRout\(11),
	combout => \Unit0|U0|Selector62~0_combout\);

-- Location: FF_X39_Y41_N13
\Unit0|U0|RFr1a_ctrl[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit0|U0|Selector62~0_combout\,
	ena => \ALT_INV_cpu_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U0|RFr1a_ctrl\(3));

-- Location: LCCOMB_X32_Y41_N6
\Unit0|U0|WideOr56~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|WideOr56~0_combout\ = (!\Unit0|U0|state.S4~q\ & (\Unit0|U0|Selector50~0_combout\ & !\Unit0|U0|state.S9~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Unit0|U0|state.S4~q\,
	datac => \Unit0|U0|Selector50~0_combout\,
	datad => \Unit0|U0|state.S9~q\,
	combout => \Unit0|U0|WideOr56~0_combout\);

-- Location: LCCOMB_X39_Y41_N26
\Unit0|U0|Selector63~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|Selector63~0_combout\ = (\Unit0|U2|IRout\(10) & (((\Unit0|U0|WideOr19~0_combout\ & \Unit0|U0|RFr1a_ctrl\(2))) # (!\Unit0|U0|WideOr56~0_combout\))) # (!\Unit0|U2|IRout\(10) & (\Unit0|U0|WideOr19~0_combout\ & (\Unit0|U0|RFr1a_ctrl\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U2|IRout\(10),
	datab => \Unit0|U0|WideOr19~0_combout\,
	datac => \Unit0|U0|RFr1a_ctrl\(2),
	datad => \Unit0|U0|WideOr56~0_combout\,
	combout => \Unit0|U0|Selector63~0_combout\);

-- Location: FF_X39_Y41_N27
\Unit0|U0|RFr1a_ctrl[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit0|U0|Selector63~0_combout\,
	ena => \ALT_INV_cpu_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U0|RFr1a_ctrl\(2));

-- Location: LCCOMB_X36_Y42_N24
\Unit1|U1|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U1|Mux14~0_combout\ = (\Unit0|U0|RFs_ctrl\(1) & (((\Unit0|U0|RFs_ctrl\(0)) # (\Unit0|U2|dir_addr\(1))))) # (!\Unit0|U0|RFs_ctrl\(1) & (\Unit2|altsyncram_component|auto_generated|q_a\(1) & (\Unit0|U0|RFs_ctrl\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFs_ctrl\(1),
	datab => \Unit2|altsyncram_component|auto_generated|q_a\(1),
	datac => \Unit0|U0|RFs_ctrl\(0),
	datad => \Unit0|U2|dir_addr\(1),
	combout => \Unit1|U1|Mux14~0_combout\);

-- Location: LCCOMB_X36_Y42_N26
\Unit1|U1|Mux14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U1|Mux14~1_combout\ = (\Unit1|U1|Mux14~0_combout\) # ((!\Unit0|U0|RFs_ctrl\(1) & (!\Unit0|U0|RFs_ctrl\(0) & \Unit1|U3|Add0~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFs_ctrl\(1),
	datab => \Unit0|U0|RFs_ctrl\(0),
	datac => \Unit1|U3|Add0~11_combout\,
	datad => \Unit1|U1|Mux14~0_combout\,
	combout => \Unit1|U1|Mux14~1_combout\);

-- Location: LCCOMB_X36_Y40_N20
\Unit1|U2|tmp_rf[0][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[0][1]~feeder_combout\ = \Unit1|U1|Mux14~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|U1|Mux14~1_combout\,
	combout => \Unit1|U2|tmp_rf[0][1]~feeder_combout\);

-- Location: LCCOMB_X35_Y41_N14
\Unit1|U2|Decoder0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Decoder0~18_combout\ = (\Unit1|U2|Decoder0~4_combout\ & !\Unit0|U0|RFwa_ctrl\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|Decoder0~4_combout\,
	datad => \Unit0|U0|RFwa_ctrl\(3),
	combout => \Unit1|U2|Decoder0~18_combout\);

-- Location: FF_X36_Y40_N21
\Unit1|U2|tmp_rf[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[0][1]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[0][1]~q\);

-- Location: LCCOMB_X36_Y40_N2
\Unit1|U2|Mux14~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux14~4_combout\ = (\Unit0|U0|RFr1a_ctrl\(3) & ((\Unit1|U2|tmp_rf[8][1]~q\) # ((\Unit0|U0|RFr1a_ctrl\(2))))) # (!\Unit0|U0|RFr1a_ctrl\(3) & (((!\Unit0|U0|RFr1a_ctrl\(2) & \Unit1|U2|tmp_rf[0][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[8][1]~q\,
	datab => \Unit0|U0|RFr1a_ctrl\(3),
	datac => \Unit0|U0|RFr1a_ctrl\(2),
	datad => \Unit1|U2|tmp_rf[0][1]~q\,
	combout => \Unit1|U2|Mux14~4_combout\);

-- Location: LCCOMB_X35_Y43_N14
\Unit1|U2|tmp_rf[4][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[4][1]~feeder_combout\ = \Unit1|U1|Mux14~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|U1|Mux14~1_combout\,
	combout => \Unit1|U2|tmp_rf[4][1]~feeder_combout\);

-- Location: LCCOMB_X35_Y41_N22
\Unit1|U2|Decoder0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Decoder0~12_combout\ = (!\Unit0|U0|RFwa_ctrl\(1) & (\Unit0|U0|RFwa_ctrl\(2) & (\Unit0|U0|RFwe_ctrl~q\ & !\Unit0|U0|RFwa_ctrl\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFwa_ctrl\(1),
	datab => \Unit0|U0|RFwa_ctrl\(2),
	datac => \Unit0|U0|RFwe_ctrl~q\,
	datad => \Unit0|U0|RFwa_ctrl\(0),
	combout => \Unit1|U2|Decoder0~12_combout\);

-- Location: LCCOMB_X36_Y43_N26
\Unit1|U2|Decoder0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Decoder0~13_combout\ = (\Unit1|U2|Decoder0~12_combout\ & !\Unit0|U0|RFwa_ctrl\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Unit1|U2|Decoder0~12_combout\,
	datad => \Unit0|U0|RFwa_ctrl\(3),
	combout => \Unit1|U2|Decoder0~13_combout\);

-- Location: FF_X35_Y43_N15
\Unit1|U2|tmp_rf[4][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[4][1]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[4][1]~q\);

-- Location: LCCOMB_X36_Y40_N4
\Unit1|U2|Mux14~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux14~5_combout\ = (\Unit1|U2|Mux14~4_combout\ & ((\Unit1|U2|tmp_rf[12][1]~q\) # ((!\Unit0|U0|RFr1a_ctrl\(2))))) # (!\Unit1|U2|Mux14~4_combout\ & (((\Unit0|U0|RFr1a_ctrl\(2) & \Unit1|U2|tmp_rf[4][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[12][1]~q\,
	datab => \Unit1|U2|Mux14~4_combout\,
	datac => \Unit0|U0|RFr1a_ctrl\(2),
	datad => \Unit1|U2|tmp_rf[4][1]~q\,
	combout => \Unit1|U2|Mux14~5_combout\);

-- Location: LCCOMB_X39_Y41_N30
\Unit0|U0|Selector65~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|Selector65~0_combout\ = (\Unit0|U0|WideOr56~0_combout\ & (\Unit0|U0|WideOr19~0_combout\ & (\Unit0|U0|RFr1a_ctrl\(0)))) # (!\Unit0|U0|WideOr56~0_combout\ & ((\Unit0|U2|IRout\(8)) # ((\Unit0|U0|WideOr19~0_combout\ & \Unit0|U0|RFr1a_ctrl\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|WideOr56~0_combout\,
	datab => \Unit0|U0|WideOr19~0_combout\,
	datac => \Unit0|U0|RFr1a_ctrl\(0),
	datad => \Unit0|U2|IRout\(8),
	combout => \Unit0|U0|Selector65~0_combout\);

-- Location: FF_X39_Y41_N31
\Unit0|U0|RFr1a_ctrl[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit0|U0|Selector65~0_combout\,
	ena => \ALT_INV_cpu_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U0|RFr1a_ctrl\(0));

-- Location: LCCOMB_X35_Y43_N4
\Unit1|U2|tmp_rf[13][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[13][1]~feeder_combout\ = \Unit1|U1|Mux14~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|U1|Mux14~1_combout\,
	combout => \Unit1|U2|tmp_rf[13][1]~feeder_combout\);

-- Location: FF_X35_Y43_N5
\Unit1|U2|tmp_rf[13][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[13][1]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[13][1]~q\);

-- Location: LCCOMB_X36_Y40_N26
\Unit1|U2|tmp_rf[1][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[1][1]~feeder_combout\ = \Unit1|U1|Mux14~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|U1|Mux14~1_combout\,
	combout => \Unit1|U2|tmp_rf[1][1]~feeder_combout\);

-- Location: FF_X36_Y40_N27
\Unit1|U2|tmp_rf[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[1][1]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[1][1]~q\);

-- Location: LCCOMB_X36_Y45_N12
\Unit1|U2|tmp_rf[5][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[5][1]~feeder_combout\ = \Unit1|U1|Mux14~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|U1|Mux14~1_combout\,
	combout => \Unit1|U2|tmp_rf[5][1]~feeder_combout\);

-- Location: LCCOMB_X39_Y41_N6
\Unit1|U2|Decoder0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Decoder0~9_combout\ = (\Unit1|U2|Decoder0~8_combout\ & !\Unit0|U0|RFwa_ctrl\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Unit1|U2|Decoder0~8_combout\,
	datad => \Unit0|U0|RFwa_ctrl\(3),
	combout => \Unit1|U2|Decoder0~9_combout\);

-- Location: FF_X36_Y45_N13
\Unit1|U2|tmp_rf[5][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[5][1]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[5][1]~q\);

-- Location: LCCOMB_X35_Y44_N28
\Unit1|U2|Mux14~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux14~2_combout\ = (\Unit0|U0|RFr1a_ctrl\(2) & (((\Unit0|U0|RFr1a_ctrl\(3)) # (\Unit1|U2|tmp_rf[5][1]~q\)))) # (!\Unit0|U0|RFr1a_ctrl\(2) & (\Unit1|U2|tmp_rf[1][1]~q\ & (!\Unit0|U0|RFr1a_ctrl\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(2),
	datab => \Unit1|U2|tmp_rf[1][1]~q\,
	datac => \Unit0|U0|RFr1a_ctrl\(3),
	datad => \Unit1|U2|tmp_rf[5][1]~q\,
	combout => \Unit1|U2|Mux14~2_combout\);

-- Location: LCCOMB_X36_Y43_N20
\Unit1|U2|Mux14~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux14~3_combout\ = (\Unit1|U2|Mux14~2_combout\ & (((\Unit1|U2|tmp_rf[13][1]~q\) # (!\Unit0|U0|RFr1a_ctrl\(3))))) # (!\Unit1|U2|Mux14~2_combout\ & (\Unit1|U2|tmp_rf[9][1]~q\ & ((\Unit0|U0|RFr1a_ctrl\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[9][1]~q\,
	datab => \Unit1|U2|tmp_rf[13][1]~q\,
	datac => \Unit1|U2|Mux14~2_combout\,
	datad => \Unit0|U0|RFr1a_ctrl\(3),
	combout => \Unit1|U2|Mux14~3_combout\);

-- Location: LCCOMB_X36_Y40_N10
\Unit1|U2|Mux14~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux14~6_combout\ = (\Unit0|U0|RFr1a_ctrl\(1) & (((\Unit0|U0|RFr1a_ctrl\(0))))) # (!\Unit0|U0|RFr1a_ctrl\(1) & ((\Unit0|U0|RFr1a_ctrl\(0) & ((\Unit1|U2|Mux14~3_combout\))) # (!\Unit0|U0|RFr1a_ctrl\(0) & (\Unit1|U2|Mux14~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(1),
	datab => \Unit1|U2|Mux14~5_combout\,
	datac => \Unit0|U0|RFr1a_ctrl\(0),
	datad => \Unit1|U2|Mux14~3_combout\,
	combout => \Unit1|U2|Mux14~6_combout\);

-- Location: LCCOMB_X35_Y41_N20
\Unit1|U2|Decoder0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Decoder0~10_combout\ = (\Unit0|U0|RFwa_ctrl\(1) & (\Unit0|U0|RFwa_ctrl\(2) & (\Unit0|U0|RFwe_ctrl~q\ & !\Unit0|U0|RFwa_ctrl\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFwa_ctrl\(1),
	datab => \Unit0|U0|RFwa_ctrl\(2),
	datac => \Unit0|U0|RFwe_ctrl~q\,
	datad => \Unit0|U0|RFwa_ctrl\(0),
	combout => \Unit1|U2|Decoder0~10_combout\);

-- Location: LCCOMB_X43_Y44_N2
\Unit1|U2|Decoder0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Decoder0~11_combout\ = (!\Unit0|U0|RFwa_ctrl\(3) & \Unit1|U2|Decoder0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Unit0|U0|RFwa_ctrl\(3),
	datad => \Unit1|U2|Decoder0~10_combout\,
	combout => \Unit1|U2|Decoder0~11_combout\);

-- Location: FF_X36_Y42_N27
\Unit1|U2|tmp_rf[6][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U1|Mux14~1_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[6][1]~q\);

-- Location: LCCOMB_X35_Y40_N24
\Unit1|U2|tmp_rf[10][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[10][1]~feeder_combout\ = \Unit1|U1|Mux14~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|U1|Mux14~1_combout\,
	combout => \Unit1|U2|tmp_rf[10][1]~feeder_combout\);

-- Location: LCCOMB_X35_Y41_N12
\Unit1|U2|Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Decoder0~0_combout\ = (\Unit0|U0|RFwa_ctrl\(1) & (!\Unit0|U0|RFwa_ctrl\(2) & (\Unit0|U0|RFwe_ctrl~q\ & !\Unit0|U0|RFwa_ctrl\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFwa_ctrl\(1),
	datab => \Unit0|U0|RFwa_ctrl\(2),
	datac => \Unit0|U0|RFwe_ctrl~q\,
	datad => \Unit0|U0|RFwa_ctrl\(0),
	combout => \Unit1|U2|Decoder0~0_combout\);

-- Location: LCCOMB_X39_Y41_N28
\Unit1|U2|Decoder0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Decoder0~1_combout\ = (\Unit1|U2|Decoder0~0_combout\ & \Unit0|U0|RFwa_ctrl\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Unit1|U2|Decoder0~0_combout\,
	datad => \Unit0|U0|RFwa_ctrl\(3),
	combout => \Unit1|U2|Decoder0~1_combout\);

-- Location: FF_X35_Y40_N25
\Unit1|U2|tmp_rf[10][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[10][1]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[10][1]~q\);

-- Location: LCCOMB_X36_Y40_N28
\Unit1|U2|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux14~0_combout\ = (\Unit0|U0|RFr1a_ctrl\(3) & (((\Unit0|U0|RFr1a_ctrl\(2)) # (\Unit1|U2|tmp_rf[10][1]~q\)))) # (!\Unit0|U0|RFr1a_ctrl\(3) & (\Unit1|U2|tmp_rf[2][1]~q\ & (!\Unit0|U0|RFr1a_ctrl\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[2][1]~q\,
	datab => \Unit0|U0|RFr1a_ctrl\(3),
	datac => \Unit0|U0|RFr1a_ctrl\(2),
	datad => \Unit1|U2|tmp_rf[10][1]~q\,
	combout => \Unit1|U2|Mux14~0_combout\);

-- Location: LCCOMB_X35_Y40_N20
\Unit1|U2|Mux14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux14~1_combout\ = (\Unit0|U0|RFr1a_ctrl\(2) & ((\Unit1|U2|Mux14~0_combout\ & (\Unit1|U2|tmp_rf[14][1]~q\)) # (!\Unit1|U2|Mux14~0_combout\ & ((\Unit1|U2|tmp_rf[6][1]~q\))))) # (!\Unit0|U0|RFr1a_ctrl\(2) & (((\Unit1|U2|Mux14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[14][1]~q\,
	datab => \Unit1|U2|tmp_rf[6][1]~q\,
	datac => \Unit0|U0|RFr1a_ctrl\(2),
	datad => \Unit1|U2|Mux14~0_combout\,
	combout => \Unit1|U2|Mux14~1_combout\);

-- Location: LCCOMB_X38_Y40_N10
\Unit1|U2|Mux14~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux14~9_combout\ = (\Unit0|U0|RFr1a_ctrl\(1) & ((\Unit1|U2|Mux14~6_combout\ & (\Unit1|U2|Mux14~8_combout\)) # (!\Unit1|U2|Mux14~6_combout\ & ((\Unit1|U2|Mux14~1_combout\))))) # (!\Unit0|U0|RFr1a_ctrl\(1) & (((\Unit1|U2|Mux14~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|Mux14~8_combout\,
	datab => \Unit0|U0|RFr1a_ctrl\(1),
	datac => \Unit1|U2|Mux14~6_combout\,
	datad => \Unit1|U2|Mux14~1_combout\,
	combout => \Unit1|U2|Mux14~9_combout\);

-- Location: LCCOMB_X32_Y42_N8
\Unit0|U0|Selector50~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|Selector50~1_combout\ = (!\Unit0|U0|state.S7a~q\ & !\Unit0|U0|state.S8a~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Unit0|U0|state.S7a~q\,
	datad => \Unit0|U0|state.S8a~q\,
	combout => \Unit0|U0|Selector50~1_combout\);

-- Location: LCCOMB_X32_Y40_N26
\Unit0|U0|Selector49~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|Selector49~0_combout\ = ((!\Unit0|U0|state.S1~q\ & (\Unit0|U0|Selector50~1_combout\ & \Unit0|U0|RFr1e_ctrl~q\))) # (!\Unit0|U0|WideOr19~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|state.S1~q\,
	datab => \Unit0|U0|Selector50~1_combout\,
	datac => \Unit0|U0|RFr1e_ctrl~q\,
	datad => \Unit0|U0|WideOr19~0_combout\,
	combout => \Unit0|U0|Selector49~0_combout\);

-- Location: FF_X32_Y40_N27
\Unit0|U0|RFr1e_ctrl\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit0|U0|Selector49~0_combout\,
	ena => \ALT_INV_cpu_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U0|RFr1e_ctrl~q\);

-- Location: FF_X38_Y40_N11
\Unit1|U2|RFr1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|Mux14~9_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit0|U0|RFr1e_ctrl~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|RFr1\(1));

-- Location: LCCOMB_X35_Y45_N24
\Unit1|U2|tmp_rf[10][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[10][0]~feeder_combout\ = \Unit1|U1|Mux15~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|U1|Mux15~1_combout\,
	combout => \Unit1|U2|tmp_rf[10][0]~feeder_combout\);

-- Location: FF_X35_Y45_N25
\Unit1|U2|tmp_rf[10][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[10][0]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[10][0]~q\);

-- Location: LCCOMB_X39_Y45_N24
\Unit1|U2|tmp_rf[8][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[8][0]~feeder_combout\ = \Unit1|U1|Mux15~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Unit1|U1|Mux15~1_combout\,
	combout => \Unit1|U2|tmp_rf[8][0]~feeder_combout\);

-- Location: LCCOMB_X35_Y41_N30
\Unit1|U2|Decoder0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Decoder0~4_combout\ = (!\Unit0|U0|RFwa_ctrl\(1) & (!\Unit0|U0|RFwa_ctrl\(2) & (\Unit0|U0|RFwe_ctrl~q\ & !\Unit0|U0|RFwa_ctrl\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFwa_ctrl\(1),
	datab => \Unit0|U0|RFwa_ctrl\(2),
	datac => \Unit0|U0|RFwe_ctrl~q\,
	datad => \Unit0|U0|RFwa_ctrl\(0),
	combout => \Unit1|U2|Decoder0~4_combout\);

-- Location: LCCOMB_X39_Y41_N4
\Unit1|U2|Decoder0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Decoder0~5_combout\ = (\Unit1|U2|Decoder0~4_combout\ & \Unit0|U0|RFwa_ctrl\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Unit1|U2|Decoder0~4_combout\,
	datad => \Unit0|U0|RFwa_ctrl\(3),
	combout => \Unit1|U2|Decoder0~5_combout\);

-- Location: FF_X39_Y45_N25
\Unit1|U2|tmp_rf[8][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[8][0]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[8][0]~q\);

-- Location: LCCOMB_X38_Y45_N10
\Unit1|U2|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux15~0_combout\ = (\Unit0|U0|RFr1a_ctrl\(1) & (((\Unit0|U0|RFr1a_ctrl\(0))))) # (!\Unit0|U0|RFr1a_ctrl\(1) & ((\Unit0|U0|RFr1a_ctrl\(0) & (\Unit1|U2|tmp_rf[9][0]~q\)) # (!\Unit0|U0|RFr1a_ctrl\(0) & ((\Unit1|U2|tmp_rf[8][0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[9][0]~q\,
	datab => \Unit1|U2|tmp_rf[8][0]~q\,
	datac => \Unit0|U0|RFr1a_ctrl\(1),
	datad => \Unit0|U0|RFr1a_ctrl\(0),
	combout => \Unit1|U2|Mux15~0_combout\);

-- Location: LCCOMB_X38_Y45_N2
\Unit1|U2|Mux15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux15~1_combout\ = (\Unit0|U0|RFr1a_ctrl\(1) & ((\Unit1|U2|Mux15~0_combout\ & (\Unit1|U2|tmp_rf[11][0]~q\)) # (!\Unit1|U2|Mux15~0_combout\ & ((\Unit1|U2|tmp_rf[10][0]~q\))))) # (!\Unit0|U0|RFr1a_ctrl\(1) & (((\Unit1|U2|Mux15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(1),
	datab => \Unit1|U2|tmp_rf[11][0]~q\,
	datac => \Unit1|U2|tmp_rf[10][0]~q\,
	datad => \Unit1|U2|Mux15~0_combout\,
	combout => \Unit1|U2|Mux15~1_combout\);

-- Location: LCCOMB_X36_Y45_N4
\Unit1|U2|tmp_rf[5][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[5][0]~feeder_combout\ = \Unit1|U1|Mux15~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|U1|Mux15~1_combout\,
	combout => \Unit1|U2|tmp_rf[5][0]~feeder_combout\);

-- Location: FF_X36_Y45_N5
\Unit1|U2|tmp_rf[5][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[5][0]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[5][0]~q\);

-- Location: LCCOMB_X36_Y44_N4
\Unit1|U2|tmp_rf[4][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[4][0]~feeder_combout\ = \Unit1|U1|Mux15~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|U1|Mux15~1_combout\,
	combout => \Unit1|U2|tmp_rf[4][0]~feeder_combout\);

-- Location: FF_X36_Y44_N5
\Unit1|U2|tmp_rf[4][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[4][0]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[4][0]~q\);

-- Location: LCCOMB_X36_Y44_N2
\Unit1|U2|Mux15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux15~2_combout\ = (\Unit0|U0|RFr1a_ctrl\(1) & ((\Unit1|U2|tmp_rf[6][0]~q\) # ((\Unit0|U0|RFr1a_ctrl\(0))))) # (!\Unit0|U0|RFr1a_ctrl\(1) & (((\Unit1|U2|tmp_rf[4][0]~q\ & !\Unit0|U0|RFr1a_ctrl\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[6][0]~q\,
	datab => \Unit0|U0|RFr1a_ctrl\(1),
	datac => \Unit1|U2|tmp_rf[4][0]~q\,
	datad => \Unit0|U0|RFr1a_ctrl\(0),
	combout => \Unit1|U2|Mux15~2_combout\);

-- Location: LCCOMB_X36_Y44_N28
\Unit1|U2|Mux15~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux15~3_combout\ = (\Unit0|U0|RFr1a_ctrl\(0) & ((\Unit1|U2|Mux15~2_combout\ & (\Unit1|U2|tmp_rf[7][0]~q\)) # (!\Unit1|U2|Mux15~2_combout\ & ((\Unit1|U2|tmp_rf[5][0]~q\))))) # (!\Unit0|U0|RFr1a_ctrl\(0) & (((\Unit1|U2|Mux15~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[7][0]~q\,
	datab => \Unit0|U0|RFr1a_ctrl\(0),
	datac => \Unit1|U2|tmp_rf[5][0]~q\,
	datad => \Unit1|U2|Mux15~2_combout\,
	combout => \Unit1|U2|Mux15~3_combout\);

-- Location: LCCOMB_X40_Y45_N16
\Unit1|U2|tmp_rf[2][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[2][0]~feeder_combout\ = \Unit1|U1|Mux15~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Unit1|U1|Mux15~1_combout\,
	combout => \Unit1|U2|tmp_rf[2][0]~feeder_combout\);

-- Location: LCCOMB_X39_Y41_N8
\Unit1|U2|Decoder0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Decoder0~16_combout\ = (\Unit1|U2|Decoder0~0_combout\ & !\Unit0|U0|RFwa_ctrl\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Unit1|U2|Decoder0~0_combout\,
	datad => \Unit0|U0|RFwa_ctrl\(3),
	combout => \Unit1|U2|Decoder0~16_combout\);

-- Location: FF_X40_Y45_N17
\Unit1|U2|tmp_rf[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[2][0]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[2][0]~q\);

-- Location: LCCOMB_X41_Y45_N2
\Unit1|U2|tmp_rf[0][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[0][0]~feeder_combout\ = \Unit1|U1|Mux15~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Unit1|U1|Mux15~1_combout\,
	combout => \Unit1|U2|tmp_rf[0][0]~feeder_combout\);

-- Location: FF_X41_Y45_N3
\Unit1|U2|tmp_rf[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[0][0]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[0][0]~q\);

-- Location: FF_X41_Y45_N13
\Unit1|U2|tmp_rf[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	asdata => \Unit1|U1|Mux15~1_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|U2|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[1][0]~q\);

-- Location: LCCOMB_X41_Y45_N12
\Unit1|U2|Mux15~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux15~4_combout\ = (\Unit0|U0|RFr1a_ctrl\(1) & (((\Unit0|U0|RFr1a_ctrl\(0))))) # (!\Unit0|U0|RFr1a_ctrl\(1) & ((\Unit0|U0|RFr1a_ctrl\(0) & ((\Unit1|U2|tmp_rf[1][0]~q\))) # (!\Unit0|U0|RFr1a_ctrl\(0) & (\Unit1|U2|tmp_rf[0][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(1),
	datab => \Unit1|U2|tmp_rf[0][0]~q\,
	datac => \Unit1|U2|tmp_rf[1][0]~q\,
	datad => \Unit0|U0|RFr1a_ctrl\(0),
	combout => \Unit1|U2|Mux15~4_combout\);

-- Location: LCCOMB_X41_Y45_N20
\Unit1|U2|Mux15~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux15~5_combout\ = (\Unit0|U0|RFr1a_ctrl\(1) & ((\Unit1|U2|Mux15~4_combout\ & (\Unit1|U2|tmp_rf[3][0]~q\)) # (!\Unit1|U2|Mux15~4_combout\ & ((\Unit1|U2|tmp_rf[2][0]~q\))))) # (!\Unit0|U0|RFr1a_ctrl\(1) & (((\Unit1|U2|Mux15~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[3][0]~q\,
	datab => \Unit0|U0|RFr1a_ctrl\(1),
	datac => \Unit1|U2|tmp_rf[2][0]~q\,
	datad => \Unit1|U2|Mux15~4_combout\,
	combout => \Unit1|U2|Mux15~5_combout\);

-- Location: LCCOMB_X40_Y44_N2
\Unit1|U2|Mux15~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux15~6_combout\ = (\Unit0|U0|RFr1a_ctrl\(2) & ((\Unit0|U0|RFr1a_ctrl\(3)) # ((\Unit1|U2|Mux15~3_combout\)))) # (!\Unit0|U0|RFr1a_ctrl\(2) & (!\Unit0|U0|RFr1a_ctrl\(3) & ((\Unit1|U2|Mux15~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(2),
	datab => \Unit0|U0|RFr1a_ctrl\(3),
	datac => \Unit1|U2|Mux15~3_combout\,
	datad => \Unit1|U2|Mux15~5_combout\,
	combout => \Unit1|U2|Mux15~6_combout\);

-- Location: LCCOMB_X43_Y44_N30
\Unit1|U2|Decoder0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Decoder0~21_combout\ = (\Unit0|U0|RFwa_ctrl\(3) & \Unit1|U2|Decoder0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Unit0|U0|RFwa_ctrl\(3),
	datad => \Unit1|U2|Decoder0~10_combout\,
	combout => \Unit1|U2|Decoder0~21_combout\);

-- Location: FF_X41_Y42_N9
\Unit1|U2|tmp_rf[14][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	asdata => \Unit1|U1|Mux15~1_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|U2|Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[14][0]~q\);

-- Location: LCCOMB_X41_Y42_N18
\Unit1|U2|tmp_rf[12][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[12][0]~feeder_combout\ = \Unit1|U1|Mux15~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Unit1|U1|Mux15~1_combout\,
	combout => \Unit1|U2|tmp_rf[12][0]~feeder_combout\);

-- Location: LCCOMB_X36_Y43_N8
\Unit1|U2|Decoder0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Decoder0~22_combout\ = (\Unit1|U2|Decoder0~12_combout\ & \Unit0|U0|RFwa_ctrl\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Unit1|U2|Decoder0~12_combout\,
	datad => \Unit0|U0|RFwa_ctrl\(3),
	combout => \Unit1|U2|Decoder0~22_combout\);

-- Location: FF_X41_Y42_N19
\Unit1|U2|tmp_rf[12][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[12][0]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[12][0]~q\);

-- Location: LCCOMB_X41_Y42_N8
\Unit1|U2|Mux15~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux15~7_combout\ = (\Unit0|U0|RFr1a_ctrl\(1) & ((\Unit0|U0|RFr1a_ctrl\(0)) # ((\Unit1|U2|tmp_rf[14][0]~q\)))) # (!\Unit0|U0|RFr1a_ctrl\(1) & (!\Unit0|U0|RFr1a_ctrl\(0) & ((\Unit1|U2|tmp_rf[12][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(1),
	datab => \Unit0|U0|RFr1a_ctrl\(0),
	datac => \Unit1|U2|tmp_rf[14][0]~q\,
	datad => \Unit1|U2|tmp_rf[12][0]~q\,
	combout => \Unit1|U2|Mux15~7_combout\);

-- Location: LCCOMB_X42_Y45_N20
\Unit1|U2|tmp_rf[15][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[15][0]~feeder_combout\ = \Unit1|U1|Mux15~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|U1|Mux15~1_combout\,
	combout => \Unit1|U2|tmp_rf[15][0]~feeder_combout\);

-- Location: FF_X42_Y45_N21
\Unit1|U2|tmp_rf[15][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[15][0]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[15][0]~q\);

-- Location: LCCOMB_X41_Y40_N16
\Unit1|U2|Mux15~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux15~8_combout\ = (\Unit1|U2|Mux15~7_combout\ & (((\Unit1|U2|tmp_rf[15][0]~q\) # (!\Unit0|U0|RFr1a_ctrl\(0))))) # (!\Unit1|U2|Mux15~7_combout\ & (\Unit1|U2|tmp_rf[13][0]~q\ & (\Unit0|U0|RFr1a_ctrl\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[13][0]~q\,
	datab => \Unit1|U2|Mux15~7_combout\,
	datac => \Unit0|U0|RFr1a_ctrl\(0),
	datad => \Unit1|U2|tmp_rf[15][0]~q\,
	combout => \Unit1|U2|Mux15~8_combout\);

-- Location: LCCOMB_X38_Y40_N20
\Unit1|U2|Mux15~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux15~9_combout\ = (\Unit0|U0|RFr1a_ctrl\(3) & ((\Unit1|U2|Mux15~6_combout\ & ((\Unit1|U2|Mux15~8_combout\))) # (!\Unit1|U2|Mux15~6_combout\ & (\Unit1|U2|Mux15~1_combout\)))) # (!\Unit0|U0|RFr1a_ctrl\(3) & (((\Unit1|U2|Mux15~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(3),
	datab => \Unit1|U2|Mux15~1_combout\,
	datac => \Unit1|U2|Mux15~6_combout\,
	datad => \Unit1|U2|Mux15~8_combout\,
	combout => \Unit1|U2|Mux15~9_combout\);

-- Location: FF_X38_Y40_N21
\Unit1|U2|RFr1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|Mux15~9_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit0|U0|RFr1e_ctrl~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|RFr1\(0));

-- Location: LCCOMB_X39_Y43_N16
\Unit1|U3|Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|Add0~3_cout\ = CARRY(\Unit0|U0|ALUs_ctrl\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Unit0|U0|ALUs_ctrl\(0),
	datad => VCC,
	cout => \Unit1|U3|Add0~3_cout\);

-- Location: LCCOMB_X39_Y43_N18
\Unit1|U3|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|Add0~4_combout\ = (\Unit1|U3|Add0~1_combout\ & ((\Unit1|U2|RFr1\(0) & (\Unit1|U3|Add0~3_cout\ & VCC)) # (!\Unit1|U2|RFr1\(0) & (!\Unit1|U3|Add0~3_cout\)))) # (!\Unit1|U3|Add0~1_combout\ & ((\Unit1|U2|RFr1\(0) & (!\Unit1|U3|Add0~3_cout\)) # 
-- (!\Unit1|U2|RFr1\(0) & ((\Unit1|U3|Add0~3_cout\) # (GND)))))
-- \Unit1|U3|Add0~5\ = CARRY((\Unit1|U3|Add0~1_combout\ & (!\Unit1|U2|RFr1\(0) & !\Unit1|U3|Add0~3_cout\)) # (!\Unit1|U3|Add0~1_combout\ & ((!\Unit1|U3|Add0~3_cout\) # (!\Unit1|U2|RFr1\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U3|Add0~1_combout\,
	datab => \Unit1|U2|RFr1\(0),
	datad => VCC,
	cin => \Unit1|U3|Add0~3_cout\,
	combout => \Unit1|U3|Add0~4_combout\,
	cout => \Unit1|U3|Add0~5\);

-- Location: LCCOMB_X39_Y43_N20
\Unit1|U3|Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|Add0~9_combout\ = ((\Unit1|U3|Add0~8_combout\ $ (\Unit1|U2|RFr1\(1) $ (!\Unit1|U3|Add0~5\)))) # (GND)
-- \Unit1|U3|Add0~10\ = CARRY((\Unit1|U3|Add0~8_combout\ & ((\Unit1|U2|RFr1\(1)) # (!\Unit1|U3|Add0~5\))) # (!\Unit1|U3|Add0~8_combout\ & (\Unit1|U2|RFr1\(1) & !\Unit1|U3|Add0~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U3|Add0~8_combout\,
	datab => \Unit1|U2|RFr1\(1),
	datad => VCC,
	cin => \Unit1|U3|Add0~5\,
	combout => \Unit1|U3|Add0~9_combout\,
	cout => \Unit1|U3|Add0~10\);

-- Location: LCCOMB_X38_Y43_N20
\Unit1|U3|Add0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|Add0~7_combout\ = (!\Unit0|U0|ALUs_ctrl\(1) & ((\Unit0|U0|ALUs_ctrl\(0) & (\Unit1|U2|RFr2\(1))) # (!\Unit0|U0|ALUs_ctrl\(0) & ((\Unit1|U2|RFr1\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|RFr2\(1),
	datab => \Unit1|U2|RFr1\(1),
	datac => \Unit0|U0|ALUs_ctrl\(1),
	datad => \Unit0|U0|ALUs_ctrl\(0),
	combout => \Unit1|U3|Add0~7_combout\);

-- Location: LCCOMB_X38_Y43_N30
\Unit1|U3|Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|Add0~11_combout\ = (\Unit1|U3|Add0~7_combout\) # ((\Unit0|U0|ALUs_ctrl\(1) & \Unit1|U3|Add0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Unit0|U0|ALUs_ctrl\(1),
	datac => \Unit1|U3|Add0~9_combout\,
	datad => \Unit1|U3|Add0~7_combout\,
	combout => \Unit1|U3|Add0~11_combout\);

-- Location: LCCOMB_X38_Y43_N24
\Unit1|U3|Add0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|Add0~17_combout\ = (!\Unit0|U0|ALUs_ctrl\(1) & ((\Unit0|U0|ALUs_ctrl\(0) & (\Unit1|U2|RFr2\(3))) # (!\Unit0|U0|ALUs_ctrl\(0) & ((\Unit1|U2|RFr1\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|RFr2\(3),
	datab => \Unit1|U2|RFr1\(3),
	datac => \Unit0|U0|ALUs_ctrl\(1),
	datad => \Unit0|U0|ALUs_ctrl\(0),
	combout => \Unit1|U3|Add0~17_combout\);

-- Location: LCCOMB_X39_Y43_N22
\Unit1|U3|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|Add0~14_combout\ = (\Unit1|U3|Add0~13_combout\ & ((\Unit1|U2|RFr1\(2) & (\Unit1|U3|Add0~10\ & VCC)) # (!\Unit1|U2|RFr1\(2) & (!\Unit1|U3|Add0~10\)))) # (!\Unit1|U3|Add0~13_combout\ & ((\Unit1|U2|RFr1\(2) & (!\Unit1|U3|Add0~10\)) # 
-- (!\Unit1|U2|RFr1\(2) & ((\Unit1|U3|Add0~10\) # (GND)))))
-- \Unit1|U3|Add0~15\ = CARRY((\Unit1|U3|Add0~13_combout\ & (!\Unit1|U2|RFr1\(2) & !\Unit1|U3|Add0~10\)) # (!\Unit1|U3|Add0~13_combout\ & ((!\Unit1|U3|Add0~10\) # (!\Unit1|U2|RFr1\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U3|Add0~13_combout\,
	datab => \Unit1|U2|RFr1\(2),
	datad => VCC,
	cin => \Unit1|U3|Add0~10\,
	combout => \Unit1|U3|Add0~14_combout\,
	cout => \Unit1|U3|Add0~15\);

-- Location: LCCOMB_X39_Y43_N24
\Unit1|U3|Add0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|Add0~19_combout\ = ((\Unit1|U3|Add0~18_combout\ $ (\Unit1|U2|RFr1\(3) $ (!\Unit1|U3|Add0~15\)))) # (GND)
-- \Unit1|U3|Add0~20\ = CARRY((\Unit1|U3|Add0~18_combout\ & ((\Unit1|U2|RFr1\(3)) # (!\Unit1|U3|Add0~15\))) # (!\Unit1|U3|Add0~18_combout\ & (\Unit1|U2|RFr1\(3) & !\Unit1|U3|Add0~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U3|Add0~18_combout\,
	datab => \Unit1|U2|RFr1\(3),
	datad => VCC,
	cin => \Unit1|U3|Add0~15\,
	combout => \Unit1|U3|Add0~19_combout\,
	cout => \Unit1|U3|Add0~20\);

-- Location: LCCOMB_X39_Y43_N14
\Unit1|U3|Add0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|Add0~21_combout\ = (\Unit1|U3|Add0~17_combout\) # ((\Unit0|U0|ALUs_ctrl\(1) & \Unit1|U3|Add0~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|ALUs_ctrl\(1),
	datab => \Unit1|U3|Add0~17_combout\,
	datad => \Unit1|U3|Add0~19_combout\,
	combout => \Unit1|U3|Add0~21_combout\);

-- Location: LCCOMB_X39_Y43_N26
\Unit1|U3|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|Add0~24_combout\ = (\Unit1|U2|RFr1\(4) & ((\Unit1|U3|Add0~23_combout\ & (\Unit1|U3|Add0~20\ & VCC)) # (!\Unit1|U3|Add0~23_combout\ & (!\Unit1|U3|Add0~20\)))) # (!\Unit1|U2|RFr1\(4) & ((\Unit1|U3|Add0~23_combout\ & (!\Unit1|U3|Add0~20\)) # 
-- (!\Unit1|U3|Add0~23_combout\ & ((\Unit1|U3|Add0~20\) # (GND)))))
-- \Unit1|U3|Add0~25\ = CARRY((\Unit1|U2|RFr1\(4) & (!\Unit1|U3|Add0~23_combout\ & !\Unit1|U3|Add0~20\)) # (!\Unit1|U2|RFr1\(4) & ((!\Unit1|U3|Add0~20\) # (!\Unit1|U3|Add0~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|RFr1\(4),
	datab => \Unit1|U3|Add0~23_combout\,
	datad => VCC,
	cin => \Unit1|U3|Add0~20\,
	combout => \Unit1|U3|Add0~24_combout\,
	cout => \Unit1|U3|Add0~25\);

-- Location: LCCOMB_X38_Y43_N2
\Unit1|U3|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|Add0~22_combout\ = (!\Unit0|U0|ALUs_ctrl\(1) & ((\Unit0|U0|ALUs_ctrl\(0) & ((\Unit1|U2|RFr2\(4)))) # (!\Unit0|U0|ALUs_ctrl\(0) & (\Unit1|U2|RFr1\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|RFr1\(4),
	datab => \Unit1|U2|RFr2\(4),
	datac => \Unit0|U0|ALUs_ctrl\(1),
	datad => \Unit0|U0|ALUs_ctrl\(0),
	combout => \Unit1|U3|Add0~22_combout\);

-- Location: LCCOMB_X39_Y43_N2
\Unit1|U3|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|Add0~26_combout\ = (\Unit1|U3|Add0~22_combout\) # ((\Unit0|U0|ALUs_ctrl\(1) & \Unit1|U3|Add0~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|ALUs_ctrl\(1),
	datac => \Unit1|U3|Add0~24_combout\,
	datad => \Unit1|U3|Add0~22_combout\,
	combout => \Unit1|U3|Add0~26_combout\);

-- Location: LCCOMB_X41_Y42_N20
\Unit1|U1|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U1|Mux7~0_combout\ = (\Unit0|U0|RFs_ctrl\(0) & ((\Unit2|altsyncram_component|auto_generated|q_a\(8)) # ((\Unit0|U0|RFs_ctrl\(1))))) # (!\Unit0|U0|RFs_ctrl\(0) & (((\Unit1|U3|Add0~46_combout\ & !\Unit0|U0|RFs_ctrl\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFs_ctrl\(0),
	datab => \Unit2|altsyncram_component|auto_generated|q_a\(8),
	datac => \Unit1|U3|Add0~46_combout\,
	datad => \Unit0|U0|RFs_ctrl\(1),
	combout => \Unit1|U1|Mux7~0_combout\);

-- Location: LCCOMB_X42_Y45_N0
\Unit1|U2|tmp_rf[13][8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[13][8]~feeder_combout\ = \Unit1|U1|Mux7~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Unit1|U1|Mux7~0_combout\,
	combout => \Unit1|U2|tmp_rf[13][8]~feeder_combout\);

-- Location: FF_X42_Y45_N1
\Unit1|U2|tmp_rf[13][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[13][8]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[13][8]~q\);

-- Location: FF_X41_Y42_N21
\Unit1|U2|tmp_rf[14][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U1|Mux7~0_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[14][8]~q\);

-- Location: LCCOMB_X41_Y42_N14
\Unit1|U2|tmp_rf[12][8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[12][8]~feeder_combout\ = \Unit1|U1|Mux7~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|U1|Mux7~0_combout\,
	combout => \Unit1|U2|tmp_rf[12][8]~feeder_combout\);

-- Location: FF_X41_Y42_N15
\Unit1|U2|tmp_rf[12][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[12][8]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[12][8]~q\);

-- Location: LCCOMB_X42_Y45_N24
\Unit1|U2|Mux23~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux23~7_combout\ = (\Unit0|U0|RFr2a_ctrl\(1) & ((\Unit0|U0|RFr2a_ctrl\(0)) # ((\Unit1|U2|tmp_rf[14][8]~q\)))) # (!\Unit0|U0|RFr2a_ctrl\(1) & (!\Unit0|U0|RFr2a_ctrl\(0) & ((\Unit1|U2|tmp_rf[12][8]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr2a_ctrl\(1),
	datab => \Unit0|U0|RFr2a_ctrl\(0),
	datac => \Unit1|U2|tmp_rf[14][8]~q\,
	datad => \Unit1|U2|tmp_rf[12][8]~q\,
	combout => \Unit1|U2|Mux23~7_combout\);

-- Location: LCCOMB_X42_Y45_N26
\Unit1|U2|Mux23~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux23~8_combout\ = (\Unit0|U0|RFr2a_ctrl\(0) & ((\Unit1|U2|Mux23~7_combout\ & (\Unit1|U2|tmp_rf[15][8]~q\)) # (!\Unit1|U2|Mux23~7_combout\ & ((\Unit1|U2|tmp_rf[13][8]~q\))))) # (!\Unit0|U0|RFr2a_ctrl\(0) & (((\Unit1|U2|Mux23~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[15][8]~q\,
	datab => \Unit1|U2|tmp_rf[13][8]~q\,
	datac => \Unit0|U0|RFr2a_ctrl\(0),
	datad => \Unit1|U2|Mux23~7_combout\,
	combout => \Unit1|U2|Mux23~8_combout\);

-- Location: LCCOMB_X42_Y44_N24
\Unit1|U2|tmp_rf[5][8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[5][8]~feeder_combout\ = \Unit1|U1|Mux7~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|U1|Mux7~0_combout\,
	combout => \Unit1|U2|tmp_rf[5][8]~feeder_combout\);

-- Location: FF_X42_Y44_N25
\Unit1|U2|tmp_rf[5][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[5][8]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[5][8]~q\);

-- Location: LCCOMB_X40_Y42_N30
\Unit1|U2|tmp_rf[4][8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[4][8]~feeder_combout\ = \Unit1|U1|Mux7~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Unit1|U1|Mux7~0_combout\,
	combout => \Unit1|U2|tmp_rf[4][8]~feeder_combout\);

-- Location: FF_X40_Y42_N31
\Unit1|U2|tmp_rf[4][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[4][8]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[4][8]~q\);

-- Location: LCCOMB_X41_Y43_N26
\Unit1|U2|Mux23~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux23~2_combout\ = (\Unit0|U0|RFr2a_ctrl\(0) & (((\Unit0|U0|RFr2a_ctrl\(1))))) # (!\Unit0|U0|RFr2a_ctrl\(0) & ((\Unit0|U0|RFr2a_ctrl\(1) & (\Unit1|U2|tmp_rf[6][8]~q\)) # (!\Unit0|U0|RFr2a_ctrl\(1) & ((\Unit1|U2|tmp_rf[4][8]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[6][8]~q\,
	datab => \Unit1|U2|tmp_rf[4][8]~q\,
	datac => \Unit0|U0|RFr2a_ctrl\(0),
	datad => \Unit0|U0|RFr2a_ctrl\(1),
	combout => \Unit1|U2|Mux23~2_combout\);

-- Location: LCCOMB_X42_Y44_N22
\Unit1|U2|Mux23~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux23~3_combout\ = (\Unit0|U0|RFr2a_ctrl\(0) & ((\Unit1|U2|Mux23~2_combout\ & (\Unit1|U2|tmp_rf[7][8]~q\)) # (!\Unit1|U2|Mux23~2_combout\ & ((\Unit1|U2|tmp_rf[5][8]~q\))))) # (!\Unit0|U0|RFr2a_ctrl\(0) & (((\Unit1|U2|Mux23~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[7][8]~q\,
	datab => \Unit1|U2|tmp_rf[5][8]~q\,
	datac => \Unit0|U0|RFr2a_ctrl\(0),
	datad => \Unit1|U2|Mux23~2_combout\,
	combout => \Unit1|U2|Mux23~3_combout\);

-- Location: FF_X41_Y41_N21
\Unit1|U2|tmp_rf[3][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	asdata => \Unit1|U1|Mux7~0_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|U2|Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[3][8]~q\);

-- Location: LCCOMB_X41_Y45_N4
\Unit1|U2|tmp_rf[1][8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[1][8]~feeder_combout\ = \Unit1|U1|Mux7~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|U1|Mux7~0_combout\,
	combout => \Unit1|U2|tmp_rf[1][8]~feeder_combout\);

-- Location: FF_X41_Y45_N5
\Unit1|U2|tmp_rf[1][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[1][8]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[1][8]~q\);

-- Location: LCCOMB_X41_Y45_N6
\Unit1|U2|Mux23~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux23~4_combout\ = (\Unit0|U0|RFr2a_ctrl\(0) & (((\Unit1|U2|tmp_rf[1][8]~q\) # (\Unit0|U0|RFr2a_ctrl\(1))))) # (!\Unit0|U0|RFr2a_ctrl\(0) & (\Unit1|U2|tmp_rf[0][8]~q\ & ((!\Unit0|U0|RFr2a_ctrl\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[0][8]~q\,
	datab => \Unit1|U2|tmp_rf[1][8]~q\,
	datac => \Unit0|U0|RFr2a_ctrl\(0),
	datad => \Unit0|U0|RFr2a_ctrl\(1),
	combout => \Unit1|U2|Mux23~4_combout\);

-- Location: LCCOMB_X42_Y44_N0
\Unit1|U2|Mux23~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux23~5_combout\ = (\Unit1|U2|Mux23~4_combout\ & (((\Unit1|U2|tmp_rf[3][8]~q\) # (!\Unit0|U0|RFr2a_ctrl\(1))))) # (!\Unit1|U2|Mux23~4_combout\ & (\Unit1|U2|tmp_rf[2][8]~q\ & ((\Unit0|U0|RFr2a_ctrl\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[2][8]~q\,
	datab => \Unit1|U2|tmp_rf[3][8]~q\,
	datac => \Unit1|U2|Mux23~4_combout\,
	datad => \Unit0|U0|RFr2a_ctrl\(1),
	combout => \Unit1|U2|Mux23~5_combout\);

-- Location: LCCOMB_X42_Y44_N10
\Unit1|U2|Mux23~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux23~6_combout\ = (\Unit0|U0|RFr2a_ctrl\(3) & (\Unit0|U0|RFr2a_ctrl\(2))) # (!\Unit0|U0|RFr2a_ctrl\(3) & ((\Unit0|U0|RFr2a_ctrl\(2) & (\Unit1|U2|Mux23~3_combout\)) # (!\Unit0|U0|RFr2a_ctrl\(2) & ((\Unit1|U2|Mux23~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr2a_ctrl\(3),
	datab => \Unit0|U0|RFr2a_ctrl\(2),
	datac => \Unit1|U2|Mux23~3_combout\,
	datad => \Unit1|U2|Mux23~5_combout\,
	combout => \Unit1|U2|Mux23~6_combout\);

-- Location: LCCOMB_X38_Y41_N22
\Unit1|U2|Mux23~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux23~9_combout\ = (\Unit0|U0|RFr2a_ctrl\(3) & ((\Unit1|U2|Mux23~6_combout\ & ((\Unit1|U2|Mux23~8_combout\))) # (!\Unit1|U2|Mux23~6_combout\ & (\Unit1|U2|Mux23~1_combout\)))) # (!\Unit0|U0|RFr2a_ctrl\(3) & (((\Unit1|U2|Mux23~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|Mux23~1_combout\,
	datab => \Unit1|U2|Mux23~8_combout\,
	datac => \Unit0|U0|RFr2a_ctrl\(3),
	datad => \Unit1|U2|Mux23~6_combout\,
	combout => \Unit1|U2|Mux23~9_combout\);

-- Location: LCCOMB_X32_Y40_N16
\Unit0|U0|Selector50~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|Selector50~2_combout\ = ((!\Unit0|U0|state.S1~q\ & (\Unit0|U0|RFr2e_ctrl~q\ & \Unit0|U0|Selector50~1_combout\))) # (!\Unit0|U0|Selector50~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|state.S1~q\,
	datab => \Unit0|U0|Selector50~0_combout\,
	datac => \Unit0|U0|RFr2e_ctrl~q\,
	datad => \Unit0|U0|Selector50~1_combout\,
	combout => \Unit0|U0|Selector50~2_combout\);

-- Location: FF_X32_Y40_N17
\Unit0|U0|RFr2e_ctrl\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit0|U0|Selector50~2_combout\,
	ena => \ALT_INV_cpu_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U0|RFr2e_ctrl~q\);

-- Location: FF_X38_Y41_N23
\Unit1|U2|RFr2[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|Mux23~9_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit0|U0|RFr2e_ctrl~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|RFr2\(8));

-- Location: LCCOMB_X38_Y41_N28
\Unit1|U3|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|Add0~42_combout\ = (!\Unit0|U0|ALUs_ctrl\(1) & ((\Unit0|U0|ALUs_ctrl\(0) & ((\Unit1|U2|RFr2\(8)))) # (!\Unit0|U0|ALUs_ctrl\(0) & (\Unit1|U2|RFr1\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|RFr1\(8),
	datab => \Unit0|U0|ALUs_ctrl\(1),
	datac => \Unit0|U0|ALUs_ctrl\(0),
	datad => \Unit1|U2|RFr2\(8),
	combout => \Unit1|U3|Add0~42_combout\);

-- Location: LCCOMB_X42_Y44_N14
\Unit1|U2|tmp_rf[11][8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[11][8]~feeder_combout\ = \Unit1|U1|Mux7~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|U1|Mux7~0_combout\,
	combout => \Unit1|U2|tmp_rf[11][8]~feeder_combout\);

-- Location: FF_X42_Y44_N15
\Unit1|U2|tmp_rf[11][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[11][8]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[11][8]~q\);

-- Location: LCCOMB_X41_Y40_N8
\Unit1|U2|tmp_rf[9][8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[9][8]~feeder_combout\ = \Unit1|U1|Mux7~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Unit1|U1|Mux7~0_combout\,
	combout => \Unit1|U2|tmp_rf[9][8]~feeder_combout\);

-- Location: FF_X41_Y40_N9
\Unit1|U2|tmp_rf[9][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[9][8]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[9][8]~q\);

-- Location: LCCOMB_X41_Y46_N6
\Unit1|U2|tmp_rf[8][8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[8][8]~feeder_combout\ = \Unit1|U1|Mux7~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|U1|Mux7~0_combout\,
	combout => \Unit1|U2|tmp_rf[8][8]~feeder_combout\);

-- Location: FF_X41_Y46_N7
\Unit1|U2|tmp_rf[8][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[8][8]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[8][8]~q\);

-- Location: LCCOMB_X41_Y40_N14
\Unit1|U2|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux7~0_combout\ = (\Unit0|U0|RFr1a_ctrl\(1) & (\Unit0|U0|RFr1a_ctrl\(0))) # (!\Unit0|U0|RFr1a_ctrl\(1) & ((\Unit0|U0|RFr1a_ctrl\(0) & (\Unit1|U2|tmp_rf[9][8]~q\)) # (!\Unit0|U0|RFr1a_ctrl\(0) & ((\Unit1|U2|tmp_rf[8][8]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(1),
	datab => \Unit0|U0|RFr1a_ctrl\(0),
	datac => \Unit1|U2|tmp_rf[9][8]~q\,
	datad => \Unit1|U2|tmp_rf[8][8]~q\,
	combout => \Unit1|U2|Mux7~0_combout\);

-- Location: LCCOMB_X42_Y41_N12
\Unit1|U2|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux7~1_combout\ = (\Unit0|U0|RFr1a_ctrl\(1) & ((\Unit1|U2|Mux7~0_combout\ & ((\Unit1|U2|tmp_rf[11][8]~q\))) # (!\Unit1|U2|Mux7~0_combout\ & (\Unit1|U2|tmp_rf[10][8]~q\)))) # (!\Unit0|U0|RFr1a_ctrl\(1) & (((\Unit1|U2|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[10][8]~q\,
	datab => \Unit0|U0|RFr1a_ctrl\(1),
	datac => \Unit1|U2|tmp_rf[11][8]~q\,
	datad => \Unit1|U2|Mux7~0_combout\,
	combout => \Unit1|U2|Mux7~1_combout\);

-- Location: LCCOMB_X41_Y45_N0
\Unit1|U2|Mux7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux7~4_combout\ = (\Unit0|U0|RFr1a_ctrl\(1) & (((\Unit0|U0|RFr1a_ctrl\(0))))) # (!\Unit0|U0|RFr1a_ctrl\(1) & ((\Unit0|U0|RFr1a_ctrl\(0) & ((\Unit1|U2|tmp_rf[1][8]~q\))) # (!\Unit0|U0|RFr1a_ctrl\(0) & (\Unit1|U2|tmp_rf[0][8]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[0][8]~q\,
	datab => \Unit0|U0|RFr1a_ctrl\(1),
	datac => \Unit1|U2|tmp_rf[1][8]~q\,
	datad => \Unit0|U0|RFr1a_ctrl\(0),
	combout => \Unit1|U2|Mux7~4_combout\);

-- Location: LCCOMB_X42_Y44_N8
\Unit1|U2|Mux7~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux7~5_combout\ = (\Unit1|U2|Mux7~4_combout\ & (((\Unit1|U2|tmp_rf[3][8]~q\) # (!\Unit0|U0|RFr1a_ctrl\(1))))) # (!\Unit1|U2|Mux7~4_combout\ & (\Unit1|U2|tmp_rf[2][8]~q\ & ((\Unit0|U0|RFr1a_ctrl\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[2][8]~q\,
	datab => \Unit1|U2|tmp_rf[3][8]~q\,
	datac => \Unit1|U2|Mux7~4_combout\,
	datad => \Unit0|U0|RFr1a_ctrl\(1),
	combout => \Unit1|U2|Mux7~5_combout\);

-- Location: LCCOMB_X42_Y44_N26
\Unit1|U2|Mux7~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux7~6_combout\ = (\Unit0|U0|RFr1a_ctrl\(3) & (((\Unit0|U0|RFr1a_ctrl\(2))))) # (!\Unit0|U0|RFr1a_ctrl\(3) & ((\Unit0|U0|RFr1a_ctrl\(2) & (\Unit1|U2|Mux7~3_combout\)) # (!\Unit0|U0|RFr1a_ctrl\(2) & ((\Unit1|U2|Mux7~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|Mux7~3_combout\,
	datab => \Unit0|U0|RFr1a_ctrl\(3),
	datac => \Unit1|U2|Mux7~5_combout\,
	datad => \Unit0|U0|RFr1a_ctrl\(2),
	combout => \Unit1|U2|Mux7~6_combout\);

-- Location: LCCOMB_X38_Y41_N26
\Unit1|U2|Mux7~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux7~9_combout\ = (\Unit0|U0|RFr1a_ctrl\(3) & ((\Unit1|U2|Mux7~6_combout\ & (\Unit1|U2|Mux7~8_combout\)) # (!\Unit1|U2|Mux7~6_combout\ & ((\Unit1|U2|Mux7~1_combout\))))) # (!\Unit0|U0|RFr1a_ctrl\(3) & (((\Unit1|U2|Mux7~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|Mux7~8_combout\,
	datab => \Unit0|U0|RFr1a_ctrl\(3),
	datac => \Unit1|U2|Mux7~1_combout\,
	datad => \Unit1|U2|Mux7~6_combout\,
	combout => \Unit1|U2|Mux7~9_combout\);

-- Location: FF_X38_Y41_N27
\Unit1|U2|RFr1[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|Mux7~9_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit0|U0|RFr1e_ctrl~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|RFr1\(8));

-- Location: LCCOMB_X39_Y42_N20
\Unit1|U3|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|Add0~38_combout\ = \Unit1|U2|RFr2\(7) $ (\Unit0|U0|ALUs_ctrl\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Unit1|U2|RFr2\(7),
	datad => \Unit0|U0|ALUs_ctrl\(0),
	combout => \Unit1|U3|Add0~38_combout\);

-- Location: LCCOMB_X39_Y43_N30
\Unit1|U3|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|Add0~34_combout\ = (\Unit1|U3|Add0~33_combout\ & ((\Unit1|U2|RFr1\(6) & (\Unit1|U3|Add0~30\ & VCC)) # (!\Unit1|U2|RFr1\(6) & (!\Unit1|U3|Add0~30\)))) # (!\Unit1|U3|Add0~33_combout\ & ((\Unit1|U2|RFr1\(6) & (!\Unit1|U3|Add0~30\)) # 
-- (!\Unit1|U2|RFr1\(6) & ((\Unit1|U3|Add0~30\) # (GND)))))
-- \Unit1|U3|Add0~35\ = CARRY((\Unit1|U3|Add0~33_combout\ & (!\Unit1|U2|RFr1\(6) & !\Unit1|U3|Add0~30\)) # (!\Unit1|U3|Add0~33_combout\ & ((!\Unit1|U3|Add0~30\) # (!\Unit1|U2|RFr1\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U3|Add0~33_combout\,
	datab => \Unit1|U2|RFr1\(6),
	datad => VCC,
	cin => \Unit1|U3|Add0~30\,
	combout => \Unit1|U3|Add0~34_combout\,
	cout => \Unit1|U3|Add0~35\);

-- Location: LCCOMB_X39_Y42_N0
\Unit1|U3|Add0~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|Add0~39_combout\ = ((\Unit1|U2|RFr1\(7) $ (\Unit1|U3|Add0~38_combout\ $ (!\Unit1|U3|Add0~35\)))) # (GND)
-- \Unit1|U3|Add0~40\ = CARRY((\Unit1|U2|RFr1\(7) & ((\Unit1|U3|Add0~38_combout\) # (!\Unit1|U3|Add0~35\))) # (!\Unit1|U2|RFr1\(7) & (\Unit1|U3|Add0~38_combout\ & !\Unit1|U3|Add0~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|RFr1\(7),
	datab => \Unit1|U3|Add0~38_combout\,
	datad => VCC,
	cin => \Unit1|U3|Add0~35\,
	combout => \Unit1|U3|Add0~39_combout\,
	cout => \Unit1|U3|Add0~40\);

-- Location: LCCOMB_X39_Y42_N2
\Unit1|U3|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|Add0~44_combout\ = (\Unit1|U3|Add0~43_combout\ & ((\Unit1|U2|RFr1\(8) & (\Unit1|U3|Add0~40\ & VCC)) # (!\Unit1|U2|RFr1\(8) & (!\Unit1|U3|Add0~40\)))) # (!\Unit1|U3|Add0~43_combout\ & ((\Unit1|U2|RFr1\(8) & (!\Unit1|U3|Add0~40\)) # 
-- (!\Unit1|U2|RFr1\(8) & ((\Unit1|U3|Add0~40\) # (GND)))))
-- \Unit1|U3|Add0~45\ = CARRY((\Unit1|U3|Add0~43_combout\ & (!\Unit1|U2|RFr1\(8) & !\Unit1|U3|Add0~40\)) # (!\Unit1|U3|Add0~43_combout\ & ((!\Unit1|U3|Add0~40\) # (!\Unit1|U2|RFr1\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U3|Add0~43_combout\,
	datab => \Unit1|U2|RFr1\(8),
	datad => VCC,
	cin => \Unit1|U3|Add0~40\,
	combout => \Unit1|U3|Add0~44_combout\,
	cout => \Unit1|U3|Add0~45\);

-- Location: LCCOMB_X40_Y42_N26
\Unit1|U3|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|Add0~46_combout\ = (\Unit1|U3|Add0~42_combout\) # ((\Unit0|U0|ALUs_ctrl\(1) & \Unit1|U3|Add0~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|ALUs_ctrl\(1),
	datab => \Unit1|U3|Add0~42_combout\,
	datad => \Unit1|U3|Add0~44_combout\,
	combout => \Unit1|U3|Add0~46_combout\);

-- Location: LCCOMB_X40_Y42_N2
\Unit1|U1|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U1|Mux6~0_combout\ = (\Unit0|U0|RFs_ctrl\(0) & ((\Unit2|altsyncram_component|auto_generated|q_a\(9)) # ((\Unit0|U0|RFs_ctrl\(1))))) # (!\Unit0|U0|RFs_ctrl\(0) & (((!\Unit0|U0|RFs_ctrl\(1) & \Unit1|U3|Add0~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit2|altsyncram_component|auto_generated|q_a\(9),
	datab => \Unit0|U0|RFs_ctrl\(0),
	datac => \Unit0|U0|RFs_ctrl\(1),
	datad => \Unit1|U3|Add0~51_combout\,
	combout => \Unit1|U1|Mux6~0_combout\);

-- Location: FF_X43_Y44_N25
\Unit1|U2|tmp_rf[14][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	asdata => \Unit1|U1|Mux6~0_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|U2|Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[14][9]~q\);

-- Location: LCCOMB_X40_Y45_N26
\Unit1|U2|tmp_rf[2][9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[2][9]~feeder_combout\ = \Unit1|U1|Mux6~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Unit1|U1|Mux6~0_combout\,
	combout => \Unit1|U2|tmp_rf[2][9]~feeder_combout\);

-- Location: FF_X40_Y45_N27
\Unit1|U2|tmp_rf[2][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[2][9]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[2][9]~q\);

-- Location: LCCOMB_X40_Y45_N24
\Unit1|U2|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux6~0_combout\ = (\Unit0|U0|RFr1a_ctrl\(3) & ((\Unit1|U2|tmp_rf[10][9]~q\) # ((\Unit0|U0|RFr1a_ctrl\(2))))) # (!\Unit0|U0|RFr1a_ctrl\(3) & (((!\Unit0|U0|RFr1a_ctrl\(2) & \Unit1|U2|tmp_rf[2][9]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[10][9]~q\,
	datab => \Unit0|U0|RFr1a_ctrl\(3),
	datac => \Unit0|U0|RFr1a_ctrl\(2),
	datad => \Unit1|U2|tmp_rf[2][9]~q\,
	combout => \Unit1|U2|Mux6~0_combout\);

-- Location: LCCOMB_X43_Y44_N18
\Unit1|U2|tmp_rf[6][9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[6][9]~feeder_combout\ = \Unit1|U1|Mux6~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Unit1|U1|Mux6~0_combout\,
	combout => \Unit1|U2|tmp_rf[6][9]~feeder_combout\);

-- Location: FF_X43_Y44_N19
\Unit1|U2|tmp_rf[6][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[6][9]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[6][9]~q\);

-- Location: LCCOMB_X43_Y44_N14
\Unit1|U2|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux6~1_combout\ = (\Unit0|U0|RFr1a_ctrl\(2) & ((\Unit1|U2|Mux6~0_combout\ & (\Unit1|U2|tmp_rf[14][9]~q\)) # (!\Unit1|U2|Mux6~0_combout\ & ((\Unit1|U2|tmp_rf[6][9]~q\))))) # (!\Unit0|U0|RFr1a_ctrl\(2) & (((\Unit1|U2|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(2),
	datab => \Unit1|U2|tmp_rf[14][9]~q\,
	datac => \Unit1|U2|Mux6~0_combout\,
	datad => \Unit1|U2|tmp_rf[6][9]~q\,
	combout => \Unit1|U2|Mux6~1_combout\);

-- Location: LCCOMB_X41_Y40_N28
\Unit1|U2|tmp_rf[9][9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[9][9]~feeder_combout\ = \Unit1|U1|Mux6~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|U1|Mux6~0_combout\,
	combout => \Unit1|U2|tmp_rf[9][9]~feeder_combout\);

-- Location: FF_X41_Y40_N29
\Unit1|U2|tmp_rf[9][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[9][9]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[9][9]~q\);

-- Location: LCCOMB_X43_Y42_N26
\Unit1|U2|tmp_rf[13][9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[13][9]~feeder_combout\ = \Unit1|U1|Mux6~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Unit1|U1|Mux6~0_combout\,
	combout => \Unit1|U2|tmp_rf[13][9]~feeder_combout\);

-- Location: FF_X43_Y42_N27
\Unit1|U2|tmp_rf[13][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[13][9]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[13][9]~q\);

-- Location: LCCOMB_X41_Y40_N10
\Unit1|U2|Mux6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux6~3_combout\ = (\Unit1|U2|Mux6~2_combout\ & (((\Unit1|U2|tmp_rf[13][9]~q\) # (!\Unit0|U0|RFr1a_ctrl\(3))))) # (!\Unit1|U2|Mux6~2_combout\ & (\Unit1|U2|tmp_rf[9][9]~q\ & (\Unit0|U0|RFr1a_ctrl\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|Mux6~2_combout\,
	datab => \Unit1|U2|tmp_rf[9][9]~q\,
	datac => \Unit0|U0|RFr1a_ctrl\(3),
	datad => \Unit1|U2|tmp_rf[13][9]~q\,
	combout => \Unit1|U2|Mux6~3_combout\);

-- Location: FF_X41_Y42_N17
\Unit1|U2|tmp_rf[12][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	asdata => \Unit1|U1|Mux6~0_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|U2|Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[12][9]~q\);

-- Location: FF_X41_Y45_N23
\Unit1|U2|tmp_rf[0][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	asdata => \Unit1|U1|Mux6~0_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|U2|Decoder0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[0][9]~q\);

-- Location: LCCOMB_X39_Y45_N20
\Unit1|U2|tmp_rf[8][9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[8][9]~feeder_combout\ = \Unit1|U1|Mux6~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|U1|Mux6~0_combout\,
	combout => \Unit1|U2|tmp_rf[8][9]~feeder_combout\);

-- Location: FF_X39_Y45_N21
\Unit1|U2|tmp_rf[8][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[8][9]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[8][9]~q\);

-- Location: LCCOMB_X41_Y45_N22
\Unit1|U2|Mux6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux6~4_combout\ = (\Unit0|U0|RFr1a_ctrl\(2) & (\Unit0|U0|RFr1a_ctrl\(3))) # (!\Unit0|U0|RFr1a_ctrl\(2) & ((\Unit0|U0|RFr1a_ctrl\(3) & ((\Unit1|U2|tmp_rf[8][9]~q\))) # (!\Unit0|U0|RFr1a_ctrl\(3) & (\Unit1|U2|tmp_rf[0][9]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(2),
	datab => \Unit0|U0|RFr1a_ctrl\(3),
	datac => \Unit1|U2|tmp_rf[0][9]~q\,
	datad => \Unit1|U2|tmp_rf[8][9]~q\,
	combout => \Unit1|U2|Mux6~4_combout\);

-- Location: LCCOMB_X41_Y42_N16
\Unit1|U2|Mux6~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux6~5_combout\ = (\Unit0|U0|RFr1a_ctrl\(2) & ((\Unit1|U2|Mux6~4_combout\ & ((\Unit1|U2|tmp_rf[12][9]~q\))) # (!\Unit1|U2|Mux6~4_combout\ & (\Unit1|U2|tmp_rf[4][9]~q\)))) # (!\Unit0|U0|RFr1a_ctrl\(2) & (((\Unit1|U2|Mux6~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[4][9]~q\,
	datab => \Unit0|U0|RFr1a_ctrl\(2),
	datac => \Unit1|U2|tmp_rf[12][9]~q\,
	datad => \Unit1|U2|Mux6~4_combout\,
	combout => \Unit1|U2|Mux6~5_combout\);

-- Location: LCCOMB_X41_Y42_N30
\Unit1|U2|Mux6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux6~6_combout\ = (\Unit0|U0|RFr1a_ctrl\(1) & (\Unit0|U0|RFr1a_ctrl\(0))) # (!\Unit0|U0|RFr1a_ctrl\(1) & ((\Unit0|U0|RFr1a_ctrl\(0) & (\Unit1|U2|Mux6~3_combout\)) # (!\Unit0|U0|RFr1a_ctrl\(0) & ((\Unit1|U2|Mux6~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(1),
	datab => \Unit0|U0|RFr1a_ctrl\(0),
	datac => \Unit1|U2|Mux6~3_combout\,
	datad => \Unit1|U2|Mux6~5_combout\,
	combout => \Unit1|U2|Mux6~6_combout\);

-- Location: LCCOMB_X38_Y41_N20
\Unit1|U2|Mux6~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux6~9_combout\ = (\Unit1|U2|Mux6~6_combout\ & ((\Unit1|U2|Mux6~8_combout\) # ((!\Unit0|U0|RFr1a_ctrl\(1))))) # (!\Unit1|U2|Mux6~6_combout\ & (((\Unit1|U2|Mux6~1_combout\ & \Unit0|U0|RFr1a_ctrl\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|Mux6~8_combout\,
	datab => \Unit1|U2|Mux6~1_combout\,
	datac => \Unit1|U2|Mux6~6_combout\,
	datad => \Unit0|U0|RFr1a_ctrl\(1),
	combout => \Unit1|U2|Mux6~9_combout\);

-- Location: FF_X38_Y41_N21
\Unit1|U2|RFr1[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|Mux6~9_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit0|U0|RFr1e_ctrl~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|RFr1\(9));

-- Location: LCCOMB_X39_Y42_N4
\Unit1|U3|Add0~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|Add0~49_combout\ = ((\Unit1|U3|Add0~48_combout\ $ (\Unit1|U2|RFr1\(9) $ (!\Unit1|U3|Add0~45\)))) # (GND)
-- \Unit1|U3|Add0~50\ = CARRY((\Unit1|U3|Add0~48_combout\ & ((\Unit1|U2|RFr1\(9)) # (!\Unit1|U3|Add0~45\))) # (!\Unit1|U3|Add0~48_combout\ & (\Unit1|U2|RFr1\(9) & !\Unit1|U3|Add0~45\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U3|Add0~48_combout\,
	datab => \Unit1|U2|RFr1\(9),
	datad => VCC,
	cin => \Unit1|U3|Add0~45\,
	combout => \Unit1|U3|Add0~49_combout\,
	cout => \Unit1|U3|Add0~50\);

-- Location: LCCOMB_X41_Y41_N30
\Unit1|U2|tmp_rf[7][9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[7][9]~feeder_combout\ = \Unit1|U1|Mux6~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|U1|Mux6~0_combout\,
	combout => \Unit1|U2|tmp_rf[7][9]~feeder_combout\);

-- Location: LCCOMB_X41_Y41_N20
\Unit1|U2|Decoder0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Decoder0~15_combout\ = (\Unit1|U2|Decoder0~14_combout\ & !\Unit0|U0|RFwa_ctrl\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|Decoder0~14_combout\,
	datad => \Unit0|U0|RFwa_ctrl\(3),
	combout => \Unit1|U2|Decoder0~15_combout\);

-- Location: FF_X41_Y41_N31
\Unit1|U2|tmp_rf[7][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[7][9]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[7][9]~q\);

-- Location: LCCOMB_X41_Y41_N16
\Unit1|U2|tmp_rf[3][9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[3][9]~feeder_combout\ = \Unit1|U1|Mux6~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|U1|Mux6~0_combout\,
	combout => \Unit1|U2|tmp_rf[3][9]~feeder_combout\);

-- Location: FF_X41_Y41_N17
\Unit1|U2|tmp_rf[3][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[3][9]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[3][9]~q\);

-- Location: LCCOMB_X41_Y41_N22
\Unit1|U2|Mux22~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux22~7_combout\ = (\Unit0|U0|RFr2a_ctrl\(3) & (\Unit0|U0|RFr2a_ctrl\(2))) # (!\Unit0|U0|RFr2a_ctrl\(3) & ((\Unit0|U0|RFr2a_ctrl\(2) & (\Unit1|U2|tmp_rf[7][9]~q\)) # (!\Unit0|U0|RFr2a_ctrl\(2) & ((\Unit1|U2|tmp_rf[3][9]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr2a_ctrl\(3),
	datab => \Unit0|U0|RFr2a_ctrl\(2),
	datac => \Unit1|U2|tmp_rf[7][9]~q\,
	datad => \Unit1|U2|tmp_rf[3][9]~q\,
	combout => \Unit1|U2|Mux22~7_combout\);

-- Location: LCCOMB_X36_Y41_N2
\Unit1|U2|tmp_rf[15][9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[15][9]~feeder_combout\ = \Unit1|U1|Mux6~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Unit1|U1|Mux6~0_combout\,
	combout => \Unit1|U2|tmp_rf[15][9]~feeder_combout\);

-- Location: FF_X36_Y41_N3
\Unit1|U2|tmp_rf[15][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[15][9]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[15][9]~q\);

-- Location: LCCOMB_X36_Y41_N6
\Unit1|U2|Mux22~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux22~8_combout\ = (\Unit0|U0|RFr2a_ctrl\(3) & ((\Unit1|U2|Mux22~7_combout\ & ((\Unit1|U2|tmp_rf[15][9]~q\))) # (!\Unit1|U2|Mux22~7_combout\ & (\Unit1|U2|tmp_rf[11][9]~q\)))) # (!\Unit0|U0|RFr2a_ctrl\(3) & (((\Unit1|U2|Mux22~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[11][9]~q\,
	datab => \Unit0|U0|RFr2a_ctrl\(3),
	datac => \Unit1|U2|Mux22~7_combout\,
	datad => \Unit1|U2|tmp_rf[15][9]~q\,
	combout => \Unit1|U2|Mux22~8_combout\);

-- Location: LCCOMB_X40_Y45_N30
\Unit1|U2|Mux22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux22~0_combout\ = (\Unit0|U0|RFr2a_ctrl\(2) & (((\Unit0|U0|RFr2a_ctrl\(3))))) # (!\Unit0|U0|RFr2a_ctrl\(2) & ((\Unit0|U0|RFr2a_ctrl\(3) & (\Unit1|U2|tmp_rf[10][9]~q\)) # (!\Unit0|U0|RFr2a_ctrl\(3) & ((\Unit1|U2|tmp_rf[2][9]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[10][9]~q\,
	datab => \Unit1|U2|tmp_rf[2][9]~q\,
	datac => \Unit0|U0|RFr2a_ctrl\(2),
	datad => \Unit0|U0|RFr2a_ctrl\(3),
	combout => \Unit1|U2|Mux22~0_combout\);

-- Location: LCCOMB_X43_Y44_N24
\Unit1|U2|Mux22~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux22~1_combout\ = (\Unit0|U0|RFr2a_ctrl\(2) & ((\Unit1|U2|Mux22~0_combout\ & (\Unit1|U2|tmp_rf[14][9]~q\)) # (!\Unit1|U2|Mux22~0_combout\ & ((\Unit1|U2|tmp_rf[6][9]~q\))))) # (!\Unit0|U0|RFr2a_ctrl\(2) & (\Unit1|U2|Mux22~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr2a_ctrl\(2),
	datab => \Unit1|U2|Mux22~0_combout\,
	datac => \Unit1|U2|tmp_rf[14][9]~q\,
	datad => \Unit1|U2|tmp_rf[6][9]~q\,
	combout => \Unit1|U2|Mux22~1_combout\);

-- Location: LCCOMB_X38_Y41_N4
\Unit1|U2|Mux22~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux22~9_combout\ = (\Unit1|U2|Mux22~6_combout\ & (((\Unit1|U2|Mux22~8_combout\)) # (!\Unit0|U0|RFr2a_ctrl\(1)))) # (!\Unit1|U2|Mux22~6_combout\ & (\Unit0|U0|RFr2a_ctrl\(1) & ((\Unit1|U2|Mux22~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|Mux22~6_combout\,
	datab => \Unit0|U0|RFr2a_ctrl\(1),
	datac => \Unit1|U2|Mux22~8_combout\,
	datad => \Unit1|U2|Mux22~1_combout\,
	combout => \Unit1|U2|Mux22~9_combout\);

-- Location: FF_X38_Y41_N5
\Unit1|U2|RFr2[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|Mux22~9_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit0|U0|RFr2e_ctrl~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|RFr2\(9));

-- Location: LCCOMB_X38_Y41_N30
\Unit1|U3|Add0~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|Add0~47_combout\ = (!\Unit0|U0|ALUs_ctrl\(1) & ((\Unit0|U0|ALUs_ctrl\(0) & (\Unit1|U2|RFr2\(9))) # (!\Unit0|U0|ALUs_ctrl\(0) & ((\Unit1|U2|RFr1\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|ALUs_ctrl\(1),
	datab => \Unit1|U2|RFr2\(9),
	datac => \Unit0|U0|ALUs_ctrl\(0),
	datad => \Unit1|U2|RFr1\(9),
	combout => \Unit1|U3|Add0~47_combout\);

-- Location: LCCOMB_X40_Y42_N8
\Unit1|U3|Add0~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|Add0~51_combout\ = (\Unit1|U3|Add0~47_combout\) # ((\Unit0|U0|ALUs_ctrl\(1) & \Unit1|U3|Add0~49_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|ALUs_ctrl\(1),
	datac => \Unit1|U3|Add0~49_combout\,
	datad => \Unit1|U3|Add0~47_combout\,
	combout => \Unit1|U3|Add0~51_combout\);

-- Location: LCCOMB_X42_Y42_N22
\Unit1|U1|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U1|Mux4~0_combout\ = (\Unit0|U0|RFs_ctrl\(0) & ((\Unit2|altsyncram_component|auto_generated|q_a\(11)) # ((\Unit0|U0|RFs_ctrl\(1))))) # (!\Unit0|U0|RFs_ctrl\(0) & (((!\Unit0|U0|RFs_ctrl\(1) & \Unit1|U3|Add0~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit2|altsyncram_component|auto_generated|q_a\(11),
	datab => \Unit0|U0|RFs_ctrl\(0),
	datac => \Unit0|U0|RFs_ctrl\(1),
	datad => \Unit1|U3|Add0~61_combout\,
	combout => \Unit1|U1|Mux4~0_combout\);

-- Location: LCCOMB_X38_Y42_N4
\Unit1|U2|tmp_rf[15][11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[15][11]~feeder_combout\ = \Unit1|U1|Mux4~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|U1|Mux4~0_combout\,
	combout => \Unit1|U2|tmp_rf[15][11]~feeder_combout\);

-- Location: FF_X38_Y42_N5
\Unit1|U2|tmp_rf[15][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[15][11]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[15][11]~q\);

-- Location: FF_X42_Y42_N13
\Unit1|U2|tmp_rf[11][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	asdata => \Unit1|U1|Mux4~0_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|U2|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[11][11]~q\);

-- Location: LCCOMB_X42_Y42_N4
\Unit1|U2|Mux4~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux4~7_combout\ = (\Unit0|U0|RFr1a_ctrl\(2) & (((\Unit0|U0|RFr1a_ctrl\(3))))) # (!\Unit0|U0|RFr1a_ctrl\(2) & ((\Unit0|U0|RFr1a_ctrl\(3) & ((\Unit1|U2|tmp_rf[11][11]~q\))) # (!\Unit0|U0|RFr1a_ctrl\(3) & (\Unit1|U2|tmp_rf[3][11]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[3][11]~q\,
	datab => \Unit0|U0|RFr1a_ctrl\(2),
	datac => \Unit0|U0|RFr1a_ctrl\(3),
	datad => \Unit1|U2|tmp_rf[11][11]~q\,
	combout => \Unit1|U2|Mux4~7_combout\);

-- Location: LCCOMB_X38_Y42_N2
\Unit1|U2|Mux4~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux4~8_combout\ = (\Unit1|U2|Mux4~7_combout\ & (((\Unit1|U2|tmp_rf[15][11]~q\) # (!\Unit0|U0|RFr1a_ctrl\(2))))) # (!\Unit1|U2|Mux4~7_combout\ & (\Unit1|U2|tmp_rf[7][11]~q\ & ((\Unit0|U0|RFr1a_ctrl\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[7][11]~q\,
	datab => \Unit1|U2|tmp_rf[15][11]~q\,
	datac => \Unit1|U2|Mux4~7_combout\,
	datad => \Unit0|U0|RFr1a_ctrl\(2),
	combout => \Unit1|U2|Mux4~8_combout\);

-- Location: LCCOMB_X35_Y42_N14
\Unit1|U2|tmp_rf[8][11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[8][11]~feeder_combout\ = \Unit1|U1|Mux4~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|U1|Mux4~0_combout\,
	combout => \Unit1|U2|tmp_rf[8][11]~feeder_combout\);

-- Location: FF_X35_Y42_N15
\Unit1|U2|tmp_rf[8][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[8][11]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[8][11]~q\);

-- Location: FF_X42_Y43_N17
\Unit1|U2|tmp_rf[0][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	asdata => \Unit1|U1|Mux4~0_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|U2|Decoder0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[0][11]~q\);

-- Location: LCCOMB_X42_Y46_N4
\Unit1|U2|tmp_rf[4][11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[4][11]~feeder_combout\ = \Unit1|U1|Mux4~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|U1|Mux4~0_combout\,
	combout => \Unit1|U2|tmp_rf[4][11]~feeder_combout\);

-- Location: FF_X42_Y46_N5
\Unit1|U2|tmp_rf[4][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[4][11]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[4][11]~q\);

-- Location: LCCOMB_X42_Y43_N16
\Unit1|U2|Mux4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux4~4_combout\ = (\Unit0|U0|RFr1a_ctrl\(2) & ((\Unit0|U0|RFr1a_ctrl\(3)) # ((\Unit1|U2|tmp_rf[4][11]~q\)))) # (!\Unit0|U0|RFr1a_ctrl\(2) & (!\Unit0|U0|RFr1a_ctrl\(3) & (\Unit1|U2|tmp_rf[0][11]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(2),
	datab => \Unit0|U0|RFr1a_ctrl\(3),
	datac => \Unit1|U2|tmp_rf[0][11]~q\,
	datad => \Unit1|U2|tmp_rf[4][11]~q\,
	combout => \Unit1|U2|Mux4~4_combout\);

-- Location: LCCOMB_X35_Y42_N20
\Unit1|U2|Mux4~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux4~5_combout\ = (\Unit0|U0|RFr1a_ctrl\(3) & ((\Unit1|U2|Mux4~4_combout\ & (\Unit1|U2|tmp_rf[12][11]~q\)) # (!\Unit1|U2|Mux4~4_combout\ & ((\Unit1|U2|tmp_rf[8][11]~q\))))) # (!\Unit0|U0|RFr1a_ctrl\(3) & (((\Unit1|U2|Mux4~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[12][11]~q\,
	datab => \Unit0|U0|RFr1a_ctrl\(3),
	datac => \Unit1|U2|tmp_rf[8][11]~q\,
	datad => \Unit1|U2|Mux4~4_combout\,
	combout => \Unit1|U2|Mux4~5_combout\);

-- Location: FF_X42_Y43_N31
\Unit1|U2|tmp_rf[10][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	asdata => \Unit1|U1|Mux4~0_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|U2|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[10][11]~q\);

-- Location: LCCOMB_X41_Y43_N28
\Unit1|U2|tmp_rf[14][11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[14][11]~feeder_combout\ = \Unit1|U1|Mux4~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|U1|Mux4~0_combout\,
	combout => \Unit1|U2|tmp_rf[14][11]~feeder_combout\);

-- Location: FF_X41_Y43_N29
\Unit1|U2|tmp_rf[14][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[14][11]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[14][11]~q\);

-- Location: LCCOMB_X42_Y43_N30
\Unit1|U2|Mux4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux4~3_combout\ = (\Unit1|U2|Mux4~2_combout\ & (((\Unit1|U2|tmp_rf[14][11]~q\)) # (!\Unit0|U0|RFr1a_ctrl\(3)))) # (!\Unit1|U2|Mux4~2_combout\ & (\Unit0|U0|RFr1a_ctrl\(3) & (\Unit1|U2|tmp_rf[10][11]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|Mux4~2_combout\,
	datab => \Unit0|U0|RFr1a_ctrl\(3),
	datac => \Unit1|U2|tmp_rf[10][11]~q\,
	datad => \Unit1|U2|tmp_rf[14][11]~q\,
	combout => \Unit1|U2|Mux4~3_combout\);

-- Location: LCCOMB_X38_Y40_N4
\Unit1|U2|Mux4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux4~6_combout\ = (\Unit0|U0|RFr1a_ctrl\(0) & (\Unit0|U0|RFr1a_ctrl\(1))) # (!\Unit0|U0|RFr1a_ctrl\(0) & ((\Unit0|U0|RFr1a_ctrl\(1) & ((\Unit1|U2|Mux4~3_combout\))) # (!\Unit0|U0|RFr1a_ctrl\(1) & (\Unit1|U2|Mux4~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(0),
	datab => \Unit0|U0|RFr1a_ctrl\(1),
	datac => \Unit1|U2|Mux4~5_combout\,
	datad => \Unit1|U2|Mux4~3_combout\,
	combout => \Unit1|U2|Mux4~6_combout\);

-- Location: LCCOMB_X43_Y42_N10
\Unit1|U2|tmp_rf[13][11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[13][11]~feeder_combout\ = \Unit1|U1|Mux4~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|U1|Mux4~0_combout\,
	combout => \Unit1|U2|tmp_rf[13][11]~feeder_combout\);

-- Location: FF_X43_Y42_N11
\Unit1|U2|tmp_rf[13][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[13][11]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[13][11]~q\);

-- Location: LCCOMB_X43_Y42_N24
\Unit1|U2|tmp_rf[5][11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[5][11]~feeder_combout\ = \Unit1|U1|Mux4~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|U1|Mux4~0_combout\,
	combout => \Unit1|U2|tmp_rf[5][11]~feeder_combout\);

-- Location: FF_X43_Y42_N25
\Unit1|U2|tmp_rf[5][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[5][11]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[5][11]~q\);

-- Location: FF_X41_Y44_N29
\Unit1|U2|tmp_rf[1][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	asdata => \Unit1|U1|Mux4~0_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|U2|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[1][11]~q\);

-- Location: LCCOMB_X41_Y40_N4
\Unit1|U2|tmp_rf[9][11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[9][11]~feeder_combout\ = \Unit1|U1|Mux4~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|U1|Mux4~0_combout\,
	combout => \Unit1|U2|tmp_rf[9][11]~feeder_combout\);

-- Location: FF_X41_Y40_N5
\Unit1|U2|tmp_rf[9][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[9][11]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[9][11]~q\);

-- Location: LCCOMB_X41_Y44_N14
\Unit1|U2|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux4~0_combout\ = (\Unit0|U0|RFr1a_ctrl\(3) & (((\Unit1|U2|tmp_rf[9][11]~q\) # (\Unit0|U0|RFr1a_ctrl\(2))))) # (!\Unit0|U0|RFr1a_ctrl\(3) & (\Unit1|U2|tmp_rf[1][11]~q\ & ((!\Unit0|U0|RFr1a_ctrl\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(3),
	datab => \Unit1|U2|tmp_rf[1][11]~q\,
	datac => \Unit1|U2|tmp_rf[9][11]~q\,
	datad => \Unit0|U0|RFr1a_ctrl\(2),
	combout => \Unit1|U2|Mux4~0_combout\);

-- Location: LCCOMB_X42_Y42_N26
\Unit1|U2|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux4~1_combout\ = (\Unit0|U0|RFr1a_ctrl\(2) & ((\Unit1|U2|Mux4~0_combout\ & (\Unit1|U2|tmp_rf[13][11]~q\)) # (!\Unit1|U2|Mux4~0_combout\ & ((\Unit1|U2|tmp_rf[5][11]~q\))))) # (!\Unit0|U0|RFr1a_ctrl\(2) & (((\Unit1|U2|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(2),
	datab => \Unit1|U2|tmp_rf[13][11]~q\,
	datac => \Unit1|U2|tmp_rf[5][11]~q\,
	datad => \Unit1|U2|Mux4~0_combout\,
	combout => \Unit1|U2|Mux4~1_combout\);

-- Location: LCCOMB_X38_Y40_N24
\Unit1|U2|Mux4~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux4~9_combout\ = (\Unit0|U0|RFr1a_ctrl\(0) & ((\Unit1|U2|Mux4~6_combout\ & (\Unit1|U2|Mux4~8_combout\)) # (!\Unit1|U2|Mux4~6_combout\ & ((\Unit1|U2|Mux4~1_combout\))))) # (!\Unit0|U0|RFr1a_ctrl\(0) & (((\Unit1|U2|Mux4~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(0),
	datab => \Unit1|U2|Mux4~8_combout\,
	datac => \Unit1|U2|Mux4~6_combout\,
	datad => \Unit1|U2|Mux4~1_combout\,
	combout => \Unit1|U2|Mux4~9_combout\);

-- Location: FF_X38_Y40_N25
\Unit1|U2|RFr1[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|Mux4~9_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit0|U0|RFr1e_ctrl~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|RFr1\(11));

-- Location: LCCOMB_X40_Y42_N14
\Unit1|U3|Add0~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|Add0~57_combout\ = (!\Unit0|U0|ALUs_ctrl\(1) & ((\Unit0|U0|ALUs_ctrl\(0) & (\Unit1|U2|RFr2\(11))) # (!\Unit0|U0|ALUs_ctrl\(0) & ((\Unit1|U2|RFr1\(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|RFr2\(11),
	datab => \Unit0|U0|ALUs_ctrl\(0),
	datac => \Unit1|U2|RFr1\(11),
	datad => \Unit0|U0|ALUs_ctrl\(1),
	combout => \Unit1|U3|Add0~57_combout\);

-- Location: LCCOMB_X39_Y42_N6
\Unit1|U3|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|Add0~54_combout\ = (\Unit1|U2|RFr1\(10) & ((\Unit1|U3|Add0~53_combout\ & (\Unit1|U3|Add0~50\ & VCC)) # (!\Unit1|U3|Add0~53_combout\ & (!\Unit1|U3|Add0~50\)))) # (!\Unit1|U2|RFr1\(10) & ((\Unit1|U3|Add0~53_combout\ & (!\Unit1|U3|Add0~50\)) # 
-- (!\Unit1|U3|Add0~53_combout\ & ((\Unit1|U3|Add0~50\) # (GND)))))
-- \Unit1|U3|Add0~55\ = CARRY((\Unit1|U2|RFr1\(10) & (!\Unit1|U3|Add0~53_combout\ & !\Unit1|U3|Add0~50\)) # (!\Unit1|U2|RFr1\(10) & ((!\Unit1|U3|Add0~50\) # (!\Unit1|U3|Add0~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|RFr1\(10),
	datab => \Unit1|U3|Add0~53_combout\,
	datad => VCC,
	cin => \Unit1|U3|Add0~50\,
	combout => \Unit1|U3|Add0~54_combout\,
	cout => \Unit1|U3|Add0~55\);

-- Location: LCCOMB_X39_Y42_N8
\Unit1|U3|Add0~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|Add0~59_combout\ = ((\Unit1|U3|Add0~58_combout\ $ (\Unit1|U2|RFr1\(11) $ (!\Unit1|U3|Add0~55\)))) # (GND)
-- \Unit1|U3|Add0~60\ = CARRY((\Unit1|U3|Add0~58_combout\ & ((\Unit1|U2|RFr1\(11)) # (!\Unit1|U3|Add0~55\))) # (!\Unit1|U3|Add0~58_combout\ & (\Unit1|U2|RFr1\(11) & !\Unit1|U3|Add0~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U3|Add0~58_combout\,
	datab => \Unit1|U2|RFr1\(11),
	datad => VCC,
	cin => \Unit1|U3|Add0~55\,
	combout => \Unit1|U3|Add0~59_combout\,
	cout => \Unit1|U3|Add0~60\);

-- Location: LCCOMB_X40_Y42_N16
\Unit1|U3|Add0~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|Add0~61_combout\ = (\Unit1|U3|Add0~57_combout\) # ((\Unit0|U0|ALUs_ctrl\(1) & \Unit1|U3|Add0~59_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|ALUs_ctrl\(1),
	datac => \Unit1|U3|Add0~57_combout\,
	datad => \Unit1|U3|Add0~59_combout\,
	combout => \Unit1|U3|Add0~61_combout\);

-- Location: LCCOMB_X40_Y43_N10
\Unit1|U1|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U1|Mux1~0_combout\ = (\Unit0|U0|RFs_ctrl\(1) & (((\Unit0|U0|RFs_ctrl\(0))))) # (!\Unit0|U0|RFs_ctrl\(1) & ((\Unit0|U0|RFs_ctrl\(0) & (\Unit2|altsyncram_component|auto_generated|q_a\(14))) # (!\Unit0|U0|RFs_ctrl\(0) & 
-- ((\Unit1|U3|Add0~76_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit2|altsyncram_component|auto_generated|q_a\(14),
	datab => \Unit0|U0|RFs_ctrl\(1),
	datac => \Unit0|U0|RFs_ctrl\(0),
	datad => \Unit1|U3|Add0~76_combout\,
	combout => \Unit1|U1|Mux1~0_combout\);

-- Location: LCCOMB_X36_Y43_N10
\Unit1|U2|tmp_rf[12][14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[12][14]~feeder_combout\ = \Unit1|U1|Mux1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Unit1|U1|Mux1~0_combout\,
	combout => \Unit1|U2|tmp_rf[12][14]~feeder_combout\);

-- Location: FF_X36_Y43_N11
\Unit1|U2|tmp_rf[12][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[12][14]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[12][14]~q\);

-- Location: FF_X39_Y43_N29
\Unit1|U2|tmp_rf[13][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	asdata => \Unit1|U1|Mux1~0_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|U2|Decoder0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[13][14]~q\);

-- Location: LCCOMB_X35_Y43_N24
\Unit1|U2|Mux1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux1~7_combout\ = (\Unit0|U0|RFr1a_ctrl\(0) & ((\Unit0|U0|RFr1a_ctrl\(1)) # ((\Unit1|U2|tmp_rf[13][14]~q\)))) # (!\Unit0|U0|RFr1a_ctrl\(0) & (!\Unit0|U0|RFr1a_ctrl\(1) & (\Unit1|U2|tmp_rf[12][14]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(0),
	datab => \Unit0|U0|RFr1a_ctrl\(1),
	datac => \Unit1|U2|tmp_rf[12][14]~q\,
	datad => \Unit1|U2|tmp_rf[13][14]~q\,
	combout => \Unit1|U2|Mux1~7_combout\);

-- Location: LCCOMB_X41_Y42_N6
\Unit1|U2|tmp_rf[14][14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[14][14]~feeder_combout\ = \Unit1|U1|Mux1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|U1|Mux1~0_combout\,
	combout => \Unit1|U2|tmp_rf[14][14]~feeder_combout\);

-- Location: FF_X41_Y42_N7
\Unit1|U2|tmp_rf[14][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[14][14]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[14][14]~q\);

-- Location: LCCOMB_X42_Y41_N16
\Unit1|U2|Mux1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux1~8_combout\ = (\Unit0|U0|RFr1a_ctrl\(1) & ((\Unit1|U2|Mux1~7_combout\ & (\Unit1|U2|tmp_rf[15][14]~q\)) # (!\Unit1|U2|Mux1~7_combout\ & ((\Unit1|U2|tmp_rf[14][14]~q\))))) # (!\Unit0|U0|RFr1a_ctrl\(1) & (((\Unit1|U2|Mux1~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[15][14]~q\,
	datab => \Unit0|U0|RFr1a_ctrl\(1),
	datac => \Unit1|U2|Mux1~7_combout\,
	datad => \Unit1|U2|tmp_rf[14][14]~q\,
	combout => \Unit1|U2|Mux1~8_combout\);

-- Location: LCCOMB_X39_Y40_N20
\Unit1|U2|tmp_rf[1][14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[1][14]~feeder_combout\ = \Unit1|U1|Mux1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|U1|Mux1~0_combout\,
	combout => \Unit1|U2|tmp_rf[1][14]~feeder_combout\);

-- Location: FF_X39_Y40_N21
\Unit1|U2|tmp_rf[1][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[1][14]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[1][14]~q\);

-- Location: FF_X41_Y44_N11
\Unit1|U2|tmp_rf[2][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	asdata => \Unit1|U1|Mux1~0_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|U2|Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[2][14]~q\);

-- Location: FF_X42_Y43_N7
\Unit1|U2|tmp_rf[0][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	asdata => \Unit1|U1|Mux1~0_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|U2|Decoder0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[0][14]~q\);

-- Location: LCCOMB_X42_Y43_N6
\Unit1|U2|Mux1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux1~4_combout\ = (\Unit0|U0|RFr1a_ctrl\(1) & ((\Unit1|U2|tmp_rf[2][14]~q\) # ((\Unit0|U0|RFr1a_ctrl\(0))))) # (!\Unit0|U0|RFr1a_ctrl\(1) & (((\Unit1|U2|tmp_rf[0][14]~q\ & !\Unit0|U0|RFr1a_ctrl\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(1),
	datab => \Unit1|U2|tmp_rf[2][14]~q\,
	datac => \Unit1|U2|tmp_rf[0][14]~q\,
	datad => \Unit0|U0|RFr1a_ctrl\(0),
	combout => \Unit1|U2|Mux1~4_combout\);

-- Location: LCCOMB_X39_Y40_N6
\Unit1|U2|Mux1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux1~5_combout\ = (\Unit0|U0|RFr1a_ctrl\(0) & ((\Unit1|U2|Mux1~4_combout\ & (\Unit1|U2|tmp_rf[3][14]~q\)) # (!\Unit1|U2|Mux1~4_combout\ & ((\Unit1|U2|tmp_rf[1][14]~q\))))) # (!\Unit0|U0|RFr1a_ctrl\(0) & (((\Unit1|U2|Mux1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[3][14]~q\,
	datab => \Unit1|U2|tmp_rf[1][14]~q\,
	datac => \Unit0|U0|RFr1a_ctrl\(0),
	datad => \Unit1|U2|Mux1~4_combout\,
	combout => \Unit1|U2|Mux1~5_combout\);

-- Location: LCCOMB_X40_Y45_N18
\Unit1|U2|tmp_rf[10][14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[10][14]~feeder_combout\ = \Unit1|U1|Mux1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|U1|Mux1~0_combout\,
	combout => \Unit1|U2|tmp_rf[10][14]~feeder_combout\);

-- Location: FF_X40_Y45_N19
\Unit1|U2|tmp_rf[10][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[10][14]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[10][14]~q\);

-- Location: FF_X39_Y45_N13
\Unit1|U2|tmp_rf[8][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	asdata => \Unit1|U1|Mux1~0_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|U2|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[8][14]~q\);

-- Location: LCCOMB_X39_Y45_N12
\Unit1|U2|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux1~2_combout\ = (\Unit0|U0|RFr1a_ctrl\(0) & (((\Unit0|U0|RFr1a_ctrl\(1))))) # (!\Unit0|U0|RFr1a_ctrl\(0) & ((\Unit0|U0|RFr1a_ctrl\(1) & (\Unit1|U2|tmp_rf[10][14]~q\)) # (!\Unit0|U0|RFr1a_ctrl\(1) & ((\Unit1|U2|tmp_rf[8][14]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(0),
	datab => \Unit1|U2|tmp_rf[10][14]~q\,
	datac => \Unit1|U2|tmp_rf[8][14]~q\,
	datad => \Unit0|U0|RFr1a_ctrl\(1),
	combout => \Unit1|U2|Mux1~2_combout\);

-- Location: FF_X40_Y43_N21
\Unit1|U2|tmp_rf[9][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	asdata => \Unit1|U1|Mux1~0_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|U2|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[9][14]~q\);

-- Location: LCCOMB_X40_Y43_N20
\Unit1|U2|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux1~3_combout\ = (\Unit1|U2|Mux1~2_combout\ & ((\Unit1|U2|tmp_rf[11][14]~q\) # ((!\Unit0|U0|RFr1a_ctrl\(0))))) # (!\Unit1|U2|Mux1~2_combout\ & (((\Unit1|U2|tmp_rf[9][14]~q\ & \Unit0|U0|RFr1a_ctrl\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[11][14]~q\,
	datab => \Unit1|U2|Mux1~2_combout\,
	datac => \Unit1|U2|tmp_rf[9][14]~q\,
	datad => \Unit0|U0|RFr1a_ctrl\(0),
	combout => \Unit1|U2|Mux1~3_combout\);

-- Location: LCCOMB_X40_Y41_N14
\Unit1|U2|Mux1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux1~6_combout\ = (\Unit0|U0|RFr1a_ctrl\(3) & (((\Unit0|U0|RFr1a_ctrl\(2)) # (\Unit1|U2|Mux1~3_combout\)))) # (!\Unit0|U0|RFr1a_ctrl\(3) & (\Unit1|U2|Mux1~5_combout\ & (!\Unit0|U0|RFr1a_ctrl\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(3),
	datab => \Unit1|U2|Mux1~5_combout\,
	datac => \Unit0|U0|RFr1a_ctrl\(2),
	datad => \Unit1|U2|Mux1~3_combout\,
	combout => \Unit1|U2|Mux1~6_combout\);

-- Location: LCCOMB_X41_Y43_N12
\Unit1|U2|tmp_rf[6][14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[6][14]~feeder_combout\ = \Unit1|U1|Mux1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Unit1|U1|Mux1~0_combout\,
	combout => \Unit1|U2|tmp_rf[6][14]~feeder_combout\);

-- Location: FF_X41_Y43_N13
\Unit1|U2|tmp_rf[6][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[6][14]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[6][14]~q\);

-- Location: LCCOMB_X35_Y43_N20
\Unit1|U2|tmp_rf[4][14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[4][14]~feeder_combout\ = \Unit1|U1|Mux1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|U1|Mux1~0_combout\,
	combout => \Unit1|U2|tmp_rf[4][14]~feeder_combout\);

-- Location: FF_X35_Y43_N21
\Unit1|U2|tmp_rf[4][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[4][14]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[4][14]~q\);

-- Location: LCCOMB_X35_Y43_N30
\Unit1|U2|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux1~0_combout\ = (\Unit0|U0|RFr1a_ctrl\(1) & (((\Unit0|U0|RFr1a_ctrl\(0))))) # (!\Unit0|U0|RFr1a_ctrl\(1) & ((\Unit0|U0|RFr1a_ctrl\(0) & (\Unit1|U2|tmp_rf[5][14]~q\)) # (!\Unit0|U0|RFr1a_ctrl\(0) & ((\Unit1|U2|tmp_rf[4][14]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[5][14]~q\,
	datab => \Unit1|U2|tmp_rf[4][14]~q\,
	datac => \Unit0|U0|RFr1a_ctrl\(1),
	datad => \Unit0|U0|RFr1a_ctrl\(0),
	combout => \Unit1|U2|Mux1~0_combout\);

-- Location: LCCOMB_X42_Y41_N4
\Unit1|U2|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux1~1_combout\ = (\Unit0|U0|RFr1a_ctrl\(1) & ((\Unit1|U2|Mux1~0_combout\ & (\Unit1|U2|tmp_rf[7][14]~q\)) # (!\Unit1|U2|Mux1~0_combout\ & ((\Unit1|U2|tmp_rf[6][14]~q\))))) # (!\Unit0|U0|RFr1a_ctrl\(1) & (((\Unit1|U2|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[7][14]~q\,
	datab => \Unit0|U0|RFr1a_ctrl\(1),
	datac => \Unit1|U2|tmp_rf[6][14]~q\,
	datad => \Unit1|U2|Mux1~0_combout\,
	combout => \Unit1|U2|Mux1~1_combout\);

-- Location: LCCOMB_X40_Y41_N22
\Unit1|U2|Mux1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux1~9_combout\ = (\Unit0|U0|RFr1a_ctrl\(2) & ((\Unit1|U2|Mux1~6_combout\ & (\Unit1|U2|Mux1~8_combout\)) # (!\Unit1|U2|Mux1~6_combout\ & ((\Unit1|U2|Mux1~1_combout\))))) # (!\Unit0|U0|RFr1a_ctrl\(2) & (((\Unit1|U2|Mux1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(2),
	datab => \Unit1|U2|Mux1~8_combout\,
	datac => \Unit1|U2|Mux1~6_combout\,
	datad => \Unit1|U2|Mux1~1_combout\,
	combout => \Unit1|U2|Mux1~9_combout\);

-- Location: FF_X40_Y41_N23
\Unit1|U2|RFr1[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|Mux1~9_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit0|U0|RFr1e_ctrl~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|RFr1\(14));

-- Location: LCCOMB_X38_Y42_N28
\Unit1|U3|Add0~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|Add0~63_combout\ = \Unit1|U2|RFr2\(12) $ (\Unit0|U0|ALUs_ctrl\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Unit1|U2|RFr2\(12),
	datad => \Unit0|U0|ALUs_ctrl\(0),
	combout => \Unit1|U3|Add0~63_combout\);

-- Location: LCCOMB_X39_Y42_N10
\Unit1|U3|Add0~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|Add0~64_combout\ = (\Unit1|U2|RFr1\(12) & ((\Unit1|U3|Add0~63_combout\ & (\Unit1|U3|Add0~60\ & VCC)) # (!\Unit1|U3|Add0~63_combout\ & (!\Unit1|U3|Add0~60\)))) # (!\Unit1|U2|RFr1\(12) & ((\Unit1|U3|Add0~63_combout\ & (!\Unit1|U3|Add0~60\)) # 
-- (!\Unit1|U3|Add0~63_combout\ & ((\Unit1|U3|Add0~60\) # (GND)))))
-- \Unit1|U3|Add0~65\ = CARRY((\Unit1|U2|RFr1\(12) & (!\Unit1|U3|Add0~63_combout\ & !\Unit1|U3|Add0~60\)) # (!\Unit1|U2|RFr1\(12) & ((!\Unit1|U3|Add0~60\) # (!\Unit1|U3|Add0~63_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|RFr1\(12),
	datab => \Unit1|U3|Add0~63_combout\,
	datad => VCC,
	cin => \Unit1|U3|Add0~60\,
	combout => \Unit1|U3|Add0~64_combout\,
	cout => \Unit1|U3|Add0~65\);

-- Location: LCCOMB_X39_Y42_N12
\Unit1|U3|Add0~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|Add0~69_combout\ = ((\Unit1|U3|Add0~68_combout\ $ (\Unit1|U2|RFr1\(13) $ (!\Unit1|U3|Add0~65\)))) # (GND)
-- \Unit1|U3|Add0~70\ = CARRY((\Unit1|U3|Add0~68_combout\ & ((\Unit1|U2|RFr1\(13)) # (!\Unit1|U3|Add0~65\))) # (!\Unit1|U3|Add0~68_combout\ & (\Unit1|U2|RFr1\(13) & !\Unit1|U3|Add0~65\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U3|Add0~68_combout\,
	datab => \Unit1|U2|RFr1\(13),
	datad => VCC,
	cin => \Unit1|U3|Add0~65\,
	combout => \Unit1|U3|Add0~69_combout\,
	cout => \Unit1|U3|Add0~70\);

-- Location: LCCOMB_X39_Y42_N14
\Unit1|U3|Add0~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|Add0~74_combout\ = (\Unit1|U3|Add0~73_combout\ & ((\Unit1|U2|RFr1\(14) & (\Unit1|U3|Add0~70\ & VCC)) # (!\Unit1|U2|RFr1\(14) & (!\Unit1|U3|Add0~70\)))) # (!\Unit1|U3|Add0~73_combout\ & ((\Unit1|U2|RFr1\(14) & (!\Unit1|U3|Add0~70\)) # 
-- (!\Unit1|U2|RFr1\(14) & ((\Unit1|U3|Add0~70\) # (GND)))))
-- \Unit1|U3|Add0~75\ = CARRY((\Unit1|U3|Add0~73_combout\ & (!\Unit1|U2|RFr1\(14) & !\Unit1|U3|Add0~70\)) # (!\Unit1|U3|Add0~73_combout\ & ((!\Unit1|U3|Add0~70\) # (!\Unit1|U2|RFr1\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U3|Add0~73_combout\,
	datab => \Unit1|U2|RFr1\(14),
	datad => VCC,
	cin => \Unit1|U3|Add0~70\,
	combout => \Unit1|U3|Add0~74_combout\,
	cout => \Unit1|U3|Add0~75\);

-- Location: LCCOMB_X36_Y43_N24
\Unit1|U2|tmp_rf[11][14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[11][14]~feeder_combout\ = \Unit1|U1|Mux1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Unit1|U1|Mux1~0_combout\,
	combout => \Unit1|U2|tmp_rf[11][14]~feeder_combout\);

-- Location: FF_X36_Y43_N25
\Unit1|U2|tmp_rf[11][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[11][14]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[11][14]~q\);

-- Location: LCCOMB_X40_Y45_N14
\Unit1|U2|Mux17~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux17~2_combout\ = (\Unit0|U0|RFr2a_ctrl\(1) & ((\Unit1|U2|tmp_rf[10][14]~q\) # ((\Unit0|U0|RFr2a_ctrl\(0))))) # (!\Unit0|U0|RFr2a_ctrl\(1) & (((!\Unit0|U0|RFr2a_ctrl\(0) & \Unit1|U2|tmp_rf[8][14]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr2a_ctrl\(1),
	datab => \Unit1|U2|tmp_rf[10][14]~q\,
	datac => \Unit0|U0|RFr2a_ctrl\(0),
	datad => \Unit1|U2|tmp_rf[8][14]~q\,
	combout => \Unit1|U2|Mux17~2_combout\);

-- Location: LCCOMB_X40_Y43_N12
\Unit1|U2|Mux17~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux17~3_combout\ = (\Unit0|U0|RFr2a_ctrl\(0) & ((\Unit1|U2|Mux17~2_combout\ & ((\Unit1|U2|tmp_rf[11][14]~q\))) # (!\Unit1|U2|Mux17~2_combout\ & (\Unit1|U2|tmp_rf[9][14]~q\)))) # (!\Unit0|U0|RFr2a_ctrl\(0) & (((\Unit1|U2|Mux17~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr2a_ctrl\(0),
	datab => \Unit1|U2|tmp_rf[9][14]~q\,
	datac => \Unit1|U2|tmp_rf[11][14]~q\,
	datad => \Unit1|U2|Mux17~2_combout\,
	combout => \Unit1|U2|Mux17~3_combout\);

-- Location: LCCOMB_X40_Y43_N2
\Unit1|U2|Mux17~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux17~6_combout\ = (\Unit0|U0|RFr2a_ctrl\(2) & (((\Unit0|U0|RFr2a_ctrl\(3))))) # (!\Unit0|U0|RFr2a_ctrl\(2) & ((\Unit0|U0|RFr2a_ctrl\(3) & ((\Unit1|U2|Mux17~3_combout\))) # (!\Unit0|U0|RFr2a_ctrl\(3) & (\Unit1|U2|Mux17~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|Mux17~5_combout\,
	datab => \Unit0|U0|RFr2a_ctrl\(2),
	datac => \Unit1|U2|Mux17~3_combout\,
	datad => \Unit0|U0|RFr2a_ctrl\(3),
	combout => \Unit1|U2|Mux17~6_combout\);

-- Location: LCCOMB_X35_Y43_N26
\Unit1|U2|Mux17~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux17~7_combout\ = (\Unit0|U0|RFr2a_ctrl\(0) & ((\Unit1|U2|tmp_rf[13][14]~q\) # ((\Unit0|U0|RFr2a_ctrl\(1))))) # (!\Unit0|U0|RFr2a_ctrl\(0) & (((\Unit1|U2|tmp_rf[12][14]~q\ & !\Unit0|U0|RFr2a_ctrl\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr2a_ctrl\(0),
	datab => \Unit1|U2|tmp_rf[13][14]~q\,
	datac => \Unit1|U2|tmp_rf[12][14]~q\,
	datad => \Unit0|U0|RFr2a_ctrl\(1),
	combout => \Unit1|U2|Mux17~7_combout\);

-- Location: LCCOMB_X42_Y41_N10
\Unit1|U2|Mux17~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux17~8_combout\ = (\Unit0|U0|RFr2a_ctrl\(1) & ((\Unit1|U2|Mux17~7_combout\ & (\Unit1|U2|tmp_rf[15][14]~q\)) # (!\Unit1|U2|Mux17~7_combout\ & ((\Unit1|U2|tmp_rf[14][14]~q\))))) # (!\Unit0|U0|RFr2a_ctrl\(1) & (((\Unit1|U2|Mux17~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[15][14]~q\,
	datab => \Unit1|U2|tmp_rf[14][14]~q\,
	datac => \Unit0|U0|RFr2a_ctrl\(1),
	datad => \Unit1|U2|Mux17~7_combout\,
	combout => \Unit1|U2|Mux17~8_combout\);

-- Location: FF_X40_Y43_N11
\Unit1|U2|tmp_rf[5][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U1|Mux1~0_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[5][14]~q\);

-- Location: LCCOMB_X35_Y43_N0
\Unit1|U2|Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux17~0_combout\ = (\Unit0|U0|RFr2a_ctrl\(0) & (((\Unit1|U2|tmp_rf[5][14]~q\) # (\Unit0|U0|RFr2a_ctrl\(1))))) # (!\Unit0|U0|RFr2a_ctrl\(0) & (\Unit1|U2|tmp_rf[4][14]~q\ & ((!\Unit0|U0|RFr2a_ctrl\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr2a_ctrl\(0),
	datab => \Unit1|U2|tmp_rf[4][14]~q\,
	datac => \Unit1|U2|tmp_rf[5][14]~q\,
	datad => \Unit0|U0|RFr2a_ctrl\(1),
	combout => \Unit1|U2|Mux17~0_combout\);

-- Location: LCCOMB_X42_Y41_N8
\Unit1|U2|Mux17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux17~1_combout\ = (\Unit0|U0|RFr2a_ctrl\(1) & ((\Unit1|U2|Mux17~0_combout\ & (\Unit1|U2|tmp_rf[7][14]~q\)) # (!\Unit1|U2|Mux17~0_combout\ & ((\Unit1|U2|tmp_rf[6][14]~q\))))) # (!\Unit0|U0|RFr2a_ctrl\(1) & (((\Unit1|U2|Mux17~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[7][14]~q\,
	datab => \Unit0|U0|RFr2a_ctrl\(1),
	datac => \Unit1|U2|tmp_rf[6][14]~q\,
	datad => \Unit1|U2|Mux17~0_combout\,
	combout => \Unit1|U2|Mux17~1_combout\);

-- Location: LCCOMB_X40_Y41_N0
\Unit1|U2|Mux17~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux17~9_combout\ = (\Unit0|U0|RFr2a_ctrl\(2) & ((\Unit1|U2|Mux17~6_combout\ & (\Unit1|U2|Mux17~8_combout\)) # (!\Unit1|U2|Mux17~6_combout\ & ((\Unit1|U2|Mux17~1_combout\))))) # (!\Unit0|U0|RFr2a_ctrl\(2) & (\Unit1|U2|Mux17~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr2a_ctrl\(2),
	datab => \Unit1|U2|Mux17~6_combout\,
	datac => \Unit1|U2|Mux17~8_combout\,
	datad => \Unit1|U2|Mux17~1_combout\,
	combout => \Unit1|U2|Mux17~9_combout\);

-- Location: FF_X40_Y41_N1
\Unit1|U2|RFr2[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|Mux17~9_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit0|U0|RFr2e_ctrl~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|RFr2\(14));

-- Location: LCCOMB_X40_Y41_N2
\Unit1|U3|Add0~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|Add0~72_combout\ = (!\Unit0|U0|ALUs_ctrl\(1) & ((\Unit0|U0|ALUs_ctrl\(0) & (\Unit1|U2|RFr2\(14))) # (!\Unit0|U0|ALUs_ctrl\(0) & ((\Unit1|U2|RFr1\(14))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|ALUs_ctrl\(0),
	datab => \Unit1|U2|RFr2\(14),
	datac => \Unit1|U2|RFr1\(14),
	datad => \Unit0|U0|ALUs_ctrl\(1),
	combout => \Unit1|U3|Add0~72_combout\);

-- Location: LCCOMB_X39_Y42_N28
\Unit1|U3|Add0~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|Add0~76_combout\ = (\Unit1|U3|Add0~72_combout\) # ((\Unit0|U0|ALUs_ctrl\(1) & \Unit1|U3|Add0~74_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|ALUs_ctrl\(1),
	datac => \Unit1|U3|Add0~74_combout\,
	datad => \Unit1|U3|Add0~72_combout\,
	combout => \Unit1|U3|Add0~76_combout\);

-- Location: LCCOMB_X43_Y42_N22
\Unit1|U1|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U1|Mux0~0_combout\ = (\Unit0|U0|RFs_ctrl\(0) & ((\Unit2|altsyncram_component|auto_generated|q_a\(15)) # ((\Unit0|U0|RFs_ctrl\(1))))) # (!\Unit0|U0|RFs_ctrl\(0) & (((!\Unit0|U0|RFs_ctrl\(1) & \Unit1|U3|Add0~81_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFs_ctrl\(0),
	datab => \Unit2|altsyncram_component|auto_generated|q_a\(15),
	datac => \Unit0|U0|RFs_ctrl\(1),
	datad => \Unit1|U3|Add0~81_combout\,
	combout => \Unit1|U1|Mux0~0_combout\);

-- Location: LCCOMB_X42_Y40_N0
\Unit1|U2|tmp_rf[1][15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[1][15]~feeder_combout\ = \Unit1|U1|Mux0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Unit1|U1|Mux0~0_combout\,
	combout => \Unit1|U2|tmp_rf[1][15]~feeder_combout\);

-- Location: FF_X42_Y40_N1
\Unit1|U2|tmp_rf[1][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[1][15]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[1][15]~q\);

-- Location: LCCOMB_X43_Y41_N4
\Unit1|U2|Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux16~0_combout\ = (\Unit0|U0|RFr2a_ctrl\(3) & ((\Unit1|U2|tmp_rf[9][15]~q\) # ((\Unit0|U0|RFr2a_ctrl\(2))))) # (!\Unit0|U0|RFr2a_ctrl\(3) & (((\Unit1|U2|tmp_rf[1][15]~q\ & !\Unit0|U0|RFr2a_ctrl\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[9][15]~q\,
	datab => \Unit1|U2|tmp_rf[1][15]~q\,
	datac => \Unit0|U0|RFr2a_ctrl\(3),
	datad => \Unit0|U0|RFr2a_ctrl\(2),
	combout => \Unit1|U2|Mux16~0_combout\);

-- Location: FF_X43_Y42_N23
\Unit1|U2|tmp_rf[13][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U1|Mux0~0_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[13][15]~q\);

-- Location: LCCOMB_X43_Y41_N14
\Unit1|U2|Mux16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux16~1_combout\ = (\Unit0|U0|RFr2a_ctrl\(2) & ((\Unit1|U2|Mux16~0_combout\ & ((\Unit1|U2|tmp_rf[13][15]~q\))) # (!\Unit1|U2|Mux16~0_combout\ & (\Unit1|U2|tmp_rf[5][15]~q\)))) # (!\Unit0|U0|RFr2a_ctrl\(2) & (((\Unit1|U2|Mux16~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[5][15]~q\,
	datab => \Unit0|U0|RFr2a_ctrl\(2),
	datac => \Unit1|U2|Mux16~0_combout\,
	datad => \Unit1|U2|tmp_rf[13][15]~q\,
	combout => \Unit1|U2|Mux16~1_combout\);

-- Location: FF_X39_Y45_N5
\Unit1|U2|tmp_rf[12][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	asdata => \Unit1|U1|Mux0~0_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|U2|Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[12][15]~q\);

-- Location: FF_X42_Y43_N25
\Unit1|U2|tmp_rf[0][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	asdata => \Unit1|U1|Mux0~0_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|U2|Decoder0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[0][15]~q\);

-- Location: FF_X43_Y43_N25
\Unit1|U2|tmp_rf[4][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	asdata => \Unit1|U1|Mux0~0_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|U2|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[4][15]~q\);

-- Location: LCCOMB_X43_Y43_N24
\Unit1|U2|Mux16~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux16~4_combout\ = (\Unit0|U0|RFr2a_ctrl\(2) & (((\Unit1|U2|tmp_rf[4][15]~q\) # (\Unit0|U0|RFr2a_ctrl\(3))))) # (!\Unit0|U0|RFr2a_ctrl\(2) & (\Unit1|U2|tmp_rf[0][15]~q\ & ((!\Unit0|U0|RFr2a_ctrl\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr2a_ctrl\(2),
	datab => \Unit1|U2|tmp_rf[0][15]~q\,
	datac => \Unit1|U2|tmp_rf[4][15]~q\,
	datad => \Unit0|U0|RFr2a_ctrl\(3),
	combout => \Unit1|U2|Mux16~4_combout\);

-- Location: LCCOMB_X43_Y45_N0
\Unit1|U2|Mux16~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux16~5_combout\ = (\Unit0|U0|RFr2a_ctrl\(3) & ((\Unit1|U2|Mux16~4_combout\ & ((\Unit1|U2|tmp_rf[12][15]~q\))) # (!\Unit1|U2|Mux16~4_combout\ & (\Unit1|U2|tmp_rf[8][15]~q\)))) # (!\Unit0|U0|RFr2a_ctrl\(3) & (((\Unit1|U2|Mux16~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[8][15]~q\,
	datab => \Unit1|U2|tmp_rf[12][15]~q\,
	datac => \Unit0|U0|RFr2a_ctrl\(3),
	datad => \Unit1|U2|Mux16~4_combout\,
	combout => \Unit1|U2|Mux16~5_combout\);

-- Location: LCCOMB_X43_Y45_N4
\Unit1|U2|tmp_rf[10][15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[10][15]~feeder_combout\ = \Unit1|U1|Mux0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|U1|Mux0~0_combout\,
	combout => \Unit1|U2|tmp_rf[10][15]~feeder_combout\);

-- Location: FF_X43_Y45_N5
\Unit1|U2|tmp_rf[10][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[10][15]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[10][15]~q\);

-- Location: LCCOMB_X42_Y40_N2
\Unit1|U2|tmp_rf[2][15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[2][15]~feeder_combout\ = \Unit1|U1|Mux0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Unit1|U1|Mux0~0_combout\,
	combout => \Unit1|U2|tmp_rf[2][15]~feeder_combout\);

-- Location: FF_X42_Y40_N3
\Unit1|U2|tmp_rf[2][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[2][15]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[2][15]~q\);

-- Location: FF_X43_Y44_N5
\Unit1|U2|tmp_rf[6][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	asdata => \Unit1|U1|Mux0~0_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|U2|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[6][15]~q\);

-- Location: LCCOMB_X43_Y44_N22
\Unit1|U2|Mux16~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux16~2_combout\ = (\Unit0|U0|RFr2a_ctrl\(3) & (((\Unit0|U0|RFr2a_ctrl\(2))))) # (!\Unit0|U0|RFr2a_ctrl\(3) & ((\Unit0|U0|RFr2a_ctrl\(2) & ((\Unit1|U2|tmp_rf[6][15]~q\))) # (!\Unit0|U0|RFr2a_ctrl\(2) & (\Unit1|U2|tmp_rf[2][15]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr2a_ctrl\(3),
	datab => \Unit1|U2|tmp_rf[2][15]~q\,
	datac => \Unit1|U2|tmp_rf[6][15]~q\,
	datad => \Unit0|U0|RFr2a_ctrl\(2),
	combout => \Unit1|U2|Mux16~2_combout\);

-- Location: LCCOMB_X43_Y45_N6
\Unit1|U2|tmp_rf[14][15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[14][15]~feeder_combout\ = \Unit1|U1|Mux0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|U1|Mux0~0_combout\,
	combout => \Unit1|U2|tmp_rf[14][15]~feeder_combout\);

-- Location: FF_X43_Y45_N7
\Unit1|U2|tmp_rf[14][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[14][15]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[14][15]~q\);

-- Location: LCCOMB_X43_Y45_N22
\Unit1|U2|Mux16~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux16~3_combout\ = (\Unit0|U0|RFr2a_ctrl\(3) & ((\Unit1|U2|Mux16~2_combout\ & ((\Unit1|U2|tmp_rf[14][15]~q\))) # (!\Unit1|U2|Mux16~2_combout\ & (\Unit1|U2|tmp_rf[10][15]~q\)))) # (!\Unit0|U0|RFr2a_ctrl\(3) & (((\Unit1|U2|Mux16~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr2a_ctrl\(3),
	datab => \Unit1|U2|tmp_rf[10][15]~q\,
	datac => \Unit1|U2|Mux16~2_combout\,
	datad => \Unit1|U2|tmp_rf[14][15]~q\,
	combout => \Unit1|U2|Mux16~3_combout\);

-- Location: LCCOMB_X42_Y45_N4
\Unit1|U2|Mux16~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux16~6_combout\ = (\Unit0|U0|RFr2a_ctrl\(1) & ((\Unit0|U0|RFr2a_ctrl\(0)) # ((\Unit1|U2|Mux16~3_combout\)))) # (!\Unit0|U0|RFr2a_ctrl\(1) & (!\Unit0|U0|RFr2a_ctrl\(0) & (\Unit1|U2|Mux16~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr2a_ctrl\(1),
	datab => \Unit0|U0|RFr2a_ctrl\(0),
	datac => \Unit1|U2|Mux16~5_combout\,
	datad => \Unit1|U2|Mux16~3_combout\,
	combout => \Unit1|U2|Mux16~6_combout\);

-- Location: LCCOMB_X40_Y41_N8
\Unit1|U2|Mux16~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux16~9_combout\ = (\Unit0|U0|RFr2a_ctrl\(0) & ((\Unit1|U2|Mux16~6_combout\ & (\Unit1|U2|Mux16~8_combout\)) # (!\Unit1|U2|Mux16~6_combout\ & ((\Unit1|U2|Mux16~1_combout\))))) # (!\Unit0|U0|RFr2a_ctrl\(0) & (((\Unit1|U2|Mux16~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|Mux16~8_combout\,
	datab => \Unit1|U2|Mux16~1_combout\,
	datac => \Unit0|U0|RFr2a_ctrl\(0),
	datad => \Unit1|U2|Mux16~6_combout\,
	combout => \Unit1|U2|Mux16~9_combout\);

-- Location: FF_X40_Y41_N9
\Unit1|U2|RFr2[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|Mux16~9_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit0|U0|RFr2e_ctrl~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|RFr2\(15));

-- Location: LCCOMB_X40_Y41_N6
\Unit1|U3|Add0~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|Add0~77_combout\ = (!\Unit0|U0|ALUs_ctrl\(1) & ((\Unit0|U0|ALUs_ctrl\(0) & ((\Unit1|U2|RFr2\(15)))) # (!\Unit0|U0|ALUs_ctrl\(0) & (\Unit1|U2|RFr1\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|RFr1\(15),
	datab => \Unit1|U2|RFr2\(15),
	datac => \Unit0|U0|ALUs_ctrl\(0),
	datad => \Unit0|U0|ALUs_ctrl\(1),
	combout => \Unit1|U3|Add0~77_combout\);

-- Location: LCCOMB_X42_Y41_N0
\Unit1|U2|tmp_rf[15][15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[15][15]~feeder_combout\ = \Unit1|U1|Mux0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Unit1|U1|Mux0~0_combout\,
	combout => \Unit1|U2|tmp_rf[15][15]~feeder_combout\);

-- Location: FF_X42_Y41_N1
\Unit1|U2|tmp_rf[15][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[15][15]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[15][15]~q\);

-- Location: LCCOMB_X42_Y41_N30
\Unit1|U2|tmp_rf[7][15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[7][15]~feeder_combout\ = \Unit1|U1|Mux0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Unit1|U1|Mux0~0_combout\,
	combout => \Unit1|U2|tmp_rf[7][15]~feeder_combout\);

-- Location: FF_X42_Y41_N31
\Unit1|U2|tmp_rf[7][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[7][15]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[7][15]~q\);

-- Location: LCCOMB_X42_Y42_N24
\Unit1|U2|tmp_rf[11][15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[11][15]~feeder_combout\ = \Unit1|U1|Mux0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|U1|Mux0~0_combout\,
	combout => \Unit1|U2|tmp_rf[11][15]~feeder_combout\);

-- Location: FF_X42_Y42_N25
\Unit1|U2|tmp_rf[11][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[11][15]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[11][15]~q\);

-- Location: LCCOMB_X42_Y42_N18
\Unit1|U2|tmp_rf[3][15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[3][15]~feeder_combout\ = \Unit1|U1|Mux0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|U1|Mux0~0_combout\,
	combout => \Unit1|U2|tmp_rf[3][15]~feeder_combout\);

-- Location: FF_X42_Y42_N19
\Unit1|U2|tmp_rf[3][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[3][15]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[3][15]~q\);

-- Location: LCCOMB_X42_Y42_N20
\Unit1|U2|Mux0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux0~7_combout\ = (\Unit0|U0|RFr1a_ctrl\(2) & (((\Unit0|U0|RFr1a_ctrl\(3))))) # (!\Unit0|U0|RFr1a_ctrl\(2) & ((\Unit0|U0|RFr1a_ctrl\(3) & (\Unit1|U2|tmp_rf[11][15]~q\)) # (!\Unit0|U0|RFr1a_ctrl\(3) & ((\Unit1|U2|tmp_rf[3][15]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(2),
	datab => \Unit1|U2|tmp_rf[11][15]~q\,
	datac => \Unit0|U0|RFr1a_ctrl\(3),
	datad => \Unit1|U2|tmp_rf[3][15]~q\,
	combout => \Unit1|U2|Mux0~7_combout\);

-- Location: LCCOMB_X42_Y41_N22
\Unit1|U2|Mux0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux0~8_combout\ = (\Unit0|U0|RFr1a_ctrl\(2) & ((\Unit1|U2|Mux0~7_combout\ & (\Unit1|U2|tmp_rf[15][15]~q\)) # (!\Unit1|U2|Mux0~7_combout\ & ((\Unit1|U2|tmp_rf[7][15]~q\))))) # (!\Unit0|U0|RFr1a_ctrl\(2) & (((\Unit1|U2|Mux0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(2),
	datab => \Unit1|U2|tmp_rf[15][15]~q\,
	datac => \Unit1|U2|tmp_rf[7][15]~q\,
	datad => \Unit1|U2|Mux0~7_combout\,
	combout => \Unit1|U2|Mux0~8_combout\);

-- Location: LCCOMB_X39_Y45_N18
\Unit1|U2|tmp_rf[8][15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[8][15]~feeder_combout\ = \Unit1|U1|Mux0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Unit1|U1|Mux0~0_combout\,
	combout => \Unit1|U2|tmp_rf[8][15]~feeder_combout\);

-- Location: FF_X39_Y45_N19
\Unit1|U2|tmp_rf[8][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[8][15]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[8][15]~q\);

-- Location: LCCOMB_X39_Y45_N4
\Unit1|U2|Mux0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux0~5_combout\ = (\Unit1|U2|Mux0~4_combout\ & (((\Unit1|U2|tmp_rf[12][15]~q\)) # (!\Unit0|U0|RFr1a_ctrl\(3)))) # (!\Unit1|U2|Mux0~4_combout\ & (\Unit0|U0|RFr1a_ctrl\(3) & ((\Unit1|U2|tmp_rf[8][15]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|Mux0~4_combout\,
	datab => \Unit0|U0|RFr1a_ctrl\(3),
	datac => \Unit1|U2|tmp_rf[12][15]~q\,
	datad => \Unit1|U2|tmp_rf[8][15]~q\,
	combout => \Unit1|U2|Mux0~5_combout\);

-- Location: LCCOMB_X43_Y44_N4
\Unit1|U2|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux0~2_combout\ = (\Unit0|U0|RFr1a_ctrl\(2) & (((\Unit1|U2|tmp_rf[6][15]~q\) # (\Unit0|U0|RFr1a_ctrl\(3))))) # (!\Unit0|U0|RFr1a_ctrl\(2) & (\Unit1|U2|tmp_rf[2][15]~q\ & ((!\Unit0|U0|RFr1a_ctrl\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(2),
	datab => \Unit1|U2|tmp_rf[2][15]~q\,
	datac => \Unit1|U2|tmp_rf[6][15]~q\,
	datad => \Unit0|U0|RFr1a_ctrl\(3),
	combout => \Unit1|U2|Mux0~2_combout\);

-- Location: LCCOMB_X43_Y45_N24
\Unit1|U2|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux0~3_combout\ = (\Unit0|U0|RFr1a_ctrl\(3) & ((\Unit1|U2|Mux0~2_combout\ & ((\Unit1|U2|tmp_rf[14][15]~q\))) # (!\Unit1|U2|Mux0~2_combout\ & (\Unit1|U2|tmp_rf[10][15]~q\)))) # (!\Unit0|U0|RFr1a_ctrl\(3) & (((\Unit1|U2|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(3),
	datab => \Unit1|U2|tmp_rf[10][15]~q\,
	datac => \Unit1|U2|Mux0~2_combout\,
	datad => \Unit1|U2|tmp_rf[14][15]~q\,
	combout => \Unit1|U2|Mux0~3_combout\);

-- Location: LCCOMB_X39_Y45_N22
\Unit1|U2|Mux0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux0~6_combout\ = (\Unit0|U0|RFr1a_ctrl\(0) & (((\Unit0|U0|RFr1a_ctrl\(1))))) # (!\Unit0|U0|RFr1a_ctrl\(0) & ((\Unit0|U0|RFr1a_ctrl\(1) & ((\Unit1|U2|Mux0~3_combout\))) # (!\Unit0|U0|RFr1a_ctrl\(1) & (\Unit1|U2|Mux0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(0),
	datab => \Unit1|U2|Mux0~5_combout\,
	datac => \Unit1|U2|Mux0~3_combout\,
	datad => \Unit0|U0|RFr1a_ctrl\(1),
	combout => \Unit1|U2|Mux0~6_combout\);

-- Location: LCCOMB_X40_Y41_N30
\Unit1|U2|Mux0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux0~9_combout\ = (\Unit0|U0|RFr1a_ctrl\(0) & ((\Unit1|U2|Mux0~6_combout\ & ((\Unit1|U2|Mux0~8_combout\))) # (!\Unit1|U2|Mux0~6_combout\ & (\Unit1|U2|Mux0~1_combout\)))) # (!\Unit0|U0|RFr1a_ctrl\(0) & (((\Unit1|U2|Mux0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|Mux0~1_combout\,
	datab => \Unit1|U2|Mux0~8_combout\,
	datac => \Unit0|U0|RFr1a_ctrl\(0),
	datad => \Unit1|U2|Mux0~6_combout\,
	combout => \Unit1|U2|Mux0~9_combout\);

-- Location: FF_X40_Y41_N31
\Unit1|U2|RFr1[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|Mux0~9_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit0|U0|RFr1e_ctrl~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|RFr1\(15));

-- Location: LCCOMB_X40_Y41_N16
\Unit1|U3|Add0~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|Add0~78_combout\ = \Unit1|U2|RFr2\(15) $ (\Unit0|U0|ALUs_ctrl\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Unit1|U2|RFr2\(15),
	datac => \Unit0|U0|ALUs_ctrl\(0),
	combout => \Unit1|U3|Add0~78_combout\);

-- Location: LCCOMB_X39_Y42_N16
\Unit1|U3|Add0~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|Add0~79_combout\ = \Unit1|U2|RFr1\(15) $ (\Unit1|U3|Add0~75\ $ (!\Unit1|U3|Add0~78_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Unit1|U2|RFr1\(15),
	datad => \Unit1|U3|Add0~78_combout\,
	cin => \Unit1|U3|Add0~75\,
	combout => \Unit1|U3|Add0~79_combout\);

-- Location: LCCOMB_X39_Y42_N22
\Unit1|U3|Add0~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|Add0~81_combout\ = (\Unit1|U3|Add0~77_combout\) # ((\Unit0|U0|ALUs_ctrl\(1) & \Unit1|U3|Add0~79_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|ALUs_ctrl\(1),
	datac => \Unit1|U3|Add0~77_combout\,
	datad => \Unit1|U3|Add0~79_combout\,
	combout => \Unit1|U3|Add0~81_combout\);

-- Location: M9K_X37_Y42_N0
\Unit2|altsyncram_component|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003C000703B1C0E870391C0E070371C0D870351C0D070331C0C86406010EC4230088400064104001164044CC10320CC0432340C4043000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "m9k_mem.hex",
	init_file_layout => "port_a",
	logical_ram_name => "MainMemory:Unit2|altsyncram:altsyncram_component|altsyncram_fos3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 8,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \Unit0|U0|Mwe_ctrl~q\,
	portare => \Unit0|U0|Mre_ctrl~q\,
	clk0 => \cpu_clk~inputclkctrl_outclk\,
	portadatain => \Unit2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \Unit2|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \Unit2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X40_Y44_N30
\Unit1|U1|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U1|Mux2~0_combout\ = (\Unit0|U0|RFs_ctrl\(0) & ((\Unit2|altsyncram_component|auto_generated|q_a\(13)) # ((\Unit0|U0|RFs_ctrl\(1))))) # (!\Unit0|U0|RFs_ctrl\(0) & (((!\Unit0|U0|RFs_ctrl\(1) & \Unit1|U3|Add0~71_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFs_ctrl\(0),
	datab => \Unit2|altsyncram_component|auto_generated|q_a\(13),
	datac => \Unit0|U0|RFs_ctrl\(1),
	datad => \Unit1|U3|Add0~71_combout\,
	combout => \Unit1|U1|Mux2~0_combout\);

-- Location: LCCOMB_X41_Y41_N6
\Unit1|U2|tmp_rf[7][13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[7][13]~feeder_combout\ = \Unit1|U1|Mux2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|U1|Mux2~0_combout\,
	combout => \Unit1|U2|tmp_rf[7][13]~feeder_combout\);

-- Location: FF_X41_Y41_N7
\Unit1|U2|tmp_rf[7][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[7][13]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[7][13]~q\);

-- Location: LCCOMB_X41_Y41_N8
\Unit1|U2|tmp_rf[3][13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[3][13]~feeder_combout\ = \Unit1|U1|Mux2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|U1|Mux2~0_combout\,
	combout => \Unit1|U2|tmp_rf[3][13]~feeder_combout\);

-- Location: FF_X41_Y41_N9
\Unit1|U2|tmp_rf[3][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[3][13]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[3][13]~q\);

-- Location: LCCOMB_X43_Y41_N18
\Unit1|U2|Mux2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux2~7_combout\ = (\Unit0|U0|RFr1a_ctrl\(3) & (((\Unit0|U0|RFr1a_ctrl\(2))))) # (!\Unit0|U0|RFr1a_ctrl\(3) & ((\Unit0|U0|RFr1a_ctrl\(2) & (\Unit1|U2|tmp_rf[7][13]~q\)) # (!\Unit0|U0|RFr1a_ctrl\(2) & ((\Unit1|U2|tmp_rf[3][13]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(3),
	datab => \Unit1|U2|tmp_rf[7][13]~q\,
	datac => \Unit0|U0|RFr1a_ctrl\(2),
	datad => \Unit1|U2|tmp_rf[3][13]~q\,
	combout => \Unit1|U2|Mux2~7_combout\);

-- Location: LCCOMB_X42_Y42_N6
\Unit1|U2|tmp_rf[11][13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[11][13]~feeder_combout\ = \Unit1|U1|Mux2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|U1|Mux2~0_combout\,
	combout => \Unit1|U2|tmp_rf[11][13]~feeder_combout\);

-- Location: FF_X42_Y42_N7
\Unit1|U2|tmp_rf[11][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[11][13]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[11][13]~q\);

-- Location: FF_X40_Y44_N31
\Unit1|U2|tmp_rf[15][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U1|Mux2~0_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[15][13]~q\);

-- Location: LCCOMB_X43_Y41_N20
\Unit1|U2|Mux2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux2~8_combout\ = (\Unit0|U0|RFr1a_ctrl\(3) & ((\Unit1|U2|Mux2~7_combout\ & ((\Unit1|U2|tmp_rf[15][13]~q\))) # (!\Unit1|U2|Mux2~7_combout\ & (\Unit1|U2|tmp_rf[11][13]~q\)))) # (!\Unit0|U0|RFr1a_ctrl\(3) & (\Unit1|U2|Mux2~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(3),
	datab => \Unit1|U2|Mux2~7_combout\,
	datac => \Unit1|U2|tmp_rf[11][13]~q\,
	datad => \Unit1|U2|tmp_rf[15][13]~q\,
	combout => \Unit1|U2|Mux2~8_combout\);

-- Location: LCCOMB_X43_Y41_N0
\Unit1|U2|tmp_rf[6][13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[6][13]~feeder_combout\ = \Unit1|U1|Mux2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|U1|Mux2~0_combout\,
	combout => \Unit1|U2|tmp_rf[6][13]~feeder_combout\);

-- Location: FF_X43_Y41_N1
\Unit1|U2|tmp_rf[6][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[6][13]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[6][13]~q\);

-- Location: FF_X42_Y43_N23
\Unit1|U2|tmp_rf[10][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	asdata => \Unit1|U1|Mux2~0_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|U2|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[10][13]~q\);

-- Location: LCCOMB_X41_Y44_N26
\Unit1|U2|tmp_rf[2][13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[2][13]~feeder_combout\ = \Unit1|U1|Mux2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|U1|Mux2~0_combout\,
	combout => \Unit1|U2|tmp_rf[2][13]~feeder_combout\);

-- Location: FF_X41_Y44_N27
\Unit1|U2|tmp_rf[2][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[2][13]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[2][13]~q\);

-- Location: LCCOMB_X42_Y43_N22
\Unit1|U2|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux2~0_combout\ = (\Unit0|U0|RFr1a_ctrl\(2) & (\Unit0|U0|RFr1a_ctrl\(3))) # (!\Unit0|U0|RFr1a_ctrl\(2) & ((\Unit0|U0|RFr1a_ctrl\(3) & (\Unit1|U2|tmp_rf[10][13]~q\)) # (!\Unit0|U0|RFr1a_ctrl\(3) & ((\Unit1|U2|tmp_rf[2][13]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(2),
	datab => \Unit0|U0|RFr1a_ctrl\(3),
	datac => \Unit1|U2|tmp_rf[10][13]~q\,
	datad => \Unit1|U2|tmp_rf[2][13]~q\,
	combout => \Unit1|U2|Mux2~0_combout\);

-- Location: LCCOMB_X42_Y41_N2
\Unit1|U2|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux2~1_combout\ = (\Unit1|U2|Mux2~0_combout\ & ((\Unit1|U2|tmp_rf[14][13]~q\) # ((!\Unit0|U0|RFr1a_ctrl\(2))))) # (!\Unit1|U2|Mux2~0_combout\ & (((\Unit1|U2|tmp_rf[6][13]~q\ & \Unit0|U0|RFr1a_ctrl\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[14][13]~q\,
	datab => \Unit1|U2|tmp_rf[6][13]~q\,
	datac => \Unit1|U2|Mux2~0_combout\,
	datad => \Unit0|U0|RFr1a_ctrl\(2),
	combout => \Unit1|U2|Mux2~1_combout\);

-- Location: LCCOMB_X38_Y41_N2
\Unit1|U2|Mux2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux2~9_combout\ = (\Unit1|U2|Mux2~6_combout\ & ((\Unit1|U2|Mux2~8_combout\) # ((!\Unit0|U0|RFr1a_ctrl\(1))))) # (!\Unit1|U2|Mux2~6_combout\ & (((\Unit1|U2|Mux2~1_combout\ & \Unit0|U0|RFr1a_ctrl\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|Mux2~6_combout\,
	datab => \Unit1|U2|Mux2~8_combout\,
	datac => \Unit1|U2|Mux2~1_combout\,
	datad => \Unit0|U0|RFr1a_ctrl\(1),
	combout => \Unit1|U2|Mux2~9_combout\);

-- Location: FF_X38_Y41_N3
\Unit1|U2|RFr1[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|Mux2~9_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit0|U0|RFr1e_ctrl~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|RFr1\(13));

-- Location: LCCOMB_X38_Y41_N24
\Unit1|U3|Add0~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|Add0~67_combout\ = (!\Unit0|U0|ALUs_ctrl\(1) & ((\Unit0|U0|ALUs_ctrl\(0) & (\Unit1|U2|RFr2\(13))) # (!\Unit0|U0|ALUs_ctrl\(0) & ((\Unit1|U2|RFr1\(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|RFr2\(13),
	datab => \Unit0|U0|ALUs_ctrl\(0),
	datac => \Unit0|U0|ALUs_ctrl\(1),
	datad => \Unit1|U2|RFr1\(13),
	combout => \Unit1|U3|Add0~67_combout\);

-- Location: LCCOMB_X39_Y42_N30
\Unit1|U3|Add0~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|Add0~71_combout\ = (\Unit1|U3|Add0~67_combout\) # ((\Unit0|U0|ALUs_ctrl\(1) & \Unit1|U3|Add0~69_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|ALUs_ctrl\(1),
	datab => \Unit1|U3|Add0~67_combout\,
	datad => \Unit1|U3|Add0~69_combout\,
	combout => \Unit1|U3|Add0~71_combout\);

-- Location: LCCOMB_X39_Y46_N16
\Unit1|U1|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U1|Mux3~0_combout\ = (\Unit0|U0|RFs_ctrl\(0) & ((\Unit2|altsyncram_component|auto_generated|q_a\(12)) # ((\Unit0|U0|RFs_ctrl\(1))))) # (!\Unit0|U0|RFs_ctrl\(0) & (((!\Unit0|U0|RFs_ctrl\(1) & \Unit1|U3|Add0~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFs_ctrl\(0),
	datab => \Unit2|altsyncram_component|auto_generated|q_a\(12),
	datac => \Unit0|U0|RFs_ctrl\(1),
	datad => \Unit1|U3|Add0~66_combout\,
	combout => \Unit1|U1|Mux3~0_combout\);

-- Location: LCCOMB_X38_Y46_N0
\Unit1|U2|tmp_rf[7][12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[7][12]~feeder_combout\ = \Unit1|U1|Mux3~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Unit1|U1|Mux3~0_combout\,
	combout => \Unit1|U2|tmp_rf[7][12]~feeder_combout\);

-- Location: FF_X38_Y46_N1
\Unit1|U2|tmp_rf[7][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[7][12]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[7][12]~q\);

-- Location: FF_X39_Y46_N17
\Unit1|U2|tmp_rf[5][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U1|Mux3~0_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[5][12]~q\);

-- Location: LCCOMB_X38_Y46_N2
\Unit1|U2|Mux19~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux19~3_combout\ = (\Unit1|U2|Mux19~2_combout\ & ((\Unit1|U2|tmp_rf[7][12]~q\) # ((!\Unit0|U0|RFr2a_ctrl\(0))))) # (!\Unit1|U2|Mux19~2_combout\ & (((\Unit0|U0|RFr2a_ctrl\(0) & \Unit1|U2|tmp_rf[5][12]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|Mux19~2_combout\,
	datab => \Unit1|U2|tmp_rf[7][12]~q\,
	datac => \Unit0|U0|RFr2a_ctrl\(0),
	datad => \Unit1|U2|tmp_rf[5][12]~q\,
	combout => \Unit1|U2|Mux19~3_combout\);

-- Location: LCCOMB_X36_Y46_N18
\Unit1|U2|tmp_rf[2][12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[2][12]~feeder_combout\ = \Unit1|U1|Mux3~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|U1|Mux3~0_combout\,
	combout => \Unit1|U2|tmp_rf[2][12]~feeder_combout\);

-- Location: FF_X36_Y46_N19
\Unit1|U2|tmp_rf[2][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[2][12]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[2][12]~q\);

-- Location: FF_X39_Y43_N23
\Unit1|U2|tmp_rf[3][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	asdata => \Unit1|U1|Mux3~0_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|U2|Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[3][12]~q\);

-- Location: LCCOMB_X39_Y40_N24
\Unit1|U2|tmp_rf[0][12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[0][12]~feeder_combout\ = \Unit1|U1|Mux3~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|U1|Mux3~0_combout\,
	combout => \Unit1|U2|tmp_rf[0][12]~feeder_combout\);

-- Location: FF_X39_Y40_N25
\Unit1|U2|tmp_rf[0][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[0][12]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[0][12]~q\);

-- Location: LCCOMB_X39_Y40_N30
\Unit1|U2|tmp_rf[1][12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[1][12]~feeder_combout\ = \Unit1|U1|Mux3~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|U1|Mux3~0_combout\,
	combout => \Unit1|U2|tmp_rf[1][12]~feeder_combout\);

-- Location: FF_X39_Y40_N31
\Unit1|U2|tmp_rf[1][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[1][12]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[1][12]~q\);

-- Location: LCCOMB_X39_Y40_N18
\Unit1|U2|Mux19~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux19~4_combout\ = (\Unit0|U0|RFr2a_ctrl\(0) & (((\Unit1|U2|tmp_rf[1][12]~q\) # (\Unit0|U0|RFr2a_ctrl\(1))))) # (!\Unit0|U0|RFr2a_ctrl\(0) & (\Unit1|U2|tmp_rf[0][12]~q\ & ((!\Unit0|U0|RFr2a_ctrl\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr2a_ctrl\(0),
	datab => \Unit1|U2|tmp_rf[0][12]~q\,
	datac => \Unit1|U2|tmp_rf[1][12]~q\,
	datad => \Unit0|U0|RFr2a_ctrl\(1),
	combout => \Unit1|U2|Mux19~4_combout\);

-- Location: LCCOMB_X39_Y40_N28
\Unit1|U2|Mux19~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux19~5_combout\ = (\Unit0|U0|RFr2a_ctrl\(1) & ((\Unit1|U2|Mux19~4_combout\ & ((\Unit1|U2|tmp_rf[3][12]~q\))) # (!\Unit1|U2|Mux19~4_combout\ & (\Unit1|U2|tmp_rf[2][12]~q\)))) # (!\Unit0|U0|RFr2a_ctrl\(1) & (((\Unit1|U2|Mux19~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr2a_ctrl\(1),
	datab => \Unit1|U2|tmp_rf[2][12]~q\,
	datac => \Unit1|U2|tmp_rf[3][12]~q\,
	datad => \Unit1|U2|Mux19~4_combout\,
	combout => \Unit1|U2|Mux19~5_combout\);

-- Location: LCCOMB_X38_Y42_N20
\Unit1|U2|Mux19~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux19~6_combout\ = (\Unit0|U0|RFr2a_ctrl\(3) & (\Unit0|U0|RFr2a_ctrl\(2))) # (!\Unit0|U0|RFr2a_ctrl\(3) & ((\Unit0|U0|RFr2a_ctrl\(2) & (\Unit1|U2|Mux19~3_combout\)) # (!\Unit0|U0|RFr2a_ctrl\(2) & ((\Unit1|U2|Mux19~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr2a_ctrl\(3),
	datab => \Unit0|U0|RFr2a_ctrl\(2),
	datac => \Unit1|U2|Mux19~3_combout\,
	datad => \Unit1|U2|Mux19~5_combout\,
	combout => \Unit1|U2|Mux19~6_combout\);

-- Location: LCCOMB_X35_Y42_N24
\Unit1|U2|tmp_rf[8][12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[8][12]~feeder_combout\ = \Unit1|U1|Mux3~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|U1|Mux3~0_combout\,
	combout => \Unit1|U2|tmp_rf[8][12]~feeder_combout\);

-- Location: FF_X35_Y42_N25
\Unit1|U2|tmp_rf[8][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[8][12]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[8][12]~q\);

-- Location: LCCOMB_X35_Y42_N8
\Unit1|U2|Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux19~0_combout\ = (\Unit0|U0|RFr2a_ctrl\(0) & ((\Unit1|U2|tmp_rf[9][12]~q\) # ((\Unit0|U0|RFr2a_ctrl\(1))))) # (!\Unit0|U0|RFr2a_ctrl\(0) & (((\Unit1|U2|tmp_rf[8][12]~q\ & !\Unit0|U0|RFr2a_ctrl\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[9][12]~q\,
	datab => \Unit1|U2|tmp_rf[8][12]~q\,
	datac => \Unit0|U0|RFr2a_ctrl\(0),
	datad => \Unit0|U0|RFr2a_ctrl\(1),
	combout => \Unit1|U2|Mux19~0_combout\);

-- Location: LCCOMB_X39_Y46_N30
\Unit1|U2|tmp_rf[11][12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[11][12]~feeder_combout\ = \Unit1|U1|Mux3~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|U1|Mux3~0_combout\,
	combout => \Unit1|U2|tmp_rf[11][12]~feeder_combout\);

-- Location: FF_X39_Y46_N31
\Unit1|U2|tmp_rf[11][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[11][12]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[11][12]~q\);

-- Location: LCCOMB_X35_Y42_N18
\Unit1|U2|Mux19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux19~1_combout\ = (\Unit0|U0|RFr2a_ctrl\(1) & ((\Unit1|U2|Mux19~0_combout\ & ((\Unit1|U2|tmp_rf[11][12]~q\))) # (!\Unit1|U2|Mux19~0_combout\ & (\Unit1|U2|tmp_rf[10][12]~q\)))) # (!\Unit0|U0|RFr2a_ctrl\(1) & (((\Unit1|U2|Mux19~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[10][12]~q\,
	datab => \Unit0|U0|RFr2a_ctrl\(1),
	datac => \Unit1|U2|Mux19~0_combout\,
	datad => \Unit1|U2|tmp_rf[11][12]~q\,
	combout => \Unit1|U2|Mux19~1_combout\);

-- Location: LCCOMB_X38_Y42_N26
\Unit1|U2|Mux19~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux19~9_combout\ = (\Unit1|U2|Mux19~6_combout\ & ((\Unit1|U2|Mux19~8_combout\) # ((!\Unit0|U0|RFr2a_ctrl\(3))))) # (!\Unit1|U2|Mux19~6_combout\ & (((\Unit0|U0|RFr2a_ctrl\(3) & \Unit1|U2|Mux19~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|Mux19~8_combout\,
	datab => \Unit1|U2|Mux19~6_combout\,
	datac => \Unit0|U0|RFr2a_ctrl\(3),
	datad => \Unit1|U2|Mux19~1_combout\,
	combout => \Unit1|U2|Mux19~9_combout\);

-- Location: FF_X38_Y42_N27
\Unit1|U2|RFr2[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|Mux19~9_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit0|U0|RFr2e_ctrl~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|RFr2\(12));

-- Location: LCCOMB_X39_Y46_N12
\Unit1|U3|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|Add0~62_combout\ = (!\Unit0|U0|ALUs_ctrl\(1) & ((\Unit0|U0|ALUs_ctrl\(0) & ((\Unit1|U2|RFr2\(12)))) # (!\Unit0|U0|ALUs_ctrl\(0) & (\Unit1|U2|RFr1\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|RFr1\(12),
	datab => \Unit0|U0|ALUs_ctrl\(0),
	datac => \Unit1|U2|RFr2\(12),
	datad => \Unit0|U0|ALUs_ctrl\(1),
	combout => \Unit1|U3|Add0~62_combout\);

-- Location: LCCOMB_X39_Y46_N22
\Unit1|U3|Add0~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|Add0~66_combout\ = (\Unit1|U3|Add0~62_combout\) # ((\Unit0|U0|ALUs_ctrl\(1) & \Unit1|U3|Add0~64_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|ALUs_ctrl\(1),
	datac => \Unit1|U3|Add0~62_combout\,
	datad => \Unit1|U3|Add0~64_combout\,
	combout => \Unit1|U3|Add0~66_combout\);

-- Location: LCCOMB_X36_Y42_N8
\Unit0|U2|dir_addr[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U2|dir_addr\(2) = (GLOBAL(\Unit0|U0|IRld_ctrl~clkctrl_outclk\) & ((\Unit2|altsyncram_component|auto_generated|q_a\(2)))) # (!GLOBAL(\Unit0|U0|IRld_ctrl~clkctrl_outclk\) & (\Unit0|U2|dir_addr\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U2|dir_addr\(2),
	datab => \Unit2|altsyncram_component|auto_generated|q_a\(2),
	datad => \Unit0|U0|IRld_ctrl~clkctrl_outclk\,
	combout => \Unit0|U2|dir_addr\(2));

-- Location: LCCOMB_X36_Y42_N14
\Unit1|U1|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U1|Mux13~0_combout\ = (\Unit0|U0|RFs_ctrl\(1) & (((\Unit0|U0|RFs_ctrl\(0)) # (\Unit0|U2|dir_addr\(2))))) # (!\Unit0|U0|RFs_ctrl\(1) & (\Unit2|altsyncram_component|auto_generated|q_a\(2) & (\Unit0|U0|RFs_ctrl\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFs_ctrl\(1),
	datab => \Unit2|altsyncram_component|auto_generated|q_a\(2),
	datac => \Unit0|U0|RFs_ctrl\(0),
	datad => \Unit0|U2|dir_addr\(2),
	combout => \Unit1|U1|Mux13~0_combout\);

-- Location: LCCOMB_X36_Y42_N2
\Unit1|U1|Mux13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U1|Mux13~1_combout\ = (\Unit1|U1|Mux13~0_combout\) # ((\Unit1|U3|Add0~16_combout\ & (!\Unit0|U0|RFs_ctrl\(0) & !\Unit0|U0|RFs_ctrl\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U3|Add0~16_combout\,
	datab => \Unit0|U0|RFs_ctrl\(0),
	datac => \Unit1|U1|Mux13~0_combout\,
	datad => \Unit0|U0|RFs_ctrl\(1),
	combout => \Unit1|U1|Mux13~1_combout\);

-- Location: LCCOMB_X36_Y45_N24
\Unit1|U2|tmp_rf[7][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[7][2]~feeder_combout\ = \Unit1|U1|Mux13~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Unit1|U1|Mux13~1_combout\,
	combout => \Unit1|U2|tmp_rf[7][2]~feeder_combout\);

-- Location: FF_X36_Y45_N25
\Unit1|U2|tmp_rf[7][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[7][2]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[7][2]~q\);

-- Location: LCCOMB_X36_Y44_N0
\Unit1|U2|tmp_rf[4][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[4][2]~feeder_combout\ = \Unit1|U1|Mux13~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Unit1|U1|Mux13~1_combout\,
	combout => \Unit1|U2|tmp_rf[4][2]~feeder_combout\);

-- Location: FF_X36_Y44_N1
\Unit1|U2|tmp_rf[4][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[4][2]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[4][2]~q\);

-- Location: LCCOMB_X36_Y45_N2
\Unit1|U2|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux13~0_combout\ = (\Unit0|U0|RFr1a_ctrl\(1) & (((\Unit0|U0|RFr1a_ctrl\(0))))) # (!\Unit0|U0|RFr1a_ctrl\(1) & ((\Unit0|U0|RFr1a_ctrl\(0) & (\Unit1|U2|tmp_rf[5][2]~q\)) # (!\Unit0|U0|RFr1a_ctrl\(0) & ((\Unit1|U2|tmp_rf[4][2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[5][2]~q\,
	datab => \Unit1|U2|tmp_rf[4][2]~q\,
	datac => \Unit0|U0|RFr1a_ctrl\(1),
	datad => \Unit0|U0|RFr1a_ctrl\(0),
	combout => \Unit1|U2|Mux13~0_combout\);

-- Location: LCCOMB_X36_Y45_N26
\Unit1|U2|Mux13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux13~1_combout\ = (\Unit0|U0|RFr1a_ctrl\(1) & ((\Unit1|U2|Mux13~0_combout\ & ((\Unit1|U2|tmp_rf[7][2]~q\))) # (!\Unit1|U2|Mux13~0_combout\ & (\Unit1|U2|tmp_rf[6][2]~q\)))) # (!\Unit0|U0|RFr1a_ctrl\(1) & (((\Unit1|U2|Mux13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[6][2]~q\,
	datab => \Unit1|U2|tmp_rf[7][2]~q\,
	datac => \Unit0|U0|RFr1a_ctrl\(1),
	datad => \Unit1|U2|Mux13~0_combout\,
	combout => \Unit1|U2|Mux13~1_combout\);

-- Location: FF_X36_Y42_N9
\Unit1|U2|tmp_rf[14][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	asdata => \Unit1|U1|Mux13~1_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|U2|Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[14][2]~q\);

-- Location: LCCOMB_X35_Y43_N12
\Unit1|U2|tmp_rf[13][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[13][2]~feeder_combout\ = \Unit1|U1|Mux13~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Unit1|U1|Mux13~1_combout\,
	combout => \Unit1|U2|tmp_rf[13][2]~feeder_combout\);

-- Location: FF_X35_Y43_N13
\Unit1|U2|tmp_rf[13][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[13][2]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[13][2]~q\);

-- Location: LCCOMB_X35_Y43_N22
\Unit1|U2|Mux13~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux13~7_combout\ = (\Unit0|U0|RFr1a_ctrl\(1) & (((\Unit0|U0|RFr1a_ctrl\(0))))) # (!\Unit0|U0|RFr1a_ctrl\(1) & ((\Unit0|U0|RFr1a_ctrl\(0) & ((\Unit1|U2|tmp_rf[13][2]~q\))) # (!\Unit0|U0|RFr1a_ctrl\(0) & (\Unit1|U2|tmp_rf[12][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[12][2]~q\,
	datab => \Unit0|U0|RFr1a_ctrl\(1),
	datac => \Unit0|U0|RFr1a_ctrl\(0),
	datad => \Unit1|U2|tmp_rf[13][2]~q\,
	combout => \Unit1|U2|Mux13~7_combout\);

-- Location: LCCOMB_X36_Y41_N20
\Unit1|U2|Mux13~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux13~8_combout\ = (\Unit1|U2|Mux13~7_combout\ & ((\Unit1|U2|tmp_rf[15][2]~q\) # ((!\Unit0|U0|RFr1a_ctrl\(1))))) # (!\Unit1|U2|Mux13~7_combout\ & (((\Unit1|U2|tmp_rf[14][2]~q\ & \Unit0|U0|RFr1a_ctrl\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[15][2]~q\,
	datab => \Unit1|U2|tmp_rf[14][2]~q\,
	datac => \Unit1|U2|Mux13~7_combout\,
	datad => \Unit0|U0|RFr1a_ctrl\(1),
	combout => \Unit1|U2|Mux13~8_combout\);

-- Location: LCCOMB_X38_Y40_N16
\Unit1|U2|Mux13~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux13~9_combout\ = (\Unit1|U2|Mux13~6_combout\ & (((\Unit1|U2|Mux13~8_combout\)) # (!\Unit0|U0|RFr1a_ctrl\(2)))) # (!\Unit1|U2|Mux13~6_combout\ & (\Unit0|U0|RFr1a_ctrl\(2) & (\Unit1|U2|Mux13~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|Mux13~6_combout\,
	datab => \Unit0|U0|RFr1a_ctrl\(2),
	datac => \Unit1|U2|Mux13~1_combout\,
	datad => \Unit1|U2|Mux13~8_combout\,
	combout => \Unit1|U2|Mux13~9_combout\);

-- Location: FF_X38_Y40_N17
\Unit1|U2|RFr1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|Mux13~9_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit0|U0|RFr1e_ctrl~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|RFr1\(2));

-- Location: LCCOMB_X38_Y43_N18
\Unit1|U3|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|Add0~12_combout\ = (!\Unit0|U0|ALUs_ctrl\(1) & ((\Unit0|U0|ALUs_ctrl\(0) & (\Unit1|U2|RFr2\(2))) # (!\Unit0|U0|ALUs_ctrl\(0) & ((\Unit1|U2|RFr1\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|RFr2\(2),
	datab => \Unit0|U0|ALUs_ctrl\(0),
	datac => \Unit0|U0|ALUs_ctrl\(1),
	datad => \Unit1|U2|RFr1\(2),
	combout => \Unit1|U3|Add0~12_combout\);

-- Location: LCCOMB_X39_Y43_N4
\Unit1|U3|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|Add0~16_combout\ = (\Unit1|U3|Add0~12_combout\) # ((\Unit0|U0|ALUs_ctrl\(1) & \Unit1|U3|Add0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|ALUs_ctrl\(1),
	datac => \Unit1|U3|Add0~14_combout\,
	datad => \Unit1|U3|Add0~12_combout\,
	combout => \Unit1|U3|Add0~16_combout\);

-- Location: LCCOMB_X39_Y44_N12
\Unit0|U2|dir_addr[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U2|dir_addr\(4) = (GLOBAL(\Unit0|U0|IRld_ctrl~clkctrl_outclk\) & ((\Unit2|altsyncram_component|auto_generated|q_a\(4)))) # (!GLOBAL(\Unit0|U0|IRld_ctrl~clkctrl_outclk\) & (\Unit0|U2|dir_addr\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U2|dir_addr\(4),
	datac => \Unit0|U0|IRld_ctrl~clkctrl_outclk\,
	datad => \Unit2|altsyncram_component|auto_generated|q_a\(4),
	combout => \Unit0|U2|dir_addr\(4));

-- Location: FF_X39_Y44_N7
\Unit0|U0|RFr2a_ctrl[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	asdata => \Unit0|U2|dir_addr\(4),
	sload => VCC,
	ena => \Unit0|U0|RFr2a_ctrl[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U0|RFr2a_ctrl\(0));

-- Location: LCCOMB_X39_Y45_N28
\Unit1|U2|tmp_rf[8][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[8][7]~feeder_combout\ = \Unit1|U1|Mux8~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|U1|Mux8~1_combout\,
	combout => \Unit1|U2|tmp_rf[8][7]~feeder_combout\);

-- Location: FF_X39_Y45_N29
\Unit1|U2|tmp_rf[8][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[8][7]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[8][7]~q\);

-- Location: LCCOMB_X42_Y43_N10
\Unit1|U2|tmp_rf[0][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[0][7]~feeder_combout\ = \Unit1|U1|Mux8~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|U1|Mux8~1_combout\,
	combout => \Unit1|U2|tmp_rf[0][7]~feeder_combout\);

-- Location: FF_X42_Y43_N11
\Unit1|U2|tmp_rf[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[0][7]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[0][7]~q\);

-- Location: FF_X40_Y42_N11
\Unit1|U2|tmp_rf[4][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	asdata => \Unit1|U1|Mux8~1_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|U2|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[4][7]~q\);

-- Location: LCCOMB_X40_Y42_N10
\Unit1|U2|Mux24~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux24~4_combout\ = (\Unit0|U0|RFr2a_ctrl\(3) & (((\Unit0|U0|RFr2a_ctrl\(2))))) # (!\Unit0|U0|RFr2a_ctrl\(3) & ((\Unit0|U0|RFr2a_ctrl\(2) & ((\Unit1|U2|tmp_rf[4][7]~q\))) # (!\Unit0|U0|RFr2a_ctrl\(2) & (\Unit1|U2|tmp_rf[0][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr2a_ctrl\(3),
	datab => \Unit1|U2|tmp_rf[0][7]~q\,
	datac => \Unit1|U2|tmp_rf[4][7]~q\,
	datad => \Unit0|U0|RFr2a_ctrl\(2),
	combout => \Unit1|U2|Mux24~4_combout\);

-- Location: FF_X39_Y45_N3
\Unit1|U2|tmp_rf[12][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	asdata => \Unit1|U1|Mux8~1_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|U2|Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[12][7]~q\);

-- Location: LCCOMB_X40_Y45_N22
\Unit1|U2|Mux24~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux24~5_combout\ = (\Unit0|U0|RFr2a_ctrl\(3) & ((\Unit1|U2|Mux24~4_combout\ & ((\Unit1|U2|tmp_rf[12][7]~q\))) # (!\Unit1|U2|Mux24~4_combout\ & (\Unit1|U2|tmp_rf[8][7]~q\)))) # (!\Unit0|U0|RFr2a_ctrl\(3) & (((\Unit1|U2|Mux24~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr2a_ctrl\(3),
	datab => \Unit1|U2|tmp_rf[8][7]~q\,
	datac => \Unit1|U2|Mux24~4_combout\,
	datad => \Unit1|U2|tmp_rf[12][7]~q\,
	combout => \Unit1|U2|Mux24~5_combout\);

-- Location: FF_X43_Y44_N31
\Unit1|U2|tmp_rf[14][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	asdata => \Unit1|U1|Mux8~1_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|U2|Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[14][7]~q\);

-- Location: FF_X43_Y44_N3
\Unit1|U2|tmp_rf[6][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	asdata => \Unit1|U1|Mux8~1_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|U2|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[6][7]~q\);

-- Location: LCCOMB_X41_Y44_N6
\Unit1|U2|tmp_rf[2][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[2][7]~feeder_combout\ = \Unit1|U1|Mux8~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Unit1|U1|Mux8~1_combout\,
	combout => \Unit1|U2|tmp_rf[2][7]~feeder_combout\);

-- Location: FF_X41_Y44_N7
\Unit1|U2|tmp_rf[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[2][7]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[2][7]~q\);

-- Location: LCCOMB_X43_Y44_N6
\Unit1|U2|Mux24~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux24~2_combout\ = (\Unit0|U0|RFr2a_ctrl\(3) & (((\Unit0|U0|RFr2a_ctrl\(2))))) # (!\Unit0|U0|RFr2a_ctrl\(3) & ((\Unit0|U0|RFr2a_ctrl\(2) & (\Unit1|U2|tmp_rf[6][7]~q\)) # (!\Unit0|U0|RFr2a_ctrl\(2) & ((\Unit1|U2|tmp_rf[2][7]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr2a_ctrl\(3),
	datab => \Unit1|U2|tmp_rf[6][7]~q\,
	datac => \Unit1|U2|tmp_rf[2][7]~q\,
	datad => \Unit0|U0|RFr2a_ctrl\(2),
	combout => \Unit1|U2|Mux24~2_combout\);

-- Location: LCCOMB_X43_Y44_N0
\Unit1|U2|Mux24~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux24~3_combout\ = (\Unit0|U0|RFr2a_ctrl\(3) & ((\Unit1|U2|Mux24~2_combout\ & ((\Unit1|U2|tmp_rf[14][7]~q\))) # (!\Unit1|U2|Mux24~2_combout\ & (\Unit1|U2|tmp_rf[10][7]~q\)))) # (!\Unit0|U0|RFr2a_ctrl\(3) & (((\Unit1|U2|Mux24~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[10][7]~q\,
	datab => \Unit0|U0|RFr2a_ctrl\(3),
	datac => \Unit1|U2|tmp_rf[14][7]~q\,
	datad => \Unit1|U2|Mux24~2_combout\,
	combout => \Unit1|U2|Mux24~3_combout\);

-- Location: LCCOMB_X40_Y45_N4
\Unit1|U2|Mux24~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux24~6_combout\ = (\Unit0|U0|RFr2a_ctrl\(1) & ((\Unit0|U0|RFr2a_ctrl\(0)) # ((\Unit1|U2|Mux24~3_combout\)))) # (!\Unit0|U0|RFr2a_ctrl\(1) & (!\Unit0|U0|RFr2a_ctrl\(0) & (\Unit1|U2|Mux24~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr2a_ctrl\(1),
	datab => \Unit0|U0|RFr2a_ctrl\(0),
	datac => \Unit1|U2|Mux24~5_combout\,
	datad => \Unit1|U2|Mux24~3_combout\,
	combout => \Unit1|U2|Mux24~6_combout\);

-- Location: LCCOMB_X39_Y42_N26
\Unit1|U2|Mux24~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux24~9_combout\ = (\Unit0|U0|RFr2a_ctrl\(0) & ((\Unit1|U2|Mux24~6_combout\ & ((\Unit1|U2|Mux24~8_combout\))) # (!\Unit1|U2|Mux24~6_combout\ & (\Unit1|U2|Mux24~1_combout\)))) # (!\Unit0|U0|RFr2a_ctrl\(0) & (((\Unit1|U2|Mux24~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr2a_ctrl\(0),
	datab => \Unit1|U2|Mux24~1_combout\,
	datac => \Unit1|U2|Mux24~8_combout\,
	datad => \Unit1|U2|Mux24~6_combout\,
	combout => \Unit1|U2|Mux24~9_combout\);

-- Location: FF_X39_Y42_N27
\Unit1|U2|RFr2[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|Mux24~9_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit0|U0|RFr2e_ctrl~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|RFr2\(7));

-- Location: LCCOMB_X41_Y44_N0
\Unit1|U2|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux8~0_combout\ = (\Unit0|U0|RFr1a_ctrl\(2) & (((\Unit0|U0|RFr1a_ctrl\(3))))) # (!\Unit0|U0|RFr1a_ctrl\(2) & ((\Unit0|U0|RFr1a_ctrl\(3) & (\Unit1|U2|tmp_rf[9][7]~q\)) # (!\Unit0|U0|RFr1a_ctrl\(3) & ((\Unit1|U2|tmp_rf[1][7]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[9][7]~q\,
	datab => \Unit0|U0|RFr1a_ctrl\(2),
	datac => \Unit1|U2|tmp_rf[1][7]~q\,
	datad => \Unit0|U0|RFr1a_ctrl\(3),
	combout => \Unit1|U2|Mux8~0_combout\);

-- Location: LCCOMB_X42_Y44_N4
\Unit1|U2|Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux8~1_combout\ = (\Unit1|U2|Mux8~0_combout\ & (((\Unit1|U2|tmp_rf[13][7]~q\) # (!\Unit0|U0|RFr1a_ctrl\(2))))) # (!\Unit1|U2|Mux8~0_combout\ & (\Unit1|U2|tmp_rf[5][7]~q\ & ((\Unit0|U0|RFr1a_ctrl\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[5][7]~q\,
	datab => \Unit1|U2|tmp_rf[13][7]~q\,
	datac => \Unit1|U2|Mux8~0_combout\,
	datad => \Unit0|U0|RFr1a_ctrl\(2),
	combout => \Unit1|U2|Mux8~1_combout\);

-- Location: LCCOMB_X39_Y45_N2
\Unit1|U2|Mux8~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux8~5_combout\ = (\Unit1|U2|Mux8~4_combout\ & (((\Unit1|U2|tmp_rf[12][7]~q\)) # (!\Unit0|U0|RFr1a_ctrl\(3)))) # (!\Unit1|U2|Mux8~4_combout\ & (\Unit0|U0|RFr1a_ctrl\(3) & ((\Unit1|U2|tmp_rf[8][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|Mux8~4_combout\,
	datab => \Unit0|U0|RFr1a_ctrl\(3),
	datac => \Unit1|U2|tmp_rf[12][7]~q\,
	datad => \Unit1|U2|tmp_rf[8][7]~q\,
	combout => \Unit1|U2|Mux8~5_combout\);

-- Location: LCCOMB_X43_Y44_N20
\Unit1|U2|Mux8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux8~2_combout\ = (\Unit0|U0|RFr1a_ctrl\(3) & (((\Unit0|U0|RFr1a_ctrl\(2))))) # (!\Unit0|U0|RFr1a_ctrl\(3) & ((\Unit0|U0|RFr1a_ctrl\(2) & ((\Unit1|U2|tmp_rf[6][7]~q\))) # (!\Unit0|U0|RFr1a_ctrl\(2) & (\Unit1|U2|tmp_rf[2][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(3),
	datab => \Unit1|U2|tmp_rf[2][7]~q\,
	datac => \Unit0|U0|RFr1a_ctrl\(2),
	datad => \Unit1|U2|tmp_rf[6][7]~q\,
	combout => \Unit1|U2|Mux8~2_combout\);

-- Location: LCCOMB_X43_Y44_N16
\Unit1|U2|Mux8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux8~3_combout\ = (\Unit1|U2|Mux8~2_combout\ & (((\Unit1|U2|tmp_rf[14][7]~q\) # (!\Unit0|U0|RFr1a_ctrl\(3))))) # (!\Unit1|U2|Mux8~2_combout\ & (\Unit1|U2|tmp_rf[10][7]~q\ & ((\Unit0|U0|RFr1a_ctrl\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[10][7]~q\,
	datab => \Unit1|U2|Mux8~2_combout\,
	datac => \Unit1|U2|tmp_rf[14][7]~q\,
	datad => \Unit0|U0|RFr1a_ctrl\(3),
	combout => \Unit1|U2|Mux8~3_combout\);

-- Location: LCCOMB_X38_Y44_N8
\Unit1|U2|Mux8~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux8~6_combout\ = (\Unit0|U0|RFr1a_ctrl\(0) & (\Unit0|U0|RFr1a_ctrl\(1))) # (!\Unit0|U0|RFr1a_ctrl\(0) & ((\Unit0|U0|RFr1a_ctrl\(1) & ((\Unit1|U2|Mux8~3_combout\))) # (!\Unit0|U0|RFr1a_ctrl\(1) & (\Unit1|U2|Mux8~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(0),
	datab => \Unit0|U0|RFr1a_ctrl\(1),
	datac => \Unit1|U2|Mux8~5_combout\,
	datad => \Unit1|U2|Mux8~3_combout\,
	combout => \Unit1|U2|Mux8~6_combout\);

-- Location: LCCOMB_X39_Y44_N16
\Unit1|U2|Mux8~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux8~7_combout\ = (\Unit0|U0|RFr1a_ctrl\(3) & ((\Unit0|U0|RFr1a_ctrl\(2)) # ((\Unit1|U2|tmp_rf[11][7]~q\)))) # (!\Unit0|U0|RFr1a_ctrl\(3) & (!\Unit0|U0|RFr1a_ctrl\(2) & ((\Unit1|U2|tmp_rf[3][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(3),
	datab => \Unit0|U0|RFr1a_ctrl\(2),
	datac => \Unit1|U2|tmp_rf[11][7]~q\,
	datad => \Unit1|U2|tmp_rf[3][7]~q\,
	combout => \Unit1|U2|Mux8~7_combout\);

-- Location: LCCOMB_X38_Y44_N6
\Unit1|U2|tmp_rf[7][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[7][7]~feeder_combout\ = \Unit1|U1|Mux8~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|U1|Mux8~1_combout\,
	combout => \Unit1|U2|tmp_rf[7][7]~feeder_combout\);

-- Location: FF_X38_Y44_N7
\Unit1|U2|tmp_rf[7][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[7][7]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[7][7]~q\);

-- Location: LCCOMB_X38_Y44_N12
\Unit1|U2|Mux8~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux8~8_combout\ = (\Unit0|U0|RFr1a_ctrl\(2) & ((\Unit1|U2|Mux8~7_combout\ & (\Unit1|U2|tmp_rf[15][7]~q\)) # (!\Unit1|U2|Mux8~7_combout\ & ((\Unit1|U2|tmp_rf[7][7]~q\))))) # (!\Unit0|U0|RFr1a_ctrl\(2) & (\Unit1|U2|Mux8~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(2),
	datab => \Unit1|U2|Mux8~7_combout\,
	datac => \Unit1|U2|tmp_rf[15][7]~q\,
	datad => \Unit1|U2|tmp_rf[7][7]~q\,
	combout => \Unit1|U2|Mux8~8_combout\);

-- Location: LCCOMB_X38_Y44_N24
\Unit1|U2|Mux8~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux8~9_combout\ = (\Unit0|U0|RFr1a_ctrl\(0) & ((\Unit1|U2|Mux8~6_combout\ & ((\Unit1|U2|Mux8~8_combout\))) # (!\Unit1|U2|Mux8~6_combout\ & (\Unit1|U2|Mux8~1_combout\)))) # (!\Unit0|U0|RFr1a_ctrl\(0) & (((\Unit1|U2|Mux8~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(0),
	datab => \Unit1|U2|Mux8~1_combout\,
	datac => \Unit1|U2|Mux8~6_combout\,
	datad => \Unit1|U2|Mux8~8_combout\,
	combout => \Unit1|U2|Mux8~9_combout\);

-- Location: FF_X38_Y44_N25
\Unit1|U2|RFr1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|Mux8~9_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit0|U0|RFr1e_ctrl~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|RFr1\(7));

-- Location: LCCOMB_X40_Y42_N24
\Unit1|U3|Add0~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|Add0~37_combout\ = (!\Unit0|U0|ALUs_ctrl\(1) & ((\Unit0|U0|ALUs_ctrl\(0) & (\Unit1|U2|RFr2\(7))) # (!\Unit0|U0|ALUs_ctrl\(0) & ((\Unit1|U2|RFr1\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|ALUs_ctrl\(1),
	datab => \Unit0|U0|ALUs_ctrl\(0),
	datac => \Unit1|U2|RFr2\(7),
	datad => \Unit1|U2|RFr1\(7),
	combout => \Unit1|U3|Add0~37_combout\);

-- Location: LCCOMB_X39_Y42_N18
\Unit1|U3|Add0~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|Add0~41_combout\ = (\Unit1|U3|Add0~37_combout\) # ((\Unit0|U0|ALUs_ctrl\(1) & \Unit1|U3|Add0~39_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|ALUs_ctrl\(1),
	datab => \Unit1|U3|Add0~37_combout\,
	datad => \Unit1|U3|Add0~39_combout\,
	combout => \Unit1|U3|Add0~41_combout\);

-- Location: LCCOMB_X39_Y43_N8
\Unit1|U3|ALUz~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|ALUz~0_combout\ = (!\Unit1|U3|Add0~6_combout\ & (!\Unit1|U3|Add0~16_combout\ & (!\Unit1|U3|Add0~21_combout\ & !\Unit1|U3|Add0~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U3|Add0~6_combout\,
	datab => \Unit1|U3|Add0~16_combout\,
	datac => \Unit1|U3|Add0~21_combout\,
	datad => \Unit1|U3|Add0~11_combout\,
	combout => \Unit1|U3|ALUz~0_combout\);

-- Location: LCCOMB_X39_Y46_N4
\Unit1|U3|ALUz~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|ALUz~2_combout\ = (\Unit1|U3|ALUz~1_combout\ & (!\Unit1|U3|Add0~41_combout\ & (\Unit1|U3|ALUz~0_combout\ & !\Unit1|U3|Add0~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U3|ALUz~1_combout\,
	datab => \Unit1|U3|Add0~41_combout\,
	datac => \Unit1|U3|ALUz~0_combout\,
	datad => \Unit1|U3|Add0~36_combout\,
	combout => \Unit1|U3|ALUz~2_combout\);

-- Location: LCCOMB_X39_Y46_N18
\Unit1|U3|ALUz~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|ALUz~4_combout\ = (!\Unit1|U3|Add0~71_combout\ & (!\Unit1|U3|Add0~66_combout\ & (!\Unit1|U3|Add0~76_combout\ & !\Unit1|U3|Add0~81_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U3|Add0~71_combout\,
	datab => \Unit1|U3|Add0~66_combout\,
	datac => \Unit1|U3|Add0~76_combout\,
	datad => \Unit1|U3|Add0~81_combout\,
	combout => \Unit1|U3|ALUz~4_combout\);

-- Location: LCCOMB_X39_Y46_N24
\Unit1|U3|ALUz~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|ALUz~5_combout\ = (\Unit0|U0|jmpen_ctrl~q\ & (\Unit1|U3|ALUz~2_combout\ & (\Unit1|U3|ALUz~3_combout\ & \Unit1|U3|ALUz~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|jmpen_ctrl~q\,
	datab => \Unit1|U3|ALUz~2_combout\,
	datac => \Unit1|U3|ALUz~3_combout\,
	datad => \Unit1|U3|ALUz~4_combout\,
	combout => \Unit1|U3|ALUz~5_combout\);

-- Location: LCCOMB_X39_Y46_N6
\Unit0|U1|tmp_PC~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U1|tmp_PC~18_combout\ = \Unit0|U0|PCinc_ctrl~q\ $ (\Unit1|U3|ALUz~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Unit0|U0|PCinc_ctrl~q\,
	datad => \Unit1|U3|ALUz~5_combout\,
	combout => \Unit0|U1|tmp_PC~18_combout\);

-- Location: FF_X40_Y46_N15
\Unit0|U1|tmp_PC[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit0|U1|tmp_PC[7]~31_combout\,
	asdata => \Unit0|U2|dir_addr\(7),
	clrn => \Unit0|U0|PCclr_ctrl~q\,
	sload => \Unit0|U1|process_0~1_combout\,
	ena => \Unit0|U1|tmp_PC~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U1|tmp_PC\(7));

-- Location: LCCOMB_X38_Y45_N28
\Unit0|U3|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U3|Mux8~0_combout\ = (\Unit0|U0|Ms_ctrl\(1) & ((\Unit0|U0|Ms_ctrl\(0) & ((\Unit0|U2|dir_addr\(7)))) # (!\Unit0|U0|Ms_ctrl\(0) & (\Unit1|U2|RFr1\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|Ms_ctrl\(0),
	datab => \Unit1|U2|RFr1\(7),
	datac => \Unit0|U0|Ms_ctrl\(1),
	datad => \Unit0|U2|dir_addr\(7),
	combout => \Unit0|U3|Mux8~0_combout\);

-- Location: LCCOMB_X38_Y45_N14
\Unit0|U3|Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U3|Mux8~1_combout\ = (\Unit0|U3|Mux8~0_combout\) # ((!\Unit0|U0|Ms_ctrl\(0) & (\Unit0|U1|tmp_PC\(7) & !\Unit0|U0|Ms_ctrl\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|Ms_ctrl\(0),
	datab => \Unit0|U1|tmp_PC\(7),
	datac => \Unit0|U0|Ms_ctrl\(1),
	datad => \Unit0|U3|Mux8~0_combout\,
	combout => \Unit0|U3|Mux8~1_combout\);

-- Location: LCCOMB_X39_Y44_N18
\Unit0|U2|dir_addr[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U2|dir_addr\(7) = (GLOBAL(\Unit0|U0|IRld_ctrl~clkctrl_outclk\) & ((\Unit2|altsyncram_component|auto_generated|q_a\(7)))) # (!GLOBAL(\Unit0|U0|IRld_ctrl~clkctrl_outclk\) & (\Unit0|U2|dir_addr\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Unit0|U2|dir_addr\(7),
	datac => \Unit0|U0|IRld_ctrl~clkctrl_outclk\,
	datad => \Unit2|altsyncram_component|auto_generated|q_a\(7),
	combout => \Unit0|U2|dir_addr\(7));

-- Location: FF_X39_Y44_N25
\Unit0|U0|RFr2a_ctrl[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	asdata => \Unit0|U2|dir_addr\(7),
	sload => VCC,
	ena => \Unit0|U0|RFr2a_ctrl[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U0|RFr2a_ctrl\(3));

-- Location: LCCOMB_X39_Y44_N10
\Unit1|U1|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U1|Mux11~0_combout\ = (\Unit0|U0|RFs_ctrl\(0) & ((\Unit2|altsyncram_component|auto_generated|q_a\(4)) # ((\Unit0|U0|RFs_ctrl\(1))))) # (!\Unit0|U0|RFs_ctrl\(0) & (((\Unit0|U0|RFs_ctrl\(1) & \Unit0|U2|dir_addr\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFs_ctrl\(0),
	datab => \Unit2|altsyncram_component|auto_generated|q_a\(4),
	datac => \Unit0|U0|RFs_ctrl\(1),
	datad => \Unit0|U2|dir_addr\(4),
	combout => \Unit1|U1|Mux11~0_combout\);

-- Location: LCCOMB_X40_Y44_N26
\Unit1|U1|Mux11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U1|Mux11~1_combout\ = (\Unit1|U1|Mux11~0_combout\) # ((!\Unit0|U0|RFs_ctrl\(1) & (!\Unit0|U0|RFs_ctrl\(0) & \Unit1|U3|Add0~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFs_ctrl\(1),
	datab => \Unit0|U0|RFs_ctrl\(0),
	datac => \Unit1|U3|Add0~26_combout\,
	datad => \Unit1|U1|Mux11~0_combout\,
	combout => \Unit1|U1|Mux11~1_combout\);

-- Location: LCCOMB_X35_Y44_N16
\Unit1|U2|tmp_rf[2][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[2][4]~feeder_combout\ = \Unit1|U1|Mux11~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|U1|Mux11~1_combout\,
	combout => \Unit1|U2|tmp_rf[2][4]~feeder_combout\);

-- Location: FF_X35_Y44_N17
\Unit1|U2|tmp_rf[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[2][4]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[2][4]~q\);

-- Location: FF_X41_Y45_N17
\Unit1|U2|tmp_rf[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	asdata => \Unit1|U1|Mux11~1_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|U2|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[1][4]~q\);

-- Location: FF_X41_Y45_N31
\Unit1|U2|tmp_rf[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	asdata => \Unit1|U1|Mux11~1_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|U2|Decoder0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[0][4]~q\);

-- Location: LCCOMB_X41_Y45_N30
\Unit1|U2|Mux27~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux27~4_combout\ = (\Unit0|U0|RFr2a_ctrl\(0) & ((\Unit1|U2|tmp_rf[1][4]~q\) # ((\Unit0|U0|RFr2a_ctrl\(1))))) # (!\Unit0|U0|RFr2a_ctrl\(0) & (((\Unit1|U2|tmp_rf[0][4]~q\ & !\Unit0|U0|RFr2a_ctrl\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr2a_ctrl\(0),
	datab => \Unit1|U2|tmp_rf[1][4]~q\,
	datac => \Unit1|U2|tmp_rf[0][4]~q\,
	datad => \Unit0|U0|RFr2a_ctrl\(1),
	combout => \Unit1|U2|Mux27~4_combout\);

-- Location: LCCOMB_X35_Y44_N0
\Unit1|U2|Mux27~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux27~5_combout\ = (\Unit1|U2|Mux27~4_combout\ & ((\Unit1|U2|tmp_rf[3][4]~q\) # ((!\Unit0|U0|RFr2a_ctrl\(1))))) # (!\Unit1|U2|Mux27~4_combout\ & (((\Unit1|U2|tmp_rf[2][4]~q\ & \Unit0|U0|RFr2a_ctrl\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[3][4]~q\,
	datab => \Unit1|U2|tmp_rf[2][4]~q\,
	datac => \Unit1|U2|Mux27~4_combout\,
	datad => \Unit0|U0|RFr2a_ctrl\(1),
	combout => \Unit1|U2|Mux27~5_combout\);

-- Location: LCCOMB_X35_Y44_N30
\Unit1|U2|Mux27~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux27~6_combout\ = (\Unit0|U0|RFr2a_ctrl\(2) & ((\Unit1|U2|Mux27~3_combout\) # ((\Unit0|U0|RFr2a_ctrl\(3))))) # (!\Unit0|U0|RFr2a_ctrl\(2) & (((!\Unit0|U0|RFr2a_ctrl\(3) & \Unit1|U2|Mux27~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|Mux27~3_combout\,
	datab => \Unit0|U0|RFr2a_ctrl\(2),
	datac => \Unit0|U0|RFr2a_ctrl\(3),
	datad => \Unit1|U2|Mux27~5_combout\,
	combout => \Unit1|U2|Mux27~6_combout\);

-- Location: FF_X39_Y44_N31
\Unit1|U2|tmp_rf[11][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	asdata => \Unit1|U1|Mux11~1_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|U2|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[11][4]~q\);

-- Location: LCCOMB_X40_Y44_N12
\Unit1|U2|tmp_rf[10][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[10][4]~feeder_combout\ = \Unit1|U1|Mux11~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Unit1|U1|Mux11~1_combout\,
	combout => \Unit1|U2|tmp_rf[10][4]~feeder_combout\);

-- Location: FF_X40_Y44_N13
\Unit1|U2|tmp_rf[10][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[10][4]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[10][4]~q\);

-- Location: LCCOMB_X39_Y45_N26
\Unit1|U2|tmp_rf[8][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[8][4]~feeder_combout\ = \Unit1|U1|Mux11~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Unit1|U1|Mux11~1_combout\,
	combout => \Unit1|U2|tmp_rf[8][4]~feeder_combout\);

-- Location: FF_X39_Y45_N27
\Unit1|U2|tmp_rf[8][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[8][4]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[8][4]~q\);

-- Location: LCCOMB_X36_Y44_N20
\Unit1|U2|tmp_rf[9][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[9][4]~feeder_combout\ = \Unit1|U1|Mux11~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|U1|Mux11~1_combout\,
	combout => \Unit1|U2|tmp_rf[9][4]~feeder_combout\);

-- Location: FF_X36_Y44_N21
\Unit1|U2|tmp_rf[9][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[9][4]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[9][4]~q\);

-- Location: LCCOMB_X40_Y44_N0
\Unit1|U2|Mux27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux27~0_combout\ = (\Unit0|U0|RFr2a_ctrl\(1) & (((\Unit0|U0|RFr2a_ctrl\(0))))) # (!\Unit0|U0|RFr2a_ctrl\(1) & ((\Unit0|U0|RFr2a_ctrl\(0) & ((\Unit1|U2|tmp_rf[9][4]~q\))) # (!\Unit0|U0|RFr2a_ctrl\(0) & (\Unit1|U2|tmp_rf[8][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr2a_ctrl\(1),
	datab => \Unit1|U2|tmp_rf[8][4]~q\,
	datac => \Unit0|U0|RFr2a_ctrl\(0),
	datad => \Unit1|U2|tmp_rf[9][4]~q\,
	combout => \Unit1|U2|Mux27~0_combout\);

-- Location: LCCOMB_X40_Y44_N6
\Unit1|U2|Mux27~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux27~1_combout\ = (\Unit0|U0|RFr2a_ctrl\(1) & ((\Unit1|U2|Mux27~0_combout\ & (\Unit1|U2|tmp_rf[11][4]~q\)) # (!\Unit1|U2|Mux27~0_combout\ & ((\Unit1|U2|tmp_rf[10][4]~q\))))) # (!\Unit0|U0|RFr2a_ctrl\(1) & (((\Unit1|U2|Mux27~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr2a_ctrl\(1),
	datab => \Unit1|U2|tmp_rf[11][4]~q\,
	datac => \Unit1|U2|tmp_rf[10][4]~q\,
	datad => \Unit1|U2|Mux27~0_combout\,
	combout => \Unit1|U2|Mux27~1_combout\);

-- Location: FF_X40_Y44_N27
\Unit1|U2|tmp_rf[15][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U1|Mux11~1_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[15][4]~q\);

-- Location: LCCOMB_X43_Y42_N2
\Unit1|U2|tmp_rf[13][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[13][4]~feeder_combout\ = \Unit1|U1|Mux11~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|U1|Mux11~1_combout\,
	combout => \Unit1|U2|tmp_rf[13][4]~feeder_combout\);

-- Location: FF_X43_Y42_N3
\Unit1|U2|tmp_rf[13][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[13][4]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[13][4]~q\);

-- Location: LCCOMB_X41_Y42_N0
\Unit1|U2|Mux27~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux27~8_combout\ = (\Unit1|U2|Mux27~7_combout\ & ((\Unit1|U2|tmp_rf[15][4]~q\) # ((!\Unit0|U0|RFr2a_ctrl\(0))))) # (!\Unit1|U2|Mux27~7_combout\ & (((\Unit0|U0|RFr2a_ctrl\(0) & \Unit1|U2|tmp_rf[13][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|Mux27~7_combout\,
	datab => \Unit1|U2|tmp_rf[15][4]~q\,
	datac => \Unit0|U0|RFr2a_ctrl\(0),
	datad => \Unit1|U2|tmp_rf[13][4]~q\,
	combout => \Unit1|U2|Mux27~8_combout\);

-- Location: LCCOMB_X38_Y43_N28
\Unit1|U2|Mux27~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux27~9_combout\ = (\Unit0|U0|RFr2a_ctrl\(3) & ((\Unit1|U2|Mux27~6_combout\ & ((\Unit1|U2|Mux27~8_combout\))) # (!\Unit1|U2|Mux27~6_combout\ & (\Unit1|U2|Mux27~1_combout\)))) # (!\Unit0|U0|RFr2a_ctrl\(3) & (\Unit1|U2|Mux27~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr2a_ctrl\(3),
	datab => \Unit1|U2|Mux27~6_combout\,
	datac => \Unit1|U2|Mux27~1_combout\,
	datad => \Unit1|U2|Mux27~8_combout\,
	combout => \Unit1|U2|Mux27~9_combout\);

-- Location: FF_X38_Y43_N29
\Unit1|U2|RFr2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|Mux27~9_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit0|U0|RFr2e_ctrl~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|RFr2\(4));

-- Location: LCCOMB_X39_Y43_N0
\Unit1|U3|Add0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|Add0~23_combout\ = \Unit1|U2|RFr2\(4) $ (\Unit0|U0|ALUs_ctrl\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Unit1|U2|RFr2\(4),
	datad => \Unit0|U0|ALUs_ctrl\(0),
	combout => \Unit1|U3|Add0~23_combout\);

-- Location: LCCOMB_X39_Y43_N28
\Unit1|U3|Add0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|Add0~29_combout\ = ((\Unit1|U2|RFr1\(5) $ (\Unit1|U3|Add0~28_combout\ $ (!\Unit1|U3|Add0~25\)))) # (GND)
-- \Unit1|U3|Add0~30\ = CARRY((\Unit1|U2|RFr1\(5) & ((\Unit1|U3|Add0~28_combout\) # (!\Unit1|U3|Add0~25\))) # (!\Unit1|U2|RFr1\(5) & (\Unit1|U3|Add0~28_combout\ & !\Unit1|U3|Add0~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|RFr1\(5),
	datab => \Unit1|U3|Add0~28_combout\,
	datad => VCC,
	cin => \Unit1|U3|Add0~25\,
	combout => \Unit1|U3|Add0~29_combout\,
	cout => \Unit1|U3|Add0~30\);

-- Location: LCCOMB_X41_Y43_N24
\Unit1|U3|Add0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|Add0~31_combout\ = (\Unit1|U3|Add0~27_combout\) # ((\Unit0|U0|ALUs_ctrl\(1) & \Unit1|U3|Add0~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U3|Add0~27_combout\,
	datab => \Unit0|U0|ALUs_ctrl\(1),
	datad => \Unit1|U3|Add0~29_combout\,
	combout => \Unit1|U3|Add0~31_combout\);

-- Location: LCCOMB_X40_Y43_N14
\Unit1|U1|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U1|Mux10~0_combout\ = (\Unit0|U0|RFs_ctrl\(0) & ((\Unit2|altsyncram_component|auto_generated|q_a\(5)) # ((\Unit0|U0|RFs_ctrl\(1))))) # (!\Unit0|U0|RFs_ctrl\(0) & (((\Unit0|U0|RFs_ctrl\(1) & \Unit0|U2|dir_addr\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit2|altsyncram_component|auto_generated|q_a\(5),
	datab => \Unit0|U0|RFs_ctrl\(0),
	datac => \Unit0|U0|RFs_ctrl\(1),
	datad => \Unit0|U2|dir_addr\(5),
	combout => \Unit1|U1|Mux10~0_combout\);

-- Location: LCCOMB_X41_Y43_N6
\Unit1|U1|Mux10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U1|Mux10~1_combout\ = (\Unit1|U1|Mux10~0_combout\) # ((!\Unit0|U0|RFs_ctrl\(1) & (\Unit1|U3|Add0~31_combout\ & !\Unit0|U0|RFs_ctrl\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFs_ctrl\(1),
	datab => \Unit1|U3|Add0~31_combout\,
	datac => \Unit0|U0|RFs_ctrl\(0),
	datad => \Unit1|U1|Mux10~0_combout\,
	combout => \Unit1|U1|Mux10~1_combout\);

-- Location: LCCOMB_X40_Y44_N20
\Unit1|U2|tmp_rf[15][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[15][5]~feeder_combout\ = \Unit1|U1|Mux10~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|U1|Mux10~1_combout\,
	combout => \Unit1|U2|tmp_rf[15][5]~feeder_combout\);

-- Location: FF_X40_Y44_N21
\Unit1|U2|tmp_rf[15][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[15][5]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[15][5]~q\);

-- Location: LCCOMB_X42_Y44_N6
\Unit1|U2|tmp_rf[11][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[11][5]~feeder_combout\ = \Unit1|U1|Mux10~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Unit1|U1|Mux10~1_combout\,
	combout => \Unit1|U2|tmp_rf[11][5]~feeder_combout\);

-- Location: FF_X42_Y44_N7
\Unit1|U2|tmp_rf[11][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[11][5]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[11][5]~q\);

-- Location: LCCOMB_X41_Y41_N18
\Unit1|U2|tmp_rf[7][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[7][5]~feeder_combout\ = \Unit1|U1|Mux10~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|U1|Mux10~1_combout\,
	combout => \Unit1|U2|tmp_rf[7][5]~feeder_combout\);

-- Location: FF_X41_Y41_N19
\Unit1|U2|tmp_rf[7][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[7][5]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[7][5]~q\);

-- Location: LCCOMB_X41_Y41_N24
\Unit1|U2|tmp_rf[3][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[3][5]~feeder_combout\ = \Unit1|U1|Mux10~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|U1|Mux10~1_combout\,
	combout => \Unit1|U2|tmp_rf[3][5]~feeder_combout\);

-- Location: FF_X41_Y41_N25
\Unit1|U2|tmp_rf[3][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[3][5]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[3][5]~q\);

-- Location: LCCOMB_X41_Y41_N4
\Unit1|U2|Mux26~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux26~7_combout\ = (\Unit0|U0|RFr2a_ctrl\(3) & (((\Unit0|U0|RFr2a_ctrl\(2))))) # (!\Unit0|U0|RFr2a_ctrl\(3) & ((\Unit0|U0|RFr2a_ctrl\(2) & (\Unit1|U2|tmp_rf[7][5]~q\)) # (!\Unit0|U0|RFr2a_ctrl\(2) & ((\Unit1|U2|tmp_rf[3][5]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr2a_ctrl\(3),
	datab => \Unit1|U2|tmp_rf[7][5]~q\,
	datac => \Unit0|U0|RFr2a_ctrl\(2),
	datad => \Unit1|U2|tmp_rf[3][5]~q\,
	combout => \Unit1|U2|Mux26~7_combout\);

-- Location: LCCOMB_X41_Y45_N8
\Unit1|U2|Mux26~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux26~8_combout\ = (\Unit0|U0|RFr2a_ctrl\(3) & ((\Unit1|U2|Mux26~7_combout\ & (\Unit1|U2|tmp_rf[15][5]~q\)) # (!\Unit1|U2|Mux26~7_combout\ & ((\Unit1|U2|tmp_rf[11][5]~q\))))) # (!\Unit0|U0|RFr2a_ctrl\(3) & (((\Unit1|U2|Mux26~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr2a_ctrl\(3),
	datab => \Unit1|U2|tmp_rf[15][5]~q\,
	datac => \Unit1|U2|tmp_rf[11][5]~q\,
	datad => \Unit1|U2|Mux26~7_combout\,
	combout => \Unit1|U2|Mux26~8_combout\);

-- Location: LCCOMB_X43_Y43_N28
\Unit1|U2|tmp_rf[4][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[4][5]~feeder_combout\ = \Unit1|U1|Mux10~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|U1|Mux10~1_combout\,
	combout => \Unit1|U2|tmp_rf[4][5]~feeder_combout\);

-- Location: FF_X43_Y43_N29
\Unit1|U2|tmp_rf[4][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[4][5]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[4][5]~q\);

-- Location: LCCOMB_X41_Y46_N14
\Unit1|U2|tmp_rf[8][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[8][5]~feeder_combout\ = \Unit1|U1|Mux10~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|U1|Mux10~1_combout\,
	combout => \Unit1|U2|tmp_rf[8][5]~feeder_combout\);

-- Location: FF_X41_Y46_N15
\Unit1|U2|tmp_rf[8][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[8][5]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[8][5]~q\);

-- Location: FF_X42_Y43_N19
\Unit1|U2|tmp_rf[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	asdata => \Unit1|U1|Mux10~1_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|U2|Decoder0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[0][5]~q\);

-- Location: LCCOMB_X42_Y43_N18
\Unit1|U2|Mux26~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux26~4_combout\ = (\Unit0|U0|RFr2a_ctrl\(2) & (((\Unit0|U0|RFr2a_ctrl\(3))))) # (!\Unit0|U0|RFr2a_ctrl\(2) & ((\Unit0|U0|RFr2a_ctrl\(3) & (\Unit1|U2|tmp_rf[8][5]~q\)) # (!\Unit0|U0|RFr2a_ctrl\(3) & ((\Unit1|U2|tmp_rf[0][5]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr2a_ctrl\(2),
	datab => \Unit1|U2|tmp_rf[8][5]~q\,
	datac => \Unit1|U2|tmp_rf[0][5]~q\,
	datad => \Unit0|U0|RFr2a_ctrl\(3),
	combout => \Unit1|U2|Mux26~4_combout\);

-- Location: LCCOMB_X35_Y43_N16
\Unit1|U2|Mux26~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux26~5_combout\ = (\Unit0|U0|RFr2a_ctrl\(2) & ((\Unit1|U2|Mux26~4_combout\ & (\Unit1|U2|tmp_rf[12][5]~q\)) # (!\Unit1|U2|Mux26~4_combout\ & ((\Unit1|U2|tmp_rf[4][5]~q\))))) # (!\Unit0|U0|RFr2a_ctrl\(2) & (((\Unit1|U2|Mux26~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[12][5]~q\,
	datab => \Unit0|U0|RFr2a_ctrl\(2),
	datac => \Unit1|U2|tmp_rf[4][5]~q\,
	datad => \Unit1|U2|Mux26~4_combout\,
	combout => \Unit1|U2|Mux26~5_combout\);

-- Location: LCCOMB_X43_Y43_N16
\Unit1|U2|tmp_rf[13][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[13][5]~feeder_combout\ = \Unit1|U1|Mux10~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|U1|Mux10~1_combout\,
	combout => \Unit1|U2|tmp_rf[13][5]~feeder_combout\);

-- Location: FF_X43_Y43_N17
\Unit1|U2|tmp_rf[13][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[13][5]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[13][5]~q\);

-- Location: FF_X41_Y44_N31
\Unit1|U2|tmp_rf[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	asdata => \Unit1|U1|Mux10~1_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|U2|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[1][5]~q\);

-- Location: LCCOMB_X40_Y43_N6
\Unit1|U2|Mux26~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux26~2_combout\ = (\Unit0|U0|RFr2a_ctrl\(3) & (((\Unit0|U0|RFr2a_ctrl\(2))))) # (!\Unit0|U0|RFr2a_ctrl\(3) & ((\Unit0|U0|RFr2a_ctrl\(2) & (\Unit1|U2|tmp_rf[5][5]~q\)) # (!\Unit0|U0|RFr2a_ctrl\(2) & ((\Unit1|U2|tmp_rf[1][5]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[5][5]~q\,
	datab => \Unit0|U0|RFr2a_ctrl\(3),
	datac => \Unit1|U2|tmp_rf[1][5]~q\,
	datad => \Unit0|U0|RFr2a_ctrl\(2),
	combout => \Unit1|U2|Mux26~2_combout\);

-- Location: LCCOMB_X36_Y43_N0
\Unit1|U2|Mux26~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux26~3_combout\ = (\Unit0|U0|RFr2a_ctrl\(3) & ((\Unit1|U2|Mux26~2_combout\ & ((\Unit1|U2|tmp_rf[13][5]~q\))) # (!\Unit1|U2|Mux26~2_combout\ & (\Unit1|U2|tmp_rf[9][5]~q\)))) # (!\Unit0|U0|RFr2a_ctrl\(3) & (((\Unit1|U2|Mux26~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[9][5]~q\,
	datab => \Unit1|U2|tmp_rf[13][5]~q\,
	datac => \Unit0|U0|RFr2a_ctrl\(3),
	datad => \Unit1|U2|Mux26~2_combout\,
	combout => \Unit1|U2|Mux26~3_combout\);

-- Location: LCCOMB_X35_Y43_N2
\Unit1|U2|Mux26~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux26~6_combout\ = (\Unit0|U0|RFr2a_ctrl\(0) & (((\Unit1|U2|Mux26~3_combout\) # (\Unit0|U0|RFr2a_ctrl\(1))))) # (!\Unit0|U0|RFr2a_ctrl\(0) & (\Unit1|U2|Mux26~5_combout\ & ((!\Unit0|U0|RFr2a_ctrl\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr2a_ctrl\(0),
	datab => \Unit1|U2|Mux26~5_combout\,
	datac => \Unit1|U2|Mux26~3_combout\,
	datad => \Unit0|U0|RFr2a_ctrl\(1),
	combout => \Unit1|U2|Mux26~6_combout\);

-- Location: LCCOMB_X38_Y41_N8
\Unit1|U2|Mux26~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux26~9_combout\ = (\Unit0|U0|RFr2a_ctrl\(1) & ((\Unit1|U2|Mux26~6_combout\ & ((\Unit1|U2|Mux26~8_combout\))) # (!\Unit1|U2|Mux26~6_combout\ & (\Unit1|U2|Mux26~1_combout\)))) # (!\Unit0|U0|RFr2a_ctrl\(1) & (((\Unit1|U2|Mux26~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|Mux26~1_combout\,
	datab => \Unit0|U0|RFr2a_ctrl\(1),
	datac => \Unit1|U2|Mux26~8_combout\,
	datad => \Unit1|U2|Mux26~6_combout\,
	combout => \Unit1|U2|Mux26~9_combout\);

-- Location: FF_X38_Y41_N9
\Unit1|U2|RFr2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|Mux26~9_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit0|U0|RFr2e_ctrl~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|RFr2\(5));

-- Location: LCCOMB_X38_Y41_N16
\Unit1|U3|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|Add0~28_combout\ = \Unit0|U0|ALUs_ctrl\(0) $ (\Unit1|U2|RFr2\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Unit0|U0|ALUs_ctrl\(0),
	datad => \Unit1|U2|RFr2\(5),
	combout => \Unit1|U3|Add0~28_combout\);

-- Location: LCCOMB_X40_Y44_N24
\Unit1|U3|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|Add0~36_combout\ = (\Unit1|U3|Add0~32_combout\) # ((\Unit0|U0|ALUs_ctrl\(1) & \Unit1|U3|Add0~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|ALUs_ctrl\(1),
	datac => \Unit1|U3|Add0~32_combout\,
	datad => \Unit1|U3|Add0~34_combout\,
	combout => \Unit1|U3|Add0~36_combout\);

-- Location: LCCOMB_X39_Y44_N28
\Unit1|U1|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U1|Mux9~0_combout\ = (\Unit0|U0|RFs_ctrl\(0) & ((\Unit2|altsyncram_component|auto_generated|q_a\(6)) # ((\Unit0|U0|RFs_ctrl\(1))))) # (!\Unit0|U0|RFs_ctrl\(0) & (((\Unit0|U0|RFs_ctrl\(1) & \Unit0|U2|dir_addr\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit2|altsyncram_component|auto_generated|q_a\(6),
	datab => \Unit0|U0|RFs_ctrl\(0),
	datac => \Unit0|U0|RFs_ctrl\(1),
	datad => \Unit0|U2|dir_addr\(6),
	combout => \Unit1|U1|Mux9~0_combout\);

-- Location: LCCOMB_X40_Y44_N16
\Unit1|U1|Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U1|Mux9~1_combout\ = (\Unit1|U1|Mux9~0_combout\) # ((!\Unit0|U0|RFs_ctrl\(0) & (\Unit1|U3|Add0~36_combout\ & !\Unit0|U0|RFs_ctrl\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFs_ctrl\(0),
	datab => \Unit1|U3|Add0~36_combout\,
	datac => \Unit0|U0|RFs_ctrl\(1),
	datad => \Unit1|U1|Mux9~0_combout\,
	combout => \Unit1|U1|Mux9~1_combout\);

-- Location: FF_X39_Y42_N11
\Unit1|U2|tmp_rf[14][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	asdata => \Unit1|U1|Mux9~1_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|U2|Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[14][6]~q\);

-- Location: LCCOMB_X40_Y40_N28
\Unit1|U2|tmp_rf[12][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[12][6]~feeder_combout\ = \Unit1|U1|Mux9~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Unit1|U1|Mux9~1_combout\,
	combout => \Unit1|U2|tmp_rf[12][6]~feeder_combout\);

-- Location: FF_X40_Y40_N29
\Unit1|U2|tmp_rf[12][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[12][6]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[12][6]~q\);

-- Location: LCCOMB_X40_Y40_N26
\Unit1|U2|Mux9~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux9~7_combout\ = (\Unit0|U0|RFr1a_ctrl\(1) & (((\Unit0|U0|RFr1a_ctrl\(0))))) # (!\Unit0|U0|RFr1a_ctrl\(1) & ((\Unit0|U0|RFr1a_ctrl\(0) & (\Unit1|U2|tmp_rf[13][6]~q\)) # (!\Unit0|U0|RFr1a_ctrl\(0) & ((\Unit1|U2|tmp_rf[12][6]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[13][6]~q\,
	datab => \Unit1|U2|tmp_rf[12][6]~q\,
	datac => \Unit0|U0|RFr1a_ctrl\(1),
	datad => \Unit0|U0|RFr1a_ctrl\(0),
	combout => \Unit1|U2|Mux9~7_combout\);

-- Location: LCCOMB_X40_Y40_N0
\Unit1|U2|Mux9~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux9~8_combout\ = (\Unit0|U0|RFr1a_ctrl\(1) & ((\Unit1|U2|Mux9~7_combout\ & (\Unit1|U2|tmp_rf[15][6]~q\)) # (!\Unit1|U2|Mux9~7_combout\ & ((\Unit1|U2|tmp_rf[14][6]~q\))))) # (!\Unit0|U0|RFr1a_ctrl\(1) & (((\Unit1|U2|Mux9~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[15][6]~q\,
	datab => \Unit1|U2|tmp_rf[14][6]~q\,
	datac => \Unit0|U0|RFr1a_ctrl\(1),
	datad => \Unit1|U2|Mux9~7_combout\,
	combout => \Unit1|U2|Mux9~8_combout\);

-- Location: LCCOMB_X41_Y40_N12
\Unit1|U2|tmp_rf[3][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[3][6]~feeder_combout\ = \Unit1|U1|Mux9~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|U1|Mux9~1_combout\,
	combout => \Unit1|U2|tmp_rf[3][6]~feeder_combout\);

-- Location: FF_X41_Y40_N13
\Unit1|U2|tmp_rf[3][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[3][6]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[3][6]~q\);

-- Location: FF_X41_Y44_N5
\Unit1|U2|tmp_rf[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	asdata => \Unit1|U1|Mux9~1_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|U2|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[1][6]~q\);

-- Location: LCCOMB_X41_Y45_N14
\Unit1|U2|tmp_rf[0][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[0][6]~feeder_combout\ = \Unit1|U1|Mux9~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|U1|Mux9~1_combout\,
	combout => \Unit1|U2|tmp_rf[0][6]~feeder_combout\);

-- Location: FF_X41_Y45_N15
\Unit1|U2|tmp_rf[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[0][6]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[0][6]~q\);

-- Location: LCCOMB_X42_Y44_N28
\Unit1|U2|Mux9~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux9~4_combout\ = (\Unit0|U0|RFr1a_ctrl\(0) & (((\Unit0|U0|RFr1a_ctrl\(1))))) # (!\Unit0|U0|RFr1a_ctrl\(0) & ((\Unit0|U0|RFr1a_ctrl\(1) & (\Unit1|U2|tmp_rf[2][6]~q\)) # (!\Unit0|U0|RFr1a_ctrl\(1) & ((\Unit1|U2|tmp_rf[0][6]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[2][6]~q\,
	datab => \Unit1|U2|tmp_rf[0][6]~q\,
	datac => \Unit0|U0|RFr1a_ctrl\(0),
	datad => \Unit0|U0|RFr1a_ctrl\(1),
	combout => \Unit1|U2|Mux9~4_combout\);

-- Location: LCCOMB_X41_Y44_N4
\Unit1|U2|Mux9~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux9~5_combout\ = (\Unit0|U0|RFr1a_ctrl\(0) & ((\Unit1|U2|Mux9~4_combout\ & (\Unit1|U2|tmp_rf[3][6]~q\)) # (!\Unit1|U2|Mux9~4_combout\ & ((\Unit1|U2|tmp_rf[1][6]~q\))))) # (!\Unit0|U0|RFr1a_ctrl\(0) & (((\Unit1|U2|Mux9~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(0),
	datab => \Unit1|U2|tmp_rf[3][6]~q\,
	datac => \Unit1|U2|tmp_rf[1][6]~q\,
	datad => \Unit1|U2|Mux9~4_combout\,
	combout => \Unit1|U2|Mux9~5_combout\);

-- Location: LCCOMB_X41_Y40_N20
\Unit1|U2|tmp_rf[9][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[9][6]~feeder_combout\ = \Unit1|U1|Mux9~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|U1|Mux9~1_combout\,
	combout => \Unit1|U2|tmp_rf[9][6]~feeder_combout\);

-- Location: FF_X41_Y40_N21
\Unit1|U2|tmp_rf[9][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[9][6]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[9][6]~q\);

-- Location: LCCOMB_X40_Y44_N14
\Unit1|U2|tmp_rf[10][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[10][6]~feeder_combout\ = \Unit1|U1|Mux9~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|U1|Mux9~1_combout\,
	combout => \Unit1|U2|tmp_rf[10][6]~feeder_combout\);

-- Location: FF_X40_Y44_N15
\Unit1|U2|tmp_rf[10][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[10][6]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[10][6]~q\);

-- Location: LCCOMB_X40_Y40_N24
\Unit1|U2|tmp_rf[8][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[8][6]~feeder_combout\ = \Unit1|U1|Mux9~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Unit1|U1|Mux9~1_combout\,
	combout => \Unit1|U2|tmp_rf[8][6]~feeder_combout\);

-- Location: FF_X40_Y40_N25
\Unit1|U2|tmp_rf[8][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[8][6]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[8][6]~q\);

-- Location: LCCOMB_X40_Y40_N30
\Unit1|U2|Mux9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux9~2_combout\ = (\Unit0|U0|RFr1a_ctrl\(0) & (((\Unit0|U0|RFr1a_ctrl\(1))))) # (!\Unit0|U0|RFr1a_ctrl\(0) & ((\Unit0|U0|RFr1a_ctrl\(1) & (\Unit1|U2|tmp_rf[10][6]~q\)) # (!\Unit0|U0|RFr1a_ctrl\(1) & ((\Unit1|U2|tmp_rf[8][6]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(0),
	datab => \Unit1|U2|tmp_rf[10][6]~q\,
	datac => \Unit0|U0|RFr1a_ctrl\(1),
	datad => \Unit1|U2|tmp_rf[8][6]~q\,
	combout => \Unit1|U2|Mux9~2_combout\);

-- Location: LCCOMB_X41_Y40_N6
\Unit1|U2|Mux9~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux9~3_combout\ = (\Unit0|U0|RFr1a_ctrl\(0) & ((\Unit1|U2|Mux9~2_combout\ & (\Unit1|U2|tmp_rf[11][6]~q\)) # (!\Unit1|U2|Mux9~2_combout\ & ((\Unit1|U2|tmp_rf[9][6]~q\))))) # (!\Unit0|U0|RFr1a_ctrl\(0) & (((\Unit1|U2|Mux9~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[11][6]~q\,
	datab => \Unit1|U2|tmp_rf[9][6]~q\,
	datac => \Unit0|U0|RFr1a_ctrl\(0),
	datad => \Unit1|U2|Mux9~2_combout\,
	combout => \Unit1|U2|Mux9~3_combout\);

-- Location: LCCOMB_X41_Y41_N12
\Unit1|U2|Mux9~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux9~6_combout\ = (\Unit0|U0|RFr1a_ctrl\(3) & ((\Unit0|U0|RFr1a_ctrl\(2)) # ((\Unit1|U2|Mux9~3_combout\)))) # (!\Unit0|U0|RFr1a_ctrl\(3) & (!\Unit0|U0|RFr1a_ctrl\(2) & (\Unit1|U2|Mux9~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(3),
	datab => \Unit0|U0|RFr1a_ctrl\(2),
	datac => \Unit1|U2|Mux9~5_combout\,
	datad => \Unit1|U2|Mux9~3_combout\,
	combout => \Unit1|U2|Mux9~6_combout\);

-- Location: LCCOMB_X38_Y44_N30
\Unit1|U2|tmp_rf[7][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[7][6]~feeder_combout\ = \Unit1|U1|Mux9~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|U1|Mux9~1_combout\,
	combout => \Unit1|U2|tmp_rf[7][6]~feeder_combout\);

-- Location: FF_X38_Y44_N31
\Unit1|U2|tmp_rf[7][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[7][6]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[7][6]~q\);

-- Location: LCCOMB_X41_Y43_N14
\Unit1|U2|tmp_rf[6][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[6][6]~feeder_combout\ = \Unit1|U1|Mux9~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|U1|Mux9~1_combout\,
	combout => \Unit1|U2|tmp_rf[6][6]~feeder_combout\);

-- Location: FF_X41_Y43_N15
\Unit1|U2|tmp_rf[6][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[6][6]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[6][6]~q\);

-- Location: LCCOMB_X42_Y44_N16
\Unit1|U2|tmp_rf[5][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[5][6]~feeder_combout\ = \Unit1|U1|Mux9~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Unit1|U1|Mux9~1_combout\,
	combout => \Unit1|U2|tmp_rf[5][6]~feeder_combout\);

-- Location: FF_X42_Y44_N17
\Unit1|U2|tmp_rf[5][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[5][6]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[5][6]~q\);

-- Location: LCCOMB_X40_Y42_N0
\Unit1|U2|tmp_rf[4][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[4][6]~feeder_combout\ = \Unit1|U1|Mux9~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Unit1|U1|Mux9~1_combout\,
	combout => \Unit1|U2|tmp_rf[4][6]~feeder_combout\);

-- Location: FF_X40_Y42_N1
\Unit1|U2|tmp_rf[4][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[4][6]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[4][6]~q\);

-- Location: LCCOMB_X42_Y43_N8
\Unit1|U2|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux9~0_combout\ = (\Unit0|U0|RFr1a_ctrl\(0) & ((\Unit1|U2|tmp_rf[5][6]~q\) # ((\Unit0|U0|RFr1a_ctrl\(1))))) # (!\Unit0|U0|RFr1a_ctrl\(0) & (((\Unit1|U2|tmp_rf[4][6]~q\ & !\Unit0|U0|RFr1a_ctrl\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(0),
	datab => \Unit1|U2|tmp_rf[5][6]~q\,
	datac => \Unit1|U2|tmp_rf[4][6]~q\,
	datad => \Unit0|U0|RFr1a_ctrl\(1),
	combout => \Unit1|U2|Mux9~0_combout\);

-- Location: LCCOMB_X41_Y43_N20
\Unit1|U2|Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux9~1_combout\ = (\Unit0|U0|RFr1a_ctrl\(1) & ((\Unit1|U2|Mux9~0_combout\ & (\Unit1|U2|tmp_rf[7][6]~q\)) # (!\Unit1|U2|Mux9~0_combout\ & ((\Unit1|U2|tmp_rf[6][6]~q\))))) # (!\Unit0|U0|RFr1a_ctrl\(1) & (((\Unit1|U2|Mux9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(1),
	datab => \Unit1|U2|tmp_rf[7][6]~q\,
	datac => \Unit1|U2|tmp_rf[6][6]~q\,
	datad => \Unit1|U2|Mux9~0_combout\,
	combout => \Unit1|U2|Mux9~1_combout\);

-- Location: LCCOMB_X40_Y41_N4
\Unit1|U2|Mux9~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux9~9_combout\ = (\Unit0|U0|RFr1a_ctrl\(2) & ((\Unit1|U2|Mux9~6_combout\ & (\Unit1|U2|Mux9~8_combout\)) # (!\Unit1|U2|Mux9~6_combout\ & ((\Unit1|U2|Mux9~1_combout\))))) # (!\Unit0|U0|RFr1a_ctrl\(2) & (((\Unit1|U2|Mux9~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(2),
	datab => \Unit1|U2|Mux9~8_combout\,
	datac => \Unit1|U2|Mux9~6_combout\,
	datad => \Unit1|U2|Mux9~1_combout\,
	combout => \Unit1|U2|Mux9~9_combout\);

-- Location: FF_X40_Y41_N5
\Unit1|U2|RFr1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|Mux9~9_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit0|U0|RFr1e_ctrl~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|RFr1\(6));

-- Location: LCCOMB_X39_Y44_N14
\Unit0|U3|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U3|Mux9~0_combout\ = (\Unit0|U0|Ms_ctrl\(1) & ((\Unit0|U0|Ms_ctrl\(0) & (\Unit0|U2|dir_addr\(6))) # (!\Unit0|U0|Ms_ctrl\(0) & ((\Unit1|U2|RFr1\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|Ms_ctrl\(0),
	datab => \Unit0|U2|dir_addr\(6),
	datac => \Unit0|U0|Ms_ctrl\(1),
	datad => \Unit1|U2|RFr1\(6),
	combout => \Unit0|U3|Mux9~0_combout\);

-- Location: FF_X40_Y46_N13
\Unit0|U1|tmp_PC[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit0|U1|tmp_PC[6]~29_combout\,
	asdata => \Unit0|U2|dir_addr\(6),
	clrn => \Unit0|U0|PCclr_ctrl~q\,
	sload => \Unit0|U1|process_0~1_combout\,
	ena => \Unit0|U1|tmp_PC~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U1|tmp_PC\(6));

-- Location: LCCOMB_X38_Y44_N18
\Unit0|U3|Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U3|Mux9~1_combout\ = (\Unit0|U3|Mux9~0_combout\) # ((!\Unit0|U0|Ms_ctrl\(1) & (!\Unit0|U0|Ms_ctrl\(0) & \Unit0|U1|tmp_PC\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|Ms_ctrl\(1),
	datab => \Unit0|U0|Ms_ctrl\(0),
	datac => \Unit0|U3|Mux9~0_combout\,
	datad => \Unit0|U1|tmp_PC\(6),
	combout => \Unit0|U3|Mux9~1_combout\);

-- Location: LCCOMB_X40_Y43_N16
\Unit0|U2|dir_addr[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U2|dir_addr\(5) = (GLOBAL(\Unit0|U0|IRld_ctrl~clkctrl_outclk\) & ((\Unit2|altsyncram_component|auto_generated|q_a\(5)))) # (!GLOBAL(\Unit0|U0|IRld_ctrl~clkctrl_outclk\) & (\Unit0|U2|dir_addr\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|IRld_ctrl~clkctrl_outclk\,
	datab => \Unit0|U2|dir_addr\(5),
	datad => \Unit2|altsyncram_component|auto_generated|q_a\(5),
	combout => \Unit0|U2|dir_addr\(5));

-- Location: FF_X40_Y46_N11
\Unit0|U1|tmp_PC[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit0|U1|tmp_PC[5]~27_combout\,
	asdata => \Unit0|U2|dir_addr\(5),
	clrn => \Unit0|U0|PCclr_ctrl~q\,
	sload => \Unit0|U1|process_0~1_combout\,
	ena => \Unit0|U1|tmp_PC~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U1|tmp_PC\(5));

-- Location: LCCOMB_X41_Y45_N28
\Unit1|U2|Mux10~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux10~8_combout\ = (\Unit1|U2|Mux10~7_combout\ & (((\Unit1|U2|tmp_rf[15][5]~q\) # (!\Unit0|U0|RFr1a_ctrl\(3))))) # (!\Unit1|U2|Mux10~7_combout\ & (\Unit1|U2|tmp_rf[11][5]~q\ & (\Unit0|U0|RFr1a_ctrl\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|Mux10~7_combout\,
	datab => \Unit1|U2|tmp_rf[11][5]~q\,
	datac => \Unit0|U0|RFr1a_ctrl\(3),
	datad => \Unit1|U2|tmp_rf[15][5]~q\,
	combout => \Unit1|U2|Mux10~8_combout\);

-- Location: LCCOMB_X41_Y46_N12
\Unit1|U2|Mux10~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux10~4_combout\ = (\Unit0|U0|RFr1a_ctrl\(3) & ((\Unit1|U2|tmp_rf[8][5]~q\) # ((\Unit0|U0|RFr1a_ctrl\(2))))) # (!\Unit0|U0|RFr1a_ctrl\(3) & (((!\Unit0|U0|RFr1a_ctrl\(2) & \Unit1|U2|tmp_rf[0][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(3),
	datab => \Unit1|U2|tmp_rf[8][5]~q\,
	datac => \Unit0|U0|RFr1a_ctrl\(2),
	datad => \Unit1|U2|tmp_rf[0][5]~q\,
	combout => \Unit1|U2|Mux10~4_combout\);

-- Location: LCCOMB_X35_Y43_N28
\Unit1|U2|Mux10~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux10~5_combout\ = (\Unit1|U2|Mux10~4_combout\ & ((\Unit1|U2|tmp_rf[12][5]~q\) # ((!\Unit0|U0|RFr1a_ctrl\(2))))) # (!\Unit1|U2|Mux10~4_combout\ & (((\Unit1|U2|tmp_rf[4][5]~q\ & \Unit0|U0|RFr1a_ctrl\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[12][5]~q\,
	datab => \Unit1|U2|tmp_rf[4][5]~q\,
	datac => \Unit1|U2|Mux10~4_combout\,
	datad => \Unit0|U0|RFr1a_ctrl\(2),
	combout => \Unit1|U2|Mux10~5_combout\);

-- Location: LCCOMB_X40_Y43_N8
\Unit1|U2|tmp_rf[5][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[5][5]~feeder_combout\ = \Unit1|U1|Mux10~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|U1|Mux10~1_combout\,
	combout => \Unit1|U2|tmp_rf[5][5]~feeder_combout\);

-- Location: FF_X40_Y43_N9
\Unit1|U2|tmp_rf[5][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[5][5]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[5][5]~q\);

-- Location: LCCOMB_X41_Y44_N30
\Unit1|U2|Mux10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux10~2_combout\ = (\Unit0|U0|RFr1a_ctrl\(3) & (\Unit0|U0|RFr1a_ctrl\(2))) # (!\Unit0|U0|RFr1a_ctrl\(3) & ((\Unit0|U0|RFr1a_ctrl\(2) & ((\Unit1|U2|tmp_rf[5][5]~q\))) # (!\Unit0|U0|RFr1a_ctrl\(2) & (\Unit1|U2|tmp_rf[1][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(3),
	datab => \Unit0|U0|RFr1a_ctrl\(2),
	datac => \Unit1|U2|tmp_rf[1][5]~q\,
	datad => \Unit1|U2|tmp_rf[5][5]~q\,
	combout => \Unit1|U2|Mux10~2_combout\);

-- Location: LCCOMB_X41_Y40_N22
\Unit1|U2|tmp_rf[9][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[9][5]~feeder_combout\ = \Unit1|U1|Mux10~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|U1|Mux10~1_combout\,
	combout => \Unit1|U2|tmp_rf[9][5]~feeder_combout\);

-- Location: FF_X41_Y40_N23
\Unit1|U2|tmp_rf[9][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[9][5]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[9][5]~q\);

-- Location: LCCOMB_X43_Y43_N14
\Unit1|U2|Mux10~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux10~3_combout\ = (\Unit0|U0|RFr1a_ctrl\(3) & ((\Unit1|U2|Mux10~2_combout\ & (\Unit1|U2|tmp_rf[13][5]~q\)) # (!\Unit1|U2|Mux10~2_combout\ & ((\Unit1|U2|tmp_rf[9][5]~q\))))) # (!\Unit0|U0|RFr1a_ctrl\(3) & (((\Unit1|U2|Mux10~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[13][5]~q\,
	datab => \Unit0|U0|RFr1a_ctrl\(3),
	datac => \Unit1|U2|Mux10~2_combout\,
	datad => \Unit1|U2|tmp_rf[9][5]~q\,
	combout => \Unit1|U2|Mux10~3_combout\);

-- Location: LCCOMB_X35_Y43_N18
\Unit1|U2|Mux10~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux10~6_combout\ = (\Unit0|U0|RFr1a_ctrl\(0) & (((\Unit0|U0|RFr1a_ctrl\(1)) # (\Unit1|U2|Mux10~3_combout\)))) # (!\Unit0|U0|RFr1a_ctrl\(0) & (\Unit1|U2|Mux10~5_combout\ & (!\Unit0|U0|RFr1a_ctrl\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(0),
	datab => \Unit1|U2|Mux10~5_combout\,
	datac => \Unit0|U0|RFr1a_ctrl\(1),
	datad => \Unit1|U2|Mux10~3_combout\,
	combout => \Unit1|U2|Mux10~6_combout\);

-- Location: LCCOMB_X38_Y41_N12
\Unit1|U2|Mux10~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux10~9_combout\ = (\Unit0|U0|RFr1a_ctrl\(1) & ((\Unit1|U2|Mux10~6_combout\ & ((\Unit1|U2|Mux10~8_combout\))) # (!\Unit1|U2|Mux10~6_combout\ & (\Unit1|U2|Mux10~1_combout\)))) # (!\Unit0|U0|RFr1a_ctrl\(1) & (((\Unit1|U2|Mux10~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|Mux10~1_combout\,
	datab => \Unit0|U0|RFr1a_ctrl\(1),
	datac => \Unit1|U2|Mux10~8_combout\,
	datad => \Unit1|U2|Mux10~6_combout\,
	combout => \Unit1|U2|Mux10~9_combout\);

-- Location: FF_X38_Y41_N13
\Unit1|U2|RFr1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|Mux10~9_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit0|U0|RFr1e_ctrl~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|RFr1\(5));

-- Location: LCCOMB_X39_Y45_N16
\Unit0|U3|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U3|Mux10~0_combout\ = (\Unit0|U0|Ms_ctrl\(1) & ((\Unit0|U0|Ms_ctrl\(0) & ((\Unit0|U2|dir_addr\(5)))) # (!\Unit0|U0|Ms_ctrl\(0) & (\Unit1|U2|RFr1\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|Ms_ctrl\(1),
	datab => \Unit1|U2|RFr1\(5),
	datac => \Unit0|U0|Ms_ctrl\(0),
	datad => \Unit0|U2|dir_addr\(5),
	combout => \Unit0|U3|Mux10~0_combout\);

-- Location: LCCOMB_X38_Y45_N30
\Unit0|U3|Mux10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U3|Mux10~1_combout\ = (\Unit0|U3|Mux10~0_combout\) # ((!\Unit0|U0|Ms_ctrl\(0) & (\Unit0|U1|tmp_PC\(5) & !\Unit0|U0|Ms_ctrl\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|Ms_ctrl\(0),
	datab => \Unit0|U1|tmp_PC\(5),
	datac => \Unit0|U0|Ms_ctrl\(1),
	datad => \Unit0|U3|Mux10~0_combout\,
	combout => \Unit0|U3|Mux10~1_combout\);

-- Location: LCCOMB_X39_Y44_N2
\Unit0|U2|dir_addr[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U2|dir_addr\(6) = (GLOBAL(\Unit0|U0|IRld_ctrl~clkctrl_outclk\) & ((\Unit2|altsyncram_component|auto_generated|q_a\(6)))) # (!GLOBAL(\Unit0|U0|IRld_ctrl~clkctrl_outclk\) & (\Unit0|U2|dir_addr\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Unit0|U2|dir_addr\(6),
	datac => \Unit0|U0|IRld_ctrl~clkctrl_outclk\,
	datad => \Unit2|altsyncram_component|auto_generated|q_a\(6),
	combout => \Unit0|U2|dir_addr\(6));

-- Location: FF_X39_Y44_N3
\Unit0|U0|RFr2a_ctrl[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit0|U2|dir_addr\(6),
	ena => \Unit0|U0|RFr2a_ctrl[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U0|RFr2a_ctrl\(2));

-- Location: LCCOMB_X40_Y44_N4
\Unit1|U1|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U1|Mux5~0_combout\ = (\Unit0|U0|RFs_ctrl\(0) & ((\Unit2|altsyncram_component|auto_generated|q_a\(10)) # ((\Unit0|U0|RFs_ctrl\(1))))) # (!\Unit0|U0|RFs_ctrl\(0) & (((!\Unit0|U0|RFs_ctrl\(1) & \Unit1|U3|Add0~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFs_ctrl\(0),
	datab => \Unit2|altsyncram_component|auto_generated|q_a\(10),
	datac => \Unit0|U0|RFs_ctrl\(1),
	datad => \Unit1|U3|Add0~56_combout\,
	combout => \Unit1|U1|Mux5~0_combout\);

-- Location: LCCOMB_X36_Y43_N28
\Unit1|U2|tmp_rf[11][10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[11][10]~feeder_combout\ = \Unit1|U1|Mux5~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Unit1|U1|Mux5~0_combout\,
	combout => \Unit1|U2|tmp_rf[11][10]~feeder_combout\);

-- Location: FF_X36_Y43_N29
\Unit1|U2|tmp_rf[11][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[11][10]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[11][10]~q\);

-- Location: FF_X40_Y40_N17
\Unit1|U2|tmp_rf[8][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	asdata => \Unit1|U1|Mux5~0_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|U2|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[8][10]~q\);

-- Location: LCCOMB_X40_Y44_N10
\Unit1|U2|tmp_rf[10][10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[10][10]~feeder_combout\ = \Unit1|U1|Mux5~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Unit1|U1|Mux5~0_combout\,
	combout => \Unit1|U2|tmp_rf[10][10]~feeder_combout\);

-- Location: FF_X40_Y44_N11
\Unit1|U2|tmp_rf[10][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[10][10]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[10][10]~q\);

-- Location: LCCOMB_X40_Y40_N2
\Unit1|U2|Mux21~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux21~2_combout\ = (\Unit0|U0|RFr2a_ctrl\(1) & (((\Unit0|U0|RFr2a_ctrl\(0)) # (\Unit1|U2|tmp_rf[10][10]~q\)))) # (!\Unit0|U0|RFr2a_ctrl\(1) & (\Unit1|U2|tmp_rf[8][10]~q\ & (!\Unit0|U0|RFr2a_ctrl\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr2a_ctrl\(1),
	datab => \Unit1|U2|tmp_rf[8][10]~q\,
	datac => \Unit0|U0|RFr2a_ctrl\(0),
	datad => \Unit1|U2|tmp_rf[10][10]~q\,
	combout => \Unit1|U2|Mux21~2_combout\);

-- Location: LCCOMB_X36_Y42_N10
\Unit1|U2|Mux21~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux21~3_combout\ = (\Unit0|U0|RFr2a_ctrl\(0) & ((\Unit1|U2|Mux21~2_combout\ & ((\Unit1|U2|tmp_rf[11][10]~q\))) # (!\Unit1|U2|Mux21~2_combout\ & (\Unit1|U2|tmp_rf[9][10]~q\)))) # (!\Unit0|U0|RFr2a_ctrl\(0) & (((\Unit1|U2|Mux21~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[9][10]~q\,
	datab => \Unit1|U2|tmp_rf[11][10]~q\,
	datac => \Unit0|U0|RFr2a_ctrl\(0),
	datad => \Unit1|U2|Mux21~2_combout\,
	combout => \Unit1|U2|Mux21~3_combout\);

-- Location: FF_X39_Y43_N17
\Unit1|U2|tmp_rf[3][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	asdata => \Unit1|U1|Mux5~0_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|U2|Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[3][10]~q\);

-- Location: FF_X41_Y44_N3
\Unit1|U2|tmp_rf[2][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	asdata => \Unit1|U1|Mux5~0_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|U2|Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[2][10]~q\);

-- Location: LCCOMB_X41_Y44_N2
\Unit1|U2|Mux21~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux21~4_combout\ = (\Unit0|U0|RFr2a_ctrl\(1) & (((\Unit1|U2|tmp_rf[2][10]~q\) # (\Unit0|U0|RFr2a_ctrl\(0))))) # (!\Unit0|U0|RFr2a_ctrl\(1) & (\Unit1|U2|tmp_rf[0][10]~q\ & ((!\Unit0|U0|RFr2a_ctrl\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[0][10]~q\,
	datab => \Unit0|U0|RFr2a_ctrl\(1),
	datac => \Unit1|U2|tmp_rf[2][10]~q\,
	datad => \Unit0|U0|RFr2a_ctrl\(0),
	combout => \Unit1|U2|Mux21~4_combout\);

-- Location: LCCOMB_X39_Y40_N12
\Unit1|U2|tmp_rf[1][10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[1][10]~feeder_combout\ = \Unit1|U1|Mux5~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Unit1|U1|Mux5~0_combout\,
	combout => \Unit1|U2|tmp_rf[1][10]~feeder_combout\);

-- Location: FF_X39_Y40_N13
\Unit1|U2|tmp_rf[1][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[1][10]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[1][10]~q\);

-- Location: LCCOMB_X39_Y40_N4
\Unit1|U2|Mux21~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux21~5_combout\ = (\Unit0|U0|RFr2a_ctrl\(0) & ((\Unit1|U2|Mux21~4_combout\ & (\Unit1|U2|tmp_rf[3][10]~q\)) # (!\Unit1|U2|Mux21~4_combout\ & ((\Unit1|U2|tmp_rf[1][10]~q\))))) # (!\Unit0|U0|RFr2a_ctrl\(0) & (((\Unit1|U2|Mux21~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr2a_ctrl\(0),
	datab => \Unit1|U2|tmp_rf[3][10]~q\,
	datac => \Unit1|U2|Mux21~4_combout\,
	datad => \Unit1|U2|tmp_rf[1][10]~q\,
	combout => \Unit1|U2|Mux21~5_combout\);

-- Location: LCCOMB_X38_Y42_N30
\Unit1|U2|Mux21~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux21~6_combout\ = (\Unit0|U0|RFr2a_ctrl\(3) & ((\Unit0|U0|RFr2a_ctrl\(2)) # ((\Unit1|U2|Mux21~3_combout\)))) # (!\Unit0|U0|RFr2a_ctrl\(3) & (!\Unit0|U0|RFr2a_ctrl\(2) & ((\Unit1|U2|Mux21~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr2a_ctrl\(3),
	datab => \Unit0|U0|RFr2a_ctrl\(2),
	datac => \Unit1|U2|Mux21~3_combout\,
	datad => \Unit1|U2|Mux21~5_combout\,
	combout => \Unit1|U2|Mux21~6_combout\);

-- Location: LCCOMB_X43_Y44_N12
\Unit1|U2|tmp_rf[6][10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[6][10]~feeder_combout\ = \Unit1|U1|Mux5~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|U1|Mux5~0_combout\,
	combout => \Unit1|U2|tmp_rf[6][10]~feeder_combout\);

-- Location: FF_X43_Y44_N13
\Unit1|U2|tmp_rf[6][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[6][10]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[6][10]~q\);

-- Location: LCCOMB_X38_Y44_N22
\Unit1|U2|tmp_rf[7][10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[7][10]~feeder_combout\ = \Unit1|U1|Mux5~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|U1|Mux5~0_combout\,
	combout => \Unit1|U2|tmp_rf[7][10]~feeder_combout\);

-- Location: FF_X38_Y44_N23
\Unit1|U2|tmp_rf[7][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[7][10]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[7][10]~q\);

-- Location: LCCOMB_X38_Y45_N12
\Unit1|U2|Mux21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux21~1_combout\ = (\Unit1|U2|Mux21~0_combout\ & (((\Unit1|U2|tmp_rf[7][10]~q\)) # (!\Unit0|U0|RFr2a_ctrl\(1)))) # (!\Unit1|U2|Mux21~0_combout\ & (\Unit0|U0|RFr2a_ctrl\(1) & (\Unit1|U2|tmp_rf[6][10]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|Mux21~0_combout\,
	datab => \Unit0|U0|RFr2a_ctrl\(1),
	datac => \Unit1|U2|tmp_rf[6][10]~q\,
	datad => \Unit1|U2|tmp_rf[7][10]~q\,
	combout => \Unit1|U2|Mux21~1_combout\);

-- Location: LCCOMB_X38_Y42_N0
\Unit1|U2|Mux21~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux21~9_combout\ = (\Unit0|U0|RFr2a_ctrl\(2) & ((\Unit1|U2|Mux21~6_combout\ & (\Unit1|U2|Mux21~8_combout\)) # (!\Unit1|U2|Mux21~6_combout\ & ((\Unit1|U2|Mux21~1_combout\))))) # (!\Unit0|U0|RFr2a_ctrl\(2) & (((\Unit1|U2|Mux21~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|Mux21~8_combout\,
	datab => \Unit0|U0|RFr2a_ctrl\(2),
	datac => \Unit1|U2|Mux21~6_combout\,
	datad => \Unit1|U2|Mux21~1_combout\,
	combout => \Unit1|U2|Mux21~9_combout\);

-- Location: FF_X39_Y42_N19
\Unit1|U2|RFr2[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	asdata => \Unit1|U2|Mux21~9_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit0|U0|RFr2e_ctrl~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|RFr2\(10));

-- Location: LCCOMB_X39_Y42_N24
\Unit1|U3|Add0~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|Add0~53_combout\ = \Unit0|U0|ALUs_ctrl\(0) $ (\Unit1|U2|RFr2\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Unit0|U0|ALUs_ctrl\(0),
	datad => \Unit1|U2|RFr2\(10),
	combout => \Unit1|U3|Add0~53_combout\);

-- Location: LCCOMB_X39_Y46_N28
\Unit1|U2|tmp_rf[5][10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[5][10]~feeder_combout\ = \Unit1|U1|Mux5~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|U1|Mux5~0_combout\,
	combout => \Unit1|U2|tmp_rf[5][10]~feeder_combout\);

-- Location: FF_X39_Y46_N29
\Unit1|U2|tmp_rf[5][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[5][10]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[5][10]~q\);

-- Location: LCCOMB_X38_Y45_N26
\Unit1|U2|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux5~0_combout\ = (\Unit0|U0|RFr1a_ctrl\(0) & (((\Unit0|U0|RFr1a_ctrl\(1)) # (\Unit1|U2|tmp_rf[5][10]~q\)))) # (!\Unit0|U0|RFr1a_ctrl\(0) & (\Unit1|U2|tmp_rf[4][10]~q\ & (!\Unit0|U0|RFr1a_ctrl\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[4][10]~q\,
	datab => \Unit0|U0|RFr1a_ctrl\(0),
	datac => \Unit0|U0|RFr1a_ctrl\(1),
	datad => \Unit1|U2|tmp_rf[5][10]~q\,
	combout => \Unit1|U2|Mux5~0_combout\);

-- Location: LCCOMB_X38_Y45_N20
\Unit1|U2|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux5~1_combout\ = (\Unit0|U0|RFr1a_ctrl\(1) & ((\Unit1|U2|Mux5~0_combout\ & ((\Unit1|U2|tmp_rf[7][10]~q\))) # (!\Unit1|U2|Mux5~0_combout\ & (\Unit1|U2|tmp_rf[6][10]~q\)))) # (!\Unit0|U0|RFr1a_ctrl\(1) & (((\Unit1|U2|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(1),
	datab => \Unit1|U2|tmp_rf[6][10]~q\,
	datac => \Unit1|U2|Mux5~0_combout\,
	datad => \Unit1|U2|tmp_rf[7][10]~q\,
	combout => \Unit1|U2|Mux5~1_combout\);

-- Location: FF_X40_Y44_N5
\Unit1|U2|tmp_rf[15][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U1|Mux5~0_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[15][10]~q\);

-- Location: LCCOMB_X36_Y43_N18
\Unit1|U2|tmp_rf[12][10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[12][10]~feeder_combout\ = \Unit1|U1|Mux5~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Unit1|U1|Mux5~0_combout\,
	combout => \Unit1|U2|tmp_rf[12][10]~feeder_combout\);

-- Location: FF_X36_Y43_N19
\Unit1|U2|tmp_rf[12][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[12][10]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[12][10]~q\);

-- Location: LCCOMB_X39_Y44_N26
\Unit1|U2|Mux5~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux5~7_combout\ = (\Unit0|U0|RFr1a_ctrl\(1) & (((\Unit0|U0|RFr1a_ctrl\(0))))) # (!\Unit0|U0|RFr1a_ctrl\(1) & ((\Unit0|U0|RFr1a_ctrl\(0) & (\Unit1|U2|tmp_rf[13][10]~q\)) # (!\Unit0|U0|RFr1a_ctrl\(0) & ((\Unit1|U2|tmp_rf[12][10]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[13][10]~q\,
	datab => \Unit0|U0|RFr1a_ctrl\(1),
	datac => \Unit0|U0|RFr1a_ctrl\(0),
	datad => \Unit1|U2|tmp_rf[12][10]~q\,
	combout => \Unit1|U2|Mux5~7_combout\);

-- Location: LCCOMB_X39_Y44_N8
\Unit1|U2|Mux5~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux5~8_combout\ = (\Unit1|U2|Mux5~7_combout\ & (((\Unit1|U2|tmp_rf[15][10]~q\) # (!\Unit0|U0|RFr1a_ctrl\(1))))) # (!\Unit1|U2|Mux5~7_combout\ & (\Unit1|U2|tmp_rf[14][10]~q\ & ((\Unit0|U0|RFr1a_ctrl\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[14][10]~q\,
	datab => \Unit1|U2|tmp_rf[15][10]~q\,
	datac => \Unit1|U2|Mux5~7_combout\,
	datad => \Unit0|U0|RFr1a_ctrl\(1),
	combout => \Unit1|U2|Mux5~8_combout\);

-- Location: LCCOMB_X42_Y43_N0
\Unit1|U2|tmp_rf[0][10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[0][10]~feeder_combout\ = \Unit1|U1|Mux5~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Unit1|U1|Mux5~0_combout\,
	combout => \Unit1|U2|tmp_rf[0][10]~feeder_combout\);

-- Location: FF_X42_Y43_N1
\Unit1|U2|tmp_rf[0][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[0][10]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[0][10]~q\);

-- Location: LCCOMB_X42_Y44_N20
\Unit1|U2|Mux5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux5~4_combout\ = (\Unit0|U0|RFr1a_ctrl\(0) & (((\Unit0|U0|RFr1a_ctrl\(1))))) # (!\Unit0|U0|RFr1a_ctrl\(0) & ((\Unit0|U0|RFr1a_ctrl\(1) & (\Unit1|U2|tmp_rf[2][10]~q\)) # (!\Unit0|U0|RFr1a_ctrl\(1) & ((\Unit1|U2|tmp_rf[0][10]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[2][10]~q\,
	datab => \Unit1|U2|tmp_rf[0][10]~q\,
	datac => \Unit0|U0|RFr1a_ctrl\(0),
	datad => \Unit0|U0|RFr1a_ctrl\(1),
	combout => \Unit1|U2|Mux5~4_combout\);

-- Location: LCCOMB_X39_Y40_N2
\Unit1|U2|Mux5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux5~5_combout\ = (\Unit0|U0|RFr1a_ctrl\(0) & ((\Unit1|U2|Mux5~4_combout\ & ((\Unit1|U2|tmp_rf[3][10]~q\))) # (!\Unit1|U2|Mux5~4_combout\ & (\Unit1|U2|tmp_rf[1][10]~q\)))) # (!\Unit0|U0|RFr1a_ctrl\(0) & (((\Unit1|U2|Mux5~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[1][10]~q\,
	datab => \Unit1|U2|tmp_rf[3][10]~q\,
	datac => \Unit0|U0|RFr1a_ctrl\(0),
	datad => \Unit1|U2|Mux5~4_combout\,
	combout => \Unit1|U2|Mux5~5_combout\);

-- Location: LCCOMB_X39_Y40_N0
\Unit1|U2|Mux5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux5~6_combout\ = (\Unit0|U0|RFr1a_ctrl\(3) & ((\Unit1|U2|Mux5~3_combout\) # ((\Unit0|U0|RFr1a_ctrl\(2))))) # (!\Unit0|U0|RFr1a_ctrl\(3) & (((\Unit1|U2|Mux5~5_combout\ & !\Unit0|U0|RFr1a_ctrl\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|Mux5~3_combout\,
	datab => \Unit1|U2|Mux5~5_combout\,
	datac => \Unit0|U0|RFr1a_ctrl\(3),
	datad => \Unit0|U0|RFr1a_ctrl\(2),
	combout => \Unit1|U2|Mux5~6_combout\);

-- Location: LCCOMB_X38_Y44_N10
\Unit1|U2|Mux5~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux5~9_combout\ = (\Unit0|U0|RFr1a_ctrl\(2) & ((\Unit1|U2|Mux5~6_combout\ & ((\Unit1|U2|Mux5~8_combout\))) # (!\Unit1|U2|Mux5~6_combout\ & (\Unit1|U2|Mux5~1_combout\)))) # (!\Unit0|U0|RFr1a_ctrl\(2) & (((\Unit1|U2|Mux5~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(2),
	datab => \Unit1|U2|Mux5~1_combout\,
	datac => \Unit1|U2|Mux5~8_combout\,
	datad => \Unit1|U2|Mux5~6_combout\,
	combout => \Unit1|U2|Mux5~9_combout\);

-- Location: FF_X38_Y44_N11
\Unit1|U2|RFr1[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|Mux5~9_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit0|U0|RFr1e_ctrl~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|RFr1\(10));

-- Location: LCCOMB_X40_Y42_N18
\Unit1|U3|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|Add0~52_combout\ = (!\Unit0|U0|ALUs_ctrl\(1) & ((\Unit0|U0|ALUs_ctrl\(0) & (\Unit1|U2|RFr2\(10))) # (!\Unit0|U0|ALUs_ctrl\(0) & ((\Unit1|U2|RFr1\(10))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|ALUs_ctrl\(1),
	datab => \Unit1|U2|RFr2\(10),
	datac => \Unit1|U2|RFr1\(10),
	datad => \Unit0|U0|ALUs_ctrl\(0),
	combout => \Unit1|U3|Add0~52_combout\);

-- Location: LCCOMB_X40_Y42_N4
\Unit1|U3|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|Add0~56_combout\ = (\Unit1|U3|Add0~52_combout\) # ((\Unit0|U0|ALUs_ctrl\(1) & \Unit1|U3|Add0~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|ALUs_ctrl\(1),
	datac => \Unit1|U3|Add0~54_combout\,
	datad => \Unit1|U3|Add0~52_combout\,
	combout => \Unit1|U3|Add0~56_combout\);

-- Location: LCCOMB_X40_Y42_N12
\Unit1|U3|ALUz~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|ALUz~3_combout\ = (!\Unit1|U3|Add0~46_combout\ & (!\Unit1|U3|Add0~56_combout\ & (!\Unit1|U3|Add0~51_combout\ & !\Unit1|U3|Add0~61_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U3|Add0~46_combout\,
	datab => \Unit1|U3|Add0~56_combout\,
	datac => \Unit1|U3|Add0~51_combout\,
	datad => \Unit1|U3|Add0~61_combout\,
	combout => \Unit1|U3|ALUz~3_combout\);

-- Location: LCCOMB_X39_Y46_N8
\Unit0|U1|process_0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U1|process_0~1_combout\ = (\Unit0|U1|process_0~0_combout\ & (\Unit1|U3|ALUz~3_combout\ & (\Unit1|U3|ALUz~2_combout\ & \Unit1|U3|ALUz~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U1|process_0~0_combout\,
	datab => \Unit1|U3|ALUz~3_combout\,
	datac => \Unit1|U3|ALUz~2_combout\,
	datad => \Unit1|U3|ALUz~4_combout\,
	combout => \Unit0|U1|process_0~1_combout\);

-- Location: FF_X40_Y46_N1
\Unit0|U1|tmp_PC[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit0|U1|tmp_PC[0]~16_combout\,
	asdata => \Unit0|U2|dir_addr\(0),
	clrn => \Unit0|U0|PCclr_ctrl~q\,
	sload => \Unit0|U1|process_0~1_combout\,
	ena => \Unit0|U1|tmp_PC~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U1|tmp_PC\(0));

-- Location: LCCOMB_X40_Y46_N2
\Unit0|U1|tmp_PC[1]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U1|tmp_PC[1]~19_combout\ = (\Unit0|U1|tmp_PC\(1) & (!\Unit0|U1|tmp_PC[0]~17\)) # (!\Unit0|U1|tmp_PC\(1) & ((\Unit0|U1|tmp_PC[0]~17\) # (GND)))
-- \Unit0|U1|tmp_PC[1]~20\ = CARRY((!\Unit0|U1|tmp_PC[0]~17\) # (!\Unit0|U1|tmp_PC\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Unit0|U1|tmp_PC\(1),
	datad => VCC,
	cin => \Unit0|U1|tmp_PC[0]~17\,
	combout => \Unit0|U1|tmp_PC[1]~19_combout\,
	cout => \Unit0|U1|tmp_PC[1]~20\);

-- Location: FF_X40_Y46_N3
\Unit0|U1|tmp_PC[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit0|U1|tmp_PC[1]~19_combout\,
	asdata => \Unit0|U2|dir_addr\(1),
	clrn => \Unit0|U0|PCclr_ctrl~q\,
	sload => \Unit0|U1|process_0~1_combout\,
	ena => \Unit0|U1|tmp_PC~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U1|tmp_PC\(1));

-- Location: LCCOMB_X40_Y46_N4
\Unit0|U1|tmp_PC[2]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U1|tmp_PC[2]~21_combout\ = (\Unit0|U1|tmp_PC\(2) & (\Unit0|U1|tmp_PC[1]~20\ $ (GND))) # (!\Unit0|U1|tmp_PC\(2) & (!\Unit0|U1|tmp_PC[1]~20\ & VCC))
-- \Unit0|U1|tmp_PC[2]~22\ = CARRY((\Unit0|U1|tmp_PC\(2) & !\Unit0|U1|tmp_PC[1]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Unit0|U1|tmp_PC\(2),
	datad => VCC,
	cin => \Unit0|U1|tmp_PC[1]~20\,
	combout => \Unit0|U1|tmp_PC[2]~21_combout\,
	cout => \Unit0|U1|tmp_PC[2]~22\);

-- Location: FF_X40_Y46_N5
\Unit0|U1|tmp_PC[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit0|U1|tmp_PC[2]~21_combout\,
	asdata => \Unit0|U2|dir_addr\(2),
	clrn => \Unit0|U0|PCclr_ctrl~q\,
	sload => \Unit0|U1|process_0~1_combout\,
	ena => \Unit0|U1|tmp_PC~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U1|tmp_PC\(2));

-- Location: LCCOMB_X40_Y46_N6
\Unit0|U1|tmp_PC[3]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U1|tmp_PC[3]~23_combout\ = (\Unit0|U1|tmp_PC\(3) & (!\Unit0|U1|tmp_PC[2]~22\)) # (!\Unit0|U1|tmp_PC\(3) & ((\Unit0|U1|tmp_PC[2]~22\) # (GND)))
-- \Unit0|U1|tmp_PC[3]~24\ = CARRY((!\Unit0|U1|tmp_PC[2]~22\) # (!\Unit0|U1|tmp_PC\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U1|tmp_PC\(3),
	datad => VCC,
	cin => \Unit0|U1|tmp_PC[2]~22\,
	combout => \Unit0|U1|tmp_PC[3]~23_combout\,
	cout => \Unit0|U1|tmp_PC[3]~24\);

-- Location: FF_X40_Y46_N9
\Unit0|U1|tmp_PC[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit0|U1|tmp_PC[4]~25_combout\,
	asdata => \Unit0|U2|dir_addr\(4),
	clrn => \Unit0|U0|PCclr_ctrl~q\,
	sload => \Unit0|U1|process_0~1_combout\,
	ena => \Unit0|U1|tmp_PC~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U1|tmp_PC\(4));

-- Location: LCCOMB_X39_Y44_N4
\Unit0|U3|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U3|Mux11~0_combout\ = (\Unit0|U0|Ms_ctrl\(1) & ((\Unit0|U0|Ms_ctrl\(0) & ((\Unit0|U2|dir_addr\(4)))) # (!\Unit0|U0|Ms_ctrl\(0) & (\Unit1|U2|RFr1\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|RFr1\(4),
	datab => \Unit0|U0|Ms_ctrl\(0),
	datac => \Unit0|U0|Ms_ctrl\(1),
	datad => \Unit0|U2|dir_addr\(4),
	combout => \Unit0|U3|Mux11~0_combout\);

-- Location: LCCOMB_X38_Y44_N28
\Unit0|U3|Mux11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U3|Mux11~1_combout\ = (\Unit0|U3|Mux11~0_combout\) # ((!\Unit0|U0|Ms_ctrl\(1) & (!\Unit0|U0|Ms_ctrl\(0) & \Unit0|U1|tmp_PC\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|Ms_ctrl\(1),
	datab => \Unit0|U0|Ms_ctrl\(0),
	datac => \Unit0|U1|tmp_PC\(4),
	datad => \Unit0|U3|Mux11~0_combout\,
	combout => \Unit0|U3|Mux11~1_combout\);

-- Location: LCCOMB_X38_Y42_N22
\Unit0|U2|IRout[9]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U2|IRout\(9) = (GLOBAL(\Unit0|U0|IRld_ctrl~clkctrl_outclk\) & ((\Unit2|altsyncram_component|auto_generated|q_a\(9)))) # (!GLOBAL(\Unit0|U0|IRld_ctrl~clkctrl_outclk\) & (\Unit0|U2|IRout\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U2|IRout\(9),
	datac => \Unit0|U0|IRld_ctrl~clkctrl_outclk\,
	datad => \Unit2|altsyncram_component|auto_generated|q_a\(9),
	combout => \Unit0|U2|IRout\(9));

-- Location: LCCOMB_X39_Y41_N20
\Unit0|U0|Selector64~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|Selector64~0_combout\ = (\Unit0|U0|WideOr56~0_combout\ & (\Unit0|U0|WideOr19~0_combout\ & (\Unit0|U0|RFr1a_ctrl\(1)))) # (!\Unit0|U0|WideOr56~0_combout\ & ((\Unit0|U2|IRout\(9)) # ((\Unit0|U0|WideOr19~0_combout\ & \Unit0|U0|RFr1a_ctrl\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|WideOr56~0_combout\,
	datab => \Unit0|U0|WideOr19~0_combout\,
	datac => \Unit0|U0|RFr1a_ctrl\(1),
	datad => \Unit0|U2|IRout\(9),
	combout => \Unit0|U0|Selector64~0_combout\);

-- Location: FF_X39_Y41_N21
\Unit0|U0|RFr1a_ctrl[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit0|U0|Selector64~0_combout\,
	ena => \ALT_INV_cpu_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U0|RFr1a_ctrl\(1));

-- Location: LCCOMB_X40_Y43_N24
\Unit0|U2|dir_addr[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U2|dir_addr\(3) = (GLOBAL(\Unit0|U0|IRld_ctrl~clkctrl_outclk\) & ((\Unit2|altsyncram_component|auto_generated|q_a\(3)))) # (!GLOBAL(\Unit0|U0|IRld_ctrl~clkctrl_outclk\) & (\Unit0|U2|dir_addr\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|IRld_ctrl~clkctrl_outclk\,
	datab => \Unit0|U2|dir_addr\(3),
	datad => \Unit2|altsyncram_component|auto_generated|q_a\(3),
	combout => \Unit0|U2|dir_addr\(3));

-- Location: LCCOMB_X40_Y43_N28
\Unit1|U1|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U1|Mux12~0_combout\ = (\Unit0|U0|RFs_ctrl\(0) & ((\Unit2|altsyncram_component|auto_generated|q_a\(3)) # ((\Unit0|U0|RFs_ctrl\(1))))) # (!\Unit0|U0|RFs_ctrl\(0) & (((\Unit0|U0|RFs_ctrl\(1) & \Unit0|U2|dir_addr\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit2|altsyncram_component|auto_generated|q_a\(3),
	datab => \Unit0|U0|RFs_ctrl\(0),
	datac => \Unit0|U0|RFs_ctrl\(1),
	datad => \Unit0|U2|dir_addr\(3),
	combout => \Unit1|U1|Mux12~0_combout\);

-- Location: LCCOMB_X40_Y43_N30
\Unit1|U1|Mux12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U1|Mux12~1_combout\ = (\Unit1|U1|Mux12~0_combout\) # ((!\Unit0|U0|RFs_ctrl\(0) & (\Unit1|U3|Add0~21_combout\ & !\Unit0|U0|RFs_ctrl\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFs_ctrl\(0),
	datab => \Unit1|U3|Add0~21_combout\,
	datac => \Unit0|U0|RFs_ctrl\(1),
	datad => \Unit1|U1|Mux12~0_combout\,
	combout => \Unit1|U1|Mux12~1_combout\);

-- Location: LCCOMB_X39_Y45_N30
\Unit1|U2|tmp_rf[8][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[8][3]~feeder_combout\ = \Unit1|U1|Mux12~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|U1|Mux12~1_combout\,
	combout => \Unit1|U2|tmp_rf[8][3]~feeder_combout\);

-- Location: FF_X39_Y45_N31
\Unit1|U2|tmp_rf[8][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[8][3]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[8][3]~q\);

-- Location: FF_X40_Y42_N23
\Unit1|U2|tmp_rf[4][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	asdata => \Unit1|U1|Mux12~1_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|U2|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[4][3]~q\);

-- Location: LCCOMB_X39_Y45_N0
\Unit1|U2|Mux12~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux12~4_combout\ = (\Unit0|U0|RFr1a_ctrl\(2) & (((\Unit0|U0|RFr1a_ctrl\(3)) # (\Unit1|U2|tmp_rf[4][3]~q\)))) # (!\Unit0|U0|RFr1a_ctrl\(2) & (\Unit1|U2|tmp_rf[0][3]~q\ & (!\Unit0|U0|RFr1a_ctrl\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[0][3]~q\,
	datab => \Unit0|U0|RFr1a_ctrl\(2),
	datac => \Unit0|U0|RFr1a_ctrl\(3),
	datad => \Unit1|U2|tmp_rf[4][3]~q\,
	combout => \Unit1|U2|Mux12~4_combout\);

-- Location: LCCOMB_X39_Y45_N8
\Unit1|U2|Mux12~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux12~5_combout\ = (\Unit0|U0|RFr1a_ctrl\(3) & ((\Unit1|U2|Mux12~4_combout\ & (\Unit1|U2|tmp_rf[12][3]~q\)) # (!\Unit1|U2|Mux12~4_combout\ & ((\Unit1|U2|tmp_rf[8][3]~q\))))) # (!\Unit0|U0|RFr1a_ctrl\(3) & (((\Unit1|U2|Mux12~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[12][3]~q\,
	datab => \Unit0|U0|RFr1a_ctrl\(3),
	datac => \Unit1|U2|tmp_rf[8][3]~q\,
	datad => \Unit1|U2|Mux12~4_combout\,
	combout => \Unit1|U2|Mux12~5_combout\);

-- Location: LCCOMB_X38_Y44_N4
\Unit1|U2|Mux12~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux12~6_combout\ = (\Unit0|U0|RFr1a_ctrl\(1) & ((\Unit1|U2|Mux12~3_combout\) # ((\Unit0|U0|RFr1a_ctrl\(0))))) # (!\Unit0|U0|RFr1a_ctrl\(1) & (((!\Unit0|U0|RFr1a_ctrl\(0) & \Unit1|U2|Mux12~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|Mux12~3_combout\,
	datab => \Unit0|U0|RFr1a_ctrl\(1),
	datac => \Unit0|U0|RFr1a_ctrl\(0),
	datad => \Unit1|U2|Mux12~5_combout\,
	combout => \Unit1|U2|Mux12~6_combout\);

-- Location: LCCOMB_X38_Y44_N14
\Unit1|U2|tmp_rf[7][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[7][3]~feeder_combout\ = \Unit1|U1|Mux12~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|U1|Mux12~1_combout\,
	combout => \Unit1|U2|tmp_rf[7][3]~feeder_combout\);

-- Location: FF_X38_Y44_N15
\Unit1|U2|tmp_rf[7][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[7][3]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[7][3]~q\);

-- Location: LCCOMB_X42_Y45_N22
\Unit1|U2|tmp_rf[15][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[15][3]~feeder_combout\ = \Unit1|U1|Mux12~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|U1|Mux12~1_combout\,
	combout => \Unit1|U2|tmp_rf[15][3]~feeder_combout\);

-- Location: FF_X42_Y45_N23
\Unit1|U2|tmp_rf[15][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[15][3]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[15][3]~q\);

-- Location: LCCOMB_X38_Y44_N16
\Unit1|U2|Mux12~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux12~8_combout\ = (\Unit1|U2|Mux12~7_combout\ & (((\Unit1|U2|tmp_rf[15][3]~q\) # (!\Unit0|U0|RFr1a_ctrl\(2))))) # (!\Unit1|U2|Mux12~7_combout\ & (\Unit1|U2|tmp_rf[7][3]~q\ & (\Unit0|U0|RFr1a_ctrl\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|Mux12~7_combout\,
	datab => \Unit1|U2|tmp_rf[7][3]~q\,
	datac => \Unit0|U0|RFr1a_ctrl\(2),
	datad => \Unit1|U2|tmp_rf[15][3]~q\,
	combout => \Unit1|U2|Mux12~8_combout\);

-- Location: LCCOMB_X38_Y44_N20
\Unit1|U2|Mux12~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux12~9_combout\ = (\Unit1|U2|Mux12~6_combout\ & (((\Unit1|U2|Mux12~8_combout\) # (!\Unit0|U0|RFr1a_ctrl\(0))))) # (!\Unit1|U2|Mux12~6_combout\ & (\Unit1|U2|Mux12~1_combout\ & (\Unit0|U0|RFr1a_ctrl\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|Mux12~1_combout\,
	datab => \Unit1|U2|Mux12~6_combout\,
	datac => \Unit0|U0|RFr1a_ctrl\(0),
	datad => \Unit1|U2|Mux12~8_combout\,
	combout => \Unit1|U2|Mux12~9_combout\);

-- Location: FF_X38_Y44_N21
\Unit1|U2|RFr1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|Mux12~9_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit0|U0|RFr1e_ctrl~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|RFr1\(3));

-- Location: FF_X40_Y46_N7
\Unit0|U1|tmp_PC[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit0|U1|tmp_PC[3]~23_combout\,
	asdata => \Unit0|U2|dir_addr\(3),
	clrn => \Unit0|U0|PCclr_ctrl~q\,
	sload => \Unit0|U1|process_0~1_combout\,
	ena => \Unit0|U1|tmp_PC~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U1|tmp_PC\(3));

-- Location: LCCOMB_X38_Y44_N2
\Unit0|U3|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U3|Mux12~0_combout\ = (\Unit0|U0|Ms_ctrl\(1) & (\Unit1|U2|RFr1\(3) & (!\Unit0|U0|Ms_ctrl\(0)))) # (!\Unit0|U0|Ms_ctrl\(1) & (((\Unit0|U0|Ms_ctrl\(0)) # (\Unit0|U1|tmp_PC\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110101011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|Ms_ctrl\(1),
	datab => \Unit1|U2|RFr1\(3),
	datac => \Unit0|U0|Ms_ctrl\(0),
	datad => \Unit0|U1|tmp_PC\(3),
	combout => \Unit0|U3|Mux12~0_combout\);

-- Location: LCCOMB_X36_Y42_N4
\Unit0|U3|Mux12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U3|Mux12~1_combout\ = (\Unit0|U0|Ms_ctrl\(0) & ((\Unit0|U3|Mux12~0_combout\ & (\Unit0|U2|IRout\(11))) # (!\Unit0|U3|Mux12~0_combout\ & ((\Unit0|U2|dir_addr\(3)))))) # (!\Unit0|U0|Ms_ctrl\(0) & (\Unit0|U3|Mux12~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|Ms_ctrl\(0),
	datab => \Unit0|U3|Mux12~0_combout\,
	datac => \Unit0|U2|IRout\(11),
	datad => \Unit0|U2|dir_addr\(3),
	combout => \Unit0|U3|Mux12~1_combout\);

-- Location: LCCOMB_X36_Y42_N28
\Unit0|U2|IRout[10]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U2|IRout\(10) = (GLOBAL(\Unit0|U0|IRld_ctrl~clkctrl_outclk\) & ((\Unit2|altsyncram_component|auto_generated|q_a\(10)))) # (!GLOBAL(\Unit0|U0|IRld_ctrl~clkctrl_outclk\) & (\Unit0|U2|IRout\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Unit0|U2|IRout\(10),
	datac => \Unit0|U0|IRld_ctrl~clkctrl_outclk\,
	datad => \Unit2|altsyncram_component|auto_generated|q_a\(10),
	combout => \Unit0|U2|IRout\(10));

-- Location: LCCOMB_X36_Y42_N16
\Unit0|U3|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U3|Mux13~0_combout\ = (\Unit0|U0|Ms_ctrl\(0) & (((\Unit0|U2|dir_addr\(2)) # (!\Unit0|U0|Ms_ctrl\(1))))) # (!\Unit0|U0|Ms_ctrl\(0) & (\Unit1|U2|RFr1\(2) & ((\Unit0|U0|Ms_ctrl\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|RFr1\(2),
	datab => \Unit0|U2|dir_addr\(2),
	datac => \Unit0|U0|Ms_ctrl\(0),
	datad => \Unit0|U0|Ms_ctrl\(1),
	combout => \Unit0|U3|Mux13~0_combout\);

-- Location: LCCOMB_X36_Y42_N22
\Unit0|U3|Mux13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U3|Mux13~1_combout\ = (\Unit0|U0|Ms_ctrl\(1) & (((\Unit0|U3|Mux13~0_combout\)))) # (!\Unit0|U0|Ms_ctrl\(1) & ((\Unit0|U3|Mux13~0_combout\ & (\Unit0|U2|IRout\(10))) # (!\Unit0|U3|Mux13~0_combout\ & ((\Unit0|U1|tmp_PC\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|Ms_ctrl\(1),
	datab => \Unit0|U2|IRout\(10),
	datac => \Unit0|U1|tmp_PC\(2),
	datad => \Unit0|U3|Mux13~0_combout\,
	combout => \Unit0|U3|Mux13~1_combout\);

-- Location: LCCOMB_X36_Y42_N0
\Unit0|U2|dir_addr[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U2|dir_addr\(1) = (GLOBAL(\Unit0|U0|IRld_ctrl~clkctrl_outclk\) & ((\Unit2|altsyncram_component|auto_generated|q_a\(1)))) # (!GLOBAL(\Unit0|U0|IRld_ctrl~clkctrl_outclk\) & (\Unit0|U2|dir_addr\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|IRld_ctrl~clkctrl_outclk\,
	datab => \Unit0|U2|dir_addr\(1),
	datad => \Unit2|altsyncram_component|auto_generated|q_a\(1),
	combout => \Unit0|U2|dir_addr\(1));

-- Location: LCCOMB_X36_Y42_N30
\Unit0|U3|Mux14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U3|Mux14~1_combout\ = (\Unit0|U3|Mux14~0_combout\ & (((\Unit0|U2|IRout\(9)) # (!\Unit0|U0|Ms_ctrl\(0))))) # (!\Unit0|U3|Mux14~0_combout\ & (\Unit0|U2|dir_addr\(1) & (\Unit0|U0|Ms_ctrl\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U3|Mux14~0_combout\,
	datab => \Unit0|U2|dir_addr\(1),
	datac => \Unit0|U0|Ms_ctrl\(0),
	datad => \Unit0|U2|IRout\(9),
	combout => \Unit0|U3|Mux14~1_combout\);

-- Location: LCCOMB_X38_Y42_N8
\Unit0|U2|IRout[8]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U2|IRout\(8) = (GLOBAL(\Unit0|U0|IRld_ctrl~clkctrl_outclk\) & ((\Unit2|altsyncram_component|auto_generated|q_a\(8)))) # (!GLOBAL(\Unit0|U0|IRld_ctrl~clkctrl_outclk\) & (\Unit0|U2|IRout\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Unit0|U2|IRout\(8),
	datac => \Unit0|U0|IRld_ctrl~clkctrl_outclk\,
	datad => \Unit2|altsyncram_component|auto_generated|q_a\(8),
	combout => \Unit0|U2|IRout\(8));

-- Location: LCCOMB_X38_Y45_N8
\Unit0|U3|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U3|Mux15~0_combout\ = (\Unit0|U0|Ms_ctrl\(0) & (((\Unit0|U2|dir_addr\(0)) # (!\Unit0|U0|Ms_ctrl\(1))))) # (!\Unit0|U0|Ms_ctrl\(0) & (\Unit1|U2|RFr1\(0) & (\Unit0|U0|Ms_ctrl\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|Ms_ctrl\(0),
	datab => \Unit1|U2|RFr1\(0),
	datac => \Unit0|U0|Ms_ctrl\(1),
	datad => \Unit0|U2|dir_addr\(0),
	combout => \Unit0|U3|Mux15~0_combout\);

-- Location: LCCOMB_X38_Y42_N12
\Unit0|U3|Mux15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U3|Mux15~1_combout\ = (\Unit0|U0|Ms_ctrl\(1) & (((\Unit0|U3|Mux15~0_combout\)))) # (!\Unit0|U0|Ms_ctrl\(1) & ((\Unit0|U3|Mux15~0_combout\ & (\Unit0|U2|IRout\(8))) # (!\Unit0|U3|Mux15~0_combout\ & ((\Unit0|U1|tmp_PC\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|Ms_ctrl\(1),
	datab => \Unit0|U2|IRout\(8),
	datac => \Unit0|U1|tmp_PC\(0),
	datad => \Unit0|U3|Mux15~0_combout\,
	combout => \Unit0|U3|Mux15~1_combout\);

-- Location: LCCOMB_X36_Y42_N6
\Unit0|U2|IRout[11]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U2|IRout\(11) = (GLOBAL(\Unit0|U0|IRld_ctrl~clkctrl_outclk\) & ((\Unit2|altsyncram_component|auto_generated|q_a\(11)))) # (!GLOBAL(\Unit0|U0|IRld_ctrl~clkctrl_outclk\) & (\Unit0|U2|IRout\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U2|IRout\(11),
	datac => \Unit0|U0|IRld_ctrl~clkctrl_outclk\,
	datad => \Unit2|altsyncram_component|auto_generated|q_a\(11),
	combout => \Unit0|U2|IRout\(11));

-- Location: LCCOMB_X39_Y41_N24
\Unit0|U0|Selector56~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|Selector56~0_combout\ = (\Unit0|U0|WideOr51~0_combout\ & (!\Unit0|U0|state.LoadMemory~q\ & (\Unit0|U0|RFwa_ctrl\(3)))) # (!\Unit0|U0|WideOr51~0_combout\ & (((\Unit0|U2|IRout\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|state.LoadMemory~q\,
	datab => \Unit0|U0|WideOr51~0_combout\,
	datac => \Unit0|U0|RFwa_ctrl\(3),
	datad => \Unit0|U2|IRout\(11),
	combout => \Unit0|U0|Selector56~0_combout\);

-- Location: FF_X39_Y41_N25
\Unit0|U0|RFwa_ctrl[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit0|U0|Selector56~0_combout\,
	ena => \ALT_INV_cpu_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U0|RFwa_ctrl\(3));

-- Location: LCCOMB_X42_Y42_N8
\Unit1|U2|Decoder0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Decoder0~7_combout\ = (\Unit0|U0|RFwa_ctrl\(3) & \Unit1|U2|Decoder0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Unit0|U0|RFwa_ctrl\(3),
	datad => \Unit1|U2|Decoder0~6_combout\,
	combout => \Unit1|U2|Decoder0~7_combout\);

-- Location: FF_X38_Y45_N1
\Unit1|U2|tmp_rf[11][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	asdata => \Unit1|U1|Mux15~1_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|U2|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[11][0]~q\);

-- Location: LCCOMB_X38_Y45_N24
\Unit1|U2|Mux31~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux31~1_combout\ = (\Unit1|U2|Mux31~0_combout\ & ((\Unit1|U2|tmp_rf[11][0]~q\) # ((!\Unit0|U0|RFr2a_ctrl\(1))))) # (!\Unit1|U2|Mux31~0_combout\ & (((\Unit1|U2|tmp_rf[10][0]~q\ & \Unit0|U0|RFr2a_ctrl\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|Mux31~0_combout\,
	datab => \Unit1|U2|tmp_rf[11][0]~q\,
	datac => \Unit1|U2|tmp_rf[10][0]~q\,
	datad => \Unit0|U0|RFr2a_ctrl\(1),
	combout => \Unit1|U2|Mux31~1_combout\);

-- Location: LCCOMB_X36_Y45_N30
\Unit1|U2|tmp_rf[7][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[7][0]~feeder_combout\ = \Unit1|U1|Mux15~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|U1|Mux15~1_combout\,
	combout => \Unit1|U2|tmp_rf[7][0]~feeder_combout\);

-- Location: FF_X36_Y45_N31
\Unit1|U2|tmp_rf[7][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[7][0]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[7][0]~q\);

-- Location: LCCOMB_X36_Y45_N28
\Unit1|U2|Mux31~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux31~2_combout\ = (\Unit0|U0|RFr2a_ctrl\(0) & (((\Unit0|U0|RFr2a_ctrl\(1))))) # (!\Unit0|U0|RFr2a_ctrl\(0) & ((\Unit0|U0|RFr2a_ctrl\(1) & (\Unit1|U2|tmp_rf[6][0]~q\)) # (!\Unit0|U0|RFr2a_ctrl\(1) & ((\Unit1|U2|tmp_rf[4][0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[6][0]~q\,
	datab => \Unit0|U0|RFr2a_ctrl\(0),
	datac => \Unit1|U2|tmp_rf[4][0]~q\,
	datad => \Unit0|U0|RFr2a_ctrl\(1),
	combout => \Unit1|U2|Mux31~2_combout\);

-- Location: LCCOMB_X36_Y45_N14
\Unit1|U2|Mux31~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux31~3_combout\ = (\Unit0|U0|RFr2a_ctrl\(0) & ((\Unit1|U2|Mux31~2_combout\ & ((\Unit1|U2|tmp_rf[7][0]~q\))) # (!\Unit1|U2|Mux31~2_combout\ & (\Unit1|U2|tmp_rf[5][0]~q\)))) # (!\Unit0|U0|RFr2a_ctrl\(0) & (((\Unit1|U2|Mux31~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[5][0]~q\,
	datab => \Unit0|U0|RFr2a_ctrl\(0),
	datac => \Unit1|U2|tmp_rf[7][0]~q\,
	datad => \Unit1|U2|Mux31~2_combout\,
	combout => \Unit1|U2|Mux31~3_combout\);

-- Location: LCCOMB_X41_Y45_N24
\Unit1|U2|Mux31~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux31~4_combout\ = (\Unit0|U0|RFr2a_ctrl\(0) & (((\Unit1|U2|tmp_rf[1][0]~q\) # (\Unit0|U0|RFr2a_ctrl\(1))))) # (!\Unit0|U0|RFr2a_ctrl\(0) & (\Unit1|U2|tmp_rf[0][0]~q\ & ((!\Unit0|U0|RFr2a_ctrl\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr2a_ctrl\(0),
	datab => \Unit1|U2|tmp_rf[0][0]~q\,
	datac => \Unit1|U2|tmp_rf[1][0]~q\,
	datad => \Unit0|U0|RFr2a_ctrl\(1),
	combout => \Unit1|U2|Mux31~4_combout\);

-- Location: LCCOMB_X41_Y45_N18
\Unit1|U2|Mux31~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux31~5_combout\ = (\Unit0|U0|RFr2a_ctrl\(1) & ((\Unit1|U2|Mux31~4_combout\ & (\Unit1|U2|tmp_rf[3][0]~q\)) # (!\Unit1|U2|Mux31~4_combout\ & ((\Unit1|U2|tmp_rf[2][0]~q\))))) # (!\Unit0|U0|RFr2a_ctrl\(1) & (((\Unit1|U2|Mux31~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[3][0]~q\,
	datab => \Unit0|U0|RFr2a_ctrl\(1),
	datac => \Unit1|U2|tmp_rf[2][0]~q\,
	datad => \Unit1|U2|Mux31~4_combout\,
	combout => \Unit1|U2|Mux31~5_combout\);

-- Location: LCCOMB_X40_Y45_N12
\Unit1|U2|Mux31~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux31~6_combout\ = (\Unit0|U0|RFr2a_ctrl\(3) & (((\Unit0|U0|RFr2a_ctrl\(2))))) # (!\Unit0|U0|RFr2a_ctrl\(3) & ((\Unit0|U0|RFr2a_ctrl\(2) & (\Unit1|U2|Mux31~3_combout\)) # (!\Unit0|U0|RFr2a_ctrl\(2) & ((\Unit1|U2|Mux31~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr2a_ctrl\(3),
	datab => \Unit1|U2|Mux31~3_combout\,
	datac => \Unit0|U0|RFr2a_ctrl\(2),
	datad => \Unit1|U2|Mux31~5_combout\,
	combout => \Unit1|U2|Mux31~6_combout\);

-- Location: LCCOMB_X41_Y42_N4
\Unit1|U2|Mux31~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux31~7_combout\ = (\Unit0|U0|RFr2a_ctrl\(0) & (((\Unit0|U0|RFr2a_ctrl\(1))))) # (!\Unit0|U0|RFr2a_ctrl\(0) & ((\Unit0|U0|RFr2a_ctrl\(1) & (\Unit1|U2|tmp_rf[14][0]~q\)) # (!\Unit0|U0|RFr2a_ctrl\(1) & ((\Unit1|U2|tmp_rf[12][0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[14][0]~q\,
	datab => \Unit1|U2|tmp_rf[12][0]~q\,
	datac => \Unit0|U0|RFr2a_ctrl\(0),
	datad => \Unit0|U0|RFr2a_ctrl\(1),
	combout => \Unit1|U2|Mux31~7_combout\);

-- Location: FF_X39_Y43_N25
\Unit1|U2|tmp_rf[13][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	asdata => \Unit1|U1|Mux15~1_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|U2|Decoder0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[13][0]~q\);

-- Location: LCCOMB_X41_Y40_N30
\Unit1|U2|Mux31~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux31~8_combout\ = (\Unit0|U0|RFr2a_ctrl\(0) & ((\Unit1|U2|Mux31~7_combout\ & ((\Unit1|U2|tmp_rf[15][0]~q\))) # (!\Unit1|U2|Mux31~7_combout\ & (\Unit1|U2|tmp_rf[13][0]~q\)))) # (!\Unit0|U0|RFr2a_ctrl\(0) & (\Unit1|U2|Mux31~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr2a_ctrl\(0),
	datab => \Unit1|U2|Mux31~7_combout\,
	datac => \Unit1|U2|tmp_rf[13][0]~q\,
	datad => \Unit1|U2|tmp_rf[15][0]~q\,
	combout => \Unit1|U2|Mux31~8_combout\);

-- Location: LCCOMB_X38_Y43_N4
\Unit1|U2|Mux31~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux31~9_combout\ = (\Unit0|U0|RFr2a_ctrl\(3) & ((\Unit1|U2|Mux31~6_combout\ & ((\Unit1|U2|Mux31~8_combout\))) # (!\Unit1|U2|Mux31~6_combout\ & (\Unit1|U2|Mux31~1_combout\)))) # (!\Unit0|U0|RFr2a_ctrl\(3) & (((\Unit1|U2|Mux31~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr2a_ctrl\(3),
	datab => \Unit1|U2|Mux31~1_combout\,
	datac => \Unit1|U2|Mux31~6_combout\,
	datad => \Unit1|U2|Mux31~8_combout\,
	combout => \Unit1|U2|Mux31~9_combout\);

-- Location: FF_X38_Y43_N5
\Unit1|U2|RFr2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|Mux31~9_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit0|U0|RFr2e_ctrl~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|RFr2\(0));

-- Location: LCCOMB_X38_Y43_N22
\Unit1|U3|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|Add0~0_combout\ = (!\Unit0|U0|ALUs_ctrl\(1) & ((\Unit0|U0|ALUs_ctrl\(0) & ((\Unit1|U2|RFr2\(0)))) # (!\Unit0|U0|ALUs_ctrl\(0) & (\Unit1|U2|RFr1\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|RFr1\(0),
	datab => \Unit1|U2|RFr2\(0),
	datac => \Unit0|U0|ALUs_ctrl\(1),
	datad => \Unit0|U0|ALUs_ctrl\(0),
	combout => \Unit1|U3|Add0~0_combout\);

-- Location: LCCOMB_X39_Y43_N12
\Unit1|U3|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|Add0~6_combout\ = (\Unit1|U3|Add0~0_combout\) # ((\Unit0|U0|ALUs_ctrl\(1) & \Unit1|U3|Add0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|ALUs_ctrl\(1),
	datab => \Unit1|U3|Add0~0_combout\,
	datad => \Unit1|U3|Add0~4_combout\,
	combout => \Unit1|U3|Add0~6_combout\);

-- Location: LCCOMB_X33_Y42_N28
\Unit0|U2|IRout[14]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U2|IRout\(14) = (GLOBAL(\Unit0|U0|IRld_ctrl~clkctrl_outclk\) & ((\Unit2|altsyncram_component|auto_generated|q_a\(14)))) # (!GLOBAL(\Unit0|U0|IRld_ctrl~clkctrl_outclk\) & (\Unit0|U2|IRout\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Unit0|U2|IRout\(14),
	datac => \Unit2|altsyncram_component|auto_generated|q_a\(14),
	datad => \Unit0|U0|IRld_ctrl~clkctrl_outclk\,
	combout => \Unit0|U2|IRout\(14));

-- Location: LCCOMB_X33_Y42_N30
\Unit0|U0|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|Mux1~1_combout\ = (!\Unit0|U2|IRout\(13) & (!\Unit0|U2|IRout\(15) & (\Unit0|U2|IRout\(12) & !\Unit0|U2|IRout\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U2|IRout\(13),
	datab => \Unit0|U2|IRout\(15),
	datac => \Unit0|U2|IRout\(12),
	datad => \Unit0|U2|IRout\(14),
	combout => \Unit0|U0|Mux1~1_combout\);

-- Location: FF_X33_Y42_N31
\Unit0|U0|state.S4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit0|U0|Mux1~1_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sclr => \Unit0|U0|ALT_INV_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U0|state.S4~q\);

-- Location: LCCOMB_X32_Y40_N24
\Unit0|U0|Selector46~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|Selector46~0_combout\ = (!\Unit0|U0|state.S6~q\ & (!\Unit0|U0|state.S1a~q\ & (!\Unit0|U0|state.S4~q\ & !\Unit0|U0|state.SaveMemory~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|state.S6~q\,
	datab => \Unit0|U0|state.S1a~q\,
	datac => \Unit0|U0|state.S4~q\,
	datad => \Unit0|U0|state.SaveMemory~q\,
	combout => \Unit0|U0|Selector46~0_combout\);

-- Location: LCCOMB_X1_Y36_N14
\Unit0|U0|Selector46~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|Selector46~1_combout\ = (\Unit0|U0|state.S1~q\) # ((\Unit0|U0|Selector46~0_combout\ & \Unit0|U0|IRld_ctrl~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Unit0|U0|Selector46~0_combout\,
	datac => \Unit0|U0|IRld_ctrl~q\,
	datad => \Unit0|U0|state.S1~q\,
	combout => \Unit0|U0|Selector46~1_combout\);

-- Location: FF_X1_Y36_N15
\Unit0|U0|IRld_ctrl\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit0|U0|Selector46~1_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U0|IRld_ctrl~q\);

-- Location: CLKCTRL_G0
\Unit0|U0|IRld_ctrl~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Unit0|U0|IRld_ctrl~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Unit0|U0|IRld_ctrl~clkctrl_outclk\);

-- Location: LCCOMB_X33_Y42_N8
\Unit0|U2|IRout[12]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U2|IRout\(12) = (GLOBAL(\Unit0|U0|IRld_ctrl~clkctrl_outclk\) & ((\Unit2|altsyncram_component|auto_generated|q_a\(12)))) # (!GLOBAL(\Unit0|U0|IRld_ctrl~clkctrl_outclk\) & (\Unit0|U2|IRout\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Unit0|U2|IRout\(12),
	datac => \Unit0|U0|IRld_ctrl~clkctrl_outclk\,
	datad => \Unit2|altsyncram_component|auto_generated|q_a\(12),
	combout => \Unit0|U2|IRout\(12));

-- Location: LCCOMB_X33_Y42_N12
\Unit0|U0|Mux1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|Mux1~4_combout\ = (!\Unit0|U2|IRout\(13) & (!\Unit0|U2|IRout\(15) & (!\Unit0|U2|IRout\(12) & !\Unit0|U2|IRout\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U2|IRout\(13),
	datab => \Unit0|U2|IRout\(15),
	datac => \Unit0|U2|IRout\(12),
	datad => \Unit0|U2|IRout\(14),
	combout => \Unit0|U0|Mux1~4_combout\);

-- Location: FF_X33_Y42_N13
\Unit0|U0|state.S3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit0|U0|Mux1~4_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sclr => \Unit0|U0|ALT_INV_state.S2~q\,
	ena => \Unit0|U0|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U0|state.S3~q\);

-- Location: FF_X29_Y40_N9
\Unit0|U0|state.S3_wait\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	asdata => \Unit0|U0|state.S3~q\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cpu_clk~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U0|state.S3_wait~q\);

-- Location: LCCOMB_X29_Y40_N8
\Unit0|U0|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|Selector6~0_combout\ = (\cpu_clk~input_o\ & \Unit0|U0|state.S3_wait~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_clk~input_o\,
	datac => \Unit0|U0|state.S3_wait~q\,
	combout => \Unit0|U0|Selector6~0_combout\);

-- Location: LCCOMB_X29_Y40_N2
\Unit0|U0|state.S3a~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|state.S3a~feeder_combout\ = \Unit0|U0|Selector6~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Unit0|U0|Selector6~0_combout\,
	combout => \Unit0|U0|state.S3a~feeder_combout\);

-- Location: FF_X29_Y40_N3
\Unit0|U0|state.S3a\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit0|U0|state.S3a~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U0|state.S3a~q\);

-- Location: LCCOMB_X29_Y40_N30
\Unit0|U0|Selector47~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|Selector47~1_combout\ = (!\Unit0|U0|state.LoadMemory_a~q\ & (!\Unit0|U0|state.S3a~q\ & !\Unit0|U0|state.S1a~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|state.LoadMemory_a~q\,
	datab => \Unit0|U0|state.S3a~q\,
	datad => \Unit0|U0|state.S1a~q\,
	combout => \Unit0|U0|Selector47~1_combout\);

-- Location: LCCOMB_X29_Y40_N10
\Unit0|U0|Selector47~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|Selector47~2_combout\ = ((\Unit0|U0|Selector47~0_combout\ & (\Unit0|U0|Mre_ctrl~q\ & \Unit0|U0|Selector47~1_combout\))) # (!\Unit0|U0|Selector53~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|Selector53~0_combout\,
	datab => \Unit0|U0|Selector47~0_combout\,
	datac => \Unit0|U0|Mre_ctrl~q\,
	datad => \Unit0|U0|Selector47~1_combout\,
	combout => \Unit0|U0|Selector47~2_combout\);

-- Location: FF_X29_Y40_N11
\Unit0|U0|Mre_ctrl\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit0|U0|Selector47~2_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U0|Mre_ctrl~q\);

-- Location: LCCOMB_X33_Y42_N14
\Unit0|U2|IRout[15]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U2|IRout\(15) = (GLOBAL(\Unit0|U0|IRld_ctrl~clkctrl_outclk\) & ((\Unit2|altsyncram_component|auto_generated|q_a\(15)))) # (!GLOBAL(\Unit0|U0|IRld_ctrl~clkctrl_outclk\) & (\Unit0|U2|IRout\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Unit0|U2|IRout\(15),
	datac => \Unit2|altsyncram_component|auto_generated|q_a\(15),
	datad => \Unit0|U0|IRld_ctrl~clkctrl_outclk\,
	combout => \Unit0|U2|IRout\(15));

-- Location: LCCOMB_X33_Y42_N0
\Unit0|U0|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|Mux1~2_combout\ = (!\Unit0|U2|IRout\(13) & (\Unit0|U2|IRout\(15) & (\Unit0|U2|IRout\(12) & !\Unit0|U2|IRout\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U2|IRout\(13),
	datab => \Unit0|U2|IRout\(15),
	datac => \Unit0|U2|IRout\(12),
	datad => \Unit0|U2|IRout\(14),
	combout => \Unit0|U0|Mux1~2_combout\);

-- Location: FF_X33_Y42_N1
\Unit0|U0|state.SaveMemory\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit0|U0|Mux1~2_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sclr => \Unit0|U0|ALT_INV_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U0|state.SaveMemory~q\);

-- Location: LCCOMB_X32_Y40_N12
\Unit0|U0|Selector39~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|Selector39~0_combout\ = (\Unit0|U0|state.SaveMemory~q\) # ((\Unit0|U0|state.SaveMemory_a~q\ & !\cpu_clk~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|state.SaveMemory_a~q\,
	datab => \Unit0|U0|state.SaveMemory~q\,
	datad => \cpu_clk~input_o\,
	combout => \Unit0|U0|Selector39~0_combout\);

-- Location: LCCOMB_X32_Y40_N6
\Unit0|U0|state.SaveMemory_a~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|state.SaveMemory_a~feeder_combout\ = \Unit0|U0|Selector39~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Unit0|U0|Selector39~0_combout\,
	combout => \Unit0|U0|state.SaveMemory_a~feeder_combout\);

-- Location: FF_X32_Y40_N7
\Unit0|U0|state.SaveMemory_a\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit0|U0|state.SaveMemory_a~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U0|state.SaveMemory_a~q\);

-- Location: LCCOMB_X29_Y40_N20
\Unit0|U0|Selector47~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|Selector47~0_combout\ = (!\Unit0|U0|state.S5a~q\ & (!\Unit0|U0|state.SaveMemory_a~q\ & !\Unit0|U0|state.S4a~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|state.S5a~q\,
	datab => \Unit0|U0|state.SaveMemory_a~q\,
	datac => \Unit0|U0|state.S4a~q\,
	combout => \Unit0|U0|Selector47~0_combout\);

-- Location: LCCOMB_X29_Y40_N6
\Unit0|U0|Selector53~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|Selector53~2_combout\ = ((\Unit0|U0|Selector53~1_combout\ & (\Unit0|U0|Mwe_ctrl~q\ & \Unit0|U0|Selector53~0_combout\))) # (!\Unit0|U0|Selector47~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|Selector53~1_combout\,
	datab => \Unit0|U0|Selector47~0_combout\,
	datac => \Unit0|U0|Mwe_ctrl~q\,
	datad => \Unit0|U0|Selector53~0_combout\,
	combout => \Unit0|U0|Selector53~2_combout\);

-- Location: FF_X29_Y40_N7
\Unit0|U0|Mwe_ctrl\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit0|U0|Selector53~2_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U0|Mwe_ctrl~q\);

-- Location: LCCOMB_X29_Y40_N22
\Unit0|U0|state.S11_wait~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|state.S11_wait~feeder_combout\ = \Unit0|U0|state.S11~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit0|U0|state.S11~q\,
	combout => \Unit0|U0|state.S11_wait~feeder_combout\);

-- Location: FF_X29_Y40_N23
\Unit0|U0|state.S11_wait\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit0|U0|state.S11_wait~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \cpu_clk~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U0|state.S11_wait~q\);

-- Location: LCCOMB_X31_Y40_N18
\Unit0|U0|Selector27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|Selector27~0_combout\ = (\cpu_clk~input_o\ & \Unit0|U0|state.S11_wait~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cpu_clk~input_o\,
	datad => \Unit0|U0|state.S11_wait~q\,
	combout => \Unit0|U0|Selector27~0_combout\);

-- Location: FF_X31_Y40_N13
\Unit0|U0|state.S11a\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	asdata => \Unit0|U0|Selector27~0_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U0|state.S11a~q\);

-- Location: LCCOMB_X32_Y41_N10
\Unit0|U0|Selector55~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|Selector55~0_combout\ = (\Unit0|U0|state.S11a~q\) # ((!\Unit0|U0|state.S1~q\ & \Unit0|U0|oe_ctrl~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Unit0|U0|state.S1~q\,
	datac => \Unit0|U0|oe_ctrl~q\,
	datad => \Unit0|U0|state.S11a~q\,
	combout => \Unit0|U0|Selector55~0_combout\);

-- Location: FF_X32_Y41_N11
\Unit0|U0|oe_ctrl\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit0|U0|Selector55~0_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U0|oe_ctrl~q\);

-- Location: LCCOMB_X38_Y45_N16
\Unit0|U3|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U3|Mux7~0_combout\ = (\Unit0|U0|Ms_ctrl\(1) & ((\Unit0|U0|Ms_ctrl\(0) & ((\Unit0|U2|IRout\(8)))) # (!\Unit0|U0|Ms_ctrl\(0) & (\Unit1|U2|RFr1\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|Ms_ctrl\(1),
	datab => \Unit1|U2|RFr1\(8),
	datac => \Unit0|U2|IRout\(8),
	datad => \Unit0|U0|Ms_ctrl\(0),
	combout => \Unit0|U3|Mux7~0_combout\);

-- Location: LCCOMB_X40_Y46_N16
\Unit0|U1|tmp_PC[8]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U1|tmp_PC[8]~33_combout\ = (\Unit0|U1|tmp_PC\(8) & (\Unit0|U1|tmp_PC[7]~32\ $ (GND))) # (!\Unit0|U1|tmp_PC\(8) & (!\Unit0|U1|tmp_PC[7]~32\ & VCC))
-- \Unit0|U1|tmp_PC[8]~34\ = CARRY((\Unit0|U1|tmp_PC\(8) & !\Unit0|U1|tmp_PC[7]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Unit0|U1|tmp_PC\(8),
	datad => VCC,
	cin => \Unit0|U1|tmp_PC[7]~32\,
	combout => \Unit0|U1|tmp_PC[8]~33_combout\,
	cout => \Unit0|U1|tmp_PC[8]~34\);

-- Location: FF_X40_Y46_N17
\Unit0|U1|tmp_PC[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit0|U1|tmp_PC[8]~33_combout\,
	asdata => \Unit0|U2|IRout\(8),
	clrn => \Unit0|U0|PCclr_ctrl~q\,
	sload => \Unit0|U1|process_0~1_combout\,
	ena => \Unit0|U1|tmp_PC~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U1|tmp_PC\(8));

-- Location: LCCOMB_X39_Y45_N10
\Unit0|U3|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U3|Mux7~1_combout\ = (\Unit0|U3|Mux7~0_combout\) # ((!\Unit0|U0|Ms_ctrl\(0) & (\Unit0|U1|tmp_PC\(8) & !\Unit0|U0|Ms_ctrl\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|Ms_ctrl\(0),
	datab => \Unit0|U3|Mux7~0_combout\,
	datac => \Unit0|U1|tmp_PC\(8),
	datad => \Unit0|U0|Ms_ctrl\(1),
	combout => \Unit0|U3|Mux7~1_combout\);

-- Location: LCCOMB_X40_Y46_N18
\Unit0|U1|tmp_PC[9]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U1|tmp_PC[9]~35_combout\ = (\Unit0|U1|tmp_PC\(9) & (!\Unit0|U1|tmp_PC[8]~34\)) # (!\Unit0|U1|tmp_PC\(9) & ((\Unit0|U1|tmp_PC[8]~34\) # (GND)))
-- \Unit0|U1|tmp_PC[9]~36\ = CARRY((!\Unit0|U1|tmp_PC[8]~34\) # (!\Unit0|U1|tmp_PC\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Unit0|U1|tmp_PC\(9),
	datad => VCC,
	cin => \Unit0|U1|tmp_PC[8]~34\,
	combout => \Unit0|U1|tmp_PC[9]~35_combout\,
	cout => \Unit0|U1|tmp_PC[9]~36\);

-- Location: FF_X40_Y46_N19
\Unit0|U1|tmp_PC[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit0|U1|tmp_PC[9]~35_combout\,
	asdata => \Unit0|U2|IRout\(9),
	clrn => \Unit0|U0|PCclr_ctrl~q\,
	sload => \Unit0|U1|process_0~1_combout\,
	ena => \Unit0|U1|tmp_PC~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U1|tmp_PC\(9));

-- Location: LCCOMB_X36_Y42_N18
\Unit0|U3|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U3|Mux6~0_combout\ = (\Unit0|U0|Ms_ctrl\(1) & ((\Unit0|U0|Ms_ctrl\(0) & (\Unit0|U2|IRout\(9))) # (!\Unit0|U0|Ms_ctrl\(0) & ((\Unit1|U2|RFr1\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|Ms_ctrl\(0),
	datab => \Unit0|U2|IRout\(9),
	datac => \Unit1|U2|RFr1\(9),
	datad => \Unit0|U0|Ms_ctrl\(1),
	combout => \Unit0|U3|Mux6~0_combout\);

-- Location: LCCOMB_X36_Y42_N20
\Unit0|U3|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U3|Mux6~1_combout\ = (\Unit0|U3|Mux6~0_combout\) # ((!\Unit0|U0|Ms_ctrl\(1) & (\Unit0|U1|tmp_PC\(9) & !\Unit0|U0|Ms_ctrl\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|Ms_ctrl\(1),
	datab => \Unit0|U1|tmp_PC\(9),
	datac => \Unit0|U0|Ms_ctrl\(0),
	datad => \Unit0|U3|Mux6~0_combout\,
	combout => \Unit0|U3|Mux6~1_combout\);

-- Location: LCCOMB_X36_Y46_N0
\Unit0|U3|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U3|Mux5~0_combout\ = (\Unit0|U0|Ms_ctrl\(1) & ((\Unit0|U0|Ms_ctrl\(0) & (\Unit0|U2|IRout\(10))) # (!\Unit0|U0|Ms_ctrl\(0) & ((\Unit1|U2|RFr1\(10))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U2|IRout\(10),
	datab => \Unit1|U2|RFr1\(10),
	datac => \Unit0|U0|Ms_ctrl\(0),
	datad => \Unit0|U0|Ms_ctrl\(1),
	combout => \Unit0|U3|Mux5~0_combout\);

-- Location: LCCOMB_X40_Y46_N20
\Unit0|U1|tmp_PC[10]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U1|tmp_PC[10]~37_combout\ = (\Unit0|U1|tmp_PC\(10) & (\Unit0|U1|tmp_PC[9]~36\ $ (GND))) # (!\Unit0|U1|tmp_PC\(10) & (!\Unit0|U1|tmp_PC[9]~36\ & VCC))
-- \Unit0|U1|tmp_PC[10]~38\ = CARRY((\Unit0|U1|tmp_PC\(10) & !\Unit0|U1|tmp_PC[9]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Unit0|U1|tmp_PC\(10),
	datad => VCC,
	cin => \Unit0|U1|tmp_PC[9]~36\,
	combout => \Unit0|U1|tmp_PC[10]~37_combout\,
	cout => \Unit0|U1|tmp_PC[10]~38\);

-- Location: FF_X40_Y46_N21
\Unit0|U1|tmp_PC[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit0|U1|tmp_PC[10]~37_combout\,
	asdata => \Unit0|U2|IRout\(10),
	clrn => \Unit0|U0|PCclr_ctrl~q\,
	sload => \Unit0|U1|process_0~1_combout\,
	ena => \Unit0|U1|tmp_PC~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U1|tmp_PC\(10));

-- Location: LCCOMB_X36_Y46_N6
\Unit0|U3|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U3|Mux5~1_combout\ = (\Unit0|U3|Mux5~0_combout\) # ((!\Unit0|U0|Ms_ctrl\(0) & (\Unit0|U1|tmp_PC\(10) & !\Unit0|U0|Ms_ctrl\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|Ms_ctrl\(0),
	datab => \Unit0|U3|Mux5~0_combout\,
	datac => \Unit0|U1|tmp_PC\(10),
	datad => \Unit0|U0|Ms_ctrl\(1),
	combout => \Unit0|U3|Mux5~1_combout\);

-- Location: LCCOMB_X38_Y40_N6
\Unit0|U3|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U3|Mux4~0_combout\ = (\Unit0|U0|Ms_ctrl\(1) & ((\Unit0|U0|Ms_ctrl\(0) & (\Unit0|U2|IRout\(11))) # (!\Unit0|U0|Ms_ctrl\(0) & ((\Unit1|U2|RFr1\(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|Ms_ctrl\(0),
	datab => \Unit0|U2|IRout\(11),
	datac => \Unit0|U0|Ms_ctrl\(1),
	datad => \Unit1|U2|RFr1\(11),
	combout => \Unit0|U3|Mux4~0_combout\);

-- Location: LCCOMB_X40_Y46_N22
\Unit0|U1|tmp_PC[11]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U1|tmp_PC[11]~39_combout\ = (\Unit0|U1|tmp_PC\(11) & (!\Unit0|U1|tmp_PC[10]~38\)) # (!\Unit0|U1|tmp_PC\(11) & ((\Unit0|U1|tmp_PC[10]~38\) # (GND)))
-- \Unit0|U1|tmp_PC[11]~40\ = CARRY((!\Unit0|U1|tmp_PC[10]~38\) # (!\Unit0|U1|tmp_PC\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U1|tmp_PC\(11),
	datad => VCC,
	cin => \Unit0|U1|tmp_PC[10]~38\,
	combout => \Unit0|U1|tmp_PC[11]~39_combout\,
	cout => \Unit0|U1|tmp_PC[11]~40\);

-- Location: FF_X40_Y46_N23
\Unit0|U1|tmp_PC[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit0|U1|tmp_PC[11]~39_combout\,
	asdata => \Unit0|U2|IRout\(11),
	clrn => \Unit0|U0|PCclr_ctrl~q\,
	sload => \Unit0|U1|process_0~1_combout\,
	ena => \Unit0|U1|tmp_PC~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U1|tmp_PC\(11));

-- Location: LCCOMB_X39_Y44_N20
\Unit0|U3|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U3|Mux4~1_combout\ = (\Unit0|U3|Mux4~0_combout\) # ((!\Unit0|U0|Ms_ctrl\(0) & (\Unit0|U1|tmp_PC\(11) & !\Unit0|U0|Ms_ctrl\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|Ms_ctrl\(0),
	datab => \Unit0|U3|Mux4~0_combout\,
	datac => \Unit0|U1|tmp_PC\(11),
	datad => \Unit0|U0|Ms_ctrl\(1),
	combout => \Unit0|U3|Mux4~1_combout\);

-- Location: LCCOMB_X40_Y46_N24
\Unit0|U1|tmp_PC[12]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U1|tmp_PC[12]~41_combout\ = (\Unit0|U1|tmp_PC\(12) & (\Unit0|U1|tmp_PC[11]~40\ $ (GND))) # (!\Unit0|U1|tmp_PC\(12) & (!\Unit0|U1|tmp_PC[11]~40\ & VCC))
-- \Unit0|U1|tmp_PC[12]~42\ = CARRY((\Unit0|U1|tmp_PC\(12) & !\Unit0|U1|tmp_PC[11]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Unit0|U1|tmp_PC\(12),
	datad => VCC,
	cin => \Unit0|U1|tmp_PC[11]~40\,
	combout => \Unit0|U1|tmp_PC[12]~41_combout\,
	cout => \Unit0|U1|tmp_PC[12]~42\);

-- Location: LCCOMB_X39_Y46_N14
\~GND\ : cycloneive_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: FF_X40_Y46_N25
\Unit0|U1|tmp_PC[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit0|U1|tmp_PC[12]~41_combout\,
	asdata => \~GND~combout\,
	clrn => \Unit0|U0|PCclr_ctrl~q\,
	sload => \Unit0|U1|process_0~1_combout\,
	ena => \Unit0|U1|tmp_PC~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U1|tmp_PC\(12));

-- Location: FF_X39_Y43_N31
\Unit1|U2|tmp_rf[13][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	asdata => \Unit1|U1|Mux3~0_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|U2|Decoder0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[13][12]~q\);

-- Location: LCCOMB_X38_Y42_N24
\Unit1|U2|tmp_rf[15][12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[15][12]~feeder_combout\ = \Unit1|U1|Mux3~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Unit1|U1|Mux3~0_combout\,
	combout => \Unit1|U2|tmp_rf[15][12]~feeder_combout\);

-- Location: FF_X38_Y42_N25
\Unit1|U2|tmp_rf[15][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[15][12]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[15][12]~q\);

-- Location: LCCOMB_X36_Y46_N12
\Unit1|U2|tmp_rf[14][12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[14][12]~feeder_combout\ = \Unit1|U1|Mux3~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|U1|Mux3~0_combout\,
	combout => \Unit1|U2|tmp_rf[14][12]~feeder_combout\);

-- Location: FF_X36_Y46_N13
\Unit1|U2|tmp_rf[14][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[14][12]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[14][12]~q\);

-- Location: LCCOMB_X39_Y45_N14
\Unit1|U2|tmp_rf[12][12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[12][12]~feeder_combout\ = \Unit1|U1|Mux3~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|U1|Mux3~0_combout\,
	combout => \Unit1|U2|tmp_rf[12][12]~feeder_combout\);

-- Location: FF_X39_Y45_N15
\Unit1|U2|tmp_rf[12][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[12][12]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[12][12]~q\);

-- Location: LCCOMB_X38_Y40_N12
\Unit1|U2|Mux3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux3~7_combout\ = (\Unit0|U0|RFr1a_ctrl\(0) & (\Unit0|U0|RFr1a_ctrl\(1))) # (!\Unit0|U0|RFr1a_ctrl\(0) & ((\Unit0|U0|RFr1a_ctrl\(1) & (\Unit1|U2|tmp_rf[14][12]~q\)) # (!\Unit0|U0|RFr1a_ctrl\(1) & ((\Unit1|U2|tmp_rf[12][12]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(0),
	datab => \Unit0|U0|RFr1a_ctrl\(1),
	datac => \Unit1|U2|tmp_rf[14][12]~q\,
	datad => \Unit1|U2|tmp_rf[12][12]~q\,
	combout => \Unit1|U2|Mux3~7_combout\);

-- Location: LCCOMB_X38_Y40_N18
\Unit1|U2|Mux3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux3~8_combout\ = (\Unit0|U0|RFr1a_ctrl\(0) & ((\Unit1|U2|Mux3~7_combout\ & ((\Unit1|U2|tmp_rf[15][12]~q\))) # (!\Unit1|U2|Mux3~7_combout\ & (\Unit1|U2|tmp_rf[13][12]~q\)))) # (!\Unit0|U0|RFr1a_ctrl\(0) & (((\Unit1|U2|Mux3~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(0),
	datab => \Unit1|U2|tmp_rf[13][12]~q\,
	datac => \Unit1|U2|tmp_rf[15][12]~q\,
	datad => \Unit1|U2|Mux3~7_combout\,
	combout => \Unit1|U2|Mux3~8_combout\);

-- Location: LCCOMB_X38_Y46_N28
\Unit1|U2|tmp_rf[6][12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[6][12]~feeder_combout\ = \Unit1|U1|Mux3~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Unit1|U1|Mux3~0_combout\,
	combout => \Unit1|U2|tmp_rf[6][12]~feeder_combout\);

-- Location: FF_X38_Y46_N29
\Unit1|U2|tmp_rf[6][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[6][12]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[6][12]~q\);

-- Location: LCCOMB_X38_Y46_N22
\Unit1|U2|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux3~2_combout\ = (\Unit0|U0|RFr1a_ctrl\(0) & (((\Unit0|U0|RFr1a_ctrl\(1))))) # (!\Unit0|U0|RFr1a_ctrl\(0) & ((\Unit0|U0|RFr1a_ctrl\(1) & ((\Unit1|U2|tmp_rf[6][12]~q\))) # (!\Unit0|U0|RFr1a_ctrl\(1) & (\Unit1|U2|tmp_rf[4][12]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[4][12]~q\,
	datab => \Unit1|U2|tmp_rf[6][12]~q\,
	datac => \Unit0|U0|RFr1a_ctrl\(0),
	datad => \Unit0|U0|RFr1a_ctrl\(1),
	combout => \Unit1|U2|Mux3~2_combout\);

-- Location: LCCOMB_X38_Y46_N10
\Unit1|U2|Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux3~3_combout\ = (\Unit0|U0|RFr1a_ctrl\(0) & ((\Unit1|U2|Mux3~2_combout\ & (\Unit1|U2|tmp_rf[7][12]~q\)) # (!\Unit1|U2|Mux3~2_combout\ & ((\Unit1|U2|tmp_rf[5][12]~q\))))) # (!\Unit0|U0|RFr1a_ctrl\(0) & (((\Unit1|U2|Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(0),
	datab => \Unit1|U2|tmp_rf[7][12]~q\,
	datac => \Unit1|U2|Mux3~2_combout\,
	datad => \Unit1|U2|tmp_rf[5][12]~q\,
	combout => \Unit1|U2|Mux3~3_combout\);

-- Location: LCCOMB_X39_Y40_N16
\Unit1|U2|Mux3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux3~5_combout\ = (\Unit1|U2|Mux3~4_combout\ & (((\Unit1|U2|tmp_rf[3][12]~q\) # (!\Unit0|U0|RFr1a_ctrl\(1))))) # (!\Unit1|U2|Mux3~4_combout\ & (\Unit1|U2|tmp_rf[2][12]~q\ & ((\Unit0|U0|RFr1a_ctrl\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|Mux3~4_combout\,
	datab => \Unit1|U2|tmp_rf[2][12]~q\,
	datac => \Unit1|U2|tmp_rf[3][12]~q\,
	datad => \Unit0|U0|RFr1a_ctrl\(1),
	combout => \Unit1|U2|Mux3~5_combout\);

-- Location: LCCOMB_X38_Y40_N22
\Unit1|U2|Mux3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux3~6_combout\ = (\Unit0|U0|RFr1a_ctrl\(3) & (\Unit0|U0|RFr1a_ctrl\(2))) # (!\Unit0|U0|RFr1a_ctrl\(3) & ((\Unit0|U0|RFr1a_ctrl\(2) & (\Unit1|U2|Mux3~3_combout\)) # (!\Unit0|U0|RFr1a_ctrl\(2) & ((\Unit1|U2|Mux3~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(3),
	datab => \Unit0|U0|RFr1a_ctrl\(2),
	datac => \Unit1|U2|Mux3~3_combout\,
	datad => \Unit1|U2|Mux3~5_combout\,
	combout => \Unit1|U2|Mux3~6_combout\);

-- Location: LCCOMB_X38_Y40_N8
\Unit1|U2|Mux3~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux3~9_combout\ = (\Unit1|U2|Mux3~6_combout\ & (((\Unit1|U2|Mux3~8_combout\) # (!\Unit0|U0|RFr1a_ctrl\(3))))) # (!\Unit1|U2|Mux3~6_combout\ & (\Unit1|U2|Mux3~1_combout\ & ((\Unit0|U0|RFr1a_ctrl\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|Mux3~1_combout\,
	datab => \Unit1|U2|Mux3~8_combout\,
	datac => \Unit1|U2|Mux3~6_combout\,
	datad => \Unit0|U0|RFr1a_ctrl\(3),
	combout => \Unit1|U2|Mux3~9_combout\);

-- Location: FF_X38_Y40_N9
\Unit1|U2|RFr1[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|Mux3~9_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit0|U0|RFr1e_ctrl~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|RFr1\(12));

-- Location: LCCOMB_X36_Y46_N28
\Unit0|U3|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U3|Mux3~0_combout\ = (!\Unit0|U0|Ms_ctrl\(0) & ((\Unit0|U0|Ms_ctrl\(1) & ((\Unit1|U2|RFr1\(12)))) # (!\Unit0|U0|Ms_ctrl\(1) & (\Unit0|U1|tmp_PC\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|Ms_ctrl\(0),
	datab => \Unit0|U1|tmp_PC\(12),
	datac => \Unit1|U2|RFr1\(12),
	datad => \Unit0|U0|Ms_ctrl\(1),
	combout => \Unit0|U3|Mux3~0_combout\);

-- Location: LCCOMB_X40_Y46_N26
\Unit0|U1|tmp_PC[13]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U1|tmp_PC[13]~43_combout\ = (\Unit0|U1|tmp_PC\(13) & (!\Unit0|U1|tmp_PC[12]~42\)) # (!\Unit0|U1|tmp_PC\(13) & ((\Unit0|U1|tmp_PC[12]~42\) # (GND)))
-- \Unit0|U1|tmp_PC[13]~44\ = CARRY((!\Unit0|U1|tmp_PC[12]~42\) # (!\Unit0|U1|tmp_PC\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U1|tmp_PC\(13),
	datad => VCC,
	cin => \Unit0|U1|tmp_PC[12]~42\,
	combout => \Unit0|U1|tmp_PC[13]~43_combout\,
	cout => \Unit0|U1|tmp_PC[13]~44\);

-- Location: FF_X40_Y46_N27
\Unit0|U1|tmp_PC[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit0|U1|tmp_PC[13]~43_combout\,
	asdata => \~GND~combout\,
	clrn => \Unit0|U0|PCclr_ctrl~q\,
	sload => \Unit0|U1|process_0~1_combout\,
	ena => \Unit0|U1|tmp_PC~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U1|tmp_PC\(13));

-- Location: LCCOMB_X43_Y42_N16
\Unit0|U3|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U3|Mux2~0_combout\ = (!\Unit0|U0|Ms_ctrl\(0) & ((\Unit0|U0|Ms_ctrl\(1) & (\Unit1|U2|RFr1\(13))) # (!\Unit0|U0|Ms_ctrl\(1) & ((\Unit0|U1|tmp_PC\(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|RFr1\(13),
	datab => \Unit0|U0|Ms_ctrl\(0),
	datac => \Unit0|U0|Ms_ctrl\(1),
	datad => \Unit0|U1|tmp_PC\(13),
	combout => \Unit0|U3|Mux2~0_combout\);

-- Location: LCCOMB_X40_Y46_N28
\Unit0|U1|tmp_PC[14]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U1|tmp_PC[14]~45_combout\ = (\Unit0|U1|tmp_PC\(14) & (\Unit0|U1|tmp_PC[13]~44\ $ (GND))) # (!\Unit0|U1|tmp_PC\(14) & (!\Unit0|U1|tmp_PC[13]~44\ & VCC))
-- \Unit0|U1|tmp_PC[14]~46\ = CARRY((\Unit0|U1|tmp_PC\(14) & !\Unit0|U1|tmp_PC[13]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Unit0|U1|tmp_PC\(14),
	datad => VCC,
	cin => \Unit0|U1|tmp_PC[13]~44\,
	combout => \Unit0|U1|tmp_PC[14]~45_combout\,
	cout => \Unit0|U1|tmp_PC[14]~46\);

-- Location: FF_X40_Y46_N29
\Unit0|U1|tmp_PC[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit0|U1|tmp_PC[14]~45_combout\,
	asdata => \~GND~combout\,
	clrn => \Unit0|U0|PCclr_ctrl~q\,
	sload => \Unit0|U1|process_0~1_combout\,
	ena => \Unit0|U1|tmp_PC~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U1|tmp_PC\(14));

-- Location: LCCOMB_X40_Y41_N20
\Unit0|U3|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U3|Mux1~0_combout\ = (!\Unit0|U0|Ms_ctrl\(0) & ((\Unit0|U0|Ms_ctrl\(1) & (\Unit1|U2|RFr1\(14))) # (!\Unit0|U0|Ms_ctrl\(1) & ((\Unit0|U1|tmp_PC\(14))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|RFr1\(14),
	datab => \Unit0|U0|Ms_ctrl\(0),
	datac => \Unit0|U0|Ms_ctrl\(1),
	datad => \Unit0|U1|tmp_PC\(14),
	combout => \Unit0|U3|Mux1~0_combout\);

-- Location: LCCOMB_X40_Y46_N30
\Unit0|U1|tmp_PC[15]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U1|tmp_PC[15]~47_combout\ = \Unit0|U1|tmp_PC\(15) $ (\Unit0|U1|tmp_PC[14]~46\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U1|tmp_PC\(15),
	cin => \Unit0|U1|tmp_PC[14]~46\,
	combout => \Unit0|U1|tmp_PC[15]~47_combout\);

-- Location: FF_X40_Y46_N31
\Unit0|U1|tmp_PC[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit0|U1|tmp_PC[15]~47_combout\,
	asdata => \~GND~combout\,
	clrn => \Unit0|U0|PCclr_ctrl~q\,
	sload => \Unit0|U1|process_0~1_combout\,
	ena => \Unit0|U1|tmp_PC~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U1|tmp_PC\(15));

-- Location: LCCOMB_X40_Y41_N12
\Unit0|U3|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U3|Mux0~0_combout\ = (!\Unit0|U0|Ms_ctrl\(0) & ((\Unit0|U0|Ms_ctrl\(1) & (\Unit1|U2|RFr1\(15))) # (!\Unit0|U0|Ms_ctrl\(1) & ((\Unit0|U1|tmp_PC\(15))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|RFr1\(15),
	datab => \Unit0|U0|Ms_ctrl\(0),
	datac => \Unit0|U0|Ms_ctrl\(1),
	datad => \Unit0|U1|tmp_PC\(15),
	combout => \Unit0|U3|Mux0~0_combout\);

-- Location: LCCOMB_X41_Y42_N28
\Unit1|U2|Mux11~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux11~8_combout\ = (\Unit1|U2|Mux11~7_combout\ & ((\Unit1|U2|tmp_rf[15][4]~q\) # ((!\Unit0|U0|RFr1a_ctrl\(0))))) # (!\Unit1|U2|Mux11~7_combout\ & (((\Unit0|U0|RFr1a_ctrl\(0) & \Unit1|U2|tmp_rf[13][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|Mux11~7_combout\,
	datab => \Unit1|U2|tmp_rf[15][4]~q\,
	datac => \Unit0|U0|RFr1a_ctrl\(0),
	datad => \Unit1|U2|tmp_rf[13][4]~q\,
	combout => \Unit1|U2|Mux11~8_combout\);

-- Location: LCCOMB_X43_Y44_N28
\Unit1|U2|tmp_rf[6][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[6][4]~feeder_combout\ = \Unit1|U1|Mux11~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|U1|Mux11~1_combout\,
	combout => \Unit1|U2|tmp_rf[6][4]~feeder_combout\);

-- Location: FF_X43_Y44_N29
\Unit1|U2|tmp_rf[6][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[6][4]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[6][4]~q\);

-- Location: LCCOMB_X36_Y44_N14
\Unit1|U2|Mux11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux11~2_combout\ = (\Unit0|U0|RFr1a_ctrl\(1) & (((\Unit1|U2|tmp_rf[6][4]~q\) # (\Unit0|U0|RFr1a_ctrl\(0))))) # (!\Unit0|U0|RFr1a_ctrl\(1) & (\Unit1|U2|tmp_rf[4][4]~q\ & ((!\Unit0|U0|RFr1a_ctrl\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[4][4]~q\,
	datab => \Unit1|U2|tmp_rf[6][4]~q\,
	datac => \Unit0|U0|RFr1a_ctrl\(1),
	datad => \Unit0|U0|RFr1a_ctrl\(0),
	combout => \Unit1|U2|Mux11~2_combout\);

-- Location: LCCOMB_X41_Y41_N28
\Unit1|U2|tmp_rf[7][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[7][4]~feeder_combout\ = \Unit1|U1|Mux11~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|U1|Mux11~1_combout\,
	combout => \Unit1|U2|tmp_rf[7][4]~feeder_combout\);

-- Location: FF_X41_Y41_N29
\Unit1|U2|tmp_rf[7][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[7][4]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[7][4]~q\);

-- Location: LCCOMB_X36_Y44_N16
\Unit1|U2|Mux11~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux11~3_combout\ = (\Unit0|U0|RFr1a_ctrl\(0) & ((\Unit1|U2|Mux11~2_combout\ & ((\Unit1|U2|tmp_rf[7][4]~q\))) # (!\Unit1|U2|Mux11~2_combout\ & (\Unit1|U2|tmp_rf[5][4]~q\)))) # (!\Unit0|U0|RFr1a_ctrl\(0) & (((\Unit1|U2|Mux11~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[5][4]~q\,
	datab => \Unit0|U0|RFr1a_ctrl\(0),
	datac => \Unit1|U2|Mux11~2_combout\,
	datad => \Unit1|U2|tmp_rf[7][4]~q\,
	combout => \Unit1|U2|Mux11~3_combout\);

-- Location: LCCOMB_X35_Y44_N22
\Unit1|U2|tmp_rf[3][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[3][4]~feeder_combout\ = \Unit1|U1|Mux11~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|U1|Mux11~1_combout\,
	combout => \Unit1|U2|tmp_rf[3][4]~feeder_combout\);

-- Location: FF_X35_Y44_N23
\Unit1|U2|tmp_rf[3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[3][4]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[3][4]~q\);

-- Location: LCCOMB_X41_Y45_N16
\Unit1|U2|Mux11~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux11~4_combout\ = (\Unit0|U0|RFr1a_ctrl\(1) & (((\Unit0|U0|RFr1a_ctrl\(0))))) # (!\Unit0|U0|RFr1a_ctrl\(1) & ((\Unit0|U0|RFr1a_ctrl\(0) & ((\Unit1|U2|tmp_rf[1][4]~q\))) # (!\Unit0|U0|RFr1a_ctrl\(0) & (\Unit1|U2|tmp_rf[0][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[0][4]~q\,
	datab => \Unit0|U0|RFr1a_ctrl\(1),
	datac => \Unit1|U2|tmp_rf[1][4]~q\,
	datad => \Unit0|U0|RFr1a_ctrl\(0),
	combout => \Unit1|U2|Mux11~4_combout\);

-- Location: LCCOMB_X35_Y44_N8
\Unit1|U2|Mux11~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux11~5_combout\ = (\Unit0|U0|RFr1a_ctrl\(1) & ((\Unit1|U2|Mux11~4_combout\ & ((\Unit1|U2|tmp_rf[3][4]~q\))) # (!\Unit1|U2|Mux11~4_combout\ & (\Unit1|U2|tmp_rf[2][4]~q\)))) # (!\Unit0|U0|RFr1a_ctrl\(1) & (((\Unit1|U2|Mux11~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(1),
	datab => \Unit1|U2|tmp_rf[2][4]~q\,
	datac => \Unit1|U2|tmp_rf[3][4]~q\,
	datad => \Unit1|U2|Mux11~4_combout\,
	combout => \Unit1|U2|Mux11~5_combout\);

-- Location: LCCOMB_X38_Y40_N14
\Unit1|U2|Mux11~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux11~6_combout\ = (\Unit0|U0|RFr1a_ctrl\(3) & (\Unit0|U0|RFr1a_ctrl\(2))) # (!\Unit0|U0|RFr1a_ctrl\(3) & ((\Unit0|U0|RFr1a_ctrl\(2) & (\Unit1|U2|Mux11~3_combout\)) # (!\Unit0|U0|RFr1a_ctrl\(2) & ((\Unit1|U2|Mux11~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(3),
	datab => \Unit0|U0|RFr1a_ctrl\(2),
	datac => \Unit1|U2|Mux11~3_combout\,
	datad => \Unit1|U2|Mux11~5_combout\,
	combout => \Unit1|U2|Mux11~6_combout\);

-- Location: LCCOMB_X39_Y44_N30
\Unit1|U2|Mux11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux11~1_combout\ = (\Unit1|U2|Mux11~0_combout\ & (((\Unit1|U2|tmp_rf[11][4]~q\) # (!\Unit0|U0|RFr1a_ctrl\(1))))) # (!\Unit1|U2|Mux11~0_combout\ & (\Unit1|U2|tmp_rf[10][4]~q\ & ((\Unit0|U0|RFr1a_ctrl\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|Mux11~0_combout\,
	datab => \Unit1|U2|tmp_rf[10][4]~q\,
	datac => \Unit1|U2|tmp_rf[11][4]~q\,
	datad => \Unit0|U0|RFr1a_ctrl\(1),
	combout => \Unit1|U2|Mux11~1_combout\);

-- Location: LCCOMB_X38_Y40_N2
\Unit1|U2|Mux11~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux11~9_combout\ = (\Unit0|U0|RFr1a_ctrl\(3) & ((\Unit1|U2|Mux11~6_combout\ & (\Unit1|U2|Mux11~8_combout\)) # (!\Unit1|U2|Mux11~6_combout\ & ((\Unit1|U2|Mux11~1_combout\))))) # (!\Unit0|U0|RFr1a_ctrl\(3) & (((\Unit1|U2|Mux11~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(3),
	datab => \Unit1|U2|Mux11~8_combout\,
	datac => \Unit1|U2|Mux11~6_combout\,
	datad => \Unit1|U2|Mux11~1_combout\,
	combout => \Unit1|U2|Mux11~9_combout\);

-- Location: FF_X38_Y40_N3
\Unit1|U2|RFr1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|Mux11~9_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit0|U0|RFr1e_ctrl~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|RFr1\(4));

-- Location: LCCOMB_X35_Y41_N26
\Unit0|U0|Selector58~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|Selector58~0_combout\ = (\Unit0|U0|WideOr51~0_combout\ & (!\Unit0|U0|state.LoadMemory~q\ & ((\Unit0|U0|RFwa_ctrl\(1))))) # (!\Unit0|U0|WideOr51~0_combout\ & (((\Unit0|U2|IRout\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|state.LoadMemory~q\,
	datab => \Unit0|U2|IRout\(9),
	datac => \Unit0|U0|RFwa_ctrl\(1),
	datad => \Unit0|U0|WideOr51~0_combout\,
	combout => \Unit0|U0|Selector58~0_combout\);

-- Location: FF_X35_Y41_N27
\Unit0|U0|RFwa_ctrl[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit0|U0|Selector58~0_combout\,
	ena => \ALT_INV_cpu_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U0|RFwa_ctrl\(1));

-- Location: LCCOMB_X32_Y40_N18
\Unit0|U0|Selector54~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|Selector54~0_combout\ = (\Unit0|U0|state.S9~q\) # ((!\Unit0|U0|state.S9b~q\ & (\Unit0|U0|jmpen_ctrl~q\ & !\Unit0|U0|state.S1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|state.S9~q\,
	datab => \Unit0|U0|state.S9b~q\,
	datac => \Unit0|U0|jmpen_ctrl~q\,
	datad => \Unit0|U0|state.S1~q\,
	combout => \Unit0|U0|Selector54~0_combout\);

-- Location: FF_X32_Y40_N19
\Unit0|U0|jmpen_ctrl\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit0|U0|Selector54~0_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U0|jmpen_ctrl~q\);

-- Location: LCCOMB_X32_Y41_N30
\Unit0|U0|Selector42~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|Selector42~0_combout\ = (!\Unit0|U0|state.S7~q\ & (!\Unit0|U0|state.S5~q\ & !\Unit0|U0|state.S11a~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|state.S7~q\,
	datac => \Unit0|U0|state.S5~q\,
	datad => \Unit0|U0|state.S11a~q\,
	combout => \Unit0|U0|Selector42~0_combout\);

-- Location: LCCOMB_X32_Y41_N0
\Unit0|U0|Selector44~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|Selector44~1_combout\ = (\Unit0|U0|Selector44~0_combout\) # ((\Unit0|U0|state.SaveMemory~q\) # ((\Unit0|U0|state.S9~q\) # (!\Unit0|U0|Selector42~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|Selector44~0_combout\,
	datab => \Unit0|U0|state.SaveMemory~q\,
	datac => \Unit0|U0|Selector42~0_combout\,
	datad => \Unit0|U0|state.S9~q\,
	combout => \Unit0|U0|Selector44~1_combout\);

-- Location: LCCOMB_X32_Y41_N20
\Unit0|U0|Selector44~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|Selector44~2_combout\ = (\Unit0|U0|Selector44~1_combout\) # ((!\Unit0|U0|WideOr19~3_combout\ & \Unit0|U0|cur_state\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|WideOr19~3_combout\,
	datac => \Unit0|U0|cur_state\(0),
	datad => \Unit0|U0|Selector44~1_combout\,
	combout => \Unit0|U0|Selector44~2_combout\);

-- Location: FF_X32_Y41_N21
\Unit0|U0|cur_state[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit0|U0|Selector44~2_combout\,
	ena => \ALT_INV_cpu_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U0|cur_state\(0));

-- Location: LCCOMB_X32_Y42_N18
\Unit0|U0|WideOr19~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|WideOr19~2_combout\ = (\Unit0|U0|WideOr19~1_combout\ & (!\Unit0|U0|state.S2~q\ & !\Unit0|U0|state.S1_wait~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|WideOr19~1_combout\,
	datac => \Unit0|U0|state.S2~q\,
	datad => \Unit0|U0|state.S1_wait~q\,
	combout => \Unit0|U0|WideOr19~2_combout\);

-- Location: LCCOMB_X32_Y41_N28
\Unit0|U0|Selector43~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|Selector43~0_combout\ = (\Unit0|U0|state.S3~q\) # ((\Unit0|U0|state.S7~q\) # (\Unit0|U0|state.S11~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|state.S3~q\,
	datac => \Unit0|U0|state.S7~q\,
	datad => \Unit0|U0|state.S11~q\,
	combout => \Unit0|U0|Selector43~0_combout\);

-- Location: LCCOMB_X32_Y41_N26
\Unit0|U0|Selector43~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|Selector43~1_combout\ = ((\Unit0|U0|Selector43~0_combout\) # ((!\Unit0|U0|WideOr19~3_combout\ & \Unit0|U0|cur_state\(1)))) # (!\Unit0|U0|WideOr19~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|WideOr19~3_combout\,
	datab => \Unit0|U0|WideOr19~2_combout\,
	datac => \Unit0|U0|cur_state\(1),
	datad => \Unit0|U0|Selector43~0_combout\,
	combout => \Unit0|U0|Selector43~1_combout\);

-- Location: FF_X32_Y41_N27
\Unit0|U0|cur_state[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit0|U0|Selector43~1_combout\,
	ena => \ALT_INV_cpu_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U0|cur_state\(1));

-- Location: LCCOMB_X33_Y42_N22
\Unit0|U0|Mux1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|Mux1~9_combout\ = (\Unit0|U2|IRout\(13) & (!\Unit0|U2|IRout\(15) & (\Unit0|U2|IRout\(12) & !\Unit0|U2|IRout\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U2|IRout\(13),
	datab => \Unit0|U2|IRout\(15),
	datac => \Unit0|U2|IRout\(12),
	datad => \Unit0|U2|IRout\(14),
	combout => \Unit0|U0|Mux1~9_combout\);

-- Location: FF_X33_Y42_N23
\Unit0|U0|state.S6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit0|U0|Mux1~9_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sclr => \Unit0|U0|ALT_INV_state.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U0|state.S6~q\);

-- Location: LCCOMB_X32_Y41_N16
\Unit0|U0|Selector42~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|Selector42~2_combout\ = (\Unit0|U0|state.S11a~q\) # ((\Unit0|U0|state.S5~q\) # ((\Unit0|U0|state.S6~q\) # (\Unit0|U0|state.S7~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|state.S11a~q\,
	datab => \Unit0|U0|state.S5~q\,
	datac => \Unit0|U0|state.S6~q\,
	datad => \Unit0|U0|state.S7~q\,
	combout => \Unit0|U0|Selector42~2_combout\);

-- Location: LCCOMB_X32_Y41_N18
\Unit0|U0|Selector42~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|Selector42~1_combout\ = (\Unit0|U0|state.S1b~q\) # ((\Unit0|U0|state.SaveMemory~q\) # ((\Unit0|U0|state.LoadMemory~q\) # (\Unit0|U0|state.S4~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|state.S1b~q\,
	datab => \Unit0|U0|state.SaveMemory~q\,
	datac => \Unit0|U0|state.LoadMemory~q\,
	datad => \Unit0|U0|state.S4~q\,
	combout => \Unit0|U0|Selector42~1_combout\);

-- Location: LCCOMB_X32_Y41_N4
\Unit0|U0|Selector42~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|Selector42~3_combout\ = (\Unit0|U0|Selector42~2_combout\) # ((\Unit0|U0|Selector42~1_combout\) # ((!\Unit0|U0|WideOr19~3_combout\ & \Unit0|U0|cur_state\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|WideOr19~3_combout\,
	datab => \Unit0|U0|Selector42~2_combout\,
	datac => \Unit0|U0|cur_state\(2),
	datad => \Unit0|U0|Selector42~1_combout\,
	combout => \Unit0|U0|Selector42~3_combout\);

-- Location: FF_X32_Y41_N5
\Unit0|U0|cur_state[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit0|U0|Selector42~3_combout\,
	ena => \ALT_INV_cpu_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U0|cur_state\(2));

-- Location: LCCOMB_X33_Y42_N10
\Unit0|U2|IRout[13]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U2|IRout\(13) = (GLOBAL(\Unit0|U0|IRld_ctrl~clkctrl_outclk\) & ((\Unit2|altsyncram_component|auto_generated|q_a\(13)))) # (!GLOBAL(\Unit0|U0|IRld_ctrl~clkctrl_outclk\) & (\Unit0|U2|IRout\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U2|IRout\(13),
	datac => \Unit0|U0|IRld_ctrl~clkctrl_outclk\,
	datad => \Unit2|altsyncram_component|auto_generated|q_a\(13),
	combout => \Unit0|U2|IRout\(13));

-- Location: LCCOMB_X32_Y42_N2
\Unit0|U0|Mux1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|Mux1~10_combout\ = (\Unit0|U2|IRout\(15) & (\Unit0|U2|IRout\(12) & (\Unit0|U2|IRout\(13) & \Unit0|U2|IRout\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U2|IRout\(15),
	datab => \Unit0|U2|IRout\(12),
	datac => \Unit0|U2|IRout\(13),
	datad => \Unit0|U2|IRout\(14),
	combout => \Unit0|U0|Mux1~10_combout\);

-- Location: LCCOMB_X32_Y42_N20
\Unit0|U0|state.S10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|state.S10~0_combout\ = (\Unit0|U0|state.S10~q\) # ((\Unit0|U0|state.S2~q\ & \Unit0|U0|Mux1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Unit0|U0|state.S2~q\,
	datac => \Unit0|U0|state.S10~q\,
	datad => \Unit0|U0|Mux1~10_combout\,
	combout => \Unit0|U0|state.S10~0_combout\);

-- Location: FF_X32_Y42_N21
\Unit0|U0|state.S10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit0|U0|state.S10~0_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U0|state.S10~q\);

-- Location: LCCOMB_X32_Y41_N2
\Unit0|U0|Selector41~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|Selector41~0_combout\ = (\Unit0|U0|state.S11a~q\) # ((\Unit0|U0|state.SaveMemory~q\) # ((\Unit0|U0|state.S10~q\) # (\Unit0|U0|state.S9~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|state.S11a~q\,
	datab => \Unit0|U0|state.SaveMemory~q\,
	datac => \Unit0|U0|state.S10~q\,
	datad => \Unit0|U0|state.S9~q\,
	combout => \Unit0|U0|Selector41~0_combout\);

-- Location: LCCOMB_X33_Y41_N4
\Unit0|U0|Selector41~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|Selector41~1_combout\ = (\Unit0|U0|state.LoadMemory~q\) # ((\Unit0|U0|state.S11~q\) # (\Unit0|U0|state.S8~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Unit0|U0|state.LoadMemory~q\,
	datac => \Unit0|U0|state.S11~q\,
	datad => \Unit0|U0|state.S8~q\,
	combout => \Unit0|U0|Selector41~1_combout\);

-- Location: LCCOMB_X32_Y41_N14
\Unit0|U0|Selector41~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|Selector41~2_combout\ = (\Unit0|U0|Selector41~0_combout\) # ((\Unit0|U0|Selector41~1_combout\) # ((!\Unit0|U0|WideOr19~3_combout\ & \Unit0|U0|cur_state\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|WideOr19~3_combout\,
	datab => \Unit0|U0|Selector41~0_combout\,
	datac => \Unit0|U0|cur_state\(3),
	datad => \Unit0|U0|Selector41~1_combout\,
	combout => \Unit0|U0|Selector41~2_combout\);

-- Location: FF_X32_Y41_N15
\Unit0|U0|cur_state[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit0|U0|Selector41~2_combout\,
	ena => \ALT_INV_cpu_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U0|cur_state\(3));

ww_cpu_output(0) <= \cpu_output[0]~output_o\;

ww_cpu_output(1) <= \cpu_output[1]~output_o\;

ww_cpu_output(2) <= \cpu_output[2]~output_o\;

ww_cpu_output(3) <= \cpu_output[3]~output_o\;

ww_cpu_output(4) <= \cpu_output[4]~output_o\;

ww_cpu_output(5) <= \cpu_output[5]~output_o\;

ww_cpu_output(6) <= \cpu_output[6]~output_o\;

ww_cpu_output(7) <= \cpu_output[7]~output_o\;

ww_cpu_output(8) <= \cpu_output[8]~output_o\;

ww_cpu_output(9) <= \cpu_output[9]~output_o\;

ww_cpu_output(10) <= \cpu_output[10]~output_o\;

ww_cpu_output(11) <= \cpu_output[11]~output_o\;

ww_cpu_output(12) <= \cpu_output[12]~output_o\;

ww_cpu_output(13) <= \cpu_output[13]~output_o\;

ww_cpu_output(14) <= \cpu_output[14]~output_o\;

ww_cpu_output(15) <= \cpu_output[15]~output_o\;

ww_D_addr_bus(0) <= \D_addr_bus[0]~output_o\;

ww_D_addr_bus(1) <= \D_addr_bus[1]~output_o\;

ww_D_addr_bus(2) <= \D_addr_bus[2]~output_o\;

ww_D_addr_bus(3) <= \D_addr_bus[3]~output_o\;

ww_D_addr_bus(4) <= \D_addr_bus[4]~output_o\;

ww_D_addr_bus(5) <= \D_addr_bus[5]~output_o\;

ww_D_addr_bus(6) <= \D_addr_bus[6]~output_o\;

ww_D_addr_bus(7) <= \D_addr_bus[7]~output_o\;

ww_D_addr_bus(8) <= \D_addr_bus[8]~output_o\;

ww_D_addr_bus(9) <= \D_addr_bus[9]~output_o\;

ww_D_addr_bus(10) <= \D_addr_bus[10]~output_o\;

ww_D_addr_bus(11) <= \D_addr_bus[11]~output_o\;

ww_D_addr_bus(12) <= \D_addr_bus[12]~output_o\;

ww_D_addr_bus(13) <= \D_addr_bus[13]~output_o\;

ww_D_addr_bus(14) <= \D_addr_bus[14]~output_o\;

ww_D_addr_bus(15) <= \D_addr_bus[15]~output_o\;

ww_D_mdin_bus(0) <= \D_mdin_bus[0]~output_o\;

ww_D_mdin_bus(1) <= \D_mdin_bus[1]~output_o\;

ww_D_mdin_bus(2) <= \D_mdin_bus[2]~output_o\;

ww_D_mdin_bus(3) <= \D_mdin_bus[3]~output_o\;

ww_D_mdin_bus(4) <= \D_mdin_bus[4]~output_o\;

ww_D_mdin_bus(5) <= \D_mdin_bus[5]~output_o\;

ww_D_mdin_bus(6) <= \D_mdin_bus[6]~output_o\;

ww_D_mdin_bus(7) <= \D_mdin_bus[7]~output_o\;

ww_D_mdin_bus(8) <= \D_mdin_bus[8]~output_o\;

ww_D_mdin_bus(9) <= \D_mdin_bus[9]~output_o\;

ww_D_mdin_bus(10) <= \D_mdin_bus[10]~output_o\;

ww_D_mdin_bus(11) <= \D_mdin_bus[11]~output_o\;

ww_D_mdin_bus(12) <= \D_mdin_bus[12]~output_o\;

ww_D_mdin_bus(13) <= \D_mdin_bus[13]~output_o\;

ww_D_mdin_bus(14) <= \D_mdin_bus[14]~output_o\;

ww_D_mdin_bus(15) <= \D_mdin_bus[15]~output_o\;

ww_D_mdout_bus(0) <= \D_mdout_bus[0]~output_o\;

ww_D_mdout_bus(1) <= \D_mdout_bus[1]~output_o\;

ww_D_mdout_bus(2) <= \D_mdout_bus[2]~output_o\;

ww_D_mdout_bus(3) <= \D_mdout_bus[3]~output_o\;

ww_D_mdout_bus(4) <= \D_mdout_bus[4]~output_o\;

ww_D_mdout_bus(5) <= \D_mdout_bus[5]~output_o\;

ww_D_mdout_bus(6) <= \D_mdout_bus[6]~output_o\;

ww_D_mdout_bus(7) <= \D_mdout_bus[7]~output_o\;

ww_D_mdout_bus(8) <= \D_mdout_bus[8]~output_o\;

ww_D_mdout_bus(9) <= \D_mdout_bus[9]~output_o\;

ww_D_mdout_bus(10) <= \D_mdout_bus[10]~output_o\;

ww_D_mdout_bus(11) <= \D_mdout_bus[11]~output_o\;

ww_D_mdout_bus(12) <= \D_mdout_bus[12]~output_o\;

ww_D_mdout_bus(13) <= \D_mdout_bus[13]~output_o\;

ww_D_mdout_bus(14) <= \D_mdout_bus[14]~output_o\;

ww_D_mdout_bus(15) <= \D_mdout_bus[15]~output_o\;

ww_D_immd_bus(0) <= \D_immd_bus[0]~output_o\;

ww_D_immd_bus(1) <= \D_immd_bus[1]~output_o\;

ww_D_immd_bus(2) <= \D_immd_bus[2]~output_o\;

ww_D_immd_bus(3) <= \D_immd_bus[3]~output_o\;

ww_D_immd_bus(4) <= \D_immd_bus[4]~output_o\;

ww_D_immd_bus(5) <= \D_immd_bus[5]~output_o\;

ww_D_immd_bus(6) <= \D_immd_bus[6]~output_o\;

ww_D_immd_bus(7) <= \D_immd_bus[7]~output_o\;

ww_D_immd_bus(8) <= \D_immd_bus[8]~output_o\;

ww_D_immd_bus(9) <= \D_immd_bus[9]~output_o\;

ww_D_immd_bus(10) <= \D_immd_bus[10]~output_o\;

ww_D_immd_bus(11) <= \D_immd_bus[11]~output_o\;

ww_D_immd_bus(12) <= \D_immd_bus[12]~output_o\;

ww_D_immd_bus(13) <= \D_immd_bus[13]~output_o\;

ww_D_immd_bus(14) <= \D_immd_bus[14]~output_o\;

ww_D_immd_bus(15) <= \D_immd_bus[15]~output_o\;

ww_D_rfout_bus(0) <= \D_rfout_bus[0]~output_o\;

ww_D_rfout_bus(1) <= \D_rfout_bus[1]~output_o\;

ww_D_rfout_bus(2) <= \D_rfout_bus[2]~output_o\;

ww_D_rfout_bus(3) <= \D_rfout_bus[3]~output_o\;

ww_D_rfout_bus(4) <= \D_rfout_bus[4]~output_o\;

ww_D_rfout_bus(5) <= \D_rfout_bus[5]~output_o\;

ww_D_rfout_bus(6) <= \D_rfout_bus[6]~output_o\;

ww_D_rfout_bus(7) <= \D_rfout_bus[7]~output_o\;

ww_D_rfout_bus(8) <= \D_rfout_bus[8]~output_o\;

ww_D_rfout_bus(9) <= \D_rfout_bus[9]~output_o\;

ww_D_rfout_bus(10) <= \D_rfout_bus[10]~output_o\;

ww_D_rfout_bus(11) <= \D_rfout_bus[11]~output_o\;

ww_D_rfout_bus(12) <= \D_rfout_bus[12]~output_o\;

ww_D_rfout_bus(13) <= \D_rfout_bus[13]~output_o\;

ww_D_rfout_bus(14) <= \D_rfout_bus[14]~output_o\;

ww_D_rfout_bus(15) <= \D_rfout_bus[15]~output_o\;

ww_D_mem_addr(0) <= \D_mem_addr[0]~output_o\;

ww_D_mem_addr(1) <= \D_mem_addr[1]~output_o\;

ww_D_mem_addr(2) <= \D_mem_addr[2]~output_o\;

ww_D_mem_addr(3) <= \D_mem_addr[3]~output_o\;

ww_D_mem_addr(4) <= \D_mem_addr[4]~output_o\;

ww_D_mem_addr(5) <= \D_mem_addr[5]~output_o\;

ww_D_mem_addr(6) <= \D_mem_addr[6]~output_o\;

ww_D_mem_addr(7) <= \D_mem_addr[7]~output_o\;

ww_D_mem_addr(8) <= \D_mem_addr[8]~output_o\;

ww_D_mem_addr(9) <= \D_mem_addr[9]~output_o\;

ww_D_mem_addr(10) <= \D_mem_addr[10]~output_o\;

ww_D_mem_addr(11) <= \D_mem_addr[11]~output_o\;

ww_D_RFwa_s(0) <= \D_RFwa_s[0]~output_o\;

ww_D_RFwa_s(1) <= \D_RFwa_s[1]~output_o\;

ww_D_RFwa_s(2) <= \D_RFwa_s[2]~output_o\;

ww_D_RFwa_s(3) <= \D_RFwa_s[3]~output_o\;

ww_D_RFr1a_s(0) <= \D_RFr1a_s[0]~output_o\;

ww_D_RFr1a_s(1) <= \D_RFr1a_s[1]~output_o\;

ww_D_RFr1a_s(2) <= \D_RFr1a_s[2]~output_o\;

ww_D_RFr1a_s(3) <= \D_RFr1a_s[3]~output_o\;

ww_D_RFr2a_s(0) <= \D_RFr2a_s[0]~output_o\;

ww_D_RFr2a_s(1) <= \D_RFr2a_s[1]~output_o\;

ww_D_RFr2a_s(2) <= \D_RFr2a_s[2]~output_o\;

ww_D_RFr2a_s(3) <= \D_RFr2a_s[3]~output_o\;

ww_D_RFwe_s <= \D_RFwe_s~output_o\;

ww_D_RFr1e_s <= \D_RFr1e_s~output_o\;

ww_D_RFr2e_s <= \D_RFr2e_s~output_o\;

ww_D_ALUs_s(0) <= \D_ALUs_s[0]~output_o\;

ww_D_ALUs_s(1) <= \D_ALUs_s[1]~output_o\;

ww_D_RFs_s(0) <= \D_RFs_s[0]~output_o\;

ww_D_RFs_s(1) <= \D_RFs_s[1]~output_o\;

ww_D_PCld_s <= \D_PCld_s~output_o\;

ww_D_Mre_s <= \D_Mre_s~output_o\;

ww_D_Mwe_s <= \D_Mwe_s~output_o\;

ww_D_jpz_s <= \D_jpz_s~output_o\;

ww_D_oe_s <= \D_oe_s~output_o\;

ww_D_cur_state(0) <= \D_cur_state[0]~output_o\;

ww_D_cur_state(1) <= \D_cur_state[1]~output_o\;

ww_D_cur_state(2) <= \D_cur_state[2]~output_o\;

ww_D_cur_state(3) <= \D_cur_state[3]~output_o\;

ww_D_big_addr <= \D_big_addr~output_o\;

ww_D_main_mem_status <= \D_main_mem_status~output_o\;

ww_D_main_mem_clk <= \D_main_mem_clk~output_o\;
END structure;


