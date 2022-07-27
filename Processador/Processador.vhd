library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity Processador is
	port(
		i_rst				: in std_logic;
		i_clk				: in std_logic;
		i_state 			: in std_logic_vector(1 downto 0);
		i_opt				: in std_logic_vector(1 downto 0);
		i_tamanho			: in std_logic;
		i_acucar			: in std_logic;
		o_f_pronto			: out std_logic;
		o_f_preparo			: out std_logic;
		o_valv_leite			: out std_logic;
		o_valv_cafe			: out std_logic;
		o_valv_chocolate		: out std_logic;
		o_valv_acucar			: out std_logic;
		o_valv_agua			: out std_logic;
		o_f_repo			: out std_logic
	);
end Processador;

architecture Behavioral of Processador is

	component Cronometro 
		port(
			i_CLK 			: in  std_logic;
           	i_RST 			: in  std_logic;
			i_START			: in  std_logic;
			i_STOP 			: in  std_logic;
			i_CLEAR   		: in  std_logic;
			o_CONTADOR		: out std_logic_vector(27 downto 0)
		);
	end component;

	signal w_start		: std_logic;
	signal w_stop		: std_logic;
	signal w_clear		: std_logic;
	signal w_valor		: std_logic_vector(27 downto 0);
	signal w_q_sec		: std_logic_vector(5 downto 0);
	signal w_f_repo		: std_logic;
	signal w_n_cafe		: std_logic_vector(4 downto 0) := "10100";
	signal w_n_leite	: std_logic_vector(4 downto 0) := "10100";
	signal w_n_chocolate: std_logic_vector(4 downto 0) := "10100";
	signal w_n_acucar	: std_logic_vector(4 downto 0) := "10100";
	signal w_f_pisca	: std_logic_vector(4 downto 0) := "00000";
	signal w_f_etapa	: std_logic_vector(2 downto 0) := "000";
	signal w_f_l_pronto : std_logic := '1';

begin
	U01 : Cronometro
		port map(
			i_clk 		=> i_clk,
			i_rst 		=> i_rst,
			i_start		=> w_start,
			i_stop		=> w_stop,
			i_clear		=> w_clear,
			o_contador	=> w_valor
	);

	preparo	: process(i_clk)
		variable v_start : std_logic := '1';
	begin
		if(i_state = "01") then
			if(w_n_cafe < "00001" or w_n_leite < "00001" or w_n_chocolate < "00001" or w_n_acucar < "00001") then
				w_f_repo <= '1';
			elsif(w_f_etapa = "000") then
				o_f_preparo <= '1';
				o_valv_cafe <= '1';
				w_n_cafe <= std_logic_vector(to_unsigned(to_integer(unsigned(w_n_cafe)) - 1,5));
				if(i_opt = "10") then
					o_valv_leite <= '1';
					w_n_leite <= std_logic_vector(to_unsigned(to_integer(unsigned(w_n_leite)) - 1,5));
				elsif(i_opt = "11") then
					o_valv_chocolate <= '1';
					w_n_chocolate <= std_logic_vector(to_unsigned(to_integer(unsigned(w_n_chocolate)) - 1,5));
				end if;
				if(i_acucar = '1') then
					o_valv_acucar <= '1';
					w_n_acucar <= std_logic_vector(to_unsigned(to_integer(unsigned(w_n_acucar)) - 1,5));
				end if;
				o_valv_agua <= '1';
				w_start <= v_start;
			elsif(w_f_etapa = "001") then
				while(w_q_sec<"000100") loop
				end loop;
				w_start <= not v_start;
			elsif(w_f_etapa = "010") then
				w_q_sec <= (others => '0');
				o_valv_cafe <= '0';
				o_valv_leite <= '0';
				o_valv_chocolate <= '0';
				o_valv_acucar <= '0';
				w_start <= v_start;
			elsif(w_f_etapa = "011") then
				if(i_tamanho = '0') then
					while(w_q_sec<"010000") loop
					end loop;
				else
					while(w_q_sec<"100100") loop
					end loop;
				end if;
				w_start <= not v_start;
				w_q_sec <= (others => '0');
				o_valv_agua <= '0';
				o_f_preparo <= '0';
			elsif(w_f_pisca < "10101") then
				if(w_f_etapa = "100") then
					o_f_pronto <= w_f_l_pronto;
					w_start <= v_start;
				elsif(w_f_etapa = "101") then
					while(w_q_sec<"000001") loop
					end loop;
					w_f_etapa <="101";
					w_start <= not v_start;
					w_q_sec <= (others => '0');
					w_f_pisca <= std_logic_vector(to_unsigned(to_integer(unsigned(w_f_pisca)) + 1,5));
					w_f_l_pronto <= not w_f_l_pronto;
				end if;
			elsif(w_f_pisca = "10101") then
				w_f_pisca <= "00000";
				w_f_etapa <= "000";
			end if;
		end if;
	end process preparo;

	reposicao : process(i_state)
	begin
		if(i_state = "10") then
			w_f_repo <= '0';
		end if;
		
	end process reposicao;

	temporizador : process(w_start)
	begin
		if(w_start = '1') then
			if(w_clear = '0') then
				while(w_valor<"101111101011110000100000") loop
				end loop;
				w_q_sec <= std_logic_vector(to_unsigned(to_integer(unsigned(w_q_sec)) + 1,6));
				w_clear <= '1';
			elsif(w_clear = '1') then
				w_clear <= '0';
			end if;
		end if;
	end process temporizador;
end Behavioral;