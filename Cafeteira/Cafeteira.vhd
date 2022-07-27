library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity Cafeteira is
	port(
		i_b_cafe 			: in std_logic;
		i_b_cafe_leite		: in std_logic;
		i_b_mocaccino		: in std_logic;
		i_b_tamanho			: in std_logic;
		i_b_acucar			: in std_logic;
		i_b_preparo			: in std_logic;
		i_b_reposicao		: in std_logic;
		i_s_reposicao		: in std_logic;
		i_b_rst				: in std_logic;
		i_clk				: in std_logic;
		i_s_agua			: in std_logic;
		i_s_temp			: in std_logic;
		--------------------------------------------------------
		o_l_cafe			: out std_logic;
		o_l_cafe_leite		: out std_logic;
		o_l_mocaccino		: out std_logic;
		o_l_tamanho			: out std_logic;
		o_l_acucar			: out std_logic;
		o_l_reposicao		: out std_logic;
		o_l_preparo			: out std_logic;
		o_l_pronto			: out std_logic;
		o_v_leite			: out std_logic;
		o_v_cafe			: out std_logic;
		o_v_chocolate		: out std_logic;
		o_v_acucar			: out std_logic;
		o_v_agua			: out std_logic;
		o_display_0			: out std_logic_vector(0 to 6);
		o_display_1			: out std_logic_vector(0 to 6);
		o_display_2			: out std_logic_vector(0 to 6);
		o_display_3			: out std_logic_vector(0 to 6);
		o_l_agua			: out std_logic;
		o_l_temp			: out std_logic
	);
end Cafeteira;

architecture Behavioral of Cafeteira is
	
	component ConversorD7
		port(
			i_clk			: in std_logic;
			i_rst			: in std_logic;
			i_letra			: in std_logic_vector(2 downto 0);		
			o_display		: out std_logic_vector(6 downto 0)		
		);
	end component;

	component Processador
		port(
			i_rst				: in std_logic;
			i_clk				: in std_logic;
			i_state 			: in std_logic_vector(1 downto 0);
			i_opt				: in std_logic_vector(1 downto 0);
			i_tamanho			: in std_logic;
			i_acucar			: in std_logic;
			o_f_pronto			: out std_logic;
			o_f_preparo			: out std_logic;
			o_valv_leite		: out std_logic;
			o_valv_cafe			: out std_logic;
			o_valv_chocolate	: out std_logic;
			o_valv_acucar		: out std_logic;
			o_valv_agua			: out std_logic;
			o_f_repo			: out std_logic
		);
	end component;

	component PLL_INTEL
		port(
			areset		: IN std_LOGIC  := '0';
			inclk0		: IN std_LOGIC  := '0';
			c0				: OUT std_LOGIC ;
			locked		: OUT std_LOGIC 
		);
	end component;	

	signal w_rst			: std_logic;
	signal w_state 			: std_logic_vector(1 downto 0); -- 00 -> idle, 01 -> prep, 10 -> repo;
	signal w_clk			: std_logic;
	signal w_acucar			: std_logic;
	signal w_tamanho		: std_logic;
	signal w_opt			: std_logic_vector(1 downto 0);
	signal w_letra_0		: std_logic_vector(2 downto 0);
	signal w_letra_1		: std_logic_vector(2 downto 0);
	signal w_letra_2		: std_logic_vector(2 downto 0);
	signal w_letra_3		: std_logic_vector(2 downto 0);
	signal w_f_repo			: std_logic;
	signal w_f_pronto		: std_logic;
	signal w_f_preparo		: std_logic;

begin
	
	-- U01 : PLL_INTEL
	-- 	port map(
	-- 		areset	 	=> not i_b_rst,
	-- 		inclk0	 	=> i_clk,
	-- 		c0	 		=> w_clk,
	-- 		locked	 	=> w_locked
	-- );

	-- w_rst <= not w_locked;

	U02 : ConversorD7
		Port Map (
			i_clk		=> w_clk,
			i_rst 		=> i_b_rst,
			i_letra 	=> w_letra_0,
			o_display	=> o_display_0
		);


	U03 : ConversorD7 
		Port Map (
			i_clk		=> w_clk,
			i_rst 		=> i_b_rst,
			i_letra 	=> w_letra_1,
			o_display	=> o_display_1
		);

	U04 : ConversorD7 
		Port Map (
			i_clk		=> w_clk,
			i_rst 		=> i_b_rst,
			i_letra 	=> w_letra_2,
			o_display	=> o_display_2
		);

	U05 : ConversorD7 
		Port Map (
			i_clk		=> w_clk,
			i_rst 		=> i_b_rst,
			i_letra 	=> w_letra_3,
			o_display	=> o_display_3
		);

	U06 : Processador 
		Port Map(
			i_rst			=> i_b_rst,
			i_clk			=> w_clk,
			i_state			=> w_state,
			i_opt			=> w_opt,
			i_tamanho		=> w_tamanho,
			i_acucar		=> w_acucar,
			o_f_pronto		=> o_l_pronto,
			o_f_preparo		=> w_f_preparo,
			o_valv_leite	=> o_v_leite,
			o_valv_cafe		=> o_v_cafe,		
			o_valv_chocolate=> o_v_chocolate,
			o_valv_acucar	=> o_v_acucar,
			o_valv_agua		=> o_v_agua,
			o_f_repo		=> w_f_repo
		); 

	o_l_preparo <= w_f_preparo;

	main : process(i_b_rst, i_b_preparo, w_clk, i_b_reposicao, i_b_tamanho)
	begin
		if(i_b_rst = '1') then
			o_l_cafe <= '0';
			o_l_cafe_leite <= '0';
			o_l_mocaccino <= '0';
			o_l_tamanho <= '0';
			o_l_acucar <= '0';
			w_letra_0 <= (others => '0');
			w_letra_1 <= (others => '0');
			w_letra_2 <= (others => '0');
			w_letra_3 <= (others => '0');
			w_state <= "00";
			w_opt <= "00";
		elsif(i_b_reposicao = '1') then
			w_state <= "10";
			o_l_reposicao <= '0';
		elsif(w_f_repo = '1') then
			o_l_reposicao <= '1';
		elsif rising_edge(w_clk) then
			case w_state is
				when "01" => 
					w_letra_0 <= "000";
					w_letra_1 <= "001";
					w_letra_2 <= "010";
					w_letra_3 <= "011";
				when "10" =>
					while(i_s_reposicao = '0') loop
					end loop;
					w_state <= "00";
				when "00" =>
					if(i_b_reposicao = '1') then
						w_state <= "10";
					elsif(i_b_cafe = '1') then
						w_opt <= "01";	
						o_l_cafe <= '1';
						o_l_cafe_leite <= '0';	
						o_l_mocaccino <= '0';	
					elsif(i_b_cafe_leite = '1') then
						w_opt <= "10";
						o_l_cafe <= '0';
						o_l_cafe_leite <= '1';	
						o_l_mocaccino <= '0';	
					elsif(i_b_mocaccino = '1') then
						w_opt <= "11";
						o_l_cafe <= '0';
						o_l_cafe_leite <= '0';	
						o_l_mocaccino <= '1';	
					end if;
					if(i_b_tamanho = '1') then
						w_tamanho <= not w_tamanho;
						o_l_tamanho <= w_tamanho;
					end if;
					if(i_b_acucar = '1') then
						w_acucar <= not w_acucar;
						o_l_acucar <= w_acucar;
					end if;
					if(i_b_preparo = '1') then
						w_state <= "01";
					end if;
				when others => null;
			end case;
		end if;
	end process main;

	water_control : process(i_s_agua, i_s_temp)
	begin
		o_l_agua <= i_s_agua;
		o_l_temp <= i_s_temp;
	end process water_control;

end Behavioral;