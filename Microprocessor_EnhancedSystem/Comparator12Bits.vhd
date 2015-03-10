library	ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;   
use work.MP_lib.all;

entity Comparitor12Bits is
port (
		en			:	in std_logic;
		tag		: 	in std_logic_vector(7 downto 0);
		cacheTag	:	in std_logic_vector(7 downto 0);
		compared	:	out std_logic
);
end Comparitor12Bits;

architecture behv of Comparitor12Bits	 is			
begin
	process(en, tag, cacheTag)
		begin
			IF en = '1' AND tag = cacheTag THEN
				compared <= '1';
			ELSE
				compared <= '0';
			END IF;
	end process;
end behv;