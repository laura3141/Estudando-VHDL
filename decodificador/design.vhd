library ieee;
use ieee.std_logic_1164.all;

entity decodificador is
	port(a,b,c: in std_logic;
    	s1,s2,s3:out std_logic);
        
end decodificador;

architecture decodificador_arch of decodificador is

begin
	s1 <= '1' when (a = '0' and b = '1' and c = '1') else
   			'1' when (a = '1' and b = '1' and c = '0') else
			'1' when (a = '1' and b = '1' and c = '1') else
            '0';
    s2 <= '1' when (a = '0' and b = '1' and c = '0') else
   			'1' when (a = '0' and b = '1' and c = '1') else
			'1' when (a = '1' and b = '1' and c = '0') else
            '1' when (a = '1' and b = '1' and c = '1') else
            '0';
            
     s3 <= '1' when (a = '0' and b = '0' and c = '1') else
   			'1' when (a = '0' and b = '1' and c = '1') else
			'1' when (a = '1' and b = '0' and c = '1') else
            '1' when (a = '1' and b = '1' and c = '1') else
            '0';
end decodificador_arch;
              