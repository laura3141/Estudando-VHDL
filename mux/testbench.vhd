library IEEE;
use IEEE.std_logic_1164.all;

entity mux_tb is
end mux_tb;

architecture testbench of mux_tb is
    -- componente interno da arquitetura de teste
    component mux
        port(
            e1: in std_logic;
            e2: in std_logic;
            sel: in std_logic;
            s: out std_logic;
           
        );
    end component;

    signal e1_tb: std_logic;
    signal e2_tb : std_logic;
    signal sel_tb : std_logic;
    signal s_tb : std_logic;
    
begin
    uut: mux
        port map (
            e1 => e1_tb,
            e2 => e2_tb,
            sel => sel_tb,
            s => s_tb
      
        );

    -- inicio do processo de estimulo
    stimulus: process
    
    begin
        -- Test Case 1
        e1_tb <= '0';
        e2_tb <= '0';
        sel_tb <= '0';
        wait for 10 ns;
        
        -- Test Case 2
        e1_tb <= '1';
        e2_tb <= '0';
        sel_tb <= '0';
        wait for 10 ns;
        
        -- End of testbench
        wait;
    end process stimulus;

end testbench;