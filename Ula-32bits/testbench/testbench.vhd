library IEEE;
use IEEE.std_logic_1164.all;

entity ula_tb is
end ula_tb;

architecture testbench of ula_tb is
   
    component ula_32 is
    
  		port (	
          	selB: in std_logic;
            sel: in std_logic_vector (1 downto 0);
            a,b: in std_logic_vector (31 downto 0);
            s: out std_logic_vector (31 downto 0);
            carry_out,overflow: out std_logic
          );
  		
    end component;

    signal  a_tb,b_tb,s_tb: std_logic_vector (31 downto 0);
    signal selB_tb,carry_out_tb,overflow_tb: std_logic;
    signal sel_tb: std_logic_vector (1 downto 0);
    
	begin

    uut: ula_32
    
        port map (
            a => a_tb,
            b => b_tb,
            sel => sel_tb,
            selB => selB_tb,
            s => s_tb,
            carry_out => carry_out_tb,
            overflow => overflow_tb
        );

    stimulus: process
    begin	
      
    a_tb <= (others => '1'); 
    b_tb <= (others => '1');
    sel_tb <= "00"; 
    selB_tb <= '0';
    wait for 10 ns;
       
   
       
        wait;
    end process stimulus;

end testbench;