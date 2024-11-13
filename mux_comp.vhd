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
    	i1	: in std_logic; -- selector
        i2	: in std_logic;
        i3	: in std_logic;
        x	: out std_logic;
    );
end mi_mux;

architecture Behavior of mi_mux is
begin
	x <= 	i2 when i1 = '0' else
    		i3;
end Behavior;