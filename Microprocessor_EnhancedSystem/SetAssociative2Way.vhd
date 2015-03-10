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

	SIGNAL word_decoder_en : STD_LOGIC_VECTOR(0 TO 7);
				
	SIGNAL selectWordSet0Line0,selectWordSet0Line1,
				selectWordSet1Line0,selectWordSet1Line1: STD_LOGIC_VECTOR(15 downto 0);

	SIGNAL selectWordSet2Line0,selectWordSet2Line1,
				selectWordSet3Line0,selectWordSet3Line1: STD_LOGIC_VECTOR(15 downto 0);

	SIGNAL output: STD_LOGIC_VECTOR(15 downto 0);

	SIGNAL main_mem_status: STD_LOGIC;
	SIGNAL main_mem_Mre, main_mem_Mwe : STD_LOGIC := '0';
	SIGNAL main_mem_output: STD_LOGIC_VECTOR(15 downto 0);
	SIGNAL main_mem_address: STD_LOGIC_VECTOR(11 downto 0);

	type newBlockAddresses_type is array(0 to 3) of STD_LOGIC_VECTOR(11 downto 0);

	SIGNAL newBlockAddresses: newBlockAddresses_type;

	SIGNAL word_statuses : STD_LOGIC_VECTOR(0 TO 3);

	SIGNAL lineValue: INTEGER := 0;

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
		Mre, --main_mem_Mre,	 	--		rden		: IN STD_LOGIC  := '1';
		Mwe, --main_mem_Mwe, 		--		wren		: IN STD_LOGIC ;
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
--				tmp_cache(set_num_index)(write_line).words(word_num_index) <= data_in;

			END IF;
		END IF;
	END PROCESS;

	write: 
	PROCESS(clock, Mre, data_in, address_tag, set_num_index, word_num_index)
	BEGIN
		IF (rising_edge(clock)) THEN
			write_mem_status <= '0';
			write_replace <= '0';

			-- If we are only writing
			IF (Mwe ='1' AND Mre = '0') THEN

				-- Always write to main memory
				write_mem_status <= main_mem_status;
				main_mem_Mwe <= '1';

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
	PROCESS(clock, Mre, address_tag, set_num_index, word_num_index)
		VARIABLE line_to_replace : INTEGER := 0;
	begin
		if (rising_edge(clock)) then
			read_mem_status <= '0';
			read_replace <= '0';

			-- If we are only reading
			IF(Mwe = '0' AND Mre = '1' ) THEN
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
					main_mem_Mre <= '1';

					data_out <= main_mem_output;

					-- TODO put data in cache
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

--			mem_status <= '0';
--			if (Mre ='1' and Mwe ='0') then
--				if (NOT(wordDecoder0En = '1' OR
--						  wordDecoder1En = '1' OR
--						  wordDecoder2En = '1' OR
--						  wordDecoder3En = '1' OR
--						  wordDecoder4En = '1' OR
--						  wordDecoder5En = '1' OR
--						  wordDecoder6En = '1' OR
--						  wordDecoder7En = '1')) then
--					
--					
--					
--					newBlockAddresses(0)(11 downto 2) <= address(11 downto 2);
--					newBlockAddresses(0)(1 downto 0) <= "00";
--					newBlockAddresses(1)(11 downto 2) <= address(11 downto 2);
--					newBlockAddresses(1)(1 downto 0) <= "01";
--					newBlockAddresses(2)(11 downto 2) <= address(11 downto 2);
--					newBlockAddresses(2)(1 downto 0) <= "10";
--					newBlockAddresses(3)(11 downto 2) <= address(11 downto 2);
--					newBlockAddresses(3)(1 downto 0) <= "11";
--					
--					tmp_cache(TO_INTEGER(unsigned(address(3 downto 2))))(lineValue).tag <= address(11 downto 4);
--					
--					main_mem_address <= newBlockAddresses(0);
--					main_mem_Mwe <= '0';
--					main_mem_Mre <= '1';
--					word0Status <= '1';
--					
--					if word0Status = '1' then
--						if main_mem_status = '1' then	
--							tmp_cache(TO_INTEGER(unsigned(address(3 downto 2))))(lineValue).words(0) <= main_mem_output;
--							main_mem_address <= newBlockAddresses(1);
--							word0Status <= '0';
--							word1Status <= '1';
--						end if;
--					elsif word1Status = '1' then
--						if main_mem_status = '1' then
--							tmp_cache(TO_INTEGER(unsigned(address(3 downto 2))))(lineValue).words(1) <= main_mem_output;
--							main_mem_address <= newBlockAddresses(2);
--							word1Status <= '0';
--							word2Status <= '1';
--						end if;
--					elsif word2Status = '1' then
--						if main_mem_status = '1' then
--							tmp_cache(TO_INTEGER(unsigned(address(3 downto 2))))(lineValue).words(2) <= main_mem_output;
--							main_mem_address <= newBlockAddresses(3);
--							word2Status <= '0';
--						end if;
--					elsif word3Status = '1' then
--						if main_mem_status = '1' then
--							tmp_cache(TO_INTEGER(unsigned(address(3 downto 2))))(lineValue).words(3) <= main_mem_output;
--							word3Status <= '0';
--						end if;
--					elsif word0Status = '0' AND word1Status = '0' AND word2Status = '0' AND word3Status = '0' then
--						case address(1 downto 0) is
--							when "00" => data_out <= tmp_cache(TO_INTEGER(unsigned(address(3 downto 2))))(lineValue).words(0);
--							when "01" => data_out <= tmp_cache(TO_INTEGER(unsigned(address(3 downto 2))))(lineValue).words(1);
--							when "10" => data_out <= tmp_cache(TO_INTEGER(unsigned(address(3 downto 2))))(lineValue).words(2);
--							when "11" => data_out <= tmp_cache(TO_INTEGER(unsigned(address(3 downto 2))))(lineValue).words(3);
--						end case;
--						
--						if lineValue = 1 then
--							lineValue <= 0;
--						else
--							lineValue <= 1;
--						end if;
--						
--						mem_status <= '1';
--					end if;
--					
--				else
--					main_mem_Mwe <= '0';
--					main_mem_Mre <= '0';
--				
--					data_out <= output;
--				end if;
--			end if;
	
	
--	setCheck: Decoder2to4 port map (Mre,address(3 downto 2),set0,set1,set2,set3);
--					
--	set0Comparitor0: Comparator12Bits port map (set0, address(11 downto 4),tmp_cache(0)(0).tag,wordDecoder0En);
--	set0Comparitor1: Comparator12Bits port map (set0, address(11 downto 4),tmp_cache(0)(1).tag,wordDecoder1En);
--	set1Comparitor0: Comparator12Bits port map (set1, address(11 downto 4),tmp_cache(1)(0).tag,wordDecoder2En);
--	set1Comparitor1: Comparator12Bits port map (set1, address(11 downto 4),tmp_cache(1)(1).tag,wordDecoder3En);
--	set2Comparitor0: Comparator12Bits port map (set2, address(11 downto 4),tmp_cache(2)(0).tag,wordDecoder4En);
--	set2Comparitor1: Comparator12Bits port map (set2, address(11 downto 4),tmp_cache(2)(1).tag,wordDecoder5En);
--	set3Comparitor0: Comparator12Bits port map (set3, address(11 downto 4),tmp_cache(3)(0).tag,wordDecoder6En);
--	set3Comparitor1: Comparator12Bits port map (set3, address(11 downto 4),tmp_cache(3)(1).tag,wordDecoder7En);
--
--	wordDecoder0: WordDecoder2to4 port map(wordDecoder0En,address(1 downto 0),tmp_cache(0)(0).words,selectWordSet0Line0);
--	wordDecoder1: WordDecoder2to4 port map(wordDecoder1En,address(1 downto 0),tmp_cache(0)(1).words,selectWordSet0Line1);
--	wordDecoder2: WordDecoder2to4 port map(wordDecoder2En,address(1 downto 0),tmp_cache(1)(0).words,selectWordSet1Line0);
--	wordDecoder3: WordDecoder2to4 port map(wordDecoder3En,address(1 downto 0),tmp_cache(1)(1).words,selectWordSet1Line1);
--	wordDecoder4: WordDecoder2to4 port map(wordDecoder4En,address(1 downto 0),tmp_cache(2)(0).words,selectWordSet2Line0);
--	wordDecoder5: WordDecoder2to4 port map(wordDecoder5En,address(1 downto 0),tmp_cache(2)(1).words,selectWordSet2Line1);
--	wordDecoder6: WordDecoder2to4 port map(wordDecoder6En,address(1 downto 0),tmp_cache(3)(0).words,selectWordSet3Line0);
--	wordDecoder7: WordDecoder2to4 port map(wordDecoder7En,address(1 downto 0),tmp_cache(3)(1).words,selectWordSet3Line1);
--
--	dataOut: OutputSelection8to1 port map(wordDecoder0En,wordDecoder1En,wordDecoder2En,wordDecoder3En,
--													 wordDecoder4En,wordDecoder5En,wordDecoder6En,wordDecoder7En,
--													 selectWordSet0Line0,selectWordSet0Line1,selectWordSet1Line0,selectWordSet1Line1,
--													 selectWordSet2Line0,selectWordSet2Line1,selectWordSet3Line0,selectWordSet3Line1,
--													 output);
end behv;