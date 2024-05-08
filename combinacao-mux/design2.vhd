library ieee;
use ieee.std_logic_1164.all;

entity combinacao_mux is

  port(e1,e2,e3,e4,sel: in std_logic;
       s: out std_logic);
       
end combinacao_mux;

architecture combinacao_mux_arch of combinacao_mux is

	component mux is --componente interno da arquitetura
    	port (e1, e2, sel: in std_logic;
  			  s: out std_logic);
    end component;
    
	signal saida_primeiro: std_logic;
    
	begin

    mux1: mux
        port map(
                e1 => e1,
                e2 => e2,
                sel => sel,
                s => saida_primeiro);
    mux2: mux
        port map(
                e1 => e3,
                e2 => e4,
                sel => saida_primeiro,
                s => s);

end combinacao_mux_arch;