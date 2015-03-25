-- Library for Microprocessor example
library	ieee;
use ieee.std_logic_1164.all;  
use ieee.std_logic_arith.all;

package MP_lib is

type ram_type is array (0 to 255) of 
        		std_logic_vector(15 downto 0);

TYPE rf_type IS ARRAY(0 TO 15) OF
				STD_LOGIC_VECTOR(15 DOWNTO 0);

-- Cache Datatypes	
TYPE word_type IS ARRAY(0 TO 3) OF
				STD_LOGIC_VECTOR(15 DOWNTO 0);

TYPE line_type IS RECORD
	tag:		STD_LOGIC_VECTOR(7 DOWNTO 0);
	words:	word_type;
END RECORD;

TYPE set_type IS ARRAY(0 TO 1) OF line_type;
TYPE cache_type IS ARRAY(0 TO 3) OF set_type;
-- End Cache Datatypes


constant ZERO 						: std_logic_vector(15 downto 0) := "0000000000000000";
constant HIRES 					: std_logic_vector(15 downto 0) := "ZZZZZZZZZZZZZZZZ";
constant SHORT_LOAD 				: std_logic_vector(3 downto 0) := x"0";  -- "0000";
constant SHORT_SAVE 				: std_logic_vector(3 downto 0) := x"1";  -- "0001";
constant REG_ADDR_SAVE 			: std_logic_vector(3 downto 0) := x"2";  -- "0010";
constant IMM_LOAD 				: std_logic_vector(3 downto 0) := x"3";  -- "0011";
constant ADD  						: std_logic_vector(3 downto 0) := x"4";  -- "0100";
constant SUBT 						: std_logic_vector(3 downto 0) := x"5";  -- "0101";
constant JUMP_Z  					: std_logic_vector(3 downto 0) := x"6";  -- "0110";
constant OUTPUT_MEM  			: std_logic_vector(3 downto 0) := x"7";  -- "0111";
CONSTANT LONG_LOAD				: STD_LOGIC_VECTOR(3 DOWNTO 0) := x"8";  -- "1000";
CONSTANT LONG_SAVE				: STD_LOGIC_VECTOR(3 DOWNTO 0) := x"9";  -- "1001";
CONSTANT REG_ADDR_LOAD  		: STD_LOGIC_VECTOR(3 DOWNTO 0) := x"A";  -- "1010";
CONSTANT MULT						: STD_LOGIC_VECTOR(3 DOWNTO 0) := x"B";  -- "1011";
CONSTANT LONG_IMM_LOAD  		: STD_LOGIC_VECTOR(3 DOWNTO 0) := x"C";  -- "1100";
constant HALT  					: std_logic_vector(3 downto 0) := x"F";  -- "1111";

component alu is
port (	
		num_A: 	in std_logic_vector(15 downto 0);
		num_B: 	in std_logic_vector(15 downto 0);
		jpsign:	in std_logic;						 -- JMP?	
		ALUs:	in std_logic_vector(2 downto 0);     -- OP selector
		ALUz:	out std_logic;                       -- Reached 0!   
		ALUout:	out std_logic_vector(15 downto 0)    -- final calc value
);
end component;

component bigmux is
port( 	Ia: 	in std_logic_vector(15 downto 0);
	Ib: 	in std_logic_vector(15 downto 0);	  
	Ic:	in std_logic_vector(15 downto 0);
	Id:	in std_logic_vector(15 downto 0);
	Option:	in std_logic_vector(1 downto 0);
	Muxout:	out std_logic_vector(15 downto 0)
);
end component;

component controller is
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
	big_addr  : OUT STD_LOGIC;
	outputReady : in std_logic
);
end component;

component IR is
port(	IRin:	  in std_logic_vector(15 downto 0);
	IRld:	  in std_logic;
	dir_addr: out std_logic_vector(15 downto 0);
	IRout: 	  out std_logic_vector(15 downto 0)
);
end component;

component memory is
port ( 	clock	: 	in std_logic;
		rst		: 	in std_logic;
		Mre		:	in std_logic;
		Mwe		:	in std_logic;
		address	:	in std_logic_vector(7 downto 0);
		data_in	:	in std_logic_vector(15 downto 0);
		data_out:	out std_logic_vector(15 downto 0)
);
end component;

COMPONENT outputControl is
port (clock		: 	in std_logic;
		getNext	: 	in std_logic;
		newData	: 	in std_logic;
		data_in	:	in std_logic_vector(15 downto 0);
		data_out	:	out std_logic_vector(7 downto 0);
		control_out	: out std_logic_vector(1 downto 0);
		ready		: out std_logic
);
END COMPONENT;

COMPONENT MainMemory IS
	PORT
	(
		address				: IN STD_LOGIC_VECTOR (11 DOWNTO 0);
		big_addr				: IN STD_LOGIC;
		clken					: IN STD_LOGIC  := '1';
		clock					: IN STD_LOGIC  := '1';
		data					: IN STD_LOGIC_VECTOR (15 DOWNTO 0);
		rden					: IN STD_LOGIC  := '1';
		wren					: IN STD_LOGIC ;
		main_mem_status	: OUT STD_LOGIC;
		D_main_mem_clk 	: OUT STD_LOGIC; -- Outputs the clock given to the memory
		q						: OUT STD_LOGIC_VECTOR (15 DOWNTO 0)
	);
END COMPONENT;

COMPONENT MainMemory64Words IS
	PORT
	(
		address		: IN STD_LOGIC_VECTOR (9 DOWNTO 0);
		clken			: IN STD_LOGIC  := '1';
		clock			: IN STD_LOGIC  := '1';
		data		: IN STD_LOGIC_VECTOR (63 DOWNTO 0);
		rden			: IN STD_LOGIC  := '1';
		wren			: IN STD_LOGIC ;
		main_mem_status	: OUT STD_LOGIC;
		D_main_mem_clk 	: OUT STD_LOGIC; -- Outputs the clock given to the memory
		q				: OUT STD_LOGIC_VECTOR (63 DOWNTO 0)
	);
END COMPONENT;

COMPONENT SetAssociative2Way IS
	PORT(
		clock					: 	in STD_LOGIC;
		reset					:  IN STD_LOGIC;
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
		D_main_mem_out		:  OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
		D_cache				:	OUT cache_type;
		D_tagIn,D_tagCache:	OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		D_set_num_index, D_word_num_index	:	OUT INTEGER;
		D_read_line : OUT INTEGER
	);
END COMPONENT;

component obuf is
port(	O_en: 		in std_logic;
		obuf_in: 	in std_logic_vector(15 downto 0);
		obuf_out: 	out std_logic_vector(15 downto 0);
		newDateOutputControl: out std_logic
);
end component;

component PC is
port(	clock:	in std_logic;
		PCld:	in std_logic;
		PCinc:	in std_logic;
		PCclr:	in std_logic;
		PCin:	in std_logic_vector(15 downto 0);
		PCout:	out std_logic_vector(15 downto 0)
);
end component;

component reg_file is
port ( 	clock	: 	in std_logic; 	
	rst	: 	in std_logic;
	RFwe	: 	in std_logic;
	RFr1e	: 	in std_logic;
	RFr2e	: 	in std_logic;	
	RFwa	: 	in std_logic_vector(3 downto 0);  
	RFr1a	: 	in std_logic_vector(3 downto 0);
	RFr2a	: 	in std_logic_vector(3 downto 0);
	RFw	: 	in std_logic_vector(15 downto 0);
	RFr1	: 	out std_logic_vector(15 downto 0);
	RFr2	:	out std_logic_vector(15 downto 0);
	
	-- Register debug lines
	D_rf : OUT rf_type
);
end component;

component smallmux is
port( 	I0: 	in std_logic_vector(15 downto 0);
		I1: 	in std_logic_vector(15 downto 0);	  
		I2:		in std_logic_vector(15 downto 0);
		Sel:	in std_logic_vector(1 downto 0);
		big_addr: IN STD_LOGIC;
		O: 		out std_logic_vector(15 downto 0)
	);
end component;

component ctrl_unit is
port(	
	clock_cu:	in 	std_logic;
	rst_cu:		in 	std_logic;
	PCld_cu:	in 	std_logic;
	mdata_out: 	in 	std_logic_vector(15 downto 0);
	main_mem_status: IN STD_LOGIC;
	dpdata_out:	in 	std_logic_vector(15 downto 0);
	maddr_in:	out std_logic_vector(15 downto 0);		  
	immdata:	out std_logic_vector(15 downto 0);
	RFs_cu:		out	std_logic_vector(1 downto 0);
	RFwa_cu:	out	std_logic_vector(3 downto 0);
	RFr1a_cu:	out	std_logic_vector(3 downto 0);
	RFr2a_cu:	out	std_logic_vector(3 downto 0);
	RFwe_cu:	out	std_logic;
	RFr1e_cu:	out	std_logic;
	RFr2e_cu:	out	std_logic;
	jpen_cu:	out std_logic;
	ALUs_cu:	out	std_logic_vector(2 downto 0);	
	Mre_cu:		out std_logic;
	Mwe_cu:		out std_logic;
	oe_cu:		out std_logic;
	cur_state : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	big_addr  : OUT STD_LOGIC;
	outputReady : in std_logic
);
end component;

component datapath is				
port(	
	clock_dp:	in 	std_logic;
	rst_dp:		in 	std_logic;
	imm_data:	in 	std_logic_vector(15 downto 0);
	mem_data: 	in 	std_logic_vector(15 downto 0);
	RFs_dp:		in 	std_logic_vector(1 downto 0);
	RFwa_dp:	in 	std_logic_vector(3 downto 0);
	RFr1a_dp:	in 	std_logic_vector(3 downto 0);
	RFr2a_dp:	in 	std_logic_vector(3 downto 0);
	RFwe_dp:	in 	std_logic;
	RFr1e_dp:	in 	std_logic;
	RFr2e_dp:	in 	std_logic;
	jp_en:		in 	std_logic;
	ALUs_dp:	in 	std_logic_vector(2 downto 0);
	oe_dp:		in 	std_logic;
	big_addr: IN STD_LOGIC;
	ALUz_dp:	out 	std_logic;
	RF1out_dp:	out 	std_logic_vector(15 downto 0);
	ALUout_dp:	out 	std_logic_vector(15 downto 0);
	bufout_dp:	out 	std_logic_vector(15 downto 0);
	newDateOutputControl: out std_logic;
	
	-- Register debug lines
	D_rf : OUT rf_type
);
end component;

end MP_lib;



package body MP_lib is


  
	-- Type Declaration (optional)

	-- Subtype Declaration (optional)

	-- Constant Declaration (optional)

	-- Function Declaration (optional)

	-- Function Body (optional)

	-- Procedure Declaration (optional)

	-- Procedure Body (optional)

end MP_lib;
