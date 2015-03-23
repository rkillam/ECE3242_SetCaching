library	ieee;
use ieee.std_logic_1164.all;
USE ieee.numeric_std.all; 
use work.MP_lib.all;

entity outputControl is
port (clock		: 	in std_logic;
		newData	: 	in std_logic;
		data_in	:	in std_logic_vector(15 downto 0);
		data_out	:	out std_logic_vector(7 downto 0);
		control_out	: out std_logic_vector(1 downto 0);
		ready		: out std_logic;
		cur_state : out std_logic_vector(3 downto 0)
);
end outputControl;

architecture behv of outputControl is
	SIGNAL data	: INTEGER;
	SIGNAL s : STD_LOGIC_VECTOR(7 DOWNTO 0);
	SIGNAL Dout0,Dout1,Dout2,Dout3,Dout4 : STD_LOGIC_VECTOR(7 DOWNTO 0);
	
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
		printData0
	);
	
	VARIABLE state : state_type := decodeData;
	
	begin
		IF(rising_edge(clock)) THEN
			CASE state IS
				WHEN decodeData =>
					
					cur_state <= "0000";
				
					IF (newData = '1') THEN
					
						IF (data < 0) THEN
							s <= "00101101"; --negative sign for LCD
						ELSE
							s <= "00100000"; --possitive sign for LCD
						END IF;
						
						Dout0(7 DOWNTO 4) <= "0011";
						Dout0(3 DOWNTO 0) <= STD_LOGIC_VECTOR(TO_SIGNED(data mod 10, 5))(3 DOWNTO 0);
						
						Dout1(7 DOWNTO 4) <= "0011";
						Dout1(3 DOWNTO 0) <= STD_LOGIC_VECTOR(TO_SIGNED((data / 10) mod 10, 5))(3 DOWNTO 0);
						
						Dout2(7 DOWNTO 4) <= "0011";
						Dout2(3 DOWNTO 0) <= STD_LOGIC_VECTOR(TO_SIGNED((data / 100) mod 10, 5))(3 DOWNTO 0);
						
						Dout3(7 DOWNTO 4) <= "0011";
						Dout3(3 DOWNTO 0) <= STD_LOGIC_VECTOR(TO_SIGNED((data / 1000) mod 10, 5))(3 DOWNTO 0);
						
						Dout4(7 DOWNTO 4) <= "0011";
						Dout4(3 DOWNTO 0) <= STD_LOGIC_VECTOR(TO_SIGNED((data / 10000) mod 10, 5))(3 DOWNTO 0);
						
						state := clear;
					END IF;
					ready <= '0';
					
				WHEN clear =>
					cur_state <= "0001";
				
					data_out <= x"01";
					control_out <= "01"; --write and command
					state := home;
					
				WHEN home =>
					cur_state <= "0010";
					
					data_out <= x"02";
					control_out <= "01"; --write and command
					state := printSign;
					
				WHEN printSign =>
					cur_state <= "0011";
				
					data_out <= s;
					control_out <= "00"; --write and no command
					state := printData4;
					
				WHEN printData4 =>
					cur_state <= "0100";
				
					data_out <= Dout4;
					control_out <= "00"; --write and no command
					state := printData3;
					
				WHEN printData3 =>
					cur_state <= "0101";
				
					data_out <= Dout3;
					control_out <= "00"; --write and no command
					state := printData2;
					
				WHEN printData2 =>
					cur_state <= "0110";
				
					data_out <= Dout2;
					control_out <= "00"; --write and no command
					state := printData1;
					
				WHEN printData1 =>
					cur_state <= "0111";
					
					data_out <= Dout1;
					control_out <= "00"; --write and no command
					state := printData0;
					
				WHEN printData0 =>
					cur_state <= "1000";
					
					data_out <= Dout0;
					control_out <= "00"; --write and no command
					ready <= '1';
					state := decodeData;
					
				WHEN OTHERS =>
					state := decodeData;
					
			END CASE;
		END IF;
	end process;
	
end behv;