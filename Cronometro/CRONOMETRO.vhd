library IEEE;
use IEEE.std_LOGIC_1164.ALL;
use IEEE.std_LOGIC_ARITH.ALL;
use IEEE.std_LOGIC_SIGNED.ALL;



entity CRONOMETRO is
	 Generic(
				N				: integer := 28
	);
    Port ( i_CLK 			: in  std_LOGIC;
           i_RST 			: in  std_LOGIC;
			  i_START		: in  std_LOGIC;
			  i_STOP 		: in  std_LOGIC;
			  i_CLEAR   	: in  std_LOGIC;
			  o_CONTADOR	: out std_LOGIC_vector(N-1 downto 0)
	 );
end CRONOMETRO;

architecture Behavioral of CRONOMETRO is
----------------------------------------------------------------------------------
-- Internal signals.
----------------------------------------------------------------------------------
 type Estado is (st_IDLE, st_CONTAR, st_PARAR); 

	attribute syn_encoding : string;
	attribute syn_encoding of Estado : type is "safe";
	
    signal w_STATE 		: Estado;
	signal w_CONTADOR		: std_LOGIC_vector(N-1 DOWNTO 0);
	
	-- 0010 1111 1010 1111 0000 1000 0000
	
begin

	o_CONTADOR <= w_CONTADOR;
	
----------------------------------------------------------------------------------
-- State machine.
----------------------------------------------------------------------------------
	process(i_CLK, i_RST)
	begin
		if (i_RST = '1') then
			w_CONTADOR <= (others => '0');
			w_STATE <= st_IDLE;
		
		elsif rising_edge (i_CLK) then
			case w_STATE is
				when st_IDLE => 
					if (i_START = '1') then
						w_CONTADOR <= w_CONTADOR + 1;
						w_STATE <= st_CONTAR;
					else
						w_STATE <= st_IDLE;
					end if;
				
				
				when st_CONTAR => 
					w_CONTADOR <= w_CONTADOR + 1;
					
					if (i_STOP = '1') then
						w_STATE <= st_PARAR;
					elsif (i_CLEAR = '1') then
						w_CONTADOR <= (others => '0');
						w_STATE <= st_IDLE;
					else
						w_STATE <= st_CONTAR;
					end if;
							
				
				when st_PARAR => 
					if (i_START = '1') then
						w_CONTADOR <= w_CONTADOR + 1;
						w_STATE <= st_CONTAR;
					elsif(i_CLEAR = '1') then
						w_CONTADOR <= (others => '0');
						w_STATE <= st_IDLE;
					else
						w_STATE <= st_PARAR;
					end if;
				
				
				when others =>
					null;
					
			end case;
		end if;
	
	end process;
	


end Behavioral;

