----------------------------------------------------------------------------
-- Simple Microprocessor Design (ESD Book Chapter 3)
-- Copyright 2001 Weijun Zhang
--
-- Controller (control logic plus state register)
-- VHDL FSM modeling
-- controller.vhd
----------------------------------------------------------------------------

library	ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use work.MP_lib.all;

entity controller is
port(	
	clock:		in std_logic;
	rst:		in std_logic;
	IR_word:	in std_logic_vector(15 downto 0);
	main_mem_status: IN STD_LOGIC;
	RFs_ctrl:	out std_logic_vector(1 downto 0);
	RFwa_ctrl:	out std_logic_vector(3 downto 0);
	RFr1a_ctrl:	out std_logic_vector(3 downto 0);
	RFr2a_ctrl:	out std_logic_vector(3 downto 0);
	RFwe_ctrl:	out std_logic;
	RFr1e_ctrl:	out std_logic;
	RFr2e_ctrl:	out std_logic;						 
	ALUs_ctrl:	out std_logic_vector(2 downto 0);	 
	jmpen_ctrl:	out std_logic;
	PCinc_ctrl:	out std_logic;
	PCclr_ctrl:	out std_logic;
	IRld_ctrl:	out std_logic;
	Ms_ctrl:	out std_logic_vector(1 downto 0);
	Mre_ctrl:	out std_logic;
	Mwe_ctrl:	out std_logic;
	oe_ctrl:	out std_logic;
	cur_state : OUT STD_logic_vector(7 DOWNTO 0);
	big_addr  : OUT STD_LOGIC
);
end controller;

architecture fsm of controller is

  type state_type is (
			-- Instruction Preamble
			S_INIT,
			S_FETCH_INST,S_FETCH_INSTa,S_FETCH_INSTb,S_FETCH_INST_wait,
			S_DECODE_INST,

			-- Instruction Executions
			S_SHORT_LOAD,S_SHORT_LOADa,S_SHORT_LOADb,S_SHORT_LOAD_wait,  					-- x"0" RF[r1]    <= M[8bit direct]
			S_SHORT_SAVE,S_SHORT_SAVEa,S_SHORT_SAVEb,S_SHORT_SAVE_wait,  					-- x"1" RF[r1]    <= M[8bit direct]
			
			S_LONG_LOAD,S_LONG_LOAD_wait,S_LONG_LOAD_a,S_LONG_LOAD_b,  						-- x"8" RF[F]     <= M[12bit direct]
			S_LONG_SAVE,S_LONG_SAVE_wait,S_LONG_SAVE_a,S_LONG_SAVE_b,  						-- x"9" RF[F]     <= M[12bit direct]
			
			S_REG_ADDR_LOAD,S_REG_ADDR_LOADa,S_REG_ADDR_LOADb,S_REG_ADDR_LOAD_wait,		-- x"A" RF[r1]    <= M[RF[r2]]
			S_REG_ADDR_SAVE,S_REG_ADDR_SAVEa,S_REG_ADDR_SAVEb,S_REG_ADDR_SAVE_wait,		-- x"2" M[RF[r1]] <= RF[r2]

			S_IMM_LOAD,S_IMM_LOADa,																		-- x"3" RF[r1]    <= 8bit imm
			S_LONG_IMM_LOAD,S_LONG_IMM_LOADa,														-- x"C" RF[F]     <= 12bit imm
			
			S_ADD,S_ADDa,S_ADDb,																			-- x"4" RF[r1]    <= RF[r1] + RF[r2]
			S_SUBT,S_SUBTa,S_SUBTb,																		-- x"5" RF[r1]    <= RF[r1] - RF[r2]
			S_MULT,S_MULTa,S_MULTb,																		-- x"B" RF[r1]    <= RF[r1] * RF[r2]
			
			S_JUMP_Z,S_JUMP_Za,S_JUMP_Zb,																-- x"6" JUMP->M[8bit direct] if RF[r1] = 0
			
			S_OUTPUT_MEM,S_OUTPUT_MEMa,S_OUTPUT_MEM_wait,										-- x"7" out <= M[12bit direct]
			
			S_HALT                             														-- x"F" Stay in this state
	);
  signal state: state_type;

begin
  process(clock, rst, IR_word, main_mem_status)
    variable OPCODE: std_logic_vector(3 downto 0);
	 VARIABLE wait_counter : INTEGER := 0;
  begin
    if rst='1' then			   
		Ms_ctrl <= "10";
		PCclr_ctrl <= '1';		  	-- Reset State
		PCinc_ctrl <= '0';
		IRld_ctrl <= '0';
		RFs_ctrl <= "00";		
		Rfwe_ctrl <= '0';
		Mre_ctrl <= '0';
		Mwe_ctrl <= '0';					
		jmpen_ctrl <= '0';		
		oe_ctrl <= '0';
		state <= S_INIT;

    elsif (clock'event and clock='1') then
	case state is 
	  when S_INIT =>	
			cur_state <= x"00";
			PCclr_ctrl <= '0';	-- Reset State	
			state <= S_FETCH_INST;	

	  when S_FETCH_INST =>	
			cur_state <= x"01";
			PCinc_ctrl <= '0';	
			IRld_ctrl <= '1'; -- Fetch Instruction
			Mre_ctrl <= '1';  
			RFwe_ctrl <= '0'; 
			big_addr <= '0';
			RFr1e_ctrl <= '0'; 
			RFr2e_ctrl <= '0'; 
			Ms_ctrl <= "10";
			Mwe_ctrl <= '0';
			jmpen_ctrl <= '0';
			oe_ctrl <= '0';
			
			-- Need to wait until the memory has received the instruction
			IF(main_mem_status = '1') THEN
				state <= S_FETCH_INSTa;
			END IF;
--		when S_FETCH_INST_wait =>
--			cur_state <= x"02";
--			-- Need to wait until the memory has retrieved the data
--			IF(main_mem_status = '1') THEN
--				state <= S_FETCH_INSTa;
--			END IF;
	  when S_FETCH_INSTa => 
			cur_state <= x"03";
	        IRld_ctrl <= '0';
	        PCinc_ctrl <= '1';
	        Mre_ctrl <= '0';
	  		state <= S_FETCH_INSTb;			-- Fetch end ...
	  when S_FETCH_INSTb => 	
			cur_state <= x"04";
			PCinc_ctrl <= '0';
		   state <= S_DECODE_INST;

	  when S_DECODE_INST =>	
			cur_state <= x"05";
			OPCODE := IR_word(15 downto 12);
			  case OPCODE is
			    when SHORT_LOAD 		=> state <= S_SHORT_LOAD;
			    when SHORT_SAVE 		=> state <= S_SHORT_SAVE;
				 
				 WHEN LONG_LOAD 		=> state <= S_LONG_LOAD;
				 WHEN LONG_SAVE 		=> state <= S_LONG_SAVE;
				 
				 WHEN REG_ADDR_LOAD 	=> state <= S_REG_ADDR_LOAD;
			    when REG_ADDR_SAVE 	=> state <= S_REG_ADDR_SAVE;

			    when IMM_LOAD 		=> state <= S_IMM_LOAD;
			    when LONG_IMM_LOAD 	=> state <= S_LONG_IMM_LOAD;
				 
			    when ADD 				=> state <= S_ADD;
			    when SUBT 				=>	state <= S_SUBT;
			    WHEN MULT 				=>	state <= S_MULT;

			    when JUMP_Z 			=>	state <= S_JUMP_Z;

			    when OUTPUT_MEM 		=> state <= S_OUTPUT_MEM;

			    when HALT 				=>	state <= S_HALT; 

			    when others 			=> state <= S_FETCH_INST;
			    end case;

	  when S_SHORT_LOAD =>	
			cur_state <= x"06";
			RFwa_ctrl <= IR_word(11 downto 8);	
			RFs_ctrl <= "01";  -- RF[rn] <= mem[direct]
			Ms_ctrl <= "01";
			Mre_ctrl <= '1';
			Mwe_ctrl <= '0';	

			-- Need to wait until the memory has received the instruction
			IF(main_mem_status = '1') THEN
				state <= S_SHORT_LOADa;
			END IF;
--		when S_SHORT_LOAD_wait =>
--			cur_state <= x"07";
--			-- Need to wait until the memory has retrieved the data
--			IF(main_mem_status = '1') THEN
--				state <= S_SHORT_LOADa;
--			END IF;
	  when S_SHORT_LOADa =>  
			cur_state <= x"08"; 
				RFwe_ctrl <= '1'; 
	        Mre_ctrl <= '0'; 
			state <= S_SHORT_LOADb;
	  when S_SHORT_LOADb => 	
			cur_state <= x"09";
			RFwe_ctrl <= '0';
			state <= S_FETCH_INST;
	    
	  when S_SHORT_SAVE =>	
			cur_state <= x"0A";
			RFr1a_ctrl <= IR_word(11 downto 8);	
			RFr1e_ctrl <= '1'; -- mem[direct] <= RF[rn]			
			Ms_ctrl <= "01";
			ALUs_ctrl <= "000";	  
			IRld_ctrl <= '0';
			state <= S_SHORT_SAVEa;			-- read value from RF
			
	  when S_SHORT_SAVEa =>  
			cur_state <= x"0B"; 
			Mre_ctrl <= '0';
			Mwe_ctrl <= '1';
			
			-- Need to wait until the memory has received the instruction
			IF(main_mem_status = '1') THEN
				state <= S_SHORT_SAVEb;			-- write into memory
			END IF;
			
--		when S_SHORT_SAVE_wait =>
--			cur_state <= x"0C";
--			-- Need to wait until the memory has written the data
--			IF(main_mem_status = '1') THEN
--				state <= S_SHORT_SAVEb;
--			END IF;
	  when S_SHORT_SAVEb =>  
			cur_state <= x"0D"; 
			Ms_ctrl <= "10";				  
			Mwe_ctrl <= '0';
			state <= S_FETCH_INST;
			
		WHEN S_LONG_LOAD =>
			cur_state <= x"0E";
			RFwa_ctrl <= x"F";	-- Always reads into RF
			RFs_ctrl <= "01";  	-- RF[F] <= mem[direct]
			Ms_ctrl <= "01";
			Mre_ctrl <= '1';
			Mwe_ctrl <= '0';	
			big_addr <= '1';
			
			-- Need to wait until the memory has received the instruction
			IF(main_mem_status = '1') THEN
				state <= S_LONG_LOAD_a;	
			END IF;

--		WHEN S_LONG_LOAD_wait =>
--			cur_state <= x"0F";
--			-- Need to wait until the memory has read the data
--			IF(main_mem_status = '1') THEN
--				state <= S_LONG_LOAD_a;
--			END IF;
		WHEN S_LONG_LOAD_a =>  
			cur_state <= x"10"; 
			RFwe_ctrl <= '1'; 
			Mre_ctrl <= '0'; 
			state <= S_LONG_LOAD_b;
		WHEN S_LONG_LOAD_b => 	
			cur_state <= x"11"; 
			RFwe_ctrl <= '0';
			big_addr <= '0';
			state <= S_FETCH_INST;
			
	  when S_LONG_SAVE =>	
			cur_state <= x"12"; 
			RFr1a_ctrl <= x"F";	
			RFr1e_ctrl <= '1'; -- mem[direct] <= RF[F]			
			Ms_ctrl <= "01";
			ALUs_ctrl <= "000";	  
			IRld_ctrl <= '0';
			state <= S_LONG_SAVE_a;
			
	  when S_LONG_SAVE_a =>   
			cur_state <= x"13"; 
			Mre_ctrl <= '0';
			Mwe_ctrl <= '1';
			big_addr <= '1';
			
			-- Need to wait until the memory has received the instruction
			IF(main_mem_status = '1') THEN
				state <= S_LONG_SAVE_b;				-- write into memory
			END IF;
			
--		when S_LONG_SAVE_wait =>
--			cur_state <= x"14"; 
--			-- Need to wait until the memory has written the data
--			IF(main_mem_status = '1') THEN
--				state <= S_LONG_SAVE_b;
--			END IF;
	  when S_LONG_SAVE_b => 
			cur_state <= x"15";   
			Ms_ctrl <= "10";				  
			Mwe_ctrl <= '0';
			big_addr <= '0';
			state <= S_FETCH_INST;
		
	  when S_REG_ADDR_LOAD =>	
			cur_state <= x"16"; 
			
			-- RF[r1] <= M[RF[r2]]
			RFr1a_ctrl <= IR_word(7 DOWNTO 4);  -- Get address from r2
			RFr1e_ctrl <= '1';						-- Enable port 1 in register file for reading
			RFr2e_ctrl <= '0';
			
			-- The value in R2 is now available on the RFr1 bus.
			-- RFr1 bus is connected to RFr1out_dp bus.
			-- RFr1out_dp bus is connected to dpdata_out bus.
			-- Next, we need to wire the dpdata_out bus to the maddr_in bus:
			Ms_ctrl <= "00";

			-- Now the memory unit sees the value from R2 on its address bus.
			-- Finally, signal that we intend to read data:
			Mre_ctrl <= '1';			
			Mwe_ctrl <= '0'; -- read from memory
			big_addr <= '1';
			
			-- Need to wait until the memory has received the instruction
			IF(main_mem_status = '1') THEN
				state <= S_REG_ADDR_LOAD_wait;	
			END IF;
			
		when S_REG_ADDR_LOAD_wait =>
			cur_state <= x"17"; 
			RFr1e_ctrl <= '0';
			
			-- At this point, the data at the address specified by R1 is now on the data_out bus of the memory unit.
			-- data_out is connected to mem_data bus (and IR bus, but we don't care)
			-- mem_data is option "01" on the smallmux unit.
			-- We want to connect the mem_data bus to the RFw bus:
			RFs_ctrl <= "01";
		
			-- Need to wait until the memory has read the data
			IF(main_mem_status = '1') THEN
				state <= S_REG_ADDR_LOADa;
			END IF;

		WHEN S_REG_ADDR_LOADa =>
			cur_state <= x"18"; 
			state <= S_REG_ADDR_LOADb;
			
	  when S_REG_ADDR_LOADb => 
			cur_state <= x"19"; 	
			-- Now we simply need to instruct our register file to write the 
			-- value on the bus into the appropriate register:
			big_addr <= '0';
			RFwa_ctrl <= IR_word(11 DOWNTO 8);
			RFwe_ctrl <= '1';
			
			state <= S_FETCH_INST;
		
	  when S_REG_ADDR_SAVE =>	
			cur_state <= x"1A"; 
			RFr1a_ctrl <= IR_word(11 downto 8);	
			RFr1e_ctrl <= '1'; -- mem[RF[rn]] <= RF[rm]
			Ms_ctrl <= "00";
			ALUs_ctrl <= "001";
			RFr2a_ctrl <= IR_word(7 downto 4); 
			RFr2e_ctrl <= '1'; -- set addr.& data
			state <= S_REG_ADDR_SAVEa;
	  when S_REG_ADDR_SAVEa => 
			cur_state <= x"1B";   
			big_addr <= '1';
			Mre_ctrl <= '0';			
			Mwe_ctrl <= '1'; -- write into memory

			-- Need to wait until the memory has received the instruction
			IF(main_mem_status = '1') THEN
				state <= S_REG_ADDR_SAVE_wait;	
			END IF;
		when S_REG_ADDR_SAVE_wait =>
			cur_state <= x"1C"; 
			-- Need to wait until the memory has written the data
			IF(main_mem_status = '1') THEN
				state <= S_REG_ADDR_SAVEb;
			END IF;
	  when S_REG_ADDR_SAVEb => 
			cur_state <= x"1D"; 	
			Ms_ctrl <= "10";-- return
			Mwe_ctrl <= '0';
			big_addr <= '0';
			state <= S_FETCH_INST;

	  when S_IMM_LOAD =>	
			cur_state <= x"1E"; 
			RFwa_ctrl <= IR_word(11 downto 8);	
			RFwe_ctrl <= '1'; -- RF[rn] <= 8bit imm.
			RFs_ctrl <= "10";
			IRld_ctrl <= '0';
			state <= S_IMM_LOADa;
	  when S_IMM_LOADa =>   
			cur_state <= x"1F"; 
			state <= S_FETCH_INST;

	  when S_LONG_IMM_LOAD =>	
			cur_state <= x"DE"; 
			RFwa_ctrl <= x"F";	
			RFwe_ctrl <= '1'; -- RF[F] <= 12bit imm.
			RFs_ctrl <= "10";
			IRld_ctrl <= '0';
			big_addr <= '1';
			state <= S_LONG_IMM_LOADa;
	  when S_LONG_IMM_LOADa =>   
			cur_state <= x"DF"; 
			state <= S_FETCH_INST;
	    
	  when S_ADD =>	
			cur_state <= x"20"; 
			RFr1a_ctrl <= IR_word(7 downto 4);	
			RFr1e_ctrl <= '1'; -- RF[r1] <= RF[r2] + RF[r3]
			RFr2e_ctrl <= '1'; 
			RFr2a_ctrl <= IR_word(3 downto 0);
 			ALUs_ctrl <= "010";
			state <= S_ADDa;
	  when S_ADDa =>   
			cur_state <= x"21"; 
			RFr1e_ctrl <= '0';
			RFr2e_ctrl <= '0';
			RFs_ctrl <= "00";
			RFwa_ctrl <= IR_word(11 downto 8);
			RFwe_ctrl <= '1';
			state <= S_ADDb;
	  when S_ADDb =>   
			cur_state <= x"22"; 
			state <= S_FETCH_INST;
					
	  when S_SUBT =>	
			cur_state <= x"23"; 
			RFr1a_ctrl <= IR_word(7 downto 4);	
			RFr1e_ctrl <= '1'; -- RF[r1] <= RF[r2] - RF[r3]
			RFr2a_ctrl <= IR_word(3 downto 0);
			RFr2e_ctrl <= '1';  
			ALUs_ctrl <= "011";
			state <= S_SUBTa;
	  when S_SUBTa =>   
			cur_state <= x"24"; 
			RFr1e_ctrl <= '0';
			RFr2e_ctrl <= '0';
			RFs_ctrl <= "00";
			RFwa_ctrl <= IR_word(11 downto 8);
			RFwe_ctrl <= '1';
			state <= S_SUBTb;
	  when S_SUBTb =>   
			cur_state <= x"25"; 
			state <= S_FETCH_INST;

	  when S_MULT =>	
			cur_state <= x"26"; 
			RFr1a_ctrl <= IR_word(7 downto 4);	
			RFr1e_ctrl <= '1'; -- RF[r1] <= RF[r2] * RF[r3]
			RFr2a_ctrl <= IR_word(3 downto 0);
			RFr2e_ctrl <= '1';  
			ALUs_ctrl <= "100";
			state <= S_MULTa;
	  when S_MULTa =>   
			cur_state <= x"27"; 
			RFr1e_ctrl <= '0';
			RFr2e_ctrl <= '0';
			RFs_ctrl <= "00";
			RFwa_ctrl <= IR_word(11 downto 8);
			RFwe_ctrl <= '1';
			state <= S_MULTb;
	  when S_MULTb =>   
			cur_state <= x"28"; 
			state <= S_FETCH_INST;

	  when S_JUMP_Z =>	
			cur_state <= x"29"; 
			RFr1a_ctrl <= IR_word(11 downto 8);
			RFr1e_ctrl <= '1'; -- jz if R[rn] = 0
			ALUs_ctrl <= "000";
			state <= S_JUMP_Za;
	  when S_JUMP_Za =>   
			cur_state <= x"2A"; 
			jmpen_ctrl <= '1';
			state <= S_JUMP_Zb;
	  when S_JUMP_Zb =>   
			cur_state <= x"2B"; 
			jmpen_ctrl <= '0';
			state <= S_FETCH_INST;

	  when S_HALT =>	
			cur_state <= x"2C"; 
			state <= S_HALT; -- halt

	  when S_OUTPUT_MEM =>   
			cur_state <= x"2D"; 
			Ms_ctrl <= "01";
			Mre_ctrl <= '1'; -- read memory
			Mwe_ctrl <= '0';		  
			big_addr <= '1';
			
			-- Need to wait until the memory has received the instruction
			IF(main_mem_status = '1') THEN
				state <= S_OUTPUT_MEMa;	
			END IF;
			
--		when S_OUTPUT_MEM_wait =>
--			cur_state <= x"2E"; 
--			-- Need to wait until the memory has read the data
--			IF(main_mem_status = '1') THEN
--				state <= S_OUTPUT_MEMa;
--			END IF;
	  when S_OUTPUT_MEMa =>  
			cur_state <= x"2F"; 
			oe_ctrl <= '1'; 		  
			big_addr <= '0';
			state <= S_FETCH_INST;
		
	  when others =>
			cur_state <= x"30"; 
	end case;
    end if;
  end process;
end fsm;