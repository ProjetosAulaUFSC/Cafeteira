library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity TB_Display_7 is
end TB_Display_7;

architecture Behavioral of TB_Display_7 is

    component Display_7 is
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

    UUT : Display_7
        Port Map(
            i_clk       => w_clk,
            i_rst       => w_rst,
            i_letra     => w_letra,
            o_display   => w_display
        );

        --
        -- Clock
        --
        PROCESS
        BEGIN
            w_CLK <= '0';
            WAIT FOR 10 NS;
            w_CLK <= '1';
            WAIT FOR 10 NS;
        END PROCESS;

        
        --
        -- Reset
        --
        process
        begin
            w_rst <= '1';
            wait for 100 ns;
            w_rst <= '0';
            wait;
        end process;
        
        --
        -- Saídas
        --
        process
        begin
            wait for 110 ns;
            w_letra <= "000";
            w_display <= "0111110";
            wait for 20 ns;
            w_letra <= "001";
            w_display <= "1110111";
            wait for 20 ns;
            w_letra <= "010";
            w_display <= "0000110";
            wait for 20 ns;
            w_letra <= "011";
            w_display <= "0011111";
            wait for 20 ns;
            w_letra <= "100";
            w_display <= "0111101";
            wait for 20 ns;
            w_letra <= "101";
            w_display <= "0011101";
            wait for 20 ns;
            w_letra <= "110";
            w_display <= "0010101";
            wait for 20 ns;
            w_letra <= "111";
            w_display <= "1011111";
            wait;
        end process;

end Behavioral;