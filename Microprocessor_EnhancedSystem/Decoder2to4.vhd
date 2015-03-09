library	ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;   
use work.MP_lib.all;

entity Decoder2to4 is
port (
		en		: 	in std_logic;
		set	: 	in std_logic_vector(1 downto 0);
		set0	:	out std_logic;
		set1	:	out std_logic;
		set2	:	out std_logic;
		set3	:	out std_logic
);
end Decoder2to4;

architecture behv of Decoder2to4	 is			
begin
	process(en,set)
		begin
			IF en = '1' THEN 
				case set is
					when "00" => set0 <= '1';
					when "01" => set1 <= '1';
					when "10" => set2 <= '1';
					when "11" => set3 <= '1';
				end case;
			END IF;
	end process;
end behv;