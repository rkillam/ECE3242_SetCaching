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
		
		D_main_mem_clk : OUT STD_LOGIC
-- end debug variables		
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
	Unit1: datapath port map(	cpu_clk,cpu_rst,immd_bus,mdout_bus,
								RFs_s,RFwa_s,RFr1a_s,RFr2a_s,RFwe_s,RFr1e_s,
								RFr2e_s,jpz_s,ALUs_s,oe_s,PCld_s,rfout_bus,
								mdin_bus,cpu_output);
--	Unit2: memory port map(	cpu_clk,cpu_rst,Mre_s,Mwe_s,mem_addr,mdin_bus,mdout_bus);
	Unit2: MainMemory PORT MAP (
		mem_addr, 			--		address	: IN STD_LOGIC_VECTOR (11 DOWNTO 0);
		big_addr, 			--		big_addr			: IN STD_LOGIC;
		'1',		 			--		clken		: IN STD_LOGIC  := '1';
		cpu_clk, 			--		clock		: IN STD_LOGIC  := '1';
		mdin_bus, 			--		data		: IN STD_LOGIC_VECTOR (15 DOWNTO 0);
		Mre_s, 				--		rden		: IN STD_LOGIC  := '1';
		Mwe_s, 				--		wren		: IN STD_LOGIC ;
		main_mem_status,  --		main_mem_status   : OUT STD_LOGIC;
		main_mem_clk,
		mdout_bus 			--		q			: OUT STD_LOGIC_VECTOR (15 DOWNTO 0)
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

end structure;
