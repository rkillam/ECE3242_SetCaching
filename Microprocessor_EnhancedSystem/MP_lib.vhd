-- Library for Microprocessor example
library	ieee;
use ieee.std_logic_1164.all;  
use ieee.std_logic_arith.all;

package MP_lib is

type ram_type is array (0 to 255) of 
        		std_logic_vector(15 downto 0);

constant ZERO 				: std_logic_vector(15 downto 0) := "0000000000000000";
constant HIRES 			: std_logic_vector(15 downto 0) := "ZZZZZZZZZZZZZZZZ";
constant SHORT_LOAD 		: std_logic_vector(3 downto 0) := x"0";  -- "0000";
constant SHORT_SAVE 		: std_logic_vector(3 downto 0) := x"1";  -- "0001";
constant REG_ADDR_SAVE 	: std_logic_vector(3 downto 0) := x"2";  -- "0010";
constant IMM_LOAD 		: std_logic_vector(3 downto 0) := x"3";  -- "0011";
constant ADD  				: std_logic_vector(3 downto 0) := x"4";  -- "0100";
constant SUBT 				: std_logic_vector(3 downto 0) := x"5";  -- "0101";
constant JUMP_Z  			: std_logic_vector(3 downto 0) := x"6";  -- "0110";
constant OUTPUT_MEM  	: std_logic_vector(3 downto 0) := x"7";  -- "0111";
CONSTANT LONG_LOAD		: STD_LOGIC_VECTOR(3 DOWNTO 0) := x"8";  -- "1000";
CONSTANT LONG_SAVE		: STD_LOGIC_VECTOR(3 DOWNTO 0) := x"9";  -- "1001";
CONSTANT REG_ADDR_LOAD  : STD_LOGIC_VECTOR(3 DOWNTO 0) := x"A";  -- "1010";
CONSTANT MULT				: STD_LOGIC_VECTOR(3 DOWNTO 0) := x"B";  -- "1011";
constant HALT  			: std_logic_vector(3 downto 0) := x"F";  -- "1111";

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
	cur_state : OUT STD_logic_vector(3 DOWNTO 0);
	big_addr  : OUT STD_LOGIC
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

component obuf is
port(	O_en: 		in std_logic;
		obuf_in: 	in std_logic_vector(15 downto 0);
		obuf_out: 	out std_logic_vector(15 downto 0)
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
	RFr2	:	out std_logic_vector(15 downto 0)
);
end component;

component smallmux is
port( 	I0: 	in std_logic_vector(15 downto 0);
		I1: 	in std_logic_vector(15 downto 0);	  
		I2:		in std_logic_vector(15 downto 0);
		Sel:	in std_logic_vector(1 downto 0);
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
	cur_state : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	big_addr  : OUT STD_LOGIC
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
	ALUz_dp:	out 	std_logic;
	RF1out_dp:	out 	std_logic_vector(15 downto 0);
	ALUout_dp:	out 	std_logic_vector(15 downto 0);
	bufout_dp:	out 	std_logic_vector(15 downto 0)
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
