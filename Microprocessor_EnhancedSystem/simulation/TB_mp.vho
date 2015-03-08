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

-- DATE "03/07/2015 20:46:27"

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
	D_ALUs_s : OUT std_logic_vector(2 DOWNTO 0);
	D_RFs_s : OUT std_logic_vector(1 DOWNTO 0);
	D_PCld_s : OUT std_logic;
	D_Mre_s : OUT std_logic;
	D_Mwe_s : OUT std_logic;
	D_jpz_s : OUT std_logic;
	D_oe_s : OUT std_logic;
	D_cur_state : OUT std_logic_vector(7 DOWNTO 0);
	D_big_addr : OUT std_logic;
	D_main_mem_status : OUT std_logic;
	D_main_mem_clk : OUT std_logic;
	D_rf0 : OUT std_logic_vector(15 DOWNTO 0);
	D_rf1 : OUT std_logic_vector(15 DOWNTO 0);
	D_rf2 : OUT std_logic_vector(15 DOWNTO 0);
	D_rf3 : OUT std_logic_vector(15 DOWNTO 0);
	D_rf4 : OUT std_logic_vector(15 DOWNTO 0);
	D_rf5 : OUT std_logic_vector(15 DOWNTO 0);
	D_rf6 : OUT std_logic_vector(15 DOWNTO 0);
	D_rf7 : OUT std_logic_vector(15 DOWNTO 0);
	D_rf8 : OUT std_logic_vector(15 DOWNTO 0);
	D_rf9 : OUT std_logic_vector(15 DOWNTO 0);
	D_rfA : OUT std_logic_vector(15 DOWNTO 0);
	D_rfB : OUT std_logic_vector(15 DOWNTO 0);
	D_rfC : OUT std_logic_vector(15 DOWNTO 0);
	D_rfD : OUT std_logic_vector(15 DOWNTO 0);
	D_rfE : OUT std_logic_vector(15 DOWNTO 0);
	D_rfF : OUT std_logic_vector(15 DOWNTO 0)
	);
END microprocessor;

-- Design Ports Information
-- cpu_output[0]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu_output[1]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu_output[2]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu_output[3]	=>  Location: PIN_AE8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu_output[4]	=>  Location: PIN_V26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu_output[5]	=>  Location: PIN_AF12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu_output[6]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu_output[7]	=>  Location: PIN_AC21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu_output[8]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu_output[9]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu_output[10]	=>  Location: PIN_AD1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu_output[11]	=>  Location: PIN_AE13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu_output[12]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu_output[13]	=>  Location: PIN_U5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu_output[14]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu_output[15]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_addr_bus[0]	=>  Location: PIN_AC11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_addr_bus[1]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_addr_bus[2]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_addr_bus[3]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_addr_bus[4]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_addr_bus[5]	=>  Location: PIN_V2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_addr_bus[6]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_addr_bus[7]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_addr_bus[8]	=>  Location: PIN_AH10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_addr_bus[9]	=>  Location: PIN_AD19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_addr_bus[10]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_addr_bus[11]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_addr_bus[12]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_addr_bus[13]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_addr_bus[14]	=>  Location: PIN_AF20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_addr_bus[15]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_mdin_bus[0]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_mdin_bus[1]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_mdin_bus[2]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_mdin_bus[3]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_mdin_bus[4]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_mdin_bus[5]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_mdin_bus[6]	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_mdin_bus[7]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_mdin_bus[8]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_mdin_bus[9]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_mdin_bus[10]	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_mdin_bus[11]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_mdin_bus[12]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_mdin_bus[13]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_mdin_bus[14]	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_mdin_bus[15]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_mdout_bus[0]	=>  Location: PIN_AE10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_mdout_bus[1]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_mdout_bus[2]	=>  Location: PIN_AC10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_mdout_bus[3]	=>  Location: PIN_AH8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_mdout_bus[4]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_mdout_bus[5]	=>  Location: PIN_AF11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_mdout_bus[6]	=>  Location: PIN_AF21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_mdout_bus[7]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_mdout_bus[8]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_mdout_bus[9]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_mdout_bus[10]	=>  Location: PIN_AC3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_mdout_bus[11]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_mdout_bus[12]	=>  Location: PIN_AE25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_mdout_bus[13]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_mdout_bus[14]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_mdout_bus[15]	=>  Location: PIN_AB1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_immd_bus[0]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_immd_bus[1]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_immd_bus[2]	=>  Location: PIN_AE15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_immd_bus[3]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_immd_bus[4]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_immd_bus[5]	=>  Location: PIN_AC15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_immd_bus[6]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_immd_bus[7]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_immd_bus[8]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_immd_bus[9]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_immd_bus[10]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_immd_bus[11]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_immd_bus[12]	=>  Location: PIN_D4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_immd_bus[13]	=>  Location: PIN_AE5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_immd_bus[14]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_immd_bus[15]	=>  Location: PIN_AC22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rfout_bus[0]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rfout_bus[1]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rfout_bus[2]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rfout_bus[3]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rfout_bus[4]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rfout_bus[5]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rfout_bus[6]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rfout_bus[7]	=>  Location: PIN_K28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rfout_bus[8]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rfout_bus[9]	=>  Location: PIN_L27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rfout_bus[10]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rfout_bus[11]	=>  Location: PIN_H23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rfout_bus[12]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rfout_bus[13]	=>  Location: PIN_H25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rfout_bus[14]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rfout_bus[15]	=>  Location: PIN_L23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_mem_addr[0]	=>  Location: PIN_AE14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_mem_addr[1]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_mem_addr[2]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_mem_addr[3]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_mem_addr[4]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_mem_addr[5]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_mem_addr[6]	=>  Location: PIN_AE9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_mem_addr[7]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_mem_addr[8]	=>  Location: PIN_AG10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_mem_addr[9]	=>  Location: PIN_AE22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_mem_addr[10]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_mem_addr[11]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_RFwa_s[0]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_RFwa_s[1]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_RFwa_s[2]	=>  Location: PIN_L24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_RFwa_s[3]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_RFr1a_s[0]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_RFr1a_s[1]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_RFr1a_s[2]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_RFr1a_s[3]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_RFr2a_s[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_RFr2a_s[1]	=>  Location: PIN_G27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_RFr2a_s[2]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_RFr2a_s[3]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_RFwe_s	=>  Location: PIN_V24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_RFr1e_s	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_RFr2e_s	=>  Location: PIN_M26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_ALUs_s[0]	=>  Location: PIN_M27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_ALUs_s[1]	=>  Location: PIN_U26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_ALUs_s[2]	=>  Location: PIN_P27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_RFs_s[0]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_RFs_s[1]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_PCld_s	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_Mre_s	=>  Location: PIN_M28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_Mwe_s	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_jpz_s	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_oe_s	=>  Location: PIN_AF8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_cur_state[0]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_cur_state[1]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_cur_state[2]	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_cur_state[3]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_cur_state[4]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_cur_state[5]	=>  Location: PIN_AF25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_cur_state[6]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_cur_state[7]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_big_addr	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_main_mem_status	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_main_mem_clk	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rf0[0]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rf0[1]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rf0[2]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rf0[3]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rf0[4]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rf0[5]	=>  Location: PIN_A25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rf0[6]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rf0[7]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rf0[8]	=>  Location: PIN_L21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rf0[9]	=>  Location: PIN_U27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rf0[10]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rf0[11]	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rf0[12]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rf0[13]	=>  Location: PIN_AF22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rf0[14]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rf0[15]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rf1[0]	=>  Location: PIN_U4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rf1[1]	=>  Location: PIN_AH11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rf1[2]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rf1[3]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rf1[4]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rf1[5]	=>  Location: PIN_N25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rf1[6]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rf1[7]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rf1[8]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rf1[9]	=>  Location: PIN_D26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rf1[10]	=>  Location: PIN_T25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rf1[11]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rf1[12]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rf1[13]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rf1[14]	=>  Location: PIN_E28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rf1[15]	=>  Location: PIN_AH25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rf2[0]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rf2[1]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rf2[2]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rf2[3]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rf2[4]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rf2[5]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rf2[6]	=>  Location: PIN_T26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rf2[7]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rf2[8]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rf2[9]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rf2[10]	=>  Location: PIN_R25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rf2[11]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rf2[12]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rf2[13]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rf2[14]	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rf2[15]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rf3[0]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rf3[1]	=>  Location: PIN_J26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rf3[2]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rf3[3]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rf3[4]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rf3[5]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rf3[6]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rf3[7]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rf3[8]	=>  Location: PIN_V22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rf3[9]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rf3[10]	=>  Location: PIN_B26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rf3[11]	=>  Location: PIN_V23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rf3[12]	=>  Location: PIN_M25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rf3[13]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rf3[14]	=>  Location: PIN_C27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rf3[15]	=>  Location: PIN_AB2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rf4[0]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rf4[1]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rf4[2]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rf4[3]	=>  Location: PIN_F26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rf4[4]	=>  Location: PIN_AD14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rf4[5]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rf4[6]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rf4[7]	=>  Location: PIN_AC19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rf4[8]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rf4[9]	=>  Location: PIN_J23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rf4[10]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rf4[11]	=>  Location: PIN_D24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rf4[12]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rf4[13]	=>  Location: PIN_K3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rf4[14]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rf4[15]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rf5[0]	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rf5[1]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rf5[2]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rf5[3]	=>  Location: PIN_G28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rf5[4]	=>  Location: PIN_AF26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rf5[5]	=>  Location: PIN_H24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rf5[6]	=>  Location: PIN_AE7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rf5[7]	=>  Location: PIN_F24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rf5[8]	=>  Location: PIN_K27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rf5[9]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rf5[10]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rf5[11]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rf5[12]	=>  Location: PIN_C23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rf5[13]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rf5[14]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rf5[15]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rf6[0]	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rf6[1]	=>  Location: PIN_AE21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rf6[2]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rf6[3]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rf6[4]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rf6[5]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rf6[6]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rf6[7]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rf6[8]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rf6[9]	=>  Location: PIN_D23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rf6[10]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rf6[11]	=>  Location: PIN_J24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rf6[12]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rf6[13]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rf6[14]	=>  Location: PIN_D28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rf6[15]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rf7[0]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rf7[1]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rf7[2]	=>  Location: PIN_K26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rf7[3]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rf7[4]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rf7[5]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rf7[6]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rf7[7]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rf7[8]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rf7[9]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rf7[10]	=>  Location: PIN_K25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rf7[11]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rf7[12]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rf7[13]	=>  Location: PIN_AG11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rf7[14]	=>  Location: PIN_F27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rf7[15]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rf8[0]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rf8[1]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rf8[2]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rf8[3]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rf8[4]	=>  Location: PIN_U25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rf8[5]	=>  Location: PIN_U28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rf8[6]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rf8[7]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rf8[8]	=>  Location: PIN_AF24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rf8[9]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rf8[10]	=>  Location: PIN_P25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rf8[11]	=>  Location: PIN_Y12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rf8[12]	=>  Location: PIN_R23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rf8[13]	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rf8[14]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rf8[15]	=>  Location: PIN_AH23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rf9[0]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rf9[1]	=>  Location: PIN_T21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rf9[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rf9[3]	=>  Location: PIN_P26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rf9[4]	=>  Location: PIN_V28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rf9[5]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rf9[6]	=>  Location: PIN_AD25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rf9[7]	=>  Location: PIN_C25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rf9[8]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rf9[9]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rf9[10]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rf9[11]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rf9[12]	=>  Location: PIN_AG25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rf9[13]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rf9[14]	=>  Location: PIN_AE20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rf9[15]	=>  Location: PIN_G25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rfA[0]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rfA[1]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rfA[2]	=>  Location: PIN_U3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rfA[3]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rfA[4]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rfA[5]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rfA[6]	=>  Location: PIN_A26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rfA[7]	=>  Location: PIN_E26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rfA[8]	=>  Location: PIN_B23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rfA[9]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rfA[10]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rfA[11]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rfA[12]	=>  Location: PIN_AC2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rfA[13]	=>  Location: PIN_H26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rfA[14]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rfA[15]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rfB[0]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rfB[1]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rfB[2]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rfB[3]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rfB[4]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rfB[5]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rfB[6]	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rfB[7]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rfB[8]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rfB[9]	=>  Location: PIN_L28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rfB[10]	=>  Location: PIN_R26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rfB[11]	=>  Location: PIN_B25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rfB[12]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rfB[13]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rfB[14]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rfB[15]	=>  Location: PIN_R27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rfC[0]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rfC[1]	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rfC[2]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rfC[3]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rfC[4]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rfC[5]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rfC[6]	=>  Location: PIN_AH22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rfC[7]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rfC[8]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rfC[9]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rfC[10]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rfC[11]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rfC[12]	=>  Location: PIN_J25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rfC[13]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rfC[14]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rfC[15]	=>  Location: PIN_D25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rfD[0]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rfD[1]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rfD[2]	=>  Location: PIN_AG12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rfD[3]	=>  Location: PIN_V27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rfD[4]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rfD[5]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rfD[6]	=>  Location: PIN_F28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rfD[7]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rfD[8]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rfD[9]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rfD[10]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rfD[11]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rfD[12]	=>  Location: PIN_E27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rfD[13]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rfD[14]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rfD[15]	=>  Location: PIN_J5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rfE[0]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rfE[1]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rfE[2]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rfE[3]	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rfE[4]	=>  Location: PIN_AG22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rfE[5]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rfE[6]	=>  Location: PIN_R28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rfE[7]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rfE[8]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rfE[9]	=>  Location: PIN_G7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rfE[10]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rfE[11]	=>  Location: PIN_AG23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rfE[12]	=>  Location: PIN_C24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rfE[13]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rfE[14]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rfE[15]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rfF[0]	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rfF[1]	=>  Location: PIN_H3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rfF[2]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rfF[3]	=>  Location: PIN_AD15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rfF[4]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rfF[5]	=>  Location: PIN_N26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rfF[6]	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rfF[7]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rfF[8]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rfF[9]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rfF[10]	=>  Location: PIN_D27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rfF[11]	=>  Location: PIN_A23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rfF[12]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rfF[13]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rfF[14]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_rfF[15]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL ww_D_ALUs_s : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_D_RFs_s : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_D_PCld_s : std_logic;
SIGNAL ww_D_Mre_s : std_logic;
SIGNAL ww_D_Mwe_s : std_logic;
SIGNAL ww_D_jpz_s : std_logic;
SIGNAL ww_D_oe_s : std_logic;
SIGNAL ww_D_cur_state : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_D_big_addr : std_logic;
SIGNAL ww_D_main_mem_status : std_logic;
SIGNAL ww_D_main_mem_clk : std_logic;
SIGNAL ww_D_rf0 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_D_rf1 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_D_rf2 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_D_rf3 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_D_rf4 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_D_rf5 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_D_rf6 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_D_rf7 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_D_rf8 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_D_rf9 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_D_rfA : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_D_rfB : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_D_rfC : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_D_rfD : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_D_rfE : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_D_rfF : std_logic_vector(15 DOWNTO 0);
SIGNAL \Unit2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \Unit2|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \Unit2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \Unit2|altsyncram_component|auto_generated|ram_block1a2_PORTADATAIN_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \Unit2|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \Unit2|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \Unit2|altsyncram_component|auto_generated|ram_block1a4_PORTADATAIN_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \Unit2|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \Unit2|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \Unit2|altsyncram_component|auto_generated|ram_block1a6_PORTADATAIN_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \Unit2|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \Unit2|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \Unit2|altsyncram_component|auto_generated|ram_block1a8_PORTADATAIN_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \Unit2|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \Unit2|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \Unit2|altsyncram_component|auto_generated|ram_block1a10_PORTADATAIN_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \Unit2|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \Unit2|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \Unit2|altsyncram_component|auto_generated|ram_block1a12_PORTADATAIN_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \Unit2|altsyncram_component|auto_generated|ram_block1a12_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \Unit2|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \Unit2|altsyncram_component|auto_generated|ram_block1a14_PORTADATAIN_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \Unit2|altsyncram_component|auto_generated|ram_block1a14_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \Unit2|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \Unit1|U3|Mult0|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Unit1|U3|Mult0|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Unit1|U3|Mult0|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Unit1|U3|Mult0|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Unit1|U3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Unit1|U3|Mux1~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Unit0|U0|IRld_ctrl~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \cpu_rst~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Unit1|U3|Mux33~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \cpu_clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Unit0|U1|tmp_PC[5]~27_combout\ : std_logic;
SIGNAL \Unit0|U1|tmp_PC[6]~29_combout\ : std_logic;
SIGNAL \Unit0|U1|tmp_PC[11]~39_combout\ : std_logic;
SIGNAL \Unit1|U3|Add0~3_combout\ : std_logic;
SIGNAL \Unit1|U3|Add0~18_combout\ : std_logic;
SIGNAL \Unit1|U3|Add0~33_combout\ : std_logic;
SIGNAL \Unit1|U3|Add0~45_combout\ : std_logic;
SIGNAL \Unit1|U3|Mult0|auto_generated|mac_out2~DATAOUT3\ : std_logic;
SIGNAL \Unit1|U3|Mult0|auto_generated|mac_out2~DATAOUT7\ : std_logic;
SIGNAL \Unit1|U3|Mult0|auto_generated|mac_out2~DATAOUT11\ : std_logic;
SIGNAL \Unit1|U3|Mult0|auto_generated|mac_out2~DATAOUT14\ : std_logic;
SIGNAL \Unit1|U3|Mult0|auto_generated|mac_out2~DATAOUT16\ : std_logic;
SIGNAL \Unit1|U3|Mult0|auto_generated|mac_out2~DATAOUT17\ : std_logic;
SIGNAL \Unit1|U3|Mult0|auto_generated|mac_out2~DATAOUT18\ : std_logic;
SIGNAL \Unit1|U3|Mult0|auto_generated|mac_out2~DATAOUT19\ : std_logic;
SIGNAL \Unit1|U3|Mult0|auto_generated|mac_out2~DATAOUT20\ : std_logic;
SIGNAL \Unit1|U3|Mult0|auto_generated|mac_out2~DATAOUT21\ : std_logic;
SIGNAL \Unit1|U3|Mult0|auto_generated|mac_out2~DATAOUT22\ : std_logic;
SIGNAL \Unit1|U3|Mult0|auto_generated|mac_out2~DATAOUT23\ : std_logic;
SIGNAL \Unit1|U3|Mult0|auto_generated|mac_out2~DATAOUT24\ : std_logic;
SIGNAL \Unit1|U3|Mult0|auto_generated|mac_out2~DATAOUT25\ : std_logic;
SIGNAL \Unit1|U3|Mult0|auto_generated|mac_out2~DATAOUT26\ : std_logic;
SIGNAL \Unit1|U3|Mult0|auto_generated|mac_out2~DATAOUT27\ : std_logic;
SIGNAL \Unit1|U3|Mult0|auto_generated|mac_out2~DATAOUT28\ : std_logic;
SIGNAL \Unit1|U3|Mult0|auto_generated|mac_out2~DATAOUT29\ : std_logic;
SIGNAL \Unit1|U3|Mult0|auto_generated|mac_out2~DATAOUT30\ : std_logic;
SIGNAL \Unit1|U3|Mult0|auto_generated|mac_out2~DATAOUT31\ : std_logic;
SIGNAL \Unit1|U3|Mult0|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \Unit1|U3|Mult0|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \Unit1|U3|Mult0|auto_generated|mac_out2~2\ : std_logic;
SIGNAL \Unit1|U3|Mult0|auto_generated|mac_out2~3\ : std_logic;
SIGNAL \Unit1|U3|ALUz~0_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux14~7_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux14~8_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux13~0_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux13~7_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux13~8_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux11~4_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux11~5_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux10~7_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux9~0_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux9~1_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux6~0_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux6~1_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux6~2_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux6~7_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux5~2_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux5~3_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux5~4_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux5~5_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux5~6_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux5~7_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux1~0_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux1~2_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux1~3_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux1~4_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux1~5_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux1~6_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux0~7_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux0~8_combout\ : std_logic;
SIGNAL \Unit1|U3|Mux19~0_combout\ : std_logic;
SIGNAL \Unit1|U3|Add0~14_combout\ : std_logic;
SIGNAL \Unit1|U3|Add0~17_combout\ : std_logic;
SIGNAL \Unit1|U3|Mux22~0_combout\ : std_logic;
SIGNAL \Unit1|U3|Mux23~0_combout\ : std_logic;
SIGNAL \Unit1|U3|Add0~23_combout\ : std_logic;
SIGNAL \Unit1|U3|Add0~29_combout\ : std_logic;
SIGNAL \Unit1|U3|Add0~32_combout\ : std_logic;
SIGNAL \Unit1|U3|Add0~35_combout\ : std_logic;
SIGNAL \Unit1|U3|Add0~38_combout\ : std_logic;
SIGNAL \Unit1|U3|Mux31~0_combout\ : std_logic;
SIGNAL \Unit1|U3|Mux31~1_combout\ : std_logic;
SIGNAL \Unit1|U3|Mux32~0_combout\ : std_logic;
SIGNAL \Unit0|U0|WideOr63~0_combout\ : std_logic;
SIGNAL \Unit0|U0|Selector53~1_combout\ : std_logic;
SIGNAL \Unit0|U0|Selector52~0_combout\ : std_logic;
SIGNAL \Unit0|U0|Selector52~1_combout\ : std_logic;
SIGNAL \Unit0|U0|state.S_HALT~q\ : std_logic;
SIGNAL \Unit0|U0|WideOr1~1_combout\ : std_logic;
SIGNAL \Unit0|U0|WideOr1~2_combout\ : std_logic;
SIGNAL \Unit0|U0|WideOr1~3_combout\ : std_logic;
SIGNAL \Unit0|U0|WideOr4~0_combout\ : std_logic;
SIGNAL \Unit0|U0|WideOr3~1_combout\ : std_logic;
SIGNAL \Unit0|U0|WideOr3~4_combout\ : std_logic;
SIGNAL \Unit0|U0|WideOr11~0_combout\ : std_logic;
SIGNAL \Unit0|U0|WideOr1~4_combout\ : std_logic;
SIGNAL \Unit0|U0|WideOr0~2_combout\ : std_logic;
SIGNAL \Unit0|U0|Selector54~0_combout\ : std_logic;
SIGNAL \Unit1|U2|Decoder0~12_combout\ : std_logic;
SIGNAL \Unit0|U0|Mux0~0_combout\ : std_logic;
SIGNAL \Unit0|U0|Selector1~0_combout\ : std_logic;
SIGNAL \Unit0|U0|WideOr11~2_combout\ : std_logic;
SIGNAL \Unit0|U0|Selector12~0_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux31~7_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux31~8_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux29~0_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux29~1_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux29~7_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux28~7_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux28~8_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux27~2_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux27~3_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux27~4_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux27~5_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux27~6_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux26~0_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux26~1_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux26~4_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux26~5_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux26~7_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux25~7_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux25~8_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux24~7_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux24~8_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux23~0_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux23~1_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux23~2_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux23~3_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux22~0_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux22~1_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux22~4_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux21~0_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux21~1_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux21~2_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux21~3_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux20~2_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux20~7_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux18~4_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux18~7_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux18~8_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux17~4_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux17~5_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux17~7_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux17~8_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux16~4_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux16~5_combout\ : std_logic;
SIGNAL \Unit0|U0|Mux1~13_combout\ : std_logic;
SIGNAL \Unit0|U0|state.S_HALT~0_combout\ : std_logic;
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
SIGNAL \D_ALUs_s[2]~output_o\ : std_logic;
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
SIGNAL \D_cur_state[4]~output_o\ : std_logic;
SIGNAL \D_cur_state[5]~output_o\ : std_logic;
SIGNAL \D_cur_state[6]~output_o\ : std_logic;
SIGNAL \D_cur_state[7]~output_o\ : std_logic;
SIGNAL \D_big_addr~output_o\ : std_logic;
SIGNAL \D_main_mem_status~output_o\ : std_logic;
SIGNAL \D_main_mem_clk~output_o\ : std_logic;
SIGNAL \D_rf0[0]~output_o\ : std_logic;
SIGNAL \D_rf0[1]~output_o\ : std_logic;
SIGNAL \D_rf0[2]~output_o\ : std_logic;
SIGNAL \D_rf0[3]~output_o\ : std_logic;
SIGNAL \D_rf0[4]~output_o\ : std_logic;
SIGNAL \D_rf0[5]~output_o\ : std_logic;
SIGNAL \D_rf0[6]~output_o\ : std_logic;
SIGNAL \D_rf0[7]~output_o\ : std_logic;
SIGNAL \D_rf0[8]~output_o\ : std_logic;
SIGNAL \D_rf0[9]~output_o\ : std_logic;
SIGNAL \D_rf0[10]~output_o\ : std_logic;
SIGNAL \D_rf0[11]~output_o\ : std_logic;
SIGNAL \D_rf0[12]~output_o\ : std_logic;
SIGNAL \D_rf0[13]~output_o\ : std_logic;
SIGNAL \D_rf0[14]~output_o\ : std_logic;
SIGNAL \D_rf0[15]~output_o\ : std_logic;
SIGNAL \D_rf1[0]~output_o\ : std_logic;
SIGNAL \D_rf1[1]~output_o\ : std_logic;
SIGNAL \D_rf1[2]~output_o\ : std_logic;
SIGNAL \D_rf1[3]~output_o\ : std_logic;
SIGNAL \D_rf1[4]~output_o\ : std_logic;
SIGNAL \D_rf1[5]~output_o\ : std_logic;
SIGNAL \D_rf1[6]~output_o\ : std_logic;
SIGNAL \D_rf1[7]~output_o\ : std_logic;
SIGNAL \D_rf1[8]~output_o\ : std_logic;
SIGNAL \D_rf1[9]~output_o\ : std_logic;
SIGNAL \D_rf1[10]~output_o\ : std_logic;
SIGNAL \D_rf1[11]~output_o\ : std_logic;
SIGNAL \D_rf1[12]~output_o\ : std_logic;
SIGNAL \D_rf1[13]~output_o\ : std_logic;
SIGNAL \D_rf1[14]~output_o\ : std_logic;
SIGNAL \D_rf1[15]~output_o\ : std_logic;
SIGNAL \D_rf2[0]~output_o\ : std_logic;
SIGNAL \D_rf2[1]~output_o\ : std_logic;
SIGNAL \D_rf2[2]~output_o\ : std_logic;
SIGNAL \D_rf2[3]~output_o\ : std_logic;
SIGNAL \D_rf2[4]~output_o\ : std_logic;
SIGNAL \D_rf2[5]~output_o\ : std_logic;
SIGNAL \D_rf2[6]~output_o\ : std_logic;
SIGNAL \D_rf2[7]~output_o\ : std_logic;
SIGNAL \D_rf2[8]~output_o\ : std_logic;
SIGNAL \D_rf2[9]~output_o\ : std_logic;
SIGNAL \D_rf2[10]~output_o\ : std_logic;
SIGNAL \D_rf2[11]~output_o\ : std_logic;
SIGNAL \D_rf2[12]~output_o\ : std_logic;
SIGNAL \D_rf2[13]~output_o\ : std_logic;
SIGNAL \D_rf2[14]~output_o\ : std_logic;
SIGNAL \D_rf2[15]~output_o\ : std_logic;
SIGNAL \D_rf3[0]~output_o\ : std_logic;
SIGNAL \D_rf3[1]~output_o\ : std_logic;
SIGNAL \D_rf3[2]~output_o\ : std_logic;
SIGNAL \D_rf3[3]~output_o\ : std_logic;
SIGNAL \D_rf3[4]~output_o\ : std_logic;
SIGNAL \D_rf3[5]~output_o\ : std_logic;
SIGNAL \D_rf3[6]~output_o\ : std_logic;
SIGNAL \D_rf3[7]~output_o\ : std_logic;
SIGNAL \D_rf3[8]~output_o\ : std_logic;
SIGNAL \D_rf3[9]~output_o\ : std_logic;
SIGNAL \D_rf3[10]~output_o\ : std_logic;
SIGNAL \D_rf3[11]~output_o\ : std_logic;
SIGNAL \D_rf3[12]~output_o\ : std_logic;
SIGNAL \D_rf3[13]~output_o\ : std_logic;
SIGNAL \D_rf3[14]~output_o\ : std_logic;
SIGNAL \D_rf3[15]~output_o\ : std_logic;
SIGNAL \D_rf4[0]~output_o\ : std_logic;
SIGNAL \D_rf4[1]~output_o\ : std_logic;
SIGNAL \D_rf4[2]~output_o\ : std_logic;
SIGNAL \D_rf4[3]~output_o\ : std_logic;
SIGNAL \D_rf4[4]~output_o\ : std_logic;
SIGNAL \D_rf4[5]~output_o\ : std_logic;
SIGNAL \D_rf4[6]~output_o\ : std_logic;
SIGNAL \D_rf4[7]~output_o\ : std_logic;
SIGNAL \D_rf4[8]~output_o\ : std_logic;
SIGNAL \D_rf4[9]~output_o\ : std_logic;
SIGNAL \D_rf4[10]~output_o\ : std_logic;
SIGNAL \D_rf4[11]~output_o\ : std_logic;
SIGNAL \D_rf4[12]~output_o\ : std_logic;
SIGNAL \D_rf4[13]~output_o\ : std_logic;
SIGNAL \D_rf4[14]~output_o\ : std_logic;
SIGNAL \D_rf4[15]~output_o\ : std_logic;
SIGNAL \D_rf5[0]~output_o\ : std_logic;
SIGNAL \D_rf5[1]~output_o\ : std_logic;
SIGNAL \D_rf5[2]~output_o\ : std_logic;
SIGNAL \D_rf5[3]~output_o\ : std_logic;
SIGNAL \D_rf5[4]~output_o\ : std_logic;
SIGNAL \D_rf5[5]~output_o\ : std_logic;
SIGNAL \D_rf5[6]~output_o\ : std_logic;
SIGNAL \D_rf5[7]~output_o\ : std_logic;
SIGNAL \D_rf5[8]~output_o\ : std_logic;
SIGNAL \D_rf5[9]~output_o\ : std_logic;
SIGNAL \D_rf5[10]~output_o\ : std_logic;
SIGNAL \D_rf5[11]~output_o\ : std_logic;
SIGNAL \D_rf5[12]~output_o\ : std_logic;
SIGNAL \D_rf5[13]~output_o\ : std_logic;
SIGNAL \D_rf5[14]~output_o\ : std_logic;
SIGNAL \D_rf5[15]~output_o\ : std_logic;
SIGNAL \D_rf6[0]~output_o\ : std_logic;
SIGNAL \D_rf6[1]~output_o\ : std_logic;
SIGNAL \D_rf6[2]~output_o\ : std_logic;
SIGNAL \D_rf6[3]~output_o\ : std_logic;
SIGNAL \D_rf6[4]~output_o\ : std_logic;
SIGNAL \D_rf6[5]~output_o\ : std_logic;
SIGNAL \D_rf6[6]~output_o\ : std_logic;
SIGNAL \D_rf6[7]~output_o\ : std_logic;
SIGNAL \D_rf6[8]~output_o\ : std_logic;
SIGNAL \D_rf6[9]~output_o\ : std_logic;
SIGNAL \D_rf6[10]~output_o\ : std_logic;
SIGNAL \D_rf6[11]~output_o\ : std_logic;
SIGNAL \D_rf6[12]~output_o\ : std_logic;
SIGNAL \D_rf6[13]~output_o\ : std_logic;
SIGNAL \D_rf6[14]~output_o\ : std_logic;
SIGNAL \D_rf6[15]~output_o\ : std_logic;
SIGNAL \D_rf7[0]~output_o\ : std_logic;
SIGNAL \D_rf7[1]~output_o\ : std_logic;
SIGNAL \D_rf7[2]~output_o\ : std_logic;
SIGNAL \D_rf7[3]~output_o\ : std_logic;
SIGNAL \D_rf7[4]~output_o\ : std_logic;
SIGNAL \D_rf7[5]~output_o\ : std_logic;
SIGNAL \D_rf7[6]~output_o\ : std_logic;
SIGNAL \D_rf7[7]~output_o\ : std_logic;
SIGNAL \D_rf7[8]~output_o\ : std_logic;
SIGNAL \D_rf7[9]~output_o\ : std_logic;
SIGNAL \D_rf7[10]~output_o\ : std_logic;
SIGNAL \D_rf7[11]~output_o\ : std_logic;
SIGNAL \D_rf7[12]~output_o\ : std_logic;
SIGNAL \D_rf7[13]~output_o\ : std_logic;
SIGNAL \D_rf7[14]~output_o\ : std_logic;
SIGNAL \D_rf7[15]~output_o\ : std_logic;
SIGNAL \D_rf8[0]~output_o\ : std_logic;
SIGNAL \D_rf8[1]~output_o\ : std_logic;
SIGNAL \D_rf8[2]~output_o\ : std_logic;
SIGNAL \D_rf8[3]~output_o\ : std_logic;
SIGNAL \D_rf8[4]~output_o\ : std_logic;
SIGNAL \D_rf8[5]~output_o\ : std_logic;
SIGNAL \D_rf8[6]~output_o\ : std_logic;
SIGNAL \D_rf8[7]~output_o\ : std_logic;
SIGNAL \D_rf8[8]~output_o\ : std_logic;
SIGNAL \D_rf8[9]~output_o\ : std_logic;
SIGNAL \D_rf8[10]~output_o\ : std_logic;
SIGNAL \D_rf8[11]~output_o\ : std_logic;
SIGNAL \D_rf8[12]~output_o\ : std_logic;
SIGNAL \D_rf8[13]~output_o\ : std_logic;
SIGNAL \D_rf8[14]~output_o\ : std_logic;
SIGNAL \D_rf8[15]~output_o\ : std_logic;
SIGNAL \D_rf9[0]~output_o\ : std_logic;
SIGNAL \D_rf9[1]~output_o\ : std_logic;
SIGNAL \D_rf9[2]~output_o\ : std_logic;
SIGNAL \D_rf9[3]~output_o\ : std_logic;
SIGNAL \D_rf9[4]~output_o\ : std_logic;
SIGNAL \D_rf9[5]~output_o\ : std_logic;
SIGNAL \D_rf9[6]~output_o\ : std_logic;
SIGNAL \D_rf9[7]~output_o\ : std_logic;
SIGNAL \D_rf9[8]~output_o\ : std_logic;
SIGNAL \D_rf9[9]~output_o\ : std_logic;
SIGNAL \D_rf9[10]~output_o\ : std_logic;
SIGNAL \D_rf9[11]~output_o\ : std_logic;
SIGNAL \D_rf9[12]~output_o\ : std_logic;
SIGNAL \D_rf9[13]~output_o\ : std_logic;
SIGNAL \D_rf9[14]~output_o\ : std_logic;
SIGNAL \D_rf9[15]~output_o\ : std_logic;
SIGNAL \D_rfA[0]~output_o\ : std_logic;
SIGNAL \D_rfA[1]~output_o\ : std_logic;
SIGNAL \D_rfA[2]~output_o\ : std_logic;
SIGNAL \D_rfA[3]~output_o\ : std_logic;
SIGNAL \D_rfA[4]~output_o\ : std_logic;
SIGNAL \D_rfA[5]~output_o\ : std_logic;
SIGNAL \D_rfA[6]~output_o\ : std_logic;
SIGNAL \D_rfA[7]~output_o\ : std_logic;
SIGNAL \D_rfA[8]~output_o\ : std_logic;
SIGNAL \D_rfA[9]~output_o\ : std_logic;
SIGNAL \D_rfA[10]~output_o\ : std_logic;
SIGNAL \D_rfA[11]~output_o\ : std_logic;
SIGNAL \D_rfA[12]~output_o\ : std_logic;
SIGNAL \D_rfA[13]~output_o\ : std_logic;
SIGNAL \D_rfA[14]~output_o\ : std_logic;
SIGNAL \D_rfA[15]~output_o\ : std_logic;
SIGNAL \D_rfB[0]~output_o\ : std_logic;
SIGNAL \D_rfB[1]~output_o\ : std_logic;
SIGNAL \D_rfB[2]~output_o\ : std_logic;
SIGNAL \D_rfB[3]~output_o\ : std_logic;
SIGNAL \D_rfB[4]~output_o\ : std_logic;
SIGNAL \D_rfB[5]~output_o\ : std_logic;
SIGNAL \D_rfB[6]~output_o\ : std_logic;
SIGNAL \D_rfB[7]~output_o\ : std_logic;
SIGNAL \D_rfB[8]~output_o\ : std_logic;
SIGNAL \D_rfB[9]~output_o\ : std_logic;
SIGNAL \D_rfB[10]~output_o\ : std_logic;
SIGNAL \D_rfB[11]~output_o\ : std_logic;
SIGNAL \D_rfB[12]~output_o\ : std_logic;
SIGNAL \D_rfB[13]~output_o\ : std_logic;
SIGNAL \D_rfB[14]~output_o\ : std_logic;
SIGNAL \D_rfB[15]~output_o\ : std_logic;
SIGNAL \D_rfC[0]~output_o\ : std_logic;
SIGNAL \D_rfC[1]~output_o\ : std_logic;
SIGNAL \D_rfC[2]~output_o\ : std_logic;
SIGNAL \D_rfC[3]~output_o\ : std_logic;
SIGNAL \D_rfC[4]~output_o\ : std_logic;
SIGNAL \D_rfC[5]~output_o\ : std_logic;
SIGNAL \D_rfC[6]~output_o\ : std_logic;
SIGNAL \D_rfC[7]~output_o\ : std_logic;
SIGNAL \D_rfC[8]~output_o\ : std_logic;
SIGNAL \D_rfC[9]~output_o\ : std_logic;
SIGNAL \D_rfC[10]~output_o\ : std_logic;
SIGNAL \D_rfC[11]~output_o\ : std_logic;
SIGNAL \D_rfC[12]~output_o\ : std_logic;
SIGNAL \D_rfC[13]~output_o\ : std_logic;
SIGNAL \D_rfC[14]~output_o\ : std_logic;
SIGNAL \D_rfC[15]~output_o\ : std_logic;
SIGNAL \D_rfD[0]~output_o\ : std_logic;
SIGNAL \D_rfD[1]~output_o\ : std_logic;
SIGNAL \D_rfD[2]~output_o\ : std_logic;
SIGNAL \D_rfD[3]~output_o\ : std_logic;
SIGNAL \D_rfD[4]~output_o\ : std_logic;
SIGNAL \D_rfD[5]~output_o\ : std_logic;
SIGNAL \D_rfD[6]~output_o\ : std_logic;
SIGNAL \D_rfD[7]~output_o\ : std_logic;
SIGNAL \D_rfD[8]~output_o\ : std_logic;
SIGNAL \D_rfD[9]~output_o\ : std_logic;
SIGNAL \D_rfD[10]~output_o\ : std_logic;
SIGNAL \D_rfD[11]~output_o\ : std_logic;
SIGNAL \D_rfD[12]~output_o\ : std_logic;
SIGNAL \D_rfD[13]~output_o\ : std_logic;
SIGNAL \D_rfD[14]~output_o\ : std_logic;
SIGNAL \D_rfD[15]~output_o\ : std_logic;
SIGNAL \D_rfE[0]~output_o\ : std_logic;
SIGNAL \D_rfE[1]~output_o\ : std_logic;
SIGNAL \D_rfE[2]~output_o\ : std_logic;
SIGNAL \D_rfE[3]~output_o\ : std_logic;
SIGNAL \D_rfE[4]~output_o\ : std_logic;
SIGNAL \D_rfE[5]~output_o\ : std_logic;
SIGNAL \D_rfE[6]~output_o\ : std_logic;
SIGNAL \D_rfE[7]~output_o\ : std_logic;
SIGNAL \D_rfE[8]~output_o\ : std_logic;
SIGNAL \D_rfE[9]~output_o\ : std_logic;
SIGNAL \D_rfE[10]~output_o\ : std_logic;
SIGNAL \D_rfE[11]~output_o\ : std_logic;
SIGNAL \D_rfE[12]~output_o\ : std_logic;
SIGNAL \D_rfE[13]~output_o\ : std_logic;
SIGNAL \D_rfE[14]~output_o\ : std_logic;
SIGNAL \D_rfE[15]~output_o\ : std_logic;
SIGNAL \D_rfF[0]~output_o\ : std_logic;
SIGNAL \D_rfF[1]~output_o\ : std_logic;
SIGNAL \D_rfF[2]~output_o\ : std_logic;
SIGNAL \D_rfF[3]~output_o\ : std_logic;
SIGNAL \D_rfF[4]~output_o\ : std_logic;
SIGNAL \D_rfF[5]~output_o\ : std_logic;
SIGNAL \D_rfF[6]~output_o\ : std_logic;
SIGNAL \D_rfF[7]~output_o\ : std_logic;
SIGNAL \D_rfF[8]~output_o\ : std_logic;
SIGNAL \D_rfF[9]~output_o\ : std_logic;
SIGNAL \D_rfF[10]~output_o\ : std_logic;
SIGNAL \D_rfF[11]~output_o\ : std_logic;
SIGNAL \D_rfF[12]~output_o\ : std_logic;
SIGNAL \D_rfF[13]~output_o\ : std_logic;
SIGNAL \D_rfF[14]~output_o\ : std_logic;
SIGNAL \D_rfF[15]~output_o\ : std_logic;
SIGNAL \cpu_clk~input_o\ : std_logic;
SIGNAL \cpu_clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \Unit0|U0|Mux1~10_combout\ : std_logic;
SIGNAL \cpu_rst~input_o\ : std_logic;
SIGNAL \cpu_rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \Unit0|U0|state.S_FETCH_INST_wait~q\ : std_logic;
SIGNAL \Unit0|U0|Selector2~0_combout\ : std_logic;
SIGNAL \Unit0|U0|state.S_FETCH_INSTa~q\ : std_logic;
SIGNAL \Unit0|U0|state.S_FETCH_INSTb~q\ : std_logic;
SIGNAL \Unit0|U0|state.S_DECODE_INST~q\ : std_logic;
SIGNAL \Unit0|U0|state.S_ADD~q\ : std_logic;
SIGNAL \Unit0|U0|Mux1~12_combout\ : std_logic;
SIGNAL \Unit0|U0|state.S_JUMP_Z~q\ : std_logic;
SIGNAL \Unit0|U0|Mux1~9_combout\ : std_logic;
SIGNAL \Unit0|U0|state.S_MULT~q\ : std_logic;
SIGNAL \Unit0|U0|Mux1~11_combout\ : std_logic;
SIGNAL \Unit0|U0|state.S_SUBT~q\ : std_logic;
SIGNAL \Unit0|U0|WideOr0~0_combout\ : std_logic;
SIGNAL \Unit0|U0|Mux1~4_combout\ : std_logic;
SIGNAL \Unit0|U0|state.S_SHORT_SAVE~q\ : std_logic;
SIGNAL \Unit0|U0|WideOr47~0_combout\ : std_logic;
SIGNAL \Unit0|U0|WideOr63~1_combout\ : std_logic;
SIGNAL \Unit0|U0|Selector73~0_combout\ : std_logic;
SIGNAL \Unit0|U0|Mux1~6_combout\ : std_logic;
SIGNAL \Unit0|U0|state.S_REG_ADDR_SAVE~q\ : std_logic;
SIGNAL \Unit0|U0|Selector56~2_combout\ : std_logic;
SIGNAL \Unit0|U0|Selector72~0_combout\ : std_logic;
SIGNAL \Unit1|U3|Mux33~0_combout\ : std_logic;
SIGNAL \Unit1|U3|Mux33~0clkctrl_outclk\ : std_logic;
SIGNAL \Unit1|U3|Mux17~0_combout\ : std_logic;
SIGNAL \Unit0|U0|Mux1~0_combout\ : std_logic;
SIGNAL \Unit0|U0|state.S_LONG_LOAD_wait~q\ : std_logic;
SIGNAL \Unit0|U0|Mux1~3_combout\ : std_logic;
SIGNAL \Unit0|U0|state.S_OUTPUT_MEM~q\ : std_logic;
SIGNAL \Unit0|U0|state.S_OUTPUT_MEM_wait~q\ : std_logic;
SIGNAL \Unit0|U0|WideOr11~3_combout\ : std_logic;
SIGNAL \Unit0|U0|Selector6~0_combout\ : std_logic;
SIGNAL \Unit0|U0|Mux1~1_combout\ : std_logic;
SIGNAL \Unit0|U0|state.S_SHORT_LOAD~q\ : std_logic;
SIGNAL \Unit0|U0|state.S_SHORT_LOAD_wait~q\ : std_logic;
SIGNAL \Unit0|U0|Selector56~0_combout\ : std_logic;
SIGNAL \Unit0|U0|WideOr11~1_combout\ : std_logic;
SIGNAL \Unit0|U0|Selector6~1_combout\ : std_logic;
SIGNAL \Unit0|U0|state.S_REG_ADDR_LOAD~q\ : std_logic;
SIGNAL \Unit0|U0|state.S_REG_ADDR_LOAD_wait~q\ : std_logic;
SIGNAL \Unit0|U0|state.S_ADDa~q\ : std_logic;
SIGNAL \Unit0|U0|state.S_MULTa~q\ : std_logic;
SIGNAL \Unit0|U0|state.S_SUBTa~q\ : std_logic;
SIGNAL \Unit0|U0|Selector56~1_combout\ : std_logic;
SIGNAL \Unit0|U0|Mux1~8_combout\ : std_logic;
SIGNAL \Unit0|U0|state.S_LONG_IMM_LOAD~q\ : std_logic;
SIGNAL \Unit0|U0|Selector51~0_combout\ : std_logic;
SIGNAL \Unit0|U0|WideOr59~0_combout\ : std_logic;
SIGNAL \Unit0|U0|Selector67~0_combout\ : std_logic;
SIGNAL \Unit1|U1|Mux11~0_combout\ : std_logic;
SIGNAL \Unit1|U1|Mux11~1_combout\ : std_logic;
SIGNAL \Unit0|U0|WideOr58~combout\ : std_logic;
SIGNAL \Unit1|U1|Mux13~0_combout\ : std_logic;
SIGNAL \Unit1|U1|Mux13~1_combout\ : std_logic;
SIGNAL \Unit1|U2|Decoder0~22_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[14][2]~q\ : std_logic;
SIGNAL \Unit0|U0|Selector23~0_combout\ : std_logic;
SIGNAL \Unit0|U0|state.S_REG_ADDR_LOADa~q\ : std_logic;
SIGNAL \Unit0|U0|state.S_REG_ADDR_LOADb~q\ : std_logic;
SIGNAL \Unit0|U0|WideOr57~0_combout\ : std_logic;
SIGNAL \Unit0|U0|Selector65~0_combout\ : std_logic;
SIGNAL \Unit0|U0|Selector53~2_combout\ : std_logic;
SIGNAL \Unit0|U0|RFwe_ctrl~q\ : std_logic;
SIGNAL \Unit0|U0|Selector27~0_combout\ : std_logic;
SIGNAL \Unit0|U0|state.S_REG_ADDR_SAVEa~q\ : std_logic;
SIGNAL \Unit0|U0|state.S_REG_ADDR_SAVE_wait~q\ : std_logic;
SIGNAL \Unit0|U0|Selector28~0_combout\ : std_logic;
SIGNAL \Unit0|U0|state.S_REG_ADDR_SAVEb~q\ : std_logic;
SIGNAL \Unit0|U0|state.S_LONG_SAVE_wait~q\ : std_logic;
SIGNAL \Unit0|U0|Selector21~0_combout\ : std_logic;
SIGNAL \Unit0|U0|state.S_LONG_SAVE_b~q\ : std_logic;
SIGNAL \Unit0|U0|state.S_SHORT_SAVEb~feeder_combout\ : std_logic;
SIGNAL \Unit0|U0|state.S_SHORT_SAVEb~q\ : std_logic;
SIGNAL \Unit0|U0|Selector59~0_combout\ : std_logic;
SIGNAL \Unit0|U0|Selector57~0_combout\ : std_logic;
SIGNAL \Unit0|U0|Selector57~1_combout\ : std_logic;
SIGNAL \Unit0|U1|tmp_PC[0]~16_combout\ : std_logic;
SIGNAL \Unit0|U0|state.S_INIT~feeder_combout\ : std_logic;
SIGNAL \Unit0|U0|state.S_INIT~q\ : std_logic;
SIGNAL \Unit0|U0|PCclr_ctrl~0_combout\ : std_logic;
SIGNAL \Unit0|U0|PCclr_ctrl~q\ : std_logic;
SIGNAL \Unit0|U0|Selector50~0_combout\ : std_logic;
SIGNAL \Unit0|U0|PCinc_ctrl~q\ : std_logic;
SIGNAL \Unit1|U3|Mux17~1_combout\ : std_logic;
SIGNAL \Unit0|U0|Selector59~1_combout\ : std_logic;
SIGNAL \Unit0|U0|Selector58~0_combout\ : std_logic;
SIGNAL \Unit0|U0|Selector58~1_combout\ : std_logic;
SIGNAL \Unit0|U1|tmp_PC[2]~22\ : std_logic;
SIGNAL \Unit0|U1|tmp_PC[3]~23_combout\ : std_logic;
SIGNAL \Unit0|U1|tmp_PC~18_combout\ : std_logic;
SIGNAL \Unit0|U3|Mux12~0_combout\ : std_logic;
SIGNAL \Unit0|U3|Mux12~1_combout\ : std_logic;
SIGNAL \Unit0|U1|tmp_PC[3]~24\ : std_logic;
SIGNAL \Unit0|U1|tmp_PC[4]~25_combout\ : std_logic;
SIGNAL \Unit0|U3|Mux11~0_combout\ : std_logic;
SIGNAL \Unit0|U3|Mux11~1_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[15][6]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[14][6]~q\ : std_logic;
SIGNAL \Unit1|U2|Decoder0~8_combout\ : std_logic;
SIGNAL \Unit1|U2|Decoder0~20_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[12][6]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[13][6]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux9~7_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux9~8_combout\ : std_logic;
SIGNAL \Unit0|U0|WideOr65~combout\ : std_logic;
SIGNAL \Unit0|U0|Selector69~0_combout\ : std_logic;
SIGNAL \Unit0|U0|RFr1a_ctrl[0]~0_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[2][6]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|Decoder0~4_combout\ : std_logic;
SIGNAL \Unit1|U2|Decoder0~5_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[2][6]~q\ : std_logic;
SIGNAL \Unit1|U2|Decoder0~0_combout\ : std_logic;
SIGNAL \Unit1|U2|Decoder0~1_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[0][6]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux9~4_combout\ : std_logic;
SIGNAL \Unit1|U2|Decoder0~6_combout\ : std_logic;
SIGNAL \Unit1|U2|Decoder0~7_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[3][6]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[1][6]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|Decoder0~2_combout\ : std_logic;
SIGNAL \Unit1|U2|Decoder0~3_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[1][6]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux9~5_combout\ : std_logic;
SIGNAL \Unit1|U2|Decoder0~17_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[9][6]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[10][6]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|Decoder0~18_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[10][6]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux9~2_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux9~3_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux9~6_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux9~9_combout\ : std_logic;
SIGNAL \Unit1|U2|RFr1[6]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \Unit0|U0|Selector55~0_combout\ : std_logic;
SIGNAL \Unit0|U0|Selector55~1_combout\ : std_logic;
SIGNAL \Unit0|U0|RFr1e_ctrl~q\ : std_logic;
SIGNAL \Unit1|U2|RFr1[6]~_Duplicate_1_q\ : std_logic;
SIGNAL \Unit0|U3|Mux9~0_combout\ : std_logic;
SIGNAL \Unit0|U3|Mux9~1_combout\ : std_logic;
SIGNAL \Unit1|U3|Mux1~0_combout\ : std_logic;
SIGNAL \Unit1|U3|Mux1~0clkctrl_outclk\ : std_logic;
SIGNAL \Unit0|U0|Selector78~0_combout\ : std_logic;
SIGNAL \Unit0|U0|RFr2a_ctrl[0]~0_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[9][5]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[5][5]~feeder_combout\ : std_logic;
SIGNAL \Unit0|U0|Selector64~0_combout\ : std_logic;
SIGNAL \Unit1|U2|Decoder0~10_combout\ : std_logic;
SIGNAL \Unit1|U2|Decoder0~11_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[5][5]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[1][5]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[1][5]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux26~2_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux26~3_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux26~6_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[15][5]~q\ : std_logic;
SIGNAL \Unit1|U2|Decoder0~19_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[11][5]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux26~8_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux26~9_combout\ : std_logic;
SIGNAL \Unit0|U0|Selector56~3_combout\ : std_logic;
SIGNAL \Unit0|U0|RFr2e_ctrl~q\ : std_logic;
SIGNAL \Unit1|U2|Decoder0~15_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[7][2]~q\ : std_logic;
SIGNAL \Unit1|U2|Decoder0~13_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[6][2]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux13~1_combout\ : std_logic;
SIGNAL \Unit0|U0|Selector68~0_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[0][2]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[2][2]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[2][2]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux13~4_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[3][2]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux13~5_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[11][2]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[11][2]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[8][2]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|Decoder0~16_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[8][2]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux13~2_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux13~3_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux13~6_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux13~9_combout\ : std_logic;
SIGNAL \Unit0|U0|Selector66~2_combout\ : std_logic;
SIGNAL \Unit0|U0|Selector54~1_combout\ : std_logic;
SIGNAL \Unit0|U0|Selector54~2_combout\ : std_logic;
SIGNAL \Unit0|U0|big_addr~q\ : std_logic;
SIGNAL \Unit1|U1|Mux7~0_combout\ : std_logic;
SIGNAL \Unit1|U1|Mux7~1_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[8][8]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[9][8]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux7~0_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[10][8]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[11][8]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux7~1_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[0][8]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[0][8]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[1][8]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[1][8]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux7~4_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[3][8]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[2][8]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[2][8]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux7~5_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[5][8]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[6][8]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux7~2_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux7~3_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux7~6_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[15][8]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[14][8]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[12][8]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux7~7_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux7~8_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux7~9_combout\ : std_logic;
SIGNAL \Unit1|U2|RFr1[9]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|RFr1[9]~_Duplicate_1_q\ : std_logic;
SIGNAL \Unit1|U3|Add0~26_combout\ : std_logic;
SIGNAL \Unit1|U3|Add0~25\ : std_logic;
SIGNAL \Unit1|U3|Add0~28\ : std_logic;
SIGNAL \Unit1|U3|Add0~30_combout\ : std_logic;
SIGNAL \Unit1|U3|Mux26~0_combout\ : std_logic;
SIGNAL \Unit1|U1|Mux5~0_combout\ : std_logic;
SIGNAL \Unit1|U1|Mux5~1_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[5][10]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux5~0_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[6][10]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux5~1_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[15][10]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[14][10]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux5~8_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux5~9_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[13][11]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[9][11]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[1][11]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[1][11]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux20~0_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux20~1_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[10][11]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[10][11]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[14][11]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux20~3_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[12][11]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[8][11]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[8][11]~q\ : std_logic;
SIGNAL \Unit1|U2|Decoder0~9_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[4][11]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[0][11]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux20~4_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux20~5_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux20~6_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[7][11]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[15][11]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux20~8_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux20~9_combout\ : std_logic;
SIGNAL \Unit1|U2|RFr1[11]~_Duplicate_1_q\ : std_logic;
SIGNAL \Unit1|U2|RFr1[10]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|RFr1[10]~_Duplicate_1_q\ : std_logic;
SIGNAL \Unit1|U3|Add0~31\ : std_logic;
SIGNAL \Unit1|U3|Add0~34\ : std_logic;
SIGNAL \Unit1|U3|Add0~36_combout\ : std_logic;
SIGNAL \Unit1|U3|Mux28~0_combout\ : std_logic;
SIGNAL \Unit1|U3|Mux28~1_combout\ : std_logic;
SIGNAL \Unit1|U1|Mux4~0_combout\ : std_logic;
SIGNAL \Unit1|U1|Mux4~1_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[5][11]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux4~0_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux4~1_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux4~4_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux4~5_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[2][11]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux4~2_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux4~3_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux4~6_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[3][11]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[11][11]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux4~7_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux4~8_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux4~9_combout\ : std_logic;
SIGNAL \Unit1|U1|Mux3~0_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[14][12]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[14][12]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[12][12]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux3~7_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[15][12]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[13][12]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[13][12]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux3~8_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[11][12]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[10][12]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[9][12]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux3~0_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux3~1_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[7][12]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[4][12]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[6][12]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux3~2_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux3~3_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[2][12]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[2][12]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[3][12]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[1][12]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[1][12]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[0][12]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux3~4_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux3~5_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux3~6_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux3~9_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[12][13]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[4][13]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux18~5_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[9][13]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[9][13]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[5][13]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[5][13]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[1][13]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[1][13]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux18~2_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux18~3_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux18~6_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[6][13]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[2][13]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[10][13]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux18~0_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux18~1_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux18~9_combout\ : std_logic;
SIGNAL \Unit1|U1|Mux1~0_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[6][14]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[7][14]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux1~1_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[13][14]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[12][14]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux1~7_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[15][14]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[14][14]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux1~8_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux1~9_combout\ : std_logic;
SIGNAL \Unit0|U3|Mux7~0_combout\ : std_logic;
SIGNAL \Unit0|U3|Mux7~1_combout\ : std_logic;
SIGNAL \Unit2|address_sent[8]~0_combout\ : std_logic;
SIGNAL \Unit0|U1|tmp_PC[4]~26\ : std_logic;
SIGNAL \Unit0|U1|tmp_PC[5]~28\ : std_logic;
SIGNAL \Unit0|U1|tmp_PC[6]~30\ : std_logic;
SIGNAL \Unit0|U1|tmp_PC[7]~31_combout\ : std_logic;
SIGNAL \Unit0|U1|tmp_PC[7]~32\ : std_logic;
SIGNAL \Unit0|U1|tmp_PC[8]~33_combout\ : std_logic;
SIGNAL \Unit0|U1|tmp_PC[8]~34\ : std_logic;
SIGNAL \Unit0|U1|tmp_PC[9]~35_combout\ : std_logic;
SIGNAL \Unit0|U3|Mux6~0_combout\ : std_logic;
SIGNAL \Unit0|U3|Mux6~1_combout\ : std_logic;
SIGNAL \Unit2|address_sent[9]~1_combout\ : std_logic;
SIGNAL \Unit0|U3|Mux5~0_combout\ : std_logic;
SIGNAL \Unit0|U3|Mux5~1_combout\ : std_logic;
SIGNAL \Unit2|address_sent[10]~2_combout\ : std_logic;
SIGNAL \Unit0|U3|Mux4~0_combout\ : std_logic;
SIGNAL \Unit0|U3|Mux4~1_combout\ : std_logic;
SIGNAL \Unit2|address_sent[11]~3_combout\ : std_logic;
SIGNAL \Unit1|U1|Mux15~0_combout\ : std_logic;
SIGNAL \Unit1|U1|Mux15~1_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[9][0]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[8][0]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux31~0_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[11][0]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux31~1_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[5][0]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[6][0]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[6][0]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[4][0]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[4][0]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux31~2_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux31~3_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[3][0]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[2][0]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[1][0]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[1][0]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[0][0]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux31~4_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux31~5_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux31~6_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux31~9_combout\ : std_logic;
SIGNAL \Unit0|U0|Selector74~0_combout\ : std_logic;
SIGNAL \Unit1|U3|Add0~5_combout\ : std_logic;
SIGNAL \Unit1|U3|Add0~0_combout\ : std_logic;
SIGNAL \Unit1|U3|Add0~2_cout\ : std_logic;
SIGNAL \Unit1|U3|Add0~4\ : std_logic;
SIGNAL \Unit1|U3|Add0~6_combout\ : std_logic;
SIGNAL \Unit1|U3|Mux18~0_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[13][3]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[9][3]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[1][3]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[1][3]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux28~0_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux28~1_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[6][3]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[6][3]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux28~2_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[10][3]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[14][3]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux28~3_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[4][3]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[4][3]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[0][3]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[0][3]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux28~4_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux28~5_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux28~6_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux28~9_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[10][4]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[11][4]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[8][4]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[9][4]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux27~0_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux27~1_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[15][4]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[14][4]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[12][4]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux27~7_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux27~8_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux27~9_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[13][7]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[13][7]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[1][7]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[1][7]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[9][7]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux24~0_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux24~1_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[6][7]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux24~2_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[14][7]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[10][7]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[10][7]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux24~3_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[0][7]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[4][7]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[4][7]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux24~4_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[12][7]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux24~5_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux24~6_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux24~9_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[11][9]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[7][9]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux22~7_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux22~8_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[4][9]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[12][9]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux22~5_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[9][9]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[1][9]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[1][9]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[5][9]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[5][9]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux22~2_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux22~3_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux22~6_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux22~9_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[4][14]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[4][14]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[5][14]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[5][14]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux17~0_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux17~1_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[9][14]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[10][14]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[10][14]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux17~2_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux17~3_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux17~6_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux17~9_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[14][15]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[6][15]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[6][15]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux16~2_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux16~3_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux16~6_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[13][15]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[1][15]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[1][15]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux16~0_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux16~1_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[7][15]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[11][15]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux16~7_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux16~8_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux16~9_combout\ : std_logic;
SIGNAL \Unit1|U3|Mult0|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \Unit1|U3|Mult0|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \Unit1|U3|Mult0|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \Unit1|U3|Mult0|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \Unit1|U3|Mult0|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \Unit1|U3|Mult0|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \Unit1|U3|Mult0|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \Unit1|U3|Mult0|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \Unit1|U3|Mult0|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \Unit1|U3|Mult0|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \Unit1|U3|Mult0|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \Unit1|U3|Mult0|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \Unit1|U3|Mult0|auto_generated|mac_mult1~DATAOUT16\ : std_logic;
SIGNAL \Unit1|U3|Mult0|auto_generated|mac_mult1~DATAOUT17\ : std_logic;
SIGNAL \Unit1|U3|Mult0|auto_generated|mac_mult1~DATAOUT18\ : std_logic;
SIGNAL \Unit1|U3|Mult0|auto_generated|mac_mult1~DATAOUT19\ : std_logic;
SIGNAL \Unit1|U3|Mult0|auto_generated|mac_mult1~DATAOUT20\ : std_logic;
SIGNAL \Unit1|U3|Mult0|auto_generated|mac_mult1~DATAOUT21\ : std_logic;
SIGNAL \Unit1|U3|Mult0|auto_generated|mac_mult1~DATAOUT22\ : std_logic;
SIGNAL \Unit1|U3|Mult0|auto_generated|mac_mult1~DATAOUT23\ : std_logic;
SIGNAL \Unit1|U3|Mult0|auto_generated|mac_mult1~DATAOUT24\ : std_logic;
SIGNAL \Unit1|U3|Mult0|auto_generated|mac_mult1~DATAOUT25\ : std_logic;
SIGNAL \Unit1|U3|Mult0|auto_generated|mac_mult1~DATAOUT26\ : std_logic;
SIGNAL \Unit1|U3|Mult0|auto_generated|mac_mult1~DATAOUT27\ : std_logic;
SIGNAL \Unit1|U3|Mult0|auto_generated|mac_mult1~DATAOUT28\ : std_logic;
SIGNAL \Unit1|U3|Mult0|auto_generated|mac_mult1~DATAOUT29\ : std_logic;
SIGNAL \Unit1|U3|Mult0|auto_generated|mac_mult1~DATAOUT30\ : std_logic;
SIGNAL \Unit1|U3|Mult0|auto_generated|mac_mult1~DATAOUT31\ : std_logic;
SIGNAL \Unit1|U3|Mult0|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \Unit1|U3|Mult0|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \Unit1|U3|Mult0|auto_generated|mac_mult1~2\ : std_logic;
SIGNAL \Unit1|U3|Mult0|auto_generated|mac_mult1~3\ : std_logic;
SIGNAL \Unit1|U3|Mult0|auto_generated|mac_out2~DATAOUT1\ : std_logic;
SIGNAL \Unit1|U3|Mux18~1_combout\ : std_logic;
SIGNAL \Unit1|U1|Mux14~0_combout\ : std_logic;
SIGNAL \Unit1|U1|Mux14~1_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[6][1]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[14][1]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[10][1]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux30~0_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux30~1_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[11][1]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[7][1]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[7][1]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux30~7_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[15][1]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux30~8_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[4][1]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[8][1]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[8][1]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[0][1]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux30~4_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux30~5_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[5][1]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[5][1]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[1][1]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[1][1]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux30~2_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[9][1]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[13][1]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux30~3_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux30~6_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux30~9_combout\ : std_logic;
SIGNAL \Unit1|U3|Mult0|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \Unit1|U3|Mult0|auto_generated|mac_out2~DATAOUT15\ : std_logic;
SIGNAL \Unit1|U3|Add0~47_combout\ : std_logic;
SIGNAL \Unit1|U3|Add0~44_combout\ : std_logic;
SIGNAL \Unit1|U3|Add0~41_combout\ : std_logic;
SIGNAL \Unit1|U2|RFr1[12]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|RFr1[12]~_Duplicate_1_q\ : std_logic;
SIGNAL \Unit1|U3|Add0~37\ : std_logic;
SIGNAL \Unit1|U3|Add0~40\ : std_logic;
SIGNAL \Unit1|U3|Add0~43\ : std_logic;
SIGNAL \Unit1|U3|Add0~46\ : std_logic;
SIGNAL \Unit1|U3|Add0~48_combout\ : std_logic;
SIGNAL \Unit1|U3|Mux32~1_combout\ : std_logic;
SIGNAL \Unit1|U1|Mux0~0_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[5][15]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[9][15]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[9][15]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux0~0_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux0~1_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[2][15]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux0~2_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux0~3_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[8][15]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[12][15]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[0][15]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[4][15]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[4][15]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux0~4_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux0~5_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux0~6_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux0~9_combout\ : std_logic;
SIGNAL \Unit1|U3|Mult0|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \Unit1|U3|Mult0|auto_generated|mac_out2~DATAOUT13\ : std_logic;
SIGNAL \Unit1|U2|RFr1[13]~_Duplicate_1_q\ : std_logic;
SIGNAL \Unit1|U3|Add0~42_combout\ : std_logic;
SIGNAL \Unit1|U3|Mux30~0_combout\ : std_logic;
SIGNAL \Unit1|U3|Mux30~1_combout\ : std_logic;
SIGNAL \Unit1|U1|Mux2~0_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[14][13]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux2~0_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux2~1_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[15][13]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[7][13]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[3][13]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux2~7_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux2~8_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[13][13]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[13][13]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux2~2_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux2~3_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[0][13]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux2~4_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux2~5_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux2~6_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux2~9_combout\ : std_logic;
SIGNAL \Unit1|U3|Mult0|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \Unit1|U3|Mult0|auto_generated|mac_out2~DATAOUT9\ : std_logic;
SIGNAL \Unit1|U3|Mux26~1_combout\ : std_logic;
SIGNAL \Unit1|U1|Mux6~0_combout\ : std_logic;
SIGNAL \Unit1|U1|Mux6~1_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[15][9]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux6~8_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[0][9]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux6~4_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux6~5_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[13][9]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux6~3_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux6~6_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux6~9_combout\ : std_logic;
SIGNAL \Unit1|U3|Mult0|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \Unit1|U3|Mult0|auto_generated|mac_out2~DATAOUT5\ : std_logic;
SIGNAL \Unit1|U3|Mux22~1_combout\ : std_logic;
SIGNAL \Unit1|U1|Mux10~0_combout\ : std_logic;
SIGNAL \Unit1|U1|Mux10~1_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[6][5]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[2][5]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[10][5]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux10~0_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux10~1_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux10~8_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[0][5]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[0][5]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[8][5]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux10~4_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[12][5]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[4][5]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux10~5_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux10~2_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[13][5]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux10~3_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux10~6_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux10~9_combout\ : std_logic;
SIGNAL \Unit1|U2|RFr1[5]~_Duplicate_1_q\ : std_logic;
SIGNAL \Unit1|U3|Add0~11_combout\ : std_logic;
SIGNAL \Unit1|U3|Add0~7\ : std_logic;
SIGNAL \Unit1|U3|Add0~10\ : std_logic;
SIGNAL \Unit1|U3|Add0~13\ : std_logic;
SIGNAL \Unit1|U3|Add0~16\ : std_logic;
SIGNAL \Unit1|U3|Add0~19\ : std_logic;
SIGNAL \Unit1|U3|Add0~22\ : std_logic;
SIGNAL \Unit1|U3|Add0~24_combout\ : std_logic;
SIGNAL \Unit1|U3|Mux24~0_combout\ : std_logic;
SIGNAL \Unit1|U3|Mux24~1_combout\ : std_logic;
SIGNAL \Unit1|U1|Mux8~0_combout\ : std_logic;
SIGNAL \Unit1|U1|Mux8~1_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[7][7]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[3][7]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux8~7_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux8~8_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[8][7]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[8][7]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux8~4_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux8~5_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[2][7]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux8~2_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux8~3_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux8~6_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[5][7]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux8~0_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux8~1_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux8~9_combout\ : std_logic;
SIGNAL \Unit1|U2|RFr1[7]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|RFr1[7]~_Duplicate_1_q\ : std_logic;
SIGNAL \Unit0|U3|Mux8~0_combout\ : std_logic;
SIGNAL \Unit0|U3|Mux8~1_combout\ : std_logic;
SIGNAL \Unit0|U3|Mux10~0_combout\ : std_logic;
SIGNAL \Unit0|U3|Mux10~1_combout\ : std_logic;
SIGNAL \Unit1|U1|Mux12~0_combout\ : std_logic;
SIGNAL \Unit1|U1|Mux12~1_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[8][3]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[12][3]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux12~4_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux12~5_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[2][3]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux12~2_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux12~3_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux12~6_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[15][3]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[7][3]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[11][3]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux12~7_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux12~8_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[5][3]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux12~0_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux12~1_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux12~9_combout\ : std_logic;
SIGNAL \Unit1|U2|RFr1[3]~_Duplicate_1_q\ : std_logic;
SIGNAL \Unit1|U3|Add0~12_combout\ : std_logic;
SIGNAL \Unit1|U3|Mux20~0_combout\ : std_logic;
SIGNAL \Unit1|U3|Mux20~1_combout\ : std_logic;
SIGNAL \Unit1|U3|ALUz~1_combout\ : std_logic;
SIGNAL \Unit1|U3|ALUz~2_combout\ : std_logic;
SIGNAL \Unit1|U3|ALUz~3_combout\ : std_logic;
SIGNAL \Unit1|U3|ALUz~4_combout\ : std_logic;
SIGNAL \Unit0|U1|process_0~0_combout\ : std_logic;
SIGNAL \Unit0|U1|tmp_PC[0]~17\ : std_logic;
SIGNAL \Unit0|U1|tmp_PC[1]~19_combout\ : std_logic;
SIGNAL \Unit0|U1|tmp_PC[1]~20\ : std_logic;
SIGNAL \Unit0|U1|tmp_PC[2]~21_combout\ : std_logic;
SIGNAL \Unit0|U3|Mux13~0_combout\ : std_logic;
SIGNAL \Unit0|U3|Mux13~1_combout\ : std_logic;
SIGNAL \Unit0|U0|Selector70~0_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[12][1]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux14~4_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux14~5_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux14~2_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux14~3_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux14~6_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[2][1]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux14~0_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux14~1_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux14~9_combout\ : std_logic;
SIGNAL \Unit1|U2|RFr1[1]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|RFr1[1]~_Duplicate_1_q\ : std_logic;
SIGNAL \Unit0|U3|Mux14~0_combout\ : std_logic;
SIGNAL \Unit0|U3|Mux14~1_combout\ : std_logic;
SIGNAL \Unit1|U1|Mux9~0_combout\ : std_logic;
SIGNAL \Unit1|U1|Mux9~1_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[11][6]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[8][6]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[8][6]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux25~2_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux25~3_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux25~4_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux25~5_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux25~6_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[6][6]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[7][6]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[5][6]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[4][6]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[4][6]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux25~0_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux25~1_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux25~9_combout\ : std_logic;
SIGNAL \Unit1|U3|Add0~20_combout\ : std_logic;
SIGNAL \Unit1|U3|Add0~21_combout\ : std_logic;
SIGNAL \Unit1|U3|Mult0|auto_generated|mac_out2~DATAOUT6\ : std_logic;
SIGNAL \Unit1|U3|Mux23~1_combout\ : std_logic;
SIGNAL \Unit0|U0|Selector75~0_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[13][8]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[13][8]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux23~7_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux23~8_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux23~4_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux23~5_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux23~6_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux23~9_combout\ : std_logic;
SIGNAL \Unit1|U3|Mux25~0_combout\ : std_logic;
SIGNAL \Unit1|U3|Add0~27_combout\ : std_logic;
SIGNAL \Unit1|U3|Mult0|auto_generated|mac_out2~DATAOUT8\ : std_logic;
SIGNAL \Unit1|U3|Mux25~1_combout\ : std_logic;
SIGNAL \Unit0|U3|Mux15~0_combout\ : std_logic;
SIGNAL \Unit0|U3|Mux15~1_combout\ : std_logic;
SIGNAL \Unit0|U0|Selector63~0_combout\ : std_logic;
SIGNAL \Unit1|U2|Decoder0~14_combout\ : std_logic;
SIGNAL \Unit1|U2|Decoder0~23_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[15][2]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux29~8_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[9][2]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[9][2]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[10][2]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[10][2]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux29~2_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux29~3_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux29~4_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux29~5_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux29~6_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux29~9_combout\ : std_logic;
SIGNAL \Unit1|U3|Add0~8_combout\ : std_logic;
SIGNAL \Unit1|U3|Add0~9_combout\ : std_logic;
SIGNAL \Unit1|U3|Mult0|auto_generated|mac_out2~DATAOUT2\ : std_logic;
SIGNAL \Unit1|U3|Mux19~1_combout\ : std_logic;
SIGNAL \Unit0|U0|Selector76~0_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[13][10]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[12][10]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux21~7_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux21~8_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[1][10]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[1][10]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[3][10]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[0][10]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux21~4_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux21~5_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux21~6_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux21~9_combout\ : std_logic;
SIGNAL \Unit1|U3|Mux27~0_combout\ : std_logic;
SIGNAL \Unit1|U3|Mult0|auto_generated|mac_out2~DATAOUT10\ : std_logic;
SIGNAL \Unit1|U3|Mux27~1_combout\ : std_logic;
SIGNAL \Unit0|U0|Selector62~0_combout\ : std_logic;
SIGNAL \Unit1|U2|Decoder0~21_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[13][4]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux11~7_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux11~8_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux11~0_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux11~1_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[5][4]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[7][4]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[4][4]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[6][4]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[6][4]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux11~2_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux11~3_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux11~6_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux11~9_combout\ : std_logic;
SIGNAL \Unit1|U2|RFr1[4]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|RFr1[4]~_Duplicate_1_q\ : std_logic;
SIGNAL \Unit1|U3|Add0~15_combout\ : std_logic;
SIGNAL \Unit1|U3|Mux21~0_combout\ : std_logic;
SIGNAL \Unit1|U3|Mult0|auto_generated|mac_out2~DATAOUT4\ : std_logic;
SIGNAL \Unit1|U3|Mux21~1_combout\ : std_logic;
SIGNAL \Unit0|U0|Selector71~0_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux15~0_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[10][0]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux15~1_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[15][0]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[13][0]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[12][0]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[12][0]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[14][0]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux15~7_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux15~8_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux15~4_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux15~5_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[7][0]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[7][0]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux15~2_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux15~3_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux15~6_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux15~9_combout\ : std_logic;
SIGNAL \Unit1|U2|RFr1[0]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|RFr1[0]~_Duplicate_1_q\ : std_logic;
SIGNAL \Unit1|U3|Mux17~2_combout\ : std_logic;
SIGNAL \Unit1|U3|Mult0|auto_generated|mac_out2~dataout\ : std_logic;
SIGNAL \Unit1|U3|Mux17~3_combout\ : std_logic;
SIGNAL \Unit0|U0|Selector77~0_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux19~0_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux19~1_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux19~7_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux19~8_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux19~4_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux19~5_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux19~2_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[5][12]~q\ : std_logic;
SIGNAL \Unit1|U2|Mux19~3_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux19~6_combout\ : std_logic;
SIGNAL \Unit1|U2|Mux19~9_combout\ : std_logic;
SIGNAL \Unit1|U3|Mux29~0_combout\ : std_logic;
SIGNAL \Unit1|U3|Add0~39_combout\ : std_logic;
SIGNAL \Unit1|U3|Mult0|auto_generated|mac_out2~DATAOUT12\ : std_logic;
SIGNAL \Unit1|U3|Mux29~1_combout\ : std_logic;
SIGNAL \Unit0|U0|Mux1~2_combout\ : std_logic;
SIGNAL \Unit0|U0|state.S_LONG_LOAD~q\ : std_logic;
SIGNAL \Unit0|U0|WideOr5~0_combout\ : std_logic;
SIGNAL \Unit0|U0|Selector52~2_combout\ : std_logic;
SIGNAL \Unit0|U0|Mre_ctrl~q\ : std_logic;
SIGNAL \Unit0|U0|Mux1~7_combout\ : std_logic;
SIGNAL \Unit0|U0|state.S_IMM_LOAD~q\ : std_logic;
SIGNAL \Unit0|U0|state.S_IMM_LOADa~q\ : std_logic;
SIGNAL \Unit0|U0|state.S_LONG_IMM_LOADa~feeder_combout\ : std_logic;
SIGNAL \Unit0|U0|state.S_LONG_IMM_LOADa~q\ : std_logic;
SIGNAL \Unit0|U0|WideOr1~5_combout\ : std_logic;
SIGNAL \Unit0|U0|Selector47~0_combout\ : std_logic;
SIGNAL \Unit0|U0|state.S_OUTPUT_MEMa~q\ : std_logic;
SIGNAL \Unit0|U0|Selector7~0_combout\ : std_logic;
SIGNAL \Unit0|U0|state.S_SHORT_LOADa~q\ : std_logic;
SIGNAL \Unit0|U0|state.S_SHORT_LOADb~feeder_combout\ : std_logic;
SIGNAL \Unit0|U0|state.S_SHORT_LOADb~q\ : std_logic;
SIGNAL \Unit0|U0|Selector1~1_combout\ : std_logic;
SIGNAL \Unit0|U0|state.S_MULTb~q\ : std_logic;
SIGNAL \Unit0|U0|state.S_JUMP_Za~feeder_combout\ : std_logic;
SIGNAL \Unit0|U0|state.S_JUMP_Za~q\ : std_logic;
SIGNAL \Unit0|U0|state.S_JUMP_Zb~q\ : std_logic;
SIGNAL \Unit0|U0|state.S_SUBTb~feeder_combout\ : std_logic;
SIGNAL \Unit0|U0|state.S_SUBTb~q\ : std_logic;
SIGNAL \Unit0|U0|WideOr0~1_combout\ : std_logic;
SIGNAL \Unit0|U0|Selector1~2_combout\ : std_logic;
SIGNAL \Unit0|U0|state.S_FETCH_INST~q\ : std_logic;
SIGNAL \Unit0|U0|Selector51~1_combout\ : std_logic;
SIGNAL \Unit0|U0|Selector51~2_combout\ : std_logic;
SIGNAL \Unit0|U0|IRld_ctrl~q\ : std_logic;
SIGNAL \Unit0|U0|IRld_ctrl~clkctrl_outclk\ : std_logic;
SIGNAL \Unit0|U0|Mux1~5_combout\ : std_logic;
SIGNAL \Unit0|U0|state.S_LONG_SAVE~q\ : std_logic;
SIGNAL \Unit0|U0|Selector20~0_combout\ : std_logic;
SIGNAL \Unit0|U0|state.S_LONG_SAVE_a~q\ : std_logic;
SIGNAL \Unit0|U0|WideOr1~0_combout\ : std_logic;
SIGNAL \Unit0|U0|Selector59~2_combout\ : std_logic;
SIGNAL \Unit0|U0|Mwe_ctrl~q\ : std_logic;
SIGNAL \Unit0|U0|Selector61~0_combout\ : std_logic;
SIGNAL \Unit0|U0|oe_ctrl~q\ : std_logic;
SIGNAL \Unit0|U1|tmp_PC[9]~36\ : std_logic;
SIGNAL \Unit0|U1|tmp_PC[10]~37_combout\ : std_logic;
SIGNAL \Unit0|U1|tmp_PC[10]~38\ : std_logic;
SIGNAL \Unit0|U1|tmp_PC[11]~40\ : std_logic;
SIGNAL \Unit0|U1|tmp_PC[12]~41_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \Unit0|U3|Mux3~0_combout\ : std_logic;
SIGNAL \Unit0|U1|tmp_PC[12]~42\ : std_logic;
SIGNAL \Unit0|U1|tmp_PC[13]~43_combout\ : std_logic;
SIGNAL \Unit0|U3|Mux2~0_combout\ : std_logic;
SIGNAL \Unit0|U1|tmp_PC[13]~44\ : std_logic;
SIGNAL \Unit0|U1|tmp_PC[14]~45_combout\ : std_logic;
SIGNAL \Unit1|U2|RFr1[14]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|RFr1[14]~_Duplicate_1_q\ : std_logic;
SIGNAL \Unit0|U3|Mux1~0_combout\ : std_logic;
SIGNAL \Unit1|U2|RFr1[15]~_Duplicate_1_q\ : std_logic;
SIGNAL \Unit0|U1|tmp_PC[14]~46\ : std_logic;
SIGNAL \Unit0|U1|tmp_PC[15]~47_combout\ : std_logic;
SIGNAL \Unit0|U3|Mux0~0_combout\ : std_logic;
SIGNAL \Unit1|U2|RFr1[2]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|RFr1[2]~_Duplicate_1_q\ : std_logic;
SIGNAL \Unit1|U2|RFr1[8]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|RFr1[8]~_Duplicate_1_q\ : std_logic;
SIGNAL \Unit1|U3|ALUz~combout\ : std_logic;
SIGNAL \Unit0|U0|Selector60~0_combout\ : std_logic;
SIGNAL \Unit0|U0|jmpen_ctrl~q\ : std_logic;
SIGNAL \Unit0|U0|Selector11~0_combout\ : std_logic;
SIGNAL \Unit0|U0|state.S_SHORT_SAVEa~q\ : std_logic;
SIGNAL \Unit0|U0|state.S_SHORT_SAVE_wait~q\ : std_logic;
SIGNAL \Unit0|U0|WideOr5~1_combout\ : std_logic;
SIGNAL \Unit0|U0|WideOr5~2_combout\ : std_logic;
SIGNAL \Unit0|U0|state.S_ADDb~q\ : std_logic;
SIGNAL \Unit0|U0|WideOr3~0_combout\ : std_logic;
SIGNAL \Unit0|U0|WideOr5~3_combout\ : std_logic;
SIGNAL \Unit0|U0|WideOr5~combout\ : std_logic;
SIGNAL \Unit0|U0|Selector16~0_combout\ : std_logic;
SIGNAL \Unit0|U0|state.S_LONG_LOAD_a~q\ : std_logic;
SIGNAL \Unit0|U0|state.S_LONG_LOAD_b~q\ : std_logic;
SIGNAL \Unit0|U0|Selector53~0_combout\ : std_logic;
SIGNAL \Unit0|U0|WideOr3~2_combout\ : std_logic;
SIGNAL \Unit0|U0|WideOr2~0_combout\ : std_logic;
SIGNAL \Unit0|U0|WideOr4~1_combout\ : std_logic;
SIGNAL \Unit0|U0|WideOr4~combout\ : std_logic;
SIGNAL \Unit0|U0|WideOr3~3_combout\ : std_logic;
SIGNAL \Unit0|U0|WideOr3~combout\ : std_logic;
SIGNAL \Unit0|U0|WideOr2~1_combout\ : std_logic;
SIGNAL \Unit0|U0|WideOr2~2_combout\ : std_logic;
SIGNAL \Unit0|U0|WideOr2~combout\ : std_logic;
SIGNAL \Unit0|U0|WideOr1~combout\ : std_logic;
SIGNAL \Unit0|U0|WideOr0~3_combout\ : std_logic;
SIGNAL \Unit0|U0|WideOr0~combout\ : std_logic;
SIGNAL \Unit0|U0|cur_state~0_combout\ : std_logic;
SIGNAL \Unit0|U0|cur_state[6]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[0][4]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[0][14]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[1][2]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[1][2]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[1][4]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[1][4]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[1][14]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[2][4]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[2][9]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[2][9]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[2][10]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[2][10]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[2][14]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[2][14]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[3][1]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[3][3]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[3][4]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[3][5]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[3][5]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[3][9]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[3][9]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[3][14]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[3][15]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[4][2]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[4][2]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[4][8]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[4][8]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[4][10]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[4][10]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[5][2]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[6][9]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[6][11]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[6][11]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[7][5]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[7][8]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[7][8]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[7][10]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[8][9]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[8][9]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[8][10]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[8][10]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[8][12]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[8][13]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[8][13]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[8][14]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[8][14]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[9][10]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[9][10]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[10][9]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[10][9]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[10][10]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[10][10]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[10][15]~feeder_combout\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[10][15]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[11][7]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[11][10]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[11][13]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[11][14]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[12][2]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[13][2]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[14][5]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[14][9]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[15][7]~q\ : std_logic;
SIGNAL \Unit1|U2|tmp_rf[15][15]~q\ : std_logic;
SIGNAL \Unit1|U3|mult_result\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \Unit1|U2|RFr2\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \Unit1|U3|alu_tmp\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \Unit2|altsyncram_component|auto_generated|q_a\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \Unit0|U0|cur_state\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Unit0|U0|RFwa_ctrl\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Unit0|U0|RFs_ctrl\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \Unit0|U0|RFr2a_ctrl\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Unit0|U0|RFr1a_ctrl\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Unit0|U0|Ms_ctrl\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \Unit0|U0|ALUs_ctrl\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Unit0|U1|tmp_PC\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \Unit0|U2|dir_addr\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \Unit0|U2|IRout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_cpu_rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_cpu_rst~input_o\ : std_logic;
SIGNAL \Unit0|U0|ALT_INV_state.S_DECODE_INST~q\ : std_logic;

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
D_rf0 <= ww_D_rf0;
D_rf1 <= ww_D_rf1;
D_rf2 <= ww_D_rf2;
D_rf3 <= ww_D_rf3;
D_rf4 <= ww_D_rf4;
D_rf5 <= ww_D_rf5;
D_rf6 <= ww_D_rf6;
D_rf7 <= ww_D_rf7;
D_rf8 <= ww_D_rf8;
D_rf9 <= ww_D_rf9;
D_rfA <= ww_D_rfA;
D_rfB <= ww_D_rfB;
D_rfC <= ww_D_rfC;
D_rfD <= ww_D_rfD;
D_rfE <= ww_D_rfE;
D_rfF <= ww_D_rfF;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Unit2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (\Unit1|U3|alu_tmp\(1) & \Unit1|U3|alu_tmp\(0));

\Unit2|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\Unit2|address_sent[11]~3_combout\ & \Unit2|address_sent[10]~2_combout\ & \Unit2|address_sent[9]~1_combout\ & \Unit2|address_sent[8]~0_combout\ & \Unit0|U3|Mux8~1_combout\ & 
\Unit0|U3|Mux9~1_combout\ & \Unit0|U3|Mux10~1_combout\ & \Unit0|U3|Mux11~1_combout\ & \Unit0|U3|Mux12~1_combout\ & \Unit0|U3|Mux13~1_combout\ & \Unit0|U3|Mux14~1_combout\ & \Unit0|U3|Mux15~1_combout\);

\Unit2|altsyncram_component|auto_generated|q_a\(0) <= \Unit2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\Unit2|altsyncram_component|auto_generated|q_a\(1) <= \Unit2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);

\Unit2|altsyncram_component|auto_generated|ram_block1a2_PORTADATAIN_bus\ <= (\Unit1|U3|alu_tmp\(3) & \Unit1|U3|alu_tmp\(2));

\Unit2|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\ <= (\Unit2|address_sent[11]~3_combout\ & \Unit2|address_sent[10]~2_combout\ & \Unit2|address_sent[9]~1_combout\ & \Unit2|address_sent[8]~0_combout\ & \Unit0|U3|Mux8~1_combout\ & 
\Unit0|U3|Mux9~1_combout\ & \Unit0|U3|Mux10~1_combout\ & \Unit0|U3|Mux11~1_combout\ & \Unit0|U3|Mux12~1_combout\ & \Unit0|U3|Mux13~1_combout\ & \Unit0|U3|Mux14~1_combout\ & \Unit0|U3|Mux15~1_combout\);

\Unit2|altsyncram_component|auto_generated|q_a\(2) <= \Unit2|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\(0);
\Unit2|altsyncram_component|auto_generated|q_a\(3) <= \Unit2|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\(1);

\Unit2|altsyncram_component|auto_generated|ram_block1a4_PORTADATAIN_bus\ <= (\Unit1|U3|alu_tmp\(5) & \Unit1|U3|alu_tmp\(4));

\Unit2|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (\Unit2|address_sent[11]~3_combout\ & \Unit2|address_sent[10]~2_combout\ & \Unit2|address_sent[9]~1_combout\ & \Unit2|address_sent[8]~0_combout\ & \Unit0|U3|Mux8~1_combout\ & 
\Unit0|U3|Mux9~1_combout\ & \Unit0|U3|Mux10~1_combout\ & \Unit0|U3|Mux11~1_combout\ & \Unit0|U3|Mux12~1_combout\ & \Unit0|U3|Mux13~1_combout\ & \Unit0|U3|Mux14~1_combout\ & \Unit0|U3|Mux15~1_combout\);

\Unit2|altsyncram_component|auto_generated|q_a\(4) <= \Unit2|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\(0);
\Unit2|altsyncram_component|auto_generated|q_a\(5) <= \Unit2|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\(1);

\Unit2|altsyncram_component|auto_generated|ram_block1a6_PORTADATAIN_bus\ <= (\Unit1|U3|alu_tmp\(7) & \Unit1|U3|alu_tmp\(6));

\Unit2|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\ <= (\Unit2|address_sent[11]~3_combout\ & \Unit2|address_sent[10]~2_combout\ & \Unit2|address_sent[9]~1_combout\ & \Unit2|address_sent[8]~0_combout\ & \Unit0|U3|Mux8~1_combout\ & 
\Unit0|U3|Mux9~1_combout\ & \Unit0|U3|Mux10~1_combout\ & \Unit0|U3|Mux11~1_combout\ & \Unit0|U3|Mux12~1_combout\ & \Unit0|U3|Mux13~1_combout\ & \Unit0|U3|Mux14~1_combout\ & \Unit0|U3|Mux15~1_combout\);

\Unit2|altsyncram_component|auto_generated|q_a\(6) <= \Unit2|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\(0);
\Unit2|altsyncram_component|auto_generated|q_a\(7) <= \Unit2|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\(1);

\Unit2|altsyncram_component|auto_generated|ram_block1a8_PORTADATAIN_bus\ <= (\Unit1|U3|alu_tmp\(9) & \Unit1|U3|alu_tmp\(8));

\Unit2|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\ <= (\Unit2|address_sent[11]~3_combout\ & \Unit2|address_sent[10]~2_combout\ & \Unit2|address_sent[9]~1_combout\ & \Unit2|address_sent[8]~0_combout\ & \Unit0|U3|Mux8~1_combout\ & 
\Unit0|U3|Mux9~1_combout\ & \Unit0|U3|Mux10~1_combout\ & \Unit0|U3|Mux11~1_combout\ & \Unit0|U3|Mux12~1_combout\ & \Unit0|U3|Mux13~1_combout\ & \Unit0|U3|Mux14~1_combout\ & \Unit0|U3|Mux15~1_combout\);

\Unit2|altsyncram_component|auto_generated|q_a\(8) <= \Unit2|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(0);
\Unit2|altsyncram_component|auto_generated|q_a\(9) <= \Unit2|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(1);

\Unit2|altsyncram_component|auto_generated|ram_block1a10_PORTADATAIN_bus\ <= (\Unit1|U3|alu_tmp\(11) & \Unit1|U3|alu_tmp\(10));

\Unit2|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\ <= (\Unit2|address_sent[11]~3_combout\ & \Unit2|address_sent[10]~2_combout\ & \Unit2|address_sent[9]~1_combout\ & \Unit2|address_sent[8]~0_combout\ & \Unit0|U3|Mux8~1_combout\ & 
\Unit0|U3|Mux9~1_combout\ & \Unit0|U3|Mux10~1_combout\ & \Unit0|U3|Mux11~1_combout\ & \Unit0|U3|Mux12~1_combout\ & \Unit0|U3|Mux13~1_combout\ & \Unit0|U3|Mux14~1_combout\ & \Unit0|U3|Mux15~1_combout\);

\Unit2|altsyncram_component|auto_generated|q_a\(10) <= \Unit2|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\(0);
\Unit2|altsyncram_component|auto_generated|q_a\(11) <= \Unit2|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\(1);

\Unit2|altsyncram_component|auto_generated|ram_block1a12_PORTADATAIN_bus\ <= (\Unit1|U3|alu_tmp\(13) & \Unit1|U3|alu_tmp\(12));

\Unit2|altsyncram_component|auto_generated|ram_block1a12_PORTAADDR_bus\ <= (\Unit2|address_sent[11]~3_combout\ & \Unit2|address_sent[10]~2_combout\ & \Unit2|address_sent[9]~1_combout\ & \Unit2|address_sent[8]~0_combout\ & \Unit0|U3|Mux8~1_combout\ & 
\Unit0|U3|Mux9~1_combout\ & \Unit0|U3|Mux10~1_combout\ & \Unit0|U3|Mux11~1_combout\ & \Unit0|U3|Mux12~1_combout\ & \Unit0|U3|Mux13~1_combout\ & \Unit0|U3|Mux14~1_combout\ & \Unit0|U3|Mux15~1_combout\);

\Unit2|altsyncram_component|auto_generated|q_a\(12) <= \Unit2|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\(0);
\Unit2|altsyncram_component|auto_generated|q_a\(13) <= \Unit2|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\(1);

\Unit2|altsyncram_component|auto_generated|ram_block1a14_PORTADATAIN_bus\ <= (\Unit1|U3|alu_tmp\(15) & \Unit1|U3|alu_tmp\(14));

\Unit2|altsyncram_component|auto_generated|ram_block1a14_PORTAADDR_bus\ <= (\Unit2|address_sent[11]~3_combout\ & \Unit2|address_sent[10]~2_combout\ & \Unit2|address_sent[9]~1_combout\ & \Unit2|address_sent[8]~0_combout\ & \Unit0|U3|Mux8~1_combout\ & 
\Unit0|U3|Mux9~1_combout\ & \Unit0|U3|Mux10~1_combout\ & \Unit0|U3|Mux11~1_combout\ & \Unit0|U3|Mux12~1_combout\ & \Unit0|U3|Mux13~1_combout\ & \Unit0|U3|Mux14~1_combout\ & \Unit0|U3|Mux15~1_combout\);

\Unit2|altsyncram_component|auto_generated|q_a\(14) <= \Unit2|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(0);
\Unit2|altsyncram_component|auto_generated|q_a\(15) <= \Unit2|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(1);

\Unit1|U3|Mult0|auto_generated|mac_out2_DATAA_bus\ <= (\Unit1|U3|Mult0|auto_generated|mac_mult1~DATAOUT31\ & \Unit1|U3|Mult0|auto_generated|mac_mult1~DATAOUT30\ & \Unit1|U3|Mult0|auto_generated|mac_mult1~DATAOUT29\ & 
\Unit1|U3|Mult0|auto_generated|mac_mult1~DATAOUT28\ & \Unit1|U3|Mult0|auto_generated|mac_mult1~DATAOUT27\ & \Unit1|U3|Mult0|auto_generated|mac_mult1~DATAOUT26\ & \Unit1|U3|Mult0|auto_generated|mac_mult1~DATAOUT25\ & 
\Unit1|U3|Mult0|auto_generated|mac_mult1~DATAOUT24\ & \Unit1|U3|Mult0|auto_generated|mac_mult1~DATAOUT23\ & \Unit1|U3|Mult0|auto_generated|mac_mult1~DATAOUT22\ & \Unit1|U3|Mult0|auto_generated|mac_mult1~DATAOUT21\ & 
\Unit1|U3|Mult0|auto_generated|mac_mult1~DATAOUT20\ & \Unit1|U3|Mult0|auto_generated|mac_mult1~DATAOUT19\ & \Unit1|U3|Mult0|auto_generated|mac_mult1~DATAOUT18\ & \Unit1|U3|Mult0|auto_generated|mac_mult1~DATAOUT17\ & 
\Unit1|U3|Mult0|auto_generated|mac_mult1~DATAOUT16\ & \Unit1|U3|Mult0|auto_generated|mac_mult1~DATAOUT15\ & \Unit1|U3|Mult0|auto_generated|mac_mult1~DATAOUT14\ & \Unit1|U3|Mult0|auto_generated|mac_mult1~DATAOUT13\ & 
\Unit1|U3|Mult0|auto_generated|mac_mult1~DATAOUT12\ & \Unit1|U3|Mult0|auto_generated|mac_mult1~DATAOUT11\ & \Unit1|U3|Mult0|auto_generated|mac_mult1~DATAOUT10\ & \Unit1|U3|Mult0|auto_generated|mac_mult1~DATAOUT9\ & 
\Unit1|U3|Mult0|auto_generated|mac_mult1~DATAOUT8\ & \Unit1|U3|Mult0|auto_generated|mac_mult1~DATAOUT7\ & \Unit1|U3|Mult0|auto_generated|mac_mult1~DATAOUT6\ & \Unit1|U3|Mult0|auto_generated|mac_mult1~DATAOUT5\ & 
\Unit1|U3|Mult0|auto_generated|mac_mult1~DATAOUT4\ & \Unit1|U3|Mult0|auto_generated|mac_mult1~DATAOUT3\ & \Unit1|U3|Mult0|auto_generated|mac_mult1~DATAOUT2\ & \Unit1|U3|Mult0|auto_generated|mac_mult1~DATAOUT1\ & 
\Unit1|U3|Mult0|auto_generated|mac_mult1~dataout\ & \Unit1|U3|Mult0|auto_generated|mac_mult1~3\ & \Unit1|U3|Mult0|auto_generated|mac_mult1~2\ & \Unit1|U3|Mult0|auto_generated|mac_mult1~1\ & \Unit1|U3|Mult0|auto_generated|mac_mult1~0\);

\Unit1|U3|Mult0|auto_generated|mac_out2~0\ <= \Unit1|U3|Mult0|auto_generated|mac_out2_DATAOUT_bus\(0);
\Unit1|U3|Mult0|auto_generated|mac_out2~1\ <= \Unit1|U3|Mult0|auto_generated|mac_out2_DATAOUT_bus\(1);
\Unit1|U3|Mult0|auto_generated|mac_out2~2\ <= \Unit1|U3|Mult0|auto_generated|mac_out2_DATAOUT_bus\(2);
\Unit1|U3|Mult0|auto_generated|mac_out2~3\ <= \Unit1|U3|Mult0|auto_generated|mac_out2_DATAOUT_bus\(3);
\Unit1|U3|Mult0|auto_generated|mac_out2~dataout\ <= \Unit1|U3|Mult0|auto_generated|mac_out2_DATAOUT_bus\(4);
\Unit1|U3|Mult0|auto_generated|mac_out2~DATAOUT1\ <= \Unit1|U3|Mult0|auto_generated|mac_out2_DATAOUT_bus\(5);
\Unit1|U3|Mult0|auto_generated|mac_out2~DATAOUT2\ <= \Unit1|U3|Mult0|auto_generated|mac_out2_DATAOUT_bus\(6);
\Unit1|U3|Mult0|auto_generated|mac_out2~DATAOUT3\ <= \Unit1|U3|Mult0|auto_generated|mac_out2_DATAOUT_bus\(7);
\Unit1|U3|Mult0|auto_generated|mac_out2~DATAOUT4\ <= \Unit1|U3|Mult0|auto_generated|mac_out2_DATAOUT_bus\(8);
\Unit1|U3|Mult0|auto_generated|mac_out2~DATAOUT5\ <= \Unit1|U3|Mult0|auto_generated|mac_out2_DATAOUT_bus\(9);
\Unit1|U3|Mult0|auto_generated|mac_out2~DATAOUT6\ <= \Unit1|U3|Mult0|auto_generated|mac_out2_DATAOUT_bus\(10);
\Unit1|U3|Mult0|auto_generated|mac_out2~DATAOUT7\ <= \Unit1|U3|Mult0|auto_generated|mac_out2_DATAOUT_bus\(11);
\Unit1|U3|Mult0|auto_generated|mac_out2~DATAOUT8\ <= \Unit1|U3|Mult0|auto_generated|mac_out2_DATAOUT_bus\(12);
\Unit1|U3|Mult0|auto_generated|mac_out2~DATAOUT9\ <= \Unit1|U3|Mult0|auto_generated|mac_out2_DATAOUT_bus\(13);
\Unit1|U3|Mult0|auto_generated|mac_out2~DATAOUT10\ <= \Unit1|U3|Mult0|auto_generated|mac_out2_DATAOUT_bus\(14);
\Unit1|U3|Mult0|auto_generated|mac_out2~DATAOUT11\ <= \Unit1|U3|Mult0|auto_generated|mac_out2_DATAOUT_bus\(15);
\Unit1|U3|Mult0|auto_generated|mac_out2~DATAOUT12\ <= \Unit1|U3|Mult0|auto_generated|mac_out2_DATAOUT_bus\(16);
\Unit1|U3|Mult0|auto_generated|mac_out2~DATAOUT13\ <= \Unit1|U3|Mult0|auto_generated|mac_out2_DATAOUT_bus\(17);
\Unit1|U3|Mult0|auto_generated|mac_out2~DATAOUT14\ <= \Unit1|U3|Mult0|auto_generated|mac_out2_DATAOUT_bus\(18);
\Unit1|U3|Mult0|auto_generated|mac_out2~DATAOUT15\ <= \Unit1|U3|Mult0|auto_generated|mac_out2_DATAOUT_bus\(19);
\Unit1|U3|Mult0|auto_generated|mac_out2~DATAOUT16\ <= \Unit1|U3|Mult0|auto_generated|mac_out2_DATAOUT_bus\(20);
\Unit1|U3|Mult0|auto_generated|mac_out2~DATAOUT17\ <= \Unit1|U3|Mult0|auto_generated|mac_out2_DATAOUT_bus\(21);
\Unit1|U3|Mult0|auto_generated|mac_out2~DATAOUT18\ <= \Unit1|U3|Mult0|auto_generated|mac_out2_DATAOUT_bus\(22);
\Unit1|U3|Mult0|auto_generated|mac_out2~DATAOUT19\ <= \Unit1|U3|Mult0|auto_generated|mac_out2_DATAOUT_bus\(23);
\Unit1|U3|Mult0|auto_generated|mac_out2~DATAOUT20\ <= \Unit1|U3|Mult0|auto_generated|mac_out2_DATAOUT_bus\(24);
\Unit1|U3|Mult0|auto_generated|mac_out2~DATAOUT21\ <= \Unit1|U3|Mult0|auto_generated|mac_out2_DATAOUT_bus\(25);
\Unit1|U3|Mult0|auto_generated|mac_out2~DATAOUT22\ <= \Unit1|U3|Mult0|auto_generated|mac_out2_DATAOUT_bus\(26);
\Unit1|U3|Mult0|auto_generated|mac_out2~DATAOUT23\ <= \Unit1|U3|Mult0|auto_generated|mac_out2_DATAOUT_bus\(27);
\Unit1|U3|Mult0|auto_generated|mac_out2~DATAOUT24\ <= \Unit1|U3|Mult0|auto_generated|mac_out2_DATAOUT_bus\(28);
\Unit1|U3|Mult0|auto_generated|mac_out2~DATAOUT25\ <= \Unit1|U3|Mult0|auto_generated|mac_out2_DATAOUT_bus\(29);
\Unit1|U3|Mult0|auto_generated|mac_out2~DATAOUT26\ <= \Unit1|U3|Mult0|auto_generated|mac_out2_DATAOUT_bus\(30);
\Unit1|U3|Mult0|auto_generated|mac_out2~DATAOUT27\ <= \Unit1|U3|Mult0|auto_generated|mac_out2_DATAOUT_bus\(31);
\Unit1|U3|Mult0|auto_generated|mac_out2~DATAOUT28\ <= \Unit1|U3|Mult0|auto_generated|mac_out2_DATAOUT_bus\(32);
\Unit1|U3|Mult0|auto_generated|mac_out2~DATAOUT29\ <= \Unit1|U3|Mult0|auto_generated|mac_out2_DATAOUT_bus\(33);
\Unit1|U3|Mult0|auto_generated|mac_out2~DATAOUT30\ <= \Unit1|U3|Mult0|auto_generated|mac_out2_DATAOUT_bus\(34);
\Unit1|U3|Mult0|auto_generated|mac_out2~DATAOUT31\ <= \Unit1|U3|Mult0|auto_generated|mac_out2_DATAOUT_bus\(35);

\Unit1|U3|Mult0|auto_generated|mac_mult1_DATAA_bus\ <= (\Unit1|U2|Mux0~9_combout\ & \Unit1|U2|Mux1~9_combout\ & \Unit1|U2|Mux2~9_combout\ & \Unit1|U2|Mux3~9_combout\ & \Unit1|U2|Mux4~9_combout\ & \Unit1|U2|Mux5~9_combout\ & \Unit1|U2|Mux6~9_combout\ & 
\Unit1|U2|Mux7~9_combout\ & \Unit1|U2|Mux8~9_combout\ & \Unit1|U2|Mux9~9_combout\ & \Unit1|U2|Mux10~9_combout\ & \Unit1|U2|Mux11~9_combout\ & \Unit1|U2|Mux12~9_combout\ & \Unit1|U2|Mux13~9_combout\ & \Unit1|U2|Mux14~9_combout\ & \Unit1|U2|Mux15~9_combout\
& gnd & gnd);

\Unit1|U3|Mult0|auto_generated|mac_mult1_DATAB_bus\ <= (\Unit1|U2|RFr2\(15) & \Unit1|U2|RFr2\(14) & \Unit1|U2|RFr2\(13) & \Unit1|U2|RFr2\(12) & \Unit1|U2|RFr2\(11) & \Unit1|U2|RFr2\(10) & \Unit1|U2|RFr2\(9) & \Unit1|U2|RFr2\(8) & 
\Unit1|U2|RFr2\(7) & \Unit1|U2|RFr2\(6) & \Unit1|U2|RFr2\(5) & \Unit1|U2|RFr2\(4) & \Unit1|U2|RFr2\(3) & \Unit1|U2|RFr2\(2) & \Unit1|U2|RFr2\(1) & \Unit1|U2|RFr2\(0) & gnd & gnd);

\Unit1|U3|Mult0|auto_generated|mac_mult1~0\ <= \Unit1|U3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(0);
\Unit1|U3|Mult0|auto_generated|mac_mult1~1\ <= \Unit1|U3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(1);
\Unit1|U3|Mult0|auto_generated|mac_mult1~2\ <= \Unit1|U3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(2);
\Unit1|U3|Mult0|auto_generated|mac_mult1~3\ <= \Unit1|U3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(3);
\Unit1|U3|Mult0|auto_generated|mac_mult1~dataout\ <= \Unit1|U3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(4);
\Unit1|U3|Mult0|auto_generated|mac_mult1~DATAOUT1\ <= \Unit1|U3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(5);
\Unit1|U3|Mult0|auto_generated|mac_mult1~DATAOUT2\ <= \Unit1|U3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(6);
\Unit1|U3|Mult0|auto_generated|mac_mult1~DATAOUT3\ <= \Unit1|U3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(7);
\Unit1|U3|Mult0|auto_generated|mac_mult1~DATAOUT4\ <= \Unit1|U3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(8);
\Unit1|U3|Mult0|auto_generated|mac_mult1~DATAOUT5\ <= \Unit1|U3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(9);
\Unit1|U3|Mult0|auto_generated|mac_mult1~DATAOUT6\ <= \Unit1|U3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(10);
\Unit1|U3|Mult0|auto_generated|mac_mult1~DATAOUT7\ <= \Unit1|U3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(11);
\Unit1|U3|Mult0|auto_generated|mac_mult1~DATAOUT8\ <= \Unit1|U3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(12);
\Unit1|U3|Mult0|auto_generated|mac_mult1~DATAOUT9\ <= \Unit1|U3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(13);
\Unit1|U3|Mult0|auto_generated|mac_mult1~DATAOUT10\ <= \Unit1|U3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(14);
\Unit1|U3|Mult0|auto_generated|mac_mult1~DATAOUT11\ <= \Unit1|U3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(15);
\Unit1|U3|Mult0|auto_generated|mac_mult1~DATAOUT12\ <= \Unit1|U3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(16);
\Unit1|U3|Mult0|auto_generated|mac_mult1~DATAOUT13\ <= \Unit1|U3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(17);
\Unit1|U3|Mult0|auto_generated|mac_mult1~DATAOUT14\ <= \Unit1|U3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(18);
\Unit1|U3|Mult0|auto_generated|mac_mult1~DATAOUT15\ <= \Unit1|U3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(19);
\Unit1|U3|Mult0|auto_generated|mac_mult1~DATAOUT16\ <= \Unit1|U3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(20);
\Unit1|U3|Mult0|auto_generated|mac_mult1~DATAOUT17\ <= \Unit1|U3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(21);
\Unit1|U3|Mult0|auto_generated|mac_mult1~DATAOUT18\ <= \Unit1|U3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(22);
\Unit1|U3|Mult0|auto_generated|mac_mult1~DATAOUT19\ <= \Unit1|U3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(23);
\Unit1|U3|Mult0|auto_generated|mac_mult1~DATAOUT20\ <= \Unit1|U3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(24);
\Unit1|U3|Mult0|auto_generated|mac_mult1~DATAOUT21\ <= \Unit1|U3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(25);
\Unit1|U3|Mult0|auto_generated|mac_mult1~DATAOUT22\ <= \Unit1|U3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(26);
\Unit1|U3|Mult0|auto_generated|mac_mult1~DATAOUT23\ <= \Unit1|U3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(27);
\Unit1|U3|Mult0|auto_generated|mac_mult1~DATAOUT24\ <= \Unit1|U3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(28);
\Unit1|U3|Mult0|auto_generated|mac_mult1~DATAOUT25\ <= \Unit1|U3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(29);
\Unit1|U3|Mult0|auto_generated|mac_mult1~DATAOUT26\ <= \Unit1|U3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(30);
\Unit1|U3|Mult0|auto_generated|mac_mult1~DATAOUT27\ <= \Unit1|U3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(31);
\Unit1|U3|Mult0|auto_generated|mac_mult1~DATAOUT28\ <= \Unit1|U3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(32);
\Unit1|U3|Mult0|auto_generated|mac_mult1~DATAOUT29\ <= \Unit1|U3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(33);
\Unit1|U3|Mult0|auto_generated|mac_mult1~DATAOUT30\ <= \Unit1|U3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(34);
\Unit1|U3|Mult0|auto_generated|mac_mult1~DATAOUT31\ <= \Unit1|U3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(35);

\Unit1|U3|Mux1~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Unit1|U3|Mux1~0_combout\);

\Unit0|U0|IRld_ctrl~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Unit0|U0|IRld_ctrl~q\);

\cpu_rst~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \cpu_rst~input_o\);

\Unit1|U3|Mux33~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Unit1|U3|Mux33~0_combout\);

\cpu_clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \cpu_clk~input_o\);
\ALT_INV_cpu_rst~inputclkctrl_outclk\ <= NOT \cpu_rst~inputclkctrl_outclk\;
\ALT_INV_cpu_rst~input_o\ <= NOT \cpu_rst~input_o\;
\Unit0|U0|ALT_INV_state.S_DECODE_INST~q\ <= NOT \Unit0|U0|state.S_DECODE_INST~q\;

-- Location: FF_X61_Y50_N11
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
	sload => \Unit0|U1|process_0~0_combout\,
	ena => \Unit0|U1|tmp_PC~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U1|tmp_PC\(5));

-- Location: FF_X61_Y50_N13
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
	sload => \Unit0|U1|process_0~0_combout\,
	ena => \Unit0|U1|tmp_PC~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U1|tmp_PC\(6));

-- Location: FF_X61_Y50_N23
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
	sload => \Unit0|U1|process_0~0_combout\,
	ena => \Unit0|U1|tmp_PC~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U1|tmp_PC\(11));

-- Location: LCCOMB_X61_Y50_N10
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

-- Location: LCCOMB_X61_Y50_N12
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

-- Location: LCCOMB_X61_Y50_N22
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

-- Location: LCCOMB_X69_Y50_N18
\Unit1|U3|Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|Add0~3_combout\ = (\Unit1|U2|RFr1[0]~_Duplicate_1_q\ & ((\Unit1|U3|Add0~0_combout\ & (\Unit1|U3|Add0~2_cout\ & VCC)) # (!\Unit1|U3|Add0~0_combout\ & (!\Unit1|U3|Add0~2_cout\)))) # (!\Unit1|U2|RFr1[0]~_Duplicate_1_q\ & ((\Unit1|U3|Add0~0_combout\ 
-- & (!\Unit1|U3|Add0~2_cout\)) # (!\Unit1|U3|Add0~0_combout\ & ((\Unit1|U3|Add0~2_cout\) # (GND)))))
-- \Unit1|U3|Add0~4\ = CARRY((\Unit1|U2|RFr1[0]~_Duplicate_1_q\ & (!\Unit1|U3|Add0~0_combout\ & !\Unit1|U3|Add0~2_cout\)) # (!\Unit1|U2|RFr1[0]~_Duplicate_1_q\ & ((!\Unit1|U3|Add0~2_cout\) # (!\Unit1|U3|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|RFr1[0]~_Duplicate_1_q\,
	datab => \Unit1|U3|Add0~0_combout\,
	datad => VCC,
	cin => \Unit1|U3|Add0~2_cout\,
	combout => \Unit1|U3|Add0~3_combout\,
	cout => \Unit1|U3|Add0~4\);

-- Location: LCCOMB_X69_Y50_N28
\Unit1|U3|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|Add0~18_combout\ = ((\Unit1|U3|Add0~17_combout\ $ (\Unit1|U2|RFr1[5]~_Duplicate_1_q\ $ (!\Unit1|U3|Add0~16\)))) # (GND)
-- \Unit1|U3|Add0~19\ = CARRY((\Unit1|U3|Add0~17_combout\ & ((\Unit1|U2|RFr1[5]~_Duplicate_1_q\) # (!\Unit1|U3|Add0~16\))) # (!\Unit1|U3|Add0~17_combout\ & (\Unit1|U2|RFr1[5]~_Duplicate_1_q\ & !\Unit1|U3|Add0~16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U3|Add0~17_combout\,
	datab => \Unit1|U2|RFr1[5]~_Duplicate_1_q\,
	datad => VCC,
	cin => \Unit1|U3|Add0~16\,
	combout => \Unit1|U3|Add0~18_combout\,
	cout => \Unit1|U3|Add0~19\);

-- Location: LCCOMB_X69_Y49_N6
\Unit1|U3|Add0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|Add0~33_combout\ = (\Unit1|U3|Add0~32_combout\ & ((\Unit1|U2|RFr1[10]~_Duplicate_1_q\ & (\Unit1|U3|Add0~31\ & VCC)) # (!\Unit1|U2|RFr1[10]~_Duplicate_1_q\ & (!\Unit1|U3|Add0~31\)))) # (!\Unit1|U3|Add0~32_combout\ & 
-- ((\Unit1|U2|RFr1[10]~_Duplicate_1_q\ & (!\Unit1|U3|Add0~31\)) # (!\Unit1|U2|RFr1[10]~_Duplicate_1_q\ & ((\Unit1|U3|Add0~31\) # (GND)))))
-- \Unit1|U3|Add0~34\ = CARRY((\Unit1|U3|Add0~32_combout\ & (!\Unit1|U2|RFr1[10]~_Duplicate_1_q\ & !\Unit1|U3|Add0~31\)) # (!\Unit1|U3|Add0~32_combout\ & ((!\Unit1|U3|Add0~31\) # (!\Unit1|U2|RFr1[10]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U3|Add0~32_combout\,
	datab => \Unit1|U2|RFr1[10]~_Duplicate_1_q\,
	datad => VCC,
	cin => \Unit1|U3|Add0~31\,
	combout => \Unit1|U3|Add0~33_combout\,
	cout => \Unit1|U3|Add0~34\);

-- Location: LCCOMB_X69_Y49_N14
\Unit1|U3|Add0~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|Add0~45_combout\ = (\Unit1|U2|RFr1[14]~_Duplicate_1_q\ & ((\Unit1|U3|Add0~44_combout\ & (\Unit1|U3|Add0~43\ & VCC)) # (!\Unit1|U3|Add0~44_combout\ & (!\Unit1|U3|Add0~43\)))) # (!\Unit1|U2|RFr1[14]~_Duplicate_1_q\ & ((\Unit1|U3|Add0~44_combout\ & 
-- (!\Unit1|U3|Add0~43\)) # (!\Unit1|U3|Add0~44_combout\ & ((\Unit1|U3|Add0~43\) # (GND)))))
-- \Unit1|U3|Add0~46\ = CARRY((\Unit1|U2|RFr1[14]~_Duplicate_1_q\ & (!\Unit1|U3|Add0~44_combout\ & !\Unit1|U3|Add0~43\)) # (!\Unit1|U2|RFr1[14]~_Duplicate_1_q\ & ((!\Unit1|U3|Add0~43\) # (!\Unit1|U3|Add0~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|RFr1[14]~_Duplicate_1_q\,
	datab => \Unit1|U3|Add0~44_combout\,
	datad => VCC,
	cin => \Unit1|U3|Add0~43\,
	combout => \Unit1|U3|Add0~45_combout\,
	cout => \Unit1|U3|Add0~46\);

-- Location: DSPOUT_X71_Y49_N2
\Unit1|U3|Mult0|auto_generated|mac_out2\ : cycloneive_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U3|Mult0|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Unit1|U3|Mult0|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: LCCOMB_X63_Y50_N26
\Unit1|U3|ALUz~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|ALUz~0_combout\ = (\Unit0|U0|jmpen_ctrl~q\ & (!\Unit1|U3|alu_tmp\(2) & (!\Unit1|U3|alu_tmp\(1) & !\Unit1|U3|alu_tmp\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|jmpen_ctrl~q\,
	datab => \Unit1|U3|alu_tmp\(2),
	datac => \Unit1|U3|alu_tmp\(1),
	datad => \Unit1|U3|alu_tmp\(0),
	combout => \Unit1|U3|ALUz~0_combout\);

-- Location: LCCOMB_X63_Y51_N16
\Unit1|U2|Mux14~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux14~7_combout\ = (\Unit0|U0|RFr1a_ctrl\(2) & ((\Unit0|U0|RFr1a_ctrl\(3)) # ((\Unit1|U2|tmp_rf[7][1]~q\)))) # (!\Unit0|U0|RFr1a_ctrl\(2) & (!\Unit0|U0|RFr1a_ctrl\(3) & (\Unit1|U2|tmp_rf[3][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(2),
	datab => \Unit0|U0|RFr1a_ctrl\(3),
	datac => \Unit1|U2|tmp_rf[3][1]~q\,
	datad => \Unit1|U2|tmp_rf[7][1]~q\,
	combout => \Unit1|U2|Mux14~7_combout\);

-- Location: LCCOMB_X63_Y52_N24
\Unit1|U2|Mux14~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux14~8_combout\ = (\Unit0|U0|RFr1a_ctrl\(3) & ((\Unit1|U2|Mux14~7_combout\ & (\Unit1|U2|tmp_rf[15][1]~q\)) # (!\Unit1|U2|Mux14~7_combout\ & ((\Unit1|U2|tmp_rf[11][1]~q\))))) # (!\Unit0|U0|RFr1a_ctrl\(3) & (((\Unit1|U2|Mux14~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[15][1]~q\,
	datab => \Unit0|U0|RFr1a_ctrl\(3),
	datac => \Unit1|U2|tmp_rf[11][1]~q\,
	datad => \Unit1|U2|Mux14~7_combout\,
	combout => \Unit1|U2|Mux14~8_combout\);

-- Location: LCCOMB_X62_Y53_N30
\Unit1|U2|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux13~0_combout\ = (\Unit0|U0|RFr1a_ctrl\(0) & (((\Unit1|U2|tmp_rf[5][2]~q\) # (\Unit0|U0|RFr1a_ctrl\(1))))) # (!\Unit0|U0|RFr1a_ctrl\(0) & (\Unit1|U2|tmp_rf[4][2]~q\ & ((!\Unit0|U0|RFr1a_ctrl\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(0),
	datab => \Unit1|U2|tmp_rf[4][2]~q\,
	datac => \Unit1|U2|tmp_rf[5][2]~q\,
	datad => \Unit0|U0|RFr1a_ctrl\(1),
	combout => \Unit1|U2|Mux13~0_combout\);

-- Location: LCCOMB_X62_Y53_N22
\Unit1|U2|Mux13~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux13~7_combout\ = (\Unit0|U0|RFr1a_ctrl\(0) & ((\Unit1|U2|tmp_rf[13][2]~q\) # ((\Unit0|U0|RFr1a_ctrl\(1))))) # (!\Unit0|U0|RFr1a_ctrl\(0) & (((\Unit1|U2|tmp_rf[12][2]~q\ & !\Unit0|U0|RFr1a_ctrl\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[13][2]~q\,
	datab => \Unit0|U0|RFr1a_ctrl\(0),
	datac => \Unit1|U2|tmp_rf[12][2]~q\,
	datad => \Unit0|U0|RFr1a_ctrl\(1),
	combout => \Unit1|U2|Mux13~7_combout\);

-- Location: LCCOMB_X67_Y51_N10
\Unit1|U2|Mux13~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux13~8_combout\ = (\Unit0|U0|RFr1a_ctrl\(1) & ((\Unit1|U2|Mux13~7_combout\ & (\Unit1|U2|tmp_rf[15][2]~q\)) # (!\Unit1|U2|Mux13~7_combout\ & ((\Unit1|U2|tmp_rf[14][2]~q\))))) # (!\Unit0|U0|RFr1a_ctrl\(1) & (((\Unit1|U2|Mux13~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[15][2]~q\,
	datab => \Unit0|U0|RFr1a_ctrl\(1),
	datac => \Unit1|U2|tmp_rf[14][2]~q\,
	datad => \Unit1|U2|Mux13~7_combout\,
	combout => \Unit1|U2|Mux13~8_combout\);

-- Location: LCCOMB_X66_Y54_N24
\Unit1|U2|Mux11~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux11~4_combout\ = (\Unit0|U0|RFr1a_ctrl\(0) & ((\Unit1|U2|tmp_rf[1][4]~q\) # ((\Unit0|U0|RFr1a_ctrl\(1))))) # (!\Unit0|U0|RFr1a_ctrl\(0) & (((\Unit1|U2|tmp_rf[0][4]~q\ & !\Unit0|U0|RFr1a_ctrl\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(0),
	datab => \Unit1|U2|tmp_rf[1][4]~q\,
	datac => \Unit1|U2|tmp_rf[0][4]~q\,
	datad => \Unit0|U0|RFr1a_ctrl\(1),
	combout => \Unit1|U2|Mux11~4_combout\);

-- Location: LCCOMB_X66_Y54_N16
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

-- Location: LCCOMB_X66_Y53_N14
\Unit1|U2|Mux10~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux10~7_combout\ = (\Unit0|U0|RFr1a_ctrl\(2) & ((\Unit1|U2|tmp_rf[7][5]~q\) # ((\Unit0|U0|RFr1a_ctrl\(3))))) # (!\Unit0|U0|RFr1a_ctrl\(2) & (((\Unit1|U2|tmp_rf[3][5]~q\ & !\Unit0|U0|RFr1a_ctrl\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[7][5]~q\,
	datab => \Unit1|U2|tmp_rf[3][5]~q\,
	datac => \Unit0|U0|RFr1a_ctrl\(2),
	datad => \Unit0|U0|RFr1a_ctrl\(3),
	combout => \Unit1|U2|Mux10~7_combout\);

-- Location: LCCOMB_X62_Y53_N8
\Unit1|U2|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux9~0_combout\ = (\Unit0|U0|RFr1a_ctrl\(0) & (((\Unit1|U2|tmp_rf[5][6]~q\) # (\Unit0|U0|RFr1a_ctrl\(1))))) # (!\Unit0|U0|RFr1a_ctrl\(0) & (\Unit1|U2|tmp_rf[4][6]~q\ & ((!\Unit0|U0|RFr1a_ctrl\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(0),
	datab => \Unit1|U2|tmp_rf[4][6]~q\,
	datac => \Unit1|U2|tmp_rf[5][6]~q\,
	datad => \Unit0|U0|RFr1a_ctrl\(1),
	combout => \Unit1|U2|Mux9~0_combout\);

-- Location: LCCOMB_X62_Y52_N24
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

-- Location: LCCOMB_X65_Y52_N4
\Unit1|U2|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux6~0_combout\ = (\Unit0|U0|RFr1a_ctrl\(3) & ((\Unit0|U0|RFr1a_ctrl\(2)) # ((\Unit1|U2|tmp_rf[10][9]~q\)))) # (!\Unit0|U0|RFr1a_ctrl\(3) & (!\Unit0|U0|RFr1a_ctrl\(2) & ((\Unit1|U2|tmp_rf[2][9]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(3),
	datab => \Unit0|U0|RFr1a_ctrl\(2),
	datac => \Unit1|U2|tmp_rf[10][9]~q\,
	datad => \Unit1|U2|tmp_rf[2][9]~q\,
	combout => \Unit1|U2|Mux6~0_combout\);

-- Location: LCCOMB_X68_Y53_N12
\Unit1|U2|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux6~1_combout\ = (\Unit1|U2|Mux6~0_combout\ & (((\Unit1|U2|tmp_rf[14][9]~q\)) # (!\Unit0|U0|RFr1a_ctrl\(2)))) # (!\Unit1|U2|Mux6~0_combout\ & (\Unit0|U0|RFr1a_ctrl\(2) & (\Unit1|U2|tmp_rf[6][9]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|Mux6~0_combout\,
	datab => \Unit0|U0|RFr1a_ctrl\(2),
	datac => \Unit1|U2|tmp_rf[6][9]~q\,
	datad => \Unit1|U2|tmp_rf[14][9]~q\,
	combout => \Unit1|U2|Mux6~1_combout\);

-- Location: LCCOMB_X68_Y52_N22
\Unit1|U2|Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux6~2_combout\ = (\Unit0|U0|RFr1a_ctrl\(2) & ((\Unit0|U0|RFr1a_ctrl\(3)) # ((\Unit1|U2|tmp_rf[5][9]~q\)))) # (!\Unit0|U0|RFr1a_ctrl\(2) & (!\Unit0|U0|RFr1a_ctrl\(3) & ((\Unit1|U2|tmp_rf[1][9]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(2),
	datab => \Unit0|U0|RFr1a_ctrl\(3),
	datac => \Unit1|U2|tmp_rf[5][9]~q\,
	datad => \Unit1|U2|tmp_rf[1][9]~q\,
	combout => \Unit1|U2|Mux6~2_combout\);

-- Location: LCCOMB_X66_Y53_N0
\Unit1|U2|Mux6~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux6~7_combout\ = (\Unit0|U0|RFr1a_ctrl\(2) & (((\Unit1|U2|tmp_rf[7][9]~q\) # (\Unit0|U0|RFr1a_ctrl\(3))))) # (!\Unit0|U0|RFr1a_ctrl\(2) & (\Unit1|U2|tmp_rf[3][9]~q\ & ((!\Unit0|U0|RFr1a_ctrl\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[3][9]~q\,
	datab => \Unit1|U2|tmp_rf[7][9]~q\,
	datac => \Unit0|U0|RFr1a_ctrl\(2),
	datad => \Unit0|U0|RFr1a_ctrl\(3),
	combout => \Unit1|U2|Mux6~7_combout\);

-- Location: LCCOMB_X65_Y51_N22
\Unit1|U2|Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux5~2_combout\ = (\Unit0|U0|RFr1a_ctrl\(1) & ((\Unit1|U2|tmp_rf[10][10]~q\) # ((\Unit0|U0|RFr1a_ctrl\(0))))) # (!\Unit0|U0|RFr1a_ctrl\(1) & (((\Unit1|U2|tmp_rf[8][10]~q\ & !\Unit0|U0|RFr1a_ctrl\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[10][10]~q\,
	datab => \Unit1|U2|tmp_rf[8][10]~q\,
	datac => \Unit0|U0|RFr1a_ctrl\(1),
	datad => \Unit0|U0|RFr1a_ctrl\(0),
	combout => \Unit1|U2|Mux5~2_combout\);

-- Location: LCCOMB_X65_Y51_N18
\Unit1|U2|Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux5~3_combout\ = (\Unit1|U2|Mux5~2_combout\ & (((\Unit1|U2|tmp_rf[11][10]~q\) # (!\Unit0|U0|RFr1a_ctrl\(0))))) # (!\Unit1|U2|Mux5~2_combout\ & (\Unit1|U2|tmp_rf[9][10]~q\ & ((\Unit0|U0|RFr1a_ctrl\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|Mux5~2_combout\,
	datab => \Unit1|U2|tmp_rf[9][10]~q\,
	datac => \Unit1|U2|tmp_rf[11][10]~q\,
	datad => \Unit0|U0|RFr1a_ctrl\(0),
	combout => \Unit1|U2|Mux5~3_combout\);

-- Location: LCCOMB_X66_Y54_N28
\Unit1|U2|Mux5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux5~4_combout\ = (\Unit0|U0|RFr1a_ctrl\(0) & (((\Unit0|U0|RFr1a_ctrl\(1))))) # (!\Unit0|U0|RFr1a_ctrl\(0) & ((\Unit0|U0|RFr1a_ctrl\(1) & (\Unit1|U2|tmp_rf[2][10]~q\)) # (!\Unit0|U0|RFr1a_ctrl\(1) & ((\Unit1|U2|tmp_rf[0][10]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(0),
	datab => \Unit1|U2|tmp_rf[2][10]~q\,
	datac => \Unit1|U2|tmp_rf[0][10]~q\,
	datad => \Unit0|U0|RFr1a_ctrl\(1),
	combout => \Unit1|U2|Mux5~4_combout\);

-- Location: LCCOMB_X66_Y54_N4
\Unit1|U2|Mux5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux5~5_combout\ = (\Unit0|U0|RFr1a_ctrl\(0) & ((\Unit1|U2|Mux5~4_combout\ & (\Unit1|U2|tmp_rf[3][10]~q\)) # (!\Unit1|U2|Mux5~4_combout\ & ((\Unit1|U2|tmp_rf[1][10]~q\))))) # (!\Unit0|U0|RFr1a_ctrl\(0) & (\Unit1|U2|Mux5~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(0),
	datab => \Unit1|U2|Mux5~4_combout\,
	datac => \Unit1|U2|tmp_rf[3][10]~q\,
	datad => \Unit1|U2|tmp_rf[1][10]~q\,
	combout => \Unit1|U2|Mux5~5_combout\);

-- Location: LCCOMB_X67_Y51_N6
\Unit1|U2|Mux5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux5~6_combout\ = (\Unit0|U0|RFr1a_ctrl\(3) & ((\Unit0|U0|RFr1a_ctrl\(2)) # ((\Unit1|U2|Mux5~3_combout\)))) # (!\Unit0|U0|RFr1a_ctrl\(3) & (!\Unit0|U0|RFr1a_ctrl\(2) & ((\Unit1|U2|Mux5~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(3),
	datab => \Unit0|U0|RFr1a_ctrl\(2),
	datac => \Unit1|U2|Mux5~3_combout\,
	datad => \Unit1|U2|Mux5~5_combout\,
	combout => \Unit1|U2|Mux5~6_combout\);

-- Location: LCCOMB_X68_Y51_N2
\Unit1|U2|Mux5~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux5~7_combout\ = (\Unit0|U0|RFr1a_ctrl\(0) & ((\Unit1|U2|tmp_rf[13][10]~q\) # ((\Unit0|U0|RFr1a_ctrl\(1))))) # (!\Unit0|U0|RFr1a_ctrl\(0) & (((\Unit1|U2|tmp_rf[12][10]~q\ & !\Unit0|U0|RFr1a_ctrl\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[13][10]~q\,
	datab => \Unit0|U0|RFr1a_ctrl\(0),
	datac => \Unit1|U2|tmp_rf[12][10]~q\,
	datad => \Unit0|U0|RFr1a_ctrl\(1),
	combout => \Unit1|U2|Mux5~7_combout\);

-- Location: LCCOMB_X65_Y54_N30
\Unit1|U2|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux1~0_combout\ = (\Unit0|U0|RFr1a_ctrl\(1) & (\Unit0|U0|RFr1a_ctrl\(0))) # (!\Unit0|U0|RFr1a_ctrl\(1) & ((\Unit0|U0|RFr1a_ctrl\(0) & (\Unit1|U2|tmp_rf[5][14]~q\)) # (!\Unit0|U0|RFr1a_ctrl\(0) & ((\Unit1|U2|tmp_rf[4][14]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(1),
	datab => \Unit0|U0|RFr1a_ctrl\(0),
	datac => \Unit1|U2|tmp_rf[5][14]~q\,
	datad => \Unit1|U2|tmp_rf[4][14]~q\,
	combout => \Unit1|U2|Mux1~0_combout\);

-- Location: LCCOMB_X65_Y51_N0
\Unit1|U2|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux1~2_combout\ = (\Unit0|U0|RFr1a_ctrl\(1) & ((\Unit1|U2|tmp_rf[10][14]~q\) # ((\Unit0|U0|RFr1a_ctrl\(0))))) # (!\Unit0|U0|RFr1a_ctrl\(1) & (((\Unit1|U2|tmp_rf[8][14]~q\ & !\Unit0|U0|RFr1a_ctrl\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(1),
	datab => \Unit1|U2|tmp_rf[10][14]~q\,
	datac => \Unit1|U2|tmp_rf[8][14]~q\,
	datad => \Unit0|U0|RFr1a_ctrl\(0),
	combout => \Unit1|U2|Mux1~2_combout\);

-- Location: LCCOMB_X65_Y51_N20
\Unit1|U2|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux1~3_combout\ = (\Unit0|U0|RFr1a_ctrl\(0) & ((\Unit1|U2|Mux1~2_combout\ & ((\Unit1|U2|tmp_rf[11][14]~q\))) # (!\Unit1|U2|Mux1~2_combout\ & (\Unit1|U2|tmp_rf[9][14]~q\)))) # (!\Unit0|U0|RFr1a_ctrl\(0) & (((\Unit1|U2|Mux1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(0),
	datab => \Unit1|U2|tmp_rf[9][14]~q\,
	datac => \Unit1|U2|tmp_rf[11][14]~q\,
	datad => \Unit1|U2|Mux1~2_combout\,
	combout => \Unit1|U2|Mux1~3_combout\);

-- Location: LCCOMB_X66_Y54_N20
\Unit1|U2|Mux1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux1~4_combout\ = (\Unit0|U0|RFr1a_ctrl\(0) & (((\Unit0|U0|RFr1a_ctrl\(1))))) # (!\Unit0|U0|RFr1a_ctrl\(0) & ((\Unit0|U0|RFr1a_ctrl\(1) & (\Unit1|U2|tmp_rf[2][14]~q\)) # (!\Unit0|U0|RFr1a_ctrl\(1) & ((\Unit1|U2|tmp_rf[0][14]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(0),
	datab => \Unit1|U2|tmp_rf[2][14]~q\,
	datac => \Unit1|U2|tmp_rf[0][14]~q\,
	datad => \Unit0|U0|RFr1a_ctrl\(1),
	combout => \Unit1|U2|Mux1~4_combout\);

-- Location: LCCOMB_X66_Y54_N12
\Unit1|U2|Mux1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux1~5_combout\ = (\Unit0|U0|RFr1a_ctrl\(0) & ((\Unit1|U2|Mux1~4_combout\ & ((\Unit1|U2|tmp_rf[3][14]~q\))) # (!\Unit1|U2|Mux1~4_combout\ & (\Unit1|U2|tmp_rf[1][14]~q\)))) # (!\Unit0|U0|RFr1a_ctrl\(0) & (((\Unit1|U2|Mux1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(0),
	datab => \Unit1|U2|tmp_rf[1][14]~q\,
	datac => \Unit1|U2|tmp_rf[3][14]~q\,
	datad => \Unit1|U2|Mux1~4_combout\,
	combout => \Unit1|U2|Mux1~5_combout\);

-- Location: LCCOMB_X66_Y54_N22
\Unit1|U2|Mux1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux1~6_combout\ = (\Unit0|U0|RFr1a_ctrl\(3) & ((\Unit1|U2|Mux1~3_combout\) # ((\Unit0|U0|RFr1a_ctrl\(2))))) # (!\Unit0|U0|RFr1a_ctrl\(3) & (((!\Unit0|U0|RFr1a_ctrl\(2) & \Unit1|U2|Mux1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(3),
	datab => \Unit1|U2|Mux1~3_combout\,
	datac => \Unit0|U0|RFr1a_ctrl\(2),
	datad => \Unit1|U2|Mux1~5_combout\,
	combout => \Unit1|U2|Mux1~6_combout\);

-- Location: LCCOMB_X63_Y51_N8
\Unit1|U2|Mux0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux0~7_combout\ = (\Unit0|U0|RFr1a_ctrl\(2) & (((\Unit0|U0|RFr1a_ctrl\(3))))) # (!\Unit0|U0|RFr1a_ctrl\(2) & ((\Unit0|U0|RFr1a_ctrl\(3) & (\Unit1|U2|tmp_rf[11][15]~q\)) # (!\Unit0|U0|RFr1a_ctrl\(3) & ((\Unit1|U2|tmp_rf[3][15]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(2),
	datab => \Unit1|U2|tmp_rf[11][15]~q\,
	datac => \Unit1|U2|tmp_rf[3][15]~q\,
	datad => \Unit0|U0|RFr1a_ctrl\(3),
	combout => \Unit1|U2|Mux0~7_combout\);

-- Location: LCCOMB_X62_Y50_N12
\Unit1|U2|Mux0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux0~8_combout\ = (\Unit0|U0|RFr1a_ctrl\(2) & ((\Unit1|U2|Mux0~7_combout\ & ((\Unit1|U2|tmp_rf[15][15]~q\))) # (!\Unit1|U2|Mux0~7_combout\ & (\Unit1|U2|tmp_rf[7][15]~q\)))) # (!\Unit0|U0|RFr1a_ctrl\(2) & (((\Unit1|U2|Mux0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[7][15]~q\,
	datab => \Unit0|U0|RFr1a_ctrl\(2),
	datac => \Unit1|U2|tmp_rf[15][15]~q\,
	datad => \Unit1|U2|Mux0~7_combout\,
	combout => \Unit1|U2|Mux0~8_combout\);

-- Location: LCCOMB_X70_Y50_N6
\Unit1|U3|Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|Mux19~0_combout\ = (\Unit1|U3|Mux17~0_combout\ & (((\Unit1|U3|Mux17~1_combout\)))) # (!\Unit1|U3|Mux17~0_combout\ & ((\Unit1|U3|Mux17~1_combout\ & ((\Unit1|U2|RFr2\(2)))) # (!\Unit1|U3|Mux17~1_combout\ & (\Unit1|U2|RFr1[2]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|RFr1[2]~_Duplicate_1_q\,
	datab => \Unit1|U2|RFr2\(2),
	datac => \Unit1|U3|Mux17~0_combout\,
	datad => \Unit1|U3|Mux17~1_combout\,
	combout => \Unit1|U3|Mux19~0_combout\);

-- Location: LCCOMB_X69_Y50_N6
\Unit1|U3|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|Add0~14_combout\ = \Unit1|U2|RFr2\(4) $ (\Unit0|U0|ALUs_ctrl\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Unit1|U2|RFr2\(4),
	datad => \Unit0|U0|ALUs_ctrl\(0),
	combout => \Unit1|U3|Add0~14_combout\);

-- Location: LCCOMB_X69_Y50_N0
\Unit1|U3|Add0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|Add0~17_combout\ = \Unit1|U2|RFr2\(5) $ (\Unit0|U0|ALUs_ctrl\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Unit1|U2|RFr2\(5),
	datad => \Unit0|U0|ALUs_ctrl\(0),
	combout => \Unit1|U3|Add0~17_combout\);

-- Location: LCCOMB_X69_Y50_N10
\Unit1|U3|Mux22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|Mux22~0_combout\ = (\Unit1|U3|Mux17~1_combout\ & (((\Unit1|U3|Mux17~0_combout\)))) # (!\Unit1|U3|Mux17~1_combout\ & ((\Unit1|U3|Mux17~0_combout\ & ((\Unit1|U3|Add0~18_combout\))) # (!\Unit1|U3|Mux17~0_combout\ & 
-- (\Unit1|U2|RFr1[5]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|RFr1[5]~_Duplicate_1_q\,
	datab => \Unit1|U3|Mux17~1_combout\,
	datac => \Unit1|U3|Mux17~0_combout\,
	datad => \Unit1|U3|Add0~18_combout\,
	combout => \Unit1|U3|Mux22~0_combout\);

-- Location: LCCOMB_X72_Y50_N24
\Unit1|U3|Mux23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|Mux23~0_combout\ = (\Unit1|U3|Mux17~1_combout\ & (((\Unit1|U2|RFr2\(6)) # (\Unit1|U3|Mux17~0_combout\)))) # (!\Unit1|U3|Mux17~1_combout\ & (\Unit1|U2|RFr1[6]~_Duplicate_1_q\ & ((!\Unit1|U3|Mux17~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|RFr1[6]~_Duplicate_1_q\,
	datab => \Unit1|U2|RFr2\(6),
	datac => \Unit1|U3|Mux17~1_combout\,
	datad => \Unit1|U3|Mux17~0_combout\,
	combout => \Unit1|U3|Mux23~0_combout\);

-- Location: LCCOMB_X70_Y49_N2
\Unit1|U3|Add0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|Add0~23_combout\ = \Unit1|U2|RFr2\(7) $ (\Unit0|U0|ALUs_ctrl\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Unit1|U2|RFr2\(7),
	datad => \Unit0|U0|ALUs_ctrl\(0),
	combout => \Unit1|U3|Add0~23_combout\);

-- Location: LCCOMB_X67_Y49_N14
\Unit1|U3|Add0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|Add0~29_combout\ = \Unit1|U2|RFr2\(9) $ (\Unit0|U0|ALUs_ctrl\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Unit1|U2|RFr2\(9),
	datad => \Unit0|U0|ALUs_ctrl\(0),
	combout => \Unit1|U3|Add0~29_combout\);

-- Location: LCCOMB_X67_Y49_N26
\Unit1|U3|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|Add0~32_combout\ = \Unit1|U2|RFr2\(10) $ (\Unit0|U0|ALUs_ctrl\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Unit1|U2|RFr2\(10),
	datad => \Unit0|U0|ALUs_ctrl\(0),
	combout => \Unit1|U3|Add0~32_combout\);

-- Location: LCCOMB_X70_Y49_N6
\Unit1|U3|Add0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|Add0~35_combout\ = \Unit1|U2|RFr2\(11) $ (\Unit0|U0|ALUs_ctrl\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Unit1|U2|RFr2\(11),
	datad => \Unit0|U0|ALUs_ctrl\(0),
	combout => \Unit1|U3|Add0~35_combout\);

-- Location: LCCOMB_X67_Y49_N22
\Unit1|U3|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|Add0~38_combout\ = \Unit1|U2|RFr2\(12) $ (\Unit0|U0|ALUs_ctrl\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Unit1|U2|RFr2\(12),
	datad => \Unit0|U0|ALUs_ctrl\(0),
	combout => \Unit1|U3|Add0~38_combout\);

-- Location: LCCOMB_X67_Y50_N16
\Unit1|U3|Mux31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|Mux31~0_combout\ = (\Unit1|U3|Mux17~0_combout\ & (((\Unit1|U3|Mux17~1_combout\)))) # (!\Unit1|U3|Mux17~0_combout\ & ((\Unit1|U3|Mux17~1_combout\ & (\Unit1|U2|RFr2\(14))) # (!\Unit1|U3|Mux17~1_combout\ & ((\Unit1|U2|RFr1[14]~_Duplicate_1_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U3|Mux17~0_combout\,
	datab => \Unit1|U2|RFr2\(14),
	datac => \Unit1|U3|Mux17~1_combout\,
	datad => \Unit1|U2|RFr1[14]~_Duplicate_1_q\,
	combout => \Unit1|U3|Mux31~0_combout\);

-- Location: LCCOMB_X67_Y50_N26
\Unit1|U3|Mux31~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|Mux31~1_combout\ = (\Unit1|U3|Mux17~0_combout\ & ((\Unit1|U3|Mux31~0_combout\ & (\Unit1|U3|mult_result\(14))) # (!\Unit1|U3|Mux31~0_combout\ & ((\Unit1|U3|Add0~45_combout\))))) # (!\Unit1|U3|Mux17~0_combout\ & (((\Unit1|U3|Mux31~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U3|Mux17~0_combout\,
	datab => \Unit1|U3|mult_result\(14),
	datac => \Unit1|U3|Add0~45_combout\,
	datad => \Unit1|U3|Mux31~0_combout\,
	combout => \Unit1|U3|Mux31~1_combout\);

-- Location: LCCOMB_X69_Y49_N26
\Unit1|U3|Mux32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|Mux32~0_combout\ = (\Unit1|U3|Mux17~0_combout\ & (((\Unit1|U3|Mux17~1_combout\)))) # (!\Unit1|U3|Mux17~0_combout\ & ((\Unit1|U3|Mux17~1_combout\ & ((\Unit1|U2|RFr2\(15)))) # (!\Unit1|U3|Mux17~1_combout\ & (\Unit1|U2|RFr1[15]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|RFr1[15]~_Duplicate_1_q\,
	datab => \Unit1|U2|RFr2\(15),
	datac => \Unit1|U3|Mux17~0_combout\,
	datad => \Unit1|U3|Mux17~1_combout\,
	combout => \Unit1|U3|Mux32~0_combout\);

-- Location: LCCOMB_X69_Y46_N10
\Unit0|U0|WideOr63~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|WideOr63~0_combout\ = (!\Unit0|U0|state.S_LONG_SAVE~q\ & (!\Unit0|U0|state.S_SHORT_SAVE~q\ & !\Unit0|U0|state.S_JUMP_Z~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Unit0|U0|state.S_LONG_SAVE~q\,
	datac => \Unit0|U0|state.S_SHORT_SAVE~q\,
	datad => \Unit0|U0|state.S_JUMP_Z~q\,
	combout => \Unit0|U0|WideOr63~0_combout\);

-- Location: LCCOMB_X62_Y48_N26
\Unit0|U0|Selector53~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|Selector53~1_combout\ = (\Unit0|U0|state.S_SHORT_LOADa~q\) # ((\Unit0|U0|state.S_LONG_LOAD_a~q\) # ((\Unit0|U0|RFwe_ctrl~q\ & \Unit0|U0|Selector53~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|state.S_SHORT_LOADa~q\,
	datab => \Unit0|U0|RFwe_ctrl~q\,
	datac => \Unit0|U0|state.S_LONG_LOAD_a~q\,
	datad => \Unit0|U0|Selector53~0_combout\,
	combout => \Unit0|U0|Selector53~1_combout\);

-- Location: LCCOMB_X61_Y45_N10
\Unit0|U0|Selector52~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|Selector52~0_combout\ = (!\Unit0|U0|state.S_REG_ADDR_SAVEa~q\ & (\Unit0|U0|Mre_ctrl~q\ & (!\Unit0|U0|state.S_SHORT_SAVEa~q\ & !\Unit0|U0|state.S_LONG_SAVE_a~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|state.S_REG_ADDR_SAVEa~q\,
	datab => \Unit0|U0|Mre_ctrl~q\,
	datac => \Unit0|U0|state.S_SHORT_SAVEa~q\,
	datad => \Unit0|U0|state.S_LONG_SAVE_a~q\,
	combout => \Unit0|U0|Selector52~0_combout\);

-- Location: LCCOMB_X62_Y45_N12
\Unit0|U0|Selector52~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|Selector52~1_combout\ = (!\Unit0|U0|state.S_FETCH_INSTa~q\ & (!\Unit0|U0|state.S_LONG_LOAD_a~q\ & (!\Unit0|U0|state.S_SHORT_LOADa~q\ & \Unit0|U0|Selector52~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|state.S_FETCH_INSTa~q\,
	datab => \Unit0|U0|state.S_LONG_LOAD_a~q\,
	datac => \Unit0|U0|state.S_SHORT_LOADa~q\,
	datad => \Unit0|U0|Selector52~0_combout\,
	combout => \Unit0|U0|Selector52~1_combout\);

-- Location: FF_X63_Y46_N19
\Unit0|U0|state.S_HALT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit0|U0|state.S_HALT~0_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U0|state.S_HALT~q\);

-- Location: LCCOMB_X62_Y48_N14
\Unit0|U0|WideOr1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|WideOr1~1_combout\ = (!\Unit0|U0|state.S_IMM_LOAD~q\ & (!\Unit0|U0|state.S_LONG_LOAD_a~q\ & (!\Unit0|U0|state.S_REG_ADDR_LOADa~q\ & !\Unit0|U0|state.S_LONG_IMM_LOAD~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|state.S_IMM_LOAD~q\,
	datab => \Unit0|U0|state.S_LONG_LOAD_a~q\,
	datac => \Unit0|U0|state.S_REG_ADDR_LOADa~q\,
	datad => \Unit0|U0|state.S_LONG_IMM_LOAD~q\,
	combout => \Unit0|U0|WideOr1~1_combout\);

-- Location: LCCOMB_X61_Y45_N12
\Unit0|U0|WideOr1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|WideOr1~2_combout\ = (!\Unit0|U0|state.S_LONG_SAVE_wait~q\ & (!\Unit0|U0|state.S_REG_ADDR_LOAD~q\ & (!\Unit0|U0|state.S_REG_ADDR_SAVE_wait~q\ & !\Unit0|U0|state.S_LONG_SAVE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|state.S_LONG_SAVE_wait~q\,
	datab => \Unit0|U0|state.S_REG_ADDR_LOAD~q\,
	datac => \Unit0|U0|state.S_REG_ADDR_SAVE_wait~q\,
	datad => \Unit0|U0|state.S_LONG_SAVE~q\,
	combout => \Unit0|U0|WideOr1~2_combout\);

-- Location: LCCOMB_X61_Y46_N26
\Unit0|U0|WideOr1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|WideOr1~3_combout\ = (\Unit0|U0|WideOr1~1_combout\ & (!\Unit0|U0|state.S_REG_ADDR_SAVE~q\ & \Unit0|U0|WideOr1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|WideOr1~1_combout\,
	datab => \Unit0|U0|state.S_REG_ADDR_SAVE~q\,
	datac => \Unit0|U0|WideOr1~2_combout\,
	combout => \Unit0|U0|WideOr1~3_combout\);

-- Location: LCCOMB_X61_Y45_N30
\Unit0|U0|WideOr4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|WideOr4~0_combout\ = (\Unit0|U0|state.S_LONG_SAVE_wait~q\) # ((\Unit0|U0|state.S_OUTPUT_MEM~q\) # ((\Unit0|U0|state.S_REG_ADDR_SAVE_wait~q\) # (\Unit0|U0|state.S_SHORT_SAVE_wait~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|state.S_LONG_SAVE_wait~q\,
	datab => \Unit0|U0|state.S_OUTPUT_MEM~q\,
	datac => \Unit0|U0|state.S_REG_ADDR_SAVE_wait~q\,
	datad => \Unit0|U0|state.S_SHORT_SAVE_wait~q\,
	combout => \Unit0|U0|WideOr4~0_combout\);

-- Location: LCCOMB_X62_Y48_N8
\Unit0|U0|WideOr3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|WideOr3~1_combout\ = (!\Unit0|U0|state.S_REG_ADDR_LOADa~q\ & (!\Unit0|U0|state.S_JUMP_Z~q\ & (!\Unit0|U0|state.S_ADDa~q\ & !\Unit0|U0|state.S_LONG_LOAD_a~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|state.S_REG_ADDR_LOADa~q\,
	datab => \Unit0|U0|state.S_JUMP_Z~q\,
	datac => \Unit0|U0|state.S_ADDa~q\,
	datad => \Unit0|U0|state.S_LONG_LOAD_a~q\,
	combout => \Unit0|U0|WideOr3~1_combout\);

-- Location: LCCOMB_X61_Y46_N6
\Unit0|U0|WideOr3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|WideOr3~4_combout\ = (\Unit0|U0|state.S_FETCH_INSTa~q\) # ((\Unit0|U0|state.S_SUBT~q\) # ((\Unit0|U0|state.S_LONG_SAVE~q\) # (\Unit0|U0|state.S_REG_ADDR_SAVE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|state.S_FETCH_INSTa~q\,
	datab => \Unit0|U0|state.S_SUBT~q\,
	datac => \Unit0|U0|state.S_LONG_SAVE~q\,
	datad => \Unit0|U0|state.S_REG_ADDR_SAVE~q\,
	combout => \Unit0|U0|WideOr3~4_combout\);

-- Location: LCCOMB_X62_Y45_N6
\Unit0|U0|WideOr11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|WideOr11~0_combout\ = (!\Unit0|U0|state.S_SHORT_LOAD~q\ & (!\Unit0|U0|state.S_LONG_SAVE_a~q\ & (!\Unit0|U0|state.S_LONG_SAVE_wait~q\ & !\Unit0|U0|state.S_REG_ADDR_LOAD_wait~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|state.S_SHORT_LOAD~q\,
	datab => \Unit0|U0|state.S_LONG_SAVE_a~q\,
	datac => \Unit0|U0|state.S_LONG_SAVE_wait~q\,
	datad => \Unit0|U0|state.S_REG_ADDR_LOAD_wait~q\,
	combout => \Unit0|U0|WideOr11~0_combout\);

-- Location: LCCOMB_X61_Y46_N20
\Unit0|U0|WideOr1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|WideOr1~4_combout\ = (!\Unit0|U0|state.S_LONG_SAVE_b~q\ & (!\Unit0|U0|state.S_LONG_LOAD_b~q\ & (!\Unit0|U0|state.S_REG_ADDR_SAVEb~q\ & !\Unit0|U0|state.S_REG_ADDR_LOADb~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|state.S_LONG_SAVE_b~q\,
	datab => \Unit0|U0|state.S_LONG_LOAD_b~q\,
	datac => \Unit0|U0|state.S_REG_ADDR_SAVEb~q\,
	datad => \Unit0|U0|state.S_REG_ADDR_LOADb~q\,
	combout => \Unit0|U0|WideOr1~4_combout\);

-- Location: LCCOMB_X69_Y46_N30
\Unit0|U0|WideOr0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|WideOr0~2_combout\ = ((\Unit0|U0|state.S_OUTPUT_MEMa~q\) # ((!\Unit0|U0|Selector56~1_combout\) # (!\Unit0|U0|WideOr0~0_combout\))) # (!\Unit0|U0|WideOr0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|WideOr0~1_combout\,
	datab => \Unit0|U0|state.S_OUTPUT_MEMa~q\,
	datac => \Unit0|U0|WideOr0~0_combout\,
	datad => \Unit0|U0|Selector56~1_combout\,
	combout => \Unit0|U0|WideOr0~2_combout\);

-- Location: LCCOMB_X62_Y46_N30
\Unit0|U0|Selector54~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|Selector54~0_combout\ = (\Unit0|U0|WideOr1~4_combout\ & (\Unit0|U0|big_addr~q\ & (!\Unit0|U0|state.S_FETCH_INST~q\ & !\Unit0|U0|state.S_OUTPUT_MEMa~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|WideOr1~4_combout\,
	datab => \Unit0|U0|big_addr~q\,
	datac => \Unit0|U0|state.S_FETCH_INST~q\,
	datad => \Unit0|U0|state.S_OUTPUT_MEMa~q\,
	combout => \Unit0|U0|Selector54~0_combout\);

-- Location: LCCOMB_X66_Y48_N30
\Unit1|U2|Decoder0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Decoder0~12_combout\ = (\Unit0|U0|RFwa_ctrl\(1) & (!\Unit0|U0|RFwa_ctrl\(0) & (\Unit0|U0|RFwe_ctrl~q\ & \Unit0|U0|RFwa_ctrl\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFwa_ctrl\(1),
	datab => \Unit0|U0|RFwa_ctrl\(0),
	datac => \Unit0|U0|RFwe_ctrl~q\,
	datad => \Unit0|U0|RFwa_ctrl\(2),
	combout => \Unit1|U2|Decoder0~12_combout\);

-- Location: LCCOMB_X63_Y46_N4
\Unit0|U0|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|Mux0~0_combout\ = (\Unit0|U2|IRout\(15) & (\Unit0|U2|IRout\(14) & (\Unit0|U2|IRout\(13) $ (\Unit0|U2|IRout\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U2|IRout\(13),
	datab => \Unit0|U2|IRout\(15),
	datac => \Unit0|U2|IRout\(12),
	datad => \Unit0|U2|IRout\(14),
	combout => \Unit0|U0|Mux0~0_combout\);

-- Location: LCCOMB_X62_Y46_N16
\Unit0|U0|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|Selector1~0_combout\ = (\Unit0|U0|state.S_FETCH_INST~q\ & (((\Unit0|U0|state.S_DECODE_INST~q\ & \Unit0|U0|Mux0~0_combout\)) # (!\cpu_clk~input_o\))) # (!\Unit0|U0|state.S_FETCH_INST~q\ & (\Unit0|U0|state.S_DECODE_INST~q\ & 
-- ((\Unit0|U0|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|state.S_FETCH_INST~q\,
	datab => \Unit0|U0|state.S_DECODE_INST~q\,
	datac => \cpu_clk~input_o\,
	datad => \Unit0|U0|Mux0~0_combout\,
	combout => \Unit0|U0|Selector1~0_combout\);

-- Location: LCCOMB_X61_Y45_N26
\Unit0|U0|WideOr11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|WideOr11~2_combout\ = (!\Unit0|U0|state.S_SHORT_SAVEa~q\ & (!\Unit0|U0|state.S_SHORT_SAVE_wait~q\ & (!\Unit0|U0|state.S_OUTPUT_MEM~q\ & !\Unit0|U0|state.S_REG_ADDR_SAVE_wait~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|state.S_SHORT_SAVEa~q\,
	datab => \Unit0|U0|state.S_SHORT_SAVE_wait~q\,
	datac => \Unit0|U0|state.S_OUTPUT_MEM~q\,
	datad => \Unit0|U0|state.S_REG_ADDR_SAVE_wait~q\,
	combout => \Unit0|U0|WideOr11~2_combout\);

-- Location: LCCOMB_X61_Y46_N16
\Unit0|U0|Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|Selector12~0_combout\ = (\Unit0|U0|state.S_SHORT_SAVE_wait~q\ & \cpu_clk~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|state.S_SHORT_SAVE_wait~q\,
	datac => \cpu_clk~input_o\,
	combout => \Unit0|U0|Selector12~0_combout\);

-- Location: LCCOMB_X65_Y52_N22
\Unit1|U2|Mux31~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux31~7_combout\ = (\Unit0|U0|RFr2a_ctrl\(1) & ((\Unit0|U0|RFr2a_ctrl\(0)) # ((\Unit1|U2|tmp_rf[14][0]~q\)))) # (!\Unit0|U0|RFr2a_ctrl\(1) & (!\Unit0|U0|RFr2a_ctrl\(0) & ((\Unit1|U2|tmp_rf[12][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr2a_ctrl\(1),
	datab => \Unit0|U0|RFr2a_ctrl\(0),
	datac => \Unit1|U2|tmp_rf[14][0]~q\,
	datad => \Unit1|U2|tmp_rf[12][0]~q\,
	combout => \Unit1|U2|Mux31~7_combout\);

-- Location: LCCOMB_X65_Y50_N24
\Unit1|U2|Mux31~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux31~8_combout\ = (\Unit1|U2|Mux31~7_combout\ & (((\Unit1|U2|tmp_rf[15][0]~q\) # (!\Unit0|U0|RFr2a_ctrl\(0))))) # (!\Unit1|U2|Mux31~7_combout\ & (\Unit1|U2|tmp_rf[13][0]~q\ & ((\Unit0|U0|RFr2a_ctrl\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[13][0]~q\,
	datab => \Unit1|U2|tmp_rf[15][0]~q\,
	datac => \Unit1|U2|Mux31~7_combout\,
	datad => \Unit0|U0|RFr2a_ctrl\(0),
	combout => \Unit1|U2|Mux31~8_combout\);

-- Location: LCCOMB_X62_Y51_N4
\Unit1|U2|Mux29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux29~0_combout\ = (\Unit0|U0|RFr2a_ctrl\(1) & (\Unit0|U0|RFr2a_ctrl\(0))) # (!\Unit0|U0|RFr2a_ctrl\(1) & ((\Unit0|U0|RFr2a_ctrl\(0) & (\Unit1|U2|tmp_rf[5][2]~q\)) # (!\Unit0|U0|RFr2a_ctrl\(0) & ((\Unit1|U2|tmp_rf[4][2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr2a_ctrl\(1),
	datab => \Unit0|U0|RFr2a_ctrl\(0),
	datac => \Unit1|U2|tmp_rf[5][2]~q\,
	datad => \Unit1|U2|tmp_rf[4][2]~q\,
	combout => \Unit1|U2|Mux29~0_combout\);

-- Location: LCCOMB_X62_Y51_N14
\Unit1|U2|Mux29~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux29~1_combout\ = (\Unit0|U0|RFr2a_ctrl\(1) & ((\Unit1|U2|Mux29~0_combout\ & (\Unit1|U2|tmp_rf[7][2]~q\)) # (!\Unit1|U2|Mux29~0_combout\ & ((\Unit1|U2|tmp_rf[6][2]~q\))))) # (!\Unit0|U0|RFr2a_ctrl\(1) & (\Unit1|U2|Mux29~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr2a_ctrl\(1),
	datab => \Unit1|U2|Mux29~0_combout\,
	datac => \Unit1|U2|tmp_rf[7][2]~q\,
	datad => \Unit1|U2|tmp_rf[6][2]~q\,
	combout => \Unit1|U2|Mux29~1_combout\);

-- Location: LCCOMB_X69_Y53_N12
\Unit1|U2|Mux29~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux29~7_combout\ = (\Unit0|U0|RFr2a_ctrl\(1) & (\Unit0|U0|RFr2a_ctrl\(0))) # (!\Unit0|U0|RFr2a_ctrl\(1) & ((\Unit0|U0|RFr2a_ctrl\(0) & (\Unit1|U2|tmp_rf[13][2]~q\)) # (!\Unit0|U0|RFr2a_ctrl\(0) & ((\Unit1|U2|tmp_rf[12][2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr2a_ctrl\(1),
	datab => \Unit0|U0|RFr2a_ctrl\(0),
	datac => \Unit1|U2|tmp_rf[13][2]~q\,
	datad => \Unit1|U2|tmp_rf[12][2]~q\,
	combout => \Unit1|U2|Mux29~7_combout\);

-- Location: LCCOMB_X63_Y52_N2
\Unit1|U2|Mux28~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux28~7_combout\ = (\Unit0|U0|RFr2a_ctrl\(2) & (((\Unit0|U0|RFr2a_ctrl\(3))))) # (!\Unit0|U0|RFr2a_ctrl\(2) & ((\Unit0|U0|RFr2a_ctrl\(3) & ((\Unit1|U2|tmp_rf[11][3]~q\))) # (!\Unit0|U0|RFr2a_ctrl\(3) & (\Unit1|U2|tmp_rf[3][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr2a_ctrl\(2),
	datab => \Unit1|U2|tmp_rf[3][3]~q\,
	datac => \Unit1|U2|tmp_rf[11][3]~q\,
	datad => \Unit0|U0|RFr2a_ctrl\(3),
	combout => \Unit1|U2|Mux28~7_combout\);

-- Location: LCCOMB_X63_Y52_N30
\Unit1|U2|Mux28~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux28~8_combout\ = (\Unit1|U2|Mux28~7_combout\ & (((\Unit1|U2|tmp_rf[15][3]~q\) # (!\Unit0|U0|RFr2a_ctrl\(2))))) # (!\Unit1|U2|Mux28~7_combout\ & (\Unit1|U2|tmp_rf[7][3]~q\ & ((\Unit0|U0|RFr2a_ctrl\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[7][3]~q\,
	datab => \Unit1|U2|Mux28~7_combout\,
	datac => \Unit1|U2|tmp_rf[15][3]~q\,
	datad => \Unit0|U0|RFr2a_ctrl\(2),
	combout => \Unit1|U2|Mux28~8_combout\);

-- Location: LCCOMB_X62_Y52_N30
\Unit1|U2|Mux27~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux27~2_combout\ = (\Unit0|U0|RFr2a_ctrl\(1) & (((\Unit1|U2|tmp_rf[6][4]~q\) # (\Unit0|U0|RFr2a_ctrl\(0))))) # (!\Unit0|U0|RFr2a_ctrl\(1) & (\Unit1|U2|tmp_rf[4][4]~q\ & ((!\Unit0|U0|RFr2a_ctrl\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[4][4]~q\,
	datab => \Unit1|U2|tmp_rf[6][4]~q\,
	datac => \Unit0|U0|RFr2a_ctrl\(1),
	datad => \Unit0|U0|RFr2a_ctrl\(0),
	combout => \Unit1|U2|Mux27~2_combout\);

-- Location: LCCOMB_X62_Y51_N6
\Unit1|U2|Mux27~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux27~3_combout\ = (\Unit0|U0|RFr2a_ctrl\(0) & ((\Unit1|U2|Mux27~2_combout\ & (\Unit1|U2|tmp_rf[7][4]~q\)) # (!\Unit1|U2|Mux27~2_combout\ & ((\Unit1|U2|tmp_rf[5][4]~q\))))) # (!\Unit0|U0|RFr2a_ctrl\(0) & (((\Unit1|U2|Mux27~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr2a_ctrl\(0),
	datab => \Unit1|U2|tmp_rf[7][4]~q\,
	datac => \Unit1|U2|tmp_rf[5][4]~q\,
	datad => \Unit1|U2|Mux27~2_combout\,
	combout => \Unit1|U2|Mux27~3_combout\);

-- Location: LCCOMB_X66_Y50_N6
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

-- Location: LCCOMB_X65_Y52_N30
\Unit1|U2|Mux27~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux27~5_combout\ = (\Unit0|U0|RFr2a_ctrl\(1) & ((\Unit1|U2|Mux27~4_combout\ & (\Unit1|U2|tmp_rf[3][4]~q\)) # (!\Unit1|U2|Mux27~4_combout\ & ((\Unit1|U2|tmp_rf[2][4]~q\))))) # (!\Unit0|U0|RFr2a_ctrl\(1) & (((\Unit1|U2|Mux27~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr2a_ctrl\(1),
	datab => \Unit1|U2|tmp_rf[3][4]~q\,
	datac => \Unit1|U2|tmp_rf[2][4]~q\,
	datad => \Unit1|U2|Mux27~4_combout\,
	combout => \Unit1|U2|Mux27~5_combout\);

-- Location: LCCOMB_X62_Y51_N30
\Unit1|U2|Mux27~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux27~6_combout\ = (\Unit0|U0|RFr2a_ctrl\(2) & (((\Unit0|U0|RFr2a_ctrl\(3)) # (\Unit1|U2|Mux27~3_combout\)))) # (!\Unit0|U0|RFr2a_ctrl\(2) & (\Unit1|U2|Mux27~5_combout\ & (!\Unit0|U0|RFr2a_ctrl\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr2a_ctrl\(2),
	datab => \Unit1|U2|Mux27~5_combout\,
	datac => \Unit0|U0|RFr2a_ctrl\(3),
	datad => \Unit1|U2|Mux27~3_combout\,
	combout => \Unit1|U2|Mux27~6_combout\);

-- Location: LCCOMB_X65_Y51_N10
\Unit1|U2|Mux26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux26~0_combout\ = (\Unit0|U0|RFr2a_ctrl\(3) & (((\Unit1|U2|tmp_rf[10][5]~q\) # (\Unit0|U0|RFr2a_ctrl\(2))))) # (!\Unit0|U0|RFr2a_ctrl\(3) & (\Unit1|U2|tmp_rf[2][5]~q\ & ((!\Unit0|U0|RFr2a_ctrl\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr2a_ctrl\(3),
	datab => \Unit1|U2|tmp_rf[2][5]~q\,
	datac => \Unit1|U2|tmp_rf[10][5]~q\,
	datad => \Unit0|U0|RFr2a_ctrl\(2),
	combout => \Unit1|U2|Mux26~0_combout\);

-- Location: LCCOMB_X65_Y52_N14
\Unit1|U2|Mux26~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux26~1_combout\ = (\Unit0|U0|RFr2a_ctrl\(2) & ((\Unit1|U2|Mux26~0_combout\ & ((\Unit1|U2|tmp_rf[14][5]~q\))) # (!\Unit1|U2|Mux26~0_combout\ & (\Unit1|U2|tmp_rf[6][5]~q\)))) # (!\Unit0|U0|RFr2a_ctrl\(2) & (((\Unit1|U2|Mux26~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr2a_ctrl\(2),
	datab => \Unit1|U2|tmp_rf[6][5]~q\,
	datac => \Unit1|U2|tmp_rf[14][5]~q\,
	datad => \Unit1|U2|Mux26~0_combout\,
	combout => \Unit1|U2|Mux26~1_combout\);

-- Location: LCCOMB_X66_Y51_N0
\Unit1|U2|Mux26~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux26~4_combout\ = (\Unit0|U0|RFr2a_ctrl\(3) & ((\Unit0|U0|RFr2a_ctrl\(2)) # ((\Unit1|U2|tmp_rf[8][5]~q\)))) # (!\Unit0|U0|RFr2a_ctrl\(3) & (!\Unit0|U0|RFr2a_ctrl\(2) & ((\Unit1|U2|tmp_rf[0][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr2a_ctrl\(3),
	datab => \Unit0|U0|RFr2a_ctrl\(2),
	datac => \Unit1|U2|tmp_rf[8][5]~q\,
	datad => \Unit1|U2|tmp_rf[0][5]~q\,
	combout => \Unit1|U2|Mux26~4_combout\);

-- Location: LCCOMB_X67_Y53_N8
\Unit1|U2|Mux26~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux26~5_combout\ = (\Unit1|U2|Mux26~4_combout\ & (((\Unit1|U2|tmp_rf[12][5]~q\)) # (!\Unit0|U0|RFr2a_ctrl\(2)))) # (!\Unit1|U2|Mux26~4_combout\ & (\Unit0|U0|RFr2a_ctrl\(2) & (\Unit1|U2|tmp_rf[4][5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|Mux26~4_combout\,
	datab => \Unit0|U0|RFr2a_ctrl\(2),
	datac => \Unit1|U2|tmp_rf[4][5]~q\,
	datad => \Unit1|U2|tmp_rf[12][5]~q\,
	combout => \Unit1|U2|Mux26~5_combout\);

-- Location: LCCOMB_X67_Y53_N12
\Unit1|U2|Mux26~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux26~7_combout\ = (\Unit0|U0|RFr2a_ctrl\(3) & (((\Unit0|U0|RFr2a_ctrl\(2))))) # (!\Unit0|U0|RFr2a_ctrl\(3) & ((\Unit0|U0|RFr2a_ctrl\(2) & ((\Unit1|U2|tmp_rf[7][5]~q\))) # (!\Unit0|U0|RFr2a_ctrl\(2) & (\Unit1|U2|tmp_rf[3][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[3][5]~q\,
	datab => \Unit0|U0|RFr2a_ctrl\(3),
	datac => \Unit1|U2|tmp_rf[7][5]~q\,
	datad => \Unit0|U0|RFr2a_ctrl\(2),
	combout => \Unit1|U2|Mux26~7_combout\);

-- Location: LCCOMB_X69_Y53_N14
\Unit1|U2|Mux25~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux25~7_combout\ = (\Unit0|U0|RFr2a_ctrl\(1) & (\Unit0|U0|RFr2a_ctrl\(0))) # (!\Unit0|U0|RFr2a_ctrl\(1) & ((\Unit0|U0|RFr2a_ctrl\(0) & (\Unit1|U2|tmp_rf[13][6]~q\)) # (!\Unit0|U0|RFr2a_ctrl\(0) & ((\Unit1|U2|tmp_rf[12][6]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr2a_ctrl\(1),
	datab => \Unit0|U0|RFr2a_ctrl\(0),
	datac => \Unit1|U2|tmp_rf[13][6]~q\,
	datad => \Unit1|U2|tmp_rf[12][6]~q\,
	combout => \Unit1|U2|Mux25~7_combout\);

-- Location: LCCOMB_X69_Y53_N28
\Unit1|U2|Mux25~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux25~8_combout\ = (\Unit1|U2|Mux25~7_combout\ & (((\Unit1|U2|tmp_rf[15][6]~q\) # (!\Unit0|U0|RFr2a_ctrl\(1))))) # (!\Unit1|U2|Mux25~7_combout\ & (\Unit1|U2|tmp_rf[14][6]~q\ & ((\Unit0|U0|RFr2a_ctrl\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[14][6]~q\,
	datab => \Unit1|U2|tmp_rf[15][6]~q\,
	datac => \Unit1|U2|Mux25~7_combout\,
	datad => \Unit0|U0|RFr2a_ctrl\(1),
	combout => \Unit1|U2|Mux25~8_combout\);

-- Location: LCCOMB_X68_Y50_N0
\Unit1|U2|Mux24~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux24~7_combout\ = (\Unit0|U0|RFr2a_ctrl\(2) & (((\Unit0|U0|RFr2a_ctrl\(3))))) # (!\Unit0|U0|RFr2a_ctrl\(2) & ((\Unit0|U0|RFr2a_ctrl\(3) & ((\Unit1|U2|tmp_rf[11][7]~q\))) # (!\Unit0|U0|RFr2a_ctrl\(3) & (\Unit1|U2|tmp_rf[3][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr2a_ctrl\(2),
	datab => \Unit1|U2|tmp_rf[3][7]~q\,
	datac => \Unit1|U2|tmp_rf[11][7]~q\,
	datad => \Unit0|U0|RFr2a_ctrl\(3),
	combout => \Unit1|U2|Mux24~7_combout\);

-- Location: LCCOMB_X66_Y49_N22
\Unit1|U2|Mux24~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux24~8_combout\ = (\Unit0|U0|RFr2a_ctrl\(2) & ((\Unit1|U2|Mux24~7_combout\ & ((\Unit1|U2|tmp_rf[15][7]~q\))) # (!\Unit1|U2|Mux24~7_combout\ & (\Unit1|U2|tmp_rf[7][7]~q\)))) # (!\Unit0|U0|RFr2a_ctrl\(2) & (((\Unit1|U2|Mux24~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr2a_ctrl\(2),
	datab => \Unit1|U2|tmp_rf[7][7]~q\,
	datac => \Unit1|U2|tmp_rf[15][7]~q\,
	datad => \Unit1|U2|Mux24~7_combout\,
	combout => \Unit1|U2|Mux24~8_combout\);

-- Location: LCCOMB_X68_Y50_N4
\Unit1|U2|Mux23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux23~0_combout\ = (\Unit0|U0|RFr2a_ctrl\(1) & (((\Unit0|U0|RFr2a_ctrl\(0))))) # (!\Unit0|U0|RFr2a_ctrl\(1) & ((\Unit0|U0|RFr2a_ctrl\(0) & ((\Unit1|U2|tmp_rf[9][8]~q\))) # (!\Unit0|U0|RFr2a_ctrl\(0) & (\Unit1|U2|tmp_rf[8][8]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr2a_ctrl\(1),
	datab => \Unit1|U2|tmp_rf[8][8]~q\,
	datac => \Unit1|U2|tmp_rf[9][8]~q\,
	datad => \Unit0|U0|RFr2a_ctrl\(0),
	combout => \Unit1|U2|Mux23~0_combout\);

-- Location: LCCOMB_X68_Y50_N10
\Unit1|U2|Mux23~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux23~1_combout\ = (\Unit0|U0|RFr2a_ctrl\(1) & ((\Unit1|U2|Mux23~0_combout\ & (\Unit1|U2|tmp_rf[11][8]~q\)) # (!\Unit1|U2|Mux23~0_combout\ & ((\Unit1|U2|tmp_rf[10][8]~q\))))) # (!\Unit0|U0|RFr2a_ctrl\(1) & (\Unit1|U2|Mux23~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr2a_ctrl\(1),
	datab => \Unit1|U2|Mux23~0_combout\,
	datac => \Unit1|U2|tmp_rf[11][8]~q\,
	datad => \Unit1|U2|tmp_rf[10][8]~q\,
	combout => \Unit1|U2|Mux23~1_combout\);

-- Location: LCCOMB_X68_Y53_N18
\Unit1|U2|Mux23~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux23~2_combout\ = (\Unit0|U0|RFr2a_ctrl\(0) & (\Unit0|U0|RFr2a_ctrl\(1))) # (!\Unit0|U0|RFr2a_ctrl\(0) & ((\Unit0|U0|RFr2a_ctrl\(1) & (\Unit1|U2|tmp_rf[6][8]~q\)) # (!\Unit0|U0|RFr2a_ctrl\(1) & ((\Unit1|U2|tmp_rf[4][8]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr2a_ctrl\(0),
	datab => \Unit0|U0|RFr2a_ctrl\(1),
	datac => \Unit1|U2|tmp_rf[6][8]~q\,
	datad => \Unit1|U2|tmp_rf[4][8]~q\,
	combout => \Unit1|U2|Mux23~2_combout\);

-- Location: LCCOMB_X69_Y52_N18
\Unit1|U2|Mux23~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux23~3_combout\ = (\Unit0|U0|RFr2a_ctrl\(0) & ((\Unit1|U2|Mux23~2_combout\ & ((\Unit1|U2|tmp_rf[7][8]~q\))) # (!\Unit1|U2|Mux23~2_combout\ & (\Unit1|U2|tmp_rf[5][8]~q\)))) # (!\Unit0|U0|RFr2a_ctrl\(0) & (((\Unit1|U2|Mux23~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[5][8]~q\,
	datab => \Unit1|U2|tmp_rf[7][8]~q\,
	datac => \Unit0|U0|RFr2a_ctrl\(0),
	datad => \Unit1|U2|Mux23~2_combout\,
	combout => \Unit1|U2|Mux23~3_combout\);

-- Location: LCCOMB_X67_Y52_N22
\Unit1|U2|Mux22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux22~0_combout\ = (\Unit0|U0|RFr2a_ctrl\(3) & (((\Unit1|U2|tmp_rf[10][9]~q\) # (\Unit0|U0|RFr2a_ctrl\(2))))) # (!\Unit0|U0|RFr2a_ctrl\(3) & (\Unit1|U2|tmp_rf[2][9]~q\ & ((!\Unit0|U0|RFr2a_ctrl\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[2][9]~q\,
	datab => \Unit1|U2|tmp_rf[10][9]~q\,
	datac => \Unit0|U0|RFr2a_ctrl\(3),
	datad => \Unit0|U0|RFr2a_ctrl\(2),
	combout => \Unit1|U2|Mux22~0_combout\);

-- Location: LCCOMB_X67_Y54_N24
\Unit1|U2|Mux22~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux22~1_combout\ = (\Unit0|U0|RFr2a_ctrl\(2) & ((\Unit1|U2|Mux22~0_combout\ & ((\Unit1|U2|tmp_rf[14][9]~q\))) # (!\Unit1|U2|Mux22~0_combout\ & (\Unit1|U2|tmp_rf[6][9]~q\)))) # (!\Unit0|U0|RFr2a_ctrl\(2) & (((\Unit1|U2|Mux22~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr2a_ctrl\(2),
	datab => \Unit1|U2|tmp_rf[6][9]~q\,
	datac => \Unit1|U2|tmp_rf[14][9]~q\,
	datad => \Unit1|U2|Mux22~0_combout\,
	combout => \Unit1|U2|Mux22~1_combout\);

-- Location: LCCOMB_X66_Y51_N4
\Unit1|U2|Mux22~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux22~4_combout\ = (\Unit0|U0|RFr2a_ctrl\(2) & (((\Unit0|U0|RFr2a_ctrl\(3))))) # (!\Unit0|U0|RFr2a_ctrl\(2) & ((\Unit0|U0|RFr2a_ctrl\(3) & (\Unit1|U2|tmp_rf[8][9]~q\)) # (!\Unit0|U0|RFr2a_ctrl\(3) & ((\Unit1|U2|tmp_rf[0][9]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[8][9]~q\,
	datab => \Unit0|U0|RFr2a_ctrl\(2),
	datac => \Unit0|U0|RFr2a_ctrl\(3),
	datad => \Unit1|U2|tmp_rf[0][9]~q\,
	combout => \Unit1|U2|Mux22~4_combout\);

-- Location: LCCOMB_X66_Y53_N20
\Unit1|U2|Mux21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux21~0_combout\ = (\Unit0|U0|RFr2a_ctrl\(0) & ((\Unit0|U0|RFr2a_ctrl\(1)) # ((\Unit1|U2|tmp_rf[5][10]~q\)))) # (!\Unit0|U0|RFr2a_ctrl\(0) & (!\Unit0|U0|RFr2a_ctrl\(1) & ((\Unit1|U2|tmp_rf[4][10]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr2a_ctrl\(0),
	datab => \Unit0|U0|RFr2a_ctrl\(1),
	datac => \Unit1|U2|tmp_rf[5][10]~q\,
	datad => \Unit1|U2|tmp_rf[4][10]~q\,
	combout => \Unit1|U2|Mux21~0_combout\);

-- Location: LCCOMB_X67_Y53_N26
\Unit1|U2|Mux21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux21~1_combout\ = (\Unit1|U2|Mux21~0_combout\ & (((\Unit1|U2|tmp_rf[7][10]~q\)) # (!\Unit0|U0|RFr2a_ctrl\(1)))) # (!\Unit1|U2|Mux21~0_combout\ & (\Unit0|U0|RFr2a_ctrl\(1) & ((\Unit1|U2|tmp_rf[6][10]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|Mux21~0_combout\,
	datab => \Unit0|U0|RFr2a_ctrl\(1),
	datac => \Unit1|U2|tmp_rf[7][10]~q\,
	datad => \Unit1|U2|tmp_rf[6][10]~q\,
	combout => \Unit1|U2|Mux21~1_combout\);

-- Location: LCCOMB_X63_Y53_N14
\Unit1|U2|Mux21~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux21~2_combout\ = (\Unit0|U0|RFr2a_ctrl\(0) & (((\Unit0|U0|RFr2a_ctrl\(1))))) # (!\Unit0|U0|RFr2a_ctrl\(0) & ((\Unit0|U0|RFr2a_ctrl\(1) & ((\Unit1|U2|tmp_rf[10][10]~q\))) # (!\Unit0|U0|RFr2a_ctrl\(1) & (\Unit1|U2|tmp_rf[8][10]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr2a_ctrl\(0),
	datab => \Unit1|U2|tmp_rf[8][10]~q\,
	datac => \Unit1|U2|tmp_rf[10][10]~q\,
	datad => \Unit0|U0|RFr2a_ctrl\(1),
	combout => \Unit1|U2|Mux21~2_combout\);

-- Location: LCCOMB_X70_Y53_N30
\Unit1|U2|Mux21~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux21~3_combout\ = (\Unit0|U0|RFr2a_ctrl\(0) & ((\Unit1|U2|Mux21~2_combout\ & (\Unit1|U2|tmp_rf[11][10]~q\)) # (!\Unit1|U2|Mux21~2_combout\ & ((\Unit1|U2|tmp_rf[9][10]~q\))))) # (!\Unit0|U0|RFr2a_ctrl\(0) & (((\Unit1|U2|Mux21~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[11][10]~q\,
	datab => \Unit0|U0|RFr2a_ctrl\(0),
	datac => \Unit1|U2|tmp_rf[9][10]~q\,
	datad => \Unit1|U2|Mux21~2_combout\,
	combout => \Unit1|U2|Mux21~3_combout\);

-- Location: LCCOMB_X68_Y53_N28
\Unit1|U2|Mux20~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux20~2_combout\ = (\Unit0|U0|RFr2a_ctrl\(2) & ((\Unit1|U2|tmp_rf[6][11]~q\) # ((\Unit0|U0|RFr2a_ctrl\(3))))) # (!\Unit0|U0|RFr2a_ctrl\(2) & (((!\Unit0|U0|RFr2a_ctrl\(3) & \Unit1|U2|tmp_rf[2][11]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr2a_ctrl\(2),
	datab => \Unit1|U2|tmp_rf[6][11]~q\,
	datac => \Unit0|U0|RFr2a_ctrl\(3),
	datad => \Unit1|U2|tmp_rf[2][11]~q\,
	combout => \Unit1|U2|Mux20~2_combout\);

-- Location: LCCOMB_X67_Y49_N10
\Unit1|U2|Mux20~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux20~7_combout\ = (\Unit0|U0|RFr2a_ctrl\(2) & (((\Unit0|U0|RFr2a_ctrl\(3))))) # (!\Unit0|U0|RFr2a_ctrl\(2) & ((\Unit0|U0|RFr2a_ctrl\(3) & ((\Unit1|U2|tmp_rf[11][11]~q\))) # (!\Unit0|U0|RFr2a_ctrl\(3) & (\Unit1|U2|tmp_rf[3][11]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[3][11]~q\,
	datab => \Unit0|U0|RFr2a_ctrl\(2),
	datac => \Unit1|U2|tmp_rf[11][11]~q\,
	datad => \Unit0|U0|RFr2a_ctrl\(3),
	combout => \Unit1|U2|Mux20~7_combout\);

-- Location: LCCOMB_X66_Y51_N30
\Unit1|U2|Mux18~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux18~4_combout\ = (\Unit0|U0|RFr2a_ctrl\(3) & ((\Unit0|U0|RFr2a_ctrl\(2)) # ((\Unit1|U2|tmp_rf[8][13]~q\)))) # (!\Unit0|U0|RFr2a_ctrl\(3) & (!\Unit0|U0|RFr2a_ctrl\(2) & (\Unit1|U2|tmp_rf[0][13]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr2a_ctrl\(3),
	datab => \Unit0|U0|RFr2a_ctrl\(2),
	datac => \Unit1|U2|tmp_rf[0][13]~q\,
	datad => \Unit1|U2|tmp_rf[8][13]~q\,
	combout => \Unit1|U2|Mux18~4_combout\);

-- Location: LCCOMB_X62_Y51_N22
\Unit1|U2|Mux18~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux18~7_combout\ = (\Unit0|U0|RFr2a_ctrl\(2) & ((\Unit0|U0|RFr2a_ctrl\(3)) # ((\Unit1|U2|tmp_rf[7][13]~q\)))) # (!\Unit0|U0|RFr2a_ctrl\(2) & (!\Unit0|U0|RFr2a_ctrl\(3) & ((\Unit1|U2|tmp_rf[3][13]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr2a_ctrl\(2),
	datab => \Unit0|U0|RFr2a_ctrl\(3),
	datac => \Unit1|U2|tmp_rf[7][13]~q\,
	datad => \Unit1|U2|tmp_rf[3][13]~q\,
	combout => \Unit1|U2|Mux18~7_combout\);

-- Location: LCCOMB_X67_Y49_N6
\Unit1|U2|Mux18~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux18~8_combout\ = (\Unit0|U0|RFr2a_ctrl\(3) & ((\Unit1|U2|Mux18~7_combout\ & (\Unit1|U2|tmp_rf[15][13]~q\)) # (!\Unit1|U2|Mux18~7_combout\ & ((\Unit1|U2|tmp_rf[11][13]~q\))))) # (!\Unit0|U0|RFr2a_ctrl\(3) & (((\Unit1|U2|Mux18~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[15][13]~q\,
	datab => \Unit0|U0|RFr2a_ctrl\(3),
	datac => \Unit1|U2|tmp_rf[11][13]~q\,
	datad => \Unit1|U2|Mux18~7_combout\,
	combout => \Unit1|U2|Mux18~8_combout\);

-- Location: LCCOMB_X69_Y53_N6
\Unit1|U2|Mux17~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux17~4_combout\ = (\Unit0|U0|RFr2a_ctrl\(0) & (((\Unit0|U0|RFr2a_ctrl\(1))))) # (!\Unit0|U0|RFr2a_ctrl\(0) & ((\Unit0|U0|RFr2a_ctrl\(1) & (\Unit1|U2|tmp_rf[2][14]~q\)) # (!\Unit0|U0|RFr2a_ctrl\(1) & ((\Unit1|U2|tmp_rf[0][14]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr2a_ctrl\(0),
	datab => \Unit1|U2|tmp_rf[2][14]~q\,
	datac => \Unit1|U2|tmp_rf[0][14]~q\,
	datad => \Unit0|U0|RFr2a_ctrl\(1),
	combout => \Unit1|U2|Mux17~4_combout\);

-- Location: LCCOMB_X68_Y53_N16
\Unit1|U2|Mux17~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux17~5_combout\ = (\Unit0|U0|RFr2a_ctrl\(0) & ((\Unit1|U2|Mux17~4_combout\ & (\Unit1|U2|tmp_rf[3][14]~q\)) # (!\Unit1|U2|Mux17~4_combout\ & ((\Unit1|U2|tmp_rf[1][14]~q\))))) # (!\Unit0|U0|RFr2a_ctrl\(0) & (((\Unit1|U2|Mux17~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr2a_ctrl\(0),
	datab => \Unit1|U2|tmp_rf[3][14]~q\,
	datac => \Unit1|U2|tmp_rf[1][14]~q\,
	datad => \Unit1|U2|Mux17~4_combout\,
	combout => \Unit1|U2|Mux17~5_combout\);

-- Location: LCCOMB_X69_Y53_N22
\Unit1|U2|Mux17~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux17~7_combout\ = (\Unit0|U0|RFr2a_ctrl\(0) & (((\Unit1|U2|tmp_rf[13][14]~q\) # (\Unit0|U0|RFr2a_ctrl\(1))))) # (!\Unit0|U0|RFr2a_ctrl\(0) & (\Unit1|U2|tmp_rf[12][14]~q\ & ((!\Unit0|U0|RFr2a_ctrl\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[12][14]~q\,
	datab => \Unit0|U0|RFr2a_ctrl\(0),
	datac => \Unit1|U2|tmp_rf[13][14]~q\,
	datad => \Unit0|U0|RFr2a_ctrl\(1),
	combout => \Unit1|U2|Mux17~7_combout\);

-- Location: LCCOMB_X69_Y51_N28
\Unit1|U2|Mux17~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux17~8_combout\ = (\Unit1|U2|Mux17~7_combout\ & (((\Unit1|U2|tmp_rf[15][14]~q\)) # (!\Unit0|U0|RFr2a_ctrl\(1)))) # (!\Unit1|U2|Mux17~7_combout\ & (\Unit0|U0|RFr2a_ctrl\(1) & (\Unit1|U2|tmp_rf[14][14]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|Mux17~7_combout\,
	datab => \Unit0|U0|RFr2a_ctrl\(1),
	datac => \Unit1|U2|tmp_rf[14][14]~q\,
	datad => \Unit1|U2|tmp_rf[15][14]~q\,
	combout => \Unit1|U2|Mux17~8_combout\);

-- Location: LCCOMB_X67_Y53_N6
\Unit1|U2|Mux16~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux16~4_combout\ = (\Unit0|U0|RFr2a_ctrl\(2) & ((\Unit1|U2|tmp_rf[4][15]~q\) # ((\Unit0|U0|RFr2a_ctrl\(3))))) # (!\Unit0|U0|RFr2a_ctrl\(2) & (((\Unit1|U2|tmp_rf[0][15]~q\ & !\Unit0|U0|RFr2a_ctrl\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr2a_ctrl\(2),
	datab => \Unit1|U2|tmp_rf[4][15]~q\,
	datac => \Unit1|U2|tmp_rf[0][15]~q\,
	datad => \Unit0|U0|RFr2a_ctrl\(3),
	combout => \Unit1|U2|Mux16~4_combout\);

-- Location: LCCOMB_X68_Y51_N18
\Unit1|U2|Mux16~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux16~5_combout\ = (\Unit0|U0|RFr2a_ctrl\(3) & ((\Unit1|U2|Mux16~4_combout\ & (\Unit1|U2|tmp_rf[12][15]~q\)) # (!\Unit1|U2|Mux16~4_combout\ & ((\Unit1|U2|tmp_rf[8][15]~q\))))) # (!\Unit0|U0|RFr2a_ctrl\(3) & (((\Unit1|U2|Mux16~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr2a_ctrl\(3),
	datab => \Unit1|U2|tmp_rf[12][15]~q\,
	datac => \Unit1|U2|tmp_rf[8][15]~q\,
	datad => \Unit1|U2|Mux16~4_combout\,
	combout => \Unit1|U2|Mux16~5_combout\);

-- Location: LCCOMB_X63_Y46_N22
\Unit0|U0|Mux1~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|Mux1~13_combout\ = (\Unit0|U2|IRout\(15) & (\Unit0|U2|IRout\(14) & (\Unit0|U2|IRout\(13) & \Unit0|U2|IRout\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U2|IRout\(15),
	datab => \Unit0|U2|IRout\(14),
	datac => \Unit0|U2|IRout\(13),
	datad => \Unit0|U2|IRout\(12),
	combout => \Unit0|U0|Mux1~13_combout\);

-- Location: LCCOMB_X63_Y46_N18
\Unit0|U0|state.S_HALT~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|state.S_HALT~0_combout\ = (\Unit0|U0|state.S_HALT~q\) # ((\Unit0|U0|state.S_DECODE_INST~q\ & \Unit0|U0|Mux1~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|state.S_DECODE_INST~q\,
	datac => \Unit0|U0|state.S_HALT~q\,
	datad => \Unit0|U0|Mux1~13_combout\,
	combout => \Unit0|U0|state.S_HALT~0_combout\);

-- Location: LCCOMB_X63_Y53_N12
\Unit1|U3|mult_result[11]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|mult_result\(11) = (GLOBAL(\Unit1|U3|Mux1~0clkctrl_outclk\) & ((\Unit1|U3|Mult0|auto_generated|mac_out2~DATAOUT11\))) # (!GLOBAL(\Unit1|U3|Mux1~0clkctrl_outclk\) & (\Unit1|U3|mult_result\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U3|mult_result\(11),
	datac => \Unit1|U3|Mult0|auto_generated|mac_out2~DATAOUT11\,
	datad => \Unit1|U3|Mux1~0clkctrl_outclk\,
	combout => \Unit1|U3|mult_result\(11));

-- Location: LCCOMB_X67_Y50_N14
\Unit1|U3|mult_result[14]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|mult_result\(14) = (GLOBAL(\Unit1|U3|Mux1~0clkctrl_outclk\) & ((\Unit1|U3|Mult0|auto_generated|mac_out2~DATAOUT14\))) # (!GLOBAL(\Unit1|U3|Mux1~0clkctrl_outclk\) & (\Unit1|U3|mult_result\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Unit1|U3|mult_result\(14),
	datac => \Unit1|U3|Mult0|auto_generated|mac_out2~DATAOUT14\,
	datad => \Unit1|U3|Mux1~0clkctrl_outclk\,
	combout => \Unit1|U3|mult_result\(14));

-- Location: LCCOMB_X63_Y46_N6
\Unit0|U2|IRout[15]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U2|IRout\(15) = (GLOBAL(\Unit0|U0|IRld_ctrl~clkctrl_outclk\) & ((\Unit2|altsyncram_component|auto_generated|q_a\(15)))) # (!GLOBAL(\Unit0|U0|IRld_ctrl~clkctrl_outclk\) & (\Unit0|U2|IRout\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U2|IRout\(15),
	datac => \Unit0|U0|IRld_ctrl~clkctrl_outclk\,
	datad => \Unit2|altsyncram_component|auto_generated|q_a\(15),
	combout => \Unit0|U2|IRout\(15));

-- Location: IOOBUF_X27_Y0_N9
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

-- Location: IOOBUF_X98_Y0_N16
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

-- Location: IOOBUF_X38_Y0_N9
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

-- Location: IOOBUF_X23_Y0_N23
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

-- Location: IOOBUF_X115_Y23_N9
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

-- Location: IOOBUF_X33_Y0_N2
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

-- Location: IOOBUF_X89_Y0_N16
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

-- Location: IOOBUF_X102_Y0_N23
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

-- Location: IOOBUF_X0_Y30_N2
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

-- Location: IOOBUF_X0_Y44_N2
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

-- Location: IOOBUF_X0_Y21_N16
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

-- Location: IOOBUF_X42_Y0_N23
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

-- Location: IOOBUF_X89_Y0_N23
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

-- Location: IOOBUF_X0_Y24_N2
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

-- Location: IOOBUF_X115_Y15_N2
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

-- Location: IOOBUF_X0_Y29_N23
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

-- Location: IOOBUF_X49_Y0_N9
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

-- Location: IOOBUF_X0_Y42_N9
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

-- Location: IOOBUF_X7_Y73_N16
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

-- Location: IOOBUF_X115_Y18_N2
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

-- Location: IOOBUF_X0_Y28_N23
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

-- Location: IOOBUF_X0_Y28_N16
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

-- Location: IOOBUF_X29_Y0_N16
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

-- Location: IOOBUF_X83_Y73_N23
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

-- Location: IOOBUF_X31_Y0_N2
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

-- Location: IOOBUF_X94_Y0_N2
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

-- Location: IOOBUF_X0_Y32_N16
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

-- Location: IOOBUF_X5_Y73_N23
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

-- Location: IOOBUF_X115_Y6_N16
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

-- Location: IOOBUF_X115_Y13_N2
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

-- Location: IOOBUF_X85_Y0_N16
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

-- Location: IOOBUF_X65_Y0_N9
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

-- Location: IOOBUF_X52_Y0_N9
\D_mdin_bus[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U3|alu_tmp\(0),
	devoe => ww_devoe,
	o => \D_mdin_bus[0]~output_o\);

-- Location: IOOBUF_X52_Y0_N16
\D_mdin_bus[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U3|alu_tmp\(1),
	devoe => ww_devoe,
	o => \D_mdin_bus[1]~output_o\);

-- Location: IOOBUF_X49_Y73_N16
\D_mdin_bus[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U3|alu_tmp\(2),
	devoe => ww_devoe,
	o => \D_mdin_bus[2]~output_o\);

-- Location: IOOBUF_X52_Y73_N9
\D_mdin_bus[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U3|alu_tmp\(3),
	devoe => ww_devoe,
	o => \D_mdin_bus[3]~output_o\);

-- Location: IOOBUF_X0_Y50_N16
\D_mdin_bus[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U3|alu_tmp\(4),
	devoe => ww_devoe,
	o => \D_mdin_bus[4]~output_o\);

-- Location: IOOBUF_X58_Y73_N16
\D_mdin_bus[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U3|alu_tmp\(5),
	devoe => ww_devoe,
	o => \D_mdin_bus[5]~output_o\);

-- Location: IOOBUF_X56_Y0_N23
\D_mdin_bus[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U3|alu_tmp\(6),
	devoe => ww_devoe,
	o => \D_mdin_bus[6]~output_o\);

-- Location: IOOBUF_X0_Y44_N16
\D_mdin_bus[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U3|alu_tmp\(7),
	devoe => ww_devoe,
	o => \D_mdin_bus[7]~output_o\);

-- Location: IOOBUF_X0_Y47_N16
\D_mdin_bus[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U3|alu_tmp\(8),
	devoe => ww_devoe,
	o => \D_mdin_bus[8]~output_o\);

-- Location: IOOBUF_X0_Y44_N9
\D_mdin_bus[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U3|alu_tmp\(9),
	devoe => ww_devoe,
	o => \D_mdin_bus[9]~output_o\);

-- Location: IOOBUF_X60_Y0_N2
\D_mdin_bus[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U3|alu_tmp\(10),
	devoe => ww_devoe,
	o => \D_mdin_bus[10]~output_o\);

-- Location: IOOBUF_X45_Y73_N2
\D_mdin_bus[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U3|alu_tmp\(11),
	devoe => ww_devoe,
	o => \D_mdin_bus[11]~output_o\);

-- Location: IOOBUF_X54_Y73_N2
\D_mdin_bus[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U3|alu_tmp\(12),
	devoe => ww_devoe,
	o => \D_mdin_bus[12]~output_o\);

-- Location: IOOBUF_X49_Y73_N23
\D_mdin_bus[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U3|alu_tmp\(13),
	devoe => ww_devoe,
	o => \D_mdin_bus[13]~output_o\);

-- Location: IOOBUF_X65_Y0_N23
\D_mdin_bus[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U3|alu_tmp\(14),
	devoe => ww_devoe,
	o => \D_mdin_bus[14]~output_o\);

-- Location: IOOBUF_X56_Y0_N9
\D_mdin_bus[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U3|alu_tmp\(15),
	devoe => ww_devoe,
	o => \D_mdin_bus[15]~output_o\);

-- Location: IOOBUF_X29_Y0_N23
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

-- Location: IOOBUF_X100_Y0_N2
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

-- Location: IOOBUF_X38_Y0_N2
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

-- Location: IOOBUF_X20_Y0_N23
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

-- Location: IOOBUF_X115_Y21_N16
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

-- Location: IOOBUF_X35_Y0_N16
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

-- Location: IOOBUF_X87_Y0_N23
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

-- Location: IOOBUF_X96_Y0_N23
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

-- Location: IOOBUF_X0_Y29_N16
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

-- Location: IOOBUF_X0_Y44_N23
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

-- Location: IOOBUF_X0_Y23_N23
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

-- Location: IOOBUF_X47_Y0_N9
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

-- Location: IOOBUF_X89_Y0_N9
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

-- Location: IOOBUF_X0_Y24_N16
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

-- Location: IOOBUF_X115_Y16_N9
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

-- Location: IOOBUF_X0_Y27_N23
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

-- Location: IOOBUF_X18_Y73_N23
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

-- Location: IOOBUF_X31_Y73_N9
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

-- Location: IOOBUF_X60_Y0_N9
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

-- Location: IOOBUF_X87_Y73_N9
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

-- Location: IOOBUF_X60_Y0_N23
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

-- Location: IOOBUF_X52_Y73_N23
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

-- Location: IOOBUF_X47_Y73_N16
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

-- Location: IOOBUF_X60_Y73_N2
\D_immd_bus[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit0|U2|IRout\(8),
	devoe => ww_devoe,
	o => \D_immd_bus[8]~output_o\);

-- Location: IOOBUF_X0_Y49_N2
\D_immd_bus[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit0|U2|IRout\(9),
	devoe => ww_devoe,
	o => \D_immd_bus[9]~output_o\);

-- Location: IOOBUF_X52_Y73_N2
\D_immd_bus[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit0|U2|IRout\(10),
	devoe => ww_devoe,
	o => \D_immd_bus[10]~output_o\);

-- Location: IOOBUF_X60_Y73_N16
\D_immd_bus[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit0|U2|IRout\(11),
	devoe => ww_devoe,
	o => \D_immd_bus[11]~output_o\);

-- Location: IOOBUF_X1_Y73_N2
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

-- Location: IOOBUF_X5_Y0_N23
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

-- Location: IOOBUF_X105_Y0_N2
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

-- Location: IOOBUF_X109_Y0_N2
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

-- Location: IOOBUF_X67_Y73_N2
\D_rfout_bus[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|RFr1[0]~_Duplicate_1_q\,
	devoe => ww_devoe,
	o => \D_rfout_bus[0]~output_o\);

-- Location: IOOBUF_X72_Y73_N23
\D_rfout_bus[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|RFr1[1]~_Duplicate_1_q\,
	devoe => ww_devoe,
	o => \D_rfout_bus[1]~output_o\);

-- Location: IOOBUF_X58_Y73_N9
\D_rfout_bus[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|RFr1[2]~_Duplicate_1_q\,
	devoe => ww_devoe,
	o => \D_rfout_bus[2]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\D_rfout_bus[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|RFr1[3]~_Duplicate_1_q\,
	devoe => ww_devoe,
	o => \D_rfout_bus[3]~output_o\);

-- Location: IOOBUF_X67_Y0_N2
\D_rfout_bus[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|RFr1[4]~_Duplicate_1_q\,
	devoe => ww_devoe,
	o => \D_rfout_bus[4]~output_o\);

-- Location: IOOBUF_X0_Y48_N2
\D_rfout_bus[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|RFr1[5]~_Duplicate_1_q\,
	devoe => ww_devoe,
	o => \D_rfout_bus[5]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\D_rfout_bus[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|RFr1[6]~_Duplicate_1_q\,
	devoe => ww_devoe,
	o => \D_rfout_bus[6]~output_o\);

-- Location: IOOBUF_X115_Y49_N2
\D_rfout_bus[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|RFr1[7]~_Duplicate_1_q\,
	devoe => ww_devoe,
	o => \D_rfout_bus[7]~output_o\);

-- Location: IOOBUF_X33_Y73_N2
\D_rfout_bus[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|RFr1[8]~_Duplicate_1_q\,
	devoe => ww_devoe,
	o => \D_rfout_bus[8]~output_o\);

-- Location: IOOBUF_X115_Y48_N9
\D_rfout_bus[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|RFr1[9]~_Duplicate_1_q\,
	devoe => ww_devoe,
	o => \D_rfout_bus[9]~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\D_rfout_bus[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|RFr1[10]~_Duplicate_1_q\,
	devoe => ww_devoe,
	o => \D_rfout_bus[10]~output_o\);

-- Location: IOOBUF_X115_Y65_N16
\D_rfout_bus[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|RFr1[11]~_Duplicate_1_q\,
	devoe => ww_devoe,
	o => \D_rfout_bus[11]~output_o\);

-- Location: IOOBUF_X74_Y0_N2
\D_rfout_bus[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|RFr1[12]~_Duplicate_1_q\,
	devoe => ww_devoe,
	o => \D_rfout_bus[12]~output_o\);

-- Location: IOOBUF_X115_Y58_N16
\D_rfout_bus[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|RFr1[13]~_Duplicate_1_q\,
	devoe => ww_devoe,
	o => \D_rfout_bus[13]~output_o\);

-- Location: IOOBUF_X115_Y40_N9
\D_rfout_bus[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|RFr1[14]~_Duplicate_1_q\,
	devoe => ww_devoe,
	o => \D_rfout_bus[14]~output_o\);

-- Location: IOOBUF_X115_Y49_N9
\D_rfout_bus[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|RFr1[15]~_Duplicate_1_q\,
	devoe => ww_devoe,
	o => \D_rfout_bus[15]~output_o\);

-- Location: IOOBUF_X49_Y0_N23
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

-- Location: IOOBUF_X0_Y42_N2
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

-- Location: IOOBUF_X11_Y73_N9
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

-- Location: IOOBUF_X115_Y17_N2
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

-- Location: IOOBUF_X0_Y26_N16
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

-- Location: IOOBUF_X0_Y25_N23
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

-- Location: IOOBUF_X27_Y0_N23
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

-- Location: IOOBUF_X83_Y73_N2
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

-- Location: IOOBUF_X31_Y0_N9
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

-- Location: IOOBUF_X96_Y0_N9
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

-- Location: IOOBUF_X0_Y32_N23
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

-- Location: IOOBUF_X3_Y73_N9
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

-- Location: IOOBUF_X47_Y0_N2
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

-- Location: IOOBUF_X87_Y0_N16
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

-- Location: IOOBUF_X115_Y48_N2
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

-- Location: IOOBUF_X67_Y73_N9
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

-- Location: IOOBUF_X60_Y73_N9
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

-- Location: IOOBUF_X65_Y73_N16
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

-- Location: IOOBUF_X69_Y73_N2
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

-- Location: IOOBUF_X67_Y73_N16
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

-- Location: IOOBUF_X69_Y73_N23
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

-- Location: IOOBUF_X115_Y52_N2
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

-- Location: IOOBUF_X62_Y0_N16
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

-- Location: IOOBUF_X62_Y73_N23
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

-- Location: IOOBUF_X115_Y24_N9
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

-- Location: IOOBUF_X72_Y73_N16
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

-- Location: IOOBUF_X115_Y46_N2
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

-- Location: IOOBUF_X115_Y46_N9
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

-- Location: IOOBUF_X115_Y27_N9
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

-- Location: IOOBUF_X115_Y44_N9
\D_ALUs_s[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit0|U0|ALUs_ctrl\(2),
	devoe => ww_devoe,
	o => \D_ALUs_s[2]~output_o\);

-- Location: IOOBUF_X62_Y73_N16
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

-- Location: IOOBUF_X65_Y73_N9
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

-- Location: IOOBUF_X49_Y0_N2
\D_PCld_s~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U3|ALUz~combout\,
	devoe => ww_devoe,
	o => \D_PCld_s~output_o\);

-- Location: IOOBUF_X115_Y45_N16
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

-- Location: IOOBUF_X60_Y73_N23
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

-- Location: IOOBUF_X31_Y73_N2
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

-- Location: IOOBUF_X23_Y0_N16
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

-- Location: IOOBUF_X0_Y46_N16
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

-- Location: IOOBUF_X85_Y73_N9
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

-- Location: IOOBUF_X49_Y0_N16
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

-- Location: IOOBUF_X79_Y0_N23
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

-- Location: IOOBUF_X0_Y35_N2
\D_cur_state[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit0|U0|cur_state\(4),
	devoe => ww_devoe,
	o => \D_cur_state[4]~output_o\);

-- Location: IOOBUF_X83_Y0_N2
\D_cur_state[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit0|U0|cur_state\(5),
	devoe => ww_devoe,
	o => \D_cur_state[5]~output_o\);

-- Location: IOOBUF_X54_Y0_N16
\D_cur_state[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit0|U0|cur_state\(6),
	devoe => ww_devoe,
	o => \D_cur_state[6]~output_o\);

-- Location: IOOBUF_X54_Y0_N23
\D_cur_state[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit0|U0|cur_state\(7),
	devoe => ww_devoe,
	o => \D_cur_state[7]~output_o\);

-- Location: IOOBUF_X58_Y73_N2
\D_big_addr~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit0|U0|big_addr~q\,
	devoe => ww_devoe,
	o => \D_big_addr~output_o\);

-- Location: IOOBUF_X0_Y33_N16
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

-- Location: IOOBUF_X0_Y24_N9
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

-- Location: IOOBUF_X54_Y73_N9
\D_rf0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[0][0]~q\,
	devoe => ww_devoe,
	o => \D_rf0[0]~output_o\);

-- Location: IOOBUF_X0_Y35_N9
\D_rf0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[0][1]~q\,
	devoe => ww_devoe,
	o => \D_rf0[1]~output_o\);

-- Location: IOOBUF_X87_Y73_N2
\D_rf0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[0][2]~q\,
	devoe => ww_devoe,
	o => \D_rf0[2]~output_o\);

-- Location: IOOBUF_X79_Y0_N16
\D_rf0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[0][3]~q\,
	devoe => ww_devoe,
	o => \D_rf0[3]~output_o\);

-- Location: IOOBUF_X65_Y73_N23
\D_rf0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[0][4]~q\,
	devoe => ww_devoe,
	o => \D_rf0[4]~output_o\);

-- Location: IOOBUF_X109_Y73_N9
\D_rf0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[0][5]~q\,
	devoe => ww_devoe,
	o => \D_rf0[5]~output_o\);

-- Location: IOOBUF_X45_Y73_N9
\D_rf0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[0][6]~q\,
	devoe => ww_devoe,
	o => \D_rf0[6]~output_o\);

-- Location: IOOBUF_X72_Y73_N9
\D_rf0[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[0][7]~q\,
	devoe => ww_devoe,
	o => \D_rf0[7]~output_o\);

-- Location: IOOBUF_X115_Y62_N9
\D_rf0[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[0][8]~q\,
	devoe => ww_devoe,
	o => \D_rf0[8]~output_o\);

-- Location: IOOBUF_X115_Y29_N9
\D_rf0[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[0][9]~q\,
	devoe => ww_devoe,
	o => \D_rf0[9]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\D_rf0[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[0][10]~q\,
	devoe => ww_devoe,
	o => \D_rf0[10]~output_o\);

-- Location: IOOBUF_X74_Y0_N23
\D_rf0[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[0][11]~q\,
	devoe => ww_devoe,
	o => \D_rf0[11]~output_o\);

-- Location: IOOBUF_X0_Y58_N16
\D_rf0[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[0][12]~q\,
	devoe => ww_devoe,
	o => \D_rf0[12]~output_o\);

-- Location: IOOBUF_X96_Y0_N2
\D_rf0[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[0][13]~q\,
	devoe => ww_devoe,
	o => \D_rf0[13]~output_o\);

-- Location: IOOBUF_X0_Y60_N16
\D_rf0[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[0][14]~q\,
	devoe => ww_devoe,
	o => \D_rf0[14]~output_o\);

-- Location: IOOBUF_X40_Y73_N9
\D_rf0[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[0][15]~q\,
	devoe => ww_devoe,
	o => \D_rf0[15]~output_o\);

-- Location: IOOBUF_X0_Y34_N16
\D_rf1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[1][0]~q\,
	devoe => ww_devoe,
	o => \D_rf1[0]~output_o\);

-- Location: IOOBUF_X40_Y0_N16
\D_rf1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[1][1]~q\,
	devoe => ww_devoe,
	o => \D_rf1[1]~output_o\);

-- Location: IOOBUF_X0_Y55_N23
\D_rf1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[1][2]~q\,
	devoe => ww_devoe,
	o => \D_rf1[2]~output_o\);

-- Location: IOOBUF_X0_Y30_N9
\D_rf1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[1][3]~q\,
	devoe => ww_devoe,
	o => \D_rf1[3]~output_o\);

-- Location: IOOBUF_X0_Y66_N16
\D_rf1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[1][4]~q\,
	devoe => ww_devoe,
	o => \D_rf1[4]~output_o\);

-- Location: IOOBUF_X115_Y45_N23
\D_rf1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[1][5]~q\,
	devoe => ww_devoe,
	o => \D_rf1[5]~output_o\);

-- Location: IOOBUF_X85_Y73_N23
\D_rf1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[1][6]~q\,
	devoe => ww_devoe,
	o => \D_rf1[6]~output_o\);

-- Location: IOOBUF_X115_Y20_N2
\D_rf1[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[1][7]~q\,
	devoe => ww_devoe,
	o => \D_rf1[7]~output_o\);

-- Location: IOOBUF_X111_Y73_N9
\D_rf1[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[1][8]~q\,
	devoe => ww_devoe,
	o => \D_rf1[8]~output_o\);

-- Location: IOOBUF_X115_Y62_N23
\D_rf1[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[1][9]~q\,
	devoe => ww_devoe,
	o => \D_rf1[9]~output_o\);

-- Location: IOOBUF_X115_Y31_N2
\D_rf1[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[1][10]~q\,
	devoe => ww_devoe,
	o => \D_rf1[10]~output_o\);

-- Location: IOOBUF_X115_Y23_N2
\D_rf1[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[1][11]~q\,
	devoe => ww_devoe,
	o => \D_rf1[11]~output_o\);

-- Location: IOOBUF_X38_Y73_N9
\D_rf1[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[1][12]~q\,
	devoe => ww_devoe,
	o => \D_rf1[12]~output_o\);

-- Location: IOOBUF_X83_Y0_N23
\D_rf1[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[1][13]~q\,
	devoe => ww_devoe,
	o => \D_rf1[13]~output_o\);

-- Location: IOOBUF_X115_Y57_N23
\D_rf1[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[1][14]~q\,
	devoe => ww_devoe,
	o => \D_rf1[14]~output_o\);

-- Location: IOOBUF_X91_Y0_N16
\D_rf1[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[1][15]~q\,
	devoe => ww_devoe,
	o => \D_rf1[15]~output_o\);

-- Location: IOOBUF_X0_Y66_N23
\D_rf2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[2][0]~q\,
	devoe => ww_devoe,
	o => \D_rf2[0]~output_o\);

-- Location: IOOBUF_X0_Y45_N16
\D_rf2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[2][1]~q\,
	devoe => ww_devoe,
	o => \D_rf2[1]~output_o\);

-- Location: IOOBUF_X83_Y0_N16
\D_rf2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[2][2]~q\,
	devoe => ww_devoe,
	o => \D_rf2[2]~output_o\);

-- Location: IOOBUF_X20_Y73_N9
\D_rf2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[2][3]~q\,
	devoe => ww_devoe,
	o => \D_rf2[3]~output_o\);

-- Location: IOOBUF_X65_Y0_N2
\D_rf2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[2][4]~q\,
	devoe => ww_devoe,
	o => \D_rf2[4]~output_o\);

-- Location: IOOBUF_X0_Y48_N9
\D_rf2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[2][5]~q\,
	devoe => ww_devoe,
	o => \D_rf2[5]~output_o\);

-- Location: IOOBUF_X115_Y31_N9
\D_rf2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[2][6]~q\,
	devoe => ww_devoe,
	o => \D_rf2[6]~output_o\);

-- Location: IOOBUF_X13_Y73_N23
\D_rf2[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[2][7]~q\,
	devoe => ww_devoe,
	o => \D_rf2[7]~output_o\);

-- Location: IOOBUF_X0_Y59_N16
\D_rf2[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[2][8]~q\,
	devoe => ww_devoe,
	o => \D_rf2[8]~output_o\);

-- Location: IOOBUF_X115_Y32_N9
\D_rf2[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[2][9]~q\,
	devoe => ww_devoe,
	o => \D_rf2[9]~output_o\);

-- Location: IOOBUF_X115_Y33_N2
\D_rf2[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[2][10]~q\,
	devoe => ww_devoe,
	o => \D_rf2[10]~output_o\);

-- Location: IOOBUF_X96_Y73_N16
\D_rf2[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[2][11]~q\,
	devoe => ww_devoe,
	o => \D_rf2[11]~output_o\);

-- Location: IOOBUF_X89_Y73_N16
\D_rf2[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[2][12]~q\,
	devoe => ww_devoe,
	o => \D_rf2[12]~output_o\);

-- Location: IOOBUF_X0_Y54_N9
\D_rf2[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[2][13]~q\,
	devoe => ww_devoe,
	o => \D_rf2[13]~output_o\);

-- Location: IOOBUF_X85_Y73_N16
\D_rf2[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[2][14]~q\,
	devoe => ww_devoe,
	o => \D_rf2[14]~output_o\);

-- Location: IOOBUF_X115_Y62_N16
\D_rf2[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[2][15]~q\,
	devoe => ww_devoe,
	o => \D_rf2[15]~output_o\);

-- Location: IOOBUF_X115_Y36_N2
\D_rf3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[3][0]~q\,
	devoe => ww_devoe,
	o => \D_rf3[0]~output_o\);

-- Location: IOOBUF_X115_Y51_N9
\D_rf3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[3][1]~q\,
	devoe => ww_devoe,
	o => \D_rf3[1]~output_o\);

-- Location: IOOBUF_X0_Y55_N9
\D_rf3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[3][2]~q\,
	devoe => ww_devoe,
	o => \D_rf3[2]~output_o\);

-- Location: IOOBUF_X13_Y73_N16
\D_rf3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[3][3]~q\,
	devoe => ww_devoe,
	o => \D_rf3[3]~output_o\);

-- Location: IOOBUF_X27_Y73_N9
\D_rf3[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[3][4]~q\,
	devoe => ww_devoe,
	o => \D_rf3[4]~output_o\);

-- Location: IOOBUF_X38_Y73_N23
\D_rf3[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[3][5]~q\,
	devoe => ww_devoe,
	o => \D_rf3[5]~output_o\);

-- Location: IOOBUF_X13_Y73_N2
\D_rf3[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[3][6]~q\,
	devoe => ww_devoe,
	o => \D_rf3[6]~output_o\);

-- Location: IOOBUF_X115_Y25_N16
\D_rf3[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[3][7]~q\,
	devoe => ww_devoe,
	o => \D_rf3[7]~output_o\);

-- Location: IOOBUF_X115_Y26_N23
\D_rf3[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[3][8]~q\,
	devoe => ww_devoe,
	o => \D_rf3[8]~output_o\);

-- Location: IOOBUF_X16_Y73_N9
\D_rf3[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[3][9]~q\,
	devoe => ww_devoe,
	o => \D_rf3[9]~output_o\);

-- Location: IOOBUF_X113_Y73_N9
\D_rf3[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[3][10]~q\,
	devoe => ww_devoe,
	o => \D_rf3[10]~output_o\);

-- Location: IOOBUF_X115_Y24_N2
\D_rf3[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[3][11]~q\,
	devoe => ww_devoe,
	o => \D_rf3[11]~output_o\);

-- Location: IOOBUF_X115_Y47_N23
\D_rf3[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[3][12]~q\,
	devoe => ww_devoe,
	o => \D_rf3[12]~output_o\);

-- Location: IOOBUF_X13_Y73_N9
\D_rf3[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[3][13]~q\,
	devoe => ww_devoe,
	o => \D_rf3[13]~output_o\);

-- Location: IOOBUF_X115_Y61_N16
\D_rf3[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[3][14]~q\,
	devoe => ww_devoe,
	o => \D_rf3[14]~output_o\);

-- Location: IOOBUF_X0_Y27_N16
\D_rf3[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[3][15]~q\,
	devoe => ww_devoe,
	o => \D_rf3[15]~output_o\);

-- Location: IOOBUF_X0_Y55_N16
\D_rf4[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[4][0]~q\,
	devoe => ww_devoe,
	o => \D_rf4[0]~output_o\);

-- Location: IOOBUF_X25_Y73_N16
\D_rf4[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[4][1]~q\,
	devoe => ww_devoe,
	o => \D_rf4[1]~output_o\);

-- Location: IOOBUF_X58_Y73_N23
\D_rf4[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[4][2]~q\,
	devoe => ww_devoe,
	o => \D_rf4[2]~output_o\);

-- Location: IOOBUF_X115_Y59_N16
\D_rf4[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[4][3]~q\,
	devoe => ww_devoe,
	o => \D_rf4[3]~output_o\);

-- Location: IOOBUF_X56_Y0_N16
\D_rf4[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[4][4]~q\,
	devoe => ww_devoe,
	o => \D_rf4[4]~output_o\);

-- Location: IOOBUF_X23_Y73_N2
\D_rf4[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[4][5]~q\,
	devoe => ww_devoe,
	o => \D_rf4[5]~output_o\);

-- Location: IOOBUF_X29_Y73_N2
\D_rf4[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[4][6]~q\,
	devoe => ww_devoe,
	o => \D_rf4[6]~output_o\);

-- Location: IOOBUF_X94_Y0_N9
\D_rf4[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[4][7]~q\,
	devoe => ww_devoe,
	o => \D_rf4[7]~output_o\);

-- Location: IOOBUF_X74_Y73_N16
\D_rf4[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[4][8]~q\,
	devoe => ww_devoe,
	o => \D_rf4[8]~output_o\);

-- Location: IOOBUF_X115_Y63_N2
\D_rf4[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[4][9]~q\,
	devoe => ww_devoe,
	o => \D_rf4[9]~output_o\);

-- Location: IOOBUF_X74_Y0_N9
\D_rf4[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[4][10]~q\,
	devoe => ww_devoe,
	o => \D_rf4[10]~output_o\);

-- Location: IOOBUF_X98_Y73_N23
\D_rf4[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[4][11]~q\,
	devoe => ww_devoe,
	o => \D_rf4[11]~output_o\);

-- Location: IOOBUF_X115_Y53_N16
\D_rf4[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[4][12]~q\,
	devoe => ww_devoe,
	o => \D_rf4[12]~output_o\);

-- Location: IOOBUF_X0_Y53_N9
\D_rf4[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[4][13]~q\,
	devoe => ww_devoe,
	o => \D_rf4[13]~output_o\);

-- Location: IOOBUF_X45_Y0_N23
\D_rf4[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[4][14]~q\,
	devoe => ww_devoe,
	o => \D_rf4[14]~output_o\);

-- Location: IOOBUF_X115_Y64_N9
\D_rf4[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[4][15]~q\,
	devoe => ww_devoe,
	o => \D_rf4[15]~output_o\);

-- Location: IOOBUF_X0_Y62_N16
\D_rf5[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[5][0]~q\,
	devoe => ww_devoe,
	o => \D_rf5[0]~output_o\);

-- Location: IOOBUF_X27_Y73_N23
\D_rf5[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[5][1]~q\,
	devoe => ww_devoe,
	o => \D_rf5[1]~output_o\);

-- Location: IOOBUF_X9_Y73_N9
\D_rf5[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[5][2]~q\,
	devoe => ww_devoe,
	o => \D_rf5[2]~output_o\);

-- Location: IOOBUF_X115_Y52_N9
\D_rf5[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[5][3]~q\,
	devoe => ww_devoe,
	o => \D_rf5[3]~output_o\);

-- Location: IOOBUF_X89_Y0_N2
\D_rf5[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[5][4]~q\,
	devoe => ww_devoe,
	o => \D_rf5[4]~output_o\);

-- Location: IOOBUF_X115_Y65_N23
\D_rf5[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[5][5]~q\,
	devoe => ww_devoe,
	o => \D_rf5[5]~output_o\);

-- Location: IOOBUF_X20_Y0_N16
\D_rf5[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[5][6]~q\,
	devoe => ww_devoe,
	o => \D_rf5[6]~output_o\);

-- Location: IOOBUF_X115_Y68_N16
\D_rf5[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[5][7]~q\,
	devoe => ww_devoe,
	o => \D_rf5[7]~output_o\);

-- Location: IOOBUF_X115_Y50_N9
\D_rf5[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[5][8]~q\,
	devoe => ww_devoe,
	o => \D_rf5[8]~output_o\);

-- Location: IOOBUF_X47_Y73_N2
\D_rf5[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[5][9]~q\,
	devoe => ww_devoe,
	o => \D_rf5[9]~output_o\);

-- Location: IOOBUF_X16_Y73_N16
\D_rf5[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[5][10]~q\,
	devoe => ww_devoe,
	o => \D_rf5[10]~output_o\);

-- Location: IOOBUF_X20_Y73_N2
\D_rf5[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[5][11]~q\,
	devoe => ww_devoe,
	o => \D_rf5[11]~output_o\);

-- Location: IOOBUF_X100_Y73_N23
\D_rf5[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[5][12]~q\,
	devoe => ww_devoe,
	o => \D_rf5[12]~output_o\);

-- Location: IOOBUF_X3_Y73_N23
\D_rf5[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[5][13]~q\,
	devoe => ww_devoe,
	o => \D_rf5[13]~output_o\);

-- Location: IOOBUF_X115_Y12_N9
\D_rf5[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[5][14]~q\,
	devoe => ww_devoe,
	o => \D_rf5[14]~output_o\);

-- Location: IOOBUF_X11_Y73_N2
\D_rf5[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[5][15]~q\,
	devoe => ww_devoe,
	o => \D_rf5[15]~output_o\);

-- Location: IOOBUF_X54_Y0_N2
\D_rf6[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[6][0]~q\,
	devoe => ww_devoe,
	o => \D_rf6[0]~output_o\);

-- Location: IOOBUF_X85_Y0_N2
\D_rf6[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[6][1]~q\,
	devoe => ww_devoe,
	o => \D_rf6[1]~output_o\);

-- Location: IOOBUF_X20_Y73_N23
\D_rf6[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[6][2]~q\,
	devoe => ww_devoe,
	o => \D_rf6[2]~output_o\);

-- Location: IOOBUF_X0_Y52_N2
\D_rf6[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[6][3]~q\,
	devoe => ww_devoe,
	o => \D_rf6[3]~output_o\);

-- Location: IOOBUF_X35_Y73_N16
\D_rf6[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[6][4]~q\,
	devoe => ww_devoe,
	o => \D_rf6[4]~output_o\);

-- Location: IOOBUF_X35_Y73_N23
\D_rf6[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[6][5]~q\,
	devoe => ww_devoe,
	o => \D_rf6[5]~output_o\);

-- Location: IOOBUF_X27_Y73_N16
\D_rf6[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[6][6]~q\,
	devoe => ww_devoe,
	o => \D_rf6[6]~output_o\);

-- Location: IOOBUF_X0_Y52_N16
\D_rf6[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[6][7]~q\,
	devoe => ww_devoe,
	o => \D_rf6[7]~output_o\);

-- Location: IOOBUF_X85_Y73_N2
\D_rf6[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[6][8]~q\,
	devoe => ww_devoe,
	o => \D_rf6[8]~output_o\);

-- Location: IOOBUF_X100_Y73_N16
\D_rf6[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[6][9]~q\,
	devoe => ww_devoe,
	o => \D_rf6[9]~output_o\);

-- Location: IOOBUF_X25_Y73_N23
\D_rf6[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[6][10]~q\,
	devoe => ww_devoe,
	o => \D_rf6[10]~output_o\);

-- Location: IOOBUF_X115_Y63_N9
\D_rf6[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[6][11]~q\,
	devoe => ww_devoe,
	o => \D_rf6[11]~output_o\);

-- Location: IOOBUF_X38_Y73_N16
\D_rf6[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[6][12]~q\,
	devoe => ww_devoe,
	o => \D_rf6[12]~output_o\);

-- Location: IOOBUF_X96_Y73_N23
\D_rf6[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[6][13]~q\,
	devoe => ww_devoe,
	o => \D_rf6[13]~output_o\);

-- Location: IOOBUF_X115_Y60_N16
\D_rf6[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[6][14]~q\,
	devoe => ww_devoe,
	o => \D_rf6[14]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\D_rf6[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[6][15]~q\,
	devoe => ww_devoe,
	o => \D_rf6[15]~output_o\);

-- Location: IOOBUF_X52_Y0_N2
\D_rf7[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[7][0]~q\,
	devoe => ww_devoe,
	o => \D_rf7[0]~output_o\);

-- Location: IOOBUF_X0_Y51_N16
\D_rf7[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[7][1]~q\,
	devoe => ww_devoe,
	o => \D_rf7[1]~output_o\);

-- Location: IOOBUF_X115_Y55_N23
\D_rf7[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[7][2]~q\,
	devoe => ww_devoe,
	o => \D_rf7[2]~output_o\);

-- Location: IOOBUF_X33_Y73_N9
\D_rf7[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[7][3]~q\,
	devoe => ww_devoe,
	o => \D_rf7[3]~output_o\);

-- Location: IOOBUF_X115_Y19_N2
\D_rf7[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[7][4]~q\,
	devoe => ww_devoe,
	o => \D_rf7[4]~output_o\);

-- Location: IOOBUF_X67_Y0_N16
\D_rf7[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[7][5]~q\,
	devoe => ww_devoe,
	o => \D_rf7[5]~output_o\);

-- Location: IOOBUF_X23_Y73_N16
\D_rf7[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[7][6]~q\,
	devoe => ww_devoe,
	o => \D_rf7[6]~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\D_rf7[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[7][7]~q\,
	devoe => ww_devoe,
	o => \D_rf7[7]~output_o\);

-- Location: IOOBUF_X74_Y73_N23
\D_rf7[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[7][8]~q\,
	devoe => ww_devoe,
	o => \D_rf7[8]~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\D_rf7[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[7][9]~q\,
	devoe => ww_devoe,
	o => \D_rf7[9]~output_o\);

-- Location: IOOBUF_X115_Y55_N16
\D_rf7[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[7][10]~q\,
	devoe => ww_devoe,
	o => \D_rf7[10]~output_o\);

-- Location: IOOBUF_X0_Y34_N23
\D_rf7[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[7][11]~q\,
	devoe => ww_devoe,
	o => \D_rf7[11]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\D_rf7[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[7][12]~q\,
	devoe => ww_devoe,
	o => \D_rf7[12]~output_o\);

-- Location: IOOBUF_X40_Y0_N23
\D_rf7[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[7][13]~q\,
	devoe => ww_devoe,
	o => \D_rf7[13]~output_o\);

-- Location: IOOBUF_X115_Y56_N16
\D_rf7[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[7][14]~q\,
	devoe => ww_devoe,
	o => \D_rf7[14]~output_o\);

-- Location: IOOBUF_X40_Y73_N2
\D_rf7[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[7][15]~q\,
	devoe => ww_devoe,
	o => \D_rf7[15]~output_o\);

-- Location: IOOBUF_X115_Y19_N9
\D_rf8[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[8][0]~q\,
	devoe => ww_devoe,
	o => \D_rf8[0]~output_o\);

-- Location: IOOBUF_X5_Y73_N9
\D_rf8[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[8][1]~q\,
	devoe => ww_devoe,
	o => \D_rf8[1]~output_o\);

-- Location: IOOBUF_X0_Y43_N16
\D_rf8[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[8][2]~q\,
	devoe => ww_devoe,
	o => \D_rf8[2]~output_o\);

-- Location: IOOBUF_X5_Y73_N2
\D_rf8[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[8][3]~q\,
	devoe => ww_devoe,
	o => \D_rf8[3]~output_o\);

-- Location: IOOBUF_X115_Y27_N2
\D_rf8[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[8][4]~q\,
	devoe => ww_devoe,
	o => \D_rf8[4]~output_o\);

-- Location: IOOBUF_X115_Y28_N2
\D_rf8[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[8][5]~q\,
	devoe => ww_devoe,
	o => \D_rf8[5]~output_o\);

-- Location: IOOBUF_X42_Y73_N2
\D_rf8[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[8][6]~q\,
	devoe => ww_devoe,
	o => \D_rf8[6]~output_o\);

-- Location: IOOBUF_X0_Y45_N23
\D_rf8[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[8][7]~q\,
	devoe => ww_devoe,
	o => \D_rf8[7]~output_o\);

-- Location: IOOBUF_X83_Y0_N9
\D_rf8[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[8][8]~q\,
	devoe => ww_devoe,
	o => \D_rf8[8]~output_o\);

-- Location: IOOBUF_X115_Y64_N2
\D_rf8[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[8][9]~q\,
	devoe => ww_devoe,
	o => \D_rf8[9]~output_o\);

-- Location: IOOBUF_X115_Y41_N9
\D_rf8[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[8][10]~q\,
	devoe => ww_devoe,
	o => \D_rf8[10]~output_o\);

-- Location: IOOBUF_X52_Y0_N23
\D_rf8[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[8][11]~q\,
	devoe => ww_devoe,
	o => \D_rf8[11]~output_o\);

-- Location: IOOBUF_X115_Y35_N16
\D_rf8[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[8][12]~q\,
	devoe => ww_devoe,
	o => \D_rf8[12]~output_o\);

-- Location: IOOBUF_X115_Y10_N9
\D_rf8[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[8][13]~q\,
	devoe => ww_devoe,
	o => \D_rf8[13]~output_o\);

-- Location: IOOBUF_X38_Y73_N2
\D_rf8[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[8][14]~q\,
	devoe => ww_devoe,
	o => \D_rf8[14]~output_o\);

-- Location: IOOBUF_X81_Y0_N16
\D_rf8[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[8][15]~q\,
	devoe => ww_devoe,
	o => \D_rf8[15]~output_o\);

-- Location: IOOBUF_X0_Y49_N9
\D_rf9[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[9][0]~q\,
	devoe => ww_devoe,
	o => \D_rf9[0]~output_o\);

-- Location: IOOBUF_X115_Y32_N2
\D_rf9[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[9][1]~q\,
	devoe => ww_devoe,
	o => \D_rf9[1]~output_o\);

-- Location: IOOBUF_X115_Y15_N9
\D_rf9[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[9][2]~q\,
	devoe => ww_devoe,
	o => \D_rf9[2]~output_o\);

-- Location: IOOBUF_X115_Y40_N2
\D_rf9[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[9][3]~q\,
	devoe => ww_devoe,
	o => \D_rf9[3]~output_o\);

-- Location: IOOBUF_X115_Y22_N23
\D_rf9[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[9][4]~q\,
	devoe => ww_devoe,
	o => \D_rf9[4]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\D_rf9[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[9][5]~q\,
	devoe => ww_devoe,
	o => \D_rf9[5]~output_o\);

-- Location: IOOBUF_X100_Y0_N23
\D_rf9[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[9][6]~q\,
	devoe => ww_devoe,
	o => \D_rf9[6]~output_o\);

-- Location: IOOBUF_X105_Y73_N9
\D_rf9[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[9][7]~q\,
	devoe => ww_devoe,
	o => \D_rf9[7]~output_o\);

-- Location: IOOBUF_X81_Y73_N2
\D_rf9[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[9][8]~q\,
	devoe => ww_devoe,
	o => \D_rf9[8]~output_o\);

-- Location: IOOBUF_X115_Y11_N2
\D_rf9[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[9][9]~q\,
	devoe => ww_devoe,
	o => \D_rf9[9]~output_o\);

-- Location: IOOBUF_X69_Y0_N9
\D_rf9[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[9][10]~q\,
	devoe => ww_devoe,
	o => \D_rf9[10]~output_o\);

-- Location: IOOBUF_X11_Y73_N16
\D_rf9[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[9][11]~q\,
	devoe => ww_devoe,
	o => \D_rf9[11]~output_o\);

-- Location: IOOBUF_X91_Y0_N23
\D_rf9[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[9][12]~q\,
	devoe => ww_devoe,
	o => \D_rf9[12]~output_o\);

-- Location: IOOBUF_X0_Y46_N23
\D_rf9[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[9][13]~q\,
	devoe => ww_devoe,
	o => \D_rf9[13]~output_o\);

-- Location: IOOBUF_X85_Y0_N23
\D_rf9[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[9][14]~q\,
	devoe => ww_devoe,
	o => \D_rf9[14]~output_o\);

-- Location: IOOBUF_X115_Y66_N16
\D_rf9[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[9][15]~q\,
	devoe => ww_devoe,
	o => \D_rf9[15]~output_o\);

-- Location: IOOBUF_X72_Y73_N2
\D_rfA[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[10][0]~q\,
	devoe => ww_devoe,
	o => \D_rfA[0]~output_o\);

-- Location: IOOBUF_X115_Y35_N23
\D_rfA[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[10][1]~q\,
	devoe => ww_devoe,
	o => \D_rfA[1]~output_o\);

-- Location: IOOBUF_X0_Y34_N9
\D_rfA[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[10][2]~q\,
	devoe => ww_devoe,
	o => \D_rfA[2]~output_o\);

-- Location: IOOBUF_X45_Y0_N16
\D_rfA[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[10][3]~q\,
	devoe => ww_devoe,
	o => \D_rfA[3]~output_o\);

-- Location: IOOBUF_X115_Y13_N9
\D_rfA[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[10][4]~q\,
	devoe => ww_devoe,
	o => \D_rfA[4]~output_o\);

-- Location: IOOBUF_X0_Y35_N16
\D_rfA[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[10][5]~q\,
	devoe => ww_devoe,
	o => \D_rfA[5]~output_o\);

-- Location: IOOBUF_X109_Y73_N2
\D_rfA[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[10][6]~q\,
	devoe => ww_devoe,
	o => \D_rfA[6]~output_o\);

-- Location: IOOBUF_X115_Y59_N23
\D_rfA[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[10][7]~q\,
	devoe => ww_devoe,
	o => \D_rfA[7]~output_o\);

-- Location: IOOBUF_X102_Y73_N9
\D_rfA[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[10][8]~q\,
	devoe => ww_devoe,
	o => \D_rfA[8]~output_o\);

-- Location: IOOBUF_X0_Y52_N23
\D_rfA[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[10][9]~q\,
	devoe => ww_devoe,
	o => \D_rfA[9]~output_o\);

-- Location: IOOBUF_X62_Y0_N23
\D_rfA[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[10][10]~q\,
	devoe => ww_devoe,
	o => \D_rfA[10]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\D_rfA[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[10][11]~q\,
	devoe => ww_devoe,
	o => \D_rfA[11]~output_o\);

-- Location: IOOBUF_X0_Y24_N23
\D_rfA[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[10][12]~q\,
	devoe => ww_devoe,
	o => \D_rfA[12]~output_o\);

-- Location: IOOBUF_X115_Y58_N23
\D_rfA[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[10][13]~q\,
	devoe => ww_devoe,
	o => \D_rfA[13]~output_o\);

-- Location: IOOBUF_X91_Y73_N16
\D_rfA[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[10][14]~q\,
	devoe => ww_devoe,
	o => \D_rfA[14]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\D_rfA[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[10][15]~q\,
	devoe => ww_devoe,
	o => \D_rfA[15]~output_o\);

-- Location: IOOBUF_X0_Y47_N2
\D_rfB[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[11][0]~q\,
	devoe => ww_devoe,
	o => \D_rfB[0]~output_o\);

-- Location: IOOBUF_X0_Y63_N16
\D_rfB[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[11][1]~q\,
	devoe => ww_devoe,
	o => \D_rfB[1]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\D_rfB[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[11][2]~q\,
	devoe => ww_devoe,
	o => \D_rfB[2]~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\D_rfB[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[11][3]~q\,
	devoe => ww_devoe,
	o => \D_rfB[3]~output_o\);

-- Location: IOOBUF_X81_Y73_N23
\D_rfB[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[11][4]~q\,
	devoe => ww_devoe,
	o => \D_rfB[4]~output_o\);

-- Location: IOOBUF_X23_Y73_N9
\D_rfB[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[11][5]~q\,
	devoe => ww_devoe,
	o => \D_rfB[5]~output_o\);

-- Location: IOOBUF_X85_Y0_N9
\D_rfB[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[11][6]~q\,
	devoe => ww_devoe,
	o => \D_rfB[6]~output_o\);

-- Location: IOOBUF_X107_Y73_N9
\D_rfB[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[11][7]~q\,
	devoe => ww_devoe,
	o => \D_rfB[7]~output_o\);

-- Location: IOOBUF_X69_Y0_N2
\D_rfB[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[11][8]~q\,
	devoe => ww_devoe,
	o => \D_rfB[8]~output_o\);

-- Location: IOOBUF_X115_Y47_N16
\D_rfB[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[11][9]~q\,
	devoe => ww_devoe,
	o => \D_rfB[9]~output_o\);

-- Location: IOOBUF_X115_Y33_N9
\D_rfB[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[11][10]~q\,
	devoe => ww_devoe,
	o => \D_rfB[10]~output_o\);

-- Location: IOOBUF_X107_Y73_N2
\D_rfB[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[11][11]~q\,
	devoe => ww_devoe,
	o => \D_rfB[11]~output_o\);

-- Location: IOOBUF_X67_Y0_N23
\D_rfB[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[11][12]~q\,
	devoe => ww_devoe,
	o => \D_rfB[12]~output_o\);

-- Location: IOOBUF_X89_Y73_N23
\D_rfB[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[11][13]~q\,
	devoe => ww_devoe,
	o => \D_rfB[13]~output_o\);

-- Location: IOOBUF_X18_Y73_N16
\D_rfB[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[11][14]~q\,
	devoe => ww_devoe,
	o => \D_rfB[14]~output_o\);

-- Location: IOOBUF_X115_Y34_N16
\D_rfB[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[11][15]~q\,
	devoe => ww_devoe,
	o => \D_rfB[15]~output_o\);

-- Location: IOOBUF_X56_Y0_N2
\D_rfC[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[12][0]~q\,
	devoe => ww_devoe,
	o => \D_rfC[0]~output_o\);

-- Location: IOOBUF_X0_Y53_N2
\D_rfC[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[12][1]~q\,
	devoe => ww_devoe,
	o => \D_rfC[1]~output_o\);

-- Location: IOOBUF_X20_Y73_N16
\D_rfC[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[12][2]~q\,
	devoe => ww_devoe,
	o => \D_rfC[2]~output_o\);

-- Location: IOOBUF_X29_Y73_N9
\D_rfC[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[12][3]~q\,
	devoe => ww_devoe,
	o => \D_rfC[3]~output_o\);

-- Location: IOOBUF_X72_Y0_N9
\D_rfC[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[12][4]~q\,
	devoe => ww_devoe,
	o => \D_rfC[4]~output_o\);

-- Location: IOOBUF_X7_Y73_N23
\D_rfC[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[12][5]~q\,
	devoe => ww_devoe,
	o => \D_rfC[5]~output_o\);

-- Location: IOOBUF_X79_Y0_N2
\D_rfC[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[12][6]~q\,
	devoe => ww_devoe,
	o => \D_rfC[6]~output_o\);

-- Location: IOOBUF_X0_Y47_N23
\D_rfC[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[12][7]~q\,
	devoe => ww_devoe,
	o => \D_rfC[7]~output_o\);

-- Location: IOOBUF_X96_Y0_N16
\D_rfC[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[12][8]~q\,
	devoe => ww_devoe,
	o => \D_rfC[8]~output_o\);

-- Location: IOOBUF_X115_Y42_N16
\D_rfC[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[12][9]~q\,
	devoe => ww_devoe,
	o => \D_rfC[9]~output_o\);

-- Location: IOOBUF_X115_Y16_N2
\D_rfC[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[12][10]~q\,
	devoe => ww_devoe,
	o => \D_rfC[10]~output_o\);

-- Location: IOOBUF_X74_Y0_N16
\D_rfC[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[12][11]~q\,
	devoe => ww_devoe,
	o => \D_rfC[11]~output_o\);

-- Location: IOOBUF_X115_Y51_N2
\D_rfC[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[12][12]~q\,
	devoe => ww_devoe,
	o => \D_rfC[12]~output_o\);

-- Location: IOOBUF_X35_Y0_N23
\D_rfC[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[12][13]~q\,
	devoe => ww_devoe,
	o => \D_rfC[13]~output_o\);

-- Location: IOOBUF_X79_Y73_N9
\D_rfC[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[12][14]~q\,
	devoe => ww_devoe,
	o => \D_rfC[14]~output_o\);

-- Location: IOOBUF_X105_Y73_N2
\D_rfC[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[12][15]~q\,
	devoe => ww_devoe,
	o => \D_rfC[15]~output_o\);

-- Location: IOOBUF_X0_Y34_N2
\D_rfD[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[13][0]~q\,
	devoe => ww_devoe,
	o => \D_rfD[0]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\D_rfD[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[13][1]~q\,
	devoe => ww_devoe,
	o => \D_rfD[1]~output_o\);

-- Location: IOOBUF_X54_Y0_N9
\D_rfD[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[13][2]~q\,
	devoe => ww_devoe,
	o => \D_rfD[2]~output_o\);

-- Location: IOOBUF_X115_Y22_N16
\D_rfD[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[13][3]~q\,
	devoe => ww_devoe,
	o => \D_rfD[3]~output_o\);

-- Location: IOOBUF_X11_Y73_N23
\D_rfD[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[13][4]~q\,
	devoe => ww_devoe,
	o => \D_rfD[4]~output_o\);

-- Location: IOOBUF_X42_Y73_N9
\D_rfD[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[13][5]~q\,
	devoe => ww_devoe,
	o => \D_rfD[5]~output_o\);

-- Location: IOOBUF_X115_Y56_N23
\D_rfD[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[13][6]~q\,
	devoe => ww_devoe,
	o => \D_rfD[6]~output_o\);

-- Location: IOOBUF_X79_Y73_N2
\D_rfD[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[13][7]~q\,
	devoe => ww_devoe,
	o => \D_rfD[7]~output_o\);

-- Location: IOOBUF_X0_Y57_N16
\D_rfD[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[13][8]~q\,
	devoe => ww_devoe,
	o => \D_rfD[8]~output_o\);

-- Location: IOOBUF_X115_Y18_N9
\D_rfD[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[13][9]~q\,
	devoe => ww_devoe,
	o => \D_rfD[9]~output_o\);

-- Location: IOOBUF_X115_Y36_N16
\D_rfD[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[13][10]~q\,
	devoe => ww_devoe,
	o => \D_rfD[10]~output_o\);

-- Location: IOOBUF_X16_Y73_N23
\D_rfD[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[13][11]~q\,
	devoe => ww_devoe,
	o => \D_rfD[11]~output_o\);

-- Location: IOOBUF_X115_Y57_N16
\D_rfD[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[13][12]~q\,
	devoe => ww_devoe,
	o => \D_rfD[12]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\D_rfD[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[13][13]~q\,
	devoe => ww_devoe,
	o => \D_rfD[13]~output_o\);

-- Location: IOOBUF_X111_Y73_N2
\D_rfD[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[13][14]~q\,
	devoe => ww_devoe,
	o => \D_rfD[14]~output_o\);

-- Location: IOOBUF_X0_Y50_N23
\D_rfD[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[13][15]~q\,
	devoe => ww_devoe,
	o => \D_rfD[15]~output_o\);

-- Location: IOOBUF_X0_Y59_N23
\D_rfE[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[14][0]~q\,
	devoe => ww_devoe,
	o => \D_rfE[0]~output_o\);

-- Location: IOOBUF_X115_Y36_N9
\D_rfE[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[14][1]~q\,
	devoe => ww_devoe,
	o => \D_rfE[1]~output_o\);

-- Location: IOOBUF_X83_Y73_N9
\D_rfE[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[14][2]~q\,
	devoe => ww_devoe,
	o => \D_rfE[2]~output_o\);

-- Location: IOOBUF_X65_Y0_N16
\D_rfE[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[14][3]~q\,
	devoe => ww_devoe,
	o => \D_rfE[3]~output_o\);

-- Location: IOOBUF_X79_Y0_N9
\D_rfE[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[14][4]~q\,
	devoe => ww_devoe,
	o => \D_rfE[4]~output_o\);

-- Location: IOOBUF_X16_Y73_N2
\D_rfE[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[14][5]~q\,
	devoe => ww_devoe,
	o => \D_rfE[5]~output_o\);

-- Location: IOOBUF_X115_Y34_N23
\D_rfE[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[14][6]~q\,
	devoe => ww_devoe,
	o => \D_rfE[6]~output_o\);

-- Location: IOOBUF_X87_Y73_N23
\D_rfE[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[14][7]~q\,
	devoe => ww_devoe,
	o => \D_rfE[7]~output_o\);

-- Location: IOOBUF_X67_Y0_N9
\D_rfE[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[14][8]~q\,
	devoe => ww_devoe,
	o => \D_rfE[8]~output_o\);

-- Location: IOOBUF_X9_Y73_N2
\D_rfE[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[14][9]~q\,
	devoe => ww_devoe,
	o => \D_rfE[9]~output_o\);

-- Location: IOOBUF_X72_Y0_N2
\D_rfE[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[14][10]~q\,
	devoe => ww_devoe,
	o => \D_rfE[10]~output_o\);

-- Location: IOOBUF_X81_Y0_N23
\D_rfE[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[14][11]~q\,
	devoe => ww_devoe,
	o => \D_rfE[11]~output_o\);

-- Location: IOOBUF_X98_Y73_N16
\D_rfE[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[14][12]~q\,
	devoe => ww_devoe,
	o => \D_rfE[12]~output_o\);

-- Location: IOOBUF_X23_Y73_N23
\D_rfE[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[14][13]~q\,
	devoe => ww_devoe,
	o => \D_rfE[13]~output_o\);

-- Location: IOOBUF_X115_Y17_N9
\D_rfE[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[14][14]~q\,
	devoe => ww_devoe,
	o => \D_rfE[14]~output_o\);

-- Location: IOOBUF_X81_Y73_N9
\D_rfE[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[14][15]~q\,
	devoe => ww_devoe,
	o => \D_rfE[15]~output_o\);

-- Location: IOOBUF_X42_Y0_N16
\D_rfF[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[15][0]~q\,
	devoe => ww_devoe,
	o => \D_rfF[0]~output_o\);

-- Location: IOOBUF_X0_Y62_N23
\D_rfF[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[15][1]~q\,
	devoe => ww_devoe,
	o => \D_rfF[1]~output_o\);

-- Location: IOOBUF_X0_Y57_N23
\D_rfF[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[15][2]~q\,
	devoe => ww_devoe,
	o => \D_rfF[2]~output_o\);

-- Location: IOOBUF_X60_Y0_N16
\D_rfF[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[15][3]~q\,
	devoe => ww_devoe,
	o => \D_rfF[3]~output_o\);

-- Location: IOOBUF_X83_Y73_N16
\D_rfF[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[15][4]~q\,
	devoe => ww_devoe,
	o => \D_rfF[4]~output_o\);

-- Location: IOOBUF_X115_Y44_N2
\D_rfF[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[15][5]~q\,
	devoe => ww_devoe,
	o => \D_rfF[5]~output_o\);

-- Location: IOOBUF_X89_Y73_N9
\D_rfF[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[15][6]~q\,
	devoe => ww_devoe,
	o => \D_rfF[6]~output_o\);

-- Location: IOOBUF_X0_Y33_N23
\D_rfF[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[15][7]~q\,
	devoe => ww_devoe,
	o => \D_rfF[7]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\D_rfF[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[15][8]~q\,
	devoe => ww_devoe,
	o => \D_rfF[8]~output_o\);

-- Location: IOOBUF_X115_Y14_N2
\D_rfF[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[15][9]~q\,
	devoe => ww_devoe,
	o => \D_rfF[9]~output_o\);

-- Location: IOOBUF_X115_Y61_N23
\D_rfF[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[15][10]~q\,
	devoe => ww_devoe,
	o => \D_rfF[10]~output_o\);

-- Location: IOOBUF_X102_Y73_N2
\D_rfF[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[15][11]~q\,
	devoe => ww_devoe,
	o => \D_rfF[11]~output_o\);

-- Location: IOOBUF_X81_Y73_N16
\D_rfF[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[15][12]~q\,
	devoe => ww_devoe,
	o => \D_rfF[12]~output_o\);

-- Location: IOOBUF_X115_Y26_N16
\D_rfF[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[15][13]~q\,
	devoe => ww_devoe,
	o => \D_rfF[13]~output_o\);

-- Location: IOOBUF_X0_Y31_N16
\D_rfF[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[15][14]~q\,
	devoe => ww_devoe,
	o => \D_rfF[14]~output_o\);

-- Location: IOOBUF_X115_Y29_N2
\D_rfF[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|U2|tmp_rf[15][15]~q\,
	devoe => ww_devoe,
	o => \D_rfF[15]~output_o\);

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

-- Location: LCCOMB_X63_Y46_N12
\Unit0|U0|Mux1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|Mux1~10_combout\ = (!\Unit0|U2|IRout\(15) & (\Unit0|U2|IRout\(14) & (!\Unit0|U2|IRout\(13) & !\Unit0|U2|IRout\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U2|IRout\(15),
	datab => \Unit0|U2|IRout\(14),
	datac => \Unit0|U2|IRout\(13),
	datad => \Unit0|U2|IRout\(12),
	combout => \Unit0|U0|Mux1~10_combout\);

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

-- Location: CLKCTRL_G1
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

-- Location: FF_X62_Y45_N29
\Unit0|U0|state.S_FETCH_INST_wait\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	asdata => \Unit0|U0|state.S_FETCH_INST~q\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cpu_clk~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U0|state.S_FETCH_INST_wait~q\);

-- Location: LCCOMB_X62_Y45_N30
\Unit0|U0|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|Selector2~0_combout\ = (\cpu_clk~input_o\ & \Unit0|U0|state.S_FETCH_INST_wait~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu_clk~input_o\,
	datad => \Unit0|U0|state.S_FETCH_INST_wait~q\,
	combout => \Unit0|U0|Selector2~0_combout\);

-- Location: FF_X62_Y45_N5
\Unit0|U0|state.S_FETCH_INSTa\ : dffeas
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
	q => \Unit0|U0|state.S_FETCH_INSTa~q\);

-- Location: FF_X62_Y45_N27
\Unit0|U0|state.S_FETCH_INSTb\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	asdata => \Unit0|U0|state.S_FETCH_INSTa~q\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U0|state.S_FETCH_INSTb~q\);

-- Location: FF_X62_Y45_N17
\Unit0|U0|state.S_DECODE_INST\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	asdata => \Unit0|U0|state.S_FETCH_INSTb~q\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U0|state.S_DECODE_INST~q\);

-- Location: FF_X63_Y46_N13
\Unit0|U0|state.S_ADD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit0|U0|Mux1~10_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sclr => \Unit0|U0|ALT_INV_state.S_DECODE_INST~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U0|state.S_ADD~q\);

-- Location: LCCOMB_X63_Y46_N16
\Unit0|U0|Mux1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|Mux1~12_combout\ = (!\Unit0|U2|IRout\(15) & (\Unit0|U2|IRout\(14) & (\Unit0|U2|IRout\(13) & !\Unit0|U2|IRout\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U2|IRout\(15),
	datab => \Unit0|U2|IRout\(14),
	datac => \Unit0|U2|IRout\(13),
	datad => \Unit0|U2|IRout\(12),
	combout => \Unit0|U0|Mux1~12_combout\);

-- Location: FF_X63_Y46_N17
\Unit0|U0|state.S_JUMP_Z\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit0|U0|Mux1~12_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sclr => \Unit0|U0|ALT_INV_state.S_DECODE_INST~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U0|state.S_JUMP_Z~q\);

-- Location: LCCOMB_X63_Y46_N10
\Unit0|U0|Mux1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|Mux1~9_combout\ = (\Unit0|U2|IRout\(15) & (!\Unit0|U2|IRout\(14) & (\Unit0|U2|IRout\(13) & \Unit0|U2|IRout\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U2|IRout\(15),
	datab => \Unit0|U2|IRout\(14),
	datac => \Unit0|U2|IRout\(13),
	datad => \Unit0|U2|IRout\(12),
	combout => \Unit0|U0|Mux1~9_combout\);

-- Location: FF_X63_Y46_N11
\Unit0|U0|state.S_MULT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit0|U0|Mux1~9_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sclr => \Unit0|U0|ALT_INV_state.S_DECODE_INST~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U0|state.S_MULT~q\);

-- Location: LCCOMB_X63_Y46_N14
\Unit0|U0|Mux1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|Mux1~11_combout\ = (!\Unit0|U2|IRout\(15) & (\Unit0|U2|IRout\(14) & (!\Unit0|U2|IRout\(13) & \Unit0|U2|IRout\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U2|IRout\(15),
	datab => \Unit0|U2|IRout\(14),
	datac => \Unit0|U2|IRout\(13),
	datad => \Unit0|U2|IRout\(12),
	combout => \Unit0|U0|Mux1~11_combout\);

-- Location: FF_X63_Y46_N15
\Unit0|U0|state.S_SUBT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit0|U0|Mux1~11_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sclr => \Unit0|U0|ALT_INV_state.S_DECODE_INST~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U0|state.S_SUBT~q\);

-- Location: LCCOMB_X69_Y46_N8
\Unit0|U0|WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|WideOr0~0_combout\ = (!\Unit0|U0|state.S_ADD~q\ & (!\Unit0|U0|state.S_MULT~q\ & !\Unit0|U0|state.S_SUBT~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Unit0|U0|state.S_ADD~q\,
	datac => \Unit0|U0|state.S_MULT~q\,
	datad => \Unit0|U0|state.S_SUBT~q\,
	combout => \Unit0|U0|WideOr0~0_combout\);

-- Location: LCCOMB_X63_Y46_N24
\Unit0|U0|Mux1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|Mux1~4_combout\ = (!\Unit0|U2|IRout\(15) & (!\Unit0|U2|IRout\(14) & (!\Unit0|U2|IRout\(13) & \Unit0|U2|IRout\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U2|IRout\(15),
	datab => \Unit0|U2|IRout\(14),
	datac => \Unit0|U2|IRout\(13),
	datad => \Unit0|U2|IRout\(12),
	combout => \Unit0|U0|Mux1~4_combout\);

-- Location: FF_X63_Y46_N25
\Unit0|U0|state.S_SHORT_SAVE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit0|U0|Mux1~4_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sclr => \Unit0|U0|ALT_INV_state.S_DECODE_INST~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U0|state.S_SHORT_SAVE~q\);

-- Location: LCCOMB_X69_Y46_N28
\Unit0|U0|WideOr47~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|WideOr47~0_combout\ = (!\Unit0|U0|state.S_LONG_SAVE~q\ & !\Unit0|U0|state.S_SHORT_SAVE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Unit0|U0|state.S_LONG_SAVE~q\,
	datad => \Unit0|U0|state.S_SHORT_SAVE~q\,
	combout => \Unit0|U0|WideOr47~0_combout\);

-- Location: LCCOMB_X69_Y46_N6
\Unit0|U0|WideOr63~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|WideOr63~1_combout\ = (!\Unit0|U0|state.S_REG_ADDR_SAVE~q\ & (!\Unit0|U0|state.S_JUMP_Z~q\ & (\Unit0|U0|WideOr0~0_combout\ & \Unit0|U0|WideOr47~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|state.S_REG_ADDR_SAVE~q\,
	datab => \Unit0|U0|state.S_JUMP_Z~q\,
	datac => \Unit0|U0|WideOr0~0_combout\,
	datad => \Unit0|U0|WideOr47~0_combout\,
	combout => \Unit0|U0|WideOr63~1_combout\);

-- Location: LCCOMB_X69_Y46_N12
\Unit0|U0|Selector73~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|Selector73~0_combout\ = (\Unit0|U0|state.S_SUBT~q\) # ((\Unit0|U0|state.S_ADD~q\) # ((\Unit0|U0|ALUs_ctrl\(1) & \Unit0|U0|WideOr63~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|state.S_SUBT~q\,
	datab => \Unit0|U0|state.S_ADD~q\,
	datac => \Unit0|U0|ALUs_ctrl\(1),
	datad => \Unit0|U0|WideOr63~1_combout\,
	combout => \Unit0|U0|Selector73~0_combout\);

-- Location: FF_X69_Y46_N13
\Unit0|U0|ALUs_ctrl[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~input_o\,
	d => \Unit0|U0|Selector73~0_combout\,
	ena => \ALT_INV_cpu_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U0|ALUs_ctrl\(1));

-- Location: LCCOMB_X63_Y46_N20
\Unit0|U0|Mux1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|Mux1~6_combout\ = (!\Unit0|U2|IRout\(15) & (!\Unit0|U2|IRout\(14) & (\Unit0|U2|IRout\(13) & !\Unit0|U2|IRout\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U2|IRout\(15),
	datab => \Unit0|U2|IRout\(14),
	datac => \Unit0|U2|IRout\(13),
	datad => \Unit0|U2|IRout\(12),
	combout => \Unit0|U0|Mux1~6_combout\);

-- Location: FF_X63_Y46_N21
\Unit0|U0|state.S_REG_ADDR_SAVE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit0|U0|Mux1~6_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sclr => \Unit0|U0|ALT_INV_state.S_DECODE_INST~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U0|state.S_REG_ADDR_SAVE~q\);

-- Location: LCCOMB_X69_Y46_N16
\Unit0|U0|Selector56~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|Selector56~2_combout\ = (!\Unit0|U0|state.S_MULT~q\ & (!\Unit0|U0|state.S_ADD~q\ & (!\Unit0|U0|state.S_REG_ADDR_SAVE~q\ & !\Unit0|U0|state.S_SUBT~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|state.S_MULT~q\,
	datab => \Unit0|U0|state.S_ADD~q\,
	datac => \Unit0|U0|state.S_REG_ADDR_SAVE~q\,
	datad => \Unit0|U0|state.S_SUBT~q\,
	combout => \Unit0|U0|Selector56~2_combout\);

-- Location: LCCOMB_X69_Y46_N14
\Unit0|U0|Selector72~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|Selector72~0_combout\ = (\Unit0|U0|state.S_MULT~q\) # ((\Unit0|U0|WideOr63~0_combout\ & (\Unit0|U0|ALUs_ctrl\(2) & \Unit0|U0|Selector56~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|WideOr63~0_combout\,
	datab => \Unit0|U0|state.S_MULT~q\,
	datac => \Unit0|U0|ALUs_ctrl\(2),
	datad => \Unit0|U0|Selector56~2_combout\,
	combout => \Unit0|U0|Selector72~0_combout\);

-- Location: FF_X69_Y46_N15
\Unit0|U0|ALUs_ctrl[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~input_o\,
	d => \Unit0|U0|Selector72~0_combout\,
	ena => \ALT_INV_cpu_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U0|ALUs_ctrl\(2));

-- Location: LCCOMB_X70_Y50_N20
\Unit1|U3|Mux33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|Mux33~0_combout\ = ((!\Unit0|U0|ALUs_ctrl\(0) & !\Unit0|U0|ALUs_ctrl\(1))) # (!\Unit0|U0|ALUs_ctrl\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|ALUs_ctrl\(0),
	datac => \Unit0|U0|ALUs_ctrl\(1),
	datad => \Unit0|U0|ALUs_ctrl\(2),
	combout => \Unit1|U3|Mux33~0_combout\);

-- Location: CLKCTRL_G11
\Unit1|U3|Mux33~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Unit1|U3|Mux33~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Unit1|U3|Mux33~0clkctrl_outclk\);

-- Location: LCCOMB_X70_Y50_N14
\Unit1|U3|Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|Mux17~0_combout\ = (\Unit0|U0|ALUs_ctrl\(1)) # (\Unit0|U0|ALUs_ctrl\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Unit0|U0|ALUs_ctrl\(1),
	datad => \Unit0|U0|ALUs_ctrl\(2),
	combout => \Unit1|U3|Mux17~0_combout\);

-- Location: LCCOMB_X63_Y45_N16
\Unit0|U0|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|Mux1~0_combout\ = (\Unit0|U2|IRout\(15) & (!\Unit0|U2|IRout\(12) & (!\Unit0|U2|IRout\(14) & \Unit0|U2|IRout\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U2|IRout\(15),
	datab => \Unit0|U2|IRout\(12),
	datac => \Unit0|U2|IRout\(14),
	datad => \Unit0|U2|IRout\(13),
	combout => \Unit0|U0|Mux1~0_combout\);

-- Location: FF_X61_Y45_N5
\Unit0|U0|state.S_LONG_LOAD_wait\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	asdata => \Unit0|U0|state.S_LONG_LOAD~q\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cpu_clk~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U0|state.S_LONG_LOAD_wait~q\);

-- Location: LCCOMB_X63_Y45_N6
\Unit0|U0|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|Mux1~3_combout\ = (!\Unit0|U2|IRout\(15) & (\Unit0|U2|IRout\(12) & (\Unit0|U2|IRout\(14) & \Unit0|U2|IRout\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U2|IRout\(15),
	datab => \Unit0|U2|IRout\(12),
	datac => \Unit0|U2|IRout\(14),
	datad => \Unit0|U2|IRout\(13),
	combout => \Unit0|U0|Mux1~3_combout\);

-- Location: FF_X63_Y45_N7
\Unit0|U0|state.S_OUTPUT_MEM\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit0|U0|Mux1~3_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sclr => \Unit0|U0|ALT_INV_state.S_DECODE_INST~q\,
	ena => \Unit0|U0|Selector6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U0|state.S_OUTPUT_MEM~q\);

-- Location: FF_X61_Y45_N3
\Unit0|U0|state.S_OUTPUT_MEM_wait\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	asdata => \Unit0|U0|state.S_OUTPUT_MEM~q\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cpu_clk~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U0|state.S_OUTPUT_MEM_wait~q\);

-- Location: LCCOMB_X61_Y45_N4
\Unit0|U0|WideOr11~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|WideOr11~3_combout\ = (!\Unit0|U0|state.S_REG_ADDR_SAVEa~q\ & (!\Unit0|U0|state.S_LONG_LOAD~q\ & (!\Unit0|U0|state.S_LONG_LOAD_wait~q\ & !\Unit0|U0|state.S_OUTPUT_MEM_wait~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|state.S_REG_ADDR_SAVEa~q\,
	datab => \Unit0|U0|state.S_LONG_LOAD~q\,
	datac => \Unit0|U0|state.S_LONG_LOAD_wait~q\,
	datad => \Unit0|U0|state.S_OUTPUT_MEM_wait~q\,
	combout => \Unit0|U0|WideOr11~3_combout\);

-- Location: LCCOMB_X62_Y45_N16
\Unit0|U0|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|Selector6~0_combout\ = (\Unit0|U0|state.S_DECODE_INST~q\) # (\cpu_clk~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Unit0|U0|state.S_DECODE_INST~q\,
	datad => \cpu_clk~input_o\,
	combout => \Unit0|U0|Selector6~0_combout\);

-- Location: LCCOMB_X63_Y45_N10
\Unit0|U0|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|Mux1~1_combout\ = (!\Unit0|U2|IRout\(15) & (!\Unit0|U2|IRout\(12) & (!\Unit0|U2|IRout\(14) & !\Unit0|U2|IRout\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U2|IRout\(15),
	datab => \Unit0|U2|IRout\(12),
	datac => \Unit0|U2|IRout\(14),
	datad => \Unit0|U2|IRout\(13),
	combout => \Unit0|U0|Mux1~1_combout\);

-- Location: FF_X63_Y45_N11
\Unit0|U0|state.S_SHORT_LOAD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit0|U0|Mux1~1_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sclr => \Unit0|U0|ALT_INV_state.S_DECODE_INST~q\,
	ena => \Unit0|U0|Selector6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U0|state.S_SHORT_LOAD~q\);

-- Location: FF_X62_Y45_N9
\Unit0|U0|state.S_SHORT_LOAD_wait\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	asdata => \Unit0|U0|state.S_SHORT_LOAD~q\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cpu_clk~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U0|state.S_SHORT_LOAD_wait~q\);

-- Location: LCCOMB_X63_Y45_N22
\Unit0|U0|Selector56~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|Selector56~0_combout\ = (!\Unit0|U0|state.S_FETCH_INST~q\ & !\Unit0|U0|state.S_REG_ADDR_LOAD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Unit0|U0|state.S_FETCH_INST~q\,
	datad => \Unit0|U0|state.S_REG_ADDR_LOAD~q\,
	combout => \Unit0|U0|Selector56~0_combout\);

-- Location: LCCOMB_X62_Y45_N8
\Unit0|U0|WideOr11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|WideOr11~1_combout\ = (\Unit0|U0|WideOr11~0_combout\ & (!\Unit0|U0|state.S_FETCH_INST_wait~q\ & (!\Unit0|U0|state.S_SHORT_LOAD_wait~q\ & \Unit0|U0|Selector56~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|WideOr11~0_combout\,
	datab => \Unit0|U0|state.S_FETCH_INST_wait~q\,
	datac => \Unit0|U0|state.S_SHORT_LOAD_wait~q\,
	datad => \Unit0|U0|Selector56~0_combout\,
	combout => \Unit0|U0|WideOr11~1_combout\);

-- Location: LCCOMB_X63_Y45_N0
\Unit0|U0|Selector6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|Selector6~1_combout\ = (\Unit0|U0|Selector6~0_combout\) # ((\Unit0|U0|WideOr11~2_combout\ & (\Unit0|U0|WideOr11~3_combout\ & \Unit0|U0|WideOr11~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|WideOr11~2_combout\,
	datab => \Unit0|U0|WideOr11~3_combout\,
	datac => \Unit0|U0|Selector6~0_combout\,
	datad => \Unit0|U0|WideOr11~1_combout\,
	combout => \Unit0|U0|Selector6~1_combout\);

-- Location: FF_X63_Y45_N17
\Unit0|U0|state.S_REG_ADDR_LOAD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit0|U0|Mux1~0_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sclr => \Unit0|U0|ALT_INV_state.S_DECODE_INST~q\,
	ena => \Unit0|U0|Selector6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U0|state.S_REG_ADDR_LOAD~q\);

-- Location: FF_X62_Y48_N17
\Unit0|U0|state.S_REG_ADDR_LOAD_wait\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	asdata => \Unit0|U0|state.S_REG_ADDR_LOAD~q\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cpu_clk~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U0|state.S_REG_ADDR_LOAD_wait~q\);

-- Location: FF_X62_Y48_N9
\Unit0|U0|state.S_ADDa\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	asdata => \Unit0|U0|state.S_ADD~q\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U0|state.S_ADDa~q\);

-- Location: FF_X62_Y48_N21
\Unit0|U0|state.S_MULTa\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	asdata => \Unit0|U0|state.S_MULT~q\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U0|state.S_MULTa~q\);

-- Location: FF_X61_Y46_N31
\Unit0|U0|state.S_SUBTa\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	asdata => \Unit0|U0|state.S_SUBT~q\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U0|state.S_SUBTa~q\);

-- Location: LCCOMB_X62_Y48_N20
\Unit0|U0|Selector56~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|Selector56~1_combout\ = (!\Unit0|U0|state.S_ADDa~q\ & (!\Unit0|U0|state.S_MULTa~q\ & !\Unit0|U0|state.S_SUBTa~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Unit0|U0|state.S_ADDa~q\,
	datac => \Unit0|U0|state.S_MULTa~q\,
	datad => \Unit0|U0|state.S_SUBTa~q\,
	combout => \Unit0|U0|Selector56~1_combout\);

-- Location: LCCOMB_X63_Y46_N0
\Unit0|U0|Mux1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|Mux1~8_combout\ = (\Unit0|U2|IRout\(15) & (\Unit0|U2|IRout\(14) & (!\Unit0|U2|IRout\(13) & !\Unit0|U2|IRout\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U2|IRout\(15),
	datab => \Unit0|U2|IRout\(14),
	datac => \Unit0|U2|IRout\(13),
	datad => \Unit0|U2|IRout\(12),
	combout => \Unit0|U0|Mux1~8_combout\);

-- Location: FF_X63_Y46_N1
\Unit0|U0|state.S_LONG_IMM_LOAD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit0|U0|Mux1~8_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sclr => \Unit0|U0|ALT_INV_state.S_DECODE_INST~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U0|state.S_LONG_IMM_LOAD~q\);

-- Location: LCCOMB_X62_Y48_N24
\Unit0|U0|Selector51~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|Selector51~0_combout\ = (!\Unit0|U0|state.S_IMM_LOAD~q\ & !\Unit0|U0|state.S_LONG_IMM_LOAD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|state.S_IMM_LOAD~q\,
	datad => \Unit0|U0|state.S_LONG_IMM_LOAD~q\,
	combout => \Unit0|U0|Selector51~0_combout\);

-- Location: LCCOMB_X62_Y48_N28
\Unit0|U0|WideOr59~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|WideOr59~0_combout\ = (\Unit0|U0|state.S_REG_ADDR_LOAD_wait~q\) # (((!\Unit0|U0|WideOr5~0_combout\) # (!\Unit0|U0|Selector51~0_combout\)) # (!\Unit0|U0|Selector56~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|state.S_REG_ADDR_LOAD_wait~q\,
	datab => \Unit0|U0|Selector56~1_combout\,
	datac => \Unit0|U0|Selector51~0_combout\,
	datad => \Unit0|U0|WideOr5~0_combout\,
	combout => \Unit0|U0|WideOr59~0_combout\);

-- Location: LCCOMB_X62_Y48_N18
\Unit0|U0|Selector67~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|Selector67~0_combout\ = ((\Unit0|U0|state.S_REG_ADDR_LOAD_wait~q\) # ((\Unit0|U0|RFs_ctrl\(0) & !\Unit0|U0|WideOr59~0_combout\))) # (!\Unit0|U0|WideOr5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|WideOr5~0_combout\,
	datab => \Unit0|U0|state.S_REG_ADDR_LOAD_wait~q\,
	datac => \Unit0|U0|RFs_ctrl\(0),
	datad => \Unit0|U0|WideOr59~0_combout\,
	combout => \Unit0|U0|Selector67~0_combout\);

-- Location: FF_X62_Y48_N19
\Unit0|U0|RFs_ctrl[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit0|U0|Selector67~0_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U0|RFs_ctrl\(0));

-- Location: LCCOMB_X62_Y50_N10
\Unit1|U1|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U1|Mux11~0_combout\ = (\Unit0|U0|RFs_ctrl\(1) & ((\Unit0|U2|dir_addr\(4)) # ((\Unit0|U0|RFs_ctrl\(0))))) # (!\Unit0|U0|RFs_ctrl\(1) & (((!\Unit0|U0|RFs_ctrl\(0) & \Unit1|U3|alu_tmp\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFs_ctrl\(1),
	datab => \Unit0|U2|dir_addr\(4),
	datac => \Unit0|U0|RFs_ctrl\(0),
	datad => \Unit1|U3|alu_tmp\(4),
	combout => \Unit1|U1|Mux11~0_combout\);

-- Location: LCCOMB_X62_Y50_N2
\Unit1|U1|Mux11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U1|Mux11~1_combout\ = (\Unit1|U1|Mux11~0_combout\) # ((\Unit2|altsyncram_component|auto_generated|q_a\(4) & \Unit0|U0|RFs_ctrl\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit2|altsyncram_component|auto_generated|q_a\(4),
	datac => \Unit0|U0|RFs_ctrl\(0),
	datad => \Unit1|U1|Mux11~0_combout\,
	combout => \Unit1|U1|Mux11~1_combout\);

-- Location: LCCOMB_X62_Y48_N12
\Unit0|U0|WideOr58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|WideOr58~combout\ = (\Unit0|U0|state.S_REG_ADDR_LOADb~q\) # (((\Unit0|U0|state.S_SHORT_LOAD~q\) # (\Unit0|U0|state.S_IMM_LOAD~q\)) # (!\Unit0|U0|Selector56~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|state.S_REG_ADDR_LOADb~q\,
	datab => \Unit0|U0|Selector56~1_combout\,
	datac => \Unit0|U0|state.S_SHORT_LOAD~q\,
	datad => \Unit0|U0|state.S_IMM_LOAD~q\,
	combout => \Unit0|U0|WideOr58~combout\);

-- Location: LCCOMB_X63_Y50_N20
\Unit1|U1|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U1|Mux13~0_combout\ = (\Unit0|U0|RFs_ctrl\(1) & ((\Unit0|U0|RFs_ctrl\(0)) # ((\Unit0|U2|dir_addr\(2))))) # (!\Unit0|U0|RFs_ctrl\(1) & (!\Unit0|U0|RFs_ctrl\(0) & (\Unit1|U3|alu_tmp\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFs_ctrl\(1),
	datab => \Unit0|U0|RFs_ctrl\(0),
	datac => \Unit1|U3|alu_tmp\(2),
	datad => \Unit0|U2|dir_addr\(2),
	combout => \Unit1|U1|Mux13~0_combout\);

-- Location: LCCOMB_X63_Y50_N28
\Unit1|U1|Mux13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U1|Mux13~1_combout\ = (\Unit1|U1|Mux13~0_combout\) # ((\Unit2|altsyncram_component|auto_generated|q_a\(2) & \Unit0|U0|RFs_ctrl\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Unit2|altsyncram_component|auto_generated|q_a\(2),
	datac => \Unit0|U0|RFs_ctrl\(0),
	datad => \Unit1|U1|Mux13~0_combout\,
	combout => \Unit1|U1|Mux13~1_combout\);

-- Location: LCCOMB_X66_Y48_N14
\Unit1|U2|Decoder0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Decoder0~22_combout\ = (\Unit1|U2|Decoder0~12_combout\ & \Unit0|U0|RFwa_ctrl\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|Decoder0~12_combout\,
	datad => \Unit0|U0|RFwa_ctrl\(3),
	combout => \Unit1|U2|Decoder0~22_combout\);

-- Location: FF_X67_Y51_N11
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
	ena => \Unit1|U2|Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[14][2]~q\);

-- Location: LCCOMB_X62_Y48_N10
\Unit0|U0|Selector23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|Selector23~0_combout\ = (\cpu_clk~input_o\ & \Unit0|U0|state.S_REG_ADDR_LOAD_wait~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu_clk~input_o\,
	datad => \Unit0|U0|state.S_REG_ADDR_LOAD_wait~q\,
	combout => \Unit0|U0|Selector23~0_combout\);

-- Location: FF_X62_Y48_N15
\Unit0|U0|state.S_REG_ADDR_LOADa\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	asdata => \Unit0|U0|Selector23~0_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U0|state.S_REG_ADDR_LOADa~q\);

-- Location: FF_X62_Y48_N31
\Unit0|U0|state.S_REG_ADDR_LOADb\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	asdata => \Unit0|U0|state.S_REG_ADDR_LOADa~q\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U0|state.S_REG_ADDR_LOADb~q\);

-- Location: LCCOMB_X62_Y48_N22
\Unit0|U0|WideOr57~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|WideOr57~0_combout\ = (((\Unit0|U0|state.S_REG_ADDR_LOADb~q\) # (!\Unit0|U0|WideOr5~0_combout\)) # (!\Unit0|U0|Selector56~1_combout\)) # (!\Unit0|U0|Selector51~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|Selector51~0_combout\,
	datab => \Unit0|U0|Selector56~1_combout\,
	datac => \Unit0|U0|state.S_REG_ADDR_LOADb~q\,
	datad => \Unit0|U0|WideOr5~0_combout\,
	combout => \Unit0|U0|WideOr57~0_combout\);

-- Location: LCCOMB_X66_Y48_N24
\Unit0|U0|Selector65~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|Selector65~0_combout\ = (\Unit0|U2|IRout\(8) & ((\Unit0|U0|WideOr58~combout\) # ((\Unit0|U0|RFwa_ctrl\(0) & !\Unit0|U0|WideOr57~0_combout\)))) # (!\Unit0|U2|IRout\(8) & (((\Unit0|U0|RFwa_ctrl\(0) & !\Unit0|U0|WideOr57~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U2|IRout\(8),
	datab => \Unit0|U0|WideOr58~combout\,
	datac => \Unit0|U0|RFwa_ctrl\(0),
	datad => \Unit0|U0|WideOr57~0_combout\,
	combout => \Unit0|U0|Selector65~0_combout\);

-- Location: FF_X66_Y48_N25
\Unit0|U0|RFwa_ctrl[0]\ : dffeas
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
	q => \Unit0|U0|RFwa_ctrl\(0));

-- Location: LCCOMB_X62_Y48_N6
\Unit0|U0|Selector53~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|Selector53~2_combout\ = (\Unit0|U0|Selector53~1_combout\) # (((\Unit0|U0|state.S_REG_ADDR_LOADb~q\) # (!\Unit0|U0|Selector51~0_combout\)) # (!\Unit0|U0|Selector56~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|Selector53~1_combout\,
	datab => \Unit0|U0|Selector56~1_combout\,
	datac => \Unit0|U0|state.S_REG_ADDR_LOADb~q\,
	datad => \Unit0|U0|Selector51~0_combout\,
	combout => \Unit0|U0|Selector53~2_combout\);

-- Location: FF_X62_Y48_N7
\Unit0|U0|RFwe_ctrl\ : dffeas
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
	q => \Unit0|U0|RFwe_ctrl~q\);

-- Location: LCCOMB_X61_Y45_N28
\Unit0|U0|Selector27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|Selector27~0_combout\ = (\Unit0|U0|state.S_REG_ADDR_SAVE~q\) # ((!\cpu_clk~input_o\ & \Unit0|U0|state.S_REG_ADDR_SAVEa~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_clk~input_o\,
	datac => \Unit0|U0|state.S_REG_ADDR_SAVEa~q\,
	datad => \Unit0|U0|state.S_REG_ADDR_SAVE~q\,
	combout => \Unit0|U0|Selector27~0_combout\);

-- Location: FF_X61_Y45_N23
\Unit0|U0|state.S_REG_ADDR_SAVEa\ : dffeas
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
	q => \Unit0|U0|state.S_REG_ADDR_SAVEa~q\);

-- Location: FF_X61_Y45_N13
\Unit0|U0|state.S_REG_ADDR_SAVE_wait\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	asdata => \Unit0|U0|state.S_REG_ADDR_SAVEa~q\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cpu_clk~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U0|state.S_REG_ADDR_SAVE_wait~q\);

-- Location: LCCOMB_X61_Y46_N10
\Unit0|U0|Selector28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|Selector28~0_combout\ = (\Unit0|U0|state.S_REG_ADDR_SAVE_wait~q\ & \cpu_clk~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Unit0|U0|state.S_REG_ADDR_SAVE_wait~q\,
	datad => \cpu_clk~input_o\,
	combout => \Unit0|U0|Selector28~0_combout\);

-- Location: FF_X61_Y46_N21
\Unit0|U0|state.S_REG_ADDR_SAVEb\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	asdata => \Unit0|U0|Selector28~0_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U0|state.S_REG_ADDR_SAVEb~q\);

-- Location: FF_X62_Y45_N7
\Unit0|U0|state.S_LONG_SAVE_wait\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	asdata => \Unit0|U0|state.S_LONG_SAVE_a~q\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cpu_clk~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U0|state.S_LONG_SAVE_wait~q\);

-- Location: LCCOMB_X62_Y45_N24
\Unit0|U0|Selector21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|Selector21~0_combout\ = (\Unit0|U0|state.S_LONG_SAVE_wait~q\ & \cpu_clk~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Unit0|U0|state.S_LONG_SAVE_wait~q\,
	datac => \cpu_clk~input_o\,
	combout => \Unit0|U0|Selector21~0_combout\);

-- Location: FF_X61_Y46_N9
\Unit0|U0|state.S_LONG_SAVE_b\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	asdata => \Unit0|U0|Selector21~0_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U0|state.S_LONG_SAVE_b~q\);

-- Location: LCCOMB_X61_Y46_N18
\Unit0|U0|state.S_SHORT_SAVEb~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|state.S_SHORT_SAVEb~feeder_combout\ = \Unit0|U0|Selector12~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|Selector12~0_combout\,
	combout => \Unit0|U0|state.S_SHORT_SAVEb~feeder_combout\);

-- Location: FF_X61_Y46_N19
\Unit0|U0|state.S_SHORT_SAVEb\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit0|U0|state.S_SHORT_SAVEb~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U0|state.S_SHORT_SAVEb~q\);

-- Location: LCCOMB_X61_Y46_N8
\Unit0|U0|Selector59~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|Selector59~0_combout\ = (!\Unit0|U0|state.S_REG_ADDR_SAVEb~q\ & (!\Unit0|U0|state.S_LONG_SAVE_b~q\ & !\Unit0|U0|state.S_SHORT_SAVEb~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Unit0|U0|state.S_REG_ADDR_SAVEb~q\,
	datac => \Unit0|U0|state.S_LONG_SAVE_b~q\,
	datad => \Unit0|U0|state.S_SHORT_SAVEb~q\,
	combout => \Unit0|U0|Selector59~0_combout\);

-- Location: LCCOMB_X63_Y45_N28
\Unit0|U0|Selector57~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|Selector57~0_combout\ = (\Unit0|U0|Selector59~1_combout\ & (!\Unit0|U0|state.S_REG_ADDR_SAVE~q\ & (!\Unit0|U0|Ms_ctrl\(1) & \Unit0|U0|WideOr47~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|Selector59~1_combout\,
	datab => \Unit0|U0|state.S_REG_ADDR_SAVE~q\,
	datac => \Unit0|U0|Ms_ctrl\(1),
	datad => \Unit0|U0|WideOr47~0_combout\,
	combout => \Unit0|U0|Selector57~0_combout\);

-- Location: LCCOMB_X63_Y45_N8
\Unit0|U0|Selector57~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|Selector57~1_combout\ = (!\Unit0|U0|state.S_FETCH_INST~q\ & (\Unit0|U0|Selector59~0_combout\ & !\Unit0|U0|Selector57~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|state.S_FETCH_INST~q\,
	datac => \Unit0|U0|Selector59~0_combout\,
	datad => \Unit0|U0|Selector57~0_combout\,
	combout => \Unit0|U0|Selector57~1_combout\);

-- Location: FF_X63_Y45_N9
\Unit0|U0|Ms_ctrl[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit0|U0|Selector57~1_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U0|Ms_ctrl\(1));

-- Location: LCCOMB_X61_Y50_N0
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

-- Location: LCCOMB_X65_Y50_N26
\Unit0|U2|dir_addr[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U2|dir_addr\(0) = (GLOBAL(\Unit0|U0|IRld_ctrl~clkctrl_outclk\) & ((\Unit2|altsyncram_component|auto_generated|q_a\(0)))) # (!GLOBAL(\Unit0|U0|IRld_ctrl~clkctrl_outclk\) & (\Unit0|U2|dir_addr\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U2|dir_addr\(0),
	datac => \Unit0|U0|IRld_ctrl~clkctrl_outclk\,
	datad => \Unit2|altsyncram_component|auto_generated|q_a\(0),
	combout => \Unit0|U2|dir_addr\(0));

-- Location: LCCOMB_X62_Y46_N8
\Unit0|U0|state.S_INIT~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|state.S_INIT~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \Unit0|U0|state.S_INIT~feeder_combout\);

-- Location: FF_X62_Y46_N9
\Unit0|U0|state.S_INIT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit0|U0|state.S_INIT~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U0|state.S_INIT~q\);

-- Location: LCCOMB_X62_Y46_N0
\Unit0|U0|PCclr_ctrl~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|PCclr_ctrl~0_combout\ = (\Unit0|U0|PCclr_ctrl~q\) # (!\Unit0|U0|state.S_INIT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Unit0|U0|state.S_INIT~q\,
	datac => \Unit0|U0|PCclr_ctrl~q\,
	combout => \Unit0|U0|PCclr_ctrl~0_combout\);

-- Location: FF_X62_Y46_N1
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

-- Location: LCCOMB_X62_Y45_N22
\Unit0|U0|Selector50~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|Selector50~0_combout\ = (\Unit0|U0|state.S_FETCH_INSTa~q\) # ((!\Unit0|U0|state.S_FETCH_INSTb~q\ & (!\Unit0|U0|state.S_FETCH_INST~q\ & \Unit0|U0|PCinc_ctrl~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|state.S_FETCH_INSTb~q\,
	datab => \Unit0|U0|state.S_FETCH_INST~q\,
	datac => \Unit0|U0|PCinc_ctrl~q\,
	datad => \Unit0|U0|state.S_FETCH_INSTa~q\,
	combout => \Unit0|U0|Selector50~0_combout\);

-- Location: FF_X62_Y45_N23
\Unit0|U0|PCinc_ctrl\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit0|U0|Selector50~0_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U0|PCinc_ctrl~q\);

-- Location: LCCOMB_X70_Y50_N18
\Unit1|U3|Mux17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|Mux17~1_combout\ = (\Unit0|U0|ALUs_ctrl\(2)) # ((\Unit0|U0|ALUs_ctrl\(0) & !\Unit0|U0|ALUs_ctrl\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|ALUs_ctrl\(0),
	datac => \Unit0|U0|ALUs_ctrl\(1),
	datad => \Unit0|U0|ALUs_ctrl\(2),
	combout => \Unit1|U3|Mux17~1_combout\);

-- Location: LCCOMB_X63_Y52_N28
\Unit0|U2|dir_addr[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U2|dir_addr\(3) = (GLOBAL(\Unit0|U0|IRld_ctrl~clkctrl_outclk\) & ((\Unit2|altsyncram_component|auto_generated|q_a\(3)))) # (!GLOBAL(\Unit0|U0|IRld_ctrl~clkctrl_outclk\) & (\Unit0|U2|dir_addr\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Unit0|U2|dir_addr\(3),
	datac => \Unit2|altsyncram_component|auto_generated|q_a\(3),
	datad => \Unit0|U0|IRld_ctrl~clkctrl_outclk\,
	combout => \Unit0|U2|dir_addr\(3));

-- Location: LCCOMB_X63_Y45_N26
\Unit0|U0|Selector59~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|Selector59~1_combout\ = (\Unit0|U0|Selector56~0_combout\ & (\Unit0|U0|WideOr5~0_combout\ & (\Unit0|U0|Selector59~0_combout\ & !\Unit0|U0|state.S_OUTPUT_MEM~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|Selector56~0_combout\,
	datab => \Unit0|U0|WideOr5~0_combout\,
	datac => \Unit0|U0|Selector59~0_combout\,
	datad => \Unit0|U0|state.S_OUTPUT_MEM~q\,
	combout => \Unit0|U0|Selector59~1_combout\);

-- Location: LCCOMB_X63_Y45_N14
\Unit0|U0|Selector58~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|Selector58~0_combout\ = (\Unit0|U0|WideOr47~0_combout\ & (!\Unit0|U0|state.S_REG_ADDR_SAVE~q\ & (\Unit0|U0|Selector59~1_combout\ & \Unit0|U0|Ms_ctrl\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|WideOr47~0_combout\,
	datab => \Unit0|U0|state.S_REG_ADDR_SAVE~q\,
	datac => \Unit0|U0|Selector59~1_combout\,
	datad => \Unit0|U0|Ms_ctrl\(0),
	combout => \Unit0|U0|Selector58~0_combout\);

-- Location: LCCOMB_X63_Y45_N18
\Unit0|U0|Selector58~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|Selector58~1_combout\ = (((\Unit0|U0|Selector58~0_combout\) # (\Unit0|U0|state.S_OUTPUT_MEM~q\)) # (!\Unit0|U0|WideOr5~0_combout\)) # (!\Unit0|U0|WideOr47~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|WideOr47~0_combout\,
	datab => \Unit0|U0|WideOr5~0_combout\,
	datac => \Unit0|U0|Selector58~0_combout\,
	datad => \Unit0|U0|state.S_OUTPUT_MEM~q\,
	combout => \Unit0|U0|Selector58~1_combout\);

-- Location: FF_X63_Y45_N19
\Unit0|U0|Ms_ctrl[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit0|U0|Selector58~1_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U0|Ms_ctrl\(0));

-- Location: LCCOMB_X61_Y50_N4
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

-- Location: LCCOMB_X61_Y50_N6
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

-- Location: LCCOMB_X62_Y50_N24
\Unit0|U1|tmp_PC~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U1|tmp_PC~18_combout\ = \Unit0|U0|PCinc_ctrl~q\ $ (((!\Unit1|U3|alu_tmp\(15) & \Unit1|U3|ALUz~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U3|alu_tmp\(15),
	datac => \Unit0|U0|PCinc_ctrl~q\,
	datad => \Unit1|U3|ALUz~4_combout\,
	combout => \Unit0|U1|tmp_PC~18_combout\);

-- Location: FF_X61_Y50_N7
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
	sload => \Unit0|U1|process_0~0_combout\,
	ena => \Unit0|U1|tmp_PC~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U1|tmp_PC\(3));

-- Location: LCCOMB_X63_Y52_N0
\Unit0|U3|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U3|Mux12~0_combout\ = (\Unit0|U0|Ms_ctrl\(1) & (\Unit1|U2|RFr1[3]~_Duplicate_1_q\ & (!\Unit0|U0|Ms_ctrl\(0)))) # (!\Unit0|U0|Ms_ctrl\(1) & (((\Unit0|U0|Ms_ctrl\(0)) # (\Unit0|U1|tmp_PC\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|RFr1[3]~_Duplicate_1_q\,
	datab => \Unit0|U0|Ms_ctrl\(1),
	datac => \Unit0|U0|Ms_ctrl\(0),
	datad => \Unit0|U1|tmp_PC\(3),
	combout => \Unit0|U3|Mux12~0_combout\);

-- Location: LCCOMB_X63_Y52_N26
\Unit0|U3|Mux12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U3|Mux12~1_combout\ = (\Unit0|U0|Ms_ctrl\(0) & ((\Unit0|U3|Mux12~0_combout\ & ((\Unit0|U2|IRout\(11)))) # (!\Unit0|U3|Mux12~0_combout\ & (\Unit0|U2|dir_addr\(3))))) # (!\Unit0|U0|Ms_ctrl\(0) & (((\Unit0|U3|Mux12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|Ms_ctrl\(0),
	datab => \Unit0|U2|dir_addr\(3),
	datac => \Unit0|U2|IRout\(11),
	datad => \Unit0|U3|Mux12~0_combout\,
	combout => \Unit0|U3|Mux12~1_combout\);

-- Location: LCCOMB_X61_Y50_N8
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

-- Location: FF_X61_Y50_N9
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
	sload => \Unit0|U1|process_0~0_combout\,
	ena => \Unit0|U1|tmp_PC~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U1|tmp_PC\(4));

-- Location: LCCOMB_X67_Y50_N0
\Unit0|U3|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U3|Mux11~0_combout\ = (\Unit0|U0|Ms_ctrl\(1) & ((\Unit0|U0|Ms_ctrl\(0) & ((\Unit0|U2|dir_addr\(4)))) # (!\Unit0|U0|Ms_ctrl\(0) & (\Unit1|U2|RFr1[4]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|RFr1[4]~_Duplicate_1_q\,
	datab => \Unit0|U0|Ms_ctrl\(0),
	datac => \Unit0|U2|dir_addr\(4),
	datad => \Unit0|U0|Ms_ctrl\(1),
	combout => \Unit0|U3|Mux11~0_combout\);

-- Location: LCCOMB_X67_Y50_N2
\Unit0|U3|Mux11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U3|Mux11~1_combout\ = (\Unit0|U3|Mux11~0_combout\) # ((!\Unit0|U0|Ms_ctrl\(1) & (\Unit0|U1|tmp_PC\(4) & !\Unit0|U0|Ms_ctrl\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|Ms_ctrl\(1),
	datab => \Unit0|U1|tmp_PC\(4),
	datac => \Unit0|U0|Ms_ctrl\(0),
	datad => \Unit0|U3|Mux11~0_combout\,
	combout => \Unit0|U3|Mux11~1_combout\);

-- Location: FF_X65_Y50_N17
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

-- Location: FF_X67_Y51_N29
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
	ena => \Unit1|U2|Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[14][6]~q\);

-- Location: LCCOMB_X66_Y48_N2
\Unit1|U2|Decoder0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Decoder0~8_combout\ = (!\Unit0|U0|RFwa_ctrl\(1) & (!\Unit0|U0|RFwa_ctrl\(0) & (\Unit0|U0|RFwe_ctrl~q\ & \Unit0|U0|RFwa_ctrl\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFwa_ctrl\(1),
	datab => \Unit0|U0|RFwa_ctrl\(0),
	datac => \Unit0|U0|RFwe_ctrl~q\,
	datad => \Unit0|U0|RFwa_ctrl\(2),
	combout => \Unit1|U2|Decoder0~8_combout\);

-- Location: LCCOMB_X66_Y52_N24
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

-- Location: FF_X68_Y51_N23
\Unit1|U2|tmp_rf[12][6]\ : dffeas
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
	q => \Unit1|U2|tmp_rf[12][6]~q\);

-- Location: FF_X69_Y53_N15
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
	ena => \Unit1|U2|Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[13][6]~q\);

-- Location: LCCOMB_X68_Y51_N22
\Unit1|U2|Mux9~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux9~7_combout\ = (\Unit0|U0|RFr1a_ctrl\(1) & (\Unit0|U0|RFr1a_ctrl\(0))) # (!\Unit0|U0|RFr1a_ctrl\(1) & ((\Unit0|U0|RFr1a_ctrl\(0) & ((\Unit1|U2|tmp_rf[13][6]~q\))) # (!\Unit0|U0|RFr1a_ctrl\(0) & (\Unit1|U2|tmp_rf[12][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(1),
	datab => \Unit0|U0|RFr1a_ctrl\(0),
	datac => \Unit1|U2|tmp_rf[12][6]~q\,
	datad => \Unit1|U2|tmp_rf[13][6]~q\,
	combout => \Unit1|U2|Mux9~7_combout\);

-- Location: LCCOMB_X67_Y51_N28
\Unit1|U2|Mux9~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux9~8_combout\ = (\Unit0|U0|RFr1a_ctrl\(1) & ((\Unit1|U2|Mux9~7_combout\ & (\Unit1|U2|tmp_rf[15][6]~q\)) # (!\Unit1|U2|Mux9~7_combout\ & ((\Unit1|U2|tmp_rf[14][6]~q\))))) # (!\Unit0|U0|RFr1a_ctrl\(1) & (((\Unit1|U2|Mux9~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(1),
	datab => \Unit1|U2|tmp_rf[15][6]~q\,
	datac => \Unit1|U2|tmp_rf[14][6]~q\,
	datad => \Unit1|U2|Mux9~7_combout\,
	combout => \Unit1|U2|Mux9~8_combout\);

-- Location: LCCOMB_X69_Y46_N22
\Unit0|U0|WideOr65\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|WideOr65~combout\ = (\Unit0|U0|state.S_MULT~q\) # ((\Unit0|U0|state.S_REG_ADDR_LOAD~q\) # ((\Unit0|U0|state.S_ADD~q\) # (\Unit0|U0|state.S_SUBT~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|state.S_MULT~q\,
	datab => \Unit0|U0|state.S_REG_ADDR_LOAD~q\,
	datac => \Unit0|U0|state.S_ADD~q\,
	datad => \Unit0|U0|state.S_SUBT~q\,
	combout => \Unit0|U0|WideOr65~combout\);

-- Location: LCCOMB_X65_Y53_N4
\Unit0|U0|Selector69~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|Selector69~0_combout\ = (\Unit0|U0|WideOr65~combout\ & (\Unit0|U2|dir_addr\(6))) # (!\Unit0|U0|WideOr65~combout\ & (((!\Unit0|U0|state.S_LONG_SAVE~q\ & \Unit0|U2|IRout\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U2|dir_addr\(6),
	datab => \Unit0|U0|state.S_LONG_SAVE~q\,
	datac => \Unit0|U2|IRout\(10),
	datad => \Unit0|U0|WideOr65~combout\,
	combout => \Unit0|U0|Selector69~0_combout\);

-- Location: LCCOMB_X69_Y46_N2
\Unit0|U0|RFr1a_ctrl[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|RFr1a_ctrl[0]~0_combout\ = (!\cpu_rst~input_o\ & (((\Unit0|U0|state.S_REG_ADDR_LOAD~q\) # (!\Unit0|U0|Selector56~2_combout\)) # (!\Unit0|U0|WideOr63~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|WideOr63~0_combout\,
	datab => \Unit0|U0|state.S_REG_ADDR_LOAD~q\,
	datac => \cpu_rst~input_o\,
	datad => \Unit0|U0|Selector56~2_combout\,
	combout => \Unit0|U0|RFr1a_ctrl[0]~0_combout\);

-- Location: FF_X65_Y53_N5
\Unit0|U0|RFr1a_ctrl[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit0|U0|Selector69~0_combout\,
	ena => \Unit0|U0|RFr1a_ctrl[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U0|RFr1a_ctrl\(2));

-- Location: LCCOMB_X67_Y54_N18
\Unit1|U2|tmp_rf[2][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[2][6]~feeder_combout\ = \Unit1|U1|Mux9~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|U1|Mux9~1_combout\,
	combout => \Unit1|U2|tmp_rf[2][6]~feeder_combout\);

-- Location: LCCOMB_X66_Y48_N22
\Unit1|U2|Decoder0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Decoder0~4_combout\ = (\Unit0|U0|RFwa_ctrl\(1) & (!\Unit0|U0|RFwa_ctrl\(0) & (\Unit0|U0|RFwe_ctrl~q\ & !\Unit0|U0|RFwa_ctrl\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFwa_ctrl\(1),
	datab => \Unit0|U0|RFwa_ctrl\(0),
	datac => \Unit0|U0|RFwe_ctrl~q\,
	datad => \Unit0|U0|RFwa_ctrl\(2),
	combout => \Unit1|U2|Decoder0~4_combout\);

-- Location: LCCOMB_X65_Y52_N6
\Unit1|U2|Decoder0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Decoder0~5_combout\ = (!\Unit0|U0|RFwa_ctrl\(3) & \Unit1|U2|Decoder0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Unit0|U0|RFwa_ctrl\(3),
	datad => \Unit1|U2|Decoder0~4_combout\,
	combout => \Unit1|U2|Decoder0~5_combout\);

-- Location: FF_X67_Y54_N19
\Unit1|U2|tmp_rf[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[2][6]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[2][6]~q\);

-- Location: LCCOMB_X66_Y48_N16
\Unit1|U2|Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Decoder0~0_combout\ = (!\Unit0|U0|RFwa_ctrl\(1) & (!\Unit0|U0|RFwa_ctrl\(0) & (\Unit0|U0|RFwe_ctrl~q\ & !\Unit0|U0|RFwa_ctrl\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFwa_ctrl\(1),
	datab => \Unit0|U0|RFwa_ctrl\(0),
	datac => \Unit0|U0|RFwe_ctrl~q\,
	datad => \Unit0|U0|RFwa_ctrl\(2),
	combout => \Unit1|U2|Decoder0~0_combout\);

-- Location: LCCOMB_X66_Y52_N30
\Unit1|U2|Decoder0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Decoder0~1_combout\ = (!\Unit0|U0|RFwa_ctrl\(3) & \Unit1|U2|Decoder0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFwa_ctrl\(3),
	datad => \Unit1|U2|Decoder0~0_combout\,
	combout => \Unit1|U2|Decoder0~1_combout\);

-- Location: FF_X66_Y54_N3
\Unit1|U2|tmp_rf[0][6]\ : dffeas
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
	ena => \Unit1|U2|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[0][6]~q\);

-- Location: LCCOMB_X66_Y54_N2
\Unit1|U2|Mux9~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux9~4_combout\ = (\Unit0|U0|RFr1a_ctrl\(0) & (((\Unit0|U0|RFr1a_ctrl\(1))))) # (!\Unit0|U0|RFr1a_ctrl\(0) & ((\Unit0|U0|RFr1a_ctrl\(1) & (\Unit1|U2|tmp_rf[2][6]~q\)) # (!\Unit0|U0|RFr1a_ctrl\(1) & ((\Unit1|U2|tmp_rf[0][6]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(0),
	datab => \Unit1|U2|tmp_rf[2][6]~q\,
	datac => \Unit1|U2|tmp_rf[0][6]~q\,
	datad => \Unit0|U0|RFr1a_ctrl\(1),
	combout => \Unit1|U2|Mux9~4_combout\);

-- Location: LCCOMB_X66_Y48_N8
\Unit1|U2|Decoder0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Decoder0~6_combout\ = (\Unit0|U0|RFwa_ctrl\(1) & (\Unit0|U0|RFwa_ctrl\(0) & (\Unit0|U0|RFwe_ctrl~q\ & !\Unit0|U0|RFwa_ctrl\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFwa_ctrl\(1),
	datab => \Unit0|U0|RFwa_ctrl\(0),
	datac => \Unit0|U0|RFwe_ctrl~q\,
	datad => \Unit0|U0|RFwa_ctrl\(2),
	combout => \Unit1|U2|Decoder0~6_combout\);

-- Location: LCCOMB_X63_Y51_N10
\Unit1|U2|Decoder0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Decoder0~7_combout\ = (!\Unit0|U0|RFwa_ctrl\(3) & \Unit1|U2|Decoder0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Unit0|U0|RFwa_ctrl\(3),
	datad => \Unit1|U2|Decoder0~6_combout\,
	combout => \Unit1|U2|Decoder0~7_combout\);

-- Location: FF_X66_Y54_N11
\Unit1|U2|tmp_rf[3][6]\ : dffeas
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
	q => \Unit1|U2|tmp_rf[3][6]~q\);

-- Location: LCCOMB_X68_Y53_N0
\Unit1|U2|tmp_rf[1][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[1][6]~feeder_combout\ = \Unit1|U1|Mux9~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Unit1|U1|Mux9~1_combout\,
	combout => \Unit1|U2|tmp_rf[1][6]~feeder_combout\);

-- Location: LCCOMB_X66_Y48_N10
\Unit1|U2|Decoder0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Decoder0~2_combout\ = (!\Unit0|U0|RFwa_ctrl\(1) & (\Unit0|U0|RFwa_ctrl\(0) & (\Unit0|U0|RFwe_ctrl~q\ & !\Unit0|U0|RFwa_ctrl\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFwa_ctrl\(1),
	datab => \Unit0|U0|RFwa_ctrl\(0),
	datac => \Unit0|U0|RFwe_ctrl~q\,
	datad => \Unit0|U0|RFwa_ctrl\(2),
	combout => \Unit1|U2|Decoder0~2_combout\);

-- Location: LCCOMB_X66_Y48_N20
\Unit1|U2|Decoder0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Decoder0~3_combout\ = (!\Unit0|U0|RFwa_ctrl\(3) & \Unit1|U2|Decoder0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFwa_ctrl\(3),
	datad => \Unit1|U2|Decoder0~2_combout\,
	combout => \Unit1|U2|Decoder0~3_combout\);

-- Location: FF_X68_Y53_N1
\Unit1|U2|tmp_rf[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[1][6]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[1][6]~q\);

-- Location: LCCOMB_X66_Y54_N10
\Unit1|U2|Mux9~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux9~5_combout\ = (\Unit0|U0|RFr1a_ctrl\(0) & ((\Unit1|U2|Mux9~4_combout\ & (\Unit1|U2|tmp_rf[3][6]~q\)) # (!\Unit1|U2|Mux9~4_combout\ & ((\Unit1|U2|tmp_rf[1][6]~q\))))) # (!\Unit0|U0|RFr1a_ctrl\(0) & (\Unit1|U2|Mux9~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(0),
	datab => \Unit1|U2|Mux9~4_combout\,
	datac => \Unit1|U2|tmp_rf[3][6]~q\,
	datad => \Unit1|U2|tmp_rf[1][6]~q\,
	combout => \Unit1|U2|Mux9~5_combout\);

-- Location: LCCOMB_X66_Y48_N4
\Unit1|U2|Decoder0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Decoder0~17_combout\ = (\Unit0|U0|RFwa_ctrl\(3) & \Unit1|U2|Decoder0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFwa_ctrl\(3),
	datad => \Unit1|U2|Decoder0~2_combout\,
	combout => \Unit1|U2|Decoder0~17_combout\);

-- Location: FF_X68_Y50_N25
\Unit1|U2|tmp_rf[9][6]\ : dffeas
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
	q => \Unit1|U2|tmp_rf[9][6]~q\);

-- Location: LCCOMB_X65_Y51_N12
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

-- Location: LCCOMB_X65_Y52_N18
\Unit1|U2|Decoder0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Decoder0~18_combout\ = (\Unit0|U0|RFwa_ctrl\(3) & \Unit1|U2|Decoder0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Unit0|U0|RFwa_ctrl\(3),
	datad => \Unit1|U2|Decoder0~4_combout\,
	combout => \Unit1|U2|Decoder0~18_combout\);

-- Location: FF_X65_Y51_N13
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
	ena => \Unit1|U2|Decoder0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[10][6]~q\);

-- Location: LCCOMB_X68_Y51_N10
\Unit1|U2|Mux9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux9~2_combout\ = (\Unit0|U0|RFr1a_ctrl\(0) & (((\Unit0|U0|RFr1a_ctrl\(1))))) # (!\Unit0|U0|RFr1a_ctrl\(0) & ((\Unit0|U0|RFr1a_ctrl\(1) & ((\Unit1|U2|tmp_rf[10][6]~q\))) # (!\Unit0|U0|RFr1a_ctrl\(1) & (\Unit1|U2|tmp_rf[8][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[8][6]~q\,
	datab => \Unit1|U2|tmp_rf[10][6]~q\,
	datac => \Unit0|U0|RFr1a_ctrl\(0),
	datad => \Unit0|U0|RFr1a_ctrl\(1),
	combout => \Unit1|U2|Mux9~2_combout\);

-- Location: LCCOMB_X68_Y50_N14
\Unit1|U2|Mux9~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux9~3_combout\ = (\Unit0|U0|RFr1a_ctrl\(0) & ((\Unit1|U2|Mux9~2_combout\ & ((\Unit1|U2|tmp_rf[11][6]~q\))) # (!\Unit1|U2|Mux9~2_combout\ & (\Unit1|U2|tmp_rf[9][6]~q\)))) # (!\Unit0|U0|RFr1a_ctrl\(0) & (((\Unit1|U2|Mux9~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(0),
	datab => \Unit1|U2|tmp_rf[9][6]~q\,
	datac => \Unit1|U2|tmp_rf[11][6]~q\,
	datad => \Unit1|U2|Mux9~2_combout\,
	combout => \Unit1|U2|Mux9~3_combout\);

-- Location: LCCOMB_X67_Y51_N2
\Unit1|U2|Mux9~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux9~6_combout\ = (\Unit0|U0|RFr1a_ctrl\(3) & (((\Unit0|U0|RFr1a_ctrl\(2)) # (\Unit1|U2|Mux9~3_combout\)))) # (!\Unit0|U0|RFr1a_ctrl\(3) & (\Unit1|U2|Mux9~5_combout\ & (!\Unit0|U0|RFr1a_ctrl\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(3),
	datab => \Unit1|U2|Mux9~5_combout\,
	datac => \Unit0|U0|RFr1a_ctrl\(2),
	datad => \Unit1|U2|Mux9~3_combout\,
	combout => \Unit1|U2|Mux9~6_combout\);

-- Location: LCCOMB_X67_Y51_N20
\Unit1|U2|Mux9~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux9~9_combout\ = (\Unit0|U0|RFr1a_ctrl\(2) & ((\Unit1|U2|Mux9~6_combout\ & ((\Unit1|U2|Mux9~8_combout\))) # (!\Unit1|U2|Mux9~6_combout\ & (\Unit1|U2|Mux9~1_combout\)))) # (!\Unit0|U0|RFr1a_ctrl\(2) & (((\Unit1|U2|Mux9~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|Mux9~1_combout\,
	datab => \Unit1|U2|Mux9~8_combout\,
	datac => \Unit0|U0|RFr1a_ctrl\(2),
	datad => \Unit1|U2|Mux9~6_combout\,
	combout => \Unit1|U2|Mux9~9_combout\);

-- Location: LCCOMB_X67_Y51_N4
\Unit1|U2|RFr1[6]~_Duplicate_1feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|RFr1[6]~_Duplicate_1feeder_combout\ = \Unit1|U2|Mux9~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|U2|Mux9~9_combout\,
	combout => \Unit1|U2|RFr1[6]~_Duplicate_1feeder_combout\);

-- Location: LCCOMB_X62_Y48_N16
\Unit0|U0|Selector55~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|Selector55~0_combout\ = (\Unit0|U0|RFr1e_ctrl~q\ & (!\Unit0|U0|state.S_FETCH_INST~q\ & (!\Unit0|U0|state.S_REG_ADDR_LOAD_wait~q\ & \Unit0|U0|Selector56~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1e_ctrl~q\,
	datab => \Unit0|U0|state.S_FETCH_INST~q\,
	datac => \Unit0|U0|state.S_REG_ADDR_LOAD_wait~q\,
	datad => \Unit0|U0|Selector56~1_combout\,
	combout => \Unit0|U0|Selector55~0_combout\);

-- Location: LCCOMB_X69_Y46_N26
\Unit0|U0|Selector55~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|Selector55~1_combout\ = (\Unit0|U0|state.S_REG_ADDR_LOAD~q\) # ((\Unit0|U0|Selector55~0_combout\) # (!\Unit0|U0|WideOr63~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Unit0|U0|state.S_REG_ADDR_LOAD~q\,
	datac => \Unit0|U0|Selector55~0_combout\,
	datad => \Unit0|U0|WideOr63~1_combout\,
	combout => \Unit0|U0|Selector55~1_combout\);

-- Location: FF_X69_Y46_N27
\Unit0|U0|RFr1e_ctrl\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit0|U0|Selector55~1_combout\,
	ena => \ALT_INV_cpu_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U0|RFr1e_ctrl~q\);

-- Location: FF_X67_Y51_N5
\Unit1|U2|RFr1[6]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|RFr1[6]~_Duplicate_1feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit0|U0|RFr1e_ctrl~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|RFr1[6]~_Duplicate_1_q\);

-- Location: LCCOMB_X65_Y50_N8
\Unit0|U3|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U3|Mux9~0_combout\ = (\Unit0|U0|Ms_ctrl\(1) & ((\Unit0|U0|Ms_ctrl\(0) & (\Unit0|U2|dir_addr\(6))) # (!\Unit0|U0|Ms_ctrl\(0) & ((\Unit1|U2|RFr1[6]~_Duplicate_1_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U2|dir_addr\(6),
	datab => \Unit1|U2|RFr1[6]~_Duplicate_1_q\,
	datac => \Unit0|U0|Ms_ctrl\(1),
	datad => \Unit0|U0|Ms_ctrl\(0),
	combout => \Unit0|U3|Mux9~0_combout\);

-- Location: LCCOMB_X65_Y50_N10
\Unit0|U3|Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U3|Mux9~1_combout\ = (\Unit0|U3|Mux9~0_combout\) # ((\Unit0|U1|tmp_PC\(6) & (!\Unit0|U0|Ms_ctrl\(0) & !\Unit0|U0|Ms_ctrl\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U1|tmp_PC\(6),
	datab => \Unit0|U0|Ms_ctrl\(0),
	datac => \Unit0|U3|Mux9~0_combout\,
	datad => \Unit0|U0|Ms_ctrl\(1),
	combout => \Unit0|U3|Mux9~1_combout\);

-- Location: LCCOMB_X70_Y50_N10
\Unit1|U3|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|Mux1~0_combout\ = (!\Unit0|U0|ALUs_ctrl\(0) & (!\Unit0|U0|ALUs_ctrl\(1) & \Unit0|U0|ALUs_ctrl\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|ALUs_ctrl\(0),
	datac => \Unit0|U0|ALUs_ctrl\(1),
	datad => \Unit0|U0|ALUs_ctrl\(2),
	combout => \Unit1|U3|Mux1~0_combout\);

-- Location: CLKCTRL_G14
\Unit1|U3|Mux1~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Unit1|U3|Mux1~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Unit1|U3|Mux1~0clkctrl_outclk\);

-- Location: LCCOMB_X62_Y49_N16
\Unit1|U3|mult_result[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|mult_result\(7) = (GLOBAL(\Unit1|U3|Mux1~0clkctrl_outclk\) & (\Unit1|U3|Mult0|auto_generated|mac_out2~DATAOUT7\)) # (!GLOBAL(\Unit1|U3|Mux1~0clkctrl_outclk\) & ((\Unit1|U3|mult_result\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U3|Mult0|auto_generated|mac_out2~DATAOUT7\,
	datac => \Unit1|U3|Mux1~0clkctrl_outclk\,
	datad => \Unit1|U3|mult_result\(7),
	combout => \Unit1|U3|mult_result\(7));

-- Location: LCCOMB_X65_Y53_N8
\Unit0|U0|Selector78~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|Selector78~0_combout\ = (\Unit0|U0|WideOr0~0_combout\ & ((\Unit0|U2|dir_addr\(4)))) # (!\Unit0|U0|WideOr0~0_combout\ & (\Unit0|U2|dir_addr\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U2|dir_addr\(0),
	datab => \Unit0|U2|dir_addr\(4),
	datad => \Unit0|U0|WideOr0~0_combout\,
	combout => \Unit0|U0|Selector78~0_combout\);

-- Location: LCCOMB_X69_Y46_N20
\Unit0|U0|RFr2a_ctrl[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|RFr2a_ctrl[0]~0_combout\ = (!\cpu_rst~input_o\ & !\Unit0|U0|Selector56~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cpu_rst~input_o\,
	datad => \Unit0|U0|Selector56~2_combout\,
	combout => \Unit0|U0|RFr2a_ctrl[0]~0_combout\);

-- Location: FF_X65_Y53_N9
\Unit0|U0|RFr2a_ctrl[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit0|U0|Selector78~0_combout\,
	ena => \Unit0|U0|RFr2a_ctrl[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U0|RFr2a_ctrl\(0));

-- Location: FF_X68_Y50_N23
\Unit1|U2|tmp_rf[9][5]\ : dffeas
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
	q => \Unit1|U2|tmp_rf[9][5]~q\);

-- Location: LCCOMB_X66_Y53_N30
\Unit1|U2|tmp_rf[5][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[5][5]~feeder_combout\ = \Unit1|U1|Mux10~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Unit1|U1|Mux10~1_combout\,
	combout => \Unit1|U2|tmp_rf[5][5]~feeder_combout\);

-- Location: LCCOMB_X66_Y48_N26
\Unit0|U0|Selector64~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|Selector64~0_combout\ = (\Unit0|U2|IRout\(9) & ((\Unit0|U0|WideOr58~combout\) # ((\Unit0|U0|RFwa_ctrl\(1) & !\Unit0|U0|WideOr57~0_combout\)))) # (!\Unit0|U2|IRout\(9) & (((\Unit0|U0|RFwa_ctrl\(1) & !\Unit0|U0|WideOr57~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U2|IRout\(9),
	datab => \Unit0|U0|WideOr58~combout\,
	datac => \Unit0|U0|RFwa_ctrl\(1),
	datad => \Unit0|U0|WideOr57~0_combout\,
	combout => \Unit0|U0|Selector64~0_combout\);

-- Location: FF_X66_Y48_N27
\Unit0|U0|RFwa_ctrl[1]\ : dffeas
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
	q => \Unit0|U0|RFwa_ctrl\(1));

-- Location: LCCOMB_X66_Y48_N28
\Unit1|U2|Decoder0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Decoder0~10_combout\ = (\Unit0|U0|RFwe_ctrl~q\ & (\Unit0|U0|RFwa_ctrl\(0) & (!\Unit0|U0|RFwa_ctrl\(1) & \Unit0|U0|RFwa_ctrl\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFwe_ctrl~q\,
	datab => \Unit0|U0|RFwa_ctrl\(0),
	datac => \Unit0|U0|RFwa_ctrl\(1),
	datad => \Unit0|U0|RFwa_ctrl\(2),
	combout => \Unit1|U2|Decoder0~10_combout\);

-- Location: LCCOMB_X70_Y52_N28
\Unit1|U2|Decoder0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Decoder0~11_combout\ = (!\Unit0|U0|RFwa_ctrl\(3) & \Unit1|U2|Decoder0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFwa_ctrl\(3),
	datad => \Unit1|U2|Decoder0~10_combout\,
	combout => \Unit1|U2|Decoder0~11_combout\);

-- Location: FF_X66_Y53_N31
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
	ena => \Unit1|U2|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[5][5]~q\);

-- Location: LCCOMB_X66_Y50_N18
\Unit1|U2|tmp_rf[1][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[1][5]~feeder_combout\ = \Unit1|U1|Mux10~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|U1|Mux10~1_combout\,
	combout => \Unit1|U2|tmp_rf[1][5]~feeder_combout\);

-- Location: FF_X66_Y50_N19
\Unit1|U2|tmp_rf[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[1][5]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[1][5]~q\);

-- Location: LCCOMB_X69_Y52_N28
\Unit1|U2|Mux26~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux26~2_combout\ = (\Unit0|U0|RFr2a_ctrl\(2) & ((\Unit0|U0|RFr2a_ctrl\(3)) # ((\Unit1|U2|tmp_rf[5][5]~q\)))) # (!\Unit0|U0|RFr2a_ctrl\(2) & (!\Unit0|U0|RFr2a_ctrl\(3) & ((\Unit1|U2|tmp_rf[1][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr2a_ctrl\(2),
	datab => \Unit0|U0|RFr2a_ctrl\(3),
	datac => \Unit1|U2|tmp_rf[5][5]~q\,
	datad => \Unit1|U2|tmp_rf[1][5]~q\,
	combout => \Unit1|U2|Mux26~2_combout\);

-- Location: LCCOMB_X68_Y50_N22
\Unit1|U2|Mux26~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux26~3_combout\ = (\Unit0|U0|RFr2a_ctrl\(3) & ((\Unit1|U2|Mux26~2_combout\ & (\Unit1|U2|tmp_rf[13][5]~q\)) # (!\Unit1|U2|Mux26~2_combout\ & ((\Unit1|U2|tmp_rf[9][5]~q\))))) # (!\Unit0|U0|RFr2a_ctrl\(3) & (((\Unit1|U2|Mux26~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[13][5]~q\,
	datab => \Unit0|U0|RFr2a_ctrl\(3),
	datac => \Unit1|U2|tmp_rf[9][5]~q\,
	datad => \Unit1|U2|Mux26~2_combout\,
	combout => \Unit1|U2|Mux26~3_combout\);

-- Location: LCCOMB_X70_Y49_N30
\Unit1|U2|Mux26~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux26~6_combout\ = (\Unit0|U0|RFr2a_ctrl\(1) & (((\Unit0|U0|RFr2a_ctrl\(0))))) # (!\Unit0|U0|RFr2a_ctrl\(1) & ((\Unit0|U0|RFr2a_ctrl\(0) & ((\Unit1|U2|Mux26~3_combout\))) # (!\Unit0|U0|RFr2a_ctrl\(0) & (\Unit1|U2|Mux26~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|Mux26~5_combout\,
	datab => \Unit0|U0|RFr2a_ctrl\(1),
	datac => \Unit0|U0|RFr2a_ctrl\(0),
	datad => \Unit1|U2|Mux26~3_combout\,
	combout => \Unit1|U2|Mux26~6_combout\);

-- Location: FF_X69_Y51_N7
\Unit1|U2|tmp_rf[15][5]\ : dffeas
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
	ena => \Unit1|U2|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[15][5]~q\);

-- Location: LCCOMB_X63_Y51_N12
\Unit1|U2|Decoder0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Decoder0~19_combout\ = (\Unit0|U0|RFwa_ctrl\(3) & \Unit1|U2|Decoder0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Unit0|U0|RFwa_ctrl\(3),
	datad => \Unit1|U2|Decoder0~6_combout\,
	combout => \Unit1|U2|Decoder0~19_combout\);

-- Location: FF_X68_Y50_N29
\Unit1|U2|tmp_rf[11][5]\ : dffeas
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
	ena => \Unit1|U2|Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[11][5]~q\);

-- Location: LCCOMB_X68_Y50_N28
\Unit1|U2|Mux26~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux26~8_combout\ = (\Unit1|U2|Mux26~7_combout\ & ((\Unit1|U2|tmp_rf[15][5]~q\) # ((!\Unit0|U0|RFr2a_ctrl\(3))))) # (!\Unit1|U2|Mux26~7_combout\ & (((\Unit1|U2|tmp_rf[11][5]~q\ & \Unit0|U0|RFr2a_ctrl\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|Mux26~7_combout\,
	datab => \Unit1|U2|tmp_rf[15][5]~q\,
	datac => \Unit1|U2|tmp_rf[11][5]~q\,
	datad => \Unit0|U0|RFr2a_ctrl\(3),
	combout => \Unit1|U2|Mux26~8_combout\);

-- Location: LCCOMB_X70_Y49_N14
\Unit1|U2|Mux26~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux26~9_combout\ = (\Unit0|U0|RFr2a_ctrl\(1) & ((\Unit1|U2|Mux26~6_combout\ & ((\Unit1|U2|Mux26~8_combout\))) # (!\Unit1|U2|Mux26~6_combout\ & (\Unit1|U2|Mux26~1_combout\)))) # (!\Unit0|U0|RFr2a_ctrl\(1) & (((\Unit1|U2|Mux26~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|Mux26~1_combout\,
	datab => \Unit0|U0|RFr2a_ctrl\(1),
	datac => \Unit1|U2|Mux26~6_combout\,
	datad => \Unit1|U2|Mux26~8_combout\,
	combout => \Unit1|U2|Mux26~9_combout\);

-- Location: LCCOMB_X69_Y46_N24
\Unit0|U0|Selector56~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|Selector56~3_combout\ = ((\Unit0|U0|Selector56~1_combout\ & (\Unit0|U0|RFr2e_ctrl~q\ & \Unit0|U0|Selector56~0_combout\))) # (!\Unit0|U0|Selector56~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|Selector56~1_combout\,
	datab => \Unit0|U0|Selector56~2_combout\,
	datac => \Unit0|U0|RFr2e_ctrl~q\,
	datad => \Unit0|U0|Selector56~0_combout\,
	combout => \Unit0|U0|Selector56~3_combout\);

-- Location: FF_X69_Y46_N25
\Unit0|U0|RFr2e_ctrl\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit0|U0|Selector56~3_combout\,
	ena => \ALT_INV_cpu_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U0|RFr2e_ctrl~q\);

-- Location: FF_X70_Y49_N15
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

-- Location: LCCOMB_X66_Y49_N8
\Unit1|U2|Decoder0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Decoder0~15_combout\ = (!\Unit0|U0|RFwa_ctrl\(3) & \Unit1|U2|Decoder0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFwa_ctrl\(3),
	datad => \Unit1|U2|Decoder0~14_combout\,
	combout => \Unit1|U2|Decoder0~15_combout\);

-- Location: FF_X62_Y51_N15
\Unit1|U2|tmp_rf[7][2]\ : dffeas
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
	ena => \Unit1|U2|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[7][2]~q\);

-- Location: LCCOMB_X66_Y48_N0
\Unit1|U2|Decoder0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Decoder0~13_combout\ = (\Unit1|U2|Decoder0~12_combout\ & !\Unit0|U0|RFwa_ctrl\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|Decoder0~12_combout\,
	datad => \Unit0|U0|RFwa_ctrl\(3),
	combout => \Unit1|U2|Decoder0~13_combout\);

-- Location: FF_X62_Y52_N17
\Unit1|U2|tmp_rf[6][2]\ : dffeas
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
	ena => \Unit1|U2|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[6][2]~q\);

-- Location: LCCOMB_X62_Y52_N16
\Unit1|U2|Mux13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux13~1_combout\ = (\Unit1|U2|Mux13~0_combout\ & ((\Unit1|U2|tmp_rf[7][2]~q\) # ((!\Unit0|U0|RFr1a_ctrl\(1))))) # (!\Unit1|U2|Mux13~0_combout\ & (((\Unit1|U2|tmp_rf[6][2]~q\ & \Unit0|U0|RFr1a_ctrl\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|Mux13~0_combout\,
	datab => \Unit1|U2|tmp_rf[7][2]~q\,
	datac => \Unit1|U2|tmp_rf[6][2]~q\,
	datad => \Unit0|U0|RFr1a_ctrl\(1),
	combout => \Unit1|U2|Mux13~1_combout\);

-- Location: LCCOMB_X65_Y53_N30
\Unit0|U0|Selector68~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|Selector68~0_combout\ = (\Unit0|U0|WideOr65~combout\ & (((\Unit0|U2|dir_addr\(7))))) # (!\Unit0|U0|WideOr65~combout\ & (\Unit0|U2|IRout\(11) & (!\Unit0|U0|state.S_LONG_SAVE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U2|IRout\(11),
	datab => \Unit0|U0|state.S_LONG_SAVE~q\,
	datac => \Unit0|U2|dir_addr\(7),
	datad => \Unit0|U0|WideOr65~combout\,
	combout => \Unit0|U0|Selector68~0_combout\);

-- Location: FF_X65_Y53_N31
\Unit0|U0|RFr1a_ctrl[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit0|U0|Selector68~0_combout\,
	ena => \Unit0|U0|RFr1a_ctrl[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U0|RFr1a_ctrl\(3));

-- Location: FF_X63_Y51_N11
\Unit1|U2|tmp_rf[0][2]\ : dffeas
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
	ena => \Unit1|U2|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[0][2]~q\);

-- Location: LCCOMB_X67_Y54_N16
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

-- Location: FF_X67_Y54_N17
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
	ena => \Unit1|U2|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[2][2]~q\);

-- Location: LCCOMB_X63_Y51_N20
\Unit1|U2|Mux13~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux13~4_combout\ = (\Unit0|U0|RFr1a_ctrl\(0) & (((\Unit0|U0|RFr1a_ctrl\(1))))) # (!\Unit0|U0|RFr1a_ctrl\(0) & ((\Unit0|U0|RFr1a_ctrl\(1) & ((\Unit1|U2|tmp_rf[2][2]~q\))) # (!\Unit0|U0|RFr1a_ctrl\(1) & (\Unit1|U2|tmp_rf[0][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(0),
	datab => \Unit1|U2|tmp_rf[0][2]~q\,
	datac => \Unit0|U0|RFr1a_ctrl\(1),
	datad => \Unit1|U2|tmp_rf[2][2]~q\,
	combout => \Unit1|U2|Mux13~4_combout\);

-- Location: FF_X63_Y51_N27
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
	ena => \Unit1|U2|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[3][2]~q\);

-- Location: LCCOMB_X63_Y51_N26
\Unit1|U2|Mux13~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux13~5_combout\ = (\Unit1|U2|Mux13~4_combout\ & (((\Unit1|U2|tmp_rf[3][2]~q\) # (!\Unit0|U0|RFr1a_ctrl\(0))))) # (!\Unit1|U2|Mux13~4_combout\ & (\Unit1|U2|tmp_rf[1][2]~q\ & ((\Unit0|U0|RFr1a_ctrl\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[1][2]~q\,
	datab => \Unit1|U2|Mux13~4_combout\,
	datac => \Unit1|U2|tmp_rf[3][2]~q\,
	datad => \Unit0|U0|RFr1a_ctrl\(0),
	combout => \Unit1|U2|Mux13~5_combout\);

-- Location: LCCOMB_X68_Y50_N8
\Unit1|U2|tmp_rf[11][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[11][2]~feeder_combout\ = \Unit1|U1|Mux13~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|U1|Mux13~1_combout\,
	combout => \Unit1|U2|tmp_rf[11][2]~feeder_combout\);

-- Location: FF_X68_Y50_N9
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
	ena => \Unit1|U2|Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[11][2]~q\);

-- Location: LCCOMB_X66_Y51_N20
\Unit1|U2|tmp_rf[8][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[8][2]~feeder_combout\ = \Unit1|U1|Mux13~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Unit1|U1|Mux13~1_combout\,
	combout => \Unit1|U2|tmp_rf[8][2]~feeder_combout\);

-- Location: LCCOMB_X66_Y52_N8
\Unit1|U2|Decoder0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Decoder0~16_combout\ = (\Unit0|U0|RFwa_ctrl\(3) & \Unit1|U2|Decoder0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFwa_ctrl\(3),
	datad => \Unit1|U2|Decoder0~0_combout\,
	combout => \Unit1|U2|Decoder0~16_combout\);

-- Location: FF_X66_Y51_N21
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
	ena => \Unit1|U2|Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[8][2]~q\);

-- Location: LCCOMB_X66_Y51_N28
\Unit1|U2|Mux13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux13~2_combout\ = (\Unit0|U0|RFr1a_ctrl\(0) & (((\Unit0|U0|RFr1a_ctrl\(1))))) # (!\Unit0|U0|RFr1a_ctrl\(0) & ((\Unit0|U0|RFr1a_ctrl\(1) & (\Unit1|U2|tmp_rf[10][2]~q\)) # (!\Unit0|U0|RFr1a_ctrl\(1) & ((\Unit1|U2|tmp_rf[8][2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[10][2]~q\,
	datab => \Unit1|U2|tmp_rf[8][2]~q\,
	datac => \Unit0|U0|RFr1a_ctrl\(0),
	datad => \Unit0|U0|RFr1a_ctrl\(1),
	combout => \Unit1|U2|Mux13~2_combout\);

-- Location: LCCOMB_X68_Y50_N12
\Unit1|U2|Mux13~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux13~3_combout\ = (\Unit0|U0|RFr1a_ctrl\(0) & ((\Unit1|U2|Mux13~2_combout\ & ((\Unit1|U2|tmp_rf[11][2]~q\))) # (!\Unit1|U2|Mux13~2_combout\ & (\Unit1|U2|tmp_rf[9][2]~q\)))) # (!\Unit0|U0|RFr1a_ctrl\(0) & (((\Unit1|U2|Mux13~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[9][2]~q\,
	datab => \Unit0|U0|RFr1a_ctrl\(0),
	datac => \Unit1|U2|tmp_rf[11][2]~q\,
	datad => \Unit1|U2|Mux13~2_combout\,
	combout => \Unit1|U2|Mux13~3_combout\);

-- Location: LCCOMB_X63_Y51_N6
\Unit1|U2|Mux13~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux13~6_combout\ = (\Unit0|U0|RFr1a_ctrl\(2) & (\Unit0|U0|RFr1a_ctrl\(3))) # (!\Unit0|U0|RFr1a_ctrl\(2) & ((\Unit0|U0|RFr1a_ctrl\(3) & ((\Unit1|U2|Mux13~3_combout\))) # (!\Unit0|U0|RFr1a_ctrl\(3) & (\Unit1|U2|Mux13~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(2),
	datab => \Unit0|U0|RFr1a_ctrl\(3),
	datac => \Unit1|U2|Mux13~5_combout\,
	datad => \Unit1|U2|Mux13~3_combout\,
	combout => \Unit1|U2|Mux13~6_combout\);

-- Location: LCCOMB_X67_Y51_N16
\Unit1|U2|Mux13~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux13~9_combout\ = (\Unit0|U0|RFr1a_ctrl\(2) & ((\Unit1|U2|Mux13~6_combout\ & (\Unit1|U2|Mux13~8_combout\)) # (!\Unit1|U2|Mux13~6_combout\ & ((\Unit1|U2|Mux13~1_combout\))))) # (!\Unit0|U0|RFr1a_ctrl\(2) & (((\Unit1|U2|Mux13~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|Mux13~8_combout\,
	datab => \Unit0|U0|RFr1a_ctrl\(2),
	datac => \Unit1|U2|Mux13~1_combout\,
	datad => \Unit1|U2|Mux13~6_combout\,
	combout => \Unit1|U2|Mux13~9_combout\);

-- Location: LCCOMB_X62_Y48_N4
\Unit0|U0|Selector66~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|Selector66~2_combout\ = (\Unit0|U0|state.S_IMM_LOAD~q\) # ((\Unit0|U0|state.S_LONG_IMM_LOAD~q\) # ((\Unit0|U0|RFs_ctrl\(1) & !\Unit0|U0|WideOr59~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|state.S_IMM_LOAD~q\,
	datab => \Unit0|U0|state.S_LONG_IMM_LOAD~q\,
	datac => \Unit0|U0|RFs_ctrl\(1),
	datad => \Unit0|U0|WideOr59~0_combout\,
	combout => \Unit0|U0|Selector66~2_combout\);

-- Location: FF_X62_Y48_N5
\Unit0|U0|RFs_ctrl[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit0|U0|Selector66~2_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U0|RFs_ctrl\(1));

-- Location: LCCOMB_X61_Y45_N22
\Unit0|U0|Selector54~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|Selector54~1_combout\ = (\Unit0|U0|state.S_LONG_LOAD~q\) # ((\Unit0|U0|state.S_REG_ADDR_LOAD~q\) # ((\Unit0|U0|state.S_REG_ADDR_SAVEa~q\) # (\Unit0|U0|state.S_LONG_SAVE_a~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|state.S_LONG_LOAD~q\,
	datab => \Unit0|U0|state.S_REG_ADDR_LOAD~q\,
	datac => \Unit0|U0|state.S_REG_ADDR_SAVEa~q\,
	datad => \Unit0|U0|state.S_LONG_SAVE_a~q\,
	combout => \Unit0|U0|Selector54~1_combout\);

-- Location: LCCOMB_X62_Y46_N14
\Unit0|U0|Selector54~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|Selector54~2_combout\ = (\Unit0|U0|Selector54~0_combout\) # ((\Unit0|U0|state.S_LONG_IMM_LOAD~q\) # ((\Unit0|U0|state.S_OUTPUT_MEM~q\) # (\Unit0|U0|Selector54~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|Selector54~0_combout\,
	datab => \Unit0|U0|state.S_LONG_IMM_LOAD~q\,
	datac => \Unit0|U0|state.S_OUTPUT_MEM~q\,
	datad => \Unit0|U0|Selector54~1_combout\,
	combout => \Unit0|U0|Selector54~2_combout\);

-- Location: FF_X62_Y46_N15
\Unit0|U0|big_addr\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit0|U0|Selector54~2_combout\,
	ena => \ALT_INV_cpu_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U0|big_addr~q\);

-- Location: LCCOMB_X63_Y49_N20
\Unit1|U1|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U1|Mux7~0_combout\ = (\Unit0|U0|RFs_ctrl\(0) & ((\Unit2|altsyncram_component|auto_generated|q_a\(8)) # ((\Unit0|U0|RFs_ctrl\(1))))) # (!\Unit0|U0|RFs_ctrl\(0) & (((!\Unit0|U0|RFs_ctrl\(1) & \Unit1|U3|alu_tmp\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit2|altsyncram_component|auto_generated|q_a\(8),
	datab => \Unit0|U0|RFs_ctrl\(0),
	datac => \Unit0|U0|RFs_ctrl\(1),
	datad => \Unit1|U3|alu_tmp\(8),
	combout => \Unit1|U1|Mux7~0_combout\);

-- Location: LCCOMB_X63_Y49_N30
\Unit1|U1|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U1|Mux7~1_combout\ = (\Unit1|U1|Mux7~0_combout\) # ((\Unit0|U2|IRout\(8) & (\Unit0|U0|RFs_ctrl\(1) & \Unit0|U0|big_addr~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U2|IRout\(8),
	datab => \Unit0|U0|RFs_ctrl\(1),
	datac => \Unit0|U0|big_addr~q\,
	datad => \Unit1|U1|Mux7~0_combout\,
	combout => \Unit1|U1|Mux7~1_combout\);

-- Location: FF_X68_Y51_N13
\Unit1|U2|tmp_rf[8][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	asdata => \Unit1|U1|Mux7~1_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|U2|Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[8][8]~q\);

-- Location: FF_X68_Y50_N5
\Unit1|U2|tmp_rf[9][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	asdata => \Unit1|U1|Mux7~1_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|U2|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[9][8]~q\);

-- Location: LCCOMB_X68_Y51_N12
\Unit1|U2|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux7~0_combout\ = (\Unit0|U0|RFr1a_ctrl\(0) & ((\Unit0|U0|RFr1a_ctrl\(1)) # ((\Unit1|U2|tmp_rf[9][8]~q\)))) # (!\Unit0|U0|RFr1a_ctrl\(0) & (!\Unit0|U0|RFr1a_ctrl\(1) & (\Unit1|U2|tmp_rf[8][8]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(0),
	datab => \Unit0|U0|RFr1a_ctrl\(1),
	datac => \Unit1|U2|tmp_rf[8][8]~q\,
	datad => \Unit1|U2|tmp_rf[9][8]~q\,
	combout => \Unit1|U2|Mux7~0_combout\);

-- Location: FF_X67_Y52_N27
\Unit1|U2|tmp_rf[10][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	asdata => \Unit1|U1|Mux7~1_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|U2|Decoder0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[10][8]~q\);

-- Location: FF_X68_Y50_N11
\Unit1|U2|tmp_rf[11][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	asdata => \Unit1|U1|Mux7~1_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|U2|Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[11][8]~q\);

-- Location: LCCOMB_X67_Y52_N26
\Unit1|U2|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux7~1_combout\ = (\Unit0|U0|RFr1a_ctrl\(1) & ((\Unit1|U2|Mux7~0_combout\ & ((\Unit1|U2|tmp_rf[11][8]~q\))) # (!\Unit1|U2|Mux7~0_combout\ & (\Unit1|U2|tmp_rf[10][8]~q\)))) # (!\Unit0|U0|RFr1a_ctrl\(1) & (\Unit1|U2|Mux7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(1),
	datab => \Unit1|U2|Mux7~0_combout\,
	datac => \Unit1|U2|tmp_rf[10][8]~q\,
	datad => \Unit1|U2|tmp_rf[11][8]~q\,
	combout => \Unit1|U2|Mux7~1_combout\);

-- Location: LCCOMB_X63_Y51_N28
\Unit1|U2|tmp_rf[0][8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[0][8]~feeder_combout\ = \Unit1|U1|Mux7~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Unit1|U1|Mux7~1_combout\,
	combout => \Unit1|U2|tmp_rf[0][8]~feeder_combout\);

-- Location: FF_X63_Y51_N29
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
	ena => \Unit1|U2|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[0][8]~q\);

-- Location: LCCOMB_X68_Y53_N2
\Unit1|U2|tmp_rf[1][8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[1][8]~feeder_combout\ = \Unit1|U1|Mux7~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Unit1|U1|Mux7~1_combout\,
	combout => \Unit1|U2|tmp_rf[1][8]~feeder_combout\);

-- Location: FF_X68_Y53_N3
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
	ena => \Unit1|U2|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[1][8]~q\);

-- Location: LCCOMB_X63_Y51_N4
\Unit1|U2|Mux7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux7~4_combout\ = (\Unit0|U0|RFr1a_ctrl\(1) & (((\Unit0|U0|RFr1a_ctrl\(0))))) # (!\Unit0|U0|RFr1a_ctrl\(1) & ((\Unit0|U0|RFr1a_ctrl\(0) & ((\Unit1|U2|tmp_rf[1][8]~q\))) # (!\Unit0|U0|RFr1a_ctrl\(0) & (\Unit1|U2|tmp_rf[0][8]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(1),
	datab => \Unit1|U2|tmp_rf[0][8]~q\,
	datac => \Unit0|U0|RFr1a_ctrl\(0),
	datad => \Unit1|U2|tmp_rf[1][8]~q\,
	combout => \Unit1|U2|Mux7~4_combout\);

-- Location: FF_X63_Y51_N15
\Unit1|U2|tmp_rf[3][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	asdata => \Unit1|U1|Mux7~1_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|U2|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[3][8]~q\);

-- Location: LCCOMB_X67_Y54_N4
\Unit1|U2|tmp_rf[2][8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[2][8]~feeder_combout\ = \Unit1|U1|Mux7~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Unit1|U1|Mux7~1_combout\,
	combout => \Unit1|U2|tmp_rf[2][8]~feeder_combout\);

-- Location: FF_X67_Y54_N5
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
	ena => \Unit1|U2|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[2][8]~q\);

-- Location: LCCOMB_X63_Y51_N14
\Unit1|U2|Mux7~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux7~5_combout\ = (\Unit0|U0|RFr1a_ctrl\(1) & ((\Unit1|U2|Mux7~4_combout\ & (\Unit1|U2|tmp_rf[3][8]~q\)) # (!\Unit1|U2|Mux7~4_combout\ & ((\Unit1|U2|tmp_rf[2][8]~q\))))) # (!\Unit0|U0|RFr1a_ctrl\(1) & (\Unit1|U2|Mux7~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(1),
	datab => \Unit1|U2|Mux7~4_combout\,
	datac => \Unit1|U2|tmp_rf[3][8]~q\,
	datad => \Unit1|U2|tmp_rf[2][8]~q\,
	combout => \Unit1|U2|Mux7~5_combout\);

-- Location: FF_X63_Y49_N31
\Unit1|U2|tmp_rf[5][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U1|Mux7~1_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[5][8]~q\);

-- Location: FF_X68_Y53_N19
\Unit1|U2|tmp_rf[6][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	asdata => \Unit1|U1|Mux7~1_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|U2|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[6][8]~q\);

-- Location: LCCOMB_X67_Y53_N0
\Unit1|U2|Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux7~2_combout\ = (\Unit0|U0|RFr1a_ctrl\(0) & (((\Unit0|U0|RFr1a_ctrl\(1))))) # (!\Unit0|U0|RFr1a_ctrl\(0) & ((\Unit0|U0|RFr1a_ctrl\(1) & ((\Unit1|U2|tmp_rf[6][8]~q\))) # (!\Unit0|U0|RFr1a_ctrl\(1) & (\Unit1|U2|tmp_rf[4][8]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[4][8]~q\,
	datab => \Unit0|U0|RFr1a_ctrl\(0),
	datac => \Unit0|U0|RFr1a_ctrl\(1),
	datad => \Unit1|U2|tmp_rf[6][8]~q\,
	combout => \Unit1|U2|Mux7~2_combout\);

-- Location: LCCOMB_X67_Y53_N18
\Unit1|U2|Mux7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux7~3_combout\ = (\Unit0|U0|RFr1a_ctrl\(0) & ((\Unit1|U2|Mux7~2_combout\ & (\Unit1|U2|tmp_rf[7][8]~q\)) # (!\Unit1|U2|Mux7~2_combout\ & ((\Unit1|U2|tmp_rf[5][8]~q\))))) # (!\Unit0|U0|RFr1a_ctrl\(0) & (((\Unit1|U2|Mux7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[7][8]~q\,
	datab => \Unit0|U0|RFr1a_ctrl\(0),
	datac => \Unit1|U2|tmp_rf[5][8]~q\,
	datad => \Unit1|U2|Mux7~2_combout\,
	combout => \Unit1|U2|Mux7~3_combout\);

-- Location: LCCOMB_X63_Y51_N22
\Unit1|U2|Mux7~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux7~6_combout\ = (\Unit0|U0|RFr1a_ctrl\(2) & ((\Unit0|U0|RFr1a_ctrl\(3)) # ((\Unit1|U2|Mux7~3_combout\)))) # (!\Unit0|U0|RFr1a_ctrl\(2) & (!\Unit0|U0|RFr1a_ctrl\(3) & (\Unit1|U2|Mux7~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(2),
	datab => \Unit0|U0|RFr1a_ctrl\(3),
	datac => \Unit1|U2|Mux7~5_combout\,
	datad => \Unit1|U2|Mux7~3_combout\,
	combout => \Unit1|U2|Mux7~6_combout\);

-- Location: FF_X67_Y52_N29
\Unit1|U2|tmp_rf[15][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	asdata => \Unit1|U1|Mux7~1_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|U2|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[15][8]~q\);

-- Location: FF_X67_Y54_N23
\Unit1|U2|tmp_rf[14][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	asdata => \Unit1|U1|Mux7~1_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|U2|Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[14][8]~q\);

-- Location: FF_X68_Y51_N17
\Unit1|U2|tmp_rf[12][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	asdata => \Unit1|U1|Mux7~1_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|U2|Decoder0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[12][8]~q\);

-- Location: LCCOMB_X68_Y51_N16
\Unit1|U2|Mux7~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux7~7_combout\ = (\Unit0|U0|RFr1a_ctrl\(0) & (((\Unit0|U0|RFr1a_ctrl\(1))))) # (!\Unit0|U0|RFr1a_ctrl\(0) & ((\Unit0|U0|RFr1a_ctrl\(1) & (\Unit1|U2|tmp_rf[14][8]~q\)) # (!\Unit0|U0|RFr1a_ctrl\(1) & ((\Unit1|U2|tmp_rf[12][8]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(0),
	datab => \Unit1|U2|tmp_rf[14][8]~q\,
	datac => \Unit1|U2|tmp_rf[12][8]~q\,
	datad => \Unit0|U0|RFr1a_ctrl\(1),
	combout => \Unit1|U2|Mux7~7_combout\);

-- Location: LCCOMB_X67_Y52_N28
\Unit1|U2|Mux7~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux7~8_combout\ = (\Unit0|U0|RFr1a_ctrl\(0) & ((\Unit1|U2|Mux7~7_combout\ & ((\Unit1|U2|tmp_rf[15][8]~q\))) # (!\Unit1|U2|Mux7~7_combout\ & (\Unit1|U2|tmp_rf[13][8]~q\)))) # (!\Unit0|U0|RFr1a_ctrl\(0) & (((\Unit1|U2|Mux7~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[13][8]~q\,
	datab => \Unit0|U0|RFr1a_ctrl\(0),
	datac => \Unit1|U2|tmp_rf[15][8]~q\,
	datad => \Unit1|U2|Mux7~7_combout\,
	combout => \Unit1|U2|Mux7~8_combout\);

-- Location: LCCOMB_X66_Y49_N10
\Unit1|U2|Mux7~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux7~9_combout\ = (\Unit0|U0|RFr1a_ctrl\(3) & ((\Unit1|U2|Mux7~6_combout\ & ((\Unit1|U2|Mux7~8_combout\))) # (!\Unit1|U2|Mux7~6_combout\ & (\Unit1|U2|Mux7~1_combout\)))) # (!\Unit0|U0|RFr1a_ctrl\(3) & (((\Unit1|U2|Mux7~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(3),
	datab => \Unit1|U2|Mux7~1_combout\,
	datac => \Unit1|U2|Mux7~6_combout\,
	datad => \Unit1|U2|Mux7~8_combout\,
	combout => \Unit1|U2|Mux7~9_combout\);

-- Location: LCCOMB_X70_Y52_N22
\Unit1|U2|RFr1[9]~_Duplicate_1feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|RFr1[9]~_Duplicate_1feeder_combout\ = \Unit1|U2|Mux6~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Unit1|U2|Mux6~9_combout\,
	combout => \Unit1|U2|RFr1[9]~_Duplicate_1feeder_combout\);

-- Location: FF_X70_Y52_N23
\Unit1|U2|RFr1[9]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|RFr1[9]~_Duplicate_1feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit0|U0|RFr1e_ctrl~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|RFr1[9]~_Duplicate_1_q\);

-- Location: LCCOMB_X69_Y49_N18
\Unit1|U3|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|Add0~26_combout\ = \Unit0|U0|ALUs_ctrl\(0) $ (\Unit1|U2|RFr2\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|ALUs_ctrl\(0),
	datad => \Unit1|U2|RFr2\(8),
	combout => \Unit1|U3|Add0~26_combout\);

-- Location: LCCOMB_X69_Y49_N0
\Unit1|U3|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|Add0~24_combout\ = ((\Unit1|U3|Add0~23_combout\ $ (\Unit1|U2|RFr1[7]~_Duplicate_1_q\ $ (!\Unit1|U3|Add0~22\)))) # (GND)
-- \Unit1|U3|Add0~25\ = CARRY((\Unit1|U3|Add0~23_combout\ & ((\Unit1|U2|RFr1[7]~_Duplicate_1_q\) # (!\Unit1|U3|Add0~22\))) # (!\Unit1|U3|Add0~23_combout\ & (\Unit1|U2|RFr1[7]~_Duplicate_1_q\ & !\Unit1|U3|Add0~22\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U3|Add0~23_combout\,
	datab => \Unit1|U2|RFr1[7]~_Duplicate_1_q\,
	datad => VCC,
	cin => \Unit1|U3|Add0~22\,
	combout => \Unit1|U3|Add0~24_combout\,
	cout => \Unit1|U3|Add0~25\);

-- Location: LCCOMB_X69_Y49_N2
\Unit1|U3|Add0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|Add0~27_combout\ = (\Unit1|U2|RFr1[8]~_Duplicate_1_q\ & ((\Unit1|U3|Add0~26_combout\ & (\Unit1|U3|Add0~25\ & VCC)) # (!\Unit1|U3|Add0~26_combout\ & (!\Unit1|U3|Add0~25\)))) # (!\Unit1|U2|RFr1[8]~_Duplicate_1_q\ & ((\Unit1|U3|Add0~26_combout\ & 
-- (!\Unit1|U3|Add0~25\)) # (!\Unit1|U3|Add0~26_combout\ & ((\Unit1|U3|Add0~25\) # (GND)))))
-- \Unit1|U3|Add0~28\ = CARRY((\Unit1|U2|RFr1[8]~_Duplicate_1_q\ & (!\Unit1|U3|Add0~26_combout\ & !\Unit1|U3|Add0~25\)) # (!\Unit1|U2|RFr1[8]~_Duplicate_1_q\ & ((!\Unit1|U3|Add0~25\) # (!\Unit1|U3|Add0~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|RFr1[8]~_Duplicate_1_q\,
	datab => \Unit1|U3|Add0~26_combout\,
	datad => VCC,
	cin => \Unit1|U3|Add0~25\,
	combout => \Unit1|U3|Add0~27_combout\,
	cout => \Unit1|U3|Add0~28\);

-- Location: LCCOMB_X69_Y49_N4
\Unit1|U3|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|Add0~30_combout\ = ((\Unit1|U3|Add0~29_combout\ $ (\Unit1|U2|RFr1[9]~_Duplicate_1_q\ $ (!\Unit1|U3|Add0~28\)))) # (GND)
-- \Unit1|U3|Add0~31\ = CARRY((\Unit1|U3|Add0~29_combout\ & ((\Unit1|U2|RFr1[9]~_Duplicate_1_q\) # (!\Unit1|U3|Add0~28\))) # (!\Unit1|U3|Add0~29_combout\ & (\Unit1|U2|RFr1[9]~_Duplicate_1_q\ & !\Unit1|U3|Add0~28\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U3|Add0~29_combout\,
	datab => \Unit1|U2|RFr1[9]~_Duplicate_1_q\,
	datad => VCC,
	cin => \Unit1|U3|Add0~28\,
	combout => \Unit1|U3|Add0~30_combout\,
	cout => \Unit1|U3|Add0~31\);

-- Location: LCCOMB_X63_Y49_N12
\Unit1|U3|Mux26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|Mux26~0_combout\ = (\Unit1|U3|Mux17~0_combout\ & (((\Unit1|U3|Mux17~1_combout\) # (\Unit1|U3|Add0~30_combout\)))) # (!\Unit1|U3|Mux17~0_combout\ & (\Unit1|U2|RFr1[9]~_Duplicate_1_q\ & (!\Unit1|U3|Mux17~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|RFr1[9]~_Duplicate_1_q\,
	datab => \Unit1|U3|Mux17~0_combout\,
	datac => \Unit1|U3|Mux17~1_combout\,
	datad => \Unit1|U3|Add0~30_combout\,
	combout => \Unit1|U3|Mux26~0_combout\);

-- Location: LCCOMB_X63_Y53_N22
\Unit1|U1|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U1|Mux5~0_combout\ = (\Unit0|U0|RFs_ctrl\(1) & (((\Unit0|U0|RFs_ctrl\(0))))) # (!\Unit0|U0|RFs_ctrl\(1) & ((\Unit0|U0|RFs_ctrl\(0) & (\Unit2|altsyncram_component|auto_generated|q_a\(10))) # (!\Unit0|U0|RFs_ctrl\(0) & ((\Unit1|U3|alu_tmp\(10))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit2|altsyncram_component|auto_generated|q_a\(10),
	datab => \Unit0|U0|RFs_ctrl\(1),
	datac => \Unit0|U0|RFs_ctrl\(0),
	datad => \Unit1|U3|alu_tmp\(10),
	combout => \Unit1|U1|Mux5~0_combout\);

-- Location: LCCOMB_X63_Y53_N0
\Unit1|U1|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U1|Mux5~1_combout\ = (\Unit1|U1|Mux5~0_combout\) # ((\Unit0|U0|RFs_ctrl\(1) & (\Unit0|U0|big_addr~q\ & \Unit0|U2|IRout\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFs_ctrl\(1),
	datab => \Unit0|U0|big_addr~q\,
	datac => \Unit1|U1|Mux5~0_combout\,
	datad => \Unit0|U2|IRout\(10),
	combout => \Unit1|U1|Mux5~1_combout\);

-- Location: FF_X66_Y53_N21
\Unit1|U2|tmp_rf[5][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	asdata => \Unit1|U1|Mux5~1_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|U2|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[5][10]~q\);

-- Location: LCCOMB_X67_Y53_N4
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

-- Location: FF_X68_Y53_N7
\Unit1|U2|tmp_rf[6][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	asdata => \Unit1|U1|Mux5~1_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|U2|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[6][10]~q\);

-- Location: LCCOMB_X68_Y53_N6
\Unit1|U2|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux5~1_combout\ = (\Unit1|U2|Mux5~0_combout\ & ((\Unit1|U2|tmp_rf[7][10]~q\) # ((!\Unit0|U0|RFr1a_ctrl\(1))))) # (!\Unit1|U2|Mux5~0_combout\ & (((\Unit1|U2|tmp_rf[6][10]~q\ & \Unit0|U0|RFr1a_ctrl\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[7][10]~q\,
	datab => \Unit1|U2|Mux5~0_combout\,
	datac => \Unit1|U2|tmp_rf[6][10]~q\,
	datad => \Unit0|U0|RFr1a_ctrl\(1),
	combout => \Unit1|U2|Mux5~1_combout\);

-- Location: FF_X69_Y51_N9
\Unit1|U2|tmp_rf[15][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	asdata => \Unit1|U1|Mux5~1_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|U2|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[15][10]~q\);

-- Location: FF_X69_Y51_N17
\Unit1|U2|tmp_rf[14][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	asdata => \Unit1|U1|Mux5~1_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|U2|Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[14][10]~q\);

-- Location: LCCOMB_X69_Y51_N8
\Unit1|U2|Mux5~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux5~8_combout\ = (\Unit1|U2|Mux5~7_combout\ & (((\Unit1|U2|tmp_rf[15][10]~q\)) # (!\Unit0|U0|RFr1a_ctrl\(1)))) # (!\Unit1|U2|Mux5~7_combout\ & (\Unit0|U0|RFr1a_ctrl\(1) & ((\Unit1|U2|tmp_rf[14][10]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|Mux5~7_combout\,
	datab => \Unit0|U0|RFr1a_ctrl\(1),
	datac => \Unit1|U2|tmp_rf[15][10]~q\,
	datad => \Unit1|U2|tmp_rf[14][10]~q\,
	combout => \Unit1|U2|Mux5~8_combout\);

-- Location: LCCOMB_X67_Y51_N0
\Unit1|U2|Mux5~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux5~9_combout\ = (\Unit1|U2|Mux5~6_combout\ & (((\Unit1|U2|Mux5~8_combout\)) # (!\Unit0|U0|RFr1a_ctrl\(2)))) # (!\Unit1|U2|Mux5~6_combout\ & (\Unit0|U0|RFr1a_ctrl\(2) & (\Unit1|U2|Mux5~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|Mux5~6_combout\,
	datab => \Unit0|U0|RFr1a_ctrl\(2),
	datac => \Unit1|U2|Mux5~1_combout\,
	datad => \Unit1|U2|Mux5~8_combout\,
	combout => \Unit1|U2|Mux5~9_combout\);

-- Location: FF_X66_Y50_N31
\Unit1|U2|tmp_rf[13][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	asdata => \Unit1|U1|Mux4~1_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|U2|Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[13][11]~q\);

-- Location: FF_X70_Y53_N15
\Unit1|U2|tmp_rf[9][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	asdata => \Unit1|U1|Mux4~1_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|U2|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[9][11]~q\);

-- Location: LCCOMB_X66_Y50_N20
\Unit1|U2|tmp_rf[1][11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[1][11]~feeder_combout\ = \Unit1|U1|Mux4~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Unit1|U1|Mux4~1_combout\,
	combout => \Unit1|U2|tmp_rf[1][11]~feeder_combout\);

-- Location: FF_X66_Y50_N21
\Unit1|U2|tmp_rf[1][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[1][11]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[1][11]~q\);

-- Location: LCCOMB_X70_Y53_N14
\Unit1|U2|Mux20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux20~0_combout\ = (\Unit0|U0|RFr2a_ctrl\(2) & (\Unit0|U0|RFr2a_ctrl\(3))) # (!\Unit0|U0|RFr2a_ctrl\(2) & ((\Unit0|U0|RFr2a_ctrl\(3) & (\Unit1|U2|tmp_rf[9][11]~q\)) # (!\Unit0|U0|RFr2a_ctrl\(3) & ((\Unit1|U2|tmp_rf[1][11]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr2a_ctrl\(2),
	datab => \Unit0|U0|RFr2a_ctrl\(3),
	datac => \Unit1|U2|tmp_rf[9][11]~q\,
	datad => \Unit1|U2|tmp_rf[1][11]~q\,
	combout => \Unit1|U2|Mux20~0_combout\);

-- Location: LCCOMB_X66_Y50_N30
\Unit1|U2|Mux20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux20~1_combout\ = (\Unit0|U0|RFr2a_ctrl\(2) & ((\Unit1|U2|Mux20~0_combout\ & ((\Unit1|U2|tmp_rf[13][11]~q\))) # (!\Unit1|U2|Mux20~0_combout\ & (\Unit1|U2|tmp_rf[5][11]~q\)))) # (!\Unit0|U0|RFr2a_ctrl\(2) & (((\Unit1|U2|Mux20~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr2a_ctrl\(2),
	datab => \Unit1|U2|tmp_rf[5][11]~q\,
	datac => \Unit1|U2|tmp_rf[13][11]~q\,
	datad => \Unit1|U2|Mux20~0_combout\,
	combout => \Unit1|U2|Mux20~1_combout\);

-- Location: LCCOMB_X67_Y52_N14
\Unit1|U2|tmp_rf[10][11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[10][11]~feeder_combout\ = \Unit1|U1|Mux4~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Unit1|U1|Mux4~1_combout\,
	combout => \Unit1|U2|tmp_rf[10][11]~feeder_combout\);

-- Location: FF_X67_Y52_N15
\Unit1|U2|tmp_rf[10][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[10][11]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[10][11]~q\);

-- Location: FF_X67_Y54_N27
\Unit1|U2|tmp_rf[14][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	asdata => \Unit1|U1|Mux4~1_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|U2|Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[14][11]~q\);

-- Location: LCCOMB_X67_Y52_N16
\Unit1|U2|Mux20~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux20~3_combout\ = (\Unit1|U2|Mux20~2_combout\ & (((\Unit1|U2|tmp_rf[14][11]~q\) # (!\Unit0|U0|RFr2a_ctrl\(3))))) # (!\Unit1|U2|Mux20~2_combout\ & (\Unit1|U2|tmp_rf[10][11]~q\ & (\Unit0|U0|RFr2a_ctrl\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|Mux20~2_combout\,
	datab => \Unit1|U2|tmp_rf[10][11]~q\,
	datac => \Unit0|U0|RFr2a_ctrl\(3),
	datad => \Unit1|U2|tmp_rf[14][11]~q\,
	combout => \Unit1|U2|Mux20~3_combout\);

-- Location: FF_X69_Y52_N7
\Unit1|U2|tmp_rf[12][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	asdata => \Unit1|U1|Mux4~1_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|U2|Decoder0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[12][11]~q\);

-- Location: LCCOMB_X63_Y53_N30
\Unit1|U2|tmp_rf[8][11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[8][11]~feeder_combout\ = \Unit1|U1|Mux4~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Unit1|U1|Mux4~1_combout\,
	combout => \Unit1|U2|tmp_rf[8][11]~feeder_combout\);

-- Location: FF_X63_Y53_N31
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
	ena => \Unit1|U2|Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[8][11]~q\);

-- Location: LCCOMB_X66_Y52_N0
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

-- Location: FF_X69_Y52_N13
\Unit1|U2|tmp_rf[4][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	asdata => \Unit1|U1|Mux4~1_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|U2|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[4][11]~q\);

-- Location: FF_X66_Y54_N15
\Unit1|U2|tmp_rf[0][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	asdata => \Unit1|U1|Mux4~1_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|U2|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[0][11]~q\);

-- Location: LCCOMB_X69_Y52_N12
\Unit1|U2|Mux20~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux20~4_combout\ = (\Unit0|U0|RFr2a_ctrl\(2) & ((\Unit0|U0|RFr2a_ctrl\(3)) # ((\Unit1|U2|tmp_rf[4][11]~q\)))) # (!\Unit0|U0|RFr2a_ctrl\(2) & (!\Unit0|U0|RFr2a_ctrl\(3) & ((\Unit1|U2|tmp_rf[0][11]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr2a_ctrl\(2),
	datab => \Unit0|U0|RFr2a_ctrl\(3),
	datac => \Unit1|U2|tmp_rf[4][11]~q\,
	datad => \Unit1|U2|tmp_rf[0][11]~q\,
	combout => \Unit1|U2|Mux20~4_combout\);

-- Location: LCCOMB_X69_Y52_N20
\Unit1|U2|Mux20~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux20~5_combout\ = (\Unit0|U0|RFr2a_ctrl\(3) & ((\Unit1|U2|Mux20~4_combout\ & (\Unit1|U2|tmp_rf[12][11]~q\)) # (!\Unit1|U2|Mux20~4_combout\ & ((\Unit1|U2|tmp_rf[8][11]~q\))))) # (!\Unit0|U0|RFr2a_ctrl\(3) & (((\Unit1|U2|Mux20~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr2a_ctrl\(3),
	datab => \Unit1|U2|tmp_rf[12][11]~q\,
	datac => \Unit1|U2|tmp_rf[8][11]~q\,
	datad => \Unit1|U2|Mux20~4_combout\,
	combout => \Unit1|U2|Mux20~5_combout\);

-- Location: LCCOMB_X69_Y52_N30
\Unit1|U2|Mux20~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux20~6_combout\ = (\Unit0|U0|RFr2a_ctrl\(1) & ((\Unit1|U2|Mux20~3_combout\) # ((\Unit0|U0|RFr2a_ctrl\(0))))) # (!\Unit0|U0|RFr2a_ctrl\(1) & (((!\Unit0|U0|RFr2a_ctrl\(0) & \Unit1|U2|Mux20~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr2a_ctrl\(1),
	datab => \Unit1|U2|Mux20~3_combout\,
	datac => \Unit0|U0|RFr2a_ctrl\(0),
	datad => \Unit1|U2|Mux20~5_combout\,
	combout => \Unit1|U2|Mux20~6_combout\);

-- Location: FF_X70_Y49_N25
\Unit1|U2|tmp_rf[7][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	asdata => \Unit1|U1|Mux4~1_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|U2|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[7][11]~q\);

-- Location: FF_X67_Y52_N9
\Unit1|U2|tmp_rf[15][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	asdata => \Unit1|U1|Mux4~1_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|U2|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[15][11]~q\);

-- Location: LCCOMB_X70_Y49_N24
\Unit1|U2|Mux20~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux20~8_combout\ = (\Unit1|U2|Mux20~7_combout\ & (((\Unit1|U2|tmp_rf[15][11]~q\)) # (!\Unit0|U0|RFr2a_ctrl\(2)))) # (!\Unit1|U2|Mux20~7_combout\ & (\Unit0|U0|RFr2a_ctrl\(2) & (\Unit1|U2|tmp_rf[7][11]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|Mux20~7_combout\,
	datab => \Unit0|U0|RFr2a_ctrl\(2),
	datac => \Unit1|U2|tmp_rf[7][11]~q\,
	datad => \Unit1|U2|tmp_rf[15][11]~q\,
	combout => \Unit1|U2|Mux20~8_combout\);

-- Location: LCCOMB_X70_Y49_N20
\Unit1|U2|Mux20~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux20~9_combout\ = (\Unit0|U0|RFr2a_ctrl\(0) & ((\Unit1|U2|Mux20~6_combout\ & ((\Unit1|U2|Mux20~8_combout\))) # (!\Unit1|U2|Mux20~6_combout\ & (\Unit1|U2|Mux20~1_combout\)))) # (!\Unit0|U0|RFr2a_ctrl\(0) & (((\Unit1|U2|Mux20~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr2a_ctrl\(0),
	datab => \Unit1|U2|Mux20~1_combout\,
	datac => \Unit1|U2|Mux20~6_combout\,
	datad => \Unit1|U2|Mux20~8_combout\,
	combout => \Unit1|U2|Mux20~9_combout\);

-- Location: FF_X70_Y49_N21
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

-- Location: FF_X70_Y52_N17
\Unit1|U2|RFr1[11]~_Duplicate_1\ : dffeas
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
	q => \Unit1|U2|RFr1[11]~_Duplicate_1_q\);

-- Location: LCCOMB_X67_Y51_N30
\Unit1|U2|RFr1[10]~_Duplicate_1feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|RFr1[10]~_Duplicate_1feeder_combout\ = \Unit1|U2|Mux5~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|U2|Mux5~9_combout\,
	combout => \Unit1|U2|RFr1[10]~_Duplicate_1feeder_combout\);

-- Location: FF_X67_Y51_N31
\Unit1|U2|RFr1[10]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|RFr1[10]~_Duplicate_1feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit0|U0|RFr1e_ctrl~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|RFr1[10]~_Duplicate_1_q\);

-- Location: LCCOMB_X69_Y49_N8
\Unit1|U3|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|Add0~36_combout\ = ((\Unit1|U3|Add0~35_combout\ $ (\Unit1|U2|RFr1[11]~_Duplicate_1_q\ $ (!\Unit1|U3|Add0~34\)))) # (GND)
-- \Unit1|U3|Add0~37\ = CARRY((\Unit1|U3|Add0~35_combout\ & ((\Unit1|U2|RFr1[11]~_Duplicate_1_q\) # (!\Unit1|U3|Add0~34\))) # (!\Unit1|U3|Add0~35_combout\ & (\Unit1|U2|RFr1[11]~_Duplicate_1_q\ & !\Unit1|U3|Add0~34\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U3|Add0~35_combout\,
	datab => \Unit1|U2|RFr1[11]~_Duplicate_1_q\,
	datad => VCC,
	cin => \Unit1|U3|Add0~34\,
	combout => \Unit1|U3|Add0~36_combout\,
	cout => \Unit1|U3|Add0~37\);

-- Location: LCCOMB_X63_Y53_N16
\Unit1|U3|Mux28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|Mux28~0_combout\ = (\Unit1|U3|Mux17~0_combout\ & (((\Unit1|U3|Mux17~1_combout\) # (\Unit1|U3|Add0~36_combout\)))) # (!\Unit1|U3|Mux17~0_combout\ & (\Unit1|U2|RFr1[11]~_Duplicate_1_q\ & (!\Unit1|U3|Mux17~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|RFr1[11]~_Duplicate_1_q\,
	datab => \Unit1|U3|Mux17~0_combout\,
	datac => \Unit1|U3|Mux17~1_combout\,
	datad => \Unit1|U3|Add0~36_combout\,
	combout => \Unit1|U3|Mux28~0_combout\);

-- Location: LCCOMB_X63_Y53_N10
\Unit1|U3|Mux28~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|Mux28~1_combout\ = (\Unit1|U3|Mux17~1_combout\ & ((\Unit1|U3|Mux28~0_combout\ & (\Unit1|U3|mult_result\(11))) # (!\Unit1|U3|Mux28~0_combout\ & ((\Unit1|U2|RFr2\(11)))))) # (!\Unit1|U3|Mux17~1_combout\ & (((\Unit1|U3|Mux28~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U3|mult_result\(11),
	datab => \Unit1|U2|RFr2\(11),
	datac => \Unit1|U3|Mux17~1_combout\,
	datad => \Unit1|U3|Mux28~0_combout\,
	combout => \Unit1|U3|Mux28~1_combout\);

-- Location: LCCOMB_X63_Y53_N26
\Unit1|U3|alu_tmp[11]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|alu_tmp\(11) = (GLOBAL(\Unit1|U3|Mux33~0clkctrl_outclk\) & ((\Unit1|U3|Mux28~1_combout\))) # (!GLOBAL(\Unit1|U3|Mux33~0clkctrl_outclk\) & (\Unit1|U3|alu_tmp\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U3|alu_tmp\(11),
	datac => \Unit1|U3|Mux33~0clkctrl_outclk\,
	datad => \Unit1|U3|Mux28~1_combout\,
	combout => \Unit1|U3|alu_tmp\(11));

-- Location: LCCOMB_X63_Y53_N18
\Unit1|U1|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U1|Mux4~0_combout\ = (\Unit0|U0|RFs_ctrl\(0) & ((\Unit2|altsyncram_component|auto_generated|q_a\(11)) # ((\Unit0|U0|RFs_ctrl\(1))))) # (!\Unit0|U0|RFs_ctrl\(0) & (((\Unit1|U3|alu_tmp\(11) & !\Unit0|U0|RFs_ctrl\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFs_ctrl\(0),
	datab => \Unit2|altsyncram_component|auto_generated|q_a\(11),
	datac => \Unit1|U3|alu_tmp\(11),
	datad => \Unit0|U0|RFs_ctrl\(1),
	combout => \Unit1|U1|Mux4~0_combout\);

-- Location: LCCOMB_X63_Y53_N4
\Unit1|U1|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U1|Mux4~1_combout\ = (\Unit1|U1|Mux4~0_combout\) # ((\Unit0|U0|RFs_ctrl\(1) & (\Unit0|U2|IRout\(11) & \Unit0|U0|big_addr~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFs_ctrl\(1),
	datab => \Unit0|U2|IRout\(11),
	datac => \Unit0|U0|big_addr~q\,
	datad => \Unit1|U1|Mux4~0_combout\,
	combout => \Unit1|U1|Mux4~1_combout\);

-- Location: FF_X66_Y53_N23
\Unit1|U2|tmp_rf[5][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	asdata => \Unit1|U1|Mux4~1_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|U2|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[5][11]~q\);

-- Location: LCCOMB_X66_Y50_N4
\Unit1|U2|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux4~0_combout\ = (\Unit0|U0|RFr1a_ctrl\(2) & (((\Unit0|U0|RFr1a_ctrl\(3))))) # (!\Unit0|U0|RFr1a_ctrl\(2) & ((\Unit0|U0|RFr1a_ctrl\(3) & ((\Unit1|U2|tmp_rf[9][11]~q\))) # (!\Unit0|U0|RFr1a_ctrl\(3) & (\Unit1|U2|tmp_rf[1][11]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(2),
	datab => \Unit1|U2|tmp_rf[1][11]~q\,
	datac => \Unit1|U2|tmp_rf[9][11]~q\,
	datad => \Unit0|U0|RFr1a_ctrl\(3),
	combout => \Unit1|U2|Mux4~0_combout\);

-- Location: LCCOMB_X66_Y53_N22
\Unit1|U2|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux4~1_combout\ = (\Unit0|U0|RFr1a_ctrl\(2) & ((\Unit1|U2|Mux4~0_combout\ & (\Unit1|U2|tmp_rf[13][11]~q\)) # (!\Unit1|U2|Mux4~0_combout\ & ((\Unit1|U2|tmp_rf[5][11]~q\))))) # (!\Unit0|U0|RFr1a_ctrl\(2) & (((\Unit1|U2|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[13][11]~q\,
	datab => \Unit0|U0|RFr1a_ctrl\(2),
	datac => \Unit1|U2|tmp_rf[5][11]~q\,
	datad => \Unit1|U2|Mux4~0_combout\,
	combout => \Unit1|U2|Mux4~1_combout\);

-- Location: LCCOMB_X66_Y54_N14
\Unit1|U2|Mux4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux4~4_combout\ = (\Unit0|U0|RFr1a_ctrl\(2) & ((\Unit1|U2|tmp_rf[4][11]~q\) # ((\Unit0|U0|RFr1a_ctrl\(3))))) # (!\Unit0|U0|RFr1a_ctrl\(2) & (((\Unit1|U2|tmp_rf[0][11]~q\ & !\Unit0|U0|RFr1a_ctrl\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(2),
	datab => \Unit1|U2|tmp_rf[4][11]~q\,
	datac => \Unit1|U2|tmp_rf[0][11]~q\,
	datad => \Unit0|U0|RFr1a_ctrl\(3),
	combout => \Unit1|U2|Mux4~4_combout\);

-- Location: LCCOMB_X69_Y52_N6
\Unit1|U2|Mux4~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux4~5_combout\ = (\Unit0|U0|RFr1a_ctrl\(3) & ((\Unit1|U2|Mux4~4_combout\ & ((\Unit1|U2|tmp_rf[12][11]~q\))) # (!\Unit1|U2|Mux4~4_combout\ & (\Unit1|U2|tmp_rf[8][11]~q\)))) # (!\Unit0|U0|RFr1a_ctrl\(3) & (((\Unit1|U2|Mux4~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(3),
	datab => \Unit1|U2|tmp_rf[8][11]~q\,
	datac => \Unit1|U2|tmp_rf[12][11]~q\,
	datad => \Unit1|U2|Mux4~4_combout\,
	combout => \Unit1|U2|Mux4~5_combout\);

-- Location: FF_X67_Y54_N9
\Unit1|U2|tmp_rf[2][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	asdata => \Unit1|U1|Mux4~1_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|U2|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[2][11]~q\);

-- Location: LCCOMB_X67_Y54_N8
\Unit1|U2|Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux4~2_combout\ = (\Unit0|U0|RFr1a_ctrl\(3) & (((\Unit0|U0|RFr1a_ctrl\(2))))) # (!\Unit0|U0|RFr1a_ctrl\(3) & ((\Unit0|U0|RFr1a_ctrl\(2) & (\Unit1|U2|tmp_rf[6][11]~q\)) # (!\Unit0|U0|RFr1a_ctrl\(2) & ((\Unit1|U2|tmp_rf[2][11]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[6][11]~q\,
	datab => \Unit0|U0|RFr1a_ctrl\(3),
	datac => \Unit1|U2|tmp_rf[2][11]~q\,
	datad => \Unit0|U0|RFr1a_ctrl\(2),
	combout => \Unit1|U2|Mux4~2_combout\);

-- Location: LCCOMB_X67_Y54_N26
\Unit1|U2|Mux4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux4~3_combout\ = (\Unit0|U0|RFr1a_ctrl\(3) & ((\Unit1|U2|Mux4~2_combout\ & ((\Unit1|U2|tmp_rf[14][11]~q\))) # (!\Unit1|U2|Mux4~2_combout\ & (\Unit1|U2|tmp_rf[10][11]~q\)))) # (!\Unit0|U0|RFr1a_ctrl\(3) & (((\Unit1|U2|Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[10][11]~q\,
	datab => \Unit0|U0|RFr1a_ctrl\(3),
	datac => \Unit1|U2|tmp_rf[14][11]~q\,
	datad => \Unit1|U2|Mux4~2_combout\,
	combout => \Unit1|U2|Mux4~3_combout\);

-- Location: LCCOMB_X70_Y52_N4
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

-- Location: FF_X66_Y54_N7
\Unit1|U2|tmp_rf[3][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	asdata => \Unit1|U1|Mux4~1_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|U2|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[3][11]~q\);

-- Location: FF_X67_Y49_N11
\Unit1|U2|tmp_rf[11][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	asdata => \Unit1|U1|Mux4~1_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|U2|Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[11][11]~q\);

-- Location: LCCOMB_X66_Y54_N6
\Unit1|U2|Mux4~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux4~7_combout\ = (\Unit0|U0|RFr1a_ctrl\(3) & ((\Unit0|U0|RFr1a_ctrl\(2)) # ((\Unit1|U2|tmp_rf[11][11]~q\)))) # (!\Unit0|U0|RFr1a_ctrl\(3) & (!\Unit0|U0|RFr1a_ctrl\(2) & (\Unit1|U2|tmp_rf[3][11]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(3),
	datab => \Unit0|U0|RFr1a_ctrl\(2),
	datac => \Unit1|U2|tmp_rf[3][11]~q\,
	datad => \Unit1|U2|tmp_rf[11][11]~q\,
	combout => \Unit1|U2|Mux4~7_combout\);

-- Location: LCCOMB_X67_Y52_N8
\Unit1|U2|Mux4~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux4~8_combout\ = (\Unit0|U0|RFr1a_ctrl\(2) & ((\Unit1|U2|Mux4~7_combout\ & ((\Unit1|U2|tmp_rf[15][11]~q\))) # (!\Unit1|U2|Mux4~7_combout\ & (\Unit1|U2|tmp_rf[7][11]~q\)))) # (!\Unit0|U0|RFr1a_ctrl\(2) & (((\Unit1|U2|Mux4~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(2),
	datab => \Unit1|U2|tmp_rf[7][11]~q\,
	datac => \Unit1|U2|tmp_rf[15][11]~q\,
	datad => \Unit1|U2|Mux4~7_combout\,
	combout => \Unit1|U2|Mux4~8_combout\);

-- Location: LCCOMB_X70_Y52_N16
\Unit1|U2|Mux4~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux4~9_combout\ = (\Unit0|U0|RFr1a_ctrl\(0) & ((\Unit1|U2|Mux4~6_combout\ & ((\Unit1|U2|Mux4~8_combout\))) # (!\Unit1|U2|Mux4~6_combout\ & (\Unit1|U2|Mux4~1_combout\)))) # (!\Unit0|U0|RFr1a_ctrl\(0) & (((\Unit1|U2|Mux4~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(0),
	datab => \Unit1|U2|Mux4~1_combout\,
	datac => \Unit1|U2|Mux4~6_combout\,
	datad => \Unit1|U2|Mux4~8_combout\,
	combout => \Unit1|U2|Mux4~9_combout\);

-- Location: LCCOMB_X68_Y51_N14
\Unit1|U1|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U1|Mux3~0_combout\ = (\Unit0|U0|RFs_ctrl\(1) & (((\Unit0|U0|RFs_ctrl\(0))))) # (!\Unit0|U0|RFs_ctrl\(1) & ((\Unit0|U0|RFs_ctrl\(0) & (\Unit2|altsyncram_component|auto_generated|q_a\(12))) # (!\Unit0|U0|RFs_ctrl\(0) & ((\Unit1|U3|alu_tmp\(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit2|altsyncram_component|auto_generated|q_a\(12),
	datab => \Unit0|U0|RFs_ctrl\(1),
	datac => \Unit0|U0|RFs_ctrl\(0),
	datad => \Unit1|U3|alu_tmp\(12),
	combout => \Unit1|U1|Mux3~0_combout\);

-- Location: LCCOMB_X69_Y51_N18
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

-- Location: FF_X69_Y51_N19
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
	ena => \Unit1|U2|Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[14][12]~q\);

-- Location: FF_X68_Y51_N29
\Unit1|U2|tmp_rf[12][12]\ : dffeas
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
	q => \Unit1|U2|tmp_rf[12][12]~q\);

-- Location: LCCOMB_X68_Y51_N28
\Unit1|U2|Mux3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux3~7_combout\ = (\Unit0|U0|RFr1a_ctrl\(0) & (((\Unit0|U0|RFr1a_ctrl\(1))))) # (!\Unit0|U0|RFr1a_ctrl\(0) & ((\Unit0|U0|RFr1a_ctrl\(1) & (\Unit1|U2|tmp_rf[14][12]~q\)) # (!\Unit0|U0|RFr1a_ctrl\(1) & ((\Unit1|U2|tmp_rf[12][12]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(0),
	datab => \Unit1|U2|tmp_rf[14][12]~q\,
	datac => \Unit1|U2|tmp_rf[12][12]~q\,
	datad => \Unit0|U0|RFr1a_ctrl\(1),
	combout => \Unit1|U2|Mux3~7_combout\);

-- Location: FF_X67_Y52_N11
\Unit1|U2|tmp_rf[15][12]\ : dffeas
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
	ena => \Unit1|U2|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[15][12]~q\);

-- Location: LCCOMB_X69_Y53_N4
\Unit1|U2|tmp_rf[13][12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[13][12]~feeder_combout\ = \Unit1|U1|Mux3~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|U1|Mux3~0_combout\,
	combout => \Unit1|U2|tmp_rf[13][12]~feeder_combout\);

-- Location: FF_X69_Y53_N5
\Unit1|U2|tmp_rf[13][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[13][12]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[13][12]~q\);

-- Location: LCCOMB_X67_Y52_N10
\Unit1|U2|Mux3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux3~8_combout\ = (\Unit0|U0|RFr1a_ctrl\(0) & ((\Unit1|U2|Mux3~7_combout\ & (\Unit1|U2|tmp_rf[15][12]~q\)) # (!\Unit1|U2|Mux3~7_combout\ & ((\Unit1|U2|tmp_rf[13][12]~q\))))) # (!\Unit0|U0|RFr1a_ctrl\(0) & (\Unit1|U2|Mux3~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(0),
	datab => \Unit1|U2|Mux3~7_combout\,
	datac => \Unit1|U2|tmp_rf[15][12]~q\,
	datad => \Unit1|U2|tmp_rf[13][12]~q\,
	combout => \Unit1|U2|Mux3~8_combout\);

-- Location: FF_X67_Y49_N21
\Unit1|U2|tmp_rf[11][12]\ : dffeas
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
	q => \Unit1|U2|tmp_rf[11][12]~q\);

-- Location: FF_X67_Y52_N25
\Unit1|U2|tmp_rf[10][12]\ : dffeas
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
	ena => \Unit1|U2|Decoder0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[10][12]~q\);

-- Location: FF_X66_Y51_N3
\Unit1|U2|tmp_rf[9][12]\ : dffeas
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
	ena => \Unit1|U2|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[9][12]~q\);

-- Location: LCCOMB_X66_Y51_N14
\Unit1|U2|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux3~0_combout\ = (\Unit0|U0|RFr1a_ctrl\(0) & (((\Unit1|U2|tmp_rf[9][12]~q\) # (\Unit0|U0|RFr1a_ctrl\(1))))) # (!\Unit0|U0|RFr1a_ctrl\(0) & (\Unit1|U2|tmp_rf[8][12]~q\ & ((!\Unit0|U0|RFr1a_ctrl\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[8][12]~q\,
	datab => \Unit1|U2|tmp_rf[9][12]~q\,
	datac => \Unit0|U0|RFr1a_ctrl\(0),
	datad => \Unit0|U0|RFr1a_ctrl\(1),
	combout => \Unit1|U2|Mux3~0_combout\);

-- Location: LCCOMB_X67_Y52_N24
\Unit1|U2|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux3~1_combout\ = (\Unit0|U0|RFr1a_ctrl\(1) & ((\Unit1|U2|Mux3~0_combout\ & (\Unit1|U2|tmp_rf[11][12]~q\)) # (!\Unit1|U2|Mux3~0_combout\ & ((\Unit1|U2|tmp_rf[10][12]~q\))))) # (!\Unit0|U0|RFr1a_ctrl\(1) & (((\Unit1|U2|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(1),
	datab => \Unit1|U2|tmp_rf[11][12]~q\,
	datac => \Unit1|U2|tmp_rf[10][12]~q\,
	datad => \Unit1|U2|Mux3~0_combout\,
	combout => \Unit1|U2|Mux3~1_combout\);

-- Location: FF_X67_Y53_N21
\Unit1|U2|tmp_rf[7][12]\ : dffeas
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
	ena => \Unit1|U2|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[7][12]~q\);

-- Location: FF_X67_Y53_N25
\Unit1|U2|tmp_rf[4][12]\ : dffeas
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
	ena => \Unit1|U2|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[4][12]~q\);

-- Location: FF_X68_Y53_N27
\Unit1|U2|tmp_rf[6][12]\ : dffeas
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
	ena => \Unit1|U2|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[6][12]~q\);

-- Location: LCCOMB_X67_Y53_N24
\Unit1|U2|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux3~2_combout\ = (\Unit0|U0|RFr1a_ctrl\(1) & ((\Unit0|U0|RFr1a_ctrl\(0)) # ((\Unit1|U2|tmp_rf[6][12]~q\)))) # (!\Unit0|U0|RFr1a_ctrl\(1) & (!\Unit0|U0|RFr1a_ctrl\(0) & (\Unit1|U2|tmp_rf[4][12]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(1),
	datab => \Unit0|U0|RFr1a_ctrl\(0),
	datac => \Unit1|U2|tmp_rf[4][12]~q\,
	datad => \Unit1|U2|tmp_rf[6][12]~q\,
	combout => \Unit1|U2|Mux3~2_combout\);

-- Location: LCCOMB_X67_Y53_N20
\Unit1|U2|Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux3~3_combout\ = (\Unit0|U0|RFr1a_ctrl\(0) & ((\Unit1|U2|Mux3~2_combout\ & ((\Unit1|U2|tmp_rf[7][12]~q\))) # (!\Unit1|U2|Mux3~2_combout\ & (\Unit1|U2|tmp_rf[5][12]~q\)))) # (!\Unit0|U0|RFr1a_ctrl\(0) & (((\Unit1|U2|Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[5][12]~q\,
	datab => \Unit0|U0|RFr1a_ctrl\(0),
	datac => \Unit1|U2|tmp_rf[7][12]~q\,
	datad => \Unit1|U2|Mux3~2_combout\,
	combout => \Unit1|U2|Mux3~3_combout\);

-- Location: LCCOMB_X69_Y53_N0
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

-- Location: FF_X69_Y53_N1
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
	ena => \Unit1|U2|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[2][12]~q\);

-- Location: FF_X66_Y54_N9
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
	ena => \Unit1|U2|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[3][12]~q\);

-- Location: LCCOMB_X68_Y53_N22
\Unit1|U2|tmp_rf[1][12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[1][12]~feeder_combout\ = \Unit1|U1|Mux3~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Unit1|U1|Mux3~0_combout\,
	combout => \Unit1|U2|tmp_rf[1][12]~feeder_combout\);

-- Location: FF_X68_Y53_N23
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
	ena => \Unit1|U2|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[1][12]~q\);

-- Location: FF_X66_Y54_N1
\Unit1|U2|tmp_rf[0][12]\ : dffeas
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
	ena => \Unit1|U2|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[0][12]~q\);

-- Location: LCCOMB_X66_Y54_N0
\Unit1|U2|Mux3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux3~4_combout\ = (\Unit0|U0|RFr1a_ctrl\(0) & ((\Unit1|U2|tmp_rf[1][12]~q\) # ((\Unit0|U0|RFr1a_ctrl\(1))))) # (!\Unit0|U0|RFr1a_ctrl\(0) & (((\Unit1|U2|tmp_rf[0][12]~q\ & !\Unit0|U0|RFr1a_ctrl\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(0),
	datab => \Unit1|U2|tmp_rf[1][12]~q\,
	datac => \Unit1|U2|tmp_rf[0][12]~q\,
	datad => \Unit0|U0|RFr1a_ctrl\(1),
	combout => \Unit1|U2|Mux3~4_combout\);

-- Location: LCCOMB_X66_Y54_N8
\Unit1|U2|Mux3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux3~5_combout\ = (\Unit0|U0|RFr1a_ctrl\(1) & ((\Unit1|U2|Mux3~4_combout\ & ((\Unit1|U2|tmp_rf[3][12]~q\))) # (!\Unit1|U2|Mux3~4_combout\ & (\Unit1|U2|tmp_rf[2][12]~q\)))) # (!\Unit0|U0|RFr1a_ctrl\(1) & (((\Unit1|U2|Mux3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(1),
	datab => \Unit1|U2|tmp_rf[2][12]~q\,
	datac => \Unit1|U2|tmp_rf[3][12]~q\,
	datad => \Unit1|U2|Mux3~4_combout\,
	combout => \Unit1|U2|Mux3~5_combout\);

-- Location: LCCOMB_X66_Y49_N12
\Unit1|U2|Mux3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux3~6_combout\ = (\Unit0|U0|RFr1a_ctrl\(2) & ((\Unit1|U2|Mux3~3_combout\) # ((\Unit0|U0|RFr1a_ctrl\(3))))) # (!\Unit0|U0|RFr1a_ctrl\(2) & (((!\Unit0|U0|RFr1a_ctrl\(3) & \Unit1|U2|Mux3~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(2),
	datab => \Unit1|U2|Mux3~3_combout\,
	datac => \Unit0|U0|RFr1a_ctrl\(3),
	datad => \Unit1|U2|Mux3~5_combout\,
	combout => \Unit1|U2|Mux3~6_combout\);

-- Location: LCCOMB_X66_Y49_N30
\Unit1|U2|Mux3~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux3~9_combout\ = (\Unit0|U0|RFr1a_ctrl\(3) & ((\Unit1|U2|Mux3~6_combout\ & (\Unit1|U2|Mux3~8_combout\)) # (!\Unit1|U2|Mux3~6_combout\ & ((\Unit1|U2|Mux3~1_combout\))))) # (!\Unit0|U0|RFr1a_ctrl\(3) & (((\Unit1|U2|Mux3~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(3),
	datab => \Unit1|U2|Mux3~8_combout\,
	datac => \Unit1|U2|Mux3~1_combout\,
	datad => \Unit1|U2|Mux3~6_combout\,
	combout => \Unit1|U2|Mux3~9_combout\);

-- Location: FF_X62_Y53_N25
\Unit1|U2|tmp_rf[12][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U1|Mux2~0_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[12][13]~q\);

-- Location: FF_X62_Y53_N19
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
	ena => \Unit1|U2|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[4][13]~q\);

-- Location: LCCOMB_X62_Y53_N4
\Unit1|U2|Mux18~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux18~5_combout\ = (\Unit1|U2|Mux18~4_combout\ & ((\Unit1|U2|tmp_rf[12][13]~q\) # ((!\Unit0|U0|RFr2a_ctrl\(2))))) # (!\Unit1|U2|Mux18~4_combout\ & (((\Unit0|U0|RFr2a_ctrl\(2) & \Unit1|U2|tmp_rf[4][13]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|Mux18~4_combout\,
	datab => \Unit1|U2|tmp_rf[12][13]~q\,
	datac => \Unit0|U0|RFr2a_ctrl\(2),
	datad => \Unit1|U2|tmp_rf[4][13]~q\,
	combout => \Unit1|U2|Mux18~5_combout\);

-- Location: LCCOMB_X70_Y53_N24
\Unit1|U2|tmp_rf[9][13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[9][13]~feeder_combout\ = \Unit1|U1|Mux2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|U1|Mux2~0_combout\,
	combout => \Unit1|U2|tmp_rf[9][13]~feeder_combout\);

-- Location: FF_X70_Y53_N25
\Unit1|U2|tmp_rf[9][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[9][13]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[9][13]~q\);

-- Location: LCCOMB_X66_Y53_N2
\Unit1|U2|tmp_rf[5][13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[5][13]~feeder_combout\ = \Unit1|U1|Mux2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Unit1|U1|Mux2~0_combout\,
	combout => \Unit1|U2|tmp_rf[5][13]~feeder_combout\);

-- Location: FF_X66_Y53_N3
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
	ena => \Unit1|U2|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[5][13]~q\);

-- Location: LCCOMB_X66_Y50_N14
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

-- Location: FF_X66_Y50_N15
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
	ena => \Unit1|U2|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[1][13]~q\);

-- Location: LCCOMB_X66_Y53_N6
\Unit1|U2|Mux18~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux18~2_combout\ = (\Unit0|U0|RFr2a_ctrl\(3) & (((\Unit0|U0|RFr2a_ctrl\(2))))) # (!\Unit0|U0|RFr2a_ctrl\(3) & ((\Unit0|U0|RFr2a_ctrl\(2) & (\Unit1|U2|tmp_rf[5][13]~q\)) # (!\Unit0|U0|RFr2a_ctrl\(2) & ((\Unit1|U2|tmp_rf[1][13]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr2a_ctrl\(3),
	datab => \Unit1|U2|tmp_rf[5][13]~q\,
	datac => \Unit1|U2|tmp_rf[1][13]~q\,
	datad => \Unit0|U0|RFr2a_ctrl\(2),
	combout => \Unit1|U2|Mux18~2_combout\);

-- Location: LCCOMB_X70_Y53_N26
\Unit1|U2|Mux18~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux18~3_combout\ = (\Unit0|U0|RFr2a_ctrl\(3) & ((\Unit1|U2|Mux18~2_combout\ & (\Unit1|U2|tmp_rf[13][13]~q\)) # (!\Unit1|U2|Mux18~2_combout\ & ((\Unit1|U2|tmp_rf[9][13]~q\))))) # (!\Unit0|U0|RFr2a_ctrl\(3) & (((\Unit1|U2|Mux18~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[13][13]~q\,
	datab => \Unit1|U2|tmp_rf[9][13]~q\,
	datac => \Unit0|U0|RFr2a_ctrl\(3),
	datad => \Unit1|U2|Mux18~2_combout\,
	combout => \Unit1|U2|Mux18~3_combout\);

-- Location: LCCOMB_X62_Y53_N14
\Unit1|U2|Mux18~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux18~6_combout\ = (\Unit0|U0|RFr2a_ctrl\(1) & (\Unit0|U0|RFr2a_ctrl\(0))) # (!\Unit0|U0|RFr2a_ctrl\(1) & ((\Unit0|U0|RFr2a_ctrl\(0) & ((\Unit1|U2|Mux18~3_combout\))) # (!\Unit0|U0|RFr2a_ctrl\(0) & (\Unit1|U2|Mux18~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr2a_ctrl\(1),
	datab => \Unit0|U0|RFr2a_ctrl\(0),
	datac => \Unit1|U2|Mux18~5_combout\,
	datad => \Unit1|U2|Mux18~3_combout\,
	combout => \Unit1|U2|Mux18~6_combout\);

-- Location: FF_X68_Y54_N17
\Unit1|U2|tmp_rf[6][13]\ : dffeas
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
	q => \Unit1|U2|tmp_rf[6][13]~q\);

-- Location: FF_X67_Y54_N3
\Unit1|U2|tmp_rf[2][13]\ : dffeas
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
	ena => \Unit1|U2|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[2][13]~q\);

-- Location: FF_X68_Y54_N29
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
	ena => \Unit1|U2|Decoder0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[10][13]~q\);

-- Location: LCCOMB_X68_Y54_N28
\Unit1|U2|Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux18~0_combout\ = (\Unit0|U0|RFr2a_ctrl\(3) & (((\Unit1|U2|tmp_rf[10][13]~q\) # (\Unit0|U0|RFr2a_ctrl\(2))))) # (!\Unit0|U0|RFr2a_ctrl\(3) & (\Unit1|U2|tmp_rf[2][13]~q\ & ((!\Unit0|U0|RFr2a_ctrl\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr2a_ctrl\(3),
	datab => \Unit1|U2|tmp_rf[2][13]~q\,
	datac => \Unit1|U2|tmp_rf[10][13]~q\,
	datad => \Unit0|U0|RFr2a_ctrl\(2),
	combout => \Unit1|U2|Mux18~0_combout\);

-- Location: LCCOMB_X67_Y54_N20
\Unit1|U2|Mux18~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux18~1_combout\ = (\Unit0|U0|RFr2a_ctrl\(2) & ((\Unit1|U2|Mux18~0_combout\ & ((\Unit1|U2|tmp_rf[14][13]~q\))) # (!\Unit1|U2|Mux18~0_combout\ & (\Unit1|U2|tmp_rf[6][13]~q\)))) # (!\Unit0|U0|RFr2a_ctrl\(2) & (((\Unit1|U2|Mux18~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr2a_ctrl\(2),
	datab => \Unit1|U2|tmp_rf[6][13]~q\,
	datac => \Unit1|U2|tmp_rf[14][13]~q\,
	datad => \Unit1|U2|Mux18~0_combout\,
	combout => \Unit1|U2|Mux18~1_combout\);

-- Location: LCCOMB_X67_Y49_N24
\Unit1|U2|Mux18~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux18~9_combout\ = (\Unit0|U0|RFr2a_ctrl\(1) & ((\Unit1|U2|Mux18~6_combout\ & (\Unit1|U2|Mux18~8_combout\)) # (!\Unit1|U2|Mux18~6_combout\ & ((\Unit1|U2|Mux18~1_combout\))))) # (!\Unit0|U0|RFr2a_ctrl\(1) & (((\Unit1|U2|Mux18~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|Mux18~8_combout\,
	datab => \Unit0|U0|RFr2a_ctrl\(1),
	datac => \Unit1|U2|Mux18~6_combout\,
	datad => \Unit1|U2|Mux18~1_combout\,
	combout => \Unit1|U2|Mux18~9_combout\);

-- Location: FF_X67_Y49_N25
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

-- Location: LCCOMB_X67_Y50_N24
\Unit1|U3|alu_tmp[14]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|alu_tmp\(14) = (GLOBAL(\Unit1|U3|Mux33~0clkctrl_outclk\) & (\Unit1|U3|Mux31~1_combout\)) # (!GLOBAL(\Unit1|U3|Mux33~0clkctrl_outclk\) & ((\Unit1|U3|alu_tmp\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U3|Mux31~1_combout\,
	datac => \Unit1|U3|Mux33~0clkctrl_outclk\,
	datad => \Unit1|U3|alu_tmp\(14),
	combout => \Unit1|U3|alu_tmp\(14));

-- Location: LCCOMB_X68_Y51_N20
\Unit1|U1|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U1|Mux1~0_combout\ = (\Unit0|U0|RFs_ctrl\(1) & (((\Unit0|U0|RFs_ctrl\(0))))) # (!\Unit0|U0|RFs_ctrl\(1) & ((\Unit0|U0|RFs_ctrl\(0) & (\Unit2|altsyncram_component|auto_generated|q_a\(14))) # (!\Unit0|U0|RFs_ctrl\(0) & ((\Unit1|U3|alu_tmp\(14))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit2|altsyncram_component|auto_generated|q_a\(14),
	datab => \Unit0|U0|RFs_ctrl\(1),
	datac => \Unit0|U0|RFs_ctrl\(0),
	datad => \Unit1|U3|alu_tmp\(14),
	combout => \Unit1|U1|Mux1~0_combout\);

-- Location: FF_X68_Y53_N5
\Unit1|U2|tmp_rf[6][14]\ : dffeas
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
	ena => \Unit1|U2|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[6][14]~q\);

-- Location: FF_X67_Y53_N15
\Unit1|U2|tmp_rf[7][14]\ : dffeas
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
	ena => \Unit1|U2|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[7][14]~q\);

-- Location: LCCOMB_X68_Y53_N4
\Unit1|U2|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux1~1_combout\ = (\Unit1|U2|Mux1~0_combout\ & (((\Unit1|U2|tmp_rf[7][14]~q\)) # (!\Unit0|U0|RFr1a_ctrl\(1)))) # (!\Unit1|U2|Mux1~0_combout\ & (\Unit0|U0|RFr1a_ctrl\(1) & (\Unit1|U2|tmp_rf[6][14]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|Mux1~0_combout\,
	datab => \Unit0|U0|RFr1a_ctrl\(1),
	datac => \Unit1|U2|tmp_rf[6][14]~q\,
	datad => \Unit1|U2|tmp_rf[7][14]~q\,
	combout => \Unit1|U2|Mux1~1_combout\);

-- Location: FF_X69_Y53_N23
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
	ena => \Unit1|U2|Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[13][14]~q\);

-- Location: FF_X68_Y51_N7
\Unit1|U2|tmp_rf[12][14]\ : dffeas
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
	q => \Unit1|U2|tmp_rf[12][14]~q\);

-- Location: LCCOMB_X68_Y51_N6
\Unit1|U2|Mux1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux1~7_combout\ = (\Unit0|U0|RFr1a_ctrl\(0) & ((\Unit1|U2|tmp_rf[13][14]~q\) # ((\Unit0|U0|RFr1a_ctrl\(1))))) # (!\Unit0|U0|RFr1a_ctrl\(0) & (((\Unit1|U2|tmp_rf[12][14]~q\ & !\Unit0|U0|RFr1a_ctrl\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(0),
	datab => \Unit1|U2|tmp_rf[13][14]~q\,
	datac => \Unit1|U2|tmp_rf[12][14]~q\,
	datad => \Unit0|U0|RFr1a_ctrl\(1),
	combout => \Unit1|U2|Mux1~7_combout\);

-- Location: FF_X69_Y51_N13
\Unit1|U2|tmp_rf[15][14]\ : dffeas
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
	ena => \Unit1|U2|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[15][14]~q\);

-- Location: FF_X69_Y51_N29
\Unit1|U2|tmp_rf[14][14]\ : dffeas
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
	ena => \Unit1|U2|Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[14][14]~q\);

-- Location: LCCOMB_X69_Y51_N12
\Unit1|U2|Mux1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux1~8_combout\ = (\Unit0|U0|RFr1a_ctrl\(1) & ((\Unit1|U2|Mux1~7_combout\ & (\Unit1|U2|tmp_rf[15][14]~q\)) # (!\Unit1|U2|Mux1~7_combout\ & ((\Unit1|U2|tmp_rf[14][14]~q\))))) # (!\Unit0|U0|RFr1a_ctrl\(1) & (\Unit1|U2|Mux1~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(1),
	datab => \Unit1|U2|Mux1~7_combout\,
	datac => \Unit1|U2|tmp_rf[15][14]~q\,
	datad => \Unit1|U2|tmp_rf[14][14]~q\,
	combout => \Unit1|U2|Mux1~8_combout\);

-- Location: LCCOMB_X67_Y51_N18
\Unit1|U2|Mux1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux1~9_combout\ = (\Unit1|U2|Mux1~6_combout\ & (((\Unit1|U2|Mux1~8_combout\) # (!\Unit0|U0|RFr1a_ctrl\(2))))) # (!\Unit1|U2|Mux1~6_combout\ & (\Unit1|U2|Mux1~1_combout\ & (\Unit0|U0|RFr1a_ctrl\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|Mux1~6_combout\,
	datab => \Unit1|U2|Mux1~1_combout\,
	datac => \Unit0|U0|RFr1a_ctrl\(2),
	datad => \Unit1|U2|Mux1~8_combout\,
	combout => \Unit1|U2|Mux1~9_combout\);

-- Location: LCCOMB_X63_Y49_N8
\Unit0|U3|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U3|Mux7~0_combout\ = (\Unit0|U0|Ms_ctrl\(1) & ((\Unit0|U0|Ms_ctrl\(0) & ((\Unit0|U2|IRout\(8)))) # (!\Unit0|U0|Ms_ctrl\(0) & (\Unit1|U2|RFr1[8]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|RFr1[8]~_Duplicate_1_q\,
	datab => \Unit0|U0|Ms_ctrl\(1),
	datac => \Unit0|U0|Ms_ctrl\(0),
	datad => \Unit0|U2|IRout\(8),
	combout => \Unit0|U3|Mux7~0_combout\);

-- Location: LCCOMB_X63_Y49_N2
\Unit0|U3|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U3|Mux7~1_combout\ = (\Unit0|U3|Mux7~0_combout\) # ((\Unit0|U1|tmp_PC\(8) & (!\Unit0|U0|Ms_ctrl\(1) & !\Unit0|U0|Ms_ctrl\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U1|tmp_PC\(8),
	datab => \Unit0|U0|Ms_ctrl\(1),
	datac => \Unit0|U3|Mux7~0_combout\,
	datad => \Unit0|U0|Ms_ctrl\(0),
	combout => \Unit0|U3|Mux7~1_combout\);

-- Location: LCCOMB_X63_Y49_N10
\Unit2|address_sent[8]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit2|address_sent[8]~0_combout\ = (\Unit0|U0|big_addr~q\ & \Unit0|U3|Mux7~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Unit0|U0|big_addr~q\,
	datad => \Unit0|U3|Mux7~1_combout\,
	combout => \Unit2|address_sent[8]~0_combout\);

-- Location: LCCOMB_X61_Y50_N14
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

-- Location: FF_X61_Y50_N15
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
	sload => \Unit0|U1|process_0~0_combout\,
	ena => \Unit0|U1|tmp_PC~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U1|tmp_PC\(7));

-- Location: LCCOMB_X61_Y50_N16
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

-- Location: FF_X61_Y50_N17
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
	sload => \Unit0|U1|process_0~0_combout\,
	ena => \Unit0|U1|tmp_PC~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U1|tmp_PC\(8));

-- Location: LCCOMB_X61_Y50_N18
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

-- Location: FF_X61_Y50_N19
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
	sload => \Unit0|U1|process_0~0_combout\,
	ena => \Unit0|U1|tmp_PC~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U1|tmp_PC\(9));

-- Location: LCCOMB_X65_Y49_N12
\Unit0|U3|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U3|Mux6~0_combout\ = (\Unit0|U0|Ms_ctrl\(1) & ((\Unit0|U0|Ms_ctrl\(0) & (\Unit0|U2|IRout\(9))) # (!\Unit0|U0|Ms_ctrl\(0) & ((\Unit1|U2|RFr1[9]~_Duplicate_1_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|Ms_ctrl\(0),
	datab => \Unit0|U2|IRout\(9),
	datac => \Unit0|U0|Ms_ctrl\(1),
	datad => \Unit1|U2|RFr1[9]~_Duplicate_1_q\,
	combout => \Unit0|U3|Mux6~0_combout\);

-- Location: LCCOMB_X65_Y49_N14
\Unit0|U3|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U3|Mux6~1_combout\ = (\Unit0|U3|Mux6~0_combout\) # ((!\Unit0|U0|Ms_ctrl\(0) & (\Unit0|U1|tmp_PC\(9) & !\Unit0|U0|Ms_ctrl\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|Ms_ctrl\(0),
	datab => \Unit0|U1|tmp_PC\(9),
	datac => \Unit0|U0|Ms_ctrl\(1),
	datad => \Unit0|U3|Mux6~0_combout\,
	combout => \Unit0|U3|Mux6~1_combout\);

-- Location: LCCOMB_X65_Y49_N6
\Unit2|address_sent[9]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit2|address_sent[9]~1_combout\ = (\Unit0|U3|Mux6~1_combout\ & \Unit0|U0|big_addr~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Unit0|U3|Mux6~1_combout\,
	datad => \Unit0|U0|big_addr~q\,
	combout => \Unit2|address_sent[9]~1_combout\);

-- Location: LCCOMB_X63_Y50_N12
\Unit0|U3|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U3|Mux5~0_combout\ = (\Unit0|U0|Ms_ctrl\(1) & ((\Unit0|U0|Ms_ctrl\(0) & ((\Unit0|U2|IRout\(10)))) # (!\Unit0|U0|Ms_ctrl\(0) & (\Unit1|U2|RFr1[10]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|RFr1[10]~_Duplicate_1_q\,
	datab => \Unit0|U0|Ms_ctrl\(0),
	datac => \Unit0|U0|Ms_ctrl\(1),
	datad => \Unit0|U2|IRout\(10),
	combout => \Unit0|U3|Mux5~0_combout\);

-- Location: LCCOMB_X63_Y50_N30
\Unit0|U3|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U3|Mux5~1_combout\ = (\Unit0|U3|Mux5~0_combout\) # ((\Unit0|U1|tmp_PC\(10) & (!\Unit0|U0|Ms_ctrl\(0) & !\Unit0|U0|Ms_ctrl\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U1|tmp_PC\(10),
	datab => \Unit0|U0|Ms_ctrl\(0),
	datac => \Unit0|U0|Ms_ctrl\(1),
	datad => \Unit0|U3|Mux5~0_combout\,
	combout => \Unit0|U3|Mux5~1_combout\);

-- Location: LCCOMB_X63_Y50_N10
\Unit2|address_sent[10]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit2|address_sent[10]~2_combout\ = (\Unit0|U0|big_addr~q\ & \Unit0|U3|Mux5~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Unit0|U0|big_addr~q\,
	datac => \Unit0|U3|Mux5~1_combout\,
	combout => \Unit2|address_sent[10]~2_combout\);

-- Location: LCCOMB_X63_Y53_N8
\Unit0|U3|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U3|Mux4~0_combout\ = (\Unit0|U0|Ms_ctrl\(1) & ((\Unit0|U0|Ms_ctrl\(0) & ((\Unit0|U2|IRout\(11)))) # (!\Unit0|U0|Ms_ctrl\(0) & (\Unit1|U2|RFr1[11]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|RFr1[11]~_Duplicate_1_q\,
	datab => \Unit0|U0|Ms_ctrl\(0),
	datac => \Unit0|U0|Ms_ctrl\(1),
	datad => \Unit0|U2|IRout\(11),
	combout => \Unit0|U3|Mux4~0_combout\);

-- Location: LCCOMB_X63_Y53_N2
\Unit0|U3|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U3|Mux4~1_combout\ = (\Unit0|U3|Mux4~0_combout\) # ((\Unit0|U1|tmp_PC\(11) & (!\Unit0|U0|Ms_ctrl\(1) & !\Unit0|U0|Ms_ctrl\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U1|tmp_PC\(11),
	datab => \Unit0|U0|Ms_ctrl\(1),
	datac => \Unit0|U3|Mux4~0_combout\,
	datad => \Unit0|U0|Ms_ctrl\(0),
	combout => \Unit0|U3|Mux4~1_combout\);

-- Location: LCCOMB_X63_Y53_N20
\Unit2|address_sent[11]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit2|address_sent[11]~3_combout\ = (\Unit0|U0|big_addr~q\ & \Unit0|U3|Mux4~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Unit0|U0|big_addr~q\,
	datad => \Unit0|U3|Mux4~1_combout\,
	combout => \Unit2|address_sent[11]~3_combout\);

-- Location: LCCOMB_X65_Y50_N2
\Unit1|U1|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U1|Mux15~0_combout\ = (\Unit0|U0|RFs_ctrl\(1) & ((\Unit0|U0|RFs_ctrl\(0)) # ((\Unit0|U2|dir_addr\(0))))) # (!\Unit0|U0|RFs_ctrl\(1) & (!\Unit0|U0|RFs_ctrl\(0) & ((\Unit1|U3|alu_tmp\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFs_ctrl\(1),
	datab => \Unit0|U0|RFs_ctrl\(0),
	datac => \Unit0|U2|dir_addr\(0),
	datad => \Unit1|U3|alu_tmp\(0),
	combout => \Unit1|U1|Mux15~0_combout\);

-- Location: LCCOMB_X65_Y50_N22
\Unit1|U1|Mux15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U1|Mux15~1_combout\ = (\Unit1|U1|Mux15~0_combout\) # ((\Unit2|altsyncram_component|auto_generated|q_a\(0) & \Unit0|U0|RFs_ctrl\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit2|altsyncram_component|auto_generated|q_a\(0),
	datac => \Unit0|U0|RFs_ctrl\(0),
	datad => \Unit1|U1|Mux15~0_combout\,
	combout => \Unit1|U1|Mux15~1_combout\);

-- Location: FF_X68_Y50_N17
\Unit1|U2|tmp_rf[9][0]\ : dffeas
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
	q => \Unit1|U2|tmp_rf[9][0]~q\);

-- Location: FF_X66_Y51_N17
\Unit1|U2|tmp_rf[8][0]\ : dffeas
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
	ena => \Unit1|U2|Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[8][0]~q\);

-- Location: LCCOMB_X68_Y50_N16
\Unit1|U2|Mux31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux31~0_combout\ = (\Unit0|U0|RFr2a_ctrl\(0) & ((\Unit0|U0|RFr2a_ctrl\(1)) # ((\Unit1|U2|tmp_rf[9][0]~q\)))) # (!\Unit0|U0|RFr2a_ctrl\(0) & (!\Unit0|U0|RFr2a_ctrl\(1) & ((\Unit1|U2|tmp_rf[8][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr2a_ctrl\(0),
	datab => \Unit0|U0|RFr2a_ctrl\(1),
	datac => \Unit1|U2|tmp_rf[9][0]~q\,
	datad => \Unit1|U2|tmp_rf[8][0]~q\,
	combout => \Unit1|U2|Mux31~0_combout\);

-- Location: FF_X68_Y50_N7
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
	ena => \Unit1|U2|Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[11][0]~q\);

-- Location: LCCOMB_X68_Y50_N6
\Unit1|U2|Mux31~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux31~1_combout\ = (\Unit1|U2|Mux31~0_combout\ & (((\Unit1|U2|tmp_rf[11][0]~q\) # (!\Unit0|U0|RFr2a_ctrl\(1))))) # (!\Unit1|U2|Mux31~0_combout\ & (\Unit1|U2|tmp_rf[10][0]~q\ & ((\Unit0|U0|RFr2a_ctrl\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[10][0]~q\,
	datab => \Unit1|U2|Mux31~0_combout\,
	datac => \Unit1|U2|tmp_rf[11][0]~q\,
	datad => \Unit0|U0|RFr2a_ctrl\(1),
	combout => \Unit1|U2|Mux31~1_combout\);

-- Location: FF_X62_Y51_N25
\Unit1|U2|tmp_rf[5][0]\ : dffeas
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
	ena => \Unit1|U2|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[5][0]~q\);

-- Location: LCCOMB_X62_Y52_N20
\Unit1|U2|tmp_rf[6][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[6][0]~feeder_combout\ = \Unit1|U1|Mux15~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|U1|Mux15~1_combout\,
	combout => \Unit1|U2|tmp_rf[6][0]~feeder_combout\);

-- Location: FF_X62_Y52_N21
\Unit1|U2|tmp_rf[6][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[6][0]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[6][0]~q\);

-- Location: LCCOMB_X62_Y53_N16
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

-- Location: FF_X62_Y53_N17
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
	ena => \Unit1|U2|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[4][0]~q\);

-- Location: LCCOMB_X62_Y52_N4
\Unit1|U2|Mux31~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux31~2_combout\ = (\Unit0|U0|RFr2a_ctrl\(1) & ((\Unit1|U2|tmp_rf[6][0]~q\) # ((\Unit0|U0|RFr2a_ctrl\(0))))) # (!\Unit0|U0|RFr2a_ctrl\(1) & (((!\Unit0|U0|RFr2a_ctrl\(0) & \Unit1|U2|tmp_rf[4][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr2a_ctrl\(1),
	datab => \Unit1|U2|tmp_rf[6][0]~q\,
	datac => \Unit0|U0|RFr2a_ctrl\(0),
	datad => \Unit1|U2|tmp_rf[4][0]~q\,
	combout => \Unit1|U2|Mux31~2_combout\);

-- Location: LCCOMB_X62_Y51_N24
\Unit1|U2|Mux31~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux31~3_combout\ = (\Unit0|U0|RFr2a_ctrl\(0) & ((\Unit1|U2|Mux31~2_combout\ & (\Unit1|U2|tmp_rf[7][0]~q\)) # (!\Unit1|U2|Mux31~2_combout\ & ((\Unit1|U2|tmp_rf[5][0]~q\))))) # (!\Unit0|U0|RFr2a_ctrl\(0) & (((\Unit1|U2|Mux31~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[7][0]~q\,
	datab => \Unit0|U0|RFr2a_ctrl\(0),
	datac => \Unit1|U2|tmp_rf[5][0]~q\,
	datad => \Unit1|U2|Mux31~2_combout\,
	combout => \Unit1|U2|Mux31~3_combout\);

-- Location: FF_X63_Y51_N31
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
	ena => \Unit1|U2|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[3][0]~q\);

-- Location: FF_X65_Y52_N1
\Unit1|U2|tmp_rf[2][0]\ : dffeas
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
	ena => \Unit1|U2|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[2][0]~q\);

-- Location: LCCOMB_X62_Y52_N8
\Unit1|U2|tmp_rf[1][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[1][0]~feeder_combout\ = \Unit1|U1|Mux15~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|U1|Mux15~1_combout\,
	combout => \Unit1|U2|tmp_rf[1][0]~feeder_combout\);

-- Location: FF_X62_Y52_N9
\Unit1|U2|tmp_rf[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[1][0]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[1][0]~q\);

-- Location: FF_X63_Y51_N1
\Unit1|U2|tmp_rf[0][0]\ : dffeas
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
	ena => \Unit1|U2|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[0][0]~q\);

-- Location: LCCOMB_X62_Y52_N14
\Unit1|U2|Mux31~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux31~4_combout\ = (\Unit0|U0|RFr2a_ctrl\(1) & (((\Unit0|U0|RFr2a_ctrl\(0))))) # (!\Unit0|U0|RFr2a_ctrl\(1) & ((\Unit0|U0|RFr2a_ctrl\(0) & (\Unit1|U2|tmp_rf[1][0]~q\)) # (!\Unit0|U0|RFr2a_ctrl\(0) & ((\Unit1|U2|tmp_rf[0][0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr2a_ctrl\(1),
	datab => \Unit1|U2|tmp_rf[1][0]~q\,
	datac => \Unit0|U0|RFr2a_ctrl\(0),
	datad => \Unit1|U2|tmp_rf[0][0]~q\,
	combout => \Unit1|U2|Mux31~4_combout\);

-- Location: LCCOMB_X65_Y52_N0
\Unit1|U2|Mux31~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux31~5_combout\ = (\Unit0|U0|RFr2a_ctrl\(1) & ((\Unit1|U2|Mux31~4_combout\ & (\Unit1|U2|tmp_rf[3][0]~q\)) # (!\Unit1|U2|Mux31~4_combout\ & ((\Unit1|U2|tmp_rf[2][0]~q\))))) # (!\Unit0|U0|RFr2a_ctrl\(1) & (((\Unit1|U2|Mux31~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr2a_ctrl\(1),
	datab => \Unit1|U2|tmp_rf[3][0]~q\,
	datac => \Unit1|U2|tmp_rf[2][0]~q\,
	datad => \Unit1|U2|Mux31~4_combout\,
	combout => \Unit1|U2|Mux31~5_combout\);

-- Location: LCCOMB_X70_Y53_N16
\Unit1|U2|Mux31~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux31~6_combout\ = (\Unit0|U0|RFr2a_ctrl\(2) & ((\Unit0|U0|RFr2a_ctrl\(3)) # ((\Unit1|U2|Mux31~3_combout\)))) # (!\Unit0|U0|RFr2a_ctrl\(2) & (!\Unit0|U0|RFr2a_ctrl\(3) & ((\Unit1|U2|Mux31~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr2a_ctrl\(2),
	datab => \Unit0|U0|RFr2a_ctrl\(3),
	datac => \Unit1|U2|Mux31~3_combout\,
	datad => \Unit1|U2|Mux31~5_combout\,
	combout => \Unit1|U2|Mux31~6_combout\);

-- Location: LCCOMB_X70_Y53_N6
\Unit1|U2|Mux31~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux31~9_combout\ = (\Unit0|U0|RFr2a_ctrl\(3) & ((\Unit1|U2|Mux31~6_combout\ & (\Unit1|U2|Mux31~8_combout\)) # (!\Unit1|U2|Mux31~6_combout\ & ((\Unit1|U2|Mux31~1_combout\))))) # (!\Unit0|U0|RFr2a_ctrl\(3) & (((\Unit1|U2|Mux31~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|Mux31~8_combout\,
	datab => \Unit1|U2|Mux31~1_combout\,
	datac => \Unit0|U0|RFr2a_ctrl\(3),
	datad => \Unit1|U2|Mux31~6_combout\,
	combout => \Unit1|U2|Mux31~9_combout\);

-- Location: FF_X70_Y53_N7
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

-- Location: LCCOMB_X69_Y46_N4
\Unit0|U0|Selector74~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|Selector74~0_combout\ = (\Unit0|U0|state.S_REG_ADDR_SAVE~q\) # ((\Unit0|U0|state.S_SUBT~q\) # ((\Unit0|U0|ALUs_ctrl\(0) & \Unit0|U0|WideOr63~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|state.S_REG_ADDR_SAVE~q\,
	datab => \Unit0|U0|state.S_SUBT~q\,
	datac => \Unit0|U0|ALUs_ctrl\(0),
	datad => \Unit0|U0|WideOr63~1_combout\,
	combout => \Unit0|U0|Selector74~0_combout\);

-- Location: FF_X69_Y46_N5
\Unit0|U0|ALUs_ctrl[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit0|U0|Selector74~0_combout\,
	ena => \ALT_INV_cpu_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U0|ALUs_ctrl\(0));

-- Location: LCCOMB_X70_Y49_N4
\Unit1|U3|Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|Add0~5_combout\ = \Unit1|U2|RFr2\(1) $ (\Unit0|U0|ALUs_ctrl\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Unit1|U2|RFr2\(1),
	datad => \Unit0|U0|ALUs_ctrl\(0),
	combout => \Unit1|U3|Add0~5_combout\);

-- Location: LCCOMB_X69_Y50_N8
\Unit1|U3|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|Add0~0_combout\ = \Unit1|U2|RFr2\(0) $ (\Unit0|U0|ALUs_ctrl\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Unit1|U2|RFr2\(0),
	datad => \Unit0|U0|ALUs_ctrl\(0),
	combout => \Unit1|U3|Add0~0_combout\);

-- Location: LCCOMB_X69_Y50_N16
\Unit1|U3|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|Add0~2_cout\ = CARRY(\Unit0|U0|ALUs_ctrl\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|ALUs_ctrl\(0),
	datad => VCC,
	cout => \Unit1|U3|Add0~2_cout\);

-- Location: LCCOMB_X69_Y50_N20
\Unit1|U3|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|Add0~6_combout\ = ((\Unit1|U2|RFr1[1]~_Duplicate_1_q\ $ (\Unit1|U3|Add0~5_combout\ $ (!\Unit1|U3|Add0~4\)))) # (GND)
-- \Unit1|U3|Add0~7\ = CARRY((\Unit1|U2|RFr1[1]~_Duplicate_1_q\ & ((\Unit1|U3|Add0~5_combout\) # (!\Unit1|U3|Add0~4\))) # (!\Unit1|U2|RFr1[1]~_Duplicate_1_q\ & (\Unit1|U3|Add0~5_combout\ & !\Unit1|U3|Add0~4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|RFr1[1]~_Duplicate_1_q\,
	datab => \Unit1|U3|Add0~5_combout\,
	datad => VCC,
	cin => \Unit1|U3|Add0~4\,
	combout => \Unit1|U3|Add0~6_combout\,
	cout => \Unit1|U3|Add0~7\);

-- Location: LCCOMB_X63_Y50_N22
\Unit1|U3|Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|Mux18~0_combout\ = (\Unit1|U3|Mux17~0_combout\ & (((\Unit1|U3|Mux17~1_combout\) # (\Unit1|U3|Add0~6_combout\)))) # (!\Unit1|U3|Mux17~0_combout\ & (\Unit1|U2|RFr1[1]~_Duplicate_1_q\ & (!\Unit1|U3|Mux17~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U3|Mux17~0_combout\,
	datab => \Unit1|U2|RFr1[1]~_Duplicate_1_q\,
	datac => \Unit1|U3|Mux17~1_combout\,
	datad => \Unit1|U3|Add0~6_combout\,
	combout => \Unit1|U3|Mux18~0_combout\);

-- Location: FF_X68_Y52_N11
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
	ena => \Unit1|U2|Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[13][3]~q\);

-- Location: FF_X70_Y53_N1
\Unit1|U2|tmp_rf[9][3]\ : dffeas
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
	ena => \Unit1|U2|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[9][3]~q\);

-- Location: LCCOMB_X68_Y52_N18
\Unit1|U2|tmp_rf[1][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[1][3]~feeder_combout\ = \Unit1|U1|Mux12~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Unit1|U1|Mux12~1_combout\,
	combout => \Unit1|U2|tmp_rf[1][3]~feeder_combout\);

-- Location: FF_X68_Y52_N19
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
	ena => \Unit1|U2|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[1][3]~q\);

-- Location: LCCOMB_X70_Y53_N0
\Unit1|U2|Mux28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux28~0_combout\ = (\Unit0|U0|RFr2a_ctrl\(2) & (\Unit0|U0|RFr2a_ctrl\(3))) # (!\Unit0|U0|RFr2a_ctrl\(2) & ((\Unit0|U0|RFr2a_ctrl\(3) & (\Unit1|U2|tmp_rf[9][3]~q\)) # (!\Unit0|U0|RFr2a_ctrl\(3) & ((\Unit1|U2|tmp_rf[1][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr2a_ctrl\(2),
	datab => \Unit0|U0|RFr2a_ctrl\(3),
	datac => \Unit1|U2|tmp_rf[9][3]~q\,
	datad => \Unit1|U2|tmp_rf[1][3]~q\,
	combout => \Unit1|U2|Mux28~0_combout\);

-- Location: LCCOMB_X68_Y52_N10
\Unit1|U2|Mux28~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux28~1_combout\ = (\Unit0|U0|RFr2a_ctrl\(2) & ((\Unit1|U2|Mux28~0_combout\ & ((\Unit1|U2|tmp_rf[13][3]~q\))) # (!\Unit1|U2|Mux28~0_combout\ & (\Unit1|U2|tmp_rf[5][3]~q\)))) # (!\Unit0|U0|RFr2a_ctrl\(2) & (((\Unit1|U2|Mux28~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[5][3]~q\,
	datab => \Unit0|U0|RFr2a_ctrl\(2),
	datac => \Unit1|U2|tmp_rf[13][3]~q\,
	datad => \Unit1|U2|Mux28~0_combout\,
	combout => \Unit1|U2|Mux28~1_combout\);

-- Location: LCCOMB_X62_Y52_N2
\Unit1|U2|tmp_rf[6][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[6][3]~feeder_combout\ = \Unit1|U1|Mux12~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Unit1|U1|Mux12~1_combout\,
	combout => \Unit1|U2|tmp_rf[6][3]~feeder_combout\);

-- Location: FF_X62_Y52_N3
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
	ena => \Unit1|U2|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[6][3]~q\);

-- Location: LCCOMB_X62_Y52_N12
\Unit1|U2|Mux28~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux28~2_combout\ = (\Unit0|U0|RFr2a_ctrl\(3) & (((\Unit0|U0|RFr2a_ctrl\(2))))) # (!\Unit0|U0|RFr2a_ctrl\(3) & ((\Unit0|U0|RFr2a_ctrl\(2) & ((\Unit1|U2|tmp_rf[6][3]~q\))) # (!\Unit0|U0|RFr2a_ctrl\(2) & (\Unit1|U2|tmp_rf[2][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[2][3]~q\,
	datab => \Unit1|U2|tmp_rf[6][3]~q\,
	datac => \Unit0|U0|RFr2a_ctrl\(3),
	datad => \Unit0|U0|RFr2a_ctrl\(2),
	combout => \Unit1|U2|Mux28~2_combout\);

-- Location: FF_X65_Y51_N15
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
	ena => \Unit1|U2|Decoder0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[10][3]~q\);

-- Location: FF_X65_Y52_N11
\Unit1|U2|tmp_rf[14][3]\ : dffeas
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
	ena => \Unit1|U2|Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[14][3]~q\);

-- Location: LCCOMB_X65_Y51_N14
\Unit1|U2|Mux28~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux28~3_combout\ = (\Unit0|U0|RFr2a_ctrl\(3) & ((\Unit1|U2|Mux28~2_combout\ & ((\Unit1|U2|tmp_rf[14][3]~q\))) # (!\Unit1|U2|Mux28~2_combout\ & (\Unit1|U2|tmp_rf[10][3]~q\)))) # (!\Unit0|U0|RFr2a_ctrl\(3) & (\Unit1|U2|Mux28~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr2a_ctrl\(3),
	datab => \Unit1|U2|Mux28~2_combout\,
	datac => \Unit1|U2|tmp_rf[10][3]~q\,
	datad => \Unit1|U2|tmp_rf[14][3]~q\,
	combout => \Unit1|U2|Mux28~3_combout\);

-- Location: LCCOMB_X69_Y52_N16
\Unit1|U2|tmp_rf[4][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[4][3]~feeder_combout\ = \Unit1|U1|Mux12~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|U1|Mux12~1_combout\,
	combout => \Unit1|U2|tmp_rf[4][3]~feeder_combout\);

-- Location: FF_X69_Y52_N17
\Unit1|U2|tmp_rf[4][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[4][3]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[4][3]~q\);

-- Location: LCCOMB_X66_Y52_N26
\Unit1|U2|tmp_rf[0][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[0][3]~feeder_combout\ = \Unit1|U1|Mux12~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Unit1|U1|Mux12~1_combout\,
	combout => \Unit1|U2|tmp_rf[0][3]~feeder_combout\);

-- Location: FF_X66_Y52_N27
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
	ena => \Unit1|U2|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[0][3]~q\);

-- Location: LCCOMB_X69_Y52_N8
\Unit1|U2|Mux28~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux28~4_combout\ = (\Unit0|U0|RFr2a_ctrl\(3) & (((\Unit0|U0|RFr2a_ctrl\(2))))) # (!\Unit0|U0|RFr2a_ctrl\(3) & ((\Unit0|U0|RFr2a_ctrl\(2) & (\Unit1|U2|tmp_rf[4][3]~q\)) # (!\Unit0|U0|RFr2a_ctrl\(2) & ((\Unit1|U2|tmp_rf[0][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr2a_ctrl\(3),
	datab => \Unit1|U2|tmp_rf[4][3]~q\,
	datac => \Unit0|U0|RFr2a_ctrl\(2),
	datad => \Unit1|U2|tmp_rf[0][3]~q\,
	combout => \Unit1|U2|Mux28~4_combout\);

-- Location: LCCOMB_X66_Y51_N22
\Unit1|U2|Mux28~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux28~5_combout\ = (\Unit0|U0|RFr2a_ctrl\(3) & ((\Unit1|U2|Mux28~4_combout\ & (\Unit1|U2|tmp_rf[12][3]~q\)) # (!\Unit1|U2|Mux28~4_combout\ & ((\Unit1|U2|tmp_rf[8][3]~q\))))) # (!\Unit0|U0|RFr2a_ctrl\(3) & (((\Unit1|U2|Mux28~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[12][3]~q\,
	datab => \Unit0|U0|RFr2a_ctrl\(3),
	datac => \Unit1|U2|tmp_rf[8][3]~q\,
	datad => \Unit1|U2|Mux28~4_combout\,
	combout => \Unit1|U2|Mux28~5_combout\);

-- Location: LCCOMB_X65_Y51_N28
\Unit1|U2|Mux28~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux28~6_combout\ = (\Unit0|U0|RFr2a_ctrl\(0) & (((\Unit0|U0|RFr2a_ctrl\(1))))) # (!\Unit0|U0|RFr2a_ctrl\(0) & ((\Unit0|U0|RFr2a_ctrl\(1) & (\Unit1|U2|Mux28~3_combout\)) # (!\Unit0|U0|RFr2a_ctrl\(1) & ((\Unit1|U2|Mux28~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr2a_ctrl\(0),
	datab => \Unit1|U2|Mux28~3_combout\,
	datac => \Unit0|U0|RFr2a_ctrl\(1),
	datad => \Unit1|U2|Mux28~5_combout\,
	combout => \Unit1|U2|Mux28~6_combout\);

-- Location: LCCOMB_X70_Y50_N22
\Unit1|U2|Mux28~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux28~9_combout\ = (\Unit0|U0|RFr2a_ctrl\(0) & ((\Unit1|U2|Mux28~6_combout\ & (\Unit1|U2|Mux28~8_combout\)) # (!\Unit1|U2|Mux28~6_combout\ & ((\Unit1|U2|Mux28~1_combout\))))) # (!\Unit0|U0|RFr2a_ctrl\(0) & (((\Unit1|U2|Mux28~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|Mux28~8_combout\,
	datab => \Unit0|U0|RFr2a_ctrl\(0),
	datac => \Unit1|U2|Mux28~1_combout\,
	datad => \Unit1|U2|Mux28~6_combout\,
	combout => \Unit1|U2|Mux28~9_combout\);

-- Location: FF_X70_Y50_N23
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

-- Location: FF_X65_Y51_N17
\Unit1|U2|tmp_rf[10][4]\ : dffeas
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
	q => \Unit1|U2|tmp_rf[10][4]~q\);

-- Location: FF_X68_Y50_N3
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
	ena => \Unit1|U2|Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[11][4]~q\);

-- Location: FF_X68_Y51_N25
\Unit1|U2|tmp_rf[8][4]\ : dffeas
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
	ena => \Unit1|U2|Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[8][4]~q\);

-- Location: FF_X68_Y50_N21
\Unit1|U2|tmp_rf[9][4]\ : dffeas
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
	q => \Unit1|U2|tmp_rf[9][4]~q\);

-- Location: LCCOMB_X68_Y50_N20
\Unit1|U2|Mux27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux27~0_combout\ = (\Unit0|U0|RFr2a_ctrl\(1) & (((\Unit0|U0|RFr2a_ctrl\(0))))) # (!\Unit0|U0|RFr2a_ctrl\(1) & ((\Unit0|U0|RFr2a_ctrl\(0) & ((\Unit1|U2|tmp_rf[9][4]~q\))) # (!\Unit0|U0|RFr2a_ctrl\(0) & (\Unit1|U2|tmp_rf[8][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr2a_ctrl\(1),
	datab => \Unit1|U2|tmp_rf[8][4]~q\,
	datac => \Unit1|U2|tmp_rf[9][4]~q\,
	datad => \Unit0|U0|RFr2a_ctrl\(0),
	combout => \Unit1|U2|Mux27~0_combout\);

-- Location: LCCOMB_X68_Y50_N2
\Unit1|U2|Mux27~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux27~1_combout\ = (\Unit0|U0|RFr2a_ctrl\(1) & ((\Unit1|U2|Mux27~0_combout\ & ((\Unit1|U2|tmp_rf[11][4]~q\))) # (!\Unit1|U2|Mux27~0_combout\ & (\Unit1|U2|tmp_rf[10][4]~q\)))) # (!\Unit0|U0|RFr2a_ctrl\(1) & (((\Unit1|U2|Mux27~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr2a_ctrl\(1),
	datab => \Unit1|U2|tmp_rf[10][4]~q\,
	datac => \Unit1|U2|tmp_rf[11][4]~q\,
	datad => \Unit1|U2|Mux27~0_combout\,
	combout => \Unit1|U2|Mux27~1_combout\);

-- Location: FF_X62_Y50_N3
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

-- Location: FF_X65_Y52_N21
\Unit1|U2|tmp_rf[14][4]\ : dffeas
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
	q => \Unit1|U2|tmp_rf[14][4]~q\);

-- Location: FF_X68_Y51_N5
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
	ena => \Unit1|U2|Decoder0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[12][4]~q\);

-- Location: LCCOMB_X65_Y52_N20
\Unit1|U2|Mux27~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux27~7_combout\ = (\Unit0|U0|RFr2a_ctrl\(1) & ((\Unit0|U0|RFr2a_ctrl\(0)) # ((\Unit1|U2|tmp_rf[14][4]~q\)))) # (!\Unit0|U0|RFr2a_ctrl\(1) & (!\Unit0|U0|RFr2a_ctrl\(0) & ((\Unit1|U2|tmp_rf[12][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr2a_ctrl\(1),
	datab => \Unit0|U0|RFr2a_ctrl\(0),
	datac => \Unit1|U2|tmp_rf[14][4]~q\,
	datad => \Unit1|U2|tmp_rf[12][4]~q\,
	combout => \Unit1|U2|Mux27~7_combout\);

-- Location: LCCOMB_X69_Y52_N10
\Unit1|U2|Mux27~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux27~8_combout\ = (\Unit0|U0|RFr2a_ctrl\(0) & ((\Unit1|U2|Mux27~7_combout\ & ((\Unit1|U2|tmp_rf[15][4]~q\))) # (!\Unit1|U2|Mux27~7_combout\ & (\Unit1|U2|tmp_rf[13][4]~q\)))) # (!\Unit0|U0|RFr2a_ctrl\(0) & (((\Unit1|U2|Mux27~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[13][4]~q\,
	datab => \Unit0|U0|RFr2a_ctrl\(0),
	datac => \Unit1|U2|tmp_rf[15][4]~q\,
	datad => \Unit1|U2|Mux27~7_combout\,
	combout => \Unit1|U2|Mux27~8_combout\);

-- Location: LCCOMB_X70_Y50_N30
\Unit1|U2|Mux27~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux27~9_combout\ = (\Unit1|U2|Mux27~6_combout\ & (((\Unit1|U2|Mux27~8_combout\)) # (!\Unit0|U0|RFr2a_ctrl\(3)))) # (!\Unit1|U2|Mux27~6_combout\ & (\Unit0|U0|RFr2a_ctrl\(3) & (\Unit1|U2|Mux27~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|Mux27~6_combout\,
	datab => \Unit0|U0|RFr2a_ctrl\(3),
	datac => \Unit1|U2|Mux27~1_combout\,
	datad => \Unit1|U2|Mux27~8_combout\,
	combout => \Unit1|U2|Mux27~9_combout\);

-- Location: FF_X70_Y50_N31
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

-- Location: LCCOMB_X68_Y52_N12
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

-- Location: FF_X68_Y52_N13
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
	ena => \Unit1|U2|Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[13][7]~q\);

-- Location: LCCOMB_X68_Y52_N28
\Unit1|U2|tmp_rf[1][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[1][7]~feeder_combout\ = \Unit1|U1|Mux8~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|U1|Mux8~1_combout\,
	combout => \Unit1|U2|tmp_rf[1][7]~feeder_combout\);

-- Location: FF_X68_Y52_N29
\Unit1|U2|tmp_rf[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[1][7]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[1][7]~q\);

-- Location: FF_X68_Y50_N19
\Unit1|U2|tmp_rf[9][7]\ : dffeas
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
	q => \Unit1|U2|tmp_rf[9][7]~q\);

-- Location: LCCOMB_X68_Y50_N18
\Unit1|U2|Mux24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux24~0_combout\ = (\Unit0|U0|RFr2a_ctrl\(2) & (((\Unit0|U0|RFr2a_ctrl\(3))))) # (!\Unit0|U0|RFr2a_ctrl\(2) & ((\Unit0|U0|RFr2a_ctrl\(3) & ((\Unit1|U2|tmp_rf[9][7]~q\))) # (!\Unit0|U0|RFr2a_ctrl\(3) & (\Unit1|U2|tmp_rf[1][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr2a_ctrl\(2),
	datab => \Unit1|U2|tmp_rf[1][7]~q\,
	datac => \Unit1|U2|tmp_rf[9][7]~q\,
	datad => \Unit0|U0|RFr2a_ctrl\(3),
	combout => \Unit1|U2|Mux24~0_combout\);

-- Location: LCCOMB_X68_Y52_N8
\Unit1|U2|Mux24~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux24~1_combout\ = (\Unit0|U0|RFr2a_ctrl\(2) & ((\Unit1|U2|Mux24~0_combout\ & ((\Unit1|U2|tmp_rf[13][7]~q\))) # (!\Unit1|U2|Mux24~0_combout\ & (\Unit1|U2|tmp_rf[5][7]~q\)))) # (!\Unit0|U0|RFr2a_ctrl\(2) & (((\Unit1|U2|Mux24~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[5][7]~q\,
	datab => \Unit0|U0|RFr2a_ctrl\(2),
	datac => \Unit1|U2|tmp_rf[13][7]~q\,
	datad => \Unit1|U2|Mux24~0_combout\,
	combout => \Unit1|U2|Mux24~1_combout\);

-- Location: FF_X62_Y52_N11
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
	ena => \Unit1|U2|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[6][7]~q\);

-- Location: LCCOMB_X62_Y52_N10
\Unit1|U2|Mux24~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux24~2_combout\ = (\Unit0|U0|RFr2a_ctrl\(3) & (((\Unit0|U0|RFr2a_ctrl\(2))))) # (!\Unit0|U0|RFr2a_ctrl\(3) & ((\Unit0|U0|RFr2a_ctrl\(2) & ((\Unit1|U2|tmp_rf[6][7]~q\))) # (!\Unit0|U0|RFr2a_ctrl\(2) & (\Unit1|U2|tmp_rf[2][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[2][7]~q\,
	datab => \Unit0|U0|RFr2a_ctrl\(3),
	datac => \Unit1|U2|tmp_rf[6][7]~q\,
	datad => \Unit0|U0|RFr2a_ctrl\(2),
	combout => \Unit1|U2|Mux24~2_combout\);

-- Location: FF_X65_Y52_N25
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
	ena => \Unit1|U2|Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[14][7]~q\);

-- Location: LCCOMB_X67_Y52_N0
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

-- Location: FF_X67_Y52_N1
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
	ena => \Unit1|U2|Decoder0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[10][7]~q\);

-- Location: LCCOMB_X67_Y52_N12
\Unit1|U2|Mux24~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux24~3_combout\ = (\Unit0|U0|RFr2a_ctrl\(3) & ((\Unit1|U2|Mux24~2_combout\ & (\Unit1|U2|tmp_rf[14][7]~q\)) # (!\Unit1|U2|Mux24~2_combout\ & ((\Unit1|U2|tmp_rf[10][7]~q\))))) # (!\Unit0|U0|RFr2a_ctrl\(3) & (\Unit1|U2|Mux24~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr2a_ctrl\(3),
	datab => \Unit1|U2|Mux24~2_combout\,
	datac => \Unit1|U2|tmp_rf[14][7]~q\,
	datad => \Unit1|U2|tmp_rf[10][7]~q\,
	combout => \Unit1|U2|Mux24~3_combout\);

-- Location: FF_X66_Y52_N31
\Unit1|U2|tmp_rf[0][7]\ : dffeas
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
	ena => \Unit1|U2|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[0][7]~q\);

-- Location: LCCOMB_X69_Y52_N26
\Unit1|U2|tmp_rf[4][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[4][7]~feeder_combout\ = \Unit1|U1|Mux8~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|U1|Mux8~1_combout\,
	combout => \Unit1|U2|tmp_rf[4][7]~feeder_combout\);

-- Location: FF_X69_Y52_N27
\Unit1|U2|tmp_rf[4][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[4][7]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[4][7]~q\);

-- Location: LCCOMB_X69_Y52_N24
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

-- Location: FF_X66_Y52_N1
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
	ena => \Unit1|U2|Decoder0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[12][7]~q\);

-- Location: LCCOMB_X66_Y51_N26
\Unit1|U2|Mux24~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux24~5_combout\ = (\Unit0|U0|RFr2a_ctrl\(3) & ((\Unit1|U2|Mux24~4_combout\ & ((\Unit1|U2|tmp_rf[12][7]~q\))) # (!\Unit1|U2|Mux24~4_combout\ & (\Unit1|U2|tmp_rf[8][7]~q\)))) # (!\Unit0|U0|RFr2a_ctrl\(3) & (((\Unit1|U2|Mux24~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[8][7]~q\,
	datab => \Unit0|U0|RFr2a_ctrl\(3),
	datac => \Unit1|U2|Mux24~4_combout\,
	datad => \Unit1|U2|tmp_rf[12][7]~q\,
	combout => \Unit1|U2|Mux24~5_combout\);

-- Location: LCCOMB_X70_Y49_N0
\Unit1|U2|Mux24~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux24~6_combout\ = (\Unit0|U0|RFr2a_ctrl\(0) & (\Unit0|U0|RFr2a_ctrl\(1))) # (!\Unit0|U0|RFr2a_ctrl\(0) & ((\Unit0|U0|RFr2a_ctrl\(1) & (\Unit1|U2|Mux24~3_combout\)) # (!\Unit0|U0|RFr2a_ctrl\(1) & ((\Unit1|U2|Mux24~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr2a_ctrl\(0),
	datab => \Unit0|U0|RFr2a_ctrl\(1),
	datac => \Unit1|U2|Mux24~3_combout\,
	datad => \Unit1|U2|Mux24~5_combout\,
	combout => \Unit1|U2|Mux24~6_combout\);

-- Location: LCCOMB_X70_Y49_N16
\Unit1|U2|Mux24~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux24~9_combout\ = (\Unit0|U0|RFr2a_ctrl\(0) & ((\Unit1|U2|Mux24~6_combout\ & (\Unit1|U2|Mux24~8_combout\)) # (!\Unit1|U2|Mux24~6_combout\ & ((\Unit1|U2|Mux24~1_combout\))))) # (!\Unit0|U0|RFr2a_ctrl\(0) & (((\Unit1|U2|Mux24~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|Mux24~8_combout\,
	datab => \Unit1|U2|Mux24~1_combout\,
	datac => \Unit0|U0|RFr2a_ctrl\(0),
	datad => \Unit1|U2|Mux24~6_combout\,
	combout => \Unit1|U2|Mux24~9_combout\);

-- Location: FF_X70_Y49_N17
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

-- Location: FF_X67_Y49_N17
\Unit1|U2|tmp_rf[11][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	asdata => \Unit1|U1|Mux6~1_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|U2|Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[11][9]~q\);

-- Location: FF_X67_Y53_N17
\Unit1|U2|tmp_rf[7][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	asdata => \Unit1|U1|Mux6~1_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|U2|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[7][9]~q\);

-- Location: LCCOMB_X67_Y53_N16
\Unit1|U2|Mux22~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux22~7_combout\ = (\Unit0|U0|RFr2a_ctrl\(3) & (((\Unit0|U0|RFr2a_ctrl\(2))))) # (!\Unit0|U0|RFr2a_ctrl\(3) & ((\Unit0|U0|RFr2a_ctrl\(2) & ((\Unit1|U2|tmp_rf[7][9]~q\))) # (!\Unit0|U0|RFr2a_ctrl\(2) & (\Unit1|U2|tmp_rf[3][9]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[3][9]~q\,
	datab => \Unit0|U0|RFr2a_ctrl\(3),
	datac => \Unit1|U2|tmp_rf[7][9]~q\,
	datad => \Unit0|U0|RFr2a_ctrl\(2),
	combout => \Unit1|U2|Mux22~7_combout\);

-- Location: LCCOMB_X67_Y49_N16
\Unit1|U2|Mux22~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux22~8_combout\ = (\Unit0|U0|RFr2a_ctrl\(3) & ((\Unit1|U2|Mux22~7_combout\ & (\Unit1|U2|tmp_rf[15][9]~q\)) # (!\Unit1|U2|Mux22~7_combout\ & ((\Unit1|U2|tmp_rf[11][9]~q\))))) # (!\Unit0|U0|RFr2a_ctrl\(3) & (((\Unit1|U2|Mux22~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[15][9]~q\,
	datab => \Unit0|U0|RFr2a_ctrl\(3),
	datac => \Unit1|U2|tmp_rf[11][9]~q\,
	datad => \Unit1|U2|Mux22~7_combout\,
	combout => \Unit1|U2|Mux22~8_combout\);

-- Location: FF_X67_Y53_N29
\Unit1|U2|tmp_rf[4][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	asdata => \Unit1|U1|Mux6~1_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|U2|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[4][9]~q\);

-- Location: FF_X66_Y52_N3
\Unit1|U2|tmp_rf[12][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	asdata => \Unit1|U1|Mux6~1_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|U2|Decoder0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[12][9]~q\);

-- Location: LCCOMB_X67_Y53_N28
\Unit1|U2|Mux22~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux22~5_combout\ = (\Unit1|U2|Mux22~4_combout\ & (((\Unit1|U2|tmp_rf[12][9]~q\)) # (!\Unit0|U0|RFr2a_ctrl\(2)))) # (!\Unit1|U2|Mux22~4_combout\ & (\Unit0|U0|RFr2a_ctrl\(2) & (\Unit1|U2|tmp_rf[4][9]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|Mux22~4_combout\,
	datab => \Unit0|U0|RFr2a_ctrl\(2),
	datac => \Unit1|U2|tmp_rf[4][9]~q\,
	datad => \Unit1|U2|tmp_rf[12][9]~q\,
	combout => \Unit1|U2|Mux22~5_combout\);

-- Location: FF_X70_Y53_N19
\Unit1|U2|tmp_rf[9][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	asdata => \Unit1|U1|Mux6~1_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|U2|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[9][9]~q\);

-- Location: LCCOMB_X68_Y52_N6
\Unit1|U2|tmp_rf[1][9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[1][9]~feeder_combout\ = \Unit1|U1|Mux6~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Unit1|U1|Mux6~1_combout\,
	combout => \Unit1|U2|tmp_rf[1][9]~feeder_combout\);

-- Location: FF_X68_Y52_N7
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
	ena => \Unit1|U2|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[1][9]~q\);

-- Location: LCCOMB_X66_Y53_N26
\Unit1|U2|tmp_rf[5][9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[5][9]~feeder_combout\ = \Unit1|U1|Mux6~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|U1|Mux6~1_combout\,
	combout => \Unit1|U2|tmp_rf[5][9]~feeder_combout\);

-- Location: FF_X66_Y53_N27
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
	ena => \Unit1|U2|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[5][9]~q\);

-- Location: LCCOMB_X70_Y53_N2
\Unit1|U2|Mux22~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux22~2_combout\ = (\Unit0|U0|RFr2a_ctrl\(3) & (((\Unit0|U0|RFr2a_ctrl\(2))))) # (!\Unit0|U0|RFr2a_ctrl\(3) & ((\Unit0|U0|RFr2a_ctrl\(2) & ((\Unit1|U2|tmp_rf[5][9]~q\))) # (!\Unit0|U0|RFr2a_ctrl\(2) & (\Unit1|U2|tmp_rf[1][9]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr2a_ctrl\(3),
	datab => \Unit1|U2|tmp_rf[1][9]~q\,
	datac => \Unit0|U0|RFr2a_ctrl\(2),
	datad => \Unit1|U2|tmp_rf[5][9]~q\,
	combout => \Unit1|U2|Mux22~2_combout\);

-- Location: LCCOMB_X70_Y53_N18
\Unit1|U2|Mux22~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux22~3_combout\ = (\Unit0|U0|RFr2a_ctrl\(3) & ((\Unit1|U2|Mux22~2_combout\ & (\Unit1|U2|tmp_rf[13][9]~q\)) # (!\Unit1|U2|Mux22~2_combout\ & ((\Unit1|U2|tmp_rf[9][9]~q\))))) # (!\Unit0|U0|RFr2a_ctrl\(3) & (((\Unit1|U2|Mux22~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[13][9]~q\,
	datab => \Unit0|U0|RFr2a_ctrl\(3),
	datac => \Unit1|U2|tmp_rf[9][9]~q\,
	datad => \Unit1|U2|Mux22~2_combout\,
	combout => \Unit1|U2|Mux22~3_combout\);

-- Location: LCCOMB_X70_Y53_N20
\Unit1|U2|Mux22~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux22~6_combout\ = (\Unit0|U0|RFr2a_ctrl\(1) & (\Unit0|U0|RFr2a_ctrl\(0))) # (!\Unit0|U0|RFr2a_ctrl\(1) & ((\Unit0|U0|RFr2a_ctrl\(0) & ((\Unit1|U2|Mux22~3_combout\))) # (!\Unit0|U0|RFr2a_ctrl\(0) & (\Unit1|U2|Mux22~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr2a_ctrl\(1),
	datab => \Unit0|U0|RFr2a_ctrl\(0),
	datac => \Unit1|U2|Mux22~5_combout\,
	datad => \Unit1|U2|Mux22~3_combout\,
	combout => \Unit1|U2|Mux22~6_combout\);

-- Location: LCCOMB_X67_Y49_N4
\Unit1|U2|Mux22~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux22~9_combout\ = (\Unit0|U0|RFr2a_ctrl\(1) & ((\Unit1|U2|Mux22~6_combout\ & ((\Unit1|U2|Mux22~8_combout\))) # (!\Unit1|U2|Mux22~6_combout\ & (\Unit1|U2|Mux22~1_combout\)))) # (!\Unit0|U0|RFr2a_ctrl\(1) & (((\Unit1|U2|Mux22~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|Mux22~1_combout\,
	datab => \Unit1|U2|Mux22~8_combout\,
	datac => \Unit0|U0|RFr2a_ctrl\(1),
	datad => \Unit1|U2|Mux22~6_combout\,
	combout => \Unit1|U2|Mux22~9_combout\);

-- Location: FF_X67_Y49_N5
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

-- Location: LCCOMB_X65_Y54_N0
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

-- Location: FF_X65_Y54_N1
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
	ena => \Unit1|U2|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[4][14]~q\);

-- Location: LCCOMB_X65_Y54_N26
\Unit1|U2|tmp_rf[5][14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[5][14]~feeder_combout\ = \Unit1|U1|Mux1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|U1|Mux1~0_combout\,
	combout => \Unit1|U2|tmp_rf[5][14]~feeder_combout\);

-- Location: FF_X65_Y54_N27
\Unit1|U2|tmp_rf[5][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[5][14]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[5][14]~q\);

-- Location: LCCOMB_X65_Y54_N24
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

-- Location: LCCOMB_X67_Y53_N14
\Unit1|U2|Mux17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux17~1_combout\ = (\Unit0|U0|RFr2a_ctrl\(1) & ((\Unit1|U2|Mux17~0_combout\ & ((\Unit1|U2|tmp_rf[7][14]~q\))) # (!\Unit1|U2|Mux17~0_combout\ & (\Unit1|U2|tmp_rf[6][14]~q\)))) # (!\Unit0|U0|RFr2a_ctrl\(1) & (((\Unit1|U2|Mux17~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[6][14]~q\,
	datab => \Unit0|U0|RFr2a_ctrl\(1),
	datac => \Unit1|U2|tmp_rf[7][14]~q\,
	datad => \Unit1|U2|Mux17~0_combout\,
	combout => \Unit1|U2|Mux17~1_combout\);

-- Location: FF_X70_Y53_N11
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
	ena => \Unit1|U2|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[9][14]~q\);

-- Location: LCCOMB_X65_Y51_N24
\Unit1|U2|tmp_rf[10][14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[10][14]~feeder_combout\ = \Unit1|U1|Mux1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Unit1|U1|Mux1~0_combout\,
	combout => \Unit1|U2|tmp_rf[10][14]~feeder_combout\);

-- Location: FF_X65_Y51_N25
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
	ena => \Unit1|U2|Decoder0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[10][14]~q\);

-- Location: LCCOMB_X69_Y53_N20
\Unit1|U2|Mux17~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux17~2_combout\ = (\Unit0|U0|RFr2a_ctrl\(0) & (((\Unit0|U0|RFr2a_ctrl\(1))))) # (!\Unit0|U0|RFr2a_ctrl\(0) & ((\Unit0|U0|RFr2a_ctrl\(1) & ((\Unit1|U2|tmp_rf[10][14]~q\))) # (!\Unit0|U0|RFr2a_ctrl\(1) & (\Unit1|U2|tmp_rf[8][14]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[8][14]~q\,
	datab => \Unit0|U0|RFr2a_ctrl\(0),
	datac => \Unit1|U2|tmp_rf[10][14]~q\,
	datad => \Unit0|U0|RFr2a_ctrl\(1),
	combout => \Unit1|U2|Mux17~2_combout\);

-- Location: LCCOMB_X70_Y53_N10
\Unit1|U2|Mux17~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux17~3_combout\ = (\Unit0|U0|RFr2a_ctrl\(0) & ((\Unit1|U2|Mux17~2_combout\ & (\Unit1|U2|tmp_rf[11][14]~q\)) # (!\Unit1|U2|Mux17~2_combout\ & ((\Unit1|U2|tmp_rf[9][14]~q\))))) # (!\Unit0|U0|RFr2a_ctrl\(0) & (((\Unit1|U2|Mux17~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[11][14]~q\,
	datab => \Unit0|U0|RFr2a_ctrl\(0),
	datac => \Unit1|U2|tmp_rf[9][14]~q\,
	datad => \Unit1|U2|Mux17~2_combout\,
	combout => \Unit1|U2|Mux17~3_combout\);

-- Location: LCCOMB_X70_Y53_N28
\Unit1|U2|Mux17~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux17~6_combout\ = (\Unit0|U0|RFr2a_ctrl\(2) & (((\Unit0|U0|RFr2a_ctrl\(3))))) # (!\Unit0|U0|RFr2a_ctrl\(2) & ((\Unit0|U0|RFr2a_ctrl\(3) & ((\Unit1|U2|Mux17~3_combout\))) # (!\Unit0|U0|RFr2a_ctrl\(3) & (\Unit1|U2|Mux17~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|Mux17~5_combout\,
	datab => \Unit0|U0|RFr2a_ctrl\(2),
	datac => \Unit0|U0|RFr2a_ctrl\(3),
	datad => \Unit1|U2|Mux17~3_combout\,
	combout => \Unit1|U2|Mux17~6_combout\);

-- Location: LCCOMB_X70_Y50_N28
\Unit1|U2|Mux17~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux17~9_combout\ = (\Unit0|U0|RFr2a_ctrl\(2) & ((\Unit1|U2|Mux17~6_combout\ & (\Unit1|U2|Mux17~8_combout\)) # (!\Unit1|U2|Mux17~6_combout\ & ((\Unit1|U2|Mux17~1_combout\))))) # (!\Unit0|U0|RFr2a_ctrl\(2) & (((\Unit1|U2|Mux17~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|Mux17~8_combout\,
	datab => \Unit0|U0|RFr2a_ctrl\(2),
	datac => \Unit1|U2|Mux17~1_combout\,
	datad => \Unit1|U2|Mux17~6_combout\,
	combout => \Unit1|U2|Mux17~9_combout\);

-- Location: FF_X70_Y50_N29
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

-- Location: FF_X67_Y54_N7
\Unit1|U2|tmp_rf[14][15]\ : dffeas
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
	q => \Unit1|U2|tmp_rf[14][15]~q\);

-- Location: LCCOMB_X68_Y54_N18
\Unit1|U2|tmp_rf[6][15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[6][15]~feeder_combout\ = \Unit1|U1|Mux0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|U1|Mux0~0_combout\,
	combout => \Unit1|U2|tmp_rf[6][15]~feeder_combout\);

-- Location: FF_X68_Y54_N19
\Unit1|U2|tmp_rf[6][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[6][15]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[6][15]~q\);

-- Location: LCCOMB_X68_Y54_N24
\Unit1|U2|Mux16~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux16~2_combout\ = (\Unit0|U0|RFr2a_ctrl\(3) & (((\Unit0|U0|RFr2a_ctrl\(2))))) # (!\Unit0|U0|RFr2a_ctrl\(3) & ((\Unit0|U0|RFr2a_ctrl\(2) & ((\Unit1|U2|tmp_rf[6][15]~q\))) # (!\Unit0|U0|RFr2a_ctrl\(2) & (\Unit1|U2|tmp_rf[2][15]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[2][15]~q\,
	datab => \Unit1|U2|tmp_rf[6][15]~q\,
	datac => \Unit0|U0|RFr2a_ctrl\(3),
	datad => \Unit0|U0|RFr2a_ctrl\(2),
	combout => \Unit1|U2|Mux16~2_combout\);

-- Location: LCCOMB_X68_Y54_N26
\Unit1|U2|Mux16~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux16~3_combout\ = (\Unit0|U0|RFr2a_ctrl\(3) & ((\Unit1|U2|Mux16~2_combout\ & ((\Unit1|U2|tmp_rf[14][15]~q\))) # (!\Unit1|U2|Mux16~2_combout\ & (\Unit1|U2|tmp_rf[10][15]~q\)))) # (!\Unit0|U0|RFr2a_ctrl\(3) & (((\Unit1|U2|Mux16~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[10][15]~q\,
	datab => \Unit1|U2|tmp_rf[14][15]~q\,
	datac => \Unit0|U0|RFr2a_ctrl\(3),
	datad => \Unit1|U2|Mux16~2_combout\,
	combout => \Unit1|U2|Mux16~3_combout\);

-- Location: LCCOMB_X68_Y51_N30
\Unit1|U2|Mux16~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux16~6_combout\ = (\Unit0|U0|RFr2a_ctrl\(1) & (((\Unit0|U0|RFr2a_ctrl\(0)) # (\Unit1|U2|Mux16~3_combout\)))) # (!\Unit0|U0|RFr2a_ctrl\(1) & (\Unit1|U2|Mux16~5_combout\ & (!\Unit0|U0|RFr2a_ctrl\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|Mux16~5_combout\,
	datab => \Unit0|U0|RFr2a_ctrl\(1),
	datac => \Unit0|U0|RFr2a_ctrl\(0),
	datad => \Unit1|U2|Mux16~3_combout\,
	combout => \Unit1|U2|Mux16~6_combout\);

-- Location: FF_X66_Y50_N3
\Unit1|U2|tmp_rf[13][15]\ : dffeas
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
	ena => \Unit1|U2|Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[13][15]~q\);

-- Location: LCCOMB_X66_Y50_N24
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

-- Location: FF_X66_Y50_N25
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
	ena => \Unit1|U2|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[1][15]~q\);

-- Location: LCCOMB_X70_Y53_N22
\Unit1|U2|Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux16~0_combout\ = (\Unit0|U0|RFr2a_ctrl\(3) & ((\Unit1|U2|tmp_rf[9][15]~q\) # ((\Unit0|U0|RFr2a_ctrl\(2))))) # (!\Unit0|U0|RFr2a_ctrl\(3) & (((!\Unit0|U0|RFr2a_ctrl\(2) & \Unit1|U2|tmp_rf[1][15]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[9][15]~q\,
	datab => \Unit0|U0|RFr2a_ctrl\(3),
	datac => \Unit0|U0|RFr2a_ctrl\(2),
	datad => \Unit1|U2|tmp_rf[1][15]~q\,
	combout => \Unit1|U2|Mux16~0_combout\);

-- Location: LCCOMB_X66_Y50_N2
\Unit1|U2|Mux16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux16~1_combout\ = (\Unit0|U0|RFr2a_ctrl\(2) & ((\Unit1|U2|Mux16~0_combout\ & ((\Unit1|U2|tmp_rf[13][15]~q\))) # (!\Unit1|U2|Mux16~0_combout\ & (\Unit1|U2|tmp_rf[5][15]~q\)))) # (!\Unit0|U0|RFr2a_ctrl\(2) & (((\Unit1|U2|Mux16~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr2a_ctrl\(2),
	datab => \Unit1|U2|tmp_rf[5][15]~q\,
	datac => \Unit1|U2|tmp_rf[13][15]~q\,
	datad => \Unit1|U2|Mux16~0_combout\,
	combout => \Unit1|U2|Mux16~1_combout\);

-- Location: FF_X62_Y50_N9
\Unit1|U2|tmp_rf[7][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U1|Mux0~0_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[7][15]~q\);

-- Location: FF_X67_Y49_N9
\Unit1|U2|tmp_rf[11][15]\ : dffeas
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
	ena => \Unit1|U2|Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[11][15]~q\);

-- Location: LCCOMB_X67_Y49_N8
\Unit1|U2|Mux16~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux16~7_combout\ = (\Unit0|U0|RFr2a_ctrl\(2) & (((\Unit0|U0|RFr2a_ctrl\(3))))) # (!\Unit0|U0|RFr2a_ctrl\(2) & ((\Unit0|U0|RFr2a_ctrl\(3) & ((\Unit1|U2|tmp_rf[11][15]~q\))) # (!\Unit0|U0|RFr2a_ctrl\(3) & (\Unit1|U2|tmp_rf[3][15]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[3][15]~q\,
	datab => \Unit0|U0|RFr2a_ctrl\(2),
	datac => \Unit1|U2|tmp_rf[11][15]~q\,
	datad => \Unit0|U0|RFr2a_ctrl\(3),
	combout => \Unit1|U2|Mux16~7_combout\);

-- Location: LCCOMB_X70_Y49_N10
\Unit1|U2|Mux16~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux16~8_combout\ = (\Unit0|U0|RFr2a_ctrl\(2) & ((\Unit1|U2|Mux16~7_combout\ & (\Unit1|U2|tmp_rf[15][15]~q\)) # (!\Unit1|U2|Mux16~7_combout\ & ((\Unit1|U2|tmp_rf[7][15]~q\))))) # (!\Unit0|U0|RFr2a_ctrl\(2) & (((\Unit1|U2|Mux16~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[15][15]~q\,
	datab => \Unit0|U0|RFr2a_ctrl\(2),
	datac => \Unit1|U2|tmp_rf[7][15]~q\,
	datad => \Unit1|U2|Mux16~7_combout\,
	combout => \Unit1|U2|Mux16~8_combout\);

-- Location: LCCOMB_X70_Y49_N18
\Unit1|U2|Mux16~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux16~9_combout\ = (\Unit0|U0|RFr2a_ctrl\(0) & ((\Unit1|U2|Mux16~6_combout\ & ((\Unit1|U2|Mux16~8_combout\))) # (!\Unit1|U2|Mux16~6_combout\ & (\Unit1|U2|Mux16~1_combout\)))) # (!\Unit0|U0|RFr2a_ctrl\(0) & (\Unit1|U2|Mux16~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr2a_ctrl\(0),
	datab => \Unit1|U2|Mux16~6_combout\,
	datac => \Unit1|U2|Mux16~1_combout\,
	datad => \Unit1|U2|Mux16~8_combout\,
	combout => \Unit1|U2|Mux16~9_combout\);

-- Location: FF_X70_Y49_N19
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

-- Location: DSPMULT_X71_Y49_N0
\Unit1|U3|Mult0|auto_generated|mac_mult1\ : cycloneive_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "0",
	dataa_width => 18,
	datab_clock => "none",
	datab_width => 18,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => GND,
	signb => GND,
	clk => \cpu_clk~inputclkctrl_outclk\,
	aclr => \cpu_rst~inputclkctrl_outclk\,
	ena => \Unit0|U0|RFr1e_ctrl~q\,
	dataa => \Unit1|U3|Mult0|auto_generated|mac_mult1_DATAA_bus\,
	datab => \Unit1|U3|Mult0|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Unit1|U3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: LCCOMB_X70_Y48_N8
\Unit1|U3|mult_result[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|mult_result\(1) = (GLOBAL(\Unit1|U3|Mux1~0clkctrl_outclk\) & ((\Unit1|U3|Mult0|auto_generated|mac_out2~DATAOUT1\))) # (!GLOBAL(\Unit1|U3|Mux1~0clkctrl_outclk\) & (\Unit1|U3|mult_result\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Unit1|U3|mult_result\(1),
	datac => \Unit1|U3|Mux1~0clkctrl_outclk\,
	datad => \Unit1|U3|Mult0|auto_generated|mac_out2~DATAOUT1\,
	combout => \Unit1|U3|mult_result\(1));

-- Location: LCCOMB_X63_Y50_N0
\Unit1|U3|Mux18~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|Mux18~1_combout\ = (\Unit1|U3|Mux17~1_combout\ & ((\Unit1|U3|Mux18~0_combout\ & ((\Unit1|U3|mult_result\(1)))) # (!\Unit1|U3|Mux18~0_combout\ & (\Unit1|U2|RFr2\(1))))) # (!\Unit1|U3|Mux17~1_combout\ & (((\Unit1|U3|Mux18~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U3|Mux17~1_combout\,
	datab => \Unit1|U2|RFr2\(1),
	datac => \Unit1|U3|Mux18~0_combout\,
	datad => \Unit1|U3|mult_result\(1),
	combout => \Unit1|U3|Mux18~1_combout\);

-- Location: LCCOMB_X63_Y50_N4
\Unit1|U3|alu_tmp[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|alu_tmp\(1) = (GLOBAL(\Unit1|U3|Mux33~0clkctrl_outclk\) & ((\Unit1|U3|Mux18~1_combout\))) # (!GLOBAL(\Unit1|U3|Mux33~0clkctrl_outclk\) & (\Unit1|U3|alu_tmp\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Unit1|U3|alu_tmp\(1),
	datac => \Unit1|U3|Mux33~0clkctrl_outclk\,
	datad => \Unit1|U3|Mux18~1_combout\,
	combout => \Unit1|U3|alu_tmp\(1));

-- Location: LCCOMB_X63_Y52_N16
\Unit1|U1|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U1|Mux14~0_combout\ = (\Unit0|U0|RFs_ctrl\(1) & ((\Unit0|U2|dir_addr\(1)) # ((\Unit0|U0|RFs_ctrl\(0))))) # (!\Unit0|U0|RFs_ctrl\(1) & (((!\Unit0|U0|RFs_ctrl\(0) & \Unit1|U3|alu_tmp\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFs_ctrl\(1),
	datab => \Unit0|U2|dir_addr\(1),
	datac => \Unit0|U0|RFs_ctrl\(0),
	datad => \Unit1|U3|alu_tmp\(1),
	combout => \Unit1|U1|Mux14~0_combout\);

-- Location: LCCOMB_X63_Y52_N12
\Unit1|U1|Mux14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U1|Mux14~1_combout\ = (\Unit1|U1|Mux14~0_combout\) # ((\Unit2|altsyncram_component|auto_generated|q_a\(1) & \Unit0|U0|RFs_ctrl\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Unit2|altsyncram_component|auto_generated|q_a\(1),
	datac => \Unit0|U0|RFs_ctrl\(0),
	datad => \Unit1|U1|Mux14~0_combout\,
	combout => \Unit1|U1|Mux14~1_combout\);

-- Location: FF_X62_Y52_N23
\Unit1|U2|tmp_rf[6][1]\ : dffeas
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
	ena => \Unit1|U2|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[6][1]~q\);

-- Location: FF_X65_Y52_N9
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
	ena => \Unit1|U2|Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[14][1]~q\);

-- Location: FF_X65_Y51_N3
\Unit1|U2|tmp_rf[10][1]\ : dffeas
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
	ena => \Unit1|U2|Decoder0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[10][1]~q\);

-- Location: LCCOMB_X65_Y51_N2
\Unit1|U2|Mux30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux30~0_combout\ = (\Unit0|U0|RFr2a_ctrl\(2) & (((\Unit0|U0|RFr2a_ctrl\(3))))) # (!\Unit0|U0|RFr2a_ctrl\(2) & ((\Unit0|U0|RFr2a_ctrl\(3) & ((\Unit1|U2|tmp_rf[10][1]~q\))) # (!\Unit0|U0|RFr2a_ctrl\(3) & (\Unit1|U2|tmp_rf[2][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[2][1]~q\,
	datab => \Unit0|U0|RFr2a_ctrl\(2),
	datac => \Unit1|U2|tmp_rf[10][1]~q\,
	datad => \Unit0|U0|RFr2a_ctrl\(3),
	combout => \Unit1|U2|Mux30~0_combout\);

-- Location: LCCOMB_X65_Y52_N8
\Unit1|U2|Mux30~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux30~1_combout\ = (\Unit0|U0|RFr2a_ctrl\(2) & ((\Unit1|U2|Mux30~0_combout\ & ((\Unit1|U2|tmp_rf[14][1]~q\))) # (!\Unit1|U2|Mux30~0_combout\ & (\Unit1|U2|tmp_rf[6][1]~q\)))) # (!\Unit0|U0|RFr2a_ctrl\(2) & (((\Unit1|U2|Mux30~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr2a_ctrl\(2),
	datab => \Unit1|U2|tmp_rf[6][1]~q\,
	datac => \Unit1|U2|tmp_rf[14][1]~q\,
	datad => \Unit1|U2|Mux30~0_combout\,
	combout => \Unit1|U2|Mux30~1_combout\);

-- Location: FF_X63_Y52_N25
\Unit1|U2|tmp_rf[11][1]\ : dffeas
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
	ena => \Unit1|U2|Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[11][1]~q\);

-- Location: LCCOMB_X62_Y51_N28
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

-- Location: FF_X62_Y51_N29
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

-- Location: LCCOMB_X62_Y51_N12
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

-- Location: FF_X63_Y52_N13
\Unit1|U2|tmp_rf[15][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U1|Mux14~1_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[15][1]~q\);

-- Location: LCCOMB_X63_Y52_N8
\Unit1|U2|Mux30~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux30~8_combout\ = (\Unit0|U0|RFr2a_ctrl\(3) & ((\Unit1|U2|Mux30~7_combout\ & ((\Unit1|U2|tmp_rf[15][1]~q\))) # (!\Unit1|U2|Mux30~7_combout\ & (\Unit1|U2|tmp_rf[11][1]~q\)))) # (!\Unit0|U0|RFr2a_ctrl\(3) & (((\Unit1|U2|Mux30~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr2a_ctrl\(3),
	datab => \Unit1|U2|tmp_rf[11][1]~q\,
	datac => \Unit1|U2|Mux30~7_combout\,
	datad => \Unit1|U2|tmp_rf[15][1]~q\,
	combout => \Unit1|U2|Mux30~8_combout\);

-- Location: FF_X62_Y53_N11
\Unit1|U2|tmp_rf[4][1]\ : dffeas
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
	ena => \Unit1|U2|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[4][1]~q\);

-- Location: LCCOMB_X66_Y51_N18
\Unit1|U2|tmp_rf[8][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[8][1]~feeder_combout\ = \Unit1|U1|Mux14~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Unit1|U1|Mux14~1_combout\,
	combout => \Unit1|U2|tmp_rf[8][1]~feeder_combout\);

-- Location: FF_X66_Y51_N19
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
	ena => \Unit1|U2|Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[8][1]~q\);

-- Location: FF_X66_Y52_N9
\Unit1|U2|tmp_rf[0][1]\ : dffeas
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
	ena => \Unit1|U2|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[0][1]~q\);

-- Location: LCCOMB_X66_Y51_N8
\Unit1|U2|Mux30~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux30~4_combout\ = (\Unit0|U0|RFr2a_ctrl\(3) & ((\Unit1|U2|tmp_rf[8][1]~q\) # ((\Unit0|U0|RFr2a_ctrl\(2))))) # (!\Unit0|U0|RFr2a_ctrl\(3) & (((\Unit1|U2|tmp_rf[0][1]~q\ & !\Unit0|U0|RFr2a_ctrl\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr2a_ctrl\(3),
	datab => \Unit1|U2|tmp_rf[8][1]~q\,
	datac => \Unit1|U2|tmp_rf[0][1]~q\,
	datad => \Unit0|U0|RFr2a_ctrl\(2),
	combout => \Unit1|U2|Mux30~4_combout\);

-- Location: LCCOMB_X62_Y53_N10
\Unit1|U2|Mux30~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux30~5_combout\ = (\Unit0|U0|RFr2a_ctrl\(2) & ((\Unit1|U2|Mux30~4_combout\ & (\Unit1|U2|tmp_rf[12][1]~q\)) # (!\Unit1|U2|Mux30~4_combout\ & ((\Unit1|U2|tmp_rf[4][1]~q\))))) # (!\Unit0|U0|RFr2a_ctrl\(2) & (((\Unit1|U2|Mux30~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[12][1]~q\,
	datab => \Unit0|U0|RFr2a_ctrl\(2),
	datac => \Unit1|U2|tmp_rf[4][1]~q\,
	datad => \Unit1|U2|Mux30~4_combout\,
	combout => \Unit1|U2|Mux30~5_combout\);

-- Location: LCCOMB_X62_Y51_N18
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

-- Location: FF_X62_Y51_N19
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
	ena => \Unit1|U2|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[5][1]~q\);

-- Location: LCCOMB_X68_Y52_N16
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

-- Location: FF_X68_Y52_N17
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
	ena => \Unit1|U2|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[1][1]~q\);

-- Location: LCCOMB_X62_Y51_N10
\Unit1|U2|Mux30~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux30~2_combout\ = (\Unit0|U0|RFr2a_ctrl\(2) & ((\Unit1|U2|tmp_rf[5][1]~q\) # ((\Unit0|U0|RFr2a_ctrl\(3))))) # (!\Unit0|U0|RFr2a_ctrl\(2) & (((!\Unit0|U0|RFr2a_ctrl\(3) & \Unit1|U2|tmp_rf[1][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr2a_ctrl\(2),
	datab => \Unit1|U2|tmp_rf[5][1]~q\,
	datac => \Unit0|U0|RFr2a_ctrl\(3),
	datad => \Unit1|U2|tmp_rf[1][1]~q\,
	combout => \Unit1|U2|Mux30~2_combout\);

-- Location: FF_X66_Y51_N25
\Unit1|U2|tmp_rf[9][1]\ : dffeas
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
	ena => \Unit1|U2|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[9][1]~q\);

-- Location: FF_X68_Y52_N25
\Unit1|U2|tmp_rf[13][1]\ : dffeas
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
	q => \Unit1|U2|tmp_rf[13][1]~q\);

-- Location: LCCOMB_X66_Y51_N24
\Unit1|U2|Mux30~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux30~3_combout\ = (\Unit0|U0|RFr2a_ctrl\(3) & ((\Unit1|U2|Mux30~2_combout\ & ((\Unit1|U2|tmp_rf[13][1]~q\))) # (!\Unit1|U2|Mux30~2_combout\ & (\Unit1|U2|tmp_rf[9][1]~q\)))) # (!\Unit0|U0|RFr2a_ctrl\(3) & (\Unit1|U2|Mux30~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr2a_ctrl\(3),
	datab => \Unit1|U2|Mux30~2_combout\,
	datac => \Unit1|U2|tmp_rf[9][1]~q\,
	datad => \Unit1|U2|tmp_rf[13][1]~q\,
	combout => \Unit1|U2|Mux30~3_combout\);

-- Location: LCCOMB_X70_Y49_N12
\Unit1|U2|Mux30~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux30~6_combout\ = (\Unit0|U0|RFr2a_ctrl\(0) & ((\Unit0|U0|RFr2a_ctrl\(1)) # ((\Unit1|U2|Mux30~3_combout\)))) # (!\Unit0|U0|RFr2a_ctrl\(0) & (!\Unit0|U0|RFr2a_ctrl\(1) & (\Unit1|U2|Mux30~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr2a_ctrl\(0),
	datab => \Unit0|U0|RFr2a_ctrl\(1),
	datac => \Unit1|U2|Mux30~5_combout\,
	datad => \Unit1|U2|Mux30~3_combout\,
	combout => \Unit1|U2|Mux30~6_combout\);

-- Location: LCCOMB_X70_Y49_N26
\Unit1|U2|Mux30~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux30~9_combout\ = (\Unit0|U0|RFr2a_ctrl\(1) & ((\Unit1|U2|Mux30~6_combout\ & ((\Unit1|U2|Mux30~8_combout\))) # (!\Unit1|U2|Mux30~6_combout\ & (\Unit1|U2|Mux30~1_combout\)))) # (!\Unit0|U0|RFr2a_ctrl\(1) & (((\Unit1|U2|Mux30~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr2a_ctrl\(1),
	datab => \Unit1|U2|Mux30~1_combout\,
	datac => \Unit1|U2|Mux30~8_combout\,
	datad => \Unit1|U2|Mux30~6_combout\,
	combout => \Unit1|U2|Mux30~9_combout\);

-- Location: FF_X70_Y49_N27
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

-- Location: LCCOMB_X69_Y49_N30
\Unit1|U3|mult_result[15]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|mult_result\(15) = (GLOBAL(\Unit1|U3|Mux1~0clkctrl_outclk\) & ((\Unit1|U3|Mult0|auto_generated|mac_out2~DATAOUT15\))) # (!GLOBAL(\Unit1|U3|Mux1~0clkctrl_outclk\) & (\Unit1|U3|mult_result\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U3|mult_result\(15),
	datac => \Unit1|U3|Mult0|auto_generated|mac_out2~DATAOUT15\,
	datad => \Unit1|U3|Mux1~0clkctrl_outclk\,
	combout => \Unit1|U3|mult_result\(15));

-- Location: LCCOMB_X69_Y49_N24
\Unit1|U3|Add0~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|Add0~47_combout\ = \Unit0|U0|ALUs_ctrl\(0) $ (\Unit1|U2|RFr2\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|ALUs_ctrl\(0),
	datad => \Unit1|U2|RFr2\(15),
	combout => \Unit1|U3|Add0~47_combout\);

-- Location: LCCOMB_X70_Y49_N8
\Unit1|U3|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|Add0~44_combout\ = \Unit1|U2|RFr2\(14) $ (\Unit0|U0|ALUs_ctrl\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Unit1|U2|RFr2\(14),
	datad => \Unit0|U0|ALUs_ctrl\(0),
	combout => \Unit1|U3|Add0~44_combout\);

-- Location: LCCOMB_X67_Y49_N2
\Unit1|U3|Add0~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|Add0~41_combout\ = \Unit1|U2|RFr2\(13) $ (\Unit0|U0|ALUs_ctrl\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Unit1|U2|RFr2\(13),
	datad => \Unit0|U0|ALUs_ctrl\(0),
	combout => \Unit1|U3|Add0~41_combout\);

-- Location: LCCOMB_X66_Y49_N14
\Unit1|U2|RFr1[12]~_Duplicate_1feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|RFr1[12]~_Duplicate_1feeder_combout\ = \Unit1|U2|Mux3~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Unit1|U2|Mux3~9_combout\,
	combout => \Unit1|U2|RFr1[12]~_Duplicate_1feeder_combout\);

-- Location: FF_X66_Y49_N15
\Unit1|U2|RFr1[12]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|RFr1[12]~_Duplicate_1feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit0|U0|RFr1e_ctrl~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|RFr1[12]~_Duplicate_1_q\);

-- Location: LCCOMB_X69_Y49_N10
\Unit1|U3|Add0~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|Add0~39_combout\ = (\Unit1|U3|Add0~38_combout\ & ((\Unit1|U2|RFr1[12]~_Duplicate_1_q\ & (\Unit1|U3|Add0~37\ & VCC)) # (!\Unit1|U2|RFr1[12]~_Duplicate_1_q\ & (!\Unit1|U3|Add0~37\)))) # (!\Unit1|U3|Add0~38_combout\ & 
-- ((\Unit1|U2|RFr1[12]~_Duplicate_1_q\ & (!\Unit1|U3|Add0~37\)) # (!\Unit1|U2|RFr1[12]~_Duplicate_1_q\ & ((\Unit1|U3|Add0~37\) # (GND)))))
-- \Unit1|U3|Add0~40\ = CARRY((\Unit1|U3|Add0~38_combout\ & (!\Unit1|U2|RFr1[12]~_Duplicate_1_q\ & !\Unit1|U3|Add0~37\)) # (!\Unit1|U3|Add0~38_combout\ & ((!\Unit1|U3|Add0~37\) # (!\Unit1|U2|RFr1[12]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U3|Add0~38_combout\,
	datab => \Unit1|U2|RFr1[12]~_Duplicate_1_q\,
	datad => VCC,
	cin => \Unit1|U3|Add0~37\,
	combout => \Unit1|U3|Add0~39_combout\,
	cout => \Unit1|U3|Add0~40\);

-- Location: LCCOMB_X69_Y49_N12
\Unit1|U3|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|Add0~42_combout\ = ((\Unit1|U2|RFr1[13]~_Duplicate_1_q\ $ (\Unit1|U3|Add0~41_combout\ $ (!\Unit1|U3|Add0~40\)))) # (GND)
-- \Unit1|U3|Add0~43\ = CARRY((\Unit1|U2|RFr1[13]~_Duplicate_1_q\ & ((\Unit1|U3|Add0~41_combout\) # (!\Unit1|U3|Add0~40\))) # (!\Unit1|U2|RFr1[13]~_Duplicate_1_q\ & (\Unit1|U3|Add0~41_combout\ & !\Unit1|U3|Add0~40\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|RFr1[13]~_Duplicate_1_q\,
	datab => \Unit1|U3|Add0~41_combout\,
	datad => VCC,
	cin => \Unit1|U3|Add0~40\,
	combout => \Unit1|U3|Add0~42_combout\,
	cout => \Unit1|U3|Add0~43\);

-- Location: LCCOMB_X69_Y49_N16
\Unit1|U3|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|Add0~48_combout\ = \Unit1|U2|RFr1[15]~_Duplicate_1_q\ $ (\Unit1|U3|Add0~46\ $ (!\Unit1|U3|Add0~47_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|RFr1[15]~_Duplicate_1_q\,
	datad => \Unit1|U3|Add0~47_combout\,
	cin => \Unit1|U3|Add0~46\,
	combout => \Unit1|U3|Add0~48_combout\);

-- Location: LCCOMB_X69_Y49_N20
\Unit1|U3|Mux32~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|Mux32~1_combout\ = (\Unit1|U3|Mux32~0_combout\ & (((\Unit1|U3|mult_result\(15))) # (!\Unit1|U3|Mux17~0_combout\))) # (!\Unit1|U3|Mux32~0_combout\ & (\Unit1|U3|Mux17~0_combout\ & ((\Unit1|U3|Add0~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U3|Mux32~0_combout\,
	datab => \Unit1|U3|Mux17~0_combout\,
	datac => \Unit1|U3|mult_result\(15),
	datad => \Unit1|U3|Add0~48_combout\,
	combout => \Unit1|U3|Mux32~1_combout\);

-- Location: LCCOMB_X62_Y50_N30
\Unit1|U3|alu_tmp[15]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|alu_tmp\(15) = (GLOBAL(\Unit1|U3|Mux33~0clkctrl_outclk\) & ((\Unit1|U3|Mux32~1_combout\))) # (!GLOBAL(\Unit1|U3|Mux33~0clkctrl_outclk\) & (\Unit1|U3|alu_tmp\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U3|alu_tmp\(15),
	datac => \Unit1|U3|Mux32~1_combout\,
	datad => \Unit1|U3|Mux33~0clkctrl_outclk\,
	combout => \Unit1|U3|alu_tmp\(15));

-- Location: M9K_X64_Y47_N0
\Unit2|altsyncram_component|auto_generated|ram_block1a14\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000035521554690154EBB",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "m9k_mem.hex",
	init_file_layout => "port_a",
	logical_ram_name => "MainMemory:Unit2|altsyncram:altsyncram_component|altsyncram_fos3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 14,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \Unit0|U0|Mwe_ctrl~q\,
	portare => \Unit0|U0|Mre_ctrl~q\,
	clk0 => \cpu_clk~inputclkctrl_outclk\,
	portadatain => \Unit2|altsyncram_component|auto_generated|ram_block1a14_PORTADATAIN_bus\,
	portaaddr => \Unit2|altsyncram_component|auto_generated|ram_block1a14_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \Unit2|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\);

-- Location: LCCOMB_X62_Y50_N8
\Unit1|U1|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U1|Mux0~0_combout\ = (\Unit0|U0|RFs_ctrl\(0) & (((\Unit2|altsyncram_component|auto_generated|q_a\(15)) # (\Unit0|U0|RFs_ctrl\(1))))) # (!\Unit0|U0|RFs_ctrl\(0) & (\Unit1|U3|alu_tmp\(15) & ((!\Unit0|U0|RFs_ctrl\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U3|alu_tmp\(15),
	datab => \Unit0|U0|RFs_ctrl\(0),
	datac => \Unit2|altsyncram_component|auto_generated|q_a\(15),
	datad => \Unit0|U0|RFs_ctrl\(1),
	combout => \Unit1|U1|Mux0~0_combout\);

-- Location: FF_X65_Y54_N21
\Unit1|U2|tmp_rf[5][15]\ : dffeas
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
	q => \Unit1|U2|tmp_rf[5][15]~q\);

-- Location: LCCOMB_X70_Y53_N12
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

-- Location: FF_X70_Y53_N13
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
	ena => \Unit1|U2|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[9][15]~q\);

-- Location: LCCOMB_X66_Y50_N26
\Unit1|U2|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux0~0_combout\ = (\Unit0|U0|RFr1a_ctrl\(2) & (((\Unit0|U0|RFr1a_ctrl\(3))))) # (!\Unit0|U0|RFr1a_ctrl\(2) & ((\Unit0|U0|RFr1a_ctrl\(3) & ((\Unit1|U2|tmp_rf[9][15]~q\))) # (!\Unit0|U0|RFr1a_ctrl\(3) & (\Unit1|U2|tmp_rf[1][15]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(2),
	datab => \Unit1|U2|tmp_rf[1][15]~q\,
	datac => \Unit1|U2|tmp_rf[9][15]~q\,
	datad => \Unit0|U0|RFr1a_ctrl\(3),
	combout => \Unit1|U2|Mux0~0_combout\);

-- Location: LCCOMB_X65_Y54_N20
\Unit1|U2|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux0~1_combout\ = (\Unit0|U0|RFr1a_ctrl\(2) & ((\Unit1|U2|Mux0~0_combout\ & (\Unit1|U2|tmp_rf[13][15]~q\)) # (!\Unit1|U2|Mux0~0_combout\ & ((\Unit1|U2|tmp_rf[5][15]~q\))))) # (!\Unit0|U0|RFr1a_ctrl\(2) & (((\Unit1|U2|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[13][15]~q\,
	datab => \Unit0|U0|RFr1a_ctrl\(2),
	datac => \Unit1|U2|tmp_rf[5][15]~q\,
	datad => \Unit1|U2|Mux0~0_combout\,
	combout => \Unit1|U2|Mux0~1_combout\);

-- Location: FF_X67_Y54_N13
\Unit1|U2|tmp_rf[2][15]\ : dffeas
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
	ena => \Unit1|U2|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[2][15]~q\);

-- Location: LCCOMB_X67_Y54_N12
\Unit1|U2|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux0~2_combout\ = (\Unit0|U0|RFr1a_ctrl\(3) & (\Unit0|U0|RFr1a_ctrl\(2))) # (!\Unit0|U0|RFr1a_ctrl\(3) & ((\Unit0|U0|RFr1a_ctrl\(2) & ((\Unit1|U2|tmp_rf[6][15]~q\))) # (!\Unit0|U0|RFr1a_ctrl\(2) & (\Unit1|U2|tmp_rf[2][15]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(3),
	datab => \Unit0|U0|RFr1a_ctrl\(2),
	datac => \Unit1|U2|tmp_rf[2][15]~q\,
	datad => \Unit1|U2|tmp_rf[6][15]~q\,
	combout => \Unit1|U2|Mux0~2_combout\);

-- Location: LCCOMB_X67_Y54_N6
\Unit1|U2|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux0~3_combout\ = (\Unit0|U0|RFr1a_ctrl\(3) & ((\Unit1|U2|Mux0~2_combout\ & ((\Unit1|U2|tmp_rf[14][15]~q\))) # (!\Unit1|U2|Mux0~2_combout\ & (\Unit1|U2|tmp_rf[10][15]~q\)))) # (!\Unit0|U0|RFr1a_ctrl\(3) & (((\Unit1|U2|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[10][15]~q\,
	datab => \Unit0|U0|RFr1a_ctrl\(3),
	datac => \Unit1|U2|tmp_rf[14][15]~q\,
	datad => \Unit1|U2|Mux0~2_combout\,
	combout => \Unit1|U2|Mux0~3_combout\);

-- Location: FF_X68_Y51_N19
\Unit1|U2|tmp_rf[8][15]\ : dffeas
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
	ena => \Unit1|U2|Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[8][15]~q\);

-- Location: FF_X68_Y51_N9
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
	ena => \Unit1|U2|Decoder0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[12][15]~q\);

-- Location: FF_X66_Y54_N31
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
	ena => \Unit1|U2|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[0][15]~q\);

-- Location: LCCOMB_X67_Y53_N2
\Unit1|U2|tmp_rf[4][15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[4][15]~feeder_combout\ = \Unit1|U1|Mux0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Unit1|U1|Mux0~0_combout\,
	combout => \Unit1|U2|tmp_rf[4][15]~feeder_combout\);

-- Location: FF_X67_Y53_N3
\Unit1|U2|tmp_rf[4][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[4][15]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[4][15]~q\);

-- Location: LCCOMB_X66_Y54_N30
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

-- Location: LCCOMB_X68_Y51_N8
\Unit1|U2|Mux0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux0~5_combout\ = (\Unit0|U0|RFr1a_ctrl\(3) & ((\Unit1|U2|Mux0~4_combout\ & ((\Unit1|U2|tmp_rf[12][15]~q\))) # (!\Unit1|U2|Mux0~4_combout\ & (\Unit1|U2|tmp_rf[8][15]~q\)))) # (!\Unit0|U0|RFr1a_ctrl\(3) & (((\Unit1|U2|Mux0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(3),
	datab => \Unit1|U2|tmp_rf[8][15]~q\,
	datac => \Unit1|U2|tmp_rf[12][15]~q\,
	datad => \Unit1|U2|Mux0~4_combout\,
	combout => \Unit1|U2|Mux0~5_combout\);

-- Location: LCCOMB_X66_Y49_N24
\Unit1|U2|Mux0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux0~6_combout\ = (\Unit0|U0|RFr1a_ctrl\(0) & (\Unit0|U0|RFr1a_ctrl\(1))) # (!\Unit0|U0|RFr1a_ctrl\(0) & ((\Unit0|U0|RFr1a_ctrl\(1) & (\Unit1|U2|Mux0~3_combout\)) # (!\Unit0|U0|RFr1a_ctrl\(1) & ((\Unit1|U2|Mux0~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(0),
	datab => \Unit0|U0|RFr1a_ctrl\(1),
	datac => \Unit1|U2|Mux0~3_combout\,
	datad => \Unit1|U2|Mux0~5_combout\,
	combout => \Unit1|U2|Mux0~6_combout\);

-- Location: LCCOMB_X66_Y49_N26
\Unit1|U2|Mux0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux0~9_combout\ = (\Unit0|U0|RFr1a_ctrl\(0) & ((\Unit1|U2|Mux0~6_combout\ & (\Unit1|U2|Mux0~8_combout\)) # (!\Unit1|U2|Mux0~6_combout\ & ((\Unit1|U2|Mux0~1_combout\))))) # (!\Unit0|U0|RFr1a_ctrl\(0) & (((\Unit1|U2|Mux0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|Mux0~8_combout\,
	datab => \Unit0|U0|RFr1a_ctrl\(0),
	datac => \Unit1|U2|Mux0~1_combout\,
	datad => \Unit1|U2|Mux0~6_combout\,
	combout => \Unit1|U2|Mux0~9_combout\);

-- Location: LCCOMB_X65_Y49_N30
\Unit1|U3|mult_result[13]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|mult_result\(13) = (GLOBAL(\Unit1|U3|Mux1~0clkctrl_outclk\) & ((\Unit1|U3|Mult0|auto_generated|mac_out2~DATAOUT13\))) # (!GLOBAL(\Unit1|U3|Mux1~0clkctrl_outclk\) & (\Unit1|U3|mult_result\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U3|mult_result\(13),
	datac => \Unit1|U3|Mult0|auto_generated|mac_out2~DATAOUT13\,
	datad => \Unit1|U3|Mux1~0clkctrl_outclk\,
	combout => \Unit1|U3|mult_result\(13));

-- Location: FF_X70_Y52_N11
\Unit1|U2|RFr1[13]~_Duplicate_1\ : dffeas
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
	q => \Unit1|U2|RFr1[13]~_Duplicate_1_q\);

-- Location: LCCOMB_X65_Y49_N18
\Unit1|U3|Mux30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|Mux30~0_combout\ = (\Unit1|U3|Mux17~1_combout\ & (\Unit1|U3|Mux17~0_combout\)) # (!\Unit1|U3|Mux17~1_combout\ & ((\Unit1|U3|Mux17~0_combout\ & ((\Unit1|U3|Add0~42_combout\))) # (!\Unit1|U3|Mux17~0_combout\ & 
-- (\Unit1|U2|RFr1[13]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U3|Mux17~1_combout\,
	datab => \Unit1|U3|Mux17~0_combout\,
	datac => \Unit1|U2|RFr1[13]~_Duplicate_1_q\,
	datad => \Unit1|U3|Add0~42_combout\,
	combout => \Unit1|U3|Mux30~0_combout\);

-- Location: LCCOMB_X65_Y49_N20
\Unit1|U3|Mux30~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|Mux30~1_combout\ = (\Unit1|U3|Mux17~1_combout\ & ((\Unit1|U3|Mux30~0_combout\ & ((\Unit1|U3|mult_result\(13)))) # (!\Unit1|U3|Mux30~0_combout\ & (\Unit1|U2|RFr2\(13))))) # (!\Unit1|U3|Mux17~1_combout\ & (((\Unit1|U3|Mux30~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U3|Mux17~1_combout\,
	datab => \Unit1|U2|RFr2\(13),
	datac => \Unit1|U3|mult_result\(13),
	datad => \Unit1|U3|Mux30~0_combout\,
	combout => \Unit1|U3|Mux30~1_combout\);

-- Location: LCCOMB_X62_Y50_N4
\Unit1|U3|alu_tmp[13]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|alu_tmp\(13) = (GLOBAL(\Unit1|U3|Mux33~0clkctrl_outclk\) & ((\Unit1|U3|Mux30~1_combout\))) # (!GLOBAL(\Unit1|U3|Mux33~0clkctrl_outclk\) & (\Unit1|U3|alu_tmp\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Unit1|U3|alu_tmp\(13),
	datac => \Unit1|U3|Mux33~0clkctrl_outclk\,
	datad => \Unit1|U3|Mux30~1_combout\,
	combout => \Unit1|U3|alu_tmp\(13));

-- Location: LCCOMB_X62_Y53_N24
\Unit1|U1|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U1|Mux2~0_combout\ = (\Unit0|U0|RFs_ctrl\(1) & (\Unit0|U0|RFs_ctrl\(0))) # (!\Unit0|U0|RFs_ctrl\(1) & ((\Unit0|U0|RFs_ctrl\(0) & (\Unit2|altsyncram_component|auto_generated|q_a\(13))) # (!\Unit0|U0|RFs_ctrl\(0) & ((\Unit1|U3|alu_tmp\(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFs_ctrl\(1),
	datab => \Unit0|U0|RFs_ctrl\(0),
	datac => \Unit2|altsyncram_component|auto_generated|q_a\(13),
	datad => \Unit1|U3|alu_tmp\(13),
	combout => \Unit1|U1|Mux2~0_combout\);

-- Location: FF_X67_Y54_N21
\Unit1|U2|tmp_rf[14][13]\ : dffeas
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
	q => \Unit1|U2|tmp_rf[14][13]~q\);

-- Location: LCCOMB_X67_Y54_N2
\Unit1|U2|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux2~0_combout\ = (\Unit0|U0|RFr1a_ctrl\(3) & ((\Unit1|U2|tmp_rf[10][13]~q\) # ((\Unit0|U0|RFr1a_ctrl\(2))))) # (!\Unit0|U0|RFr1a_ctrl\(3) & (((\Unit1|U2|tmp_rf[2][13]~q\ & !\Unit0|U0|RFr1a_ctrl\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[10][13]~q\,
	datab => \Unit0|U0|RFr1a_ctrl\(3),
	datac => \Unit1|U2|tmp_rf[2][13]~q\,
	datad => \Unit0|U0|RFr1a_ctrl\(2),
	combout => \Unit1|U2|Mux2~0_combout\);

-- Location: LCCOMB_X68_Y54_N16
\Unit1|U2|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux2~1_combout\ = (\Unit0|U0|RFr1a_ctrl\(2) & ((\Unit1|U2|Mux2~0_combout\ & (\Unit1|U2|tmp_rf[14][13]~q\)) # (!\Unit1|U2|Mux2~0_combout\ & ((\Unit1|U2|tmp_rf[6][13]~q\))))) # (!\Unit0|U0|RFr1a_ctrl\(2) & (((\Unit1|U2|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(2),
	datab => \Unit1|U2|tmp_rf[14][13]~q\,
	datac => \Unit1|U2|tmp_rf[6][13]~q\,
	datad => \Unit1|U2|Mux2~0_combout\,
	combout => \Unit1|U2|Mux2~1_combout\);

-- Location: FF_X69_Y51_N11
\Unit1|U2|tmp_rf[15][13]\ : dffeas
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
	ena => \Unit1|U2|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[15][13]~q\);

-- Location: FF_X62_Y51_N23
\Unit1|U2|tmp_rf[7][13]\ : dffeas
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
	ena => \Unit1|U2|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[7][13]~q\);

-- Location: FF_X66_Y54_N19
\Unit1|U2|tmp_rf[3][13]\ : dffeas
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
	ena => \Unit1|U2|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[3][13]~q\);

-- Location: LCCOMB_X66_Y54_N18
\Unit1|U2|Mux2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux2~7_combout\ = (\Unit0|U0|RFr1a_ctrl\(2) & ((\Unit1|U2|tmp_rf[7][13]~q\) # ((\Unit0|U0|RFr1a_ctrl\(3))))) # (!\Unit0|U0|RFr1a_ctrl\(2) & (((\Unit1|U2|tmp_rf[3][13]~q\ & !\Unit0|U0|RFr1a_ctrl\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(2),
	datab => \Unit1|U2|tmp_rf[7][13]~q\,
	datac => \Unit1|U2|tmp_rf[3][13]~q\,
	datad => \Unit0|U0|RFr1a_ctrl\(3),
	combout => \Unit1|U2|Mux2~7_combout\);

-- Location: LCCOMB_X69_Y51_N10
\Unit1|U2|Mux2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux2~8_combout\ = (\Unit0|U0|RFr1a_ctrl\(3) & ((\Unit1|U2|Mux2~7_combout\ & ((\Unit1|U2|tmp_rf[15][13]~q\))) # (!\Unit1|U2|Mux2~7_combout\ & (\Unit1|U2|tmp_rf[11][13]~q\)))) # (!\Unit0|U0|RFr1a_ctrl\(3) & (((\Unit1|U2|Mux2~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[11][13]~q\,
	datab => \Unit0|U0|RFr1a_ctrl\(3),
	datac => \Unit1|U2|tmp_rf[15][13]~q\,
	datad => \Unit1|U2|Mux2~7_combout\,
	combout => \Unit1|U2|Mux2~8_combout\);

-- Location: LCCOMB_X66_Y50_N0
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

-- Location: FF_X66_Y50_N1
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
	ena => \Unit1|U2|Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[13][13]~q\);

-- Location: LCCOMB_X66_Y50_N22
\Unit1|U2|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux2~2_combout\ = (\Unit0|U0|RFr1a_ctrl\(3) & (((\Unit0|U0|RFr1a_ctrl\(2))))) # (!\Unit0|U0|RFr1a_ctrl\(3) & ((\Unit0|U0|RFr1a_ctrl\(2) & (\Unit1|U2|tmp_rf[5][13]~q\)) # (!\Unit0|U0|RFr1a_ctrl\(2) & ((\Unit1|U2|tmp_rf[1][13]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[5][13]~q\,
	datab => \Unit0|U0|RFr1a_ctrl\(3),
	datac => \Unit1|U2|tmp_rf[1][13]~q\,
	datad => \Unit0|U0|RFr1a_ctrl\(2),
	combout => \Unit1|U2|Mux2~2_combout\);

-- Location: LCCOMB_X66_Y50_N8
\Unit1|U2|Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux2~3_combout\ = (\Unit0|U0|RFr1a_ctrl\(3) & ((\Unit1|U2|Mux2~2_combout\ & (\Unit1|U2|tmp_rf[13][13]~q\)) # (!\Unit1|U2|Mux2~2_combout\ & ((\Unit1|U2|tmp_rf[9][13]~q\))))) # (!\Unit0|U0|RFr1a_ctrl\(3) & (((\Unit1|U2|Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(3),
	datab => \Unit1|U2|tmp_rf[13][13]~q\,
	datac => \Unit1|U2|Mux2~2_combout\,
	datad => \Unit1|U2|tmp_rf[9][13]~q\,
	combout => \Unit1|U2|Mux2~3_combout\);

-- Location: FF_X66_Y54_N27
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
	ena => \Unit1|U2|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[0][13]~q\);

-- Location: LCCOMB_X66_Y54_N26
\Unit1|U2|Mux2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux2~4_combout\ = (\Unit0|U0|RFr1a_ctrl\(2) & (((\Unit0|U0|RFr1a_ctrl\(3))))) # (!\Unit0|U0|RFr1a_ctrl\(2) & ((\Unit0|U0|RFr1a_ctrl\(3) & (\Unit1|U2|tmp_rf[8][13]~q\)) # (!\Unit0|U0|RFr1a_ctrl\(3) & ((\Unit1|U2|tmp_rf[0][13]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[8][13]~q\,
	datab => \Unit0|U0|RFr1a_ctrl\(2),
	datac => \Unit1|U2|tmp_rf[0][13]~q\,
	datad => \Unit0|U0|RFr1a_ctrl\(3),
	combout => \Unit1|U2|Mux2~4_combout\);

-- Location: LCCOMB_X62_Y53_N18
\Unit1|U2|Mux2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux2~5_combout\ = (\Unit0|U0|RFr1a_ctrl\(2) & ((\Unit1|U2|Mux2~4_combout\ & (\Unit1|U2|tmp_rf[12][13]~q\)) # (!\Unit1|U2|Mux2~4_combout\ & ((\Unit1|U2|tmp_rf[4][13]~q\))))) # (!\Unit0|U0|RFr1a_ctrl\(2) & (((\Unit1|U2|Mux2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(2),
	datab => \Unit1|U2|tmp_rf[12][13]~q\,
	datac => \Unit1|U2|tmp_rf[4][13]~q\,
	datad => \Unit1|U2|Mux2~4_combout\,
	combout => \Unit1|U2|Mux2~5_combout\);

-- Location: LCCOMB_X70_Y52_N6
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

-- Location: LCCOMB_X70_Y52_N10
\Unit1|U2|Mux2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux2~9_combout\ = (\Unit0|U0|RFr1a_ctrl\(1) & ((\Unit1|U2|Mux2~6_combout\ & ((\Unit1|U2|Mux2~8_combout\))) # (!\Unit1|U2|Mux2~6_combout\ & (\Unit1|U2|Mux2~1_combout\)))) # (!\Unit0|U0|RFr1a_ctrl\(1) & (((\Unit1|U2|Mux2~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(1),
	datab => \Unit1|U2|Mux2~1_combout\,
	datac => \Unit1|U2|Mux2~8_combout\,
	datad => \Unit1|U2|Mux2~6_combout\,
	combout => \Unit1|U2|Mux2~9_combout\);

-- Location: LCCOMB_X72_Y49_N16
\Unit1|U3|mult_result[9]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|mult_result\(9) = (GLOBAL(\Unit1|U3|Mux1~0clkctrl_outclk\) & (\Unit1|U3|Mult0|auto_generated|mac_out2~DATAOUT9\)) # (!GLOBAL(\Unit1|U3|Mux1~0clkctrl_outclk\) & ((\Unit1|U3|mult_result\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Unit1|U3|Mult0|auto_generated|mac_out2~DATAOUT9\,
	datac => \Unit1|U3|Mux1~0clkctrl_outclk\,
	datad => \Unit1|U3|mult_result\(9),
	combout => \Unit1|U3|mult_result\(9));

-- Location: LCCOMB_X63_Y49_N22
\Unit1|U3|Mux26~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|Mux26~1_combout\ = (\Unit1|U3|Mux26~0_combout\ & (((\Unit1|U3|mult_result\(9)) # (!\Unit1|U3|Mux17~1_combout\)))) # (!\Unit1|U3|Mux26~0_combout\ & (\Unit1|U2|RFr2\(9) & (\Unit1|U3|Mux17~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|RFr2\(9),
	datab => \Unit1|U3|Mux26~0_combout\,
	datac => \Unit1|U3|Mux17~1_combout\,
	datad => \Unit1|U3|mult_result\(9),
	combout => \Unit1|U3|Mux26~1_combout\);

-- Location: LCCOMB_X63_Y49_N4
\Unit1|U3|alu_tmp[9]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|alu_tmp\(9) = (GLOBAL(\Unit1|U3|Mux33~0clkctrl_outclk\) & ((\Unit1|U3|Mux26~1_combout\))) # (!GLOBAL(\Unit1|U3|Mux33~0clkctrl_outclk\) & (\Unit1|U3|alu_tmp\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Unit1|U3|alu_tmp\(9),
	datac => \Unit1|U3|Mux26~1_combout\,
	datad => \Unit1|U3|Mux33~0clkctrl_outclk\,
	combout => \Unit1|U3|alu_tmp\(9));

-- Location: LCCOMB_X62_Y53_N26
\Unit1|U1|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U1|Mux6~0_combout\ = (\Unit0|U0|RFs_ctrl\(1) & (\Unit0|U0|RFs_ctrl\(0))) # (!\Unit0|U0|RFs_ctrl\(1) & ((\Unit0|U0|RFs_ctrl\(0) & (\Unit2|altsyncram_component|auto_generated|q_a\(9))) # (!\Unit0|U0|RFs_ctrl\(0) & ((\Unit1|U3|alu_tmp\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFs_ctrl\(1),
	datab => \Unit0|U0|RFs_ctrl\(0),
	datac => \Unit2|altsyncram_component|auto_generated|q_a\(9),
	datad => \Unit1|U3|alu_tmp\(9),
	combout => \Unit1|U1|Mux6~0_combout\);

-- Location: LCCOMB_X66_Y53_N18
\Unit1|U1|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U1|Mux6~1_combout\ = (\Unit1|U1|Mux6~0_combout\) # ((\Unit0|U0|big_addr~q\ & (\Unit0|U2|IRout\(9) & \Unit0|U0|RFs_ctrl\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|big_addr~q\,
	datab => \Unit0|U2|IRout\(9),
	datac => \Unit0|U0|RFs_ctrl\(1),
	datad => \Unit1|U1|Mux6~0_combout\,
	combout => \Unit1|U1|Mux6~1_combout\);

-- Location: FF_X67_Y52_N31
\Unit1|U2|tmp_rf[15][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	asdata => \Unit1|U1|Mux6~1_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|U2|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[15][9]~q\);

-- Location: LCCOMB_X67_Y52_N30
\Unit1|U2|Mux6~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux6~8_combout\ = (\Unit1|U2|Mux6~7_combout\ & (((\Unit1|U2|tmp_rf[15][9]~q\)) # (!\Unit0|U0|RFr1a_ctrl\(3)))) # (!\Unit1|U2|Mux6~7_combout\ & (\Unit0|U0|RFr1a_ctrl\(3) & ((\Unit1|U2|tmp_rf[11][9]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|Mux6~7_combout\,
	datab => \Unit0|U0|RFr1a_ctrl\(3),
	datac => \Unit1|U2|tmp_rf[15][9]~q\,
	datad => \Unit1|U2|tmp_rf[11][9]~q\,
	combout => \Unit1|U2|Mux6~8_combout\);

-- Location: FF_X66_Y52_N25
\Unit1|U2|tmp_rf[0][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	asdata => \Unit1|U1|Mux6~1_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|U2|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[0][9]~q\);

-- Location: LCCOMB_X66_Y52_N14
\Unit1|U2|Mux6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux6~4_combout\ = (\Unit0|U0|RFr1a_ctrl\(3) & ((\Unit1|U2|tmp_rf[8][9]~q\) # ((\Unit0|U0|RFr1a_ctrl\(2))))) # (!\Unit0|U0|RFr1a_ctrl\(3) & (((\Unit1|U2|tmp_rf[0][9]~q\ & !\Unit0|U0|RFr1a_ctrl\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[8][9]~q\,
	datab => \Unit0|U0|RFr1a_ctrl\(3),
	datac => \Unit1|U2|tmp_rf[0][9]~q\,
	datad => \Unit0|U0|RFr1a_ctrl\(2),
	combout => \Unit1|U2|Mux6~4_combout\);

-- Location: LCCOMB_X66_Y52_N2
\Unit1|U2|Mux6~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux6~5_combout\ = (\Unit0|U0|RFr1a_ctrl\(2) & ((\Unit1|U2|Mux6~4_combout\ & (\Unit1|U2|tmp_rf[12][9]~q\)) # (!\Unit1|U2|Mux6~4_combout\ & ((\Unit1|U2|tmp_rf[4][9]~q\))))) # (!\Unit0|U0|RFr1a_ctrl\(2) & (\Unit1|U2|Mux6~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(2),
	datab => \Unit1|U2|Mux6~4_combout\,
	datac => \Unit1|U2|tmp_rf[12][9]~q\,
	datad => \Unit1|U2|tmp_rf[4][9]~q\,
	combout => \Unit1|U2|Mux6~5_combout\);

-- Location: FF_X68_Y52_N15
\Unit1|U2|tmp_rf[13][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	asdata => \Unit1|U1|Mux6~1_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|U2|Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[13][9]~q\);

-- Location: LCCOMB_X68_Y52_N14
\Unit1|U2|Mux6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux6~3_combout\ = (\Unit1|U2|Mux6~2_combout\ & (((\Unit1|U2|tmp_rf[13][9]~q\)) # (!\Unit0|U0|RFr1a_ctrl\(3)))) # (!\Unit1|U2|Mux6~2_combout\ & (\Unit0|U0|RFr1a_ctrl\(3) & ((\Unit1|U2|tmp_rf[9][9]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|Mux6~2_combout\,
	datab => \Unit0|U0|RFr1a_ctrl\(3),
	datac => \Unit1|U2|tmp_rf[13][9]~q\,
	datad => \Unit1|U2|tmp_rf[9][9]~q\,
	combout => \Unit1|U2|Mux6~3_combout\);

-- Location: LCCOMB_X70_Y52_N0
\Unit1|U2|Mux6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux6~6_combout\ = (\Unit0|U0|RFr1a_ctrl\(0) & ((\Unit0|U0|RFr1a_ctrl\(1)) # ((\Unit1|U2|Mux6~3_combout\)))) # (!\Unit0|U0|RFr1a_ctrl\(0) & (!\Unit0|U0|RFr1a_ctrl\(1) & (\Unit1|U2|Mux6~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(0),
	datab => \Unit0|U0|RFr1a_ctrl\(1),
	datac => \Unit1|U2|Mux6~5_combout\,
	datad => \Unit1|U2|Mux6~3_combout\,
	combout => \Unit1|U2|Mux6~6_combout\);

-- Location: LCCOMB_X70_Y52_N26
\Unit1|U2|Mux6~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux6~9_combout\ = (\Unit0|U0|RFr1a_ctrl\(1) & ((\Unit1|U2|Mux6~6_combout\ & ((\Unit1|U2|Mux6~8_combout\))) # (!\Unit1|U2|Mux6~6_combout\ & (\Unit1|U2|Mux6~1_combout\)))) # (!\Unit0|U0|RFr1a_ctrl\(1) & (((\Unit1|U2|Mux6~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|Mux6~1_combout\,
	datab => \Unit0|U0|RFr1a_ctrl\(1),
	datac => \Unit1|U2|Mux6~8_combout\,
	datad => \Unit1|U2|Mux6~6_combout\,
	combout => \Unit1|U2|Mux6~9_combout\);

-- Location: LCCOMB_X73_Y50_N24
\Unit1|U3|mult_result[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|mult_result\(5) = (GLOBAL(\Unit1|U3|Mux1~0clkctrl_outclk\) & ((\Unit1|U3|Mult0|auto_generated|mac_out2~DATAOUT5\))) # (!GLOBAL(\Unit1|U3|Mux1~0clkctrl_outclk\) & (\Unit1|U3|mult_result\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Unit1|U3|mult_result\(5),
	datac => \Unit1|U3|Mult0|auto_generated|mac_out2~DATAOUT5\,
	datad => \Unit1|U3|Mux1~0clkctrl_outclk\,
	combout => \Unit1|U3|mult_result\(5));

-- Location: LCCOMB_X69_Y50_N12
\Unit1|U3|Mux22~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|Mux22~1_combout\ = (\Unit1|U3|Mux22~0_combout\ & (((\Unit1|U3|mult_result\(5))) # (!\Unit1|U3|Mux17~1_combout\))) # (!\Unit1|U3|Mux22~0_combout\ & (\Unit1|U3|Mux17~1_combout\ & (\Unit1|U2|RFr2\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U3|Mux22~0_combout\,
	datab => \Unit1|U3|Mux17~1_combout\,
	datac => \Unit1|U2|RFr2\(5),
	datad => \Unit1|U3|mult_result\(5),
	combout => \Unit1|U3|Mux22~1_combout\);

-- Location: LCCOMB_X62_Y50_N16
\Unit1|U3|alu_tmp[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|alu_tmp\(5) = (GLOBAL(\Unit1|U3|Mux33~0clkctrl_outclk\) & ((\Unit1|U3|Mux22~1_combout\))) # (!GLOBAL(\Unit1|U3|Mux33~0clkctrl_outclk\) & (\Unit1|U3|alu_tmp\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Unit1|U3|alu_tmp\(5),
	datac => \Unit1|U3|Mux33~0clkctrl_outclk\,
	datad => \Unit1|U3|Mux22~1_combout\,
	combout => \Unit1|U3|alu_tmp\(5));

-- Location: LCCOMB_X65_Y50_N12
\Unit1|U1|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U1|Mux10~0_combout\ = (\Unit0|U0|RFs_ctrl\(1) & ((\Unit0|U0|RFs_ctrl\(0)) # ((\Unit0|U2|dir_addr\(5))))) # (!\Unit0|U0|RFs_ctrl\(1) & (!\Unit0|U0|RFs_ctrl\(0) & (\Unit1|U3|alu_tmp\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFs_ctrl\(1),
	datab => \Unit0|U0|RFs_ctrl\(0),
	datac => \Unit1|U3|alu_tmp\(5),
	datad => \Unit0|U2|dir_addr\(5),
	combout => \Unit1|U1|Mux10~0_combout\);

-- Location: LCCOMB_X66_Y50_N12
\Unit1|U1|Mux10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U1|Mux10~1_combout\ = (\Unit1|U1|Mux10~0_combout\) # ((\Unit2|altsyncram_component|auto_generated|q_a\(5) & \Unit0|U0|RFs_ctrl\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Unit2|altsyncram_component|auto_generated|q_a\(5),
	datac => \Unit0|U0|RFs_ctrl\(0),
	datad => \Unit1|U1|Mux10~0_combout\,
	combout => \Unit1|U1|Mux10~1_combout\);

-- Location: FF_X62_Y52_N7
\Unit1|U2|tmp_rf[6][5]\ : dffeas
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
	ena => \Unit1|U2|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[6][5]~q\);

-- Location: FF_X65_Y52_N17
\Unit1|U2|tmp_rf[2][5]\ : dffeas
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
	ena => \Unit1|U2|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[2][5]~q\);

-- Location: FF_X65_Y51_N11
\Unit1|U2|tmp_rf[10][5]\ : dffeas
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
	q => \Unit1|U2|tmp_rf[10][5]~q\);

-- Location: LCCOMB_X65_Y52_N16
\Unit1|U2|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux10~0_combout\ = (\Unit0|U0|RFr1a_ctrl\(3) & ((\Unit0|U0|RFr1a_ctrl\(2)) # ((\Unit1|U2|tmp_rf[10][5]~q\)))) # (!\Unit0|U0|RFr1a_ctrl\(3) & (!\Unit0|U0|RFr1a_ctrl\(2) & (\Unit1|U2|tmp_rf[2][5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(3),
	datab => \Unit0|U0|RFr1a_ctrl\(2),
	datac => \Unit1|U2|tmp_rf[2][5]~q\,
	datad => \Unit1|U2|tmp_rf[10][5]~q\,
	combout => \Unit1|U2|Mux10~0_combout\);

-- Location: LCCOMB_X62_Y52_N6
\Unit1|U2|Mux10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux10~1_combout\ = (\Unit0|U0|RFr1a_ctrl\(2) & ((\Unit1|U2|Mux10~0_combout\ & (\Unit1|U2|tmp_rf[14][5]~q\)) # (!\Unit1|U2|Mux10~0_combout\ & ((\Unit1|U2|tmp_rf[6][5]~q\))))) # (!\Unit0|U0|RFr1a_ctrl\(2) & (((\Unit1|U2|Mux10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[14][5]~q\,
	datab => \Unit0|U0|RFr1a_ctrl\(2),
	datac => \Unit1|U2|tmp_rf[6][5]~q\,
	datad => \Unit1|U2|Mux10~0_combout\,
	combout => \Unit1|U2|Mux10~1_combout\);

-- Location: LCCOMB_X69_Y51_N6
\Unit1|U2|Mux10~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux10~8_combout\ = (\Unit1|U2|Mux10~7_combout\ & (((\Unit1|U2|tmp_rf[15][5]~q\) # (!\Unit0|U0|RFr1a_ctrl\(3))))) # (!\Unit1|U2|Mux10~7_combout\ & (\Unit1|U2|tmp_rf[11][5]~q\ & ((\Unit0|U0|RFr1a_ctrl\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|Mux10~7_combout\,
	datab => \Unit1|U2|tmp_rf[11][5]~q\,
	datac => \Unit1|U2|tmp_rf[15][5]~q\,
	datad => \Unit0|U0|RFr1a_ctrl\(3),
	combout => \Unit1|U2|Mux10~8_combout\);

-- Location: LCCOMB_X66_Y52_N4
\Unit1|U2|tmp_rf[0][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[0][5]~feeder_combout\ = \Unit1|U1|Mux10~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Unit1|U1|Mux10~1_combout\,
	combout => \Unit1|U2|tmp_rf[0][5]~feeder_combout\);

-- Location: FF_X66_Y52_N5
\Unit1|U2|tmp_rf[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[0][5]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[0][5]~q\);

-- Location: FF_X66_Y51_N1
\Unit1|U2|tmp_rf[8][5]\ : dffeas
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
	ena => \Unit1|U2|Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[8][5]~q\);

-- Location: LCCOMB_X66_Y52_N16
\Unit1|U2|Mux10~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux10~4_combout\ = (\Unit0|U0|RFr1a_ctrl\(2) & (\Unit0|U0|RFr1a_ctrl\(3))) # (!\Unit0|U0|RFr1a_ctrl\(2) & ((\Unit0|U0|RFr1a_ctrl\(3) & ((\Unit1|U2|tmp_rf[8][5]~q\))) # (!\Unit0|U0|RFr1a_ctrl\(3) & (\Unit1|U2|tmp_rf[0][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(2),
	datab => \Unit0|U0|RFr1a_ctrl\(3),
	datac => \Unit1|U2|tmp_rf[0][5]~q\,
	datad => \Unit1|U2|tmp_rf[8][5]~q\,
	combout => \Unit1|U2|Mux10~4_combout\);

-- Location: FF_X66_Y52_N7
\Unit1|U2|tmp_rf[12][5]\ : dffeas
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
	ena => \Unit1|U2|Decoder0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[12][5]~q\);

-- Location: FF_X67_Y53_N9
\Unit1|U2|tmp_rf[4][5]\ : dffeas
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
	ena => \Unit1|U2|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[4][5]~q\);

-- Location: LCCOMB_X66_Y52_N6
\Unit1|U2|Mux10~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux10~5_combout\ = (\Unit0|U0|RFr1a_ctrl\(2) & ((\Unit1|U2|Mux10~4_combout\ & (\Unit1|U2|tmp_rf[12][5]~q\)) # (!\Unit1|U2|Mux10~4_combout\ & ((\Unit1|U2|tmp_rf[4][5]~q\))))) # (!\Unit0|U0|RFr1a_ctrl\(2) & (\Unit1|U2|Mux10~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(2),
	datab => \Unit1|U2|Mux10~4_combout\,
	datac => \Unit1|U2|tmp_rf[12][5]~q\,
	datad => \Unit1|U2|tmp_rf[4][5]~q\,
	combout => \Unit1|U2|Mux10~5_combout\);

-- Location: LCCOMB_X66_Y53_N28
\Unit1|U2|Mux10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux10~2_combout\ = (\Unit0|U0|RFr1a_ctrl\(3) & (((\Unit0|U0|RFr1a_ctrl\(2))))) # (!\Unit0|U0|RFr1a_ctrl\(3) & ((\Unit0|U0|RFr1a_ctrl\(2) & (\Unit1|U2|tmp_rf[5][5]~q\)) # (!\Unit0|U0|RFr1a_ctrl\(2) & ((\Unit1|U2|tmp_rf[1][5]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[5][5]~q\,
	datab => \Unit0|U0|RFr1a_ctrl\(3),
	datac => \Unit0|U0|RFr1a_ctrl\(2),
	datad => \Unit1|U2|tmp_rf[1][5]~q\,
	combout => \Unit1|U2|Mux10~2_combout\);

-- Location: FF_X66_Y50_N29
\Unit1|U2|tmp_rf[13][5]\ : dffeas
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
	q => \Unit1|U2|tmp_rf[13][5]~q\);

-- Location: LCCOMB_X66_Y50_N28
\Unit1|U2|Mux10~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux10~3_combout\ = (\Unit1|U2|Mux10~2_combout\ & (((\Unit1|U2|tmp_rf[13][5]~q\) # (!\Unit0|U0|RFr1a_ctrl\(3))))) # (!\Unit1|U2|Mux10~2_combout\ & (\Unit1|U2|tmp_rf[9][5]~q\ & ((\Unit0|U0|RFr1a_ctrl\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[9][5]~q\,
	datab => \Unit1|U2|Mux10~2_combout\,
	datac => \Unit1|U2|tmp_rf[13][5]~q\,
	datad => \Unit0|U0|RFr1a_ctrl\(3),
	combout => \Unit1|U2|Mux10~3_combout\);

-- Location: LCCOMB_X70_Y52_N20
\Unit1|U2|Mux10~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux10~6_combout\ = (\Unit0|U0|RFr1a_ctrl\(0) & ((\Unit0|U0|RFr1a_ctrl\(1)) # ((\Unit1|U2|Mux10~3_combout\)))) # (!\Unit0|U0|RFr1a_ctrl\(0) & (!\Unit0|U0|RFr1a_ctrl\(1) & (\Unit1|U2|Mux10~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(0),
	datab => \Unit0|U0|RFr1a_ctrl\(1),
	datac => \Unit1|U2|Mux10~5_combout\,
	datad => \Unit1|U2|Mux10~3_combout\,
	combout => \Unit1|U2|Mux10~6_combout\);

-- Location: LCCOMB_X70_Y52_N14
\Unit1|U2|Mux10~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux10~9_combout\ = (\Unit0|U0|RFr1a_ctrl\(1) & ((\Unit1|U2|Mux10~6_combout\ & ((\Unit1|U2|Mux10~8_combout\))) # (!\Unit1|U2|Mux10~6_combout\ & (\Unit1|U2|Mux10~1_combout\)))) # (!\Unit0|U0|RFr1a_ctrl\(1) & (((\Unit1|U2|Mux10~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(1),
	datab => \Unit1|U2|Mux10~1_combout\,
	datac => \Unit1|U2|Mux10~8_combout\,
	datad => \Unit1|U2|Mux10~6_combout\,
	combout => \Unit1|U2|Mux10~9_combout\);

-- Location: FF_X70_Y52_N29
\Unit1|U2|RFr1[5]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	asdata => \Unit1|U2|Mux10~9_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit0|U0|RFr1e_ctrl~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|RFr1[5]~_Duplicate_1_q\);

-- Location: LCCOMB_X69_Y50_N4
\Unit1|U3|Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|Add0~11_combout\ = \Unit1|U2|RFr2\(3) $ (\Unit0|U0|ALUs_ctrl\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Unit1|U2|RFr2\(3),
	datad => \Unit0|U0|ALUs_ctrl\(0),
	combout => \Unit1|U3|Add0~11_combout\);

-- Location: LCCOMB_X69_Y50_N22
\Unit1|U3|Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|Add0~9_combout\ = (\Unit1|U2|RFr1[2]~_Duplicate_1_q\ & ((\Unit1|U3|Add0~8_combout\ & (\Unit1|U3|Add0~7\ & VCC)) # (!\Unit1|U3|Add0~8_combout\ & (!\Unit1|U3|Add0~7\)))) # (!\Unit1|U2|RFr1[2]~_Duplicate_1_q\ & ((\Unit1|U3|Add0~8_combout\ & 
-- (!\Unit1|U3|Add0~7\)) # (!\Unit1|U3|Add0~8_combout\ & ((\Unit1|U3|Add0~7\) # (GND)))))
-- \Unit1|U3|Add0~10\ = CARRY((\Unit1|U2|RFr1[2]~_Duplicate_1_q\ & (!\Unit1|U3|Add0~8_combout\ & !\Unit1|U3|Add0~7\)) # (!\Unit1|U2|RFr1[2]~_Duplicate_1_q\ & ((!\Unit1|U3|Add0~7\) # (!\Unit1|U3|Add0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|RFr1[2]~_Duplicate_1_q\,
	datab => \Unit1|U3|Add0~8_combout\,
	datad => VCC,
	cin => \Unit1|U3|Add0~7\,
	combout => \Unit1|U3|Add0~9_combout\,
	cout => \Unit1|U3|Add0~10\);

-- Location: LCCOMB_X69_Y50_N24
\Unit1|U3|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|Add0~12_combout\ = ((\Unit1|U2|RFr1[3]~_Duplicate_1_q\ $ (\Unit1|U3|Add0~11_combout\ $ (!\Unit1|U3|Add0~10\)))) # (GND)
-- \Unit1|U3|Add0~13\ = CARRY((\Unit1|U2|RFr1[3]~_Duplicate_1_q\ & ((\Unit1|U3|Add0~11_combout\) # (!\Unit1|U3|Add0~10\))) # (!\Unit1|U2|RFr1[3]~_Duplicate_1_q\ & (\Unit1|U3|Add0~11_combout\ & !\Unit1|U3|Add0~10\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|RFr1[3]~_Duplicate_1_q\,
	datab => \Unit1|U3|Add0~11_combout\,
	datad => VCC,
	cin => \Unit1|U3|Add0~10\,
	combout => \Unit1|U3|Add0~12_combout\,
	cout => \Unit1|U3|Add0~13\);

-- Location: LCCOMB_X69_Y50_N26
\Unit1|U3|Add0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|Add0~15_combout\ = (\Unit1|U3|Add0~14_combout\ & ((\Unit1|U2|RFr1[4]~_Duplicate_1_q\ & (\Unit1|U3|Add0~13\ & VCC)) # (!\Unit1|U2|RFr1[4]~_Duplicate_1_q\ & (!\Unit1|U3|Add0~13\)))) # (!\Unit1|U3|Add0~14_combout\ & 
-- ((\Unit1|U2|RFr1[4]~_Duplicate_1_q\ & (!\Unit1|U3|Add0~13\)) # (!\Unit1|U2|RFr1[4]~_Duplicate_1_q\ & ((\Unit1|U3|Add0~13\) # (GND)))))
-- \Unit1|U3|Add0~16\ = CARRY((\Unit1|U3|Add0~14_combout\ & (!\Unit1|U2|RFr1[4]~_Duplicate_1_q\ & !\Unit1|U3|Add0~13\)) # (!\Unit1|U3|Add0~14_combout\ & ((!\Unit1|U3|Add0~13\) # (!\Unit1|U2|RFr1[4]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U3|Add0~14_combout\,
	datab => \Unit1|U2|RFr1[4]~_Duplicate_1_q\,
	datad => VCC,
	cin => \Unit1|U3|Add0~13\,
	combout => \Unit1|U3|Add0~15_combout\,
	cout => \Unit1|U3|Add0~16\);

-- Location: LCCOMB_X69_Y50_N30
\Unit1|U3|Add0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|Add0~21_combout\ = (\Unit1|U2|RFr1[6]~_Duplicate_1_q\ & ((\Unit1|U3|Add0~20_combout\ & (\Unit1|U3|Add0~19\ & VCC)) # (!\Unit1|U3|Add0~20_combout\ & (!\Unit1|U3|Add0~19\)))) # (!\Unit1|U2|RFr1[6]~_Duplicate_1_q\ & ((\Unit1|U3|Add0~20_combout\ & 
-- (!\Unit1|U3|Add0~19\)) # (!\Unit1|U3|Add0~20_combout\ & ((\Unit1|U3|Add0~19\) # (GND)))))
-- \Unit1|U3|Add0~22\ = CARRY((\Unit1|U2|RFr1[6]~_Duplicate_1_q\ & (!\Unit1|U3|Add0~20_combout\ & !\Unit1|U3|Add0~19\)) # (!\Unit1|U2|RFr1[6]~_Duplicate_1_q\ & ((!\Unit1|U3|Add0~19\) # (!\Unit1|U3|Add0~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|RFr1[6]~_Duplicate_1_q\,
	datab => \Unit1|U3|Add0~20_combout\,
	datad => VCC,
	cin => \Unit1|U3|Add0~19\,
	combout => \Unit1|U3|Add0~21_combout\,
	cout => \Unit1|U3|Add0~22\);

-- Location: LCCOMB_X63_Y49_N0
\Unit1|U3|Mux24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|Mux24~0_combout\ = (\Unit1|U3|Mux17~0_combout\ & (((\Unit1|U3|Mux17~1_combout\) # (\Unit1|U3|Add0~24_combout\)))) # (!\Unit1|U3|Mux17~0_combout\ & (\Unit1|U2|RFr1[7]~_Duplicate_1_q\ & (!\Unit1|U3|Mux17~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|RFr1[7]~_Duplicate_1_q\,
	datab => \Unit1|U3|Mux17~0_combout\,
	datac => \Unit1|U3|Mux17~1_combout\,
	datad => \Unit1|U3|Add0~24_combout\,
	combout => \Unit1|U3|Mux24~0_combout\);

-- Location: LCCOMB_X63_Y49_N26
\Unit1|U3|Mux24~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|Mux24~1_combout\ = (\Unit1|U3|Mux17~1_combout\ & ((\Unit1|U3|Mux24~0_combout\ & ((\Unit1|U3|mult_result\(7)))) # (!\Unit1|U3|Mux24~0_combout\ & (\Unit1|U2|RFr2\(7))))) # (!\Unit1|U3|Mux17~1_combout\ & (((\Unit1|U3|Mux24~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|RFr2\(7),
	datab => \Unit1|U3|Mux17~1_combout\,
	datac => \Unit1|U3|mult_result\(7),
	datad => \Unit1|U3|Mux24~0_combout\,
	combout => \Unit1|U3|Mux24~1_combout\);

-- Location: LCCOMB_X63_Y49_N16
\Unit1|U3|alu_tmp[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|alu_tmp\(7) = (GLOBAL(\Unit1|U3|Mux33~0clkctrl_outclk\) & ((\Unit1|U3|Mux24~1_combout\))) # (!GLOBAL(\Unit1|U3|Mux33~0clkctrl_outclk\) & (\Unit1|U3|alu_tmp\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Unit1|U3|alu_tmp\(7),
	datac => \Unit1|U3|Mux24~1_combout\,
	datad => \Unit1|U3|Mux33~0clkctrl_outclk\,
	combout => \Unit1|U3|alu_tmp\(7));

-- Location: LCCOMB_X63_Y52_N14
\Unit1|U1|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U1|Mux8~0_combout\ = (\Unit0|U0|RFs_ctrl\(1) & ((\Unit0|U0|RFs_ctrl\(0)) # ((\Unit0|U2|dir_addr\(7))))) # (!\Unit0|U0|RFs_ctrl\(1) & (!\Unit0|U0|RFs_ctrl\(0) & (\Unit1|U3|alu_tmp\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFs_ctrl\(1),
	datab => \Unit0|U0|RFs_ctrl\(0),
	datac => \Unit1|U3|alu_tmp\(7),
	datad => \Unit0|U2|dir_addr\(7),
	combout => \Unit1|U1|Mux8~0_combout\);

-- Location: LCCOMB_X67_Y52_N18
\Unit1|U1|Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U1|Mux8~1_combout\ = (\Unit1|U1|Mux8~0_combout\) # ((\Unit2|altsyncram_component|auto_generated|q_a\(7) & \Unit0|U0|RFs_ctrl\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Unit2|altsyncram_component|auto_generated|q_a\(7),
	datac => \Unit0|U0|RFs_ctrl\(0),
	datad => \Unit1|U1|Mux8~0_combout\,
	combout => \Unit1|U1|Mux8~1_combout\);

-- Location: FF_X66_Y49_N3
\Unit1|U2|tmp_rf[7][7]\ : dffeas
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
	ena => \Unit1|U2|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[7][7]~q\);

-- Location: FF_X66_Y53_N11
\Unit1|U2|tmp_rf[3][7]\ : dffeas
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
	q => \Unit1|U2|tmp_rf[3][7]~q\);

-- Location: LCCOMB_X66_Y53_N10
\Unit1|U2|Mux8~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux8~7_combout\ = (\Unit0|U0|RFr1a_ctrl\(2) & (((\Unit0|U0|RFr1a_ctrl\(3))))) # (!\Unit0|U0|RFr1a_ctrl\(2) & ((\Unit0|U0|RFr1a_ctrl\(3) & (\Unit1|U2|tmp_rf[11][7]~q\)) # (!\Unit0|U0|RFr1a_ctrl\(3) & ((\Unit1|U2|tmp_rf[3][7]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[11][7]~q\,
	datab => \Unit0|U0|RFr1a_ctrl\(2),
	datac => \Unit1|U2|tmp_rf[3][7]~q\,
	datad => \Unit0|U0|RFr1a_ctrl\(3),
	combout => \Unit1|U2|Mux8~7_combout\);

-- Location: LCCOMB_X66_Y49_N2
\Unit1|U2|Mux8~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux8~8_combout\ = (\Unit0|U0|RFr1a_ctrl\(2) & ((\Unit1|U2|Mux8~7_combout\ & (\Unit1|U2|tmp_rf[15][7]~q\)) # (!\Unit1|U2|Mux8~7_combout\ & ((\Unit1|U2|tmp_rf[7][7]~q\))))) # (!\Unit0|U0|RFr1a_ctrl\(2) & (((\Unit1|U2|Mux8~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[15][7]~q\,
	datab => \Unit0|U0|RFr1a_ctrl\(2),
	datac => \Unit1|U2|tmp_rf[7][7]~q\,
	datad => \Unit1|U2|Mux8~7_combout\,
	combout => \Unit1|U2|Mux8~8_combout\);

-- Location: LCCOMB_X66_Y51_N10
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

-- Location: FF_X66_Y51_N11
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
	ena => \Unit1|U2|Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[8][7]~q\);

-- Location: LCCOMB_X66_Y52_N18
\Unit1|U2|Mux8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux8~4_combout\ = (\Unit0|U0|RFr1a_ctrl\(3) & (((\Unit0|U0|RFr1a_ctrl\(2))))) # (!\Unit0|U0|RFr1a_ctrl\(3) & ((\Unit0|U0|RFr1a_ctrl\(2) & (\Unit1|U2|tmp_rf[4][7]~q\)) # (!\Unit0|U0|RFr1a_ctrl\(2) & ((\Unit1|U2|tmp_rf[0][7]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[4][7]~q\,
	datab => \Unit1|U2|tmp_rf[0][7]~q\,
	datac => \Unit0|U0|RFr1a_ctrl\(3),
	datad => \Unit0|U0|RFr1a_ctrl\(2),
	combout => \Unit1|U2|Mux8~4_combout\);

-- Location: LCCOMB_X66_Y52_N28
\Unit1|U2|Mux8~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux8~5_combout\ = (\Unit0|U0|RFr1a_ctrl\(3) & ((\Unit1|U2|Mux8~4_combout\ & (\Unit1|U2|tmp_rf[12][7]~q\)) # (!\Unit1|U2|Mux8~4_combout\ & ((\Unit1|U2|tmp_rf[8][7]~q\))))) # (!\Unit0|U0|RFr1a_ctrl\(3) & (((\Unit1|U2|Mux8~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(3),
	datab => \Unit1|U2|tmp_rf[12][7]~q\,
	datac => \Unit1|U2|tmp_rf[8][7]~q\,
	datad => \Unit1|U2|Mux8~4_combout\,
	combout => \Unit1|U2|Mux8~5_combout\);

-- Location: FF_X65_Y52_N19
\Unit1|U2|tmp_rf[2][7]\ : dffeas
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
	ena => \Unit1|U2|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[2][7]~q\);

-- Location: LCCOMB_X65_Y52_N2
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

-- Location: LCCOMB_X65_Y52_N24
\Unit1|U2|Mux8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux8~3_combout\ = (\Unit0|U0|RFr1a_ctrl\(3) & ((\Unit1|U2|Mux8~2_combout\ & ((\Unit1|U2|tmp_rf[14][7]~q\))) # (!\Unit1|U2|Mux8~2_combout\ & (\Unit1|U2|tmp_rf[10][7]~q\)))) # (!\Unit0|U0|RFr1a_ctrl\(3) & (((\Unit1|U2|Mux8~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(3),
	datab => \Unit1|U2|tmp_rf[10][7]~q\,
	datac => \Unit1|U2|tmp_rf[14][7]~q\,
	datad => \Unit1|U2|Mux8~2_combout\,
	combout => \Unit1|U2|Mux8~3_combout\);

-- Location: LCCOMB_X63_Y51_N18
\Unit1|U2|Mux8~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux8~6_combout\ = (\Unit0|U0|RFr1a_ctrl\(0) & (((\Unit0|U0|RFr1a_ctrl\(1))))) # (!\Unit0|U0|RFr1a_ctrl\(0) & ((\Unit0|U0|RFr1a_ctrl\(1) & ((\Unit1|U2|Mux8~3_combout\))) # (!\Unit0|U0|RFr1a_ctrl\(1) & (\Unit1|U2|Mux8~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(0),
	datab => \Unit1|U2|Mux8~5_combout\,
	datac => \Unit0|U0|RFr1a_ctrl\(1),
	datad => \Unit1|U2|Mux8~3_combout\,
	combout => \Unit1|U2|Mux8~6_combout\);

-- Location: FF_X66_Y53_N25
\Unit1|U2|tmp_rf[5][7]\ : dffeas
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
	q => \Unit1|U2|tmp_rf[5][7]~q\);

-- Location: LCCOMB_X68_Y52_N20
\Unit1|U2|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux8~0_combout\ = (\Unit0|U0|RFr1a_ctrl\(2) & (((\Unit0|U0|RFr1a_ctrl\(3))))) # (!\Unit0|U0|RFr1a_ctrl\(2) & ((\Unit0|U0|RFr1a_ctrl\(3) & ((\Unit1|U2|tmp_rf[9][7]~q\))) # (!\Unit0|U0|RFr1a_ctrl\(3) & (\Unit1|U2|tmp_rf[1][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(2),
	datab => \Unit1|U2|tmp_rf[1][7]~q\,
	datac => \Unit0|U0|RFr1a_ctrl\(3),
	datad => \Unit1|U2|tmp_rf[9][7]~q\,
	combout => \Unit1|U2|Mux8~0_combout\);

-- Location: LCCOMB_X66_Y53_N24
\Unit1|U2|Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux8~1_combout\ = (\Unit0|U0|RFr1a_ctrl\(2) & ((\Unit1|U2|Mux8~0_combout\ & (\Unit1|U2|tmp_rf[13][7]~q\)) # (!\Unit1|U2|Mux8~0_combout\ & ((\Unit1|U2|tmp_rf[5][7]~q\))))) # (!\Unit0|U0|RFr1a_ctrl\(2) & (((\Unit1|U2|Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[13][7]~q\,
	datab => \Unit0|U0|RFr1a_ctrl\(2),
	datac => \Unit1|U2|tmp_rf[5][7]~q\,
	datad => \Unit1|U2|Mux8~0_combout\,
	combout => \Unit1|U2|Mux8~1_combout\);

-- Location: LCCOMB_X66_Y49_N16
\Unit1|U2|Mux8~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux8~9_combout\ = (\Unit0|U0|RFr1a_ctrl\(0) & ((\Unit1|U2|Mux8~6_combout\ & (\Unit1|U2|Mux8~8_combout\)) # (!\Unit1|U2|Mux8~6_combout\ & ((\Unit1|U2|Mux8~1_combout\))))) # (!\Unit0|U0|RFr1a_ctrl\(0) & (((\Unit1|U2|Mux8~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(0),
	datab => \Unit1|U2|Mux8~8_combout\,
	datac => \Unit1|U2|Mux8~6_combout\,
	datad => \Unit1|U2|Mux8~1_combout\,
	combout => \Unit1|U2|Mux8~9_combout\);

-- Location: LCCOMB_X66_Y49_N18
\Unit1|U2|RFr1[7]~_Duplicate_1feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|RFr1[7]~_Duplicate_1feeder_combout\ = \Unit1|U2|Mux8~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|U2|Mux8~9_combout\,
	combout => \Unit1|U2|RFr1[7]~_Duplicate_1feeder_combout\);

-- Location: FF_X66_Y49_N19
\Unit1|U2|RFr1[7]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|RFr1[7]~_Duplicate_1feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit0|U0|RFr1e_ctrl~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|RFr1[7]~_Duplicate_1_q\);

-- Location: LCCOMB_X63_Y52_N20
\Unit0|U3|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U3|Mux8~0_combout\ = (\Unit0|U0|Ms_ctrl\(1) & ((\Unit0|U0|Ms_ctrl\(0) & (\Unit0|U2|dir_addr\(7))) # (!\Unit0|U0|Ms_ctrl\(0) & ((\Unit1|U2|RFr1[7]~_Duplicate_1_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|Ms_ctrl\(0),
	datab => \Unit0|U0|Ms_ctrl\(1),
	datac => \Unit0|U2|dir_addr\(7),
	datad => \Unit1|U2|RFr1[7]~_Duplicate_1_q\,
	combout => \Unit0|U3|Mux8~0_combout\);

-- Location: LCCOMB_X63_Y52_N22
\Unit0|U3|Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U3|Mux8~1_combout\ = (\Unit0|U3|Mux8~0_combout\) # ((\Unit0|U1|tmp_PC\(7) & (!\Unit0|U0|Ms_ctrl\(1) & !\Unit0|U0|Ms_ctrl\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U1|tmp_PC\(7),
	datab => \Unit0|U0|Ms_ctrl\(1),
	datac => \Unit0|U0|Ms_ctrl\(0),
	datad => \Unit0|U3|Mux8~0_combout\,
	combout => \Unit0|U3|Mux8~1_combout\);

-- Location: M9K_X64_Y50_N0
\Unit2|altsyncram_component|auto_generated|ram_block1a4\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005FE04EE7A0000133",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "m9k_mem.hex",
	init_file_layout => "port_a",
	logical_ram_name => "MainMemory:Unit2|altsyncram:altsyncram_component|altsyncram_fos3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \Unit0|U0|Mwe_ctrl~q\,
	portare => \Unit0|U0|Mre_ctrl~q\,
	clk0 => \cpu_clk~inputclkctrl_outclk\,
	portadatain => \Unit2|altsyncram_component|auto_generated|ram_block1a4_PORTADATAIN_bus\,
	portaaddr => \Unit2|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \Unit2|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\);

-- Location: LCCOMB_X65_Y50_N28
\Unit0|U2|dir_addr[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U2|dir_addr\(5) = (GLOBAL(\Unit0|U0|IRld_ctrl~clkctrl_outclk\) & ((\Unit2|altsyncram_component|auto_generated|q_a\(5)))) # (!GLOBAL(\Unit0|U0|IRld_ctrl~clkctrl_outclk\) & (\Unit0|U2|dir_addr\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Unit0|U2|dir_addr\(5),
	datac => \Unit0|U0|IRld_ctrl~clkctrl_outclk\,
	datad => \Unit2|altsyncram_component|auto_generated|q_a\(5),
	combout => \Unit0|U2|dir_addr\(5));

-- Location: LCCOMB_X65_Y50_N4
\Unit0|U3|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U3|Mux10~0_combout\ = (\Unit0|U0|Ms_ctrl\(1) & ((\Unit0|U0|Ms_ctrl\(0) & ((\Unit0|U2|dir_addr\(5)))) # (!\Unit0|U0|Ms_ctrl\(0) & (\Unit1|U2|RFr1[5]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|RFr1[5]~_Duplicate_1_q\,
	datab => \Unit0|U0|Ms_ctrl\(1),
	datac => \Unit0|U0|Ms_ctrl\(0),
	datad => \Unit0|U2|dir_addr\(5),
	combout => \Unit0|U3|Mux10~0_combout\);

-- Location: LCCOMB_X65_Y50_N14
\Unit0|U3|Mux10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U3|Mux10~1_combout\ = (\Unit0|U3|Mux10~0_combout\) # ((\Unit0|U1|tmp_PC\(5) & (!\Unit0|U0|Ms_ctrl\(1) & !\Unit0|U0|Ms_ctrl\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U1|tmp_PC\(5),
	datab => \Unit0|U0|Ms_ctrl\(1),
	datac => \Unit0|U3|Mux10~0_combout\,
	datad => \Unit0|U0|Ms_ctrl\(0),
	combout => \Unit0|U3|Mux10~1_combout\);

-- Location: M9K_X64_Y51_N0
\Unit2|altsyncram_component|auto_generated|ram_block1a2\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005695A56900080000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000050950000000009BC36A8410000022",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "m9k_mem.hex",
	init_file_layout => "port_a",
	logical_ram_name => "MainMemory:Unit2|altsyncram:altsyncram_component|altsyncram_fos3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \Unit0|U0|Mwe_ctrl~q\,
	portare => \Unit0|U0|Mre_ctrl~q\,
	clk0 => \cpu_clk~inputclkctrl_outclk\,
	portadatain => \Unit2|altsyncram_component|auto_generated|ram_block1a2_PORTADATAIN_bus\,
	portaaddr => \Unit2|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \Unit2|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\);

-- Location: LCCOMB_X63_Y52_N10
\Unit1|U1|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U1|Mux12~0_combout\ = (\Unit0|U0|RFs_ctrl\(1) & ((\Unit0|U0|RFs_ctrl\(0)) # ((\Unit0|U2|dir_addr\(3))))) # (!\Unit0|U0|RFs_ctrl\(1) & (!\Unit0|U0|RFs_ctrl\(0) & (\Unit1|U3|alu_tmp\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFs_ctrl\(1),
	datab => \Unit0|U0|RFs_ctrl\(0),
	datac => \Unit1|U3|alu_tmp\(3),
	datad => \Unit0|U2|dir_addr\(3),
	combout => \Unit1|U1|Mux12~0_combout\);

-- Location: LCCOMB_X63_Y52_N4
\Unit1|U1|Mux12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U1|Mux12~1_combout\ = (\Unit1|U1|Mux12~0_combout\) # ((\Unit0|U0|RFs_ctrl\(0) & \Unit2|altsyncram_component|auto_generated|q_a\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Unit0|U0|RFs_ctrl\(0),
	datac => \Unit2|altsyncram_component|auto_generated|q_a\(3),
	datad => \Unit1|U1|Mux12~0_combout\,
	combout => \Unit1|U1|Mux12~1_combout\);

-- Location: FF_X66_Y51_N23
\Unit1|U2|tmp_rf[8][3]\ : dffeas
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
	ena => \Unit1|U2|Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[8][3]~q\);

-- Location: FF_X66_Y52_N13
\Unit1|U2|tmp_rf[12][3]\ : dffeas
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
	q => \Unit1|U2|tmp_rf[12][3]~q\);

-- Location: LCCOMB_X66_Y52_N22
\Unit1|U2|Mux12~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux12~4_combout\ = (\Unit0|U0|RFr1a_ctrl\(3) & (((\Unit0|U0|RFr1a_ctrl\(2))))) # (!\Unit0|U0|RFr1a_ctrl\(3) & ((\Unit0|U0|RFr1a_ctrl\(2) & ((\Unit1|U2|tmp_rf[4][3]~q\))) # (!\Unit0|U0|RFr1a_ctrl\(2) & (\Unit1|U2|tmp_rf[0][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[0][3]~q\,
	datab => \Unit1|U2|tmp_rf[4][3]~q\,
	datac => \Unit0|U0|RFr1a_ctrl\(3),
	datad => \Unit0|U0|RFr1a_ctrl\(2),
	combout => \Unit1|U2|Mux12~4_combout\);

-- Location: LCCOMB_X66_Y52_N12
\Unit1|U2|Mux12~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux12~5_combout\ = (\Unit0|U0|RFr1a_ctrl\(3) & ((\Unit1|U2|Mux12~4_combout\ & ((\Unit1|U2|tmp_rf[12][3]~q\))) # (!\Unit1|U2|Mux12~4_combout\ & (\Unit1|U2|tmp_rf[8][3]~q\)))) # (!\Unit0|U0|RFr1a_ctrl\(3) & (((\Unit1|U2|Mux12~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(3),
	datab => \Unit1|U2|tmp_rf[8][3]~q\,
	datac => \Unit1|U2|tmp_rf[12][3]~q\,
	datad => \Unit1|U2|Mux12~4_combout\,
	combout => \Unit1|U2|Mux12~5_combout\);

-- Location: FF_X65_Y52_N29
\Unit1|U2|tmp_rf[2][3]\ : dffeas
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
	ena => \Unit1|U2|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[2][3]~q\);

-- Location: LCCOMB_X65_Y52_N28
\Unit1|U2|Mux12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux12~2_combout\ = (\Unit0|U0|RFr1a_ctrl\(3) & (((\Unit0|U0|RFr1a_ctrl\(2))))) # (!\Unit0|U0|RFr1a_ctrl\(3) & ((\Unit0|U0|RFr1a_ctrl\(2) & (\Unit1|U2|tmp_rf[6][3]~q\)) # (!\Unit0|U0|RFr1a_ctrl\(2) & ((\Unit1|U2|tmp_rf[2][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(3),
	datab => \Unit1|U2|tmp_rf[6][3]~q\,
	datac => \Unit1|U2|tmp_rf[2][3]~q\,
	datad => \Unit0|U0|RFr1a_ctrl\(2),
	combout => \Unit1|U2|Mux12~2_combout\);

-- Location: LCCOMB_X65_Y52_N10
\Unit1|U2|Mux12~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux12~3_combout\ = (\Unit0|U0|RFr1a_ctrl\(3) & ((\Unit1|U2|Mux12~2_combout\ & (\Unit1|U2|tmp_rf[14][3]~q\)) # (!\Unit1|U2|Mux12~2_combout\ & ((\Unit1|U2|tmp_rf[10][3]~q\))))) # (!\Unit0|U0|RFr1a_ctrl\(3) & (\Unit1|U2|Mux12~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(3),
	datab => \Unit1|U2|Mux12~2_combout\,
	datac => \Unit1|U2|tmp_rf[14][3]~q\,
	datad => \Unit1|U2|tmp_rf[10][3]~q\,
	combout => \Unit1|U2|Mux12~3_combout\);

-- Location: LCCOMB_X70_Y52_N2
\Unit1|U2|Mux12~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux12~6_combout\ = (\Unit0|U0|RFr1a_ctrl\(0) & (\Unit0|U0|RFr1a_ctrl\(1))) # (!\Unit0|U0|RFr1a_ctrl\(0) & ((\Unit0|U0|RFr1a_ctrl\(1) & ((\Unit1|U2|Mux12~3_combout\))) # (!\Unit0|U0|RFr1a_ctrl\(1) & (\Unit1|U2|Mux12~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(0),
	datab => \Unit0|U0|RFr1a_ctrl\(1),
	datac => \Unit1|U2|Mux12~5_combout\,
	datad => \Unit1|U2|Mux12~3_combout\,
	combout => \Unit1|U2|Mux12~6_combout\);

-- Location: FF_X63_Y52_N31
\Unit1|U2|tmp_rf[15][3]\ : dffeas
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
	ena => \Unit1|U2|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[15][3]~q\);

-- Location: FF_X62_Y51_N1
\Unit1|U2|tmp_rf[7][3]\ : dffeas
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
	ena => \Unit1|U2|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[7][3]~q\);

-- Location: FF_X63_Y52_N3
\Unit1|U2|tmp_rf[11][3]\ : dffeas
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
	q => \Unit1|U2|tmp_rf[11][3]~q\);

-- Location: LCCOMB_X63_Y51_N24
\Unit1|U2|Mux12~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux12~7_combout\ = (\Unit0|U0|RFr1a_ctrl\(3) & (((\Unit0|U0|RFr1a_ctrl\(2)) # (\Unit1|U2|tmp_rf[11][3]~q\)))) # (!\Unit0|U0|RFr1a_ctrl\(3) & (\Unit1|U2|tmp_rf[3][3]~q\ & (!\Unit0|U0|RFr1a_ctrl\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[3][3]~q\,
	datab => \Unit0|U0|RFr1a_ctrl\(3),
	datac => \Unit0|U0|RFr1a_ctrl\(2),
	datad => \Unit1|U2|tmp_rf[11][3]~q\,
	combout => \Unit1|U2|Mux12~7_combout\);

-- Location: LCCOMB_X62_Y51_N0
\Unit1|U2|Mux12~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux12~8_combout\ = (\Unit0|U0|RFr1a_ctrl\(2) & ((\Unit1|U2|Mux12~7_combout\ & (\Unit1|U2|tmp_rf[15][3]~q\)) # (!\Unit1|U2|Mux12~7_combout\ & ((\Unit1|U2|tmp_rf[7][3]~q\))))) # (!\Unit0|U0|RFr1a_ctrl\(2) & (((\Unit1|U2|Mux12~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(2),
	datab => \Unit1|U2|tmp_rf[15][3]~q\,
	datac => \Unit1|U2|tmp_rf[7][3]~q\,
	datad => \Unit1|U2|Mux12~7_combout\,
	combout => \Unit1|U2|Mux12~8_combout\);

-- Location: FF_X70_Y52_N13
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
	ena => \Unit1|U2|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[5][3]~q\);

-- Location: LCCOMB_X68_Y52_N26
\Unit1|U2|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux12~0_combout\ = (\Unit0|U0|RFr1a_ctrl\(2) & (((\Unit0|U0|RFr1a_ctrl\(3))))) # (!\Unit0|U0|RFr1a_ctrl\(2) & ((\Unit0|U0|RFr1a_ctrl\(3) & ((\Unit1|U2|tmp_rf[9][3]~q\))) # (!\Unit0|U0|RFr1a_ctrl\(3) & (\Unit1|U2|tmp_rf[1][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(2),
	datab => \Unit1|U2|tmp_rf[1][3]~q\,
	datac => \Unit0|U0|RFr1a_ctrl\(3),
	datad => \Unit1|U2|tmp_rf[9][3]~q\,
	combout => \Unit1|U2|Mux12~0_combout\);

-- Location: LCCOMB_X70_Y52_N12
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

-- Location: LCCOMB_X70_Y52_N18
\Unit1|U2|Mux12~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux12~9_combout\ = (\Unit0|U0|RFr1a_ctrl\(0) & ((\Unit1|U2|Mux12~6_combout\ & (\Unit1|U2|Mux12~8_combout\)) # (!\Unit1|U2|Mux12~6_combout\ & ((\Unit1|U2|Mux12~1_combout\))))) # (!\Unit0|U0|RFr1a_ctrl\(0) & (\Unit1|U2|Mux12~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(0),
	datab => \Unit1|U2|Mux12~6_combout\,
	datac => \Unit1|U2|Mux12~8_combout\,
	datad => \Unit1|U2|Mux12~1_combout\,
	combout => \Unit1|U2|Mux12~9_combout\);

-- Location: FF_X70_Y52_N19
\Unit1|U2|RFr1[3]~_Duplicate_1\ : dffeas
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
	q => \Unit1|U2|RFr1[3]~_Duplicate_1_q\);

-- Location: LCCOMB_X70_Y50_N26
\Unit1|U3|Mux20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|Mux20~0_combout\ = (\Unit1|U3|Mux17~1_combout\ & (((\Unit1|U3|Mux17~0_combout\)))) # (!\Unit1|U3|Mux17~1_combout\ & ((\Unit1|U3|Mux17~0_combout\ & ((\Unit1|U3|Add0~12_combout\))) # (!\Unit1|U3|Mux17~0_combout\ & 
-- (\Unit1|U2|RFr1[3]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U3|Mux17~1_combout\,
	datab => \Unit1|U2|RFr1[3]~_Duplicate_1_q\,
	datac => \Unit1|U3|Mux17~0_combout\,
	datad => \Unit1|U3|Add0~12_combout\,
	combout => \Unit1|U3|Mux20~0_combout\);

-- Location: LCCOMB_X70_Y50_N16
\Unit1|U3|mult_result[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|mult_result\(3) = (GLOBAL(\Unit1|U3|Mux1~0clkctrl_outclk\) & (\Unit1|U3|Mult0|auto_generated|mac_out2~DATAOUT3\)) # (!GLOBAL(\Unit1|U3|Mux1~0clkctrl_outclk\) & ((\Unit1|U3|mult_result\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U3|Mult0|auto_generated|mac_out2~DATAOUT3\,
	datab => \Unit1|U3|mult_result\(3),
	datad => \Unit1|U3|Mux1~0clkctrl_outclk\,
	combout => \Unit1|U3|mult_result\(3));

-- Location: LCCOMB_X70_Y50_N4
\Unit1|U3|Mux20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|Mux20~1_combout\ = (\Unit1|U3|Mux17~1_combout\ & ((\Unit1|U3|Mux20~0_combout\ & ((\Unit1|U3|mult_result\(3)))) # (!\Unit1|U3|Mux20~0_combout\ & (\Unit1|U2|RFr2\(3))))) # (!\Unit1|U3|Mux17~1_combout\ & (((\Unit1|U3|Mux20~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|RFr2\(3),
	datab => \Unit1|U3|Mux17~1_combout\,
	datac => \Unit1|U3|Mux20~0_combout\,
	datad => \Unit1|U3|mult_result\(3),
	combout => \Unit1|U3|Mux20~1_combout\);

-- Location: LCCOMB_X62_Y50_N22
\Unit1|U3|alu_tmp[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|alu_tmp\(3) = (GLOBAL(\Unit1|U3|Mux33~0clkctrl_outclk\) & ((\Unit1|U3|Mux20~1_combout\))) # (!GLOBAL(\Unit1|U3|Mux33~0clkctrl_outclk\) & (\Unit1|U3|alu_tmp\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U3|alu_tmp\(3),
	datac => \Unit1|U3|Mux20~1_combout\,
	datad => \Unit1|U3|Mux33~0clkctrl_outclk\,
	combout => \Unit1|U3|alu_tmp\(3));

-- Location: LCCOMB_X62_Y50_N0
\Unit1|U3|ALUz~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|ALUz~1_combout\ = (!\Unit1|U3|alu_tmp\(4) & (!\Unit1|U3|alu_tmp\(3) & (!\Unit1|U3|alu_tmp\(6) & !\Unit1|U3|alu_tmp\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U3|alu_tmp\(4),
	datab => \Unit1|U3|alu_tmp\(3),
	datac => \Unit1|U3|alu_tmp\(6),
	datad => \Unit1|U3|alu_tmp\(5),
	combout => \Unit1|U3|ALUz~1_combout\);

-- Location: LCCOMB_X63_Y49_N28
\Unit1|U3|ALUz~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|ALUz~2_combout\ = (!\Unit1|U3|alu_tmp\(9) & (!\Unit1|U3|alu_tmp\(7) & (!\Unit1|U3|alu_tmp\(10) & !\Unit1|U3|alu_tmp\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U3|alu_tmp\(9),
	datab => \Unit1|U3|alu_tmp\(7),
	datac => \Unit1|U3|alu_tmp\(10),
	datad => \Unit1|U3|alu_tmp\(8),
	combout => \Unit1|U3|ALUz~2_combout\);

-- Location: LCCOMB_X62_Y50_N18
\Unit1|U3|ALUz~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|ALUz~3_combout\ = (!\Unit1|U3|alu_tmp\(13) & (!\Unit1|U3|alu_tmp\(11) & (!\Unit1|U3|alu_tmp\(14) & !\Unit1|U3|alu_tmp\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U3|alu_tmp\(13),
	datab => \Unit1|U3|alu_tmp\(11),
	datac => \Unit1|U3|alu_tmp\(14),
	datad => \Unit1|U3|alu_tmp\(12),
	combout => \Unit1|U3|ALUz~3_combout\);

-- Location: LCCOMB_X62_Y50_N28
\Unit1|U3|ALUz~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|ALUz~4_combout\ = (\Unit1|U3|ALUz~0_combout\ & (\Unit1|U3|ALUz~1_combout\ & (\Unit1|U3|ALUz~2_combout\ & \Unit1|U3|ALUz~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U3|ALUz~0_combout\,
	datab => \Unit1|U3|ALUz~1_combout\,
	datac => \Unit1|U3|ALUz~2_combout\,
	datad => \Unit1|U3|ALUz~3_combout\,
	combout => \Unit1|U3|ALUz~4_combout\);

-- Location: LCCOMB_X62_Y50_N6
\Unit0|U1|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U1|process_0~0_combout\ = (!\Unit1|U3|alu_tmp\(15) & (!\Unit0|U0|PCinc_ctrl~q\ & \Unit1|U3|ALUz~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U3|alu_tmp\(15),
	datac => \Unit0|U0|PCinc_ctrl~q\,
	datad => \Unit1|U3|ALUz~4_combout\,
	combout => \Unit0|U1|process_0~0_combout\);

-- Location: FF_X61_Y50_N1
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
	sload => \Unit0|U1|process_0~0_combout\,
	ena => \Unit0|U1|tmp_PC~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U1|tmp_PC\(0));

-- Location: LCCOMB_X61_Y50_N2
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

-- Location: FF_X61_Y50_N3
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
	sload => \Unit0|U1|process_0~0_combout\,
	ena => \Unit0|U1|tmp_PC~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U1|tmp_PC\(1));

-- Location: FF_X61_Y50_N5
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
	sload => \Unit0|U1|process_0~0_combout\,
	ena => \Unit0|U1|tmp_PC~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U1|tmp_PC\(2));

-- Location: LCCOMB_X63_Y50_N24
\Unit0|U3|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U3|Mux13~0_combout\ = (\Unit0|U0|Ms_ctrl\(0) & (((\Unit0|U2|dir_addr\(2)) # (!\Unit0|U0|Ms_ctrl\(1))))) # (!\Unit0|U0|Ms_ctrl\(0) & (\Unit1|U2|RFr1[2]~_Duplicate_1_q\ & (\Unit0|U0|Ms_ctrl\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|RFr1[2]~_Duplicate_1_q\,
	datab => \Unit0|U0|Ms_ctrl\(0),
	datac => \Unit0|U0|Ms_ctrl\(1),
	datad => \Unit0|U2|dir_addr\(2),
	combout => \Unit0|U3|Mux13~0_combout\);

-- Location: LCCOMB_X63_Y50_N18
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

-- Location: M9K_X64_Y49_N0
\Unit2|altsyncram_component|auto_generated|ram_block1a8\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000CFD4ECA68C3A584",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "m9k_mem.hex",
	init_file_layout => "port_a",
	logical_ram_name => "MainMemory:Unit2|altsyncram:altsyncram_component|altsyncram_fos3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 8,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \Unit0|U0|Mwe_ctrl~q\,
	portare => \Unit0|U0|Mre_ctrl~q\,
	clk0 => \cpu_clk~inputclkctrl_outclk\,
	portadatain => \Unit2|altsyncram_component|auto_generated|ram_block1a8_PORTADATAIN_bus\,
	portaaddr => \Unit2|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \Unit2|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\);

-- Location: LCCOMB_X65_Y49_N16
\Unit0|U2|IRout[9]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U2|IRout\(9) = (GLOBAL(\Unit0|U0|IRld_ctrl~clkctrl_outclk\) & ((\Unit2|altsyncram_component|auto_generated|q_a\(9)))) # (!GLOBAL(\Unit0|U0|IRld_ctrl~clkctrl_outclk\) & (\Unit0|U2|IRout\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Unit0|U2|IRout\(9),
	datac => \Unit0|U0|IRld_ctrl~clkctrl_outclk\,
	datad => \Unit2|altsyncram_component|auto_generated|q_a\(9),
	combout => \Unit0|U2|IRout\(9));

-- Location: LCCOMB_X65_Y53_N26
\Unit0|U0|Selector70~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|Selector70~0_combout\ = (\Unit0|U0|WideOr65~combout\ & (\Unit0|U2|dir_addr\(5))) # (!\Unit0|U0|WideOr65~combout\ & (((!\Unit0|U0|state.S_LONG_SAVE~q\ & \Unit0|U2|IRout\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U2|dir_addr\(5),
	datab => \Unit0|U0|state.S_LONG_SAVE~q\,
	datac => \Unit0|U2|IRout\(9),
	datad => \Unit0|U0|WideOr65~combout\,
	combout => \Unit0|U0|Selector70~0_combout\);

-- Location: FF_X65_Y53_N27
\Unit0|U0|RFr1a_ctrl[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit0|U0|Selector70~0_combout\,
	ena => \Unit0|U0|RFr1a_ctrl[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U0|RFr1a_ctrl\(1));

-- Location: FF_X66_Y52_N11
\Unit1|U2|tmp_rf[12][1]\ : dffeas
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
	ena => \Unit1|U2|Decoder0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[12][1]~q\);

-- Location: LCCOMB_X66_Y52_N20
\Unit1|U2|Mux14~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux14~4_combout\ = (\Unit0|U0|RFr1a_ctrl\(2) & (((\Unit0|U0|RFr1a_ctrl\(3))))) # (!\Unit0|U0|RFr1a_ctrl\(2) & ((\Unit0|U0|RFr1a_ctrl\(3) & ((\Unit1|U2|tmp_rf[8][1]~q\))) # (!\Unit0|U0|RFr1a_ctrl\(3) & (\Unit1|U2|tmp_rf[0][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(2),
	datab => \Unit1|U2|tmp_rf[0][1]~q\,
	datac => \Unit0|U0|RFr1a_ctrl\(3),
	datad => \Unit1|U2|tmp_rf[8][1]~q\,
	combout => \Unit1|U2|Mux14~4_combout\);

-- Location: LCCOMB_X66_Y52_N10
\Unit1|U2|Mux14~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux14~5_combout\ = (\Unit0|U0|RFr1a_ctrl\(2) & ((\Unit1|U2|Mux14~4_combout\ & ((\Unit1|U2|tmp_rf[12][1]~q\))) # (!\Unit1|U2|Mux14~4_combout\ & (\Unit1|U2|tmp_rf[4][1]~q\)))) # (!\Unit0|U0|RFr1a_ctrl\(2) & (((\Unit1|U2|Mux14~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(2),
	datab => \Unit1|U2|tmp_rf[4][1]~q\,
	datac => \Unit1|U2|tmp_rf[12][1]~q\,
	datad => \Unit1|U2|Mux14~4_combout\,
	combout => \Unit1|U2|Mux14~5_combout\);

-- Location: LCCOMB_X68_Y52_N0
\Unit1|U2|Mux14~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux14~2_combout\ = (\Unit0|U0|RFr1a_ctrl\(2) & (((\Unit1|U2|tmp_rf[5][1]~q\) # (\Unit0|U0|RFr1a_ctrl\(3))))) # (!\Unit0|U0|RFr1a_ctrl\(2) & (\Unit1|U2|tmp_rf[1][1]~q\ & ((!\Unit0|U0|RFr1a_ctrl\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(2),
	datab => \Unit1|U2|tmp_rf[1][1]~q\,
	datac => \Unit1|U2|tmp_rf[5][1]~q\,
	datad => \Unit0|U0|RFr1a_ctrl\(3),
	combout => \Unit1|U2|Mux14~2_combout\);

-- Location: LCCOMB_X68_Y52_N24
\Unit1|U2|Mux14~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux14~3_combout\ = (\Unit0|U0|RFr1a_ctrl\(3) & ((\Unit1|U2|Mux14~2_combout\ & ((\Unit1|U2|tmp_rf[13][1]~q\))) # (!\Unit1|U2|Mux14~2_combout\ & (\Unit1|U2|tmp_rf[9][1]~q\)))) # (!\Unit0|U0|RFr1a_ctrl\(3) & (((\Unit1|U2|Mux14~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(3),
	datab => \Unit1|U2|tmp_rf[9][1]~q\,
	datac => \Unit1|U2|tmp_rf[13][1]~q\,
	datad => \Unit1|U2|Mux14~2_combout\,
	combout => \Unit1|U2|Mux14~3_combout\);

-- Location: LCCOMB_X70_Y52_N30
\Unit1|U2|Mux14~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux14~6_combout\ = (\Unit0|U0|RFr1a_ctrl\(0) & ((\Unit0|U0|RFr1a_ctrl\(1)) # ((\Unit1|U2|Mux14~3_combout\)))) # (!\Unit0|U0|RFr1a_ctrl\(0) & (!\Unit0|U0|RFr1a_ctrl\(1) & (\Unit1|U2|Mux14~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(0),
	datab => \Unit0|U0|RFr1a_ctrl\(1),
	datac => \Unit1|U2|Mux14~5_combout\,
	datad => \Unit1|U2|Mux14~3_combout\,
	combout => \Unit1|U2|Mux14~6_combout\);

-- Location: FF_X65_Y52_N27
\Unit1|U2|tmp_rf[2][1]\ : dffeas
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
	ena => \Unit1|U2|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[2][1]~q\);

-- Location: LCCOMB_X65_Y52_N26
\Unit1|U2|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux14~0_combout\ = (\Unit0|U0|RFr1a_ctrl\(2) & (((\Unit0|U0|RFr1a_ctrl\(3))))) # (!\Unit0|U0|RFr1a_ctrl\(2) & ((\Unit0|U0|RFr1a_ctrl\(3) & (\Unit1|U2|tmp_rf[10][1]~q\)) # (!\Unit0|U0|RFr1a_ctrl\(3) & ((\Unit1|U2|tmp_rf[2][1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[10][1]~q\,
	datab => \Unit0|U0|RFr1a_ctrl\(2),
	datac => \Unit1|U2|tmp_rf[2][1]~q\,
	datad => \Unit0|U0|RFr1a_ctrl\(3),
	combout => \Unit1|U2|Mux14~0_combout\);

-- Location: LCCOMB_X62_Y52_N22
\Unit1|U2|Mux14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux14~1_combout\ = (\Unit0|U0|RFr1a_ctrl\(2) & ((\Unit1|U2|Mux14~0_combout\ & (\Unit1|U2|tmp_rf[14][1]~q\)) # (!\Unit1|U2|Mux14~0_combout\ & ((\Unit1|U2|tmp_rf[6][1]~q\))))) # (!\Unit0|U0|RFr1a_ctrl\(2) & (((\Unit1|U2|Mux14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(2),
	datab => \Unit1|U2|tmp_rf[14][1]~q\,
	datac => \Unit1|U2|tmp_rf[6][1]~q\,
	datad => \Unit1|U2|Mux14~0_combout\,
	combout => \Unit1|U2|Mux14~1_combout\);

-- Location: LCCOMB_X70_Y52_N8
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

-- Location: LCCOMB_X70_Y52_N24
\Unit1|U2|RFr1[1]~_Duplicate_1feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|RFr1[1]~_Duplicate_1feeder_combout\ = \Unit1|U2|Mux14~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Unit1|U2|Mux14~9_combout\,
	combout => \Unit1|U2|RFr1[1]~_Duplicate_1feeder_combout\);

-- Location: FF_X70_Y52_N25
\Unit1|U2|RFr1[1]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|RFr1[1]~_Duplicate_1feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit0|U0|RFr1e_ctrl~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|RFr1[1]~_Duplicate_1_q\);

-- Location: LCCOMB_X65_Y49_N0
\Unit0|U3|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U3|Mux14~0_combout\ = (\Unit0|U0|Ms_ctrl\(1) & (((\Unit1|U2|RFr1[1]~_Duplicate_1_q\ & !\Unit0|U0|Ms_ctrl\(0))))) # (!\Unit0|U0|Ms_ctrl\(1) & ((\Unit0|U1|tmp_PC\(1)) # ((\Unit0|U0|Ms_ctrl\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U1|tmp_PC\(1),
	datab => \Unit1|U2|RFr1[1]~_Duplicate_1_q\,
	datac => \Unit0|U0|Ms_ctrl\(1),
	datad => \Unit0|U0|Ms_ctrl\(0),
	combout => \Unit0|U3|Mux14~0_combout\);

-- Location: LCCOMB_X65_Y49_N26
\Unit0|U3|Mux14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U3|Mux14~1_combout\ = (\Unit0|U0|Ms_ctrl\(0) & ((\Unit0|U3|Mux14~0_combout\ & (\Unit0|U2|IRout\(9))) # (!\Unit0|U3|Mux14~0_combout\ & ((\Unit0|U2|dir_addr\(1)))))) # (!\Unit0|U0|Ms_ctrl\(0) & (\Unit0|U3|Mux14~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|Ms_ctrl\(0),
	datab => \Unit0|U3|Mux14~0_combout\,
	datac => \Unit0|U2|IRout\(9),
	datad => \Unit0|U2|dir_addr\(1),
	combout => \Unit0|U3|Mux14~1_combout\);

-- Location: M9K_X64_Y52_N0
\Unit2|altsyncram_component|auto_generated|ram_block1a6\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007E0105420100033",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "m9k_mem.hex",
	init_file_layout => "port_a",
	logical_ram_name => "MainMemory:Unit2|altsyncram:altsyncram_component|altsyncram_fos3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \Unit0|U0|Mwe_ctrl~q\,
	portare => \Unit0|U0|Mre_ctrl~q\,
	clk0 => \cpu_clk~inputclkctrl_outclk\,
	portadatain => \Unit2|altsyncram_component|auto_generated|ram_block1a6_PORTADATAIN_bus\,
	portaaddr => \Unit2|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \Unit2|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\);

-- Location: LCCOMB_X65_Y50_N30
\Unit0|U2|dir_addr[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U2|dir_addr\(6) = (GLOBAL(\Unit0|U0|IRld_ctrl~clkctrl_outclk\) & ((\Unit2|altsyncram_component|auto_generated|q_a\(6)))) # (!GLOBAL(\Unit0|U0|IRld_ctrl~clkctrl_outclk\) & (\Unit0|U2|dir_addr\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U2|dir_addr\(6),
	datac => \Unit0|U0|IRld_ctrl~clkctrl_outclk\,
	datad => \Unit2|altsyncram_component|auto_generated|q_a\(6),
	combout => \Unit0|U2|dir_addr\(6));

-- Location: LCCOMB_X65_Y50_N6
\Unit1|U1|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U1|Mux9~0_combout\ = (\Unit0|U0|RFs_ctrl\(1) & ((\Unit0|U0|RFs_ctrl\(0)) # ((\Unit0|U2|dir_addr\(6))))) # (!\Unit0|U0|RFs_ctrl\(1) & (!\Unit0|U0|RFs_ctrl\(0) & ((\Unit1|U3|alu_tmp\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFs_ctrl\(1),
	datab => \Unit0|U0|RFs_ctrl\(0),
	datac => \Unit0|U2|dir_addr\(6),
	datad => \Unit1|U3|alu_tmp\(6),
	combout => \Unit1|U1|Mux9~0_combout\);

-- Location: LCCOMB_X65_Y50_N16
\Unit1|U1|Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U1|Mux9~1_combout\ = (\Unit1|U1|Mux9~0_combout\) # ((\Unit2|altsyncram_component|auto_generated|q_a\(6) & \Unit0|U0|RFs_ctrl\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Unit2|altsyncram_component|auto_generated|q_a\(6),
	datac => \Unit0|U0|RFs_ctrl\(0),
	datad => \Unit1|U1|Mux9~0_combout\,
	combout => \Unit1|U1|Mux9~1_combout\);

-- Location: FF_X68_Y50_N15
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
	ena => \Unit1|U2|Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[11][6]~q\);

-- Location: LCCOMB_X68_Y51_N26
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

-- Location: FF_X68_Y51_N27
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
	ena => \Unit1|U2|Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[8][6]~q\);

-- Location: LCCOMB_X65_Y51_N30
\Unit1|U2|Mux25~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux25~2_combout\ = (\Unit0|U0|RFr2a_ctrl\(1) & ((\Unit1|U2|tmp_rf[10][6]~q\) # ((\Unit0|U0|RFr2a_ctrl\(0))))) # (!\Unit0|U0|RFr2a_ctrl\(1) & (((\Unit1|U2|tmp_rf[8][6]~q\ & !\Unit0|U0|RFr2a_ctrl\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[10][6]~q\,
	datab => \Unit1|U2|tmp_rf[8][6]~q\,
	datac => \Unit0|U0|RFr2a_ctrl\(1),
	datad => \Unit0|U0|RFr2a_ctrl\(0),
	combout => \Unit1|U2|Mux25~2_combout\);

-- Location: LCCOMB_X68_Y50_N24
\Unit1|U2|Mux25~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux25~3_combout\ = (\Unit0|U0|RFr2a_ctrl\(0) & ((\Unit1|U2|Mux25~2_combout\ & (\Unit1|U2|tmp_rf[11][6]~q\)) # (!\Unit1|U2|Mux25~2_combout\ & ((\Unit1|U2|tmp_rf[9][6]~q\))))) # (!\Unit0|U0|RFr2a_ctrl\(0) & (((\Unit1|U2|Mux25~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr2a_ctrl\(0),
	datab => \Unit1|U2|tmp_rf[11][6]~q\,
	datac => \Unit1|U2|tmp_rf[9][6]~q\,
	datad => \Unit1|U2|Mux25~2_combout\,
	combout => \Unit1|U2|Mux25~3_combout\);

-- Location: LCCOMB_X67_Y54_N10
\Unit1|U2|Mux25~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux25~4_combout\ = (\Unit0|U0|RFr2a_ctrl\(1) & ((\Unit1|U2|tmp_rf[2][6]~q\) # ((\Unit0|U0|RFr2a_ctrl\(0))))) # (!\Unit0|U0|RFr2a_ctrl\(1) & (((!\Unit0|U0|RFr2a_ctrl\(0) & \Unit1|U2|tmp_rf[0][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr2a_ctrl\(1),
	datab => \Unit1|U2|tmp_rf[2][6]~q\,
	datac => \Unit0|U0|RFr2a_ctrl\(0),
	datad => \Unit1|U2|tmp_rf[0][6]~q\,
	combout => \Unit1|U2|Mux25~4_combout\);

-- Location: LCCOMB_X68_Y53_N30
\Unit1|U2|Mux25~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux25~5_combout\ = (\Unit0|U0|RFr2a_ctrl\(0) & ((\Unit1|U2|Mux25~4_combout\ & ((\Unit1|U2|tmp_rf[3][6]~q\))) # (!\Unit1|U2|Mux25~4_combout\ & (\Unit1|U2|tmp_rf[1][6]~q\)))) # (!\Unit0|U0|RFr2a_ctrl\(0) & (((\Unit1|U2|Mux25~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr2a_ctrl\(0),
	datab => \Unit1|U2|tmp_rf[1][6]~q\,
	datac => \Unit1|U2|tmp_rf[3][6]~q\,
	datad => \Unit1|U2|Mux25~4_combout\,
	combout => \Unit1|U2|Mux25~5_combout\);

-- Location: LCCOMB_X69_Y52_N14
\Unit1|U2|Mux25~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux25~6_combout\ = (\Unit0|U0|RFr2a_ctrl\(3) & ((\Unit0|U0|RFr2a_ctrl\(2)) # ((\Unit1|U2|Mux25~3_combout\)))) # (!\Unit0|U0|RFr2a_ctrl\(3) & (!\Unit0|U0|RFr2a_ctrl\(2) & ((\Unit1|U2|Mux25~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr2a_ctrl\(3),
	datab => \Unit0|U0|RFr2a_ctrl\(2),
	datac => \Unit1|U2|Mux25~3_combout\,
	datad => \Unit1|U2|Mux25~5_combout\,
	combout => \Unit1|U2|Mux25~6_combout\);

-- Location: FF_X62_Y52_N25
\Unit1|U2|tmp_rf[6][6]\ : dffeas
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
	ena => \Unit1|U2|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[6][6]~q\);

-- Location: FF_X62_Y51_N21
\Unit1|U2|tmp_rf[7][6]\ : dffeas
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
	ena => \Unit1|U2|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[7][6]~q\);

-- Location: FF_X62_Y51_N17
\Unit1|U2|tmp_rf[5][6]\ : dffeas
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
	ena => \Unit1|U2|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[5][6]~q\);

-- Location: LCCOMB_X62_Y53_N0
\Unit1|U2|tmp_rf[4][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[4][6]~feeder_combout\ = \Unit1|U1|Mux9~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|U1|Mux9~1_combout\,
	combout => \Unit1|U2|tmp_rf[4][6]~feeder_combout\);

-- Location: FF_X62_Y53_N1
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
	ena => \Unit1|U2|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[4][6]~q\);

-- Location: LCCOMB_X62_Y51_N16
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

-- Location: LCCOMB_X62_Y51_N20
\Unit1|U2|Mux25~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux25~1_combout\ = (\Unit0|U0|RFr2a_ctrl\(1) & ((\Unit1|U2|Mux25~0_combout\ & ((\Unit1|U2|tmp_rf[7][6]~q\))) # (!\Unit1|U2|Mux25~0_combout\ & (\Unit1|U2|tmp_rf[6][6]~q\)))) # (!\Unit0|U0|RFr2a_ctrl\(1) & (((\Unit1|U2|Mux25~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr2a_ctrl\(1),
	datab => \Unit1|U2|tmp_rf[6][6]~q\,
	datac => \Unit1|U2|tmp_rf[7][6]~q\,
	datad => \Unit1|U2|Mux25~0_combout\,
	combout => \Unit1|U2|Mux25~1_combout\);

-- Location: LCCOMB_X70_Y50_N2
\Unit1|U2|Mux25~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux25~9_combout\ = (\Unit1|U2|Mux25~6_combout\ & ((\Unit1|U2|Mux25~8_combout\) # ((!\Unit0|U0|RFr2a_ctrl\(2))))) # (!\Unit1|U2|Mux25~6_combout\ & (((\Unit0|U0|RFr2a_ctrl\(2) & \Unit1|U2|Mux25~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|Mux25~8_combout\,
	datab => \Unit1|U2|Mux25~6_combout\,
	datac => \Unit0|U0|RFr2a_ctrl\(2),
	datad => \Unit1|U2|Mux25~1_combout\,
	combout => \Unit1|U2|Mux25~9_combout\);

-- Location: FF_X70_Y50_N3
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

-- Location: LCCOMB_X70_Y50_N0
\Unit1|U3|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|Add0~20_combout\ = \Unit1|U2|RFr2\(6) $ (\Unit0|U0|ALUs_ctrl\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Unit1|U2|RFr2\(6),
	datad => \Unit0|U0|ALUs_ctrl\(0),
	combout => \Unit1|U3|Add0~20_combout\);

-- Location: LCCOMB_X72_Y50_N26
\Unit1|U3|mult_result[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|mult_result\(6) = (GLOBAL(\Unit1|U3|Mux1~0clkctrl_outclk\) & ((\Unit1|U3|Mult0|auto_generated|mac_out2~DATAOUT6\))) # (!GLOBAL(\Unit1|U3|Mux1~0clkctrl_outclk\) & (\Unit1|U3|mult_result\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U3|mult_result\(6),
	datac => \Unit1|U3|Mux1~0clkctrl_outclk\,
	datad => \Unit1|U3|Mult0|auto_generated|mac_out2~DATAOUT6\,
	combout => \Unit1|U3|mult_result\(6));

-- Location: LCCOMB_X69_Y50_N14
\Unit1|U3|Mux23~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|Mux23~1_combout\ = (\Unit1|U3|Mux23~0_combout\ & (((\Unit1|U3|mult_result\(6))) # (!\Unit1|U3|Mux17~0_combout\))) # (!\Unit1|U3|Mux23~0_combout\ & (\Unit1|U3|Mux17~0_combout\ & (\Unit1|U3|Add0~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U3|Mux23~0_combout\,
	datab => \Unit1|U3|Mux17~0_combout\,
	datac => \Unit1|U3|Add0~21_combout\,
	datad => \Unit1|U3|mult_result\(6),
	combout => \Unit1|U3|Mux23~1_combout\);

-- Location: LCCOMB_X62_Y50_N26
\Unit1|U3|alu_tmp[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|alu_tmp\(6) = (GLOBAL(\Unit1|U3|Mux33~0clkctrl_outclk\) & ((\Unit1|U3|Mux23~1_combout\))) # (!GLOBAL(\Unit1|U3|Mux33~0clkctrl_outclk\) & (\Unit1|U3|alu_tmp\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U3|alu_tmp\(6),
	datac => \Unit1|U3|Mux33~0clkctrl_outclk\,
	datad => \Unit1|U3|Mux23~1_combout\,
	combout => \Unit1|U3|alu_tmp\(6));

-- Location: LCCOMB_X63_Y52_N6
\Unit0|U2|dir_addr[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U2|dir_addr\(7) = (GLOBAL(\Unit0|U0|IRld_ctrl~clkctrl_outclk\) & ((\Unit2|altsyncram_component|auto_generated|q_a\(7)))) # (!GLOBAL(\Unit0|U0|IRld_ctrl~clkctrl_outclk\) & (\Unit0|U2|dir_addr\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U2|dir_addr\(7),
	datab => \Unit0|U0|IRld_ctrl~clkctrl_outclk\,
	datad => \Unit2|altsyncram_component|auto_generated|q_a\(7),
	combout => \Unit0|U2|dir_addr\(7));

-- Location: LCCOMB_X65_Y53_N6
\Unit0|U0|Selector75~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|Selector75~0_combout\ = (\Unit0|U0|WideOr0~0_combout\ & ((\Unit0|U2|dir_addr\(7)))) # (!\Unit0|U0|WideOr0~0_combout\ & (\Unit0|U2|dir_addr\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U2|dir_addr\(3),
	datac => \Unit0|U2|dir_addr\(7),
	datad => \Unit0|U0|WideOr0~0_combout\,
	combout => \Unit0|U0|Selector75~0_combout\);

-- Location: FF_X65_Y53_N7
\Unit0|U0|RFr2a_ctrl[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit0|U0|Selector75~0_combout\,
	ena => \Unit0|U0|RFr2a_ctrl[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U0|RFr2a_ctrl\(3));

-- Location: LCCOMB_X69_Y53_N8
\Unit1|U2|tmp_rf[13][8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[13][8]~feeder_combout\ = \Unit1|U1|Mux7~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|U1|Mux7~1_combout\,
	combout => \Unit1|U2|tmp_rf[13][8]~feeder_combout\);

-- Location: FF_X69_Y53_N9
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
	ena => \Unit1|U2|Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[13][8]~q\);

-- Location: LCCOMB_X67_Y54_N22
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

-- Location: LCCOMB_X69_Y53_N30
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

-- Location: LCCOMB_X68_Y53_N8
\Unit1|U2|Mux23~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux23~4_combout\ = (\Unit0|U0|RFr2a_ctrl\(0) & ((\Unit1|U2|tmp_rf[1][8]~q\) # ((\Unit0|U0|RFr2a_ctrl\(1))))) # (!\Unit0|U0|RFr2a_ctrl\(0) & (((!\Unit0|U0|RFr2a_ctrl\(1) & \Unit1|U2|tmp_rf[0][8]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr2a_ctrl\(0),
	datab => \Unit1|U2|tmp_rf[1][8]~q\,
	datac => \Unit0|U0|RFr2a_ctrl\(1),
	datad => \Unit1|U2|tmp_rf[0][8]~q\,
	combout => \Unit1|U2|Mux23~4_combout\);

-- Location: LCCOMB_X67_Y54_N28
\Unit1|U2|Mux23~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux23~5_combout\ = (\Unit0|U0|RFr2a_ctrl\(1) & ((\Unit1|U2|Mux23~4_combout\ & ((\Unit1|U2|tmp_rf[3][8]~q\))) # (!\Unit1|U2|Mux23~4_combout\ & (\Unit1|U2|tmp_rf[2][8]~q\)))) # (!\Unit0|U0|RFr2a_ctrl\(1) & (((\Unit1|U2|Mux23~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr2a_ctrl\(1),
	datab => \Unit1|U2|tmp_rf[2][8]~q\,
	datac => \Unit1|U2|tmp_rf[3][8]~q\,
	datad => \Unit1|U2|Mux23~4_combout\,
	combout => \Unit1|U2|Mux23~5_combout\);

-- Location: LCCOMB_X67_Y49_N12
\Unit1|U2|Mux23~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux23~6_combout\ = (\Unit0|U0|RFr2a_ctrl\(3) & (((\Unit0|U0|RFr2a_ctrl\(2))))) # (!\Unit0|U0|RFr2a_ctrl\(3) & ((\Unit0|U0|RFr2a_ctrl\(2) & (\Unit1|U2|Mux23~3_combout\)) # (!\Unit0|U0|RFr2a_ctrl\(2) & ((\Unit1|U2|Mux23~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|Mux23~3_combout\,
	datab => \Unit0|U0|RFr2a_ctrl\(3),
	datac => \Unit0|U0|RFr2a_ctrl\(2),
	datad => \Unit1|U2|Mux23~5_combout\,
	combout => \Unit1|U2|Mux23~6_combout\);

-- Location: LCCOMB_X67_Y49_N18
\Unit1|U2|Mux23~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux23~9_combout\ = (\Unit0|U0|RFr2a_ctrl\(3) & ((\Unit1|U2|Mux23~6_combout\ & ((\Unit1|U2|Mux23~8_combout\))) # (!\Unit1|U2|Mux23~6_combout\ & (\Unit1|U2|Mux23~1_combout\)))) # (!\Unit0|U0|RFr2a_ctrl\(3) & (((\Unit1|U2|Mux23~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|Mux23~1_combout\,
	datab => \Unit0|U0|RFr2a_ctrl\(3),
	datac => \Unit1|U2|Mux23~8_combout\,
	datad => \Unit1|U2|Mux23~6_combout\,
	combout => \Unit1|U2|Mux23~9_combout\);

-- Location: FF_X67_Y49_N19
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

-- Location: LCCOMB_X69_Y49_N28
\Unit1|U3|Mux25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|Mux25~0_combout\ = (\Unit1|U3|Mux17~0_combout\ & (((\Unit1|U3|Mux17~1_combout\)))) # (!\Unit1|U3|Mux17~0_combout\ & ((\Unit1|U3|Mux17~1_combout\ & ((\Unit1|U2|RFr2\(8)))) # (!\Unit1|U3|Mux17~1_combout\ & (\Unit1|U2|RFr1[8]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|RFr1[8]~_Duplicate_1_q\,
	datab => \Unit1|U2|RFr2\(8),
	datac => \Unit1|U3|Mux17~0_combout\,
	datad => \Unit1|U3|Mux17~1_combout\,
	combout => \Unit1|U3|Mux25~0_combout\);

-- Location: LCCOMB_X65_Y49_N28
\Unit1|U3|mult_result[8]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|mult_result\(8) = (GLOBAL(\Unit1|U3|Mux1~0clkctrl_outclk\) & ((\Unit1|U3|Mult0|auto_generated|mac_out2~DATAOUT8\))) # (!GLOBAL(\Unit1|U3|Mux1~0clkctrl_outclk\) & (\Unit1|U3|mult_result\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Unit1|U3|mult_result\(8),
	datac => \Unit1|U3|Mult0|auto_generated|mac_out2~DATAOUT8\,
	datad => \Unit1|U3|Mux1~0clkctrl_outclk\,
	combout => \Unit1|U3|mult_result\(8));

-- Location: LCCOMB_X69_Y49_N22
\Unit1|U3|Mux25~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|Mux25~1_combout\ = (\Unit1|U3|Mux17~0_combout\ & ((\Unit1|U3|Mux25~0_combout\ & ((\Unit1|U3|mult_result\(8)))) # (!\Unit1|U3|Mux25~0_combout\ & (\Unit1|U3|Add0~27_combout\)))) # (!\Unit1|U3|Mux17~0_combout\ & (\Unit1|U3|Mux25~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U3|Mux17~0_combout\,
	datab => \Unit1|U3|Mux25~0_combout\,
	datac => \Unit1|U3|Add0~27_combout\,
	datad => \Unit1|U3|mult_result\(8),
	combout => \Unit1|U3|Mux25~1_combout\);

-- Location: LCCOMB_X63_Y49_N18
\Unit1|U3|alu_tmp[8]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|alu_tmp\(8) = (GLOBAL(\Unit1|U3|Mux33~0clkctrl_outclk\) & ((\Unit1|U3|Mux25~1_combout\))) # (!GLOBAL(\Unit1|U3|Mux33~0clkctrl_outclk\) & (\Unit1|U3|alu_tmp\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Unit1|U3|alu_tmp\(8),
	datac => \Unit1|U3|Mux25~1_combout\,
	datad => \Unit1|U3|Mux33~0clkctrl_outclk\,
	combout => \Unit1|U3|alu_tmp\(8));

-- Location: LCCOMB_X63_Y49_N6
\Unit0|U2|IRout[8]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U2|IRout\(8) = (GLOBAL(\Unit0|U0|IRld_ctrl~clkctrl_outclk\) & ((\Unit2|altsyncram_component|auto_generated|q_a\(8)))) # (!GLOBAL(\Unit0|U0|IRld_ctrl~clkctrl_outclk\) & (\Unit0|U2|IRout\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U2|IRout\(8),
	datac => \Unit0|U0|IRld_ctrl~clkctrl_outclk\,
	datad => \Unit2|altsyncram_component|auto_generated|q_a\(8),
	combout => \Unit0|U2|IRout\(8));

-- Location: LCCOMB_X65_Y50_N0
\Unit0|U3|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U3|Mux15~0_combout\ = (\Unit0|U0|Ms_ctrl\(1) & ((\Unit0|U0|Ms_ctrl\(0) & (\Unit0|U2|dir_addr\(0))) # (!\Unit0|U0|Ms_ctrl\(0) & ((\Unit1|U2|RFr1[0]~_Duplicate_1_q\))))) # (!\Unit0|U0|Ms_ctrl\(1) & (((\Unit0|U0|Ms_ctrl\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U2|dir_addr\(0),
	datab => \Unit0|U0|Ms_ctrl\(1),
	datac => \Unit1|U2|RFr1[0]~_Duplicate_1_q\,
	datad => \Unit0|U0|Ms_ctrl\(0),
	combout => \Unit0|U3|Mux15~0_combout\);

-- Location: LCCOMB_X65_Y50_N18
\Unit0|U3|Mux15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U3|Mux15~1_combout\ = (\Unit0|U0|Ms_ctrl\(1) & (((\Unit0|U3|Mux15~0_combout\)))) # (!\Unit0|U0|Ms_ctrl\(1) & ((\Unit0|U3|Mux15~0_combout\ & ((\Unit0|U2|IRout\(8)))) # (!\Unit0|U3|Mux15~0_combout\ & (\Unit0|U1|tmp_PC\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U1|tmp_PC\(0),
	datab => \Unit0|U0|Ms_ctrl\(1),
	datac => \Unit0|U2|IRout\(8),
	datad => \Unit0|U3|Mux15~0_combout\,
	combout => \Unit0|U3|Mux15~1_combout\);

-- Location: M9K_X64_Y53_N0
\Unit2|altsyncram_component|auto_generated|ram_block1a10\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000F4A690556A540411",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "m9k_mem.hex",
	init_file_layout => "port_a",
	logical_ram_name => "MainMemory:Unit2|altsyncram:altsyncram_component|altsyncram_fos3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 10,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \Unit0|U0|Mwe_ctrl~q\,
	portare => \Unit0|U0|Mre_ctrl~q\,
	clk0 => \cpu_clk~inputclkctrl_outclk\,
	portadatain => \Unit2|altsyncram_component|auto_generated|ram_block1a10_PORTADATAIN_bus\,
	portaaddr => \Unit2|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \Unit2|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\);

-- Location: LCCOMB_X63_Y50_N16
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

-- Location: LCCOMB_X66_Y48_N12
\Unit0|U0|Selector63~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|Selector63~0_combout\ = (\Unit0|U0|WideOr57~0_combout\ & (\Unit0|U0|WideOr58~combout\ & ((\Unit0|U2|IRout\(10))))) # (!\Unit0|U0|WideOr57~0_combout\ & ((\Unit0|U0|RFwa_ctrl\(2)) # ((\Unit0|U0|WideOr58~combout\ & \Unit0|U2|IRout\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|WideOr57~0_combout\,
	datab => \Unit0|U0|WideOr58~combout\,
	datac => \Unit0|U0|RFwa_ctrl\(2),
	datad => \Unit0|U2|IRout\(10),
	combout => \Unit0|U0|Selector63~0_combout\);

-- Location: FF_X66_Y48_N13
\Unit0|U0|RFwa_ctrl[2]\ : dffeas
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
	q => \Unit0|U0|RFwa_ctrl\(2));

-- Location: LCCOMB_X66_Y48_N18
\Unit1|U2|Decoder0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Decoder0~14_combout\ = (\Unit0|U0|RFwa_ctrl\(1) & (\Unit0|U0|RFwa_ctrl\(0) & (\Unit0|U0|RFwe_ctrl~q\ & \Unit0|U0|RFwa_ctrl\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFwa_ctrl\(1),
	datab => \Unit0|U0|RFwa_ctrl\(0),
	datac => \Unit0|U0|RFwe_ctrl~q\,
	datad => \Unit0|U0|RFwa_ctrl\(2),
	combout => \Unit1|U2|Decoder0~14_combout\);

-- Location: LCCOMB_X66_Y49_N4
\Unit1|U2|Decoder0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Decoder0~23_combout\ = (\Unit0|U0|RFwa_ctrl\(3) & \Unit1|U2|Decoder0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFwa_ctrl\(3),
	datad => \Unit1|U2|Decoder0~14_combout\,
	combout => \Unit1|U2|Decoder0~23_combout\);

-- Location: FF_X63_Y50_N29
\Unit1|U2|tmp_rf[15][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U1|Mux13~1_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[15][2]~q\);

-- Location: LCCOMB_X69_Y53_N2
\Unit1|U2|Mux29~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux29~8_combout\ = (\Unit1|U2|Mux29~7_combout\ & (((\Unit1|U2|tmp_rf[15][2]~q\) # (!\Unit0|U0|RFr2a_ctrl\(1))))) # (!\Unit1|U2|Mux29~7_combout\ & (\Unit1|U2|tmp_rf[14][2]~q\ & ((\Unit0|U0|RFr2a_ctrl\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|Mux29~7_combout\,
	datab => \Unit1|U2|tmp_rf[14][2]~q\,
	datac => \Unit1|U2|tmp_rf[15][2]~q\,
	datad => \Unit0|U0|RFr2a_ctrl\(1),
	combout => \Unit1|U2|Mux29~8_combout\);

-- Location: LCCOMB_X68_Y50_N26
\Unit1|U2|tmp_rf[9][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[9][2]~feeder_combout\ = \Unit1|U1|Mux13~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|U1|Mux13~1_combout\,
	combout => \Unit1|U2|tmp_rf[9][2]~feeder_combout\);

-- Location: FF_X68_Y50_N27
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
	ena => \Unit1|U2|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[9][2]~q\);

-- Location: LCCOMB_X65_Y51_N4
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

-- Location: FF_X65_Y51_N5
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
	ena => \Unit1|U2|Decoder0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[10][2]~q\);

-- Location: LCCOMB_X65_Y51_N26
\Unit1|U2|Mux29~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux29~2_combout\ = (\Unit0|U0|RFr2a_ctrl\(1) & (((\Unit1|U2|tmp_rf[10][2]~q\) # (\Unit0|U0|RFr2a_ctrl\(0))))) # (!\Unit0|U0|RFr2a_ctrl\(1) & (\Unit1|U2|tmp_rf[8][2]~q\ & ((!\Unit0|U0|RFr2a_ctrl\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[8][2]~q\,
	datab => \Unit1|U2|tmp_rf[10][2]~q\,
	datac => \Unit0|U0|RFr2a_ctrl\(1),
	datad => \Unit0|U0|RFr2a_ctrl\(0),
	combout => \Unit1|U2|Mux29~2_combout\);

-- Location: LCCOMB_X68_Y50_N30
\Unit1|U2|Mux29~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux29~3_combout\ = (\Unit0|U0|RFr2a_ctrl\(0) & ((\Unit1|U2|Mux29~2_combout\ & (\Unit1|U2|tmp_rf[11][2]~q\)) # (!\Unit1|U2|Mux29~2_combout\ & ((\Unit1|U2|tmp_rf[9][2]~q\))))) # (!\Unit0|U0|RFr2a_ctrl\(0) & (((\Unit1|U2|Mux29~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr2a_ctrl\(0),
	datab => \Unit1|U2|tmp_rf[11][2]~q\,
	datac => \Unit1|U2|tmp_rf[9][2]~q\,
	datad => \Unit1|U2|Mux29~2_combout\,
	combout => \Unit1|U2|Mux29~3_combout\);

-- Location: LCCOMB_X67_Y54_N0
\Unit1|U2|Mux29~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux29~4_combout\ = (\Unit0|U0|RFr2a_ctrl\(1) & ((\Unit1|U2|tmp_rf[2][2]~q\) # ((\Unit0|U0|RFr2a_ctrl\(0))))) # (!\Unit0|U0|RFr2a_ctrl\(1) & (((!\Unit0|U0|RFr2a_ctrl\(0) & \Unit1|U2|tmp_rf[0][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr2a_ctrl\(1),
	datab => \Unit1|U2|tmp_rf[2][2]~q\,
	datac => \Unit0|U0|RFr2a_ctrl\(0),
	datad => \Unit1|U2|tmp_rf[0][2]~q\,
	combout => \Unit1|U2|Mux29~4_combout\);

-- Location: LCCOMB_X62_Y52_N0
\Unit1|U2|Mux29~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux29~5_combout\ = (\Unit0|U0|RFr2a_ctrl\(0) & ((\Unit1|U2|Mux29~4_combout\ & ((\Unit1|U2|tmp_rf[3][2]~q\))) # (!\Unit1|U2|Mux29~4_combout\ & (\Unit1|U2|tmp_rf[1][2]~q\)))) # (!\Unit0|U0|RFr2a_ctrl\(0) & (((\Unit1|U2|Mux29~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[1][2]~q\,
	datab => \Unit1|U2|tmp_rf[3][2]~q\,
	datac => \Unit0|U0|RFr2a_ctrl\(0),
	datad => \Unit1|U2|Mux29~4_combout\,
	combout => \Unit1|U2|Mux29~5_combout\);

-- Location: LCCOMB_X62_Y52_N18
\Unit1|U2|Mux29~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux29~6_combout\ = (\Unit0|U0|RFr2a_ctrl\(3) & ((\Unit0|U0|RFr2a_ctrl\(2)) # ((\Unit1|U2|Mux29~3_combout\)))) # (!\Unit0|U0|RFr2a_ctrl\(3) & (!\Unit0|U0|RFr2a_ctrl\(2) & ((\Unit1|U2|Mux29~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr2a_ctrl\(3),
	datab => \Unit0|U0|RFr2a_ctrl\(2),
	datac => \Unit1|U2|Mux29~3_combout\,
	datad => \Unit1|U2|Mux29~5_combout\,
	combout => \Unit1|U2|Mux29~6_combout\);

-- Location: LCCOMB_X70_Y50_N24
\Unit1|U2|Mux29~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux29~9_combout\ = (\Unit0|U0|RFr2a_ctrl\(2) & ((\Unit1|U2|Mux29~6_combout\ & ((\Unit1|U2|Mux29~8_combout\))) # (!\Unit1|U2|Mux29~6_combout\ & (\Unit1|U2|Mux29~1_combout\)))) # (!\Unit0|U0|RFr2a_ctrl\(2) & (((\Unit1|U2|Mux29~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|Mux29~1_combout\,
	datab => \Unit1|U2|Mux29~8_combout\,
	datac => \Unit0|U0|RFr2a_ctrl\(2),
	datad => \Unit1|U2|Mux29~6_combout\,
	combout => \Unit1|U2|Mux29~9_combout\);

-- Location: FF_X70_Y50_N25
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

-- Location: LCCOMB_X69_Y50_N2
\Unit1|U3|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|Add0~8_combout\ = \Unit1|U2|RFr2\(2) $ (\Unit0|U0|ALUs_ctrl\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Unit1|U2|RFr2\(2),
	datad => \Unit0|U0|ALUs_ctrl\(0),
	combout => \Unit1|U3|Add0~8_combout\);

-- Location: LCCOMB_X70_Y50_N12
\Unit1|U3|mult_result[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|mult_result\(2) = (GLOBAL(\Unit1|U3|Mux1~0clkctrl_outclk\) & ((\Unit1|U3|Mult0|auto_generated|mac_out2~DATAOUT2\))) # (!GLOBAL(\Unit1|U3|Mux1~0clkctrl_outclk\) & (\Unit1|U3|mult_result\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U3|mult_result\(2),
	datac => \Unit1|U3|Mult0|auto_generated|mac_out2~DATAOUT2\,
	datad => \Unit1|U3|Mux1~0clkctrl_outclk\,
	combout => \Unit1|U3|mult_result\(2));

-- Location: LCCOMB_X70_Y50_N8
\Unit1|U3|Mux19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|Mux19~1_combout\ = (\Unit1|U3|Mux19~0_combout\ & (((\Unit1|U3|mult_result\(2)) # (!\Unit1|U3|Mux17~0_combout\)))) # (!\Unit1|U3|Mux19~0_combout\ & (\Unit1|U3|Add0~9_combout\ & (\Unit1|U3|Mux17~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U3|Mux19~0_combout\,
	datab => \Unit1|U3|Add0~9_combout\,
	datac => \Unit1|U3|Mux17~0_combout\,
	datad => \Unit1|U3|mult_result\(2),
	combout => \Unit1|U3|Mux19~1_combout\);

-- Location: LCCOMB_X63_Y50_N14
\Unit1|U3|alu_tmp[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|alu_tmp\(2) = (GLOBAL(\Unit1|U3|Mux33~0clkctrl_outclk\) & ((\Unit1|U3|Mux19~1_combout\))) # (!GLOBAL(\Unit1|U3|Mux33~0clkctrl_outclk\) & (\Unit1|U3|alu_tmp\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Unit1|U3|alu_tmp\(2),
	datac => \Unit1|U3|Mux19~1_combout\,
	datad => \Unit1|U3|Mux33~0clkctrl_outclk\,
	combout => \Unit1|U3|alu_tmp\(2));

-- Location: LCCOMB_X63_Y50_N6
\Unit0|U2|dir_addr[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U2|dir_addr\(2) = (GLOBAL(\Unit0|U0|IRld_ctrl~clkctrl_outclk\) & ((\Unit2|altsyncram_component|auto_generated|q_a\(2)))) # (!GLOBAL(\Unit0|U0|IRld_ctrl~clkctrl_outclk\) & (\Unit0|U2|dir_addr\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U2|dir_addr\(2),
	datac => \Unit0|U0|IRld_ctrl~clkctrl_outclk\,
	datad => \Unit2|altsyncram_component|auto_generated|q_a\(2),
	combout => \Unit0|U2|dir_addr\(2));

-- Location: LCCOMB_X65_Y53_N12
\Unit0|U0|Selector76~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|Selector76~0_combout\ = (\Unit0|U0|WideOr0~0_combout\ & (\Unit0|U2|dir_addr\(6))) # (!\Unit0|U0|WideOr0~0_combout\ & ((\Unit0|U2|dir_addr\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U2|dir_addr\(6),
	datac => \Unit0|U2|dir_addr\(2),
	datad => \Unit0|U0|WideOr0~0_combout\,
	combout => \Unit0|U0|Selector76~0_combout\);

-- Location: FF_X65_Y53_N13
\Unit0|U0|RFr2a_ctrl[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit0|U0|Selector76~0_combout\,
	ena => \Unit0|U0|RFr2a_ctrl[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U0|RFr2a_ctrl\(2));

-- Location: FF_X69_Y53_N19
\Unit1|U2|tmp_rf[13][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	asdata => \Unit1|U1|Mux5~1_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|U2|Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[13][10]~q\);

-- Location: FF_X68_Y51_N3
\Unit1|U2|tmp_rf[12][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	asdata => \Unit1|U1|Mux5~1_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|U2|Decoder0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[12][10]~q\);

-- Location: LCCOMB_X69_Y53_N18
\Unit1|U2|Mux21~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux21~7_combout\ = (\Unit0|U0|RFr2a_ctrl\(1) & (\Unit0|U0|RFr2a_ctrl\(0))) # (!\Unit0|U0|RFr2a_ctrl\(1) & ((\Unit0|U0|RFr2a_ctrl\(0) & (\Unit1|U2|tmp_rf[13][10]~q\)) # (!\Unit0|U0|RFr2a_ctrl\(0) & ((\Unit1|U2|tmp_rf[12][10]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr2a_ctrl\(1),
	datab => \Unit0|U0|RFr2a_ctrl\(0),
	datac => \Unit1|U2|tmp_rf[13][10]~q\,
	datad => \Unit1|U2|tmp_rf[12][10]~q\,
	combout => \Unit1|U2|Mux21~7_combout\);

-- Location: LCCOMB_X69_Y51_N16
\Unit1|U2|Mux21~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux21~8_combout\ = (\Unit1|U2|Mux21~7_combout\ & ((\Unit1|U2|tmp_rf[15][10]~q\) # ((!\Unit0|U0|RFr2a_ctrl\(1))))) # (!\Unit1|U2|Mux21~7_combout\ & (((\Unit1|U2|tmp_rf[14][10]~q\ & \Unit0|U0|RFr2a_ctrl\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[15][10]~q\,
	datab => \Unit1|U2|Mux21~7_combout\,
	datac => \Unit1|U2|tmp_rf[14][10]~q\,
	datad => \Unit0|U0|RFr2a_ctrl\(1),
	combout => \Unit1|U2|Mux21~8_combout\);

-- Location: LCCOMB_X68_Y53_N20
\Unit1|U2|tmp_rf[1][10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[1][10]~feeder_combout\ = \Unit1|U1|Mux5~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Unit1|U1|Mux5~1_combout\,
	combout => \Unit1|U2|tmp_rf[1][10]~feeder_combout\);

-- Location: FF_X68_Y53_N21
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
	ena => \Unit1|U2|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[1][10]~q\);

-- Location: FF_X66_Y54_N5
\Unit1|U2|tmp_rf[3][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	asdata => \Unit1|U1|Mux5~1_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|U2|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[3][10]~q\);

-- Location: FF_X66_Y54_N29
\Unit1|U2|tmp_rf[0][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	asdata => \Unit1|U1|Mux5~1_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|U2|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[0][10]~q\);

-- Location: LCCOMB_X67_Y54_N14
\Unit1|U2|Mux21~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux21~4_combout\ = (\Unit0|U0|RFr2a_ctrl\(0) & (((\Unit0|U0|RFr2a_ctrl\(1))))) # (!\Unit0|U0|RFr2a_ctrl\(0) & ((\Unit0|U0|RFr2a_ctrl\(1) & (\Unit1|U2|tmp_rf[2][10]~q\)) # (!\Unit0|U0|RFr2a_ctrl\(1) & ((\Unit1|U2|tmp_rf[0][10]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[2][10]~q\,
	datab => \Unit1|U2|tmp_rf[0][10]~q\,
	datac => \Unit0|U0|RFr2a_ctrl\(0),
	datad => \Unit0|U0|RFr2a_ctrl\(1),
	combout => \Unit1|U2|Mux21~4_combout\);

-- Location: LCCOMB_X68_Y53_N10
\Unit1|U2|Mux21~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux21~5_combout\ = (\Unit0|U0|RFr2a_ctrl\(0) & ((\Unit1|U2|Mux21~4_combout\ & ((\Unit1|U2|tmp_rf[3][10]~q\))) # (!\Unit1|U2|Mux21~4_combout\ & (\Unit1|U2|tmp_rf[1][10]~q\)))) # (!\Unit0|U0|RFr2a_ctrl\(0) & (((\Unit1|U2|Mux21~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr2a_ctrl\(0),
	datab => \Unit1|U2|tmp_rf[1][10]~q\,
	datac => \Unit1|U2|tmp_rf[3][10]~q\,
	datad => \Unit1|U2|Mux21~4_combout\,
	combout => \Unit1|U2|Mux21~5_combout\);

-- Location: LCCOMB_X70_Y53_N8
\Unit1|U2|Mux21~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux21~6_combout\ = (\Unit0|U0|RFr2a_ctrl\(2) & (((\Unit0|U0|RFr2a_ctrl\(3))))) # (!\Unit0|U0|RFr2a_ctrl\(2) & ((\Unit0|U0|RFr2a_ctrl\(3) & (\Unit1|U2|Mux21~3_combout\)) # (!\Unit0|U0|RFr2a_ctrl\(3) & ((\Unit1|U2|Mux21~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|Mux21~3_combout\,
	datab => \Unit0|U0|RFr2a_ctrl\(2),
	datac => \Unit1|U2|Mux21~5_combout\,
	datad => \Unit0|U0|RFr2a_ctrl\(3),
	combout => \Unit1|U2|Mux21~6_combout\);

-- Location: LCCOMB_X67_Y49_N0
\Unit1|U2|Mux21~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux21~9_combout\ = (\Unit0|U0|RFr2a_ctrl\(2) & ((\Unit1|U2|Mux21~6_combout\ & ((\Unit1|U2|Mux21~8_combout\))) # (!\Unit1|U2|Mux21~6_combout\ & (\Unit1|U2|Mux21~1_combout\)))) # (!\Unit0|U0|RFr2a_ctrl\(2) & (((\Unit1|U2|Mux21~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|Mux21~1_combout\,
	datab => \Unit0|U0|RFr2a_ctrl\(2),
	datac => \Unit1|U2|Mux21~8_combout\,
	datad => \Unit1|U2|Mux21~6_combout\,
	combout => \Unit1|U2|Mux21~9_combout\);

-- Location: FF_X67_Y49_N1
\Unit1|U2|RFr2[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|Mux21~9_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit0|U0|RFr2e_ctrl~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|RFr2\(10));

-- Location: LCCOMB_X65_Y49_N8
\Unit1|U3|Mux27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|Mux27~0_combout\ = (\Unit1|U3|Mux17~0_combout\ & (((\Unit1|U3|Mux17~1_combout\)))) # (!\Unit1|U3|Mux17~0_combout\ & ((\Unit1|U3|Mux17~1_combout\ & ((\Unit1|U2|RFr2\(10)))) # (!\Unit1|U3|Mux17~1_combout\ & (\Unit1|U2|RFr1[10]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|RFr1[10]~_Duplicate_1_q\,
	datab => \Unit1|U3|Mux17~0_combout\,
	datac => \Unit1|U2|RFr2\(10),
	datad => \Unit1|U3|Mux17~1_combout\,
	combout => \Unit1|U3|Mux27~0_combout\);

-- Location: LCCOMB_X68_Y49_N24
\Unit1|U3|mult_result[10]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|mult_result\(10) = (GLOBAL(\Unit1|U3|Mux1~0clkctrl_outclk\) & ((\Unit1|U3|Mult0|auto_generated|mac_out2~DATAOUT10\))) # (!GLOBAL(\Unit1|U3|Mux1~0clkctrl_outclk\) & (\Unit1|U3|mult_result\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Unit1|U3|mult_result\(10),
	datac => \Unit1|U3|Mult0|auto_generated|mac_out2~DATAOUT10\,
	datad => \Unit1|U3|Mux1~0clkctrl_outclk\,
	combout => \Unit1|U3|mult_result\(10));

-- Location: LCCOMB_X63_Y49_N24
\Unit1|U3|Mux27~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|Mux27~1_combout\ = (\Unit1|U3|Mux17~0_combout\ & ((\Unit1|U3|Mux27~0_combout\ & ((\Unit1|U3|mult_result\(10)))) # (!\Unit1|U3|Mux27~0_combout\ & (\Unit1|U3|Add0~33_combout\)))) # (!\Unit1|U3|Mux17~0_combout\ & (((\Unit1|U3|Mux27~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U3|Add0~33_combout\,
	datab => \Unit1|U3|Mux17~0_combout\,
	datac => \Unit1|U3|Mux27~0_combout\,
	datad => \Unit1|U3|mult_result\(10),
	combout => \Unit1|U3|Mux27~1_combout\);

-- Location: LCCOMB_X63_Y49_N14
\Unit1|U3|alu_tmp[10]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|alu_tmp\(10) = (GLOBAL(\Unit1|U3|Mux33~0clkctrl_outclk\) & (\Unit1|U3|Mux27~1_combout\)) # (!GLOBAL(\Unit1|U3|Mux33~0clkctrl_outclk\) & ((\Unit1|U3|alu_tmp\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Unit1|U3|Mux27~1_combout\,
	datac => \Unit1|U3|alu_tmp\(10),
	datad => \Unit1|U3|Mux33~0clkctrl_outclk\,
	combout => \Unit1|U3|alu_tmp\(10));

-- Location: LCCOMB_X63_Y53_N24
\Unit0|U2|IRout[11]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U2|IRout\(11) = (GLOBAL(\Unit0|U0|IRld_ctrl~clkctrl_outclk\) & ((\Unit2|altsyncram_component|auto_generated|q_a\(11)))) # (!GLOBAL(\Unit0|U0|IRld_ctrl~clkctrl_outclk\) & (\Unit0|U2|IRout\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Unit0|U2|IRout\(11),
	datac => \Unit0|U0|IRld_ctrl~clkctrl_outclk\,
	datad => \Unit2|altsyncram_component|auto_generated|q_a\(11),
	combout => \Unit0|U2|IRout\(11));

-- Location: LCCOMB_X66_Y48_N6
\Unit0|U0|Selector62~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|Selector62~0_combout\ = (\Unit0|U0|WideOr57~0_combout\ & (\Unit0|U0|WideOr58~combout\ & ((\Unit0|U2|IRout\(11))))) # (!\Unit0|U0|WideOr57~0_combout\ & ((\Unit0|U0|RFwa_ctrl\(3)) # ((\Unit0|U0|WideOr58~combout\ & \Unit0|U2|IRout\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|WideOr57~0_combout\,
	datab => \Unit0|U0|WideOr58~combout\,
	datac => \Unit0|U0|RFwa_ctrl\(3),
	datad => \Unit0|U2|IRout\(11),
	combout => \Unit0|U0|Selector62~0_combout\);

-- Location: FF_X66_Y48_N7
\Unit0|U0|RFwa_ctrl[3]\ : dffeas
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
	q => \Unit0|U0|RFwa_ctrl\(3));

-- Location: LCCOMB_X69_Y53_N24
\Unit1|U2|Decoder0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Decoder0~21_combout\ = (\Unit0|U0|RFwa_ctrl\(3) & \Unit1|U2|Decoder0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Unit0|U0|RFwa_ctrl\(3),
	datad => \Unit1|U2|Decoder0~10_combout\,
	combout => \Unit1|U2|Decoder0~21_combout\);

-- Location: FF_X66_Y50_N11
\Unit1|U2|tmp_rf[13][4]\ : dffeas
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
	ena => \Unit1|U2|Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[13][4]~q\);

-- Location: LCCOMB_X68_Y51_N4
\Unit1|U2|Mux11~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux11~7_combout\ = (\Unit0|U0|RFr1a_ctrl\(0) & (\Unit0|U0|RFr1a_ctrl\(1))) # (!\Unit0|U0|RFr1a_ctrl\(0) & ((\Unit0|U0|RFr1a_ctrl\(1) & ((\Unit1|U2|tmp_rf[14][4]~q\))) # (!\Unit0|U0|RFr1a_ctrl\(1) & (\Unit1|U2|tmp_rf[12][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(0),
	datab => \Unit0|U0|RFr1a_ctrl\(1),
	datac => \Unit1|U2|tmp_rf[12][4]~q\,
	datad => \Unit1|U2|tmp_rf[14][4]~q\,
	combout => \Unit1|U2|Mux11~7_combout\);

-- Location: LCCOMB_X66_Y50_N10
\Unit1|U2|Mux11~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux11~8_combout\ = (\Unit0|U0|RFr1a_ctrl\(0) & ((\Unit1|U2|Mux11~7_combout\ & (\Unit1|U2|tmp_rf[15][4]~q\)) # (!\Unit1|U2|Mux11~7_combout\ & ((\Unit1|U2|tmp_rf[13][4]~q\))))) # (!\Unit0|U0|RFr1a_ctrl\(0) & (((\Unit1|U2|Mux11~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[15][4]~q\,
	datab => \Unit0|U0|RFr1a_ctrl\(0),
	datac => \Unit1|U2|tmp_rf[13][4]~q\,
	datad => \Unit1|U2|Mux11~7_combout\,
	combout => \Unit1|U2|Mux11~8_combout\);

-- Location: LCCOMB_X68_Y51_N24
\Unit1|U2|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux11~0_combout\ = (\Unit0|U0|RFr1a_ctrl\(0) & ((\Unit1|U2|tmp_rf[9][4]~q\) # ((\Unit0|U0|RFr1a_ctrl\(1))))) # (!\Unit0|U0|RFr1a_ctrl\(0) & (((\Unit1|U2|tmp_rf[8][4]~q\ & !\Unit0|U0|RFr1a_ctrl\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(0),
	datab => \Unit1|U2|tmp_rf[9][4]~q\,
	datac => \Unit1|U2|tmp_rf[8][4]~q\,
	datad => \Unit0|U0|RFr1a_ctrl\(1),
	combout => \Unit1|U2|Mux11~0_combout\);

-- Location: LCCOMB_X65_Y51_N16
\Unit1|U2|Mux11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux11~1_combout\ = (\Unit0|U0|RFr1a_ctrl\(1) & ((\Unit1|U2|Mux11~0_combout\ & (\Unit1|U2|tmp_rf[11][4]~q\)) # (!\Unit1|U2|Mux11~0_combout\ & ((\Unit1|U2|tmp_rf[10][4]~q\))))) # (!\Unit0|U0|RFr1a_ctrl\(1) & (((\Unit1|U2|Mux11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(1),
	datab => \Unit1|U2|tmp_rf[11][4]~q\,
	datac => \Unit1|U2|tmp_rf[10][4]~q\,
	datad => \Unit1|U2|Mux11~0_combout\,
	combout => \Unit1|U2|Mux11~1_combout\);

-- Location: FF_X62_Y51_N7
\Unit1|U2|tmp_rf[5][4]\ : dffeas
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
	ena => \Unit1|U2|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[5][4]~q\);

-- Location: FF_X62_Y51_N3
\Unit1|U2|tmp_rf[7][4]\ : dffeas
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
	ena => \Unit1|U2|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[7][4]~q\);

-- Location: FF_X62_Y53_N7
\Unit1|U2|tmp_rf[4][4]\ : dffeas
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
	ena => \Unit1|U2|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[4][4]~q\);

-- Location: LCCOMB_X62_Y52_N28
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

-- Location: FF_X62_Y52_N29
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
	ena => \Unit1|U2|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[6][4]~q\);

-- Location: LCCOMB_X62_Y53_N6
\Unit1|U2|Mux11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux11~2_combout\ = (\Unit0|U0|RFr1a_ctrl\(0) & (\Unit0|U0|RFr1a_ctrl\(1))) # (!\Unit0|U0|RFr1a_ctrl\(0) & ((\Unit0|U0|RFr1a_ctrl\(1) & ((\Unit1|U2|tmp_rf[6][4]~q\))) # (!\Unit0|U0|RFr1a_ctrl\(1) & (\Unit1|U2|tmp_rf[4][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(0),
	datab => \Unit0|U0|RFr1a_ctrl\(1),
	datac => \Unit1|U2|tmp_rf[4][4]~q\,
	datad => \Unit1|U2|tmp_rf[6][4]~q\,
	combout => \Unit1|U2|Mux11~2_combout\);

-- Location: LCCOMB_X62_Y51_N2
\Unit1|U2|Mux11~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux11~3_combout\ = (\Unit0|U0|RFr1a_ctrl\(0) & ((\Unit1|U2|Mux11~2_combout\ & ((\Unit1|U2|tmp_rf[7][4]~q\))) # (!\Unit1|U2|Mux11~2_combout\ & (\Unit1|U2|tmp_rf[5][4]~q\)))) # (!\Unit0|U0|RFr1a_ctrl\(0) & (((\Unit1|U2|Mux11~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(0),
	datab => \Unit1|U2|tmp_rf[5][4]~q\,
	datac => \Unit1|U2|tmp_rf[7][4]~q\,
	datad => \Unit1|U2|Mux11~2_combout\,
	combout => \Unit1|U2|Mux11~3_combout\);

-- Location: LCCOMB_X66_Y49_N28
\Unit1|U2|Mux11~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux11~6_combout\ = (\Unit0|U0|RFr1a_ctrl\(2) & (((\Unit0|U0|RFr1a_ctrl\(3)) # (\Unit1|U2|Mux11~3_combout\)))) # (!\Unit0|U0|RFr1a_ctrl\(2) & (\Unit1|U2|Mux11~5_combout\ & (!\Unit0|U0|RFr1a_ctrl\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|Mux11~5_combout\,
	datab => \Unit0|U0|RFr1a_ctrl\(2),
	datac => \Unit0|U0|RFr1a_ctrl\(3),
	datad => \Unit1|U2|Mux11~3_combout\,
	combout => \Unit1|U2|Mux11~6_combout\);

-- Location: LCCOMB_X66_Y49_N6
\Unit1|U2|Mux11~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux11~9_combout\ = (\Unit0|U0|RFr1a_ctrl\(3) & ((\Unit1|U2|Mux11~6_combout\ & (\Unit1|U2|Mux11~8_combout\)) # (!\Unit1|U2|Mux11~6_combout\ & ((\Unit1|U2|Mux11~1_combout\))))) # (!\Unit0|U0|RFr1a_ctrl\(3) & (((\Unit1|U2|Mux11~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(3),
	datab => \Unit1|U2|Mux11~8_combout\,
	datac => \Unit1|U2|Mux11~1_combout\,
	datad => \Unit1|U2|Mux11~6_combout\,
	combout => \Unit1|U2|Mux11~9_combout\);

-- Location: LCCOMB_X66_Y49_N0
\Unit1|U2|RFr1[4]~_Duplicate_1feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|RFr1[4]~_Duplicate_1feeder_combout\ = \Unit1|U2|Mux11~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|U2|Mux11~9_combout\,
	combout => \Unit1|U2|RFr1[4]~_Duplicate_1feeder_combout\);

-- Location: FF_X66_Y49_N1
\Unit1|U2|RFr1[4]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|RFr1[4]~_Duplicate_1feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit0|U0|RFr1e_ctrl~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|RFr1[4]~_Duplicate_1_q\);

-- Location: LCCOMB_X67_Y50_N8
\Unit1|U3|Mux21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|Mux21~0_combout\ = (\Unit1|U3|Mux17~0_combout\ & (\Unit1|U3|Mux17~1_combout\)) # (!\Unit1|U3|Mux17~0_combout\ & ((\Unit1|U3|Mux17~1_combout\ & ((\Unit1|U2|RFr2\(4)))) # (!\Unit1|U3|Mux17~1_combout\ & (\Unit1|U2|RFr1[4]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U3|Mux17~0_combout\,
	datab => \Unit1|U3|Mux17~1_combout\,
	datac => \Unit1|U2|RFr1[4]~_Duplicate_1_q\,
	datad => \Unit1|U2|RFr2\(4),
	combout => \Unit1|U3|Mux21~0_combout\);

-- Location: LCCOMB_X67_Y50_N10
\Unit1|U3|mult_result[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|mult_result\(4) = (GLOBAL(\Unit1|U3|Mux1~0clkctrl_outclk\) & ((\Unit1|U3|Mult0|auto_generated|mac_out2~DATAOUT4\))) # (!GLOBAL(\Unit1|U3|Mux1~0clkctrl_outclk\) & (\Unit1|U3|mult_result\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U3|mult_result\(4),
	datac => \Unit1|U3|Mult0|auto_generated|mac_out2~DATAOUT4\,
	datad => \Unit1|U3|Mux1~0clkctrl_outclk\,
	combout => \Unit1|U3|mult_result\(4));

-- Location: LCCOMB_X67_Y50_N18
\Unit1|U3|Mux21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|Mux21~1_combout\ = (\Unit1|U3|Mux17~0_combout\ & ((\Unit1|U3|Mux21~0_combout\ & ((\Unit1|U3|mult_result\(4)))) # (!\Unit1|U3|Mux21~0_combout\ & (\Unit1|U3|Add0~15_combout\)))) # (!\Unit1|U3|Mux17~0_combout\ & (((\Unit1|U3|Mux21~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U3|Mux17~0_combout\,
	datab => \Unit1|U3|Add0~15_combout\,
	datac => \Unit1|U3|Mux21~0_combout\,
	datad => \Unit1|U3|mult_result\(4),
	combout => \Unit1|U3|Mux21~1_combout\);

-- Location: LCCOMB_X67_Y50_N4
\Unit1|U3|alu_tmp[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|alu_tmp\(4) = (GLOBAL(\Unit1|U3|Mux33~0clkctrl_outclk\) & ((\Unit1|U3|Mux21~1_combout\))) # (!GLOBAL(\Unit1|U3|Mux33~0clkctrl_outclk\) & (\Unit1|U3|alu_tmp\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Unit1|U3|alu_tmp\(4),
	datac => \Unit1|U3|Mux33~0clkctrl_outclk\,
	datad => \Unit1|U3|Mux21~1_combout\,
	combout => \Unit1|U3|alu_tmp\(4));

-- Location: LCCOMB_X62_Y50_N20
\Unit0|U2|dir_addr[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U2|dir_addr\(4) = (GLOBAL(\Unit0|U0|IRld_ctrl~clkctrl_outclk\) & ((\Unit2|altsyncram_component|auto_generated|q_a\(4)))) # (!GLOBAL(\Unit0|U0|IRld_ctrl~clkctrl_outclk\) & (\Unit0|U2|dir_addr\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Unit0|U2|dir_addr\(4),
	datac => \Unit0|U0|IRld_ctrl~clkctrl_outclk\,
	datad => \Unit2|altsyncram_component|auto_generated|q_a\(4),
	combout => \Unit0|U2|dir_addr\(4));

-- Location: LCCOMB_X65_Y53_N16
\Unit0|U0|Selector71~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|Selector71~0_combout\ = (\Unit0|U0|WideOr65~combout\ & (((\Unit0|U2|dir_addr\(4))))) # (!\Unit0|U0|WideOr65~combout\ & (\Unit0|U2|IRout\(8) & ((!\Unit0|U0|state.S_LONG_SAVE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U2|IRout\(8),
	datab => \Unit0|U2|dir_addr\(4),
	datac => \Unit0|U0|state.S_LONG_SAVE~q\,
	datad => \Unit0|U0|WideOr65~combout\,
	combout => \Unit0|U0|Selector71~0_combout\);

-- Location: FF_X65_Y53_N17
\Unit0|U0|RFr1a_ctrl[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit0|U0|Selector71~0_combout\,
	ena => \Unit0|U0|RFr1a_ctrl[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U0|RFr1a_ctrl\(0));

-- Location: LCCOMB_X66_Y51_N16
\Unit1|U2|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux15~0_combout\ = (\Unit0|U0|RFr1a_ctrl\(1) & (\Unit0|U0|RFr1a_ctrl\(0))) # (!\Unit0|U0|RFr1a_ctrl\(1) & ((\Unit0|U0|RFr1a_ctrl\(0) & ((\Unit1|U2|tmp_rf[9][0]~q\))) # (!\Unit0|U0|RFr1a_ctrl\(0) & (\Unit1|U2|tmp_rf[8][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(1),
	datab => \Unit0|U0|RFr1a_ctrl\(0),
	datac => \Unit1|U2|tmp_rf[8][0]~q\,
	datad => \Unit1|U2|tmp_rf[9][0]~q\,
	combout => \Unit1|U2|Mux15~0_combout\);

-- Location: FF_X65_Y51_N9
\Unit1|U2|tmp_rf[10][0]\ : dffeas
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
	ena => \Unit1|U2|Decoder0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[10][0]~q\);

-- Location: LCCOMB_X65_Y51_N8
\Unit1|U2|Mux15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux15~1_combout\ = (\Unit0|U0|RFr1a_ctrl\(1) & ((\Unit1|U2|Mux15~0_combout\ & ((\Unit1|U2|tmp_rf[11][0]~q\))) # (!\Unit1|U2|Mux15~0_combout\ & (\Unit1|U2|tmp_rf[10][0]~q\)))) # (!\Unit0|U0|RFr1a_ctrl\(1) & (\Unit1|U2|Mux15~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(1),
	datab => \Unit1|U2|Mux15~0_combout\,
	datac => \Unit1|U2|tmp_rf[10][0]~q\,
	datad => \Unit1|U2|tmp_rf[11][0]~q\,
	combout => \Unit1|U2|Mux15~1_combout\);

-- Location: FF_X65_Y50_N23
\Unit1|U2|tmp_rf[15][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U1|Mux15~1_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[15][0]~q\);

-- Location: FF_X65_Y50_N21
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
	ena => \Unit1|U2|Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[13][0]~q\);

-- Location: LCCOMB_X62_Y53_N20
\Unit1|U2|tmp_rf[12][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[12][0]~feeder_combout\ = \Unit1|U1|Mux15~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|U1|Mux15~1_combout\,
	combout => \Unit1|U2|tmp_rf[12][0]~feeder_combout\);

-- Location: FF_X62_Y53_N21
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
	ena => \Unit1|U2|Decoder0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[12][0]~q\);

-- Location: FF_X65_Y52_N23
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
	ena => \Unit1|U2|Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[14][0]~q\);

-- Location: LCCOMB_X62_Y53_N12
\Unit1|U2|Mux15~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux15~7_combout\ = (\Unit0|U0|RFr1a_ctrl\(0) & (((\Unit0|U0|RFr1a_ctrl\(1))))) # (!\Unit0|U0|RFr1a_ctrl\(0) & ((\Unit0|U0|RFr1a_ctrl\(1) & ((\Unit1|U2|tmp_rf[14][0]~q\))) # (!\Unit0|U0|RFr1a_ctrl\(1) & (\Unit1|U2|tmp_rf[12][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(0),
	datab => \Unit1|U2|tmp_rf[12][0]~q\,
	datac => \Unit0|U0|RFr1a_ctrl\(1),
	datad => \Unit1|U2|tmp_rf[14][0]~q\,
	combout => \Unit1|U2|Mux15~7_combout\);

-- Location: LCCOMB_X65_Y50_N20
\Unit1|U2|Mux15~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux15~8_combout\ = (\Unit0|U0|RFr1a_ctrl\(0) & ((\Unit1|U2|Mux15~7_combout\ & (\Unit1|U2|tmp_rf[15][0]~q\)) # (!\Unit1|U2|Mux15~7_combout\ & ((\Unit1|U2|tmp_rf[13][0]~q\))))) # (!\Unit0|U0|RFr1a_ctrl\(0) & (((\Unit1|U2|Mux15~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(0),
	datab => \Unit1|U2|tmp_rf[15][0]~q\,
	datac => \Unit1|U2|tmp_rf[13][0]~q\,
	datad => \Unit1|U2|Mux15~7_combout\,
	combout => \Unit1|U2|Mux15~8_combout\);

-- Location: LCCOMB_X63_Y51_N0
\Unit1|U2|Mux15~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux15~4_combout\ = (\Unit0|U0|RFr1a_ctrl\(1) & (((\Unit0|U0|RFr1a_ctrl\(0))))) # (!\Unit0|U0|RFr1a_ctrl\(1) & ((\Unit0|U0|RFr1a_ctrl\(0) & (\Unit1|U2|tmp_rf[1][0]~q\)) # (!\Unit0|U0|RFr1a_ctrl\(0) & ((\Unit1|U2|tmp_rf[0][0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(1),
	datab => \Unit1|U2|tmp_rf[1][0]~q\,
	datac => \Unit1|U2|tmp_rf[0][0]~q\,
	datad => \Unit0|U0|RFr1a_ctrl\(0),
	combout => \Unit1|U2|Mux15~4_combout\);

-- Location: LCCOMB_X63_Y51_N30
\Unit1|U2|Mux15~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux15~5_combout\ = (\Unit0|U0|RFr1a_ctrl\(1) & ((\Unit1|U2|Mux15~4_combout\ & (\Unit1|U2|tmp_rf[3][0]~q\)) # (!\Unit1|U2|Mux15~4_combout\ & ((\Unit1|U2|tmp_rf[2][0]~q\))))) # (!\Unit0|U0|RFr1a_ctrl\(1) & (\Unit1|U2|Mux15~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(1),
	datab => \Unit1|U2|Mux15~4_combout\,
	datac => \Unit1|U2|tmp_rf[3][0]~q\,
	datad => \Unit1|U2|tmp_rf[2][0]~q\,
	combout => \Unit1|U2|Mux15~5_combout\);

-- Location: LCCOMB_X62_Y51_N26
\Unit1|U2|tmp_rf[7][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[7][0]~feeder_combout\ = \Unit1|U1|Mux15~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Unit1|U1|Mux15~1_combout\,
	combout => \Unit1|U2|tmp_rf[7][0]~feeder_combout\);

-- Location: FF_X62_Y51_N27
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

-- Location: LCCOMB_X62_Y53_N2
\Unit1|U2|Mux15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux15~2_combout\ = (\Unit0|U0|RFr1a_ctrl\(0) & (((\Unit0|U0|RFr1a_ctrl\(1))))) # (!\Unit0|U0|RFr1a_ctrl\(0) & ((\Unit0|U0|RFr1a_ctrl\(1) & ((\Unit1|U2|tmp_rf[6][0]~q\))) # (!\Unit0|U0|RFr1a_ctrl\(1) & (\Unit1|U2|tmp_rf[4][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(0),
	datab => \Unit1|U2|tmp_rf[4][0]~q\,
	datac => \Unit1|U2|tmp_rf[6][0]~q\,
	datad => \Unit0|U0|RFr1a_ctrl\(1),
	combout => \Unit1|U2|Mux15~2_combout\);

-- Location: LCCOMB_X62_Y51_N8
\Unit1|U2|Mux15~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux15~3_combout\ = (\Unit0|U0|RFr1a_ctrl\(0) & ((\Unit1|U2|Mux15~2_combout\ & ((\Unit1|U2|tmp_rf[7][0]~q\))) # (!\Unit1|U2|Mux15~2_combout\ & (\Unit1|U2|tmp_rf[5][0]~q\)))) # (!\Unit0|U0|RFr1a_ctrl\(0) & (((\Unit1|U2|Mux15~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(0),
	datab => \Unit1|U2|tmp_rf[5][0]~q\,
	datac => \Unit1|U2|tmp_rf[7][0]~q\,
	datad => \Unit1|U2|Mux15~2_combout\,
	combout => \Unit1|U2|Mux15~3_combout\);

-- Location: LCCOMB_X63_Y51_N2
\Unit1|U2|Mux15~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux15~6_combout\ = (\Unit0|U0|RFr1a_ctrl\(2) & ((\Unit0|U0|RFr1a_ctrl\(3)) # ((\Unit1|U2|Mux15~3_combout\)))) # (!\Unit0|U0|RFr1a_ctrl\(2) & (!\Unit0|U0|RFr1a_ctrl\(3) & (\Unit1|U2|Mux15~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(2),
	datab => \Unit0|U0|RFr1a_ctrl\(3),
	datac => \Unit1|U2|Mux15~5_combout\,
	datad => \Unit1|U2|Mux15~3_combout\,
	combout => \Unit1|U2|Mux15~6_combout\);

-- Location: LCCOMB_X67_Y51_N14
\Unit1|U2|Mux15~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux15~9_combout\ = (\Unit0|U0|RFr1a_ctrl\(3) & ((\Unit1|U2|Mux15~6_combout\ & ((\Unit1|U2|Mux15~8_combout\))) # (!\Unit1|U2|Mux15~6_combout\ & (\Unit1|U2|Mux15~1_combout\)))) # (!\Unit0|U0|RFr1a_ctrl\(3) & (((\Unit1|U2|Mux15~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr1a_ctrl\(3),
	datab => \Unit1|U2|Mux15~1_combout\,
	datac => \Unit1|U2|Mux15~8_combout\,
	datad => \Unit1|U2|Mux15~6_combout\,
	combout => \Unit1|U2|Mux15~9_combout\);

-- Location: LCCOMB_X67_Y51_N8
\Unit1|U2|RFr1[0]~_Duplicate_1feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|RFr1[0]~_Duplicate_1feeder_combout\ = \Unit1|U2|Mux15~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Unit1|U2|Mux15~9_combout\,
	combout => \Unit1|U2|RFr1[0]~_Duplicate_1feeder_combout\);

-- Location: FF_X67_Y51_N9
\Unit1|U2|RFr1[0]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|RFr1[0]~_Duplicate_1feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit0|U0|RFr1e_ctrl~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|RFr1[0]~_Duplicate_1_q\);

-- Location: LCCOMB_X65_Y49_N4
\Unit1|U3|Mux17~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|Mux17~2_combout\ = (\Unit1|U3|Mux17~1_combout\ & (((\Unit1|U2|RFr2\(0)) # (\Unit1|U3|Mux17~0_combout\)))) # (!\Unit1|U3|Mux17~1_combout\ & (\Unit1|U2|RFr1[0]~_Duplicate_1_q\ & ((!\Unit1|U3|Mux17~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U3|Mux17~1_combout\,
	datab => \Unit1|U2|RFr1[0]~_Duplicate_1_q\,
	datac => \Unit1|U2|RFr2\(0),
	datad => \Unit1|U3|Mux17~0_combout\,
	combout => \Unit1|U3|Mux17~2_combout\);

-- Location: LCCOMB_X65_Y49_N2
\Unit1|U3|mult_result[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|mult_result\(0) = (GLOBAL(\Unit1|U3|Mux1~0clkctrl_outclk\) & ((\Unit1|U3|Mult0|auto_generated|mac_out2~dataout\))) # (!GLOBAL(\Unit1|U3|Mux1~0clkctrl_outclk\) & (\Unit1|U3|mult_result\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Unit1|U3|mult_result\(0),
	datac => \Unit1|U3|Mult0|auto_generated|mac_out2~dataout\,
	datad => \Unit1|U3|Mux1~0clkctrl_outclk\,
	combout => \Unit1|U3|mult_result\(0));

-- Location: LCCOMB_X65_Y49_N22
\Unit1|U3|Mux17~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|Mux17~3_combout\ = (\Unit1|U3|Mux17~0_combout\ & ((\Unit1|U3|Mux17~2_combout\ & ((\Unit1|U3|mult_result\(0)))) # (!\Unit1|U3|Mux17~2_combout\ & (\Unit1|U3|Add0~3_combout\)))) # (!\Unit1|U3|Mux17~0_combout\ & (((\Unit1|U3|Mux17~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U3|Add0~3_combout\,
	datab => \Unit1|U3|Mux17~0_combout\,
	datac => \Unit1|U3|Mux17~2_combout\,
	datad => \Unit1|U3|mult_result\(0),
	combout => \Unit1|U3|Mux17~3_combout\);

-- Location: LCCOMB_X63_Y50_N2
\Unit1|U3|alu_tmp[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|alu_tmp\(0) = (GLOBAL(\Unit1|U3|Mux33~0clkctrl_outclk\) & ((\Unit1|U3|Mux17~3_combout\))) # (!GLOBAL(\Unit1|U3|Mux33~0clkctrl_outclk\) & (\Unit1|U3|alu_tmp\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Unit1|U3|alu_tmp\(0),
	datac => \Unit1|U3|Mux17~3_combout\,
	datad => \Unit1|U3|Mux33~0clkctrl_outclk\,
	combout => \Unit1|U3|alu_tmp\(0));

-- Location: M9K_X64_Y48_N0
\Unit2|altsyncram_component|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000C8721C8700010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000B93900000000033C1C00801150210",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "m9k_mem.hex",
	init_file_layout => "port_a",
	logical_ram_name => "MainMemory:Unit2|altsyncram:altsyncram_component|altsyncram_fos3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 12,
	port_b_data_width => 2,
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

-- Location: LCCOMB_X63_Y52_N18
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

-- Location: LCCOMB_X65_Y53_N18
\Unit0|U0|Selector77~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|Selector77~0_combout\ = (\Unit0|U0|WideOr0~0_combout\ & (\Unit0|U2|dir_addr\(5))) # (!\Unit0|U0|WideOr0~0_combout\ & ((\Unit0|U2|dir_addr\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U2|dir_addr\(5),
	datac => \Unit0|U2|dir_addr\(1),
	datad => \Unit0|U0|WideOr0~0_combout\,
	combout => \Unit0|U0|Selector77~0_combout\);

-- Location: FF_X65_Y53_N19
\Unit0|U0|RFr2a_ctrl[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit0|U0|Selector77~0_combout\,
	ena => \Unit0|U0|RFr2a_ctrl[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U0|RFr2a_ctrl\(1));

-- Location: LCCOMB_X66_Y51_N2
\Unit1|U2|Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux19~0_combout\ = (\Unit0|U0|RFr2a_ctrl\(1) & (((\Unit0|U0|RFr2a_ctrl\(0))))) # (!\Unit0|U0|RFr2a_ctrl\(1) & ((\Unit0|U0|RFr2a_ctrl\(0) & ((\Unit1|U2|tmp_rf[9][12]~q\))) # (!\Unit0|U0|RFr2a_ctrl\(0) & (\Unit1|U2|tmp_rf[8][12]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[8][12]~q\,
	datab => \Unit0|U0|RFr2a_ctrl\(1),
	datac => \Unit1|U2|tmp_rf[9][12]~q\,
	datad => \Unit0|U0|RFr2a_ctrl\(0),
	combout => \Unit1|U2|Mux19~0_combout\);

-- Location: LCCOMB_X67_Y49_N20
\Unit1|U2|Mux19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux19~1_combout\ = (\Unit0|U0|RFr2a_ctrl\(1) & ((\Unit1|U2|Mux19~0_combout\ & ((\Unit1|U2|tmp_rf[11][12]~q\))) # (!\Unit1|U2|Mux19~0_combout\ & (\Unit1|U2|tmp_rf[10][12]~q\)))) # (!\Unit0|U0|RFr2a_ctrl\(1) & (((\Unit1|U2|Mux19~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[10][12]~q\,
	datab => \Unit0|U0|RFr2a_ctrl\(1),
	datac => \Unit1|U2|tmp_rf[11][12]~q\,
	datad => \Unit1|U2|Mux19~0_combout\,
	combout => \Unit1|U2|Mux19~1_combout\);

-- Location: LCCOMB_X69_Y51_N22
\Unit1|U2|Mux19~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux19~7_combout\ = (\Unit0|U0|RFr2a_ctrl\(1) & ((\Unit1|U2|tmp_rf[14][12]~q\) # ((\Unit0|U0|RFr2a_ctrl\(0))))) # (!\Unit0|U0|RFr2a_ctrl\(1) & (((\Unit1|U2|tmp_rf[12][12]~q\ & !\Unit0|U0|RFr2a_ctrl\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[14][12]~q\,
	datab => \Unit1|U2|tmp_rf[12][12]~q\,
	datac => \Unit0|U0|RFr2a_ctrl\(1),
	datad => \Unit0|U0|RFr2a_ctrl\(0),
	combout => \Unit1|U2|Mux19~7_combout\);

-- Location: LCCOMB_X69_Y53_N10
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

-- Location: LCCOMB_X68_Y53_N14
\Unit1|U2|Mux19~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux19~4_combout\ = (\Unit0|U0|RFr2a_ctrl\(0) & ((\Unit0|U0|RFr2a_ctrl\(1)) # ((\Unit1|U2|tmp_rf[1][12]~q\)))) # (!\Unit0|U0|RFr2a_ctrl\(0) & (!\Unit0|U0|RFr2a_ctrl\(1) & ((\Unit1|U2|tmp_rf[0][12]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr2a_ctrl\(0),
	datab => \Unit0|U0|RFr2a_ctrl\(1),
	datac => \Unit1|U2|tmp_rf[1][12]~q\,
	datad => \Unit1|U2|tmp_rf[0][12]~q\,
	combout => \Unit1|U2|Mux19~4_combout\);

-- Location: LCCOMB_X69_Y53_N16
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

-- Location: LCCOMB_X68_Y53_N26
\Unit1|U2|Mux19~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux19~2_combout\ = (\Unit0|U0|RFr2a_ctrl\(0) & (\Unit0|U0|RFr2a_ctrl\(1))) # (!\Unit0|U0|RFr2a_ctrl\(0) & ((\Unit0|U0|RFr2a_ctrl\(1) & (\Unit1|U2|tmp_rf[6][12]~q\)) # (!\Unit0|U0|RFr2a_ctrl\(1) & ((\Unit1|U2|tmp_rf[4][12]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr2a_ctrl\(0),
	datab => \Unit0|U0|RFr2a_ctrl\(1),
	datac => \Unit1|U2|tmp_rf[6][12]~q\,
	datad => \Unit1|U2|tmp_rf[4][12]~q\,
	combout => \Unit1|U2|Mux19~2_combout\);

-- Location: FF_X66_Y53_N17
\Unit1|U2|tmp_rf[5][12]\ : dffeas
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
	ena => \Unit1|U2|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[5][12]~q\);

-- Location: LCCOMB_X66_Y53_N16
\Unit1|U2|Mux19~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux19~3_combout\ = (\Unit1|U2|Mux19~2_combout\ & ((\Unit1|U2|tmp_rf[7][12]~q\) # ((!\Unit0|U0|RFr2a_ctrl\(0))))) # (!\Unit1|U2|Mux19~2_combout\ & (((\Unit1|U2|tmp_rf[5][12]~q\ & \Unit0|U0|RFr2a_ctrl\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|tmp_rf[7][12]~q\,
	datab => \Unit1|U2|Mux19~2_combout\,
	datac => \Unit1|U2|tmp_rf[5][12]~q\,
	datad => \Unit0|U0|RFr2a_ctrl\(0),
	combout => \Unit1|U2|Mux19~3_combout\);

-- Location: LCCOMB_X66_Y53_N4
\Unit1|U2|Mux19~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux19~6_combout\ = (\Unit0|U0|RFr2a_ctrl\(2) & ((\Unit0|U0|RFr2a_ctrl\(3)) # ((\Unit1|U2|Mux19~3_combout\)))) # (!\Unit0|U0|RFr2a_ctrl\(2) & (!\Unit0|U0|RFr2a_ctrl\(3) & (\Unit1|U2|Mux19~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr2a_ctrl\(2),
	datab => \Unit0|U0|RFr2a_ctrl\(3),
	datac => \Unit1|U2|Mux19~5_combout\,
	datad => \Unit1|U2|Mux19~3_combout\,
	combout => \Unit1|U2|Mux19~6_combout\);

-- Location: LCCOMB_X67_Y49_N28
\Unit1|U2|Mux19~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|Mux19~9_combout\ = (\Unit0|U0|RFr2a_ctrl\(3) & ((\Unit1|U2|Mux19~6_combout\ & ((\Unit1|U2|Mux19~8_combout\))) # (!\Unit1|U2|Mux19~6_combout\ & (\Unit1|U2|Mux19~1_combout\)))) # (!\Unit0|U0|RFr2a_ctrl\(3) & (((\Unit1|U2|Mux19~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|RFr2a_ctrl\(3),
	datab => \Unit1|U2|Mux19~1_combout\,
	datac => \Unit1|U2|Mux19~8_combout\,
	datad => \Unit1|U2|Mux19~6_combout\,
	combout => \Unit1|U2|Mux19~9_combout\);

-- Location: FF_X67_Y49_N29
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

-- Location: LCCOMB_X67_Y50_N20
\Unit1|U3|Mux29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|Mux29~0_combout\ = (\Unit1|U3|Mux17~0_combout\ & (((\Unit1|U3|Mux17~1_combout\)))) # (!\Unit1|U3|Mux17~0_combout\ & ((\Unit1|U3|Mux17~1_combout\ & (\Unit1|U2|RFr2\(12))) # (!\Unit1|U3|Mux17~1_combout\ & ((\Unit1|U2|RFr1[12]~_Duplicate_1_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U3|Mux17~0_combout\,
	datab => \Unit1|U2|RFr2\(12),
	datac => \Unit1|U3|Mux17~1_combout\,
	datad => \Unit1|U2|RFr1[12]~_Duplicate_1_q\,
	combout => \Unit1|U3|Mux29~0_combout\);

-- Location: LCCOMB_X67_Y50_N28
\Unit1|U3|mult_result[12]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|mult_result\(12) = (GLOBAL(\Unit1|U3|Mux1~0clkctrl_outclk\) & ((\Unit1|U3|Mult0|auto_generated|mac_out2~DATAOUT12\))) # (!GLOBAL(\Unit1|U3|Mux1~0clkctrl_outclk\) & (\Unit1|U3|mult_result\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Unit1|U3|mult_result\(12),
	datac => \Unit1|U3|Mult0|auto_generated|mac_out2~DATAOUT12\,
	datad => \Unit1|U3|Mux1~0clkctrl_outclk\,
	combout => \Unit1|U3|mult_result\(12));

-- Location: LCCOMB_X67_Y50_N6
\Unit1|U3|Mux29~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|Mux29~1_combout\ = (\Unit1|U3|Mux17~0_combout\ & ((\Unit1|U3|Mux29~0_combout\ & ((\Unit1|U3|mult_result\(12)))) # (!\Unit1|U3|Mux29~0_combout\ & (\Unit1|U3|Add0~39_combout\)))) # (!\Unit1|U3|Mux17~0_combout\ & (\Unit1|U3|Mux29~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U3|Mux17~0_combout\,
	datab => \Unit1|U3|Mux29~0_combout\,
	datac => \Unit1|U3|Add0~39_combout\,
	datad => \Unit1|U3|mult_result\(12),
	combout => \Unit1|U3|Mux29~1_combout\);

-- Location: LCCOMB_X67_Y50_N22
\Unit1|U3|alu_tmp[12]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|alu_tmp\(12) = (GLOBAL(\Unit1|U3|Mux33~0clkctrl_outclk\) & ((\Unit1|U3|Mux29~1_combout\))) # (!GLOBAL(\Unit1|U3|Mux33~0clkctrl_outclk\) & (\Unit1|U3|alu_tmp\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U3|alu_tmp\(12),
	datac => \Unit1|U3|Mux33~0clkctrl_outclk\,
	datad => \Unit1|U3|Mux29~1_combout\,
	combout => \Unit1|U3|alu_tmp\(12));

-- Location: M9K_X64_Y46_N0
\Unit2|altsyncram_component|auto_generated|ram_block1a12\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003936E40268FC03388",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "m9k_mem.hex",
	init_file_layout => "port_a",
	logical_ram_name => "MainMemory:Unit2|altsyncram:altsyncram_component|altsyncram_fos3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 12,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \Unit0|U0|Mwe_ctrl~q\,
	portare => \Unit0|U0|Mre_ctrl~q\,
	clk0 => \cpu_clk~inputclkctrl_outclk\,
	portadatain => \Unit2|altsyncram_component|auto_generated|ram_block1a12_PORTADATAIN_bus\,
	portaaddr => \Unit2|altsyncram_component|auto_generated|ram_block1a12_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \Unit2|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\);

-- Location: LCCOMB_X63_Y46_N8
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

-- Location: LCCOMB_X63_Y45_N12
\Unit0|U0|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|Mux1~2_combout\ = (\Unit0|U2|IRout\(15) & (!\Unit0|U2|IRout\(12) & (!\Unit0|U2|IRout\(14) & !\Unit0|U2|IRout\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U2|IRout\(15),
	datab => \Unit0|U2|IRout\(12),
	datac => \Unit0|U2|IRout\(14),
	datad => \Unit0|U2|IRout\(13),
	combout => \Unit0|U0|Mux1~2_combout\);

-- Location: FF_X63_Y45_N13
\Unit0|U0|state.S_LONG_LOAD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit0|U0|Mux1~2_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sclr => \Unit0|U0|ALT_INV_state.S_DECODE_INST~q\,
	ena => \Unit0|U0|Selector6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U0|state.S_LONG_LOAD~q\);

-- Location: LCCOMB_X63_Y45_N24
\Unit0|U0|WideOr5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|WideOr5~0_combout\ = (!\Unit0|U0|state.S_SHORT_LOAD~q\ & !\Unit0|U0|state.S_LONG_LOAD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|state.S_SHORT_LOAD~q\,
	datad => \Unit0|U0|state.S_LONG_LOAD~q\,
	combout => \Unit0|U0|WideOr5~0_combout\);

-- Location: LCCOMB_X63_Y45_N20
\Unit0|U0|Selector52~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|Selector52~2_combout\ = (\Unit0|U0|Selector52~1_combout\) # (((\Unit0|U0|state.S_OUTPUT_MEM~q\) # (!\Unit0|U0|Selector56~0_combout\)) # (!\Unit0|U0|WideOr5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|Selector52~1_combout\,
	datab => \Unit0|U0|WideOr5~0_combout\,
	datac => \Unit0|U0|Selector56~0_combout\,
	datad => \Unit0|U0|state.S_OUTPUT_MEM~q\,
	combout => \Unit0|U0|Selector52~2_combout\);

-- Location: FF_X63_Y45_N21
\Unit0|U0|Mre_ctrl\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit0|U0|Selector52~2_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U0|Mre_ctrl~q\);

-- Location: LCCOMB_X63_Y46_N26
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

-- Location: LCCOMB_X63_Y46_N30
\Unit0|U0|Mux1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|Mux1~7_combout\ = (!\Unit0|U2|IRout\(15) & (!\Unit0|U2|IRout\(14) & (\Unit0|U2|IRout\(13) & \Unit0|U2|IRout\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U2|IRout\(15),
	datab => \Unit0|U2|IRout\(14),
	datac => \Unit0|U2|IRout\(13),
	datad => \Unit0|U2|IRout\(12),
	combout => \Unit0|U0|Mux1~7_combout\);

-- Location: FF_X63_Y46_N31
\Unit0|U0|state.S_IMM_LOAD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit0|U0|Mux1~7_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sclr => \Unit0|U0|ALT_INV_state.S_DECODE_INST~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U0|state.S_IMM_LOAD~q\);

-- Location: FF_X62_Y46_N19
\Unit0|U0|state.S_IMM_LOADa\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	asdata => \Unit0|U0|state.S_IMM_LOAD~q\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U0|state.S_IMM_LOADa~q\);

-- Location: LCCOMB_X62_Y46_N20
\Unit0|U0|state.S_LONG_IMM_LOADa~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|state.S_LONG_IMM_LOADa~feeder_combout\ = \Unit0|U0|state.S_LONG_IMM_LOAD~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Unit0|U0|state.S_LONG_IMM_LOAD~q\,
	combout => \Unit0|U0|state.S_LONG_IMM_LOADa~feeder_combout\);

-- Location: FF_X62_Y46_N21
\Unit0|U0|state.S_LONG_IMM_LOADa\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit0|U0|state.S_LONG_IMM_LOADa~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U0|state.S_LONG_IMM_LOADa~q\);

-- Location: LCCOMB_X62_Y46_N18
\Unit0|U0|WideOr1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|WideOr1~5_combout\ = (\Unit0|U0|WideOr1~4_combout\ & (!\Unit0|U0|state.S_IMM_LOADa~q\ & !\Unit0|U0|state.S_LONG_IMM_LOADa~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|WideOr1~4_combout\,
	datac => \Unit0|U0|state.S_IMM_LOADa~q\,
	datad => \Unit0|U0|state.S_LONG_IMM_LOADa~q\,
	combout => \Unit0|U0|WideOr1~5_combout\);

-- Location: LCCOMB_X62_Y46_N2
\Unit0|U0|Selector47~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|Selector47~0_combout\ = (\cpu_clk~input_o\ & \Unit0|U0|state.S_OUTPUT_MEM_wait~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu_clk~input_o\,
	datad => \Unit0|U0|state.S_OUTPUT_MEM_wait~q\,
	combout => \Unit0|U0|Selector47~0_combout\);

-- Location: FF_X62_Y46_N23
\Unit0|U0|state.S_OUTPUT_MEMa\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	asdata => \Unit0|U0|Selector47~0_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U0|state.S_OUTPUT_MEMa~q\);

-- Location: LCCOMB_X62_Y45_N14
\Unit0|U0|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|Selector7~0_combout\ = (\cpu_clk~input_o\ & \Unit0|U0|state.S_SHORT_LOAD_wait~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu_clk~input_o\,
	datac => \Unit0|U0|state.S_SHORT_LOAD_wait~q\,
	combout => \Unit0|U0|Selector7~0_combout\);

-- Location: FF_X62_Y45_N13
\Unit0|U0|state.S_SHORT_LOADa\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	asdata => \Unit0|U0|Selector7~0_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U0|state.S_SHORT_LOADa~q\);

-- Location: LCCOMB_X62_Y46_N12
\Unit0|U0|state.S_SHORT_LOADb~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|state.S_SHORT_LOADb~feeder_combout\ = \Unit0|U0|state.S_SHORT_LOADa~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit0|U0|state.S_SHORT_LOADa~q\,
	combout => \Unit0|U0|state.S_SHORT_LOADb~feeder_combout\);

-- Location: FF_X62_Y46_N13
\Unit0|U0|state.S_SHORT_LOADb\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit0|U0|state.S_SHORT_LOADb~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U0|state.S_SHORT_LOADb~q\);

-- Location: LCCOMB_X62_Y46_N22
\Unit0|U0|Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|Selector1~1_combout\ = (!\Unit0|U0|state.S_SHORT_SAVEb~q\ & (\Unit0|U0|state.S_INIT~q\ & (!\Unit0|U0|state.S_OUTPUT_MEMa~q\ & !\Unit0|U0|state.S_SHORT_LOADb~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|state.S_SHORT_SAVEb~q\,
	datab => \Unit0|U0|state.S_INIT~q\,
	datac => \Unit0|U0|state.S_OUTPUT_MEMa~q\,
	datad => \Unit0|U0|state.S_SHORT_LOADb~q\,
	combout => \Unit0|U0|Selector1~1_combout\);

-- Location: FF_X62_Y48_N1
\Unit0|U0|state.S_MULTb\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	asdata => \Unit0|U0|state.S_MULTa~q\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U0|state.S_MULTb~q\);

-- Location: LCCOMB_X61_Y46_N28
\Unit0|U0|state.S_JUMP_Za~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|state.S_JUMP_Za~feeder_combout\ = \Unit0|U0|state.S_JUMP_Z~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Unit0|U0|state.S_JUMP_Z~q\,
	combout => \Unit0|U0|state.S_JUMP_Za~feeder_combout\);

-- Location: FF_X61_Y46_N29
\Unit0|U0|state.S_JUMP_Za\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit0|U0|state.S_JUMP_Za~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U0|state.S_JUMP_Za~q\);

-- Location: FF_X62_Y45_N3
\Unit0|U0|state.S_JUMP_Zb\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	asdata => \Unit0|U0|state.S_JUMP_Za~q\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U0|state.S_JUMP_Zb~q\);

-- Location: LCCOMB_X62_Y45_N0
\Unit0|U0|state.S_SUBTb~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|state.S_SUBTb~feeder_combout\ = \Unit0|U0|state.S_SUBTa~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit0|U0|state.S_SUBTa~q\,
	combout => \Unit0|U0|state.S_SUBTb~feeder_combout\);

-- Location: FF_X62_Y45_N1
\Unit0|U0|state.S_SUBTb\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit0|U0|state.S_SUBTb~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U0|state.S_SUBTb~q\);

-- Location: LCCOMB_X62_Y45_N2
\Unit0|U0|WideOr0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|WideOr0~1_combout\ = (!\Unit0|U0|state.S_ADDb~q\ & (!\Unit0|U0|state.S_MULTb~q\ & (!\Unit0|U0|state.S_JUMP_Zb~q\ & !\Unit0|U0|state.S_SUBTb~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|state.S_ADDb~q\,
	datab => \Unit0|U0|state.S_MULTb~q\,
	datac => \Unit0|U0|state.S_JUMP_Zb~q\,
	datad => \Unit0|U0|state.S_SUBTb~q\,
	combout => \Unit0|U0|WideOr0~1_combout\);

-- Location: LCCOMB_X62_Y46_N26
\Unit0|U0|Selector1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|Selector1~2_combout\ = (\Unit0|U0|Selector1~0_combout\) # (((!\Unit0|U0|WideOr0~1_combout\) # (!\Unit0|U0|Selector1~1_combout\)) # (!\Unit0|U0|WideOr1~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|Selector1~0_combout\,
	datab => \Unit0|U0|WideOr1~5_combout\,
	datac => \Unit0|U0|Selector1~1_combout\,
	datad => \Unit0|U0|WideOr0~1_combout\,
	combout => \Unit0|U0|Selector1~2_combout\);

-- Location: FF_X62_Y46_N27
\Unit0|U0|state.S_FETCH_INST\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit0|U0|Selector1~2_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U0|state.S_FETCH_INST~q\);

-- Location: LCCOMB_X62_Y45_N20
\Unit0|U0|Selector51~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|Selector51~1_combout\ = (!\Unit0|U0|state.S_LONG_SAVE~q\ & (!\Unit0|U0|state.S_SHORT_SAVE~q\ & (!\Unit0|U0|state.S_IMM_LOAD~q\ & !\Unit0|U0|state.S_LONG_IMM_LOAD~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|state.S_LONG_SAVE~q\,
	datab => \Unit0|U0|state.S_SHORT_SAVE~q\,
	datac => \Unit0|U0|state.S_IMM_LOAD~q\,
	datad => \Unit0|U0|state.S_LONG_IMM_LOAD~q\,
	combout => \Unit0|U0|Selector51~1_combout\);

-- Location: LCCOMB_X62_Y45_N18
\Unit0|U0|Selector51~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|Selector51~2_combout\ = (\Unit0|U0|state.S_FETCH_INST~q\) # ((!\Unit0|U0|state.S_FETCH_INSTa~q\ & (\Unit0|U0|IRld_ctrl~q\ & \Unit0|U0|Selector51~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|state.S_FETCH_INSTa~q\,
	datab => \Unit0|U0|state.S_FETCH_INST~q\,
	datac => \Unit0|U0|IRld_ctrl~q\,
	datad => \Unit0|U0|Selector51~1_combout\,
	combout => \Unit0|U0|Selector51~2_combout\);

-- Location: FF_X62_Y45_N19
\Unit0|U0|IRld_ctrl\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit0|U0|Selector51~2_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U0|IRld_ctrl~q\);

-- Location: CLKCTRL_G13
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

-- Location: LCCOMB_X63_Y46_N28
\Unit0|U2|IRout[14]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U2|IRout\(14) = (GLOBAL(\Unit0|U0|IRld_ctrl~clkctrl_outclk\) & ((\Unit2|altsyncram_component|auto_generated|q_a\(14)))) # (!GLOBAL(\Unit0|U0|IRld_ctrl~clkctrl_outclk\) & (\Unit0|U2|IRout\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Unit0|U2|IRout\(14),
	datac => \Unit0|U0|IRld_ctrl~clkctrl_outclk\,
	datad => \Unit2|altsyncram_component|auto_generated|q_a\(14),
	combout => \Unit0|U2|IRout\(14));

-- Location: LCCOMB_X63_Y46_N2
\Unit0|U0|Mux1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|Mux1~5_combout\ = (\Unit0|U2|IRout\(15) & (!\Unit0|U2|IRout\(14) & (!\Unit0|U2|IRout\(13) & \Unit0|U2|IRout\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U2|IRout\(15),
	datab => \Unit0|U2|IRout\(14),
	datac => \Unit0|U2|IRout\(13),
	datad => \Unit0|U2|IRout\(12),
	combout => \Unit0|U0|Mux1~5_combout\);

-- Location: FF_X63_Y46_N3
\Unit0|U0|state.S_LONG_SAVE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit0|U0|Mux1~5_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sclr => \Unit0|U0|ALT_INV_state.S_DECODE_INST~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U0|state.S_LONG_SAVE~q\);

-- Location: LCCOMB_X61_Y45_N18
\Unit0|U0|Selector20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|Selector20~0_combout\ = (\Unit0|U0|state.S_LONG_SAVE~q\) # ((!\cpu_clk~input_o\ & \Unit0|U0|state.S_LONG_SAVE_a~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_clk~input_o\,
	datab => \Unit0|U0|state.S_LONG_SAVE~q\,
	datad => \Unit0|U0|state.S_LONG_SAVE_a~q\,
	combout => \Unit0|U0|Selector20~0_combout\);

-- Location: FF_X61_Y45_N21
\Unit0|U0|state.S_LONG_SAVE_a\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	asdata => \Unit0|U0|Selector20~0_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U0|state.S_LONG_SAVE_a~q\);

-- Location: LCCOMB_X61_Y45_N20
\Unit0|U0|WideOr1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|WideOr1~0_combout\ = (!\Unit0|U0|state.S_REG_ADDR_SAVEa~q\ & !\Unit0|U0|state.S_LONG_SAVE_a~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|state.S_REG_ADDR_SAVEa~q\,
	datac => \Unit0|U0|state.S_LONG_SAVE_a~q\,
	combout => \Unit0|U0|WideOr1~0_combout\);

-- Location: LCCOMB_X61_Y45_N8
\Unit0|U0|Selector59~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|Selector59~2_combout\ = (\Unit0|U0|state.S_SHORT_SAVEa~q\) # (((\Unit0|U0|Mwe_ctrl~q\ & \Unit0|U0|Selector59~1_combout\)) # (!\Unit0|U0|WideOr1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|state.S_SHORT_SAVEa~q\,
	datab => \Unit0|U0|WideOr1~0_combout\,
	datac => \Unit0|U0|Mwe_ctrl~q\,
	datad => \Unit0|U0|Selector59~1_combout\,
	combout => \Unit0|U0|Selector59~2_combout\);

-- Location: FF_X61_Y45_N9
\Unit0|U0|Mwe_ctrl\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit0|U0|Selector59~2_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U0|Mwe_ctrl~q\);

-- Location: LCCOMB_X62_Y46_N24
\Unit0|U0|Selector61~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|Selector61~0_combout\ = (\Unit0|U0|state.S_OUTPUT_MEMa~q\) # ((!\Unit0|U0|state.S_FETCH_INST~q\ & \Unit0|U0|oe_ctrl~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|state.S_FETCH_INST~q\,
	datac => \Unit0|U0|oe_ctrl~q\,
	datad => \Unit0|U0|state.S_OUTPUT_MEMa~q\,
	combout => \Unit0|U0|Selector61~0_combout\);

-- Location: FF_X62_Y46_N25
\Unit0|U0|oe_ctrl\ : dffeas
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
	q => \Unit0|U0|oe_ctrl~q\);

-- Location: LCCOMB_X61_Y50_N20
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

-- Location: FF_X61_Y50_N21
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
	sload => \Unit0|U1|process_0~0_combout\,
	ena => \Unit0|U1|tmp_PC~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U1|tmp_PC\(10));

-- Location: LCCOMB_X61_Y50_N24
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

-- Location: LCCOMB_X60_Y50_N16
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

-- Location: FF_X61_Y50_N25
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
	sload => \Unit0|U1|process_0~0_combout\,
	ena => \Unit0|U1|tmp_PC~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U1|tmp_PC\(12));

-- Location: LCCOMB_X67_Y50_N12
\Unit0|U3|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U3|Mux3~0_combout\ = (!\Unit0|U0|Ms_ctrl\(0) & ((\Unit0|U0|Ms_ctrl\(1) & ((\Unit1|U2|RFr1[12]~_Duplicate_1_q\))) # (!\Unit0|U0|Ms_ctrl\(1) & (\Unit0|U1|tmp_PC\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|Ms_ctrl\(1),
	datab => \Unit0|U1|tmp_PC\(12),
	datac => \Unit0|U0|Ms_ctrl\(0),
	datad => \Unit1|U2|RFr1[12]~_Duplicate_1_q\,
	combout => \Unit0|U3|Mux3~0_combout\);

-- Location: LCCOMB_X61_Y50_N26
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

-- Location: FF_X61_Y50_N27
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
	sload => \Unit0|U1|process_0~0_combout\,
	ena => \Unit0|U1|tmp_PC~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U1|tmp_PC\(13));

-- Location: LCCOMB_X65_Y49_N24
\Unit0|U3|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U3|Mux2~0_combout\ = (!\Unit0|U0|Ms_ctrl\(0) & ((\Unit0|U0|Ms_ctrl\(1) & (\Unit1|U2|RFr1[13]~_Duplicate_1_q\)) # (!\Unit0|U0|Ms_ctrl\(1) & ((\Unit0|U1|tmp_PC\(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|U2|RFr1[13]~_Duplicate_1_q\,
	datab => \Unit0|U1|tmp_PC\(13),
	datac => \Unit0|U0|Ms_ctrl\(1),
	datad => \Unit0|U0|Ms_ctrl\(0),
	combout => \Unit0|U3|Mux2~0_combout\);

-- Location: LCCOMB_X61_Y50_N28
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

-- Location: FF_X61_Y50_N29
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
	sload => \Unit0|U1|process_0~0_combout\,
	ena => \Unit0|U1|tmp_PC~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U1|tmp_PC\(14));

-- Location: LCCOMB_X67_Y51_N24
\Unit1|U2|RFr1[14]~_Duplicate_1feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|RFr1[14]~_Duplicate_1feeder_combout\ = \Unit1|U2|Mux1~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|U2|Mux1~9_combout\,
	combout => \Unit1|U2|RFr1[14]~_Duplicate_1feeder_combout\);

-- Location: FF_X67_Y51_N25
\Unit1|U2|RFr1[14]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|RFr1[14]~_Duplicate_1feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit0|U0|RFr1e_ctrl~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|RFr1[14]~_Duplicate_1_q\);

-- Location: LCCOMB_X67_Y50_N30
\Unit0|U3|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U3|Mux1~0_combout\ = (!\Unit0|U0|Ms_ctrl\(0) & ((\Unit0|U0|Ms_ctrl\(1) & ((\Unit1|U2|RFr1[14]~_Duplicate_1_q\))) # (!\Unit0|U0|Ms_ctrl\(1) & (\Unit0|U1|tmp_PC\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|Ms_ctrl\(1),
	datab => \Unit0|U1|tmp_PC\(14),
	datac => \Unit0|U0|Ms_ctrl\(0),
	datad => \Unit1|U2|RFr1[14]~_Duplicate_1_q\,
	combout => \Unit0|U3|Mux1~0_combout\);

-- Location: FF_X66_Y49_N9
\Unit1|U2|RFr1[15]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	asdata => \Unit1|U2|Mux0~9_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit0|U0|RFr1e_ctrl~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|RFr1[15]~_Duplicate_1_q\);

-- Location: LCCOMB_X61_Y50_N30
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

-- Location: FF_X61_Y50_N31
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
	sload => \Unit0|U1|process_0~0_combout\,
	ena => \Unit0|U1|tmp_PC~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U1|tmp_PC\(15));

-- Location: LCCOMB_X65_Y49_N10
\Unit0|U3|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U3|Mux0~0_combout\ = (!\Unit0|U0|Ms_ctrl\(0) & ((\Unit0|U0|Ms_ctrl\(1) & (\Unit1|U2|RFr1[15]~_Duplicate_1_q\)) # (!\Unit0|U0|Ms_ctrl\(1) & ((\Unit0|U1|tmp_PC\(15))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|Ms_ctrl\(1),
	datab => \Unit1|U2|RFr1[15]~_Duplicate_1_q\,
	datac => \Unit0|U1|tmp_PC\(15),
	datad => \Unit0|U0|Ms_ctrl\(0),
	combout => \Unit0|U3|Mux0~0_combout\);

-- Location: LCCOMB_X67_Y51_N26
\Unit1|U2|RFr1[2]~_Duplicate_1feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|RFr1[2]~_Duplicate_1feeder_combout\ = \Unit1|U2|Mux13~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|U2|Mux13~9_combout\,
	combout => \Unit1|U2|RFr1[2]~_Duplicate_1feeder_combout\);

-- Location: FF_X67_Y51_N27
\Unit1|U2|RFr1[2]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|RFr1[2]~_Duplicate_1feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit0|U0|RFr1e_ctrl~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|RFr1[2]~_Duplicate_1_q\);

-- Location: LCCOMB_X66_Y49_N20
\Unit1|U2|RFr1[8]~_Duplicate_1feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|RFr1[8]~_Duplicate_1feeder_combout\ = \Unit1|U2|Mux7~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|U2|Mux7~9_combout\,
	combout => \Unit1|U2|RFr1[8]~_Duplicate_1feeder_combout\);

-- Location: FF_X66_Y49_N21
\Unit1|U2|RFr1[8]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|RFr1[8]~_Duplicate_1feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit0|U0|RFr1e_ctrl~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|RFr1[8]~_Duplicate_1_q\);

-- Location: LCCOMB_X62_Y50_N14
\Unit1|U3|ALUz\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U3|ALUz~combout\ = (!\Unit1|U3|alu_tmp\(15) & \Unit1|U3|ALUz~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Unit1|U3|alu_tmp\(15),
	datad => \Unit1|U3|ALUz~4_combout\,
	combout => \Unit1|U3|ALUz~combout\);

-- Location: LCCOMB_X63_Y50_N8
\Unit0|U0|Selector60~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|Selector60~0_combout\ = (\Unit0|U0|state.S_JUMP_Z~q\) # ((!\Unit0|U0|state.S_FETCH_INST~q\ & (\Unit0|U0|jmpen_ctrl~q\ & !\Unit0|U0|state.S_JUMP_Zb~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|state.S_FETCH_INST~q\,
	datab => \Unit0|U0|state.S_JUMP_Z~q\,
	datac => \Unit0|U0|jmpen_ctrl~q\,
	datad => \Unit0|U0|state.S_JUMP_Zb~q\,
	combout => \Unit0|U0|Selector60~0_combout\);

-- Location: FF_X63_Y50_N9
\Unit0|U0|jmpen_ctrl\ : dffeas
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
	q => \Unit0|U0|jmpen_ctrl~q\);

-- Location: LCCOMB_X61_Y45_N24
\Unit0|U0|Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|Selector11~0_combout\ = (\Unit0|U0|state.S_SHORT_SAVE~q\) # ((!\cpu_clk~input_o\ & \Unit0|U0|state.S_SHORT_SAVEa~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_clk~input_o\,
	datab => \Unit0|U0|state.S_SHORT_SAVEa~q\,
	datad => \Unit0|U0|state.S_SHORT_SAVE~q\,
	combout => \Unit0|U0|Selector11~0_combout\);

-- Location: FF_X61_Y45_N11
\Unit0|U0|state.S_SHORT_SAVEa\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	asdata => \Unit0|U0|Selector11~0_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U0|state.S_SHORT_SAVEa~q\);

-- Location: FF_X61_Y45_N1
\Unit0|U0|state.S_SHORT_SAVE_wait\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	asdata => \Unit0|U0|state.S_SHORT_SAVEa~q\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cpu_clk~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U0|state.S_SHORT_SAVE_wait~q\);

-- Location: LCCOMB_X61_Y45_N0
\Unit0|U0|WideOr5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|WideOr5~1_combout\ = (\Unit0|U0|state.S_MULT~q\) # ((\Unit0|U0|state.S_FETCH_INSTb~q\) # ((\Unit0|U0|state.S_SHORT_SAVE_wait~q\) # (\Unit0|U0|state.S_OUTPUT_MEM_wait~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|state.S_MULT~q\,
	datab => \Unit0|U0|state.S_FETCH_INSTb~q\,
	datac => \Unit0|U0|state.S_SHORT_SAVE_wait~q\,
	datad => \Unit0|U0|state.S_OUTPUT_MEM_wait~q\,
	combout => \Unit0|U0|WideOr5~1_combout\);

-- Location: LCCOMB_X61_Y46_N0
\Unit0|U0|WideOr5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|WideOr5~2_combout\ = (\Unit0|U0|state.S_HALT~q\) # ((\Unit0|U0|WideOr5~1_combout\) # ((\Unit0|U0|state.S_SUBTa~q\) # (!\Unit0|U0|WideOr5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|state.S_HALT~q\,
	datab => \Unit0|U0|WideOr5~1_combout\,
	datac => \Unit0|U0|state.S_SUBTa~q\,
	datad => \Unit0|U0|WideOr5~0_combout\,
	combout => \Unit0|U0|WideOr5~2_combout\);

-- Location: FF_X62_Y45_N11
\Unit0|U0|state.S_ADDb\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	asdata => \Unit0|U0|state.S_ADDa~q\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U0|state.S_ADDb~q\);

-- Location: LCCOMB_X62_Y45_N28
\Unit0|U0|WideOr3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|WideOr3~0_combout\ = (!\Unit0|U0|state.S_JUMP_Za~q\ & (!\Unit0|U0|state.S_SHORT_SAVE~q\ & (!\Unit0|U0|state.S_FETCH_INST_wait~q\ & !\Unit0|U0|state.S_ADDb~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|state.S_JUMP_Za~q\,
	datab => \Unit0|U0|state.S_SHORT_SAVE~q\,
	datac => \Unit0|U0|state.S_FETCH_INST_wait~q\,
	datad => \Unit0|U0|state.S_ADDb~q\,
	combout => \Unit0|U0|WideOr3~0_combout\);

-- Location: LCCOMB_X62_Y48_N0
\Unit0|U0|WideOr5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|WideOr5~3_combout\ = (\Unit0|U0|state.S_INIT~q\ & (!\Unit0|U0|state.S_ADD~q\ & (!\Unit0|U0|state.S_MULTb~q\ & !\Unit0|U0|state.S_SHORT_LOADa~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|state.S_INIT~q\,
	datab => \Unit0|U0|state.S_ADD~q\,
	datac => \Unit0|U0|state.S_MULTb~q\,
	datad => \Unit0|U0|state.S_SHORT_LOADa~q\,
	combout => \Unit0|U0|WideOr5~3_combout\);

-- Location: LCCOMB_X61_Y46_N24
\Unit0|U0|WideOr5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|WideOr5~combout\ = (\Unit0|U0|WideOr1~3_combout\ & (!\Unit0|U0|WideOr5~2_combout\ & (\Unit0|U0|WideOr3~0_combout\ & \Unit0|U0|WideOr5~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|WideOr1~3_combout\,
	datab => \Unit0|U0|WideOr5~2_combout\,
	datac => \Unit0|U0|WideOr3~0_combout\,
	datad => \Unit0|U0|WideOr5~3_combout\,
	combout => \Unit0|U0|WideOr5~combout\);

-- Location: FF_X61_Y46_N25
\Unit0|U0|cur_state[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit0|U0|WideOr5~combout\,
	ena => \ALT_INV_cpu_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U0|cur_state\(0));

-- Location: LCCOMB_X61_Y45_N6
\Unit0|U0|Selector16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|Selector16~0_combout\ = (\Unit0|U0|state.S_LONG_LOAD_wait~q\ & \cpu_clk~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Unit0|U0|state.S_LONG_LOAD_wait~q\,
	datad => \cpu_clk~input_o\,
	combout => \Unit0|U0|Selector16~0_combout\);

-- Location: FF_X62_Y48_N27
\Unit0|U0|state.S_LONG_LOAD_a\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	asdata => \Unit0|U0|Selector16~0_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U0|state.S_LONG_LOAD_a~q\);

-- Location: FF_X62_Y48_N3
\Unit0|U0|state.S_LONG_LOAD_b\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	asdata => \Unit0|U0|state.S_LONG_LOAD_a~q\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U0|state.S_LONG_LOAD_b~q\);

-- Location: LCCOMB_X62_Y48_N2
\Unit0|U0|Selector53~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|Selector53~0_combout\ = (!\Unit0|U0|state.S_SHORT_LOADb~q\ & (!\Unit0|U0|state.S_FETCH_INST~q\ & !\Unit0|U0|state.S_LONG_LOAD_b~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|state.S_SHORT_LOADb~q\,
	datab => \Unit0|U0|state.S_FETCH_INST~q\,
	datac => \Unit0|U0|state.S_LONG_LOAD_b~q\,
	combout => \Unit0|U0|Selector53~0_combout\);

-- Location: LCCOMB_X62_Y48_N30
\Unit0|U0|WideOr3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|WideOr3~2_combout\ = (\Unit0|U0|WideOr3~1_combout\ & (\Unit0|U0|Selector53~0_combout\ & (!\Unit0|U0|state.S_REG_ADDR_LOADb~q\ & \Unit0|U0|WideOr5~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|WideOr3~1_combout\,
	datab => \Unit0|U0|Selector53~0_combout\,
	datac => \Unit0|U0|state.S_REG_ADDR_LOADb~q\,
	datad => \Unit0|U0|WideOr5~3_combout\,
	combout => \Unit0|U0|WideOr3~2_combout\);

-- Location: LCCOMB_X62_Y45_N26
\Unit0|U0|WideOr2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|WideOr2~0_combout\ = (!\Unit0|U0|state.S_DECODE_INST~q\ & (!\Unit0|U0|state.S_LONG_SAVE_b~q\ & (!\Unit0|U0|state.S_FETCH_INSTb~q\ & !\Unit0|U0|state.S_SUBTb~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|state.S_DECODE_INST~q\,
	datab => \Unit0|U0|state.S_LONG_SAVE_b~q\,
	datac => \Unit0|U0|state.S_FETCH_INSTb~q\,
	datad => \Unit0|U0|state.S_SUBTb~q\,
	combout => \Unit0|U0|WideOr2~0_combout\);

-- Location: LCCOMB_X61_Y46_N30
\Unit0|U0|WideOr4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|WideOr4~1_combout\ = (\Unit0|U0|state.S_HALT~q\) # ((\Unit0|U0|state.S_SHORT_SAVEb~q\) # ((\Unit0|U0|state.S_SUBTa~q\) # (\Unit0|U0|state.S_REG_ADDR_SAVEb~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|state.S_HALT~q\,
	datab => \Unit0|U0|state.S_SHORT_SAVEb~q\,
	datac => \Unit0|U0|state.S_SUBTa~q\,
	datad => \Unit0|U0|state.S_REG_ADDR_SAVEb~q\,
	combout => \Unit0|U0|WideOr4~1_combout\);

-- Location: LCCOMB_X61_Y46_N2
\Unit0|U0|WideOr4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|WideOr4~combout\ = (!\Unit0|U0|WideOr4~0_combout\ & (\Unit0|U0|WideOr3~2_combout\ & (\Unit0|U0|WideOr2~0_combout\ & !\Unit0|U0|WideOr4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|WideOr4~0_combout\,
	datab => \Unit0|U0|WideOr3~2_combout\,
	datac => \Unit0|U0|WideOr2~0_combout\,
	datad => \Unit0|U0|WideOr4~1_combout\,
	combout => \Unit0|U0|WideOr4~combout\);

-- Location: FF_X61_Y46_N3
\Unit0|U0|cur_state[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit0|U0|WideOr4~combout\,
	ena => \ALT_INV_cpu_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U0|cur_state\(1));

-- Location: LCCOMB_X61_Y45_N16
\Unit0|U0|WideOr3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|WideOr3~3_combout\ = (\Unit0|U0|state.S_SHORT_SAVEa~q\) # ((\Unit0|U0|state.S_JUMP_Zb~q\) # ((\Unit0|U0|state.S_REG_ADDR_SAVEa~q\) # (\Unit0|U0|state.S_LONG_SAVE_a~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|state.S_SHORT_SAVEa~q\,
	datab => \Unit0|U0|state.S_JUMP_Zb~q\,
	datac => \Unit0|U0|state.S_REG_ADDR_SAVEa~q\,
	datad => \Unit0|U0|state.S_LONG_SAVE_a~q\,
	combout => \Unit0|U0|WideOr3~3_combout\);

-- Location: LCCOMB_X61_Y46_N4
\Unit0|U0|WideOr3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|WideOr3~combout\ = (!\Unit0|U0|WideOr3~4_combout\ & (\Unit0|U0|WideOr3~2_combout\ & (\Unit0|U0|WideOr3~0_combout\ & !\Unit0|U0|WideOr3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|WideOr3~4_combout\,
	datab => \Unit0|U0|WideOr3~2_combout\,
	datac => \Unit0|U0|WideOr3~0_combout\,
	datad => \Unit0|U0|WideOr3~3_combout\,
	combout => \Unit0|U0|WideOr3~combout\);

-- Location: FF_X61_Y46_N5
\Unit0|U0|cur_state[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit0|U0|WideOr3~combout\,
	ena => \ALT_INV_cpu_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U0|cur_state\(2));

-- Location: LCCOMB_X62_Y45_N4
\Unit0|U0|WideOr2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|WideOr2~1_combout\ = (\Unit0|U0|state.S_LONG_SAVE~q\) # (((\Unit0|U0|state.S_FETCH_INSTa~q\) # (\Unit0|U0|state.S_LONG_LOAD_a~q\)) # (!\Unit0|U0|state.S_INIT~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|state.S_LONG_SAVE~q\,
	datab => \Unit0|U0|state.S_INIT~q\,
	datac => \Unit0|U0|state.S_FETCH_INSTa~q\,
	datad => \Unit0|U0|state.S_LONG_LOAD_a~q\,
	combout => \Unit0|U0|WideOr2~1_combout\);

-- Location: LCCOMB_X62_Y45_N10
\Unit0|U0|WideOr2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|WideOr2~2_combout\ = ((\Unit0|U0|WideOr2~1_combout\) # ((\Unit0|U0|state.S_ADDb~q\) # (\Unit0|U0|state.S_LONG_LOAD_b~q\))) # (!\Unit0|U0|WideOr2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|WideOr2~0_combout\,
	datab => \Unit0|U0|WideOr2~1_combout\,
	datac => \Unit0|U0|state.S_ADDb~q\,
	datad => \Unit0|U0|state.S_LONG_LOAD_b~q\,
	combout => \Unit0|U0|WideOr2~2_combout\);

-- Location: LCCOMB_X69_Y46_N0
\Unit0|U0|WideOr2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|WideOr2~combout\ = (\Unit0|U0|Selector56~1_combout\ & (\Unit0|U0|WideOr11~1_combout\ & (\Unit0|U0|WideOr0~0_combout\ & !\Unit0|U0|WideOr2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|Selector56~1_combout\,
	datab => \Unit0|U0|WideOr11~1_combout\,
	datac => \Unit0|U0|WideOr0~0_combout\,
	datad => \Unit0|U0|WideOr2~2_combout\,
	combout => \Unit0|U0|WideOr2~combout\);

-- Location: FF_X69_Y46_N1
\Unit0|U0|cur_state[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit0|U0|WideOr2~combout\,
	ena => \ALT_INV_cpu_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U0|cur_state\(3));

-- Location: LCCOMB_X61_Y46_N22
\Unit0|U0|WideOr1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|WideOr1~combout\ = (((\Unit0|U0|state.S_REG_ADDR_LOAD_wait~q\) # (!\Unit0|U0|WideOr1~0_combout\)) # (!\Unit0|U0|WideOr1~5_combout\)) # (!\Unit0|U0|WideOr1~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|WideOr1~3_combout\,
	datab => \Unit0|U0|WideOr1~5_combout\,
	datac => \Unit0|U0|state.S_REG_ADDR_LOAD_wait~q\,
	datad => \Unit0|U0|WideOr1~0_combout\,
	combout => \Unit0|U0|WideOr1~combout\);

-- Location: FF_X61_Y46_N23
\Unit0|U0|cur_state[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit0|U0|WideOr1~combout\,
	ena => \ALT_INV_cpu_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U0|cur_state\(4));

-- Location: LCCOMB_X61_Y45_N2
\Unit0|U0|WideOr0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|WideOr0~3_combout\ = (\Unit0|U0|state.S_HALT~q\) # ((\Unit0|U0|state.S_OUTPUT_MEM~q\) # ((\Unit0|U0|state.S_OUTPUT_MEM_wait~q\) # (\Unit0|U0|state.S_JUMP_Za~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|state.S_HALT~q\,
	datab => \Unit0|U0|state.S_OUTPUT_MEM~q\,
	datac => \Unit0|U0|state.S_OUTPUT_MEM_wait~q\,
	datad => \Unit0|U0|state.S_JUMP_Za~q\,
	combout => \Unit0|U0|WideOr0~3_combout\);

-- Location: LCCOMB_X69_Y46_N18
\Unit0|U0|WideOr0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|WideOr0~combout\ = (\Unit0|U0|WideOr0~2_combout\) # ((\Unit0|U0|state.S_JUMP_Z~q\) # (\Unit0|U0|WideOr0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit0|U0|WideOr0~2_combout\,
	datab => \Unit0|U0|state.S_JUMP_Z~q\,
	datac => \Unit0|U0|WideOr0~3_combout\,
	combout => \Unit0|U0|WideOr0~combout\);

-- Location: FF_X69_Y46_N19
\Unit0|U0|cur_state[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit0|U0|WideOr0~combout\,
	ena => \ALT_INV_cpu_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U0|cur_state\(5));

-- Location: LCCOMB_X62_Y46_N28
\Unit0|U0|cur_state~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|cur_state~0_combout\ = (\Unit0|U0|state.S_LONG_IMM_LOADa~q\) # (\Unit0|U0|state.S_LONG_IMM_LOAD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Unit0|U0|state.S_LONG_IMM_LOADa~q\,
	datac => \Unit0|U0|state.S_LONG_IMM_LOAD~q\,
	combout => \Unit0|U0|cur_state~0_combout\);

-- Location: LCCOMB_X62_Y46_N10
\Unit0|U0|cur_state[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit0|U0|cur_state[6]~feeder_combout\ = \Unit0|U0|cur_state~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit0|U0|cur_state~0_combout\,
	combout => \Unit0|U0|cur_state[6]~feeder_combout\);

-- Location: FF_X62_Y46_N11
\Unit0|U0|cur_state[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit0|U0|cur_state[6]~feeder_combout\,
	ena => \ALT_INV_cpu_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U0|cur_state\(6));

-- Location: FF_X62_Y46_N29
\Unit0|U0|cur_state[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit0|U0|cur_state~0_combout\,
	ena => \ALT_INV_cpu_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit0|U0|cur_state\(7));

-- Location: FF_X66_Y54_N25
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
	ena => \Unit1|U2|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[0][4]~q\);

-- Location: FF_X66_Y54_N21
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
	ena => \Unit1|U2|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[0][14]~q\);

-- Location: LCCOMB_X62_Y52_N26
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

-- Location: FF_X62_Y52_N27
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
	ena => \Unit1|U2|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[1][2]~q\);

-- Location: LCCOMB_X66_Y50_N16
\Unit1|U2|tmp_rf[1][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[1][4]~feeder_combout\ = \Unit1|U1|Mux11~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Unit1|U1|Mux11~1_combout\,
	combout => \Unit1|U2|tmp_rf[1][4]~feeder_combout\);

-- Location: FF_X66_Y50_N17
\Unit1|U2|tmp_rf[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[1][4]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[1][4]~q\);

-- Location: FF_X68_Y53_N17
\Unit1|U2|tmp_rf[1][14]\ : dffeas
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
	q => \Unit1|U2|tmp_rf[1][14]~q\);

-- Location: FF_X65_Y52_N31
\Unit1|U2|tmp_rf[2][4]\ : dffeas
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
	ena => \Unit1|U2|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[2][4]~q\);

-- Location: LCCOMB_X65_Y52_N12
\Unit1|U2|tmp_rf[2][9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[2][9]~feeder_combout\ = \Unit1|U1|Mux6~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|U1|Mux6~1_combout\,
	combout => \Unit1|U2|tmp_rf[2][9]~feeder_combout\);

-- Location: FF_X65_Y52_N13
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
	ena => \Unit1|U2|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[2][9]~q\);

-- Location: LCCOMB_X67_Y54_N30
\Unit1|U2|tmp_rf[2][10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[2][10]~feeder_combout\ = \Unit1|U1|Mux5~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|U1|Mux5~1_combout\,
	combout => \Unit1|U2|tmp_rf[2][10]~feeder_combout\);

-- Location: FF_X67_Y54_N31
\Unit1|U2|tmp_rf[2][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[2][10]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[2][10]~q\);

-- Location: LCCOMB_X69_Y53_N26
\Unit1|U2|tmp_rf[2][14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[2][14]~feeder_combout\ = \Unit1|U1|Mux1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Unit1|U1|Mux1~0_combout\,
	combout => \Unit1|U2|tmp_rf[2][14]~feeder_combout\);

-- Location: FF_X69_Y53_N27
\Unit1|U2|tmp_rf[2][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[2][14]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[2][14]~q\);

-- Location: FF_X63_Y51_N17
\Unit1|U2|tmp_rf[3][1]\ : dffeas
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
	ena => \Unit1|U2|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[3][1]~q\);

-- Location: FF_X63_Y51_N13
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
	ena => \Unit1|U2|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[3][3]~q\);

-- Location: FF_X66_Y54_N17
\Unit1|U2|tmp_rf[3][4]\ : dffeas
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
	q => \Unit1|U2|tmp_rf[3][4]~q\);

-- Location: LCCOMB_X66_Y53_N8
\Unit1|U2|tmp_rf[3][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[3][5]~feeder_combout\ = \Unit1|U1|Mux10~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Unit1|U1|Mux10~1_combout\,
	combout => \Unit1|U2|tmp_rf[3][5]~feeder_combout\);

-- Location: FF_X66_Y53_N9
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
	ena => \Unit1|U2|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[3][5]~q\);

-- Location: LCCOMB_X66_Y53_N12
\Unit1|U2|tmp_rf[3][9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[3][9]~feeder_combout\ = \Unit1|U1|Mux6~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|U1|Mux6~1_combout\,
	combout => \Unit1|U2|tmp_rf[3][9]~feeder_combout\);

-- Location: FF_X66_Y53_N13
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
	ena => \Unit1|U2|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[3][9]~q\);

-- Location: FF_X66_Y54_N13
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
	ena => \Unit1|U2|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[3][14]~q\);

-- Location: FF_X63_Y51_N9
\Unit1|U2|tmp_rf[3][15]\ : dffeas
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
	ena => \Unit1|U2|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[3][15]~q\);

-- Location: LCCOMB_X62_Y53_N28
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

-- Location: FF_X62_Y53_N29
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
	ena => \Unit1|U2|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[4][2]~q\);

-- Location: LCCOMB_X67_Y53_N10
\Unit1|U2|tmp_rf[4][8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[4][8]~feeder_combout\ = \Unit1|U1|Mux7~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|U1|Mux7~1_combout\,
	combout => \Unit1|U2|tmp_rf[4][8]~feeder_combout\);

-- Location: FF_X67_Y53_N11
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
	ena => \Unit1|U2|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[4][8]~q\);

-- Location: LCCOMB_X67_Y53_N30
\Unit1|U2|tmp_rf[4][10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[4][10]~feeder_combout\ = \Unit1|U1|Mux5~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Unit1|U1|Mux5~1_combout\,
	combout => \Unit1|U2|tmp_rf[4][10]~feeder_combout\);

-- Location: FF_X67_Y53_N31
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
	ena => \Unit1|U2|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[4][10]~q\);

-- Location: FF_X62_Y51_N5
\Unit1|U2|tmp_rf[5][2]\ : dffeas
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
	ena => \Unit1|U2|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[5][2]~q\);

-- Location: FF_X68_Y53_N13
\Unit1|U2|tmp_rf[6][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	asdata => \Unit1|U1|Mux6~1_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|U2|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[6][9]~q\);

-- Location: LCCOMB_X68_Y53_N24
\Unit1|U2|tmp_rf[6][11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[6][11]~feeder_combout\ = \Unit1|U1|Mux4~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Unit1|U1|Mux4~1_combout\,
	combout => \Unit1|U2|tmp_rf[6][11]~feeder_combout\);

-- Location: FF_X68_Y53_N25
\Unit1|U2|tmp_rf[6][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[6][11]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[6][11]~q\);

-- Location: FF_X67_Y53_N13
\Unit1|U2|tmp_rf[7][5]\ : dffeas
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
	ena => \Unit1|U2|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[7][5]~q\);

-- Location: LCCOMB_X67_Y53_N22
\Unit1|U2|tmp_rf[7][8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[7][8]~feeder_combout\ = \Unit1|U1|Mux7~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|U1|Mux7~1_combout\,
	combout => \Unit1|U2|tmp_rf[7][8]~feeder_combout\);

-- Location: FF_X67_Y53_N23
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

-- Location: FF_X67_Y53_N27
\Unit1|U2|tmp_rf[7][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	asdata => \Unit1|U1|Mux5~1_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|U2|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[7][10]~q\);

-- Location: LCCOMB_X66_Y51_N12
\Unit1|U2|tmp_rf[8][9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[8][9]~feeder_combout\ = \Unit1|U1|Mux6~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|U1|Mux6~1_combout\,
	combout => \Unit1|U2|tmp_rf[8][9]~feeder_combout\);

-- Location: FF_X66_Y51_N13
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
	ena => \Unit1|U2|Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[8][9]~q\);

-- Location: LCCOMB_X63_Y53_N28
\Unit1|U2|tmp_rf[8][10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[8][10]~feeder_combout\ = \Unit1|U1|Mux5~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|U1|Mux5~1_combout\,
	combout => \Unit1|U2|tmp_rf[8][10]~feeder_combout\);

-- Location: FF_X63_Y53_N29
\Unit1|U2|tmp_rf[8][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[8][10]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[8][10]~q\);

-- Location: FF_X68_Y51_N15
\Unit1|U2|tmp_rf[8][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U1|Mux3~0_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[8][12]~q\);

-- Location: LCCOMB_X66_Y51_N6
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

-- Location: FF_X66_Y51_N7
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
	ena => \Unit1|U2|Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[8][13]~q\);

-- Location: LCCOMB_X68_Y51_N0
\Unit1|U2|tmp_rf[8][14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[8][14]~feeder_combout\ = \Unit1|U1|Mux1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|U1|Mux1~0_combout\,
	combout => \Unit1|U2|tmp_rf[8][14]~feeder_combout\);

-- Location: FF_X68_Y51_N1
\Unit1|U2|tmp_rf[8][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	d => \Unit1|U2|tmp_rf[8][14]~feeder_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	ena => \Unit1|U2|Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[8][14]~q\);

-- Location: LCCOMB_X70_Y53_N4
\Unit1|U2|tmp_rf[9][10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[9][10]~feeder_combout\ = \Unit1|U1|Mux5~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Unit1|U1|Mux5~1_combout\,
	combout => \Unit1|U2|tmp_rf[9][10]~feeder_combout\);

-- Location: FF_X70_Y53_N5
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
	ena => \Unit1|U2|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[9][10]~q\);

-- Location: LCCOMB_X67_Y52_N20
\Unit1|U2|tmp_rf[10][9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[10][9]~feeder_combout\ = \Unit1|U1|Mux6~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|U1|Mux6~1_combout\,
	combout => \Unit1|U2|tmp_rf[10][9]~feeder_combout\);

-- Location: FF_X67_Y52_N21
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
	ena => \Unit1|U2|Decoder0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[10][9]~q\);

-- Location: LCCOMB_X65_Y51_N6
\Unit1|U2|tmp_rf[10][10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|U2|tmp_rf[10][10]~feeder_combout\ = \Unit1|U1|Mux5~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Unit1|U1|Mux5~1_combout\,
	combout => \Unit1|U2|tmp_rf[10][10]~feeder_combout\);

-- Location: FF_X65_Y51_N7
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
	ena => \Unit1|U2|Decoder0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[10][10]~q\);

-- Location: LCCOMB_X68_Y54_N30
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

-- Location: FF_X68_Y54_N31
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
	ena => \Unit1|U2|Decoder0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[10][15]~q\);

-- Location: FF_X68_Y50_N1
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
	ena => \Unit1|U2|Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[11][7]~q\);

-- Location: FF_X65_Y51_N19
\Unit1|U2|tmp_rf[11][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	asdata => \Unit1|U1|Mux5~1_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|U2|Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[11][10]~q\);

-- Location: FF_X67_Y49_N7
\Unit1|U2|tmp_rf[11][13]\ : dffeas
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
	ena => \Unit1|U2|Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[11][13]~q\);

-- Location: FF_X65_Y51_N21
\Unit1|U2|tmp_rf[11][14]\ : dffeas
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
	q => \Unit1|U2|tmp_rf[11][14]~q\);

-- Location: FF_X62_Y53_N23
\Unit1|U2|tmp_rf[12][2]\ : dffeas
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
	ena => \Unit1|U2|Decoder0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[12][2]~q\);

-- Location: FF_X69_Y53_N13
\Unit1|U2|tmp_rf[13][2]\ : dffeas
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
	q => \Unit1|U2|tmp_rf[13][2]~q\);

-- Location: FF_X65_Y52_N15
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
	ena => \Unit1|U2|Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[14][5]~q\);

-- Location: FF_X67_Y54_N25
\Unit1|U2|tmp_rf[14][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpu_clk~inputclkctrl_outclk\,
	asdata => \Unit1|U1|Mux6~1_combout\,
	clrn => \ALT_INV_cpu_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Unit1|U2|Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[14][9]~q\);

-- Location: FF_X67_Y52_N19
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

-- Location: FF_X62_Y50_N13
\Unit1|U2|tmp_rf[15][15]\ : dffeas
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
	ena => \Unit1|U2|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|U2|tmp_rf[15][15]~q\);

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

ww_D_ALUs_s(2) <= \D_ALUs_s[2]~output_o\;

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

ww_D_cur_state(4) <= \D_cur_state[4]~output_o\;

ww_D_cur_state(5) <= \D_cur_state[5]~output_o\;

ww_D_cur_state(6) <= \D_cur_state[6]~output_o\;

ww_D_cur_state(7) <= \D_cur_state[7]~output_o\;

ww_D_big_addr <= \D_big_addr~output_o\;

ww_D_main_mem_status <= \D_main_mem_status~output_o\;

ww_D_main_mem_clk <= \D_main_mem_clk~output_o\;

ww_D_rf0(0) <= \D_rf0[0]~output_o\;

ww_D_rf0(1) <= \D_rf0[1]~output_o\;

ww_D_rf0(2) <= \D_rf0[2]~output_o\;

ww_D_rf0(3) <= \D_rf0[3]~output_o\;

ww_D_rf0(4) <= \D_rf0[4]~output_o\;

ww_D_rf0(5) <= \D_rf0[5]~output_o\;

ww_D_rf0(6) <= \D_rf0[6]~output_o\;

ww_D_rf0(7) <= \D_rf0[7]~output_o\;

ww_D_rf0(8) <= \D_rf0[8]~output_o\;

ww_D_rf0(9) <= \D_rf0[9]~output_o\;

ww_D_rf0(10) <= \D_rf0[10]~output_o\;

ww_D_rf0(11) <= \D_rf0[11]~output_o\;

ww_D_rf0(12) <= \D_rf0[12]~output_o\;

ww_D_rf0(13) <= \D_rf0[13]~output_o\;

ww_D_rf0(14) <= \D_rf0[14]~output_o\;

ww_D_rf0(15) <= \D_rf0[15]~output_o\;

ww_D_rf1(0) <= \D_rf1[0]~output_o\;

ww_D_rf1(1) <= \D_rf1[1]~output_o\;

ww_D_rf1(2) <= \D_rf1[2]~output_o\;

ww_D_rf1(3) <= \D_rf1[3]~output_o\;

ww_D_rf1(4) <= \D_rf1[4]~output_o\;

ww_D_rf1(5) <= \D_rf1[5]~output_o\;

ww_D_rf1(6) <= \D_rf1[6]~output_o\;

ww_D_rf1(7) <= \D_rf1[7]~output_o\;

ww_D_rf1(8) <= \D_rf1[8]~output_o\;

ww_D_rf1(9) <= \D_rf1[9]~output_o\;

ww_D_rf1(10) <= \D_rf1[10]~output_o\;

ww_D_rf1(11) <= \D_rf1[11]~output_o\;

ww_D_rf1(12) <= \D_rf1[12]~output_o\;

ww_D_rf1(13) <= \D_rf1[13]~output_o\;

ww_D_rf1(14) <= \D_rf1[14]~output_o\;

ww_D_rf1(15) <= \D_rf1[15]~output_o\;

ww_D_rf2(0) <= \D_rf2[0]~output_o\;

ww_D_rf2(1) <= \D_rf2[1]~output_o\;

ww_D_rf2(2) <= \D_rf2[2]~output_o\;

ww_D_rf2(3) <= \D_rf2[3]~output_o\;

ww_D_rf2(4) <= \D_rf2[4]~output_o\;

ww_D_rf2(5) <= \D_rf2[5]~output_o\;

ww_D_rf2(6) <= \D_rf2[6]~output_o\;

ww_D_rf2(7) <= \D_rf2[7]~output_o\;

ww_D_rf2(8) <= \D_rf2[8]~output_o\;

ww_D_rf2(9) <= \D_rf2[9]~output_o\;

ww_D_rf2(10) <= \D_rf2[10]~output_o\;

ww_D_rf2(11) <= \D_rf2[11]~output_o\;

ww_D_rf2(12) <= \D_rf2[12]~output_o\;

ww_D_rf2(13) <= \D_rf2[13]~output_o\;

ww_D_rf2(14) <= \D_rf2[14]~output_o\;

ww_D_rf2(15) <= \D_rf2[15]~output_o\;

ww_D_rf3(0) <= \D_rf3[0]~output_o\;

ww_D_rf3(1) <= \D_rf3[1]~output_o\;

ww_D_rf3(2) <= \D_rf3[2]~output_o\;

ww_D_rf3(3) <= \D_rf3[3]~output_o\;

ww_D_rf3(4) <= \D_rf3[4]~output_o\;

ww_D_rf3(5) <= \D_rf3[5]~output_o\;

ww_D_rf3(6) <= \D_rf3[6]~output_o\;

ww_D_rf3(7) <= \D_rf3[7]~output_o\;

ww_D_rf3(8) <= \D_rf3[8]~output_o\;

ww_D_rf3(9) <= \D_rf3[9]~output_o\;

ww_D_rf3(10) <= \D_rf3[10]~output_o\;

ww_D_rf3(11) <= \D_rf3[11]~output_o\;

ww_D_rf3(12) <= \D_rf3[12]~output_o\;

ww_D_rf3(13) <= \D_rf3[13]~output_o\;

ww_D_rf3(14) <= \D_rf3[14]~output_o\;

ww_D_rf3(15) <= \D_rf3[15]~output_o\;

ww_D_rf4(0) <= \D_rf4[0]~output_o\;

ww_D_rf4(1) <= \D_rf4[1]~output_o\;

ww_D_rf4(2) <= \D_rf4[2]~output_o\;

ww_D_rf4(3) <= \D_rf4[3]~output_o\;

ww_D_rf4(4) <= \D_rf4[4]~output_o\;

ww_D_rf4(5) <= \D_rf4[5]~output_o\;

ww_D_rf4(6) <= \D_rf4[6]~output_o\;

ww_D_rf4(7) <= \D_rf4[7]~output_o\;

ww_D_rf4(8) <= \D_rf4[8]~output_o\;

ww_D_rf4(9) <= \D_rf4[9]~output_o\;

ww_D_rf4(10) <= \D_rf4[10]~output_o\;

ww_D_rf4(11) <= \D_rf4[11]~output_o\;

ww_D_rf4(12) <= \D_rf4[12]~output_o\;

ww_D_rf4(13) <= \D_rf4[13]~output_o\;

ww_D_rf4(14) <= \D_rf4[14]~output_o\;

ww_D_rf4(15) <= \D_rf4[15]~output_o\;

ww_D_rf5(0) <= \D_rf5[0]~output_o\;

ww_D_rf5(1) <= \D_rf5[1]~output_o\;

ww_D_rf5(2) <= \D_rf5[2]~output_o\;

ww_D_rf5(3) <= \D_rf5[3]~output_o\;

ww_D_rf5(4) <= \D_rf5[4]~output_o\;

ww_D_rf5(5) <= \D_rf5[5]~output_o\;

ww_D_rf5(6) <= \D_rf5[6]~output_o\;

ww_D_rf5(7) <= \D_rf5[7]~output_o\;

ww_D_rf5(8) <= \D_rf5[8]~output_o\;

ww_D_rf5(9) <= \D_rf5[9]~output_o\;

ww_D_rf5(10) <= \D_rf5[10]~output_o\;

ww_D_rf5(11) <= \D_rf5[11]~output_o\;

ww_D_rf5(12) <= \D_rf5[12]~output_o\;

ww_D_rf5(13) <= \D_rf5[13]~output_o\;

ww_D_rf5(14) <= \D_rf5[14]~output_o\;

ww_D_rf5(15) <= \D_rf5[15]~output_o\;

ww_D_rf6(0) <= \D_rf6[0]~output_o\;

ww_D_rf6(1) <= \D_rf6[1]~output_o\;

ww_D_rf6(2) <= \D_rf6[2]~output_o\;

ww_D_rf6(3) <= \D_rf6[3]~output_o\;

ww_D_rf6(4) <= \D_rf6[4]~output_o\;

ww_D_rf6(5) <= \D_rf6[5]~output_o\;

ww_D_rf6(6) <= \D_rf6[6]~output_o\;

ww_D_rf6(7) <= \D_rf6[7]~output_o\;

ww_D_rf6(8) <= \D_rf6[8]~output_o\;

ww_D_rf6(9) <= \D_rf6[9]~output_o\;

ww_D_rf6(10) <= \D_rf6[10]~output_o\;

ww_D_rf6(11) <= \D_rf6[11]~output_o\;

ww_D_rf6(12) <= \D_rf6[12]~output_o\;

ww_D_rf6(13) <= \D_rf6[13]~output_o\;

ww_D_rf6(14) <= \D_rf6[14]~output_o\;

ww_D_rf6(15) <= \D_rf6[15]~output_o\;

ww_D_rf7(0) <= \D_rf7[0]~output_o\;

ww_D_rf7(1) <= \D_rf7[1]~output_o\;

ww_D_rf7(2) <= \D_rf7[2]~output_o\;

ww_D_rf7(3) <= \D_rf7[3]~output_o\;

ww_D_rf7(4) <= \D_rf7[4]~output_o\;

ww_D_rf7(5) <= \D_rf7[5]~output_o\;

ww_D_rf7(6) <= \D_rf7[6]~output_o\;

ww_D_rf7(7) <= \D_rf7[7]~output_o\;

ww_D_rf7(8) <= \D_rf7[8]~output_o\;

ww_D_rf7(9) <= \D_rf7[9]~output_o\;

ww_D_rf7(10) <= \D_rf7[10]~output_o\;

ww_D_rf7(11) <= \D_rf7[11]~output_o\;

ww_D_rf7(12) <= \D_rf7[12]~output_o\;

ww_D_rf7(13) <= \D_rf7[13]~output_o\;

ww_D_rf7(14) <= \D_rf7[14]~output_o\;

ww_D_rf7(15) <= \D_rf7[15]~output_o\;

ww_D_rf8(0) <= \D_rf8[0]~output_o\;

ww_D_rf8(1) <= \D_rf8[1]~output_o\;

ww_D_rf8(2) <= \D_rf8[2]~output_o\;

ww_D_rf8(3) <= \D_rf8[3]~output_o\;

ww_D_rf8(4) <= \D_rf8[4]~output_o\;

ww_D_rf8(5) <= \D_rf8[5]~output_o\;

ww_D_rf8(6) <= \D_rf8[6]~output_o\;

ww_D_rf8(7) <= \D_rf8[7]~output_o\;

ww_D_rf8(8) <= \D_rf8[8]~output_o\;

ww_D_rf8(9) <= \D_rf8[9]~output_o\;

ww_D_rf8(10) <= \D_rf8[10]~output_o\;

ww_D_rf8(11) <= \D_rf8[11]~output_o\;

ww_D_rf8(12) <= \D_rf8[12]~output_o\;

ww_D_rf8(13) <= \D_rf8[13]~output_o\;

ww_D_rf8(14) <= \D_rf8[14]~output_o\;

ww_D_rf8(15) <= \D_rf8[15]~output_o\;

ww_D_rf9(0) <= \D_rf9[0]~output_o\;

ww_D_rf9(1) <= \D_rf9[1]~output_o\;

ww_D_rf9(2) <= \D_rf9[2]~output_o\;

ww_D_rf9(3) <= \D_rf9[3]~output_o\;

ww_D_rf9(4) <= \D_rf9[4]~output_o\;

ww_D_rf9(5) <= \D_rf9[5]~output_o\;

ww_D_rf9(6) <= \D_rf9[6]~output_o\;

ww_D_rf9(7) <= \D_rf9[7]~output_o\;

ww_D_rf9(8) <= \D_rf9[8]~output_o\;

ww_D_rf9(9) <= \D_rf9[9]~output_o\;

ww_D_rf9(10) <= \D_rf9[10]~output_o\;

ww_D_rf9(11) <= \D_rf9[11]~output_o\;

ww_D_rf9(12) <= \D_rf9[12]~output_o\;

ww_D_rf9(13) <= \D_rf9[13]~output_o\;

ww_D_rf9(14) <= \D_rf9[14]~output_o\;

ww_D_rf9(15) <= \D_rf9[15]~output_o\;

ww_D_rfA(0) <= \D_rfA[0]~output_o\;

ww_D_rfA(1) <= \D_rfA[1]~output_o\;

ww_D_rfA(2) <= \D_rfA[2]~output_o\;

ww_D_rfA(3) <= \D_rfA[3]~output_o\;

ww_D_rfA(4) <= \D_rfA[4]~output_o\;

ww_D_rfA(5) <= \D_rfA[5]~output_o\;

ww_D_rfA(6) <= \D_rfA[6]~output_o\;

ww_D_rfA(7) <= \D_rfA[7]~output_o\;

ww_D_rfA(8) <= \D_rfA[8]~output_o\;

ww_D_rfA(9) <= \D_rfA[9]~output_o\;

ww_D_rfA(10) <= \D_rfA[10]~output_o\;

ww_D_rfA(11) <= \D_rfA[11]~output_o\;

ww_D_rfA(12) <= \D_rfA[12]~output_o\;

ww_D_rfA(13) <= \D_rfA[13]~output_o\;

ww_D_rfA(14) <= \D_rfA[14]~output_o\;

ww_D_rfA(15) <= \D_rfA[15]~output_o\;

ww_D_rfB(0) <= \D_rfB[0]~output_o\;

ww_D_rfB(1) <= \D_rfB[1]~output_o\;

ww_D_rfB(2) <= \D_rfB[2]~output_o\;

ww_D_rfB(3) <= \D_rfB[3]~output_o\;

ww_D_rfB(4) <= \D_rfB[4]~output_o\;

ww_D_rfB(5) <= \D_rfB[5]~output_o\;

ww_D_rfB(6) <= \D_rfB[6]~output_o\;

ww_D_rfB(7) <= \D_rfB[7]~output_o\;

ww_D_rfB(8) <= \D_rfB[8]~output_o\;

ww_D_rfB(9) <= \D_rfB[9]~output_o\;

ww_D_rfB(10) <= \D_rfB[10]~output_o\;

ww_D_rfB(11) <= \D_rfB[11]~output_o\;

ww_D_rfB(12) <= \D_rfB[12]~output_o\;

ww_D_rfB(13) <= \D_rfB[13]~output_o\;

ww_D_rfB(14) <= \D_rfB[14]~output_o\;

ww_D_rfB(15) <= \D_rfB[15]~output_o\;

ww_D_rfC(0) <= \D_rfC[0]~output_o\;

ww_D_rfC(1) <= \D_rfC[1]~output_o\;

ww_D_rfC(2) <= \D_rfC[2]~output_o\;

ww_D_rfC(3) <= \D_rfC[3]~output_o\;

ww_D_rfC(4) <= \D_rfC[4]~output_o\;

ww_D_rfC(5) <= \D_rfC[5]~output_o\;

ww_D_rfC(6) <= \D_rfC[6]~output_o\;

ww_D_rfC(7) <= \D_rfC[7]~output_o\;

ww_D_rfC(8) <= \D_rfC[8]~output_o\;

ww_D_rfC(9) <= \D_rfC[9]~output_o\;

ww_D_rfC(10) <= \D_rfC[10]~output_o\;

ww_D_rfC(11) <= \D_rfC[11]~output_o\;

ww_D_rfC(12) <= \D_rfC[12]~output_o\;

ww_D_rfC(13) <= \D_rfC[13]~output_o\;

ww_D_rfC(14) <= \D_rfC[14]~output_o\;

ww_D_rfC(15) <= \D_rfC[15]~output_o\;

ww_D_rfD(0) <= \D_rfD[0]~output_o\;

ww_D_rfD(1) <= \D_rfD[1]~output_o\;

ww_D_rfD(2) <= \D_rfD[2]~output_o\;

ww_D_rfD(3) <= \D_rfD[3]~output_o\;

ww_D_rfD(4) <= \D_rfD[4]~output_o\;

ww_D_rfD(5) <= \D_rfD[5]~output_o\;

ww_D_rfD(6) <= \D_rfD[6]~output_o\;

ww_D_rfD(7) <= \D_rfD[7]~output_o\;

ww_D_rfD(8) <= \D_rfD[8]~output_o\;

ww_D_rfD(9) <= \D_rfD[9]~output_o\;

ww_D_rfD(10) <= \D_rfD[10]~output_o\;

ww_D_rfD(11) <= \D_rfD[11]~output_o\;

ww_D_rfD(12) <= \D_rfD[12]~output_o\;

ww_D_rfD(13) <= \D_rfD[13]~output_o\;

ww_D_rfD(14) <= \D_rfD[14]~output_o\;

ww_D_rfD(15) <= \D_rfD[15]~output_o\;

ww_D_rfE(0) <= \D_rfE[0]~output_o\;

ww_D_rfE(1) <= \D_rfE[1]~output_o\;

ww_D_rfE(2) <= \D_rfE[2]~output_o\;

ww_D_rfE(3) <= \D_rfE[3]~output_o\;

ww_D_rfE(4) <= \D_rfE[4]~output_o\;

ww_D_rfE(5) <= \D_rfE[5]~output_o\;

ww_D_rfE(6) <= \D_rfE[6]~output_o\;

ww_D_rfE(7) <= \D_rfE[7]~output_o\;

ww_D_rfE(8) <= \D_rfE[8]~output_o\;

ww_D_rfE(9) <= \D_rfE[9]~output_o\;

ww_D_rfE(10) <= \D_rfE[10]~output_o\;

ww_D_rfE(11) <= \D_rfE[11]~output_o\;

ww_D_rfE(12) <= \D_rfE[12]~output_o\;

ww_D_rfE(13) <= \D_rfE[13]~output_o\;

ww_D_rfE(14) <= \D_rfE[14]~output_o\;

ww_D_rfE(15) <= \D_rfE[15]~output_o\;

ww_D_rfF(0) <= \D_rfF[0]~output_o\;

ww_D_rfF(1) <= \D_rfF[1]~output_o\;

ww_D_rfF(2) <= \D_rfF[2]~output_o\;

ww_D_rfF(3) <= \D_rfF[3]~output_o\;

ww_D_rfF(4) <= \D_rfF[4]~output_o\;

ww_D_rfF(5) <= \D_rfF[5]~output_o\;

ww_D_rfF(6) <= \D_rfF[6]~output_o\;

ww_D_rfF(7) <= \D_rfF[7]~output_o\;

ww_D_rfF(8) <= \D_rfF[8]~output_o\;

ww_D_rfF(9) <= \D_rfF[9]~output_o\;

ww_D_rfF(10) <= \D_rfF[10]~output_o\;

ww_D_rfF(11) <= \D_rfF[11]~output_o\;

ww_D_rfF(12) <= \D_rfF[12]~output_o\;

ww_D_rfF(13) <= \D_rfF[13]~output_o\;

ww_D_rfF(14) <= \D_rfF[14]~output_o\;

ww_D_rfF(15) <= \D_rfF[15]~output_o\;
END structure;


