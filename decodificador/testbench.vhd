library IEEE;
use IEEE.std_logic_1164.all;

entity decodificador_tb is
end decodificador_tb;

architecture testbench of decodificador_tb is
	component decodificador 
    
    port(a,b,c: in std_logic;
    	s1,s2,s3:out std_logic);
 	
    end component;
    
    signal a_tb,b_tb,c_tb: std_logic;
    signal s1_tb,s2_tb,s3_tb: std_logic;
    
begin

uut: decodificador

port map(
			a=>a_tb,
            b=>b_tb,
            c=>c_tb,
            s1=>s1_tb,
            s2=>s2_tb,
            s3=>s3_tb);
            
 stimulus: process
begin 
		a_tb<='1';
        b_tb<='0';
        c_tb<='1';
        wait for 10 ns;
        a_tb<='0';
        b_tb<='1';
        c_tb<='0';
         wait for 10 ns;
         wait;
 end process  stimulus;
 end testbench;

          