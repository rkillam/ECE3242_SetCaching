--------------------------------------------------------
-- Simple Microprocessor Design 
--
-- multiplexor of control unit
-- three 16 bit inputs and one 16 bit output
-- bigmux.vhd
--------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use work.MP_lib.all;

entity smallmux is
port( 	I0: 	in std_logic_vector(15 downto 0);
		I1: 	in std_logic_vector(15 downto 0);	  
		I2:		in std_logic_vector(15 downto 0);
		Sel:	in std_logic_vector(1 downto 0);
		big_addr: IN STD_LOGIC;
		O: 		out std_logic_vector(15 downto 0)
	);
end smallmux;

architecture behv of smallmux is

begin
	process(I0, I1, I2, Sel, big_addr)
    begin
        case Sel is
            when "00" =>	O <= I0;
            when "01" =>   O <= I1;
				when "10" =>	
					IF(big_addr = '1') THEN
						O <= I2;
					ELSE
						O <= "00000000" & I2(7 DOWNTO 0);
					END IF;
            when others => O <= x"FFFF";
        end case;
    end process;
end behv;

