-- megafunction wizard: %RAM: 1-PORT%
-- GENERATION: STANDARD
-- VERSION: WM1.0
-- MODULE: altsyncram 

-- ============================================================
-- File Name: MainMemory64Words.vhd
-- Megafunction Name(s):
-- 			altsyncram
--
-- Simulation Library Files(s):
-- 			altera_mf
-- ============================================================
-- ************************************************************
-- THIS IS A WIZARD-GENERATED FILE. DO NOT EDIT THIS FILE!
--
-- 13.0.1 Build 232 06/12/2013 SP 1 SJ Full Version
-- ************************************************************


--Copyright (C) 1991-2013 Altera Corporation
--Your use of Altera Corporation's design tools, logic functions 
--and other software and tools, and its AMPP partner logic 
--functions, and any output files from any of the foregoing 
--(including device programming or simulation files), and any 
--associated documentation or information are expressly subject 
--to the terms and conditions of the Altera Program License 
--Subscription Agreement, Altera MegaCore Function License 
--Agreement, or other applicable license agreement, including, 
--without limitation, that your use is for the sole purpose of 
--programming logic devices manufactured by Altera and sold by 
--Altera or its authorized distributors.  Please refer to the 
--applicable agreement for further details.


LIBRARY ieee;
USE ieee.std_logic_1164.all;

LIBRARY altera_mf;
USE altera_mf.all;

ENTITY MainMemory64Words IS
	PORT
	(
		address		: IN STD_LOGIC_VECTOR (9 DOWNTO 0);
		clken		: IN STD_LOGIC  := '1';
		clock		: IN STD_LOGIC  := '1';
		data		: IN STD_LOGIC_VECTOR (63 DOWNTO 0);
		rden		: IN STD_LOGIC  := '1';
		wren		: IN STD_LOGIC ;
		main_mem_status	: OUT STD_LOGIC;
		D_main_mem_clk 	: OUT STD_LOGIC; -- Outputs the clock given to the memory
		q		: OUT STD_LOGIC_VECTOR (63 DOWNTO 0)
	);
END MainMemory64Words;


ARCHITECTURE SYN OF mainmemory64words IS

	SIGNAL sub_wire0	: STD_LOGIC_VECTOR (63 DOWNTO 0);
	SIGNAL address_sent	: STD_LOGIC_VECTOR(11 DOWNTO 0);
	SIGNAL clk_8th 		: STD_LOGIC;
	
	COMPONENT altsyncram
	GENERIC (
		clock_enable_input_a		: STRING;
		clock_enable_output_a		: STRING;
		init_file		: STRING;
		intended_device_family		: STRING;
		lpm_hint		: STRING;
		lpm_type		: STRING;
		numwords_a		: NATURAL;
		operation_mode		: STRING;
		outdata_aclr_a		: STRING;
		outdata_reg_a		: STRING;
		power_up_uninitialized		: STRING;
		ram_block_type		: STRING;
		read_during_write_mode_port_a		: STRING;
		widthad_a		: NATURAL;
		width_a		: NATURAL;
		width_byteena_a		: NATURAL
	);
	PORT (
			address_a	: IN STD_LOGIC_VECTOR (9 DOWNTO 0);
			clock0	: IN STD_LOGIC ;
			data_a	: IN STD_LOGIC_VECTOR (63 DOWNTO 0);
			wren_a	: IN STD_LOGIC ;
			clocken0	: IN STD_LOGIC ;
			q_a	: OUT STD_LOGIC_VECTOR (63 DOWNTO 0);
			rden_a	: IN STD_LOGIC 
	);
	END COMPONENT;
BEGIN
	q    <= sub_wire0(63 DOWNTO 0);
	
	slowClock:
	PROCESS(clock)
		VARIABLE counter : INTEGER := 0;
	BEGIN
		-- 1/8th the clock
		D_main_mem_clk <= clk_8th;
		
		IF(rising_edge(clock)) THEN	
			main_mem_status <= '0';		

			IF(counter = 3) THEN
				clk_8th <= NOT clk_8th;
				counter := 0;

				IF(NOT clk_8th = '1') THEN
					main_mem_status <= '1';
				END IF;
			ELSE
				counter := counter + 1;
			END IF;
		END IF;

		-- Do NOT 1/8th the clock
--		clk_8th <= clock;
--		main_mem_status <= clock;
--		D_main_mem_clk <= clock;
	END PROCESS;


	-- It always takes 2 clk_8th cycles to fetch any memory
--	setStatus:
--	PROCESS(clk_8th)
--		VARIABLE counter 			: INTEGER := 0;
--		VARIABLE received_inst 	: STD_LOGIC := rden OR wren;
--	BEGIN
--		IF(received_inst = '1') THEN
--			IF(rising_edge(clk_8th)) THEN
--				main_mem_status <= '0';
--				counter := counter + 1;
--
--				IF(counter = 1) THEN
--					counter := 0;
--					main_mem_status <= '1';
--				END IF;
--			END IF;
--		END IF;
--	END PROCESS;
	
	altsyncram_component : altsyncram
	GENERIC MAP (
		clock_enable_input_a => "NORMAL",
		clock_enable_output_a => "NORMAL",
		init_file => "m9k_mem.hex",
		intended_device_family => "Cyclone IV E",
		lpm_hint => "ENABLE_RUNTIME_MOD=NO",
		lpm_type => "altsyncram",
		numwords_a => 1024,
		operation_mode => "SINGLE_PORT",
		outdata_aclr_a => "NONE",
		outdata_reg_a => "CLOCK0",
		power_up_uninitialized => "FALSE",
		ram_block_type => "M9K",
		read_during_write_mode_port_a => "NEW_DATA_NO_NBE_READ",
		widthad_a => 10,
		width_a => 64,
		width_byteena_a => 1
	)
	PORT MAP (
		address_a => address,
		clock0 => clock,
		data_a => data,
		wren_a => wren,
		clocken0 => clken,
		rden_a => rden,
		q_a => sub_wire0
	);



END SYN;

-- ============================================================
-- CNX file retrieval info
-- ============================================================
-- Retrieval info: PRIVATE: ADDRESSSTALL_A NUMERIC "0"
-- Retrieval info: PRIVATE: AclrAddr NUMERIC "0"
-- Retrieval info: PRIVATE: AclrByte NUMERIC "0"
-- Retrieval info: PRIVATE: AclrData NUMERIC "0"
-- Retrieval info: PRIVATE: AclrOutput NUMERIC "0"
-- Retrieval info: PRIVATE: BYTE_ENABLE NUMERIC "0"
-- Retrieval info: PRIVATE: BYTE_SIZE NUMERIC "8"
-- Retrieval info: PRIVATE: BlankMemory NUMERIC "0"
-- Retrieval info: PRIVATE: CLOCK_ENABLE_INPUT_A NUMERIC "1"
-- Retrieval info: PRIVATE: CLOCK_ENABLE_OUTPUT_A NUMERIC "1"
-- Retrieval info: PRIVATE: Clken NUMERIC "1"
-- Retrieval info: PRIVATE: DataBusSeparated NUMERIC "1"
-- Retrieval info: PRIVATE: IMPLEMENT_IN_LES NUMERIC "0"
-- Retrieval info: PRIVATE: INIT_FILE_LAYOUT STRING "PORT_A"
-- Retrieval info: PRIVATE: INIT_TO_SIM_X NUMERIC "0"
-- Retrieval info: PRIVATE: INTENDED_DEVICE_FAMILY STRING "Cyclone IV E"
-- Retrieval info: PRIVATE: JTAG_ENABLED NUMERIC "0"
-- Retrieval info: PRIVATE: JTAG_ID STRING "NONE"
-- Retrieval info: PRIVATE: MAXIMUM_DEPTH NUMERIC "0"
-- Retrieval info: PRIVATE: MIFfilename STRING "m9k_mem.hex"
-- Retrieval info: PRIVATE: NUMWORDS_A NUMERIC "1024"
-- Retrieval info: PRIVATE: RAM_BLOCK_TYPE NUMERIC "2"
-- Retrieval info: PRIVATE: READ_DURING_WRITE_MODE_PORT_A NUMERIC "3"
-- Retrieval info: PRIVATE: RegAddr NUMERIC "1"
-- Retrieval info: PRIVATE: RegData NUMERIC "1"
-- Retrieval info: PRIVATE: RegOutput NUMERIC "1"
-- Retrieval info: PRIVATE: SYNTH_WRAPPER_GEN_POSTFIX STRING "0"
-- Retrieval info: PRIVATE: SingleClock NUMERIC "1"
-- Retrieval info: PRIVATE: UseDQRAM NUMERIC "1"
-- Retrieval info: PRIVATE: WRCONTROL_ACLR_A NUMERIC "0"
-- Retrieval info: PRIVATE: WidthAddr NUMERIC "10"
-- Retrieval info: PRIVATE: WidthData NUMERIC "64"
-- Retrieval info: PRIVATE: rden NUMERIC "1"
-- Retrieval info: LIBRARY: altera_mf altera_mf.altera_mf_components.all
-- Retrieval info: CONSTANT: CLOCK_ENABLE_INPUT_A STRING "NORMAL"
-- Retrieval info: CONSTANT: CLOCK_ENABLE_OUTPUT_A STRING "NORMAL"
-- Retrieval info: CONSTANT: INIT_FILE STRING "m9k_mem.hex"
-- Retrieval info: CONSTANT: INTENDED_DEVICE_FAMILY STRING "Cyclone IV E"
-- Retrieval info: CONSTANT: LPM_HINT STRING "ENABLE_RUNTIME_MOD=NO"
-- Retrieval info: CONSTANT: LPM_TYPE STRING "altsyncram"
-- Retrieval info: CONSTANT: NUMWORDS_A NUMERIC "1024"
-- Retrieval info: CONSTANT: OPERATION_MODE STRING "SINGLE_PORT"
-- Retrieval info: CONSTANT: OUTDATA_ACLR_A STRING "NONE"
-- Retrieval info: CONSTANT: OUTDATA_REG_A STRING "CLOCK0"
-- Retrieval info: CONSTANT: POWER_UP_UNINITIALIZED STRING "FALSE"
-- Retrieval info: CONSTANT: RAM_BLOCK_TYPE STRING "M9K"
-- Retrieval info: CONSTANT: READ_DURING_WRITE_MODE_PORT_A STRING "NEW_DATA_NO_NBE_READ"
-- Retrieval info: CONSTANT: WIDTHAD_A NUMERIC "10"
-- Retrieval info: CONSTANT: WIDTH_A NUMERIC "64"
-- Retrieval info: CONSTANT: WIDTH_BYTEENA_A NUMERIC "1"
-- Retrieval info: USED_PORT: address 0 0 10 0 INPUT NODEFVAL "address[9..0]"
-- Retrieval info: USED_PORT: clken 0 0 0 0 INPUT VCC "clken"
-- Retrieval info: USED_PORT: clock 0 0 0 0 INPUT VCC "clock"
-- Retrieval info: USED_PORT: data 0 0 64 0 INPUT NODEFVAL "data[63..0]"
-- Retrieval info: USED_PORT: q 0 0 64 0 OUTPUT NODEFVAL "q[63..0]"
-- Retrieval info: USED_PORT: rden 0 0 0 0 INPUT VCC "rden"
-- Retrieval info: USED_PORT: wren 0 0 0 0 INPUT NODEFVAL "wren"
-- Retrieval info: CONNECT: @address_a 0 0 10 0 address 0 0 10 0
-- Retrieval info: CONNECT: @clock0 0 0 0 0 clock 0 0 0 0
-- Retrieval info: CONNECT: @clocken0 0 0 0 0 clken 0 0 0 0
-- Retrieval info: CONNECT: @data_a 0 0 64 0 data 0 0 64 0
-- Retrieval info: CONNECT: @rden_a 0 0 0 0 rden 0 0 0 0
-- Retrieval info: CONNECT: @wren_a 0 0 0 0 wren 0 0 0 0
-- Retrieval info: CONNECT: q 0 0 64 0 @q_a 0 0 64 0
-- Retrieval info: GEN_FILE: TYPE_NORMAL MainMemory64Words.vhd TRUE
-- Retrieval info: GEN_FILE: TYPE_NORMAL MainMemory64Words.inc TRUE
-- Retrieval info: GEN_FILE: TYPE_NORMAL MainMemory64Words.cmp TRUE
-- Retrieval info: GEN_FILE: TYPE_NORMAL MainMemory64Words.bsf TRUE
-- Retrieval info: GEN_FILE: TYPE_NORMAL MainMemory64Words_inst.vhd TRUE
-- Retrieval info: LIB_FILE: altera_mf