library	ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;   
use work.MP_lib.all;

entity OutputSelection8to1 is
port (
		wordDecoder0En			: in std_logic;
		wordDecoder1En			: in std_logic;
		wordDecoder2En			: in std_logic;
		wordDecoder3En			: in std_logic;
		wordDecoder4En			: in std_logic;
		wordDecoder5En			: in std_logic;
		wordDecoder6En			: in std_logic;
		wordDecoder7En			: in std_logic;
		selectWordSet0Line0	: in std_logic_vector(15 downto 0);
		selectWordSet0Line1	: in std_logic_vector(15 downto 0);
		selectWordSet1Line0	: in std_logic_vector(15 downto 0);
		selectWordSet1Line1	: in std_logic_vector(15 downto 0);
		selectWordSet2Line0	: in std_logic_vector(15 downto 0);
		selectWordSet2Line1	: in std_logic_vector(15 downto 0);
		selectWordSet3Line0	: in std_logic_vector(15 downto 0);
		selectWordSet3Line1 	: in std_logic_vector(15 downto 0);
		output	:	out std_logic_vector(15 downto 0)
);
end OutputSelection8to1;

architecture behv of OutputSelection8to1 is			
signal selector: std_logic_vector(7 downto 0); 
begin
	selector(0) <= wordDecoder0En;
	selector(1) <= wordDecoder1En;
	selector(2) <= wordDecoder2En;
	selector(3) <= wordDecoder3En;
	selector(4) <=	wordDecoder4En;
	selector(5) <= wordDecoder5En;
	selector(6) <= wordDecoder6En;
	selector(7) <= wordDecoder7En;
	
	process(selectWordSet0Line0,selectWordSet0Line1,selectWordSet1Line0,selectWordSet1Line1,
			selectWordSet2Line0,selectWordSet2Line1,selectWordSet3Line0,selectWordSet3Line1,selector)
		begin
			case selector is
				when "00000001" => output <= selectWordSet0Line0;
				when "00000010" => output <= selectWordSet0Line1;
				when "00000100" => output <= selectWordSet1Line0;
				when "00001000" => output <= selectWordSet1Line1;
				when "00010000" => output <= selectWordSet2Line0;
				when "00100000" => output <= selectWordSet2Line1;
				when "01000000" => output <= selectWordSet3Line0;
				when "10000000" => output <= selectWordSet3Line1;
				when others => output <= x"FFFF";
			end case;
	end process;
end behv;