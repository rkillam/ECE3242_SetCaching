library	ieee;
use ieee.std_logic_1164.all;
USE ieee.numeric_std.all; 
use work.MP_lib.all;

entity SetAssociative2Way is
port ( 	
		clock					: 	in STD_LOGIC;
		reset					:  IN STD_LOGIC;
		Mre					:	in STD_LOGIC;
		Mwe					:	in STD_LOGIC;
		address				:	in STD_LOGIC_VECTOR(11 downto 0);
		big_addr 			:	in STD_LOGIC;
		data_in				:	in STD_LOGIC_VECTOR(15 downto 0);
		data_out				:	out STD_LOGIC_VECTOR(15 downto 0);
		mem_status 			: 	out STD_LOGIC;

		-- Debug lines
		D_main_mem_clk		: 	out STD_LOGIC;
		D_write_mem_status:  OUT STD_LOGIC;
		D_read_mem_status :  OUT STD_LOGIC;
		D_main_mem_out		:  OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
		D_cache				:	OUT cache_type;
		D_tagIn,D_tagCache:	OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		D_set_num_index, D_word_num_index	:	OUT INTEGER;
		D_read_line : OUT INTEGER
);
end SetAssociative2Way;

architecture behv of SetAssociative2Way is

	SIGNAL tmp_cache: cache_type;

	SIGNAL main_mem_status: STD_LOGIC;
	SIGNAL main_mem_output: STD_LOGIC_VECTOR(63 downto 0);

	SIGNAL address_sent : STD_LOGIC_VECTOR(11 DOWNTO 0);

	SIGNAL write_mem_status, read_mem_status : STD_LOGIC;

	SIGNAL address_tag						: STD_LOGIC_VECTOR(7 DOWNTO 0) := address_sent(11 DOWNTO 4);
	SIGNAL set_num_index 					: INTEGER := TO_INTEGER(UNSIGNED(address_sent(3 DOWNTO 2)));
	SIGNAL read_line, write_line			: INTEGER := 0;
	SIGNAL read_replace, write_replace	: STD_LOGIC := '0';
	SIGNAL word_num_index					: INTEGER := TO_INTEGER(UNSIGNED(address_sent(1 DOWNTO 0)));

	SIGNAL tmp_mem_status	: STD_LOGIC;

	SIGNAL data_to_write		: STD_LOGIC_VECTOR(63 DOWNTO 0);

	SIGNAL main_mem_read_en, main_mem_ren, main_mem_ren_for_write, main_mem_wen : STD_LOGIC := '0';

	SIGNAL writing : STD_LOGIC;
	SIGNAL writing_address : STD_LOGIC_VECTOR(9 DOWNTO 0);

begin
	mem_status <= tmp_mem_status AND (write_mem_status OR read_mem_status);
	
	main_mem_read_en <= main_mem_ren OR main_mem_ren_for_write;

	D_main_mem_out <= main_mem_output;

	D_write_mem_status <= write_mem_status;
	D_read_mem_status <= read_mem_status;

	D_cache <= tmp_cache;
	D_tagIn <= address_tag;
	D_tagCache <= tmp_cache(set_num_index)(0).tag;
	
	D_set_num_index <= set_num_index;
	D_word_num_index <= word_num_index;
	D_read_line <= read_line;

--	Unit1: MainMemory PORT MAP (
--		address_sent, 		--		address	: IN STD_LOGIC_VECTOR (11 DOWNTO 0);
--		big_addr, 			--		big_addr	: IN STD_LOGIC;
--		'1',		 			--		clken		: IN STD_LOGIC  := '1';
--		clock, 				--		clock		: IN STD_LOGIC  := '1';
--		data_in, 			--		data		: IN STD_LOGIC_VECTOR (15 DOWNTO 0);
--		Mre, 					--		rden		: IN STD_LOGIC  := '1';
--		Mwe, 			 		--		wren		: IN STD_LOGIC ;
--		main_mem_status,  --		main_mem_status   : OUT STD_LOGIC;
--		D_main_mem_clk,
--		main_mem_output 	--		q			: OUT STD_LOGIC_VECTOR (15 DOWNTO 0)
--	);

	Unit1: MainMemory64Words PORT MAP (
		address_sent(11 downto 2),		-- address	: IN STD_LOGIC_VECTOR (9 DOWNTO 0);
		'1',									-- clken		: IN STD_LOGIC  := '1';
		clock,								-- clock		: IN STD_LOGIC  := '1';
		data_to_write,						-- data		: IN STD_LOGIC_VECTOR (63 DOWNTO 0);
		main_mem_read_en, 				-- rden		: IN STD_LOGIC  := '1';
		main_mem_wen,						-- wren		: IN STD_LOGIC ;
		main_mem_status,					-- main_mem_status	: OUT STD_LOGIC;
		D_main_mem_clk,					--D_main_mem_clk 	: OUT STD_LOGIC; -- Outputs the clock given to the memory
		main_mem_output					-- q		: OUT STD_LOGIC_VECTOR (63 DOWNTO 0)
	);

	setAddrType:
	PROCESS(address, big_addr)
	BEGIN
		IF(big_addr = '1') THEN
			address_sent <= address;
		ELSE
			address_sent <= "0000" & address(7 DOWNTO 0);
		END IF;
	END PROCESS;

	cacheWrite:
	PROCESS(clock, reset, read_replace, read_line, write_replace, write_line, data_in)
	BEGIN
		IF(rising_edge(clock)) THEN
			-- Try this instead of this reset -> http://www.edaboard.com/thread88582.html
			IF(reset = '1') THEN
				FOR i IN 0 TO 3 LOOP
					tmp_cache(i)(0).tag <= x"FF";
					tmp_cache(i)(1).tag <= x"FF";
				END LOOP;

			ELSE
				IF(read_replace = '1') THEN
					tmp_cache(set_num_index)(read_line).tag <= address_tag;
					tmp_cache(set_num_index)(read_line).words(0) <= main_mem_output(63 downto 48);
					tmp_cache(set_num_index)(read_line).words(1) <= main_mem_output(47 downto 32);
					tmp_cache(set_num_index)(read_line).words(2) <= main_mem_output(31 downto 16);
					tmp_cache(set_num_index)(read_line).words(3) <= main_mem_output(15 downto 0);

				ELSIF(write_replace = '1') THEN
					tmp_cache(set_num_index)(write_line).tag <= address_tag;
					tmp_cache(set_num_index)(write_line).words(word_num_index) <= data_in;

				END IF;
			END IF;
		END IF;
	END PROCESS;

	write: 
	PROCESS(clock, data_in, address_tag, set_num_index, word_num_index)
		TYPE state_type IS (
			Wait_For_Read_Inst_Received,
			Wait_For_Read_Data,
			Update_Block,
			Wait_Write_Back_Inst_Received,
			Wait_Write_Back_Complete
		);
		VARIABLE state : state_type;

		VARIABLE changeBlock : STD_LOGIC_VECTOR (63 DOWNTO 0);
	BEGIN
		IF (rising_edge(clock)) THEN
			write_mem_status <= '0';
			write_replace <= '0';

			-- If we are only writing
			IF (Mwe = '1' AND Mre = '0') THEN
				CASE state IS
					WHEN Wait_For_Read_Inst_Received =>
						main_mem_ren_for_write <= '1';

						IF (main_mem_status = '1') THEN
							state := Wait_For_Read_Data;
						END IF;

					WHEN Wait_For_Read_Data =>
						IF (main_mem_status = '1') THEN
							changeBlock := main_mem_output;
							state := Update_Block;
						END IF;

					WHEN Update_Block =>
						main_mem_ren_for_write <= '0';

						CASE word_num_index IS
							WHEN 0 =>
								changeBlock(63 downto 48) := data_in;
							WHEN 1 =>
								changeBlock(47 downto 32) := data_in;
							WHEN 2 =>
								changeBlock(31 downto 16) := data_in;
							WHEN 3 =>
								changeBlock(15 downto 0)  := data_in;
							WHEN OTHERS =>
								NULL;

						END CASE;
						state := Wait_Write_Back_Inst_Received;

					WHEN Wait_Write_Back_Inst_Received =>
						writing <= '1';
						write_mem_status <= '1';
						data_to_write <= changeBlock;

						IF(main_mem_status = '1') THEN
							-- TODO: Stop using an if else

							-- Attempt to write to cache
							-- If the tag matches the first line in the set
							IF address_tag = tmp_cache(set_num_index)(0).tag THEN
								write_replace <= '1';
								write_line <= 0;

							-- If the tag matches the second line in the set
							ELSIF address_tag = tmp_cache(set_num_index)(1).tag THEN
								write_replace <= '1';
								write_line <= 1;

							END IF;

							state := Wait_Write_Back_Complete;
						END IF;

					WHEN Wait_Write_Back_Complete =>
						IF(main_mem_status = '1') THEN
							writing <= '0';
							main_mem_wen <= '1';
							main_mem_wen <= '0';
							state := Wait_For_Read_Inst_Received;
						END IF;

					WHEN OTHERS =>
						state := Wait_For_Read_Inst_Received;
				END CASE;
			END IF;
		END IF;
	END PROCESS;

   read: 
	PROCESS(clock, address_tag, set_num_index, word_num_index)
		TYPE set_lines IS ARRAY (0 TO 3) OF INTEGER;

		VARIABLE lines_to_replace : set_lines := (others => 0);

		TYPE state_type IS (
			Wait_For_Inst_Received,
			Wait_For_Data,
			Write_To_Cache,
			Output_data
		);
		VARIABLE state : state_type;

	begin
		if (rising_edge(clock)) then
			read_mem_status <= '0';
			read_replace <= '0';

			-- If we are only reading
			IF(Mwe = '0' AND Mre = '1') THEN  -- AND 
--				(writing = '0' OR address_sent(11 DOWNTO 2) /= writing_address)) THEN
				-- TODO: Stop using an if else

				-- Attempt to read from cache
				-- If the tag matches the first line in the set
				IF address_tag = tmp_cache(set_num_index)(0).tag THEN
					read_mem_status <= '1';
					data_out <= tmp_cache(set_num_index)(0).words(word_num_index);

				-- If the tag matches the second line in the set
				ELSIF address_tag = tmp_cache(set_num_index)(1).tag THEN
					read_mem_status <= '1';
					data_out <= tmp_cache(set_num_index)(1).words(word_num_index);

				-- If the address is not in cache
				ELSE
					CASE state IS
						WHEN Wait_For_Inst_Received =>
							main_mem_ren <= '1';

							IF (main_mem_status = '1') THEN
								state := Wait_For_Data;
							END IF;

						WHEN Wait_For_Data =>
							IF (main_mem_status = '1') THEN
								main_mem_ren <= '0';
								state := Write_To_Cache;
							END IF;

						WHEN Write_To_Cache =>
							read_replace <= '1';
							read_line <= lines_to_replace(set_num_index);

							state := Output_data;

						WHEN Output_data =>
							read_mem_status <= '1';

							data_out <= tmp_cache(set_num_index)(lines_to_replace(set_num_index)).words(word_num_index);

							lines_to_replace(set_num_index) := (lines_to_replace(set_num_index) + 1) MOD 2;

							state := Wait_For_Inst_Received;

						WHEN OTHERS =>
							state := Wait_For_Inst_Received;

					END CASE;
				END IF;
			END IF;
		END IF;
	END PROCESS;

	manageStatus:
	PROCESS(clock, main_mem_status)
		VARIABLE old_main_mem_status : STD_LOGIC := '0';
	BEGIN
		IF(rising_edge(clock)) THEN
			tmp_mem_status <= '0';
			IF(main_mem_status = old_main_mem_status) THEN
				old_main_mem_status := NOT main_mem_status;
			ELSE
				old_main_mem_status := main_mem_status;

				IF(main_mem_status = '1') THEN
					tmp_mem_status <= '1';
				END IF;
			END IF;
		END IF;
	END PROCESS;
end behv;