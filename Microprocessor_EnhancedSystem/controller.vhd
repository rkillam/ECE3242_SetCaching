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
	cur_state : OUT STD_logic_vector(3 DOWNTO 0);
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
			
			S_LONG_LOAD,S_LONG_LOAD_wait,S_LONG_LOAD_a,S_LONG_LOAD_b,  						-- x"8" RF[0]     <= M[12bit direct]
			S_LONG_SAVE,S_LONG_SAVE_wait,S_LONG_SAVE_a,S_LONG_SAVE_b,  						-- x"9" RF[0]     <= M[12bit direct]
			
			S_REG_ADDR_LOAD,S_REG_ADDR_LOADa,S_REG_ADDR_LOADb,S_REG_ADDR_LOAD_wait,		-- x"A" RF[r1]    <= M[RF[r2]]
			S_REG_ADDR_SAVE,S_REG_ADDR_SAVEa,S_REG_ADDR_SAVEb,S_REG_ADDR_SAVE_wait,		-- x"2" M[RF[r1]] <= RF[r2]
			
			S_IMM_LOAD,S_IMM_LOADa,																		-- x"3" RF[r1]    <= imm
			
			S_ADD,S_ADDa,S_ADDb,																			-- x"4" RF[r1]    <= RF[r1] + RF[r2]
			S_SUBT,S_SUBTa,S_SUBTb,																		-- x"5" RF[r1]    <= RF[r1] - RF[r2]
			
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
			PCclr_ctrl <= '0';	-- Reset State	
			state <= S_FETCH_INST;	

	  when S_FETCH_INST =>	
			cur_state <= x"1";
			PCinc_ctrl <= '0';	
			IRld_ctrl <= '1'; -- Fetch Instruction
			Mre_ctrl <= '1';  
			RFwe_ctrl <= '0'; 
			RFr1e_ctrl <= '0'; 
			RFr2e_ctrl <= '0'; 
			Ms_ctrl <= "10";
			Mwe_ctrl <= '0';
			jmpen_ctrl <= '0';
			oe_ctrl <= '0';
			
			-- Need to wait until the memory has received the instruction
			IF(main_mem_status = '1') THEN
				state <= S_FETCH_INST_wait;
			END IF;
		when S_FETCH_INST_wait =>
			-- Need to wait until the memory has retrieved the data
			IF(main_mem_status = '1') THEN
				state <= S_FETCH_INSTa;
			END IF;
	  when S_FETCH_INSTa => 	
	        IRld_ctrl <= '0';
	        PCinc_ctrl <= '1';
	        Mre_ctrl <= '0';
	  		state <= S_FETCH_INSTb;			-- Fetch end ...
	  when S_FETCH_INSTb => 
			PCinc_ctrl <= '0';
		   state <= S_DECODE_INST;

	  when S_DECODE_INST =>	
			cur_state <= x"2";
			OPCODE := IR_word(15 downto 12);
			  case OPCODE is
			    when SHORT_LOAD 		=> state <= S_SHORT_LOAD;
			    when SHORT_SAVE 		=> state <= S_SHORT_SAVE;
				 
				 WHEN LONG_LOAD 		=> state <= S_LONG_LOAD;
				 WHEN LONG_SAVE 		=> state <= S_LONG_SAVE;
				 
				 WHEN REG_ADDR_LOAD 	=> state <= S_REG_ADDR_LOAD;
			    when REG_ADDR_SAVE 	=> state <= S_REG_ADDR_SAVE;
				 
			    when IMM_LOAD 		=> state <= S_IMM_LOAD;
				 
			    when ADD 				=> state <= S_ADD;
			    when SUBT 				=>	state <= S_SUBT;
				 
			    when JUMP_Z 			=>	state <= S_JUMP_Z;
				 
			    when OUTPUT_MEM 		=> state <= S_OUTPUT_MEM;
				 
			    when HALT 				=>	state <= S_HALT; 
				 
			    when others 			=> state <= S_FETCH_INST;
			    end case;

	  when S_SHORT_LOAD =>	
			cur_state <= x"3";
			RFwa_ctrl <= IR_word(11 downto 8);	
			RFs_ctrl <= "01";  -- RF[rn] <= mem[direct]
			Ms_ctrl <= "01";
			Mre_ctrl <= '1';
			Mwe_ctrl <= '0';	

			-- Need to wait until the memory has received the instruction
			IF(main_mem_status = '1') THEN
				state <= S_SHORT_LOAD_wait;
			END IF;
		when S_SHORT_LOAD_wait =>
			-- Need to wait until the memory has retrieved the data
			IF(main_mem_status = '1') THEN
				state <= S_SHORT_LOADa;
			END IF;
	  when S_SHORT_LOADa =>   
				RFwe_ctrl <= '1'; 
	        Mre_ctrl <= '0'; 
			state <= S_SHORT_LOADb;
	  when S_SHORT_LOADb => 	RFwe_ctrl <= '0';
			state <= S_FETCH_INST;
	    
	  when S_SHORT_SAVE =>	
			cur_state <= x"4";
			RFr1a_ctrl <= IR_word(11 downto 8);	
			RFr1e_ctrl <= '1'; -- mem[direct] <= RF[rn]			
			Ms_ctrl <= "01";
			ALUs_ctrl <= "000";	  
			IRld_ctrl <= '0';
			state <= S_SHORT_SAVEa;			-- read value from RF
	  when S_SHORT_SAVEa =>   
			Mre_ctrl <= '0';
			Mwe_ctrl <= '1';
			
			-- Need to wait until the memory has received the instruction
			IF(main_mem_status = '1') THEN
				state <= S_SHORT_SAVE_wait;			-- write into memory
			END IF;
		when S_SHORT_SAVE_wait =>
			-- Need to wait until the memory has written the data
			IF(main_mem_status = '1') THEN
				state <= S_SHORT_SAVEb;
			END IF;
	  when S_SHORT_SAVEb =>   
			Ms_ctrl <= "10";				  
			Mwe_ctrl <= '0';
			state <= S_FETCH_INST;
			
		WHEN S_LONG_LOAD =>
			cur_state <= x"C";
			RFwa_ctrl <= x"0";	-- Always reads into R0
			RFs_ctrl <= "01";  	-- RF[0] <= mem[direct]
			Ms_ctrl <= "01";
			Mre_ctrl <= '1';
			Mwe_ctrl <= '0';	
			big_addr <= '1';
			
			-- Need to wait until the memory has received the instruction
			IF(main_mem_status = '1') THEN
				state <= S_LONG_LOAD_wait;	
			END IF;
			
		WHEN S_LONG_LOAD_wait =>
			-- Need to wait until the memory has read the data
			IF(main_mem_status = '1') THEN
				state <= S_LONG_LOAD_a;
			END IF;
		WHEN S_LONG_LOAD_a =>   
			RFwe_ctrl <= '1'; 
			Mre_ctrl <= '0'; 
			state <= S_LONG_LOAD_b;
		WHEN S_LONG_LOAD_b => 	
			RFwe_ctrl <= '0';
			big_addr <= '0';
			state <= S_FETCH_INST;
			
	  when S_LONG_SAVE =>	
			cur_state <= x"D";
			RFr1a_ctrl <= x"0";	
			RFr1e_ctrl <= '1'; -- mem[direct] <= RF[0]			
			Ms_ctrl <= "01";
			ALUs_ctrl <= "000";	  
			IRld_ctrl <= '0';
			state <= S_LONG_SAVE_a;
			
	  when S_LONG_SAVE_a =>   
			Mre_ctrl <= '0';
			Mwe_ctrl <= '1';
			big_addr <= '1';
			
			-- Need to wait until the memory has received the instruction
			IF(main_mem_status = '1') THEN
				state <= S_LONG_SAVE_wait;				-- write into memory
			END IF;
			
		when S_LONG_SAVE_wait =>
			-- Need to wait until the memory has written the data
			IF(main_mem_status = '1') THEN
				state <= S_LONG_SAVE_b;
			END IF;
	  when S_LONG_SAVE_b =>   
			Ms_ctrl <= "10";				  
			Mwe_ctrl <= '0';
			big_addr <= '0';
			state <= S_FETCH_INST;
		
	  when S_REG_ADDR_LOAD =>	
			cur_state <= x"3";
			
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
			
			-- Need to wait until the memory has received the instruction
			IF(main_mem_status = '1') THEN
				state <= S_REG_ADDR_LOAD_wait;	
			END IF;
			
		when S_REG_ADDR_LOAD_wait =>
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
			state <= S_REG_ADDR_LOADb;
			
	  when S_REG_ADDR_LOADb => 	
			-- Now we simply need to instruct our register file to write the 
			-- value on the bus into the appropriate register:
			RFwa_ctrl <= IR_word(11 DOWNTO 8);
			RFwe_ctrl <= '1';
			
			state <= S_FETCH_INST;
		
	  when S_REG_ADDR_SAVE =>	
			cur_state <= x"5";
			RFr1a_ctrl <= IR_word(11 downto 8);	
			RFr1e_ctrl <= '1'; -- mem[RF[rn]] <= RF[rm]
			Ms_ctrl <= "00";
			ALUs_ctrl <= "001";
			RFr2a_ctrl <= IR_word(7 downto 4); 
			RFr2e_ctrl <= '1'; -- set addr.& data
			state <= S_REG_ADDR_SAVEa;
	  when S_REG_ADDR_SAVEa =>   
			Mre_ctrl <= '0';			
			Mwe_ctrl <= '1'; -- write into memory
			
			-- Need to wait until the memory has received the instruction
			IF(main_mem_status = '1') THEN
				state <= S_REG_ADDR_SAVE_wait;	
			END IF;
		when S_REG_ADDR_SAVE_wait =>
			-- Need to wait until the memory has written the data
			IF(main_mem_status = '1') THEN
				state <= S_REG_ADDR_SAVEb;
			END IF;
	  when S_REG_ADDR_SAVEb => 	
			Ms_ctrl <= "10";-- return
			Mwe_ctrl <= '0';
			state <= S_FETCH_INST;
					
	  when S_IMM_LOAD =>	
			cur_state <= x"6";
			RFwa_ctrl <= IR_word(11 downto 8);	
			RFwe_ctrl <= '1'; -- RF[rn] <= imm.
			RFs_ctrl <= "10";
			IRld_ctrl <= '0';
			state <= S_IMM_LOADa;
	  when S_IMM_LOADa =>   
			state <= S_FETCH_INST;
	    
	  when S_ADD =>	
			cur_state <= x"7";
			RFr1a_ctrl <= IR_word(7 downto 4);	
			RFr1e_ctrl <= '1'; -- RF[r1] <= RF[r2] + RF[r3]
			RFr2e_ctrl <= '1'; 
			RFr2a_ctrl <= IR_word(3 downto 0);
 			ALUs_ctrl <= "010";
			state <= S_ADDa;
	  when S_ADDa =>   
			RFr1e_ctrl <= '0';
			RFr2e_ctrl <= '0';
			RFs_ctrl <= "00";
			RFwa_ctrl <= IR_word(11 downto 8);
			RFwe_ctrl <= '1';
			state <= S_ADDb;
	  when S_ADDb =>   
			state <= S_FETCH_INST;
					
	  when S_SUBT =>	
			cur_state <= x"8";
			RFr1a_ctrl <= IR_word(7 downto 4);	
			RFr1e_ctrl <= '1'; -- RF[r1] <= RF[r2] - RF[r3]
			RFr2a_ctrl <= IR_word(3 downto 0);
			RFr2e_ctrl <= '1';  
			ALUs_ctrl <= "011";
			state <= S_SUBTa;
	  when S_SUBTa =>   
			RFr1e_ctrl <= '0';
			RFr2e_ctrl <= '0';
			RFs_ctrl <= "00";
			RFwa_ctrl <= IR_word(11 downto 8);
			RFwe_ctrl <= '1';
			state <= S_SUBTb;
	  when S_SUBTb =>   state <= S_FETCH_INST;
	  
	  when S_JUMP_Z =>	
			cur_state <= x"9";
			jmpen_ctrl <= '1';
			RFr1a_ctrl <= IR_word(11 downto 8);	
			RFr1e_ctrl <= '1'; -- jz if R[rn] = 0
			ALUs_ctrl <= "000";
			state <= S_JUMP_Za;
	  when S_JUMP_Za =>   state <= S_JUMP_Zb;
	  when S_JUMP_Zb =>   jmpen_ctrl <= '0';
	        state <= S_FETCH_INST;
			  
	  when S_HALT =>	
			cur_state <= x"A";
			state <= S_HALT; -- halt

	  when S_OUTPUT_MEM =>   
			cur_state <= x"B";
			Ms_ctrl <= "01";
			Mre_ctrl <= '1'; -- read memory
			Mwe_ctrl <= '0';		  
			big_addr <= '1';
			
			-- Need to wait until the memory has received the instruction
			IF(main_mem_status = '1') THEN
				state <= S_OUTPUT_MEM_wait;	
			END IF;
			
		when S_OUTPUT_MEM_wait =>
			-- Need to wait until the memory has read the data
			IF(main_mem_status = '1') THEN
				state <= S_OUTPUT_MEMa;
			END IF;
	  when S_OUTPUT_MEMa =>  
			cur_state <= x"F";
			oe_ctrl <= '1'; 		  
			big_addr <= '0';
			state <= S_FETCH_INST;
		
	  when others =>
	end case;
    end if;
  end process;
end fsm;