library ieee;
use ieee.std_logic_1164.all;

entity mux is
  port (e1, e2, sel: in std_logic;
  s: out std_logic);
end mux;

architecture arch_mux of mux is
begin
  with sel select --sel e a expressao de selecao
  s <= e1 when '0',
  e2 when others;
  
end arch_mux;