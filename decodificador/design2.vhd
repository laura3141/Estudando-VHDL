library ieee;
use ieee.std_logic_1164.all;

entity decodificador is
	port(a,b,c: in std_logic;
    	s1,s2,s3:out std_logic);
        
end decodificador;

architecture decodificador_arch of decodificador is

begin
	s1 <= (b and c)or(a and b);
    s2<=b;
    s3<=c;
            
end decodificador_arch;
              