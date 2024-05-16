library ieee;
use ieee.std_logic_1164.all;

entity ula is

  port(a,b,carry_in,sel: in std_logic;
       s,carry_out: out std_logic);
       
end ula;

architecture ula_arch of ula is

	component mux is 
    	port (e1, e2, sel: in std_logic;
  			  s: out std_logic);
    end component;
    
    component somador_completo is 
    	port(
          a: in std_logic;
          b: in std_logic;
          carry_in: in std_logic;
          soma: out std_logic;
          carry_out: out std_logic
    	);
    end component;
    
	component porta_and is 
    	port (a, b: in std_logic;
  				s: out std_logic);
    end component;
    
	signal sinal_1: std_logic;
    signal sinal_2: std_logic;
    
	begin
    
    somador: somador_completo
        port map(
                a => a,
                b => b,
                carry_in => carry_in,
                soma=>sinal_1,
                carry_out=>carry_out);
    
    p_and: porta_and
        port map(
                a => a,
                b => b,
                s=>sinal_2);
                
    mux1: mux
        port map(
                e1 => sinal_1,
                e2 =>sinal_2,
                sel => sel,
                s => s);

end ula_arch;