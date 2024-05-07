library IEEE;
use IEEE.std_logic_1164.all;

entity somador_completo_tb is
end somador_completo_tb;

architecture testbench of somador_completo_tb is
    -- componente interno da arquitetura de teste
    component somador_completo
        port(
            a: in std_logic;
            b: in std_logic;
            carry_in: in std_logic;
            soma: out std_logic;
            carry_out: out std_logic
        );
    end component;

    -- entradas como sinais
    signal a_tb, b_tb, carry_in_tb: std_logic;
    signal soma_tb, carry_out_tb: std_logic;
    
begin

   
    uut: somador_completo 
        port map (
            a => a_tb,
            b => b_tb,
            carry_in => carry_in_tb,
            soma => soma_tb,
            carry_out => carry_out_tb
        );

    -- inicio do processo de estimulo
    stimulus: process
    begin
        -- Test Case 1
        a_tb <= '0';
        b_tb <= '0';
        carry_in_tb <= '0';
        wait for 10 ns;
        
        -- Test Case 2
        a_tb <= '1';
        b_tb <= '0';
        carry_in_tb <= '0';
        wait for 10 ns;
        
        -- Test Case 3
        a_tb <= '0';
        b_tb <= '1';
        carry_in_tb <= '0';
        wait for 10 ns;
        
        -- Test Case 4
        a_tb <= '1';
        b_tb <= '1';
        carry_in_tb <= '0';
        wait for 10 ns;
        
        -- Test Case 5
        a_tb <= '0';
        b_tb <= '0';
        carry_in_tb <= '1';
        wait for 10 ns;
        
        -- Test Case 6
        a_tb <= '1';
        b_tb <= '0';
        carry_in_tb <= '1';
        wait for 10 ns;
        
        -- Test Case 7
        a_tb <= '0';
        b_tb <= '1';
        carry_in_tb <= '1';
        wait for 10 ns;
        
        -- Test Case 8
        a_tb <= '1';
        b_tb <= '1';
        carry_in_tb <= '1';
        wait for 10 ns;
        
        -- End of testbench
        wait;
    end process stimulus;

end testbench;
