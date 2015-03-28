library	ieee;
use ieee.std_logic_1164.all;
USE ieee.numeric_std.all; 
use work.MP_lib.all;

entity outputControl is
port (clock		: 	in std_logic;
		getNext	: 	in std_logic;
		newData	: 	in std_logic;
		data_in	:	in std_logic_vector(15 downto 0);
		data_out0,data_out1,data_out2,data_out3,data_out4	:	out std_logic_vector(3 downto 0);
		sign_out	:	out std_logic_vector(3 downto 0);
--		control_out	: out std_logic_vector(1 downto 0);
		ready		: out std_logic := '1'
);
end outputControl;

architecture behv of outputControl is
	SIGNAL data	: INTEGER;
	SIGNAL s : STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL Dout0,Dout1,Dout2,Dout3,Dout4 : STD_LOGIC_VECTOR(3 DOWNTO 0);
	
	begin
	data <= TO_INTEGER(SIGNED(data_in(15 DOWNTO 0)));
	
	process(clock)
	
	TYPE state_type IS (
		decodeData,
		clear,
		home,
		printSign,
		printData4,
		printData3,
		printData2,
		printData1,
		printData0,
		waitState0,
		waitState1
	);
	
	VARIABLE state : state_type := decodeData;
	
	begin
		IF(rising_edge(clock)) THEN
			CASE state IS
				WHEN decodeData =>
					IF (newData = '1') THEN
					
						IF (data < 0) THEN
--							s <= "00101101"; --negative sign for LCD
							sign_out <= "1111";
							
						ELSE
--							s <= "00100000"; --possitive sign for LCD
							sign_out <= "1110";
							
						END IF;
						
						--ABS used to take the absolute value of the new data for if it is negative
						--TO_UNSIGNED converst from sign to unsigned format with only 4 bits
						--STD_LOGIC_VECTOR casts to a std_logic_vector
--						Dout0(7 DOWNTO 4) <= "0011";
						data_out0(3 DOWNTO 0) <= STD_LOGIC_VECTOR(TO_UNSIGNED(ABS(data) mod 10, 4));
						
--						Dout1(7 DOWNTO 4) <= "0011";
						data_out1(3 DOWNTO 0) <= STD_LOGIC_VECTOR(TO_UNSIGNED((ABS(data) / 10) mod 10, 4));
						
--						Dout2(7 DOWNTO 4) <= "0011";
						data_out2(3 DOWNTO 0) <= STD_LOGIC_VECTOR(TO_UNSIGNED((ABS(data) / 100) mod 10, 4));
						
--						Dout3(7 DOWNTO 4) <= "0011";
						data_out3(3 DOWNTO 0) <= STD_LOGIC_VECTOR(TO_UNSIGNED((ABS(data) / 1000) mod 10, 4));
						
--						Dout4(7 DOWNTO 4) <= "0011";
						data_out4(3 DOWNTO 0) <= STD_LOGIC_VECTOR(TO_UNSIGNED((ABS(data) / 10000) mod 10, 4));
					
						state := waitState0;
						ready <= '0';
					END IF;
					
					
--				WHEN clear =>
--					data_out <= x"01";
--					control_out <= "00"; --write and command
--					state := home;
--					
--				WHEN home =>
--					data_out <= x"02";
--					control_out <= "00"; --write and command
--					state := printSign;
--					
--				WHEN printSign =>
--					sign_out <= s;
----					control_out <= "01"; --write and no command
--					state := printData4;
--					
--				WHEN printData4 =>
--					C <= Dout4;
----					control_out <= "01"; --write and no command
--					state := printData3;
--					
--				WHEN printData3 =>
--					data_out3 <= Dout3;
----					control_out <= "01"; --write and no command
--					state := printData2;
--					
--				WHEN printData2 =>
--					data_out2 <= Dout2;
----					control_out <= "01"; --write and no command
--					state := printData1;
--					
--				WHEN printData1 =>
--					data_out1 <= Dout1;
----					control_out <= "01"; --write and no command
--					state := printData0;
--					
--				WHEN printData0 =>
--					data_out0 <= Dout0;
----					control_out <= "01"; --write and no command
--					
--					state := waitState0;
				
				WHEN waitState0 => -- Using push button to get next output data, negative logic
					IF (getNext = '0') THEN
						state := waitState1;
					END IF;
				WHEN waitState1 =>
					IF (getNext = '1') THEN
						ready <= '1';
						state := decodeData;
					END IF;
				
				WHEN OTHERS =>
					state := decodeData;
					
			END CASE;
		END IF;
	end process;
	
end behv;