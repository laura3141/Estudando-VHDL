library ieee;
use ieee.std_logic_1164.all;

entity porta_or is

  port (a, b: in std_logic;
  s: out std_logic);
  
end porta_or;

architecture arch_porta_and of porta_and is
begin
  s<= a and b;
  
end arch_porta_and;