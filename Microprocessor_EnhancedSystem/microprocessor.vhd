--------------------------------------------------------
-- Simple Microprocessor Design 
--
-- Microprocessor composed of
-- Ctrl_Unit, Data_Path and Memory
-- structural modeling
-- microprocessor.vhd
--------------------------------------------------------

library	ieee;
use ieee.std_logic_1164.all;  
use ieee.std_logic_arith.all;			   
use ieee.std_logic_unsigned.all;
use work.MP_lib.all;

entity microprocessor is
port( 	
		cpu_clk:	in std_logic;
		cpu_rst:	in std_logic;
		cpu_output:	out std_logic_vector(15 downto 0);

-- Debug variables
		D_addr_bus,D_mdin_bus,D_mdout_bus,D_immd_bus,D_rfout_bus: out std_logic_vector(15 downto 0);  
		D_mem_addr: out std_logic_vector(11 downto 0);
		D_RFwa_s, D_RFr1a_s, D_RFr2a_s: out std_logic_vector(3 downto 0);
		D_RFwe_s, D_RFr1e_s, D_RFr2e_s: out std_logic;
		D_ALUs_s: out std_logic_vector(2 downto 0);
		D_RFs_s: out std_logic_vector(1 downto 0);
		D_PCld_s, D_Mre_s, D_Mwe_s, D_jpz_s, D_oe_s: out std_logic;
		D_cur_state : OUT STD_logic_vector(7 DOWNTO 0);
		
		D_big_addr : OUT STD_LOGIC;
		D_main_mem_status : OUT STD_LOGIC;
		
		D_write_mem_status : OUT STD_LOGIC;
		D_read_mem_status  : OUT STD_LOGIC;
		
		D_main_mem_clk : OUT STD_LOGIC;
		D_main_mem_out	:	OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
		
		-- Register debug lines
--		D_rf0 : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
--		D_rf1 : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
--		D_rf2 : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
--		D_rf3 : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
--		D_rf4 : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
--		D_rf5 : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
--		D_rf6 : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
--		D_rf7 : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
--		D_rf8 : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
--		D_rf9 : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
--		D_rfA : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
--		D_rfB : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
--		D_rfC : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
--		D_rfD : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
--		D_rfE : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
--		D_rfF : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
		-- end debug variables
		
		-- Cache Debug lines
		D_cache_set0_line0_tag	: OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		D_cache_set0_line0_word0: OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
		D_cache_set0_line0_word1: OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
		D_cache_set0_line0_word2: OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
		D_cache_set0_line0_word3: OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
		
--		D_cache_set0_line1_tag	: OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
--		D_cache_set0_line1_word0: OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
--		D_cache_set0_line1_word1: OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
--		D_cache_set0_line1_word2: OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
--		D_cache_set0_line1_word3: OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
		
		D_cache_set1_line0_tag	: OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		D_cache_set1_line0_word0: OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
		D_cache_set1_line0_word1: OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
		D_cache_set1_line0_word2: OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
		D_cache_set1_line0_word3: OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
		
		D_cache_set2_line0_tag	: OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		D_cache_set2_line0_word0: OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
		D_cache_set2_line0_word1: OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
		D_cache_set2_line0_word2: OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
		D_cache_set2_line0_word3: OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
		
--		D_cache_set3_line0_tag	: OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
--		D_cache_set3_line0_word0: OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
--		D_cache_set3_line0_word1: OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
--		D_cache_set3_line0_word2: OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
--		D_cache_set3_line0_word3: OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
		
		D_tagIn,D_tagCache	: OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		
		D_set_num_index, D_word_num_index	:	OUT INTEGER;
		D_read_line : OUT INTEGER
		-- end debug cache lines`
);
end microprocessor;

architecture structure of microprocessor is

signal addr_bus,mdin_bus,mdout_bus,immd_bus,rfout_bus: std_logic_vector(15 downto 0);  
signal mem_addr: std_logic_vector(11 downto 0);
signal RFwa_s, RFr1a_s, RFr2a_s: std_logic_vector(3 downto 0);
signal RFwe_s, RFr1e_s, RFr2e_s: std_logic;
signal ALUs_s: std_logic_vector(2 downto 0);
SIGNAL RFs_s: STD_LOGIC_VECTOR(1 DOWNTO 0);
signal PCld_s, Mre_s, Mwe_s, jpz_s, oe_s: std_logic;

SIGNAL big_addr : STD_LOGIC;
SIGNAL main_mem_status : STD_LOGIC;

-- Debug signals
SIGNAL cur_state : STD_logic_vector(7 DOWNTO 0);
SIGNAL main_mem_clk : STD_LOGIC;
SIGNAL main_mem_out : STD_LOGIC_VECTOR(15 DOWNTO 0);

SIGNAL write_mem_status : STD_LOGIC;
SIGNAL read_mem_status  : STD_LOGIC;

SIGNAL rf : rf_type;

SIGNAL cache : cache_type;
SIGNAL tagIn,tagCache	: STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL set_num_index, word_num_index	:	INTEGER;
SIGNAL read_line : INTEGER;
-- End debug signals

begin
	
	mem_addr <= addr_bus(11 downto 0); 
	
	Unit0: ctrl_unit port map(	
		cpu_clk,
		cpu_rst,
		PCld_s,
		mdout_bus,
		main_mem_status,
		rfout_bus, 
		addr_bus,
		immd_bus, 
		RFs_s,
		RFwa_s,
		RFr1a_s,
		RFr2a_s,
		RFwe_s,
		RFr1e_s,
		RFr2e_s,
		jpz_s,
		ALUs_s,
		Mre_s,
		Mwe_s,
		oe_s,
		cur_state,
		big_addr
	);
	Unit1: datapath port map(
			cpu_clk,
			cpu_rst,
			immd_bus,
			mdout_bus,
			RFs_s,
			RFwa_s,
			RFr1a_s,
			RFr2a_s,
			RFwe_s,
			RFr1e_s,
			RFr2e_s,
			jpz_s,
			ALUs_s,
			oe_s,
			big_addr,
			PCld_s,
			rfout_bus,
			mdin_bus,cpu_output,
			
			-- Register debug lines
			rf
	);

--	Unit2: MainMemory PORT MAP (
--		mem_addr, 			--		address	: IN STD_LOGIC_VECTOR (11 DOWNTO 0);
--		big_addr, 			--		big_addr			: IN STD_LOGIC;
--		'1',		 			--		clken		: IN STD_LOGIC  := '1';
--		cpu_clk, 			--		clock		: IN STD_LOGIC  := '1';
--		mdin_bus, 			--		data		: IN STD_LOGIC_VECTOR (15 DOWNTO 0);
--		Mre_s, 				--		rden		: IN STD_LOGIC  := '1';
--		Mwe_s, 				--		wren		: IN STD_LOGIC ;
--		main_mem_status,  --		main_mem_status   : OUT STD_LOGIC;
--		main_mem_clk,
--		mdout_bus 			--		q			: OUT STD_LOGIC_VECTOR (15 DOWNTO 0)
--	);

	Unit2: SetAssociative2Way PORT MAP(
		cpu_clk,				--		clock					: 	in std_logic;
		cpu_rst,				--		reset					:  IN STD_LOGIC;
		Mre_s,				--		Mre					:	in std_logic;
		Mwe_s,				--		Mwe					:	in std_logic;
		mem_addr,			--		address				:	in std_logic_vector(11 downto 0);
		big_addr,			--		big_addr 			:	in std_logic;
		mdin_bus,			--		data_in				:	in std_logic_vector(15 downto 0);
		mdout_bus,			--		data_out				:	out std_logic_vector(15 downto 0);
		main_mem_status,	--		mem_status 			: 	out std_logic;
		main_mem_clk,		--		main_mem_clk		: 	out std_logic
		write_mem_status, -- D_write_mem_status:  OUT STD_LOGIC;
		read_mem_status,	-- D_read_mem_status :  OUT STD_LOGIC
		main_mem_out,		--		D_main_mem_out		:  OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
		cache,				-- D_cache					:	OUT cache_type
		tagIn,tagCache,		-- D_tagIn,D_tagCache:	OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
		set_num_index, word_num_index,	-- D_set_num_index, D_word_num_index	:	OUT INTEGER
		read_line			-- D_read_line : OUT INTEGER
	);

-- Debug code
D_addr_bus <=addr_bus;
D_mdin_bus <=mdin_bus;
D_mdout_bus <=mdout_bus;
D_immd_bus <=immd_bus;
D_rfout_bus<=rfout_bus;
D_mem_addr<=mem_addr;
D_RFwa_s<=RFwa_s;
D_RFr1a_s<=RFr1a_s;
D_RFr2a_s<=RFr2a_s;
D_RFwe_s<=RFwe_s;
D_RFr1e_s<=RFr1e_s;
D_RFr2e_s<=RFr2e_s;
D_ALUs_s<=ALUs_s;
D_RFs_s<=RFs_s;
D_PCld_s<=PCld_s;
D_Mre_s<=Mre_s;
D_Mwe_s<=Mwe_s;
D_jpz_s<=jpz_s;
D_oe_s<=oe_s;

D_big_addr <= big_addr;
D_main_mem_status <= main_mem_status;

D_cur_state     <= cur_state;
D_main_mem_clk <= main_mem_clk;

D_write_mem_status <= write_mem_status;
D_read_mem_status <= read_mem_status;

D_main_mem_out <= main_mem_out;

-- Register debug lines
--D_rf0 <= rf(0);
--D_rf1 <= rf(1);
--D_rf2 <= rf(2);
--D_rf3 <= rf(3);
--D_rf4 <= rf(4);
--D_rf5 <= rf(5);
--D_rf6 <= rf(6);
--D_rf7 <= rf(7);
--D_rf8 <= rf(8);
--D_rf9 <= rf(9);
--D_rfA <= rf(10);
--D_rfB <= rf(11);
--D_rfC <= rf(12);
--D_rfD <= rf(13);
--D_rfE <= rf(14);
--D_rfF <= rf(15);


-- Cache debug lines
D_cache_set0_line0_tag <= cache(0)(0).tag;
D_cache_set0_line0_word0 <= cache(0)(0).words(0);
D_cache_set0_line0_word1 <= cache(0)(0).words(1);
D_cache_set0_line0_word2 <= cache(0)(0).words(2);
D_cache_set0_line0_word3 <= cache(0)(0).words(3);

--D_cache_set0_line1_tag <= cache(0)(1).tag;
--D_cache_set0_line1_word0 <= cache(0)(1).words(0);
--D_cache_set0_line1_word1 <= cache(0)(1).words(1);
--D_cache_set0_line1_word2 <= cache(0)(1).words(2);
--D_cache_set0_line1_word3 <= cache(0)(1).words(3);

D_cache_set1_line0_tag <= cache(1)(0).tag;
D_cache_set1_line0_word0 <= cache(1)(0).words(0);
D_cache_set1_line0_word1 <= cache(1)(0).words(1);
D_cache_set1_line0_word2 <= cache(1)(0).words(2);
D_cache_set1_line0_word3 <= cache(1)(0).words(3);

D_cache_set2_line0_tag <= cache(2)(0).tag;
D_cache_set2_line0_word0 <= cache(2)(0).words(0);
D_cache_set2_line0_word1 <= cache(2)(0).words(1);
D_cache_set2_line0_word2 <= cache(2)(0).words(2);
D_cache_set2_line0_word3 <= cache(2)(0).words(3);

--D_cache_set3_line0_tag <= cache(3)(0).tag;
--D_cache_set3_line0_word0 <= cache(3)(0).words(0);
--D_cache_set3_line0_word1 <= cache(3)(0).words(1);
--D_cache_set3_line0_word2 <= cache(3)(0).words(2);
--D_cache_set3_line0_word3 <= cache(3)(0).words(3);

D_tagIn <= tagIn;
D_tagCache <= tagCache;

D_set_num_index <= set_num_index;
D_word_num_index <= word_num_index;
D_read_line <= read_line;
end structure;
