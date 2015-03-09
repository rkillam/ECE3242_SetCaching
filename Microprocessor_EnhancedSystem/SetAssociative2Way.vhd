library	ieee;
use ieee.std_logic_1164.all;
USE ieee.numeric_std.all; 
use work.MP_lib.all;

entity SetAssociative2Way is
port ( 	
		clock					: 	in std_logic;
		Mre					:	in std_logic;
		Mwe					:	in std_logic;
		address				:	in std_logic_vector(11 downto 0);
		big_addr 			:	in std_logic;
		data_in				:	in std_logic_vector(15 downto 0);
		data_out				:	out std_logic_vector(15 downto 0);
		mem_status 			: 	out std_logic;
		main_mem_clk		: 	out std_logic
);
end SetAssociative2Way;

architecture behv of SetAssociative2Way	 is			

--type words_type is array (0 to 3) of std_logic_vector(15 downto 0);
--type line_type is record
--	tag: 		std_logic_vector(7 downto 0);
--	words: 	words_type;
--end record;
--type set_type is array (0 to 1) of line_type;
--type cache_type is array (0 to 3) of set_type;

signal tmp_cache: cache_type;

signal set0,set1,set2,set3: std_logic;
signal wordDecoder0En,wordDecoder1En,wordDecoder2En,wordDecoder3En,wordDecoder4En,wordDecoder5En,wordDecoder6En,wordDecoder7En: std_logic;
signal selectWordSet0Line0,selectWordSet0Line1,selectWordSet1Line0,selectWordSet1Line1: std_logic_vector(15 downto 0);
signal selectWordSet2Line0,selectWordSet2Line1,selectWordSet3Line0,selectWordSet3Line1: std_logic_vector(15 downto 0);

signal output: std_logic_vector(15 downto 0);

signal main_mem_Mre,main_mem_Mwe,main_mem_status: std_logic;
signal main_mem_output: std_logic_vector(15 downto 0);
signal main_mem_address: std_logic_vector(11 downto 0);

type newBlockAddresses_type is array(0 to 3) of std_logic_vector(11 downto 0);

signal newBlockAddresses: newBlockAddresses_type;
signal word0Status,word1Status,word2Status,word3Status: std_logic;
signal lineValue: integer := 0;
begin
	Unit1: MainMemory PORT MAP (
		main_mem_address, 			--		address	: IN STD_LOGIC_VECTOR (11 DOWNTO 0);
		big_addr, 			--		big_addr	: IN STD_LOGIC;
		'1',		 			--		clken		: IN STD_LOGIC  := '1';
		clock, 				--		clock		: IN STD_LOGIC  := '1';
		data_in, 			--		data		: IN STD_LOGIC_VECTOR (15 DOWNTO 0);
		main_mem_Mre,	 	--		rden		: IN STD_LOGIC  := '1';
		main_mem_Mwe, 		--		wren		: IN STD_LOGIC ;
		main_mem_status,  --		main_mem_status   : OUT STD_LOGIC;
		main_mem_clk,
		main_mem_output 	--		q			: OUT STD_LOGIC_VECTOR (15 DOWNTO 0)
	);
	
	
	
	write: process(clock, Mre, address, data_in)
	begin 
		if (clock'event and clock = '1') then
			--mem_status <= '0';
			if (Mwe ='1' and Mre = '0') then
				--main_mem_Mwe <= '1';
				--main_mem_Mre <= '0';
				--main_mem_address <= address;
				if address(11 downto 4) = tmp_cache(TO_INTEGER(unsigned(address(3 downto 2))))(0).tag then
					--tmp_cache(TO_INTEGER(unsigned(address(3 downto 2))))(0).words(TO_INTEGER(unsigned(address(1 downto 0)))) <= data_in;
				elsif address(11 downto 4) = tmp_cache(TO_INTEGER(unsigned(address(3 downto 2))))(1).tag then
					--tmp_cache(TO_INTEGER(unsigned(address(3 downto 2))))(1).words(TO_INTEGER(unsigned(address(1 downto 0)))) <= data_in;
				end if;
			end if;
		end if;
	end process;
	
	
	setCheck: Decoder2to4 port map (Mre,address(3 downto 2),set0,set1,set2,set3);
					
	set0Comparitor0: Comparitor12Bits port map (set0, address(11 downto 4),tmp_cache(0)(0).tag,wordDecoder0En);
	set0Comparitor1: Comparitor12Bits port map (set0, address(11 downto 4),tmp_cache(0)(1).tag,wordDecoder1En);
	set1Comparitor0: Comparitor12Bits port map (set1, address(11 downto 4),tmp_cache(1)(0).tag,wordDecoder2En);
	set1Comparitor1: Comparitor12Bits port map (set1, address(11 downto 4),tmp_cache(1)(1).tag,wordDecoder3En);
	set2Comparitor0: Comparitor12Bits port map (set2, address(11 downto 4),tmp_cache(2)(0).tag,wordDecoder4En);
	set2Comparitor1: Comparitor12Bits port map (set2, address(11 downto 4),tmp_cache(2)(1).tag,wordDecoder5En);
	set3Comparitor0: Comparitor12Bits port map (set3, address(11 downto 4),tmp_cache(3)(0).tag,wordDecoder6En);
	set3Comparitor1: Comparitor12Bits port map (set3, address(11 downto 4),tmp_cache(3)(1).tag,wordDecoder7En);

	wordDecoder0: WordDecoder2to4 port map(wordDecoder0En,address(1 downto 0),tmp_cache(0)(0).words,selectWordSet0Line0);
	wordDecoder1: WordDecoder2to4 port map(wordDecoder1En,address(1 downto 0),tmp_cache(0)(1).words,selectWordSet0Line1);
	wordDecoder2: WordDecoder2to4 port map(wordDecoder2En,address(1 downto 0),tmp_cache(1)(0).words,selectWordSet1Line0);
	wordDecoder3: WordDecoder2to4 port map(wordDecoder3En,address(1 downto 0),tmp_cache(1)(1).words,selectWordSet1Line1);
	wordDecoder4: WordDecoder2to4 port map(wordDecoder4En,address(1 downto 0),tmp_cache(2)(0).words,selectWordSet2Line0);
	wordDecoder5: WordDecoder2to4 port map(wordDecoder5En,address(1 downto 0),tmp_cache(2)(1).words,selectWordSet2Line1);
	wordDecoder6: WordDecoder2to4 port map(wordDecoder6En,address(1 downto 0),tmp_cache(3)(0).words,selectWordSet3Line0);
	wordDecoder7: WordDecoder2to4 port map(wordDecoder7En,address(1 downto 0),tmp_cache(3)(1).words,selectWordSet3Line1);

	dataOut: OutputSelection8to1 port map(wordDecoder0En,wordDecoder1En,wordDecoder2En,wordDecoder3En,
													 wordDecoder4En,wordDecoder5En,wordDecoder6En,wordDecoder7En,
													 selectWordSet0Line0,selectWordSet0Line1,selectWordSet1Line0,selectWordSet1Line1,
													 selectWordSet2Line0,selectWordSet2Line1,selectWordSet3Line0,selectWordSet3Line1,
													 output);
	
   read: process(clock, Mwe, address)
	begin
		if (clock'event and clock = '1') then
		mem_status <= '0';
			if (Mre ='1' and Mwe ='0') then
				if (NOT(wordDecoder0En = '1' OR
						  wordDecoder1En = '1' OR
						  wordDecoder2En = '1' OR
						  wordDecoder3En = '1' OR
						  wordDecoder4En = '1' OR
						  wordDecoder5En = '1' OR
						  wordDecoder6En = '1' OR
						  wordDecoder7En = '1')) then
					
					
					
					newBlockAddresses(0)(11 downto 2) <= address(11 downto 2);
					newBlockAddresses(0)(1 downto 0) <= "00";
					newBlockAddresses(1)(11 downto 2) <= address(11 downto 2);
					newBlockAddresses(1)(1 downto 0) <= "01";
					newBlockAddresses(2)(11 downto 2) <= address(11 downto 2);
					newBlockAddresses(2)(1 downto 0) <= "10";
					newBlockAddresses(3)(11 downto 2) <= address(11 downto 2);
					newBlockAddresses(3)(1 downto 0) <= "11";
					
					tmp_cache(TO_INTEGER(unsigned(address(3 downto 2))))(lineValue).tag <= address(11 downto 4);
					
					main_mem_address <= newBlockAddresses(0);
					main_mem_Mwe <= '0';
					main_mem_Mre <= '1';
					word0Status <= '1';
					
					if word0Status = '1' then
						if main_mem_status = '1' then	
							tmp_cache(TO_INTEGER(unsigned(address(3 downto 2))))(lineValue).words(0) <= main_mem_output;
							main_mem_address <= newBlockAddresses(1);
							word0Status <= '0';
							word1Status <= '1';
						end if;
					elsif word1Status = '1' then
						if main_mem_status = '1' then
							tmp_cache(TO_INTEGER(unsigned(address(3 downto 2))))(lineValue).words(1) <= main_mem_output;
							main_mem_address <= newBlockAddresses(2);
							word1Status <= '0';
							word2Status <= '1';
						end if;
					elsif word2Status = '1' then
						if main_mem_status = '1' then
							tmp_cache(TO_INTEGER(unsigned(address(3 downto 2))))(lineValue).words(2) <= main_mem_output;
							main_mem_address <= newBlockAddresses(3);
							word2Status <= '0';
						end if;
					elsif word3Status = '1' then
						if main_mem_status = '1' then
							tmp_cache(TO_INTEGER(unsigned(address(3 downto 2))))(lineValue).words(3) <= main_mem_output;
							word3Status <= '0';
						end if;
					elsif word0Status = '0' AND word1Status = '0' AND word2Status = '0' AND word3Status = '0' then
						case address(1 downto 0) is
							when "00" => data_out <= tmp_cache(TO_INTEGER(unsigned(address(3 downto 2))))(lineValue).words(0);
							when "01" => data_out <= tmp_cache(TO_INTEGER(unsigned(address(3 downto 2))))(lineValue).words(1);
							when "10" => data_out <= tmp_cache(TO_INTEGER(unsigned(address(3 downto 2))))(lineValue).words(2);
							when "11" => data_out <= tmp_cache(TO_INTEGER(unsigned(address(3 downto 2))))(lineValue).words(3);
						end case;
						
						if lineValue = 1 then
							lineValue <= 0;
						else
							lineValue <= 1;
						end if;
						
						mem_status <= '1';
					end if;
					
				else
					main_mem_Mwe <= '0';
					main_mem_Mre <= '0';
				
					data_out <= output;
				end if;
			end if;
		end if;
	end process;
end behv;