library ieee;
use ieee.std_logic_1164.all;

entity ula is

  port(a,b,carry_in: in std_logic;
  		sel: in std_logic_vector (1 downto 0);
       s,carry_out: out std_logic);
       
end ula;

architecture ula_arch of ula is

	component mux is 
    	port (e1, e2,e3,e4: in std_logic;
  		    sel: in std_logic_vector (1 downto 0);
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
    
    component porta_or is 
    	 port (a, b: in std_logic;
  			s: out std_logic);
    end component;
    
    component porta_not is 
        port (a: in std_logic;
        s: out std_logic);
    end component;
    
	signal sinal_1: std_logic;
    signal sinal_2: std_logic;
    signal sinal_3: std_logic;
    signal sinal_4: std_logic;
    
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
                
	p_or: porta_or
    	port map (
        		a=>a,
                b=>b,
                s=>sinal_3);
                
	p_not: porta_not
    	port map (
        		a=>a,
                s=>sinal_4);
                
                
    mux1: mux
        port map(
                e1 => sinal_1,
                e2 =>sinal_2,
                e3 =>sinal_3,
                e4 =>sinal_4,
                sel => sel,
                s => s);

end ula_arch;