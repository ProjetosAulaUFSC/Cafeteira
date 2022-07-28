library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity TB_ConversorD7 is
end TB_ConversorD7;

architecture Test_Bench of TB_ConversorD7 is

    component ConversorD7 is
        Port(
            i_clk       : in std_logic;
		    i_rst		: in std_logic;
		    i_letra		: in std_logic_vector(2 downto 0);
		    o_display 	: out std_logic_vector(6 downto 0)
	    );
    end component;

    signal w_clk        : std_logic;
    signal w_rst        : std_logic;
    signal w_letra      : std_logic_vector(2 downto 0);
    signal w_display    : std_logic_vector(6 downto 0);
    
begin

    UUT : ConversorD7
        Port Map(
            i_clk       => w_clk,
            i_rst       => w_rst,
            i_letra     => w_letra,
            o_display   => w_display
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

        saidas : process
        begin
            wait for 110 ns;
            w_letra <= "000";
            wait for 20 ns;
            w_letra <= "001";
            wait for 20 ns;
            w_letra <= "010";
            wait for 20 ns;
            w_letra <= "011";
            wait for 20 ns;
            w_letra <= "100";
            wait for 20 ns;
            w_letra <= "101";
            wait for 20 ns;
            w_letra <= "110";
            wait for 20 ns;
            w_letra <= "111";
            wait;
        end process saidas;
end Test_Bench;