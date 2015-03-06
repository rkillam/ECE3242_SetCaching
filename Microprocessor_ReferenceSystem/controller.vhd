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
port(	clock:		in std_logic;
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
	ALUs_ctrl:	out std_logic_vector(1 downto 0);	 
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

  type state_type is (  S0,S1,S1a,S1b,S2,S3,S3a,S3b,S4,S4a,S4b,S5,S5a,S5b,
			S6,S6a,S7,S7a,S7b,S8,S8a,S8b,S9,S9a,S9b,S10,S11,S11a,S11_wait,S4_wait,S1_wait,
			S3_wait,S5_wait,
			LoadMemory,LoadMemory_wait,LoadMemory_a,LoadMemory_b,
			SaveMemory,SaveMemory_wait,SaveMemory_a,SaveMemory_b);
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
		state <= S0;

    elsif (clock'event and clock='1') then
	case state is 
	  when S0 =>	
			PCclr_ctrl <= '0';	-- Reset State	
			state <= S1;	

	  when S1 =>	
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
				state <= S1_wait;
			END IF;
		when S1_wait =>
			cur_state <= x"2";
			-- Need to wait until the memory has retrieved the data
			IF(main_mem_status = '1') THEN
				state <= S1a;
			END IF;
	  when S1a => 	
				cur_state <= x"3";
	        IRld_ctrl <= '0';
	        PCinc_ctrl <= '1';
	        Mre_ctrl <= '0';
	  		state <= S1b;			-- Fetch end ...
	  when S1b => 
			cur_state <= x"4";
			PCinc_ctrl <= '0';
		   state <= S2;

	  when S2 =>	
			cur_state <= x"2";
			OPCODE := IR_word(15 downto 12);
			  case OPCODE is
			    when mov1 => 	state <= S3;
			    when mov2 => 	state <= S4;
			    when mov3 => 	state <= S5;
			    when mov4 => 	state <= S6;
			    when add =>  	state <= S7;
			    when subt =>	state <= S8;
			    when jz =>		state <= S9;
			    when halt =>	state <= S10; 
			    when readm => 	state <= S11;
				 WHEN loadMemory => state <= LoadMemory;
				 WHEN saveMemory => state <= SaveMemory;
			    when others => 	state <= S1;
			    end case;

	  when S3 =>	
			cur_state <= x"3";
			RFwa_ctrl <= IR_word(11 downto 8);	
			RFs_ctrl <= "01";  -- RF[rn] <= mem[direct]
			Ms_ctrl <= "01";
			Mre_ctrl <= '1';
			Mwe_ctrl <= '0';	

			-- Need to wait until the memory has received the instruction
			IF(main_mem_status = '1') THEN
				state <= S3_wait;
			END IF;
		when S3_wait =>
			-- Need to wait until the memory has retrieved the data
			IF(main_mem_status = '1') THEN
				state <= S3a;
			END IF;
	  when S3a =>   
				RFwe_ctrl <= '1'; 
	        Mre_ctrl <= '0'; 
			state <= S3b;
	  when S3b => 	RFwe_ctrl <= '0';
			state <= S1;
	    
	  when S4 =>	
			cur_state <= x"4";
			RFr1a_ctrl <= IR_word(11 downto 8);	
			RFr1e_ctrl <= '1'; -- mem[direct] <= RF[rn]			
			Ms_ctrl <= "01";
			ALUs_ctrl <= "00";	  
			IRld_ctrl <= '0';
			state <= S4a;			-- read value from RF
	  when S4a =>   
			Mre_ctrl <= '0';
			Mwe_ctrl <= '1';
			
			-- Need to wait until the memory has received the instruction
			IF(main_mem_status = '1') THEN
				state <= S4_wait;			-- write into memory
			END IF;
		when S4_wait =>
			-- Need to wait until the memory has written the data
			IF(main_mem_status = '1') THEN
				state <= S4b;
			END IF;
	  when S4b =>   
			Ms_ctrl <= "10";				  
			Mwe_ctrl <= '0';
			state <= S1;
		
	  when S5 =>	
			cur_state <= x"5";
			RFr1a_ctrl <= IR_word(11 downto 8);	
			RFr1e_ctrl <= '1'; -- mem[RF[rn]] <= RF[rm]
			Ms_ctrl <= "00";
			ALUs_ctrl <= "01";
			RFr2a_ctrl <= IR_word(7 downto 4); 
			RFr2e_ctrl <= '1'; -- set addr.& data
			state <= S5a;
	  when S5a =>   
			Mre_ctrl <= '0';			
			Mwe_ctrl <= '1'; -- write into memory
			
			-- Need to wait until the memory has received the instruction
			IF(main_mem_status = '1') THEN
				state <= S5_wait;	
			END IF;
		when S5_wait =>
			-- Need to wait until the memory has written the data
			IF(main_mem_status = '1') THEN
				state <= S5b;
			END IF;
	  when S5b => 	
			Ms_ctrl <= "10";-- return
			Mwe_ctrl <= '0';
			state <= S1;
					
	  when S6 =>	
			cur_state <= x"6";
			RFwa_ctrl <= IR_word(11 downto 8);	
			RFwe_ctrl <= '1'; -- RF[rn] <= imm.
			RFs_ctrl <= "10";
			IRld_ctrl <= '0';
			state <= S6a;
	  when S6a =>   state <= S1;
	    
	  when S7 =>	
			cur_state <= x"7";
			RFr1a_ctrl <= IR_word(11 downto 8);	
			RFr1e_ctrl <= '1'; -- RF[rn] <= RF[rn] + RF[rm]
			RFr2e_ctrl <= '1'; 
			RFr2a_ctrl <= IR_word(7 downto 4);
 			ALUs_ctrl <= "10";
			state <= S7a;
	  when S7a =>   RFr1e_ctrl <= '0';
			RFr2e_ctrl <= '0';
			RFs_ctrl <= "00";
			RFwa_ctrl <= IR_word(11 downto 8);
			RFwe_ctrl <= '1';
			state <= S7b;
	  when S7b =>   state <= S1;
					
	  when S8 =>	
			cur_state <= x"8";
			RFr1a_ctrl <= IR_word(11 downto 8);	
			RFr1e_ctrl <= '1'; -- RF[rn] <= RF[rn] - RF[rm]
			RFr2a_ctrl <= IR_word(7 downto 4);
			RFr2e_ctrl <= '1';  
			ALUs_ctrl <= "11";
			state <= S8a;
	  when S8a =>   RFr1e_ctrl <= '0';
			RFr2e_ctrl <= '0';
			RFs_ctrl <= "00";
			RFwa_ctrl <= IR_word(11 downto 8);
			RFwe_ctrl <= '1';
			state <= S8b;
	  when S8b =>   state <= S1;
	  
	  when S9 =>	
			cur_state <= x"9";
			jmpen_ctrl <= '1';
			RFr1a_ctrl <= IR_word(11 downto 8);	
			RFr1e_ctrl <= '1'; -- jz if R[rn] = 0
			ALUs_ctrl <= "00";
			state <= S9a;
	  when S9a =>   state <= S9b;
	  when S9b =>   jmpen_ctrl <= '0';
	        state <= S1;
			  
	  when S10 =>	
			cur_state <= x"A";
			state <= S10; -- halt

	  when S11 =>   
			cur_state <= x"B";
			Ms_ctrl <= "01";
			Mre_ctrl <= '1'; -- read memory
			Mwe_ctrl <= '0';		  
			big_addr <= '1';
			
			-- Need to wait until the memory has received the instruction
			IF(main_mem_status = '1') THEN
				state <= S11_wait;	
			END IF;
			
		when S11_wait =>
			-- Need to wait until the memory has read the data
			IF(main_mem_status = '1') THEN
				state <= S11a;
			END IF;
	  when S11a =>  
			cur_state <= x"F";
			oe_ctrl <= '1'; 		  
			big_addr <= '0';
			state <= S1;
			
		WHEN LoadMemory =>
			cur_state <= x"C";
			RFwa_ctrl <= x"0";	-- Always reads into R0
			RFs_ctrl <= "01";  	-- RF[0] <= mem[direct]
			Ms_ctrl <= "01";
			Mre_ctrl <= '1';
			Mwe_ctrl <= '0';	
			big_addr <= '1';
			
			-- Need to wait until the memory has received the instruction
			IF(main_mem_status = '1') THEN
				state <= LoadMemory_wait;	
			END IF;
			
		WHEN LoadMemory_wait =>
			-- Need to wait until the memory has read the data
			IF(main_mem_status = '1') THEN
				state <= LoadMemory_a;
			END IF;
		WHEN LoadMemory_a =>   
			RFwe_ctrl <= '1'; 
			Mre_ctrl <= '0'; 
			state <= LoadMemory_b;
		WHEN LoadMemory_b => 	
			RFwe_ctrl <= '0';
			big_addr <= '0';
			state <= S1;
			
	  when SaveMemory =>	
			cur_state <= x"D";
			RFr1a_ctrl <= x"0";	
			RFr1e_ctrl <= '1'; -- mem[direct] <= RF[0]			
			Ms_ctrl <= "01";
			ALUs_ctrl <= "00";	  
			IRld_ctrl <= '0';
			state <= SaveMemory_a;
			
	  when SaveMemory_a =>   
			Mre_ctrl <= '0';
			Mwe_ctrl <= '1';
			big_addr <= '1';
			
			-- Need to wait until the memory has received the instruction
			IF(main_mem_status = '1') THEN
				state <= SaveMemory_wait;				-- write into memory
			END IF;
			
		when SaveMemory_wait =>
			-- Need to wait until the memory has written the data
			IF(main_mem_status = '1') THEN
				state <= SaveMemory_b;
			END IF;
	  when SaveMemory_b =>   
			Ms_ctrl <= "10";				  
			Mwe_ctrl <= '0';
			big_addr <= '0';
			state <= S1;
		
	  when others =>
	end case;
    end if;
  end process;
end fsm;