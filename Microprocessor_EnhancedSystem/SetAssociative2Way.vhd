library	ieee;
use ieee.std_logic_1164.all;
USE ieee.numeric_std.all; 
use work.MP_lib.all;

entity SetAssociative2Way is
port ( 	
		clock					: 	in STD_LOGIC;
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
		D_main_mem_out		:  OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
		D_cache				:	OUT cache_type;
		D_tagIn,D_tagCache:	OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		D_set_num_index, D_word_num_index	:	OUT INTEGER
);
end SetAssociative2Way;

architecture behv of SetAssociative2Way is

	SIGNAL tmp_cache: cache_type;

	SIGNAL main_mem_status: STD_LOGIC;
	SIGNAL main_mem_output: STD_LOGIC_VECTOR(15 downto 0);

	SIGNAL address_sent : STD_LOGIC_VECTOR(11 DOWNTO 0);
	
	SIGNAL write_mem_status, read_mem_status : STD_LOGIC;

	SIGNAL address_tag						: STD_LOGIC_VECTOR(7 DOWNTO 0) := address_sent(11 DOWNTO 4);
	SIGNAL set_num_index 					: INTEGER := TO_INTEGER(UNSIGNED(address_sent(3 DOWNTO 2)));
	SIGNAL read_line, write_line			: INTEGER := 0;
	SIGNAL read_replace, write_replace	: STD_LOGIC := '0';
	SIGNAL word_num_index					: INTEGER := TO_INTEGER(UNSIGNED(address_sent(1 DOWNTO 0)));

	SIGNAL tmp_mem_status	:STD_LOGIC;

begin
	mem_status <= tmp_mem_status AND (write_mem_status OR read_mem_status);

	D_main_mem_out <= main_mem_output;

	D_write_mem_status <= write_mem_status;
	D_read_mem_status <= read_mem_status;

	D_cache <= tmp_cache;
	D_tagIn <= address_tag;
	D_tagCache <= tmp_cache(set_num_index)(0).tag;
	
	D_set_num_index <= set_num_index;
	D_word_num_index <= word_num_index;

	Unit1: MainMemory PORT MAP (
		address_sent, --		address	: IN STD_LOGIC_VECTOR (11 DOWNTO 0);
		big_addr, 			--		big_addr	: IN STD_LOGIC;
		'1',		 			--		clken		: IN STD_LOGIC  := '1';
		clock, 				--		clock		: IN STD_LOGIC  := '1';
		data_in, 			--		data		: IN STD_LOGIC_VECTOR (15 DOWNTO 0);
		Mre, 					--		rden		: IN STD_LOGIC  := '1';
		Mwe, 			 		--		wren		: IN STD_LOGIC ;
		main_mem_status,  --		main_mem_status   : OUT STD_LOGIC;
		D_main_mem_clk,
		main_mem_output 	--		q			: OUT STD_LOGIC_VECTOR (15 DOWNTO 0)
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
	PROCESS(clock, read_replace, read_line, write_replace, write_line, data_in)
	BEGIN
		IF(rising_edge(clock)) THEN
			IF(read_replace = '1') THEN
				tmp_cache(set_num_index)(read_line).tag <= address_tag;
				tmp_cache(set_num_index)(read_line).words(word_num_index) <= main_mem_output;

			ELSIF(write_replace = '1') THEN
				tmp_cache(set_num_index)(write_line).tag <= address_tag;
				tmp_cache(set_num_index)(write_line).words(word_num_index) <= data_in;

			END IF;
		END IF;
	END PROCESS;

	write: 
	PROCESS(clock, data_in, address_tag, set_num_index, word_num_index)
	BEGIN
		IF (rising_edge(clock)) THEN
			write_mem_status <= '0';
			write_replace <= '0';

			-- If we are only writing
			IF (Mwe = '1' AND Mre = '0') THEN  -- Mwe ='1' AND Mre = '0') THEN

				-- Always write to main memory
				write_mem_status <= main_mem_status;

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
			END IF;
		END IF;
	END PROCESS;

   read: 
	PROCESS(clock, address_tag, set_num_index, word_num_index)
		VARIABLE line_to_replace : INTEGER := 0;
	begin
		if (rising_edge(clock)) then
			read_mem_status <= '0';
			read_replace <= '0';

			-- If we are only reading
			IF(Mwe = '0' AND Mre = '1') THEN  -- AND Mre = '1' ) THEN
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
					read_replace <= '1';
					read_line <= line_to_replace;
					line_to_replace := (line_to_replace + 1) mod 2;
					
					read_mem_status <= main_mem_status;

					data_out <= main_mem_output;
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