library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity TB_Processador is
end TB_Processador;

architecture Test_Bench of TB_Processador is
    component Processador is
        Port(
            i_rst				: in std_logic;
            i_clk				: in std_logic;
            i_state 			: in std_logic_vector(1 downto 0);
            i_opt				: in std_logic_vector(1 downto 0);
            i_tamanho			: in std_logic;
            i_acucar			: in std_logic;
            i_valor             : in std_logic_vector(23 downto 0);
            o_f_pronto			: out std_logic;
            o_f_preparo			: out std_logic;
            o_valv_leite		: out std_logic;
            o_valv_cafe			: out std_logic;
            o_valv_chocolate	: out std_logic;
            o_valv_acucar		: out std_logic;
            o_valv_agua			: out std_logic;
            o_f_repo			: out std_logic;
            o_start             : out std_logic;
            o_clear             : out std_logic
        );
    end component;

    signal w_clk            : std_logic;
    signal w_rst            : std_logic;
    signal w_state          : std_logic_vector(1 downto 0);
    signal w_opt            : std_logic_vector(1 downto 0);
    signal w_tamanho        : std_logic;
    signal w_acucar         : std_logic;
    signal w_pronto 		: std_logic;
    signal w_preparo		: std_logic;
    signal w_v_leite  		: std_logic;
    signal w_v_cafe	    	: std_logic;
    signal w_v_chocolate	: std_logic;
    signal w_v_acucar	    : std_logic;
    signal w_v_agua		    : std_logic;
    signal w_repo			: std_logic;
    signal w_valor			: std_logic_vector(23 downto 0);
    signal w_start			: std_logic;
    signal w_clear			: std_logic;
    
begin

    UUT : Processador
        Port Map(
            i_rst				=> w_rst,
            i_clk				=> w_clk,
            i_state 			=> w_state,
            i_opt				=> w_opt,
            i_tamanho			=> w_tamanho,
            i_acucar			=> w_acucar,
            i_valor             => w_valor,
            o_f_pronto			=> w_pronto,
            o_f_preparo			=> w_preparo,
            o_valv_leite		=> w_v_leite,
            o_valv_cafe			=> w_v_cafe,
            o_valv_chocolate	=> w_v_chocolate,
            o_valv_acucar		=> w_v_acucar,
            o_valv_agua			=> w_v_agua,
            o_f_repo			=> w_repo,
            o_start             => w_start,
            o_clear             => w_clear
        );

        process
        begin
            w_clk <= '0';
            wait for 10 ns;
            w_clk <= '1';
            wait for 10 ns;
        end process;

        process
        begin   
            w_rst <= '1';
            wait for 90 ns;
            w_rst <= '0';
            wait;
        end process;

        process
        begin
            wait for 110 ns;
            w_state <= "00";
            wait for 20 ns;
            w_state <= "01";
            w_opt <= "01";
            w_acucar <= '1';
            w_tamanho <= '0';
            w_start <= '1';
            w_clear <= '0';
            w_valor <= "000000000000000000100000";
            wait for 20 ns;
            -- w_state <= "00";
            w_opt <= "00";
            w_acucar <= '0';
            wait;
        end process;

        -- reposicao : process  -- PERGUNTAR PRO RALPH Dns
        -- begin
        --     wait for 110 ns;
        --     w_state <= "00";
        --     wait for 20 ns;
        --     w_state <= "10";
        --     wait for 50 ns;
        --     w_state <= "00";
        --     wait;
        -- end process reposicao;

    end Test_Bench;