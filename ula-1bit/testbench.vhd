library IEEE;
use IEEE.std_logic_1164.all;

entity ula_tb is
end ula_tb;

architecture testbench of ula_tb is
   
    component ula
 		port(a,b,carry_in: in std_logic;
  		sel: in std_logic_vector (1 downto 0);
       s,carry_out: out std_logic);
       
    end component;

    -- entradas como sinais
    signal a_tb, b_tb, carry_in_tb: std_logic;
    signal  sel_tb: std_logic_vector (1 downto 0);
    signal s_tb, carry_out_tb: std_logic;
    
begin

   
    uut: ula
        port map (
            a => a_tb,
            b => b_tb,
            carry_in => carry_in_tb,
            sel => sel_tb,
            s => s_tb,
            carry_out => carry_out_tb
        );

    -- inicio do processo de estimulo
    stimulus: process
    begin
       
        	a_tb<= '0';
            b_tb <= '1';
            carry_in_tb <= '0';
            sel_tb <= "01";
         
        wait for 10 ns;
        
        a_tb<= '1';
            b_tb <= '1';
            carry_in_tb <= '0';
            sel_tb <= "10";
         
        wait for 10 ns;
         a_tb<= '1';
            b_tb <= '1';
            carry_in_tb <= '1';
            sel_tb <= "11";
         
        wait for 10 ns;
        a_tb<= '0';
            b_tb <= '1';
            carry_in_tb <= '0';
            sel_tb <= "00";
         
        wait for 10 ns;
       
        wait;
    end process stimulus;

end testbench;