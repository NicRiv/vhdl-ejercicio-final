-------------------------------------------
-- Electrónica Digital                   --
-- Taller 2	                             --
-- Com 2, grupo 5                        --
--                  1.                   --
-------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;

entity mi_mux is
    port (
        s : in std_logic; -- selector
        a : in std_logic;
        b : in std_logic;
        y : out std_logic;
    );
end mi_mux;

architecture Behavior of mi_mux is
begin
    with s select
        y <= a when '0',
        b when others;
end Behavior;