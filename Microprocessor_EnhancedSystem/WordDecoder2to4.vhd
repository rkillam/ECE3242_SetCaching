library	ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;   
use work.MP_lib.all;

entity WordDecoder2to4 is
port (
		en					: 	in std_logic;
		word				: 	in std_logic_vector(1 downto 0);
		words				:	in word_type;
		selectedWord	:	out std_logic_vector(15 downto 0)
);
end WordDecoder2to4;

architecture behv of WordDecoder2to4 is

begin
	process(en,word)
		begin
			IF en = '1' THEN 
				case word is
					when "00" => selectedWord <= words(0);
					when "01" => selectedWord <= words(1);
					when "10" => selectedWord <= words(2);
					when "11" => selectedWord <= words(3);
				end case;
			END IF;
	end process;
end behv;