library	ieee;
use ieee.std_logic_1164.all;
USE ieee.numeric_std.all; 
use work.MP_lib.all;

entity hexDecoder is
port (data_in	:	in std_logic_vector(3 downto 0);
		data_out	:	out std_logic_vector(0 to 6)
);
end hexDecoder;

architecture behv of hexDecoder is
begin
	process(data_in)
	VARIABLE data : std_logic_vector(3 downto 0);
  begin
	 data := data_in(3 downto 0);
	 case data is
		when "0000" => data_out	 <= not ("1111110");
		when "0001" => data_out	 <= not ("0110000");
		when "0010" => data_out	 <= not ("1101101");
		when "0011" => data_out	 <= not ("1111001");
		when "0100" => data_out	 <= not ("0110011");
		when "0101" => data_out	 <= not ("1011011");
		when "0110" => data_out	 <= not ("1011111");
		when "0111" => data_out	 <= not ("1110000");
		when "1000" => data_out	 <= not ("1111111");
		when "1001" => data_out	 <= not ("1111011");
		when "1010" => data_out	 <= not ("1110111");
		when "1011" => data_out	 <= not ("0011111");
		when "1100" => data_out	 <= not ("0001101");
		when "1101" => data_out	 <= not ("0111101");
		when "1110" => data_out	 <= not ("0000000");
		when "1111" => data_out	 <= not ("1000000");
	 end case;
  end process;
end behv;