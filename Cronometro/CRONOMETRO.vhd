library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_signed.all;

entity Cronometro is
    Port(
		i_clk 			: in  std_logic;
		i_rst 			: in  std_logic;
		i_start			: in  std_logic;
		i_clear   		: in  std_logic;
		o_counter		: out std_logic_vector(27 downto 0)
	 );
end Cronometro;

architecture Behavioral of Cronometro is
	signal w_counter	: std_LOGIC_vector(27 DOWNTO 0) := (others => '0');
	
	-- 0010 1111 1010 1111 0000 1000 0000
begin
	o_counter <= w_counter;
	
	process(i_clk, i_rst)
	begin
		if(i_rst = '1') then
			w_counter <= (others => '0');
		elsif(rising_edge (i_clk)) then
			if(i_start = '1') then
				w_counter <= w_counter + 1;
			elsif(i_clear = '1') then
				w_counter <= (others => '0');
			end if;
		end if;
	end process;
end Behavioral;