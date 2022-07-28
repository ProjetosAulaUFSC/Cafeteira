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
		i_valor				: in std_logic_vector(23 downto 0);
		o_f_pronto			: out std_logic:='0';
		o_f_preparo			: out std_logic:='0';
		o_valv_leite		: out std_logic:='0';
		o_valv_cafe			: out std_logic:='0';
		o_valv_chocolate	: out std_logic:='0';
		o_valv_acucar		: out std_logic:='0';
		o_valv_agua			: out std_logic:='0';
		o_f_repo			: out std_logic;
		o_start				: out std_logic;
		o_clear				: out std_logic
	);
end Processador;

architecture Behavioral of Processador is

	signal w_start		: std_logic := '0';
	signal w_clear		: std_logic := '0';
	signal w_q_sec		: integer := 0;
	signal w_f_sec		: integer := 0;
	signal w_n_cafe		: integer := 20;
	signal w_n_leite	: integer := 20;
	signal w_n_chocolate: integer := 20;
	signal w_n_acucar	: integer := 20;
	signal w_f_pisca	: std_logic_vector(4 downto 0) := (others => '0');
	signal w_f_etapa	: std_logic_vector(2 downto 0) := (others => '0');
	signal w_f_l_pronto : std_logic;

begin
	o_clear <= w_clear;
	o_start <= w_start;
	preparo	: process(i_clk, i_state)
	begin
		if(rising_edge(i_clk)) then
			--w_n_acucar <= w_n_acucar - 1;
			if(w_f_sec = 1) then
				w_f_sec <= 0;
			end if;
			if(i_state = "01") then
				if((w_n_cafe) < 1 or (w_n_leite) < 1 or (w_n_chocolate) < 1 or (w_n_acucar) < 1) then
					o_f_repo <= '1';
				elsif(w_f_etapa = "000") then
					o_f_preparo <= '1';
					o_valv_cafe <= '1';
					w_n_cafe <= w_n_cafe - 1;
					if(i_opt = "10") then
						o_valv_leite <= '1';
						w_n_leite <= w_n_leite - 1; 
					elsif(i_opt = "11") then
						o_valv_chocolate <= '1';
						w_n_chocolate <= w_n_chocolate - 1; 
					end if;
					if(i_acucar = '1') then
						o_valv_acucar <= '1';
						w_n_acucar <= w_n_acucar - 1;
					end if;
					o_valv_agua <= '1';
					w_start <= '1';
					w_f_etapa <= "001";
				elsif(w_f_etapa = "001") then
					if(w_q_sec>0) then --11") then
						w_start <= '0';
						w_f_etapa <= "010";
						w_f_sec <= 1;
						o_valv_cafe <= '0';
						o_valv_leite <= '0';
						o_valv_chocolate <= '0';
						o_valv_acucar <= '0';
					end if;
				elsif(w_f_etapa = "010") then
					w_start <= '1';
					w_f_etapa <= "011";
				elsif(w_f_etapa = "011") then
					if((i_tamanho = '0' and w_q_sec> 1)) then -- "001111") or (i_tamanho = '1' and w_q_sec>"100011")) then
						w_start <= '0';
						w_f_sec <= 1;
						o_valv_agua <= '0';
						o_f_preparo <= '0';
						w_f_etapa <= "100";	
					end if;
				elsif(w_f_pisca < "10101") then
					if(w_f_etapa = "100") then
						o_f_pronto <= w_f_l_pronto;
						w_start <= '1';
						w_f_etapa <= "101";
					elsif(w_f_etapa = "101" and w_q_sec>0) then
						w_start <= '0';
						w_f_sec <= 1;
						w_f_pisca <= std_logic_vector(to_unsigned(to_integer(unsigned(w_f_pisca)) + 1,5));
						w_f_l_pronto <= not w_f_l_pronto;
						w_f_etapa <= "100";
					end if;
				elsif(w_f_pisca = "10101") then
					w_f_pisca <= "00000";
					w_f_etapa <= "000";
				end if;
			elsif(i_state = "10") then
				o_f_repo <= '0';
			end if;
		end if;
	end process preparo;
	temporizador : process(w_start, i_clk, i_valor)
	begin
		if(w_start = '1' and rising_edge(i_clk)) then
			if(w_clear = '0') then
				if(i_valor>"000000000000000000000010") then -- 101111101011110000100000
					w_clear <= '1';
					w_q_sec <= w_q_sec + 1;
				end if;
			elsif(w_clear = '1') then
				w_clear <= '0';
			end if;
		end if;
		if(w_f_sec = 1) then
			w_q_sec <= 0;
		end if;
	end process temporizador;
end Behavioral;