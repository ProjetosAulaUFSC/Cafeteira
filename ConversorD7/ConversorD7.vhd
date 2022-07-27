library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity ConversorD7 is
	Port(
		i_clk		: in std_logic;
		i_rst		: in std_logic;
		i_letra		: in std_logic_vector(2 downto 0);
		o_display 	: out std_logic_vector(6 downto 0)
	);
end ConversorD7;

architecture Behavioral of ConversorD7 is
begin
	conversao : process(i_rst,i_clk)
	begin
		if(i_rst = '1') then
			o_display <=  (others => '0');
		else
			if(rising_edge(i_clk)) then
				case i_letra is
					when "000" => -- U
						o_display <= "0111110";
					when "001" => -- A
						o_display <= "1110111";				
					when "010" => -- i
						o_display <= "0000110";				
					when "011" => -- t
						o_display <= "0011111";				
					when "100" => -- d
						o_display <= "0111101";				
					when "101" => -- o
						o_display <= "0011101";				
					when "110" => -- n
						o_display <= "0010101";				
					when "111" => -- E
						o_display <= "1011111";				
					when others =>
						o_display <= (others => '0');
				end case;
			end if;
		end if;
	end process conversao;
end Behavioral;