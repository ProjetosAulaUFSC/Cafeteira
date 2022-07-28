library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_signed.all;

entity TB_Cronometro is
end TB_Cronometro;

architecture Test_Bench of TB_Cronometro is
    
	component Cronometro is
        Port(
            i_clk 		: in  std_logic;
            i_rst 		: in  std_logic;
            i_start		: in  std_logic;
            i_clear   	: in  std_logic;
            o_counter	: out std_logic_vector(27 downto 0)
        );
	end component;
	
	signal w_clk		: std_logic;
	signal w_rst		: std_logic;
	signal w_start		: std_logic;
	signal w_clear		: std_logic;
	signal w_counter	: std_logic_vector(27 downto 0);
	

begin

	UUT : Cronometro 
		Port Map ( 
            i_clk 		=> w_clk,
            i_rst 		=> w_rst,
            i_start		=> w_start,
            i_clear   	=> w_clear,
            o_counter	=> w_counter
        );

		clock : process
		begin
			w_clk <= '0';
			wait for 10 ns;
			w_clk <= '1';
			wait for 10 ns;
		end process clock;

		reset : process
		begin
			w_rst <= '1';
			wait for 100 ns;
			w_rst <= '0';
			wait;
		end process reset;

        main : process
		begin
			wait for 110 ns;
			w_start <= '1';
			wait for 200 ns;
			w_start <= '0';
			wait for 100 ns;

			w_start <= '1';
			wait for 200 ns;
			w_start <= '0';
			wait for 100 ns;

			w_clear <= '1';
			wait for 20 ns;
			w_clear <= '0';
			wait;
		end process main;
end Test_Bench;