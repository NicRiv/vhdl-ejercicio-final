-------------------------------------------
-- Electrónica Digital                   --
-- Taller 2	                             --
-- Com 2, grupo 5                        --
--                  1.                   --
-------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;

entity mi_mux_t is
end mi_mux_t;

architecture Behavioral of mi_mux_t is
	-- llamando a la funcion mi_mux de design
    component mi_mux is
    	port (
    		i1	: in std_logic; -- selector
        	i2	: in std_logic;
        	i3	: in std_logic;
        	x	: out std_logic;
    	);
    end component;
    
    -- entradas
    signal i1 : std_logic;
    signal i2 : std_logic;
    signal i3 : std_logic;
    -- salida
    signal x : std_logic;
    
begin
	-- unidad bajo prueba
    uut: mi_mux
    	port map (
        	i1 => i1,
            i2 => i2,
            i3 => i3,
            x => x
        );
	
    -- casos de prueba
    process
    begin
    	-- SELECTOR EN : 0
    	-- caso 0
        i1 <= '0'; -- selector
        i2 <= '0';
        i3 <= '0';
        wait for 1 ns;
        assert x = '0' report "::: >>> Fallo caso 0 :::" severity
        failure;
        
        -- caso 1
        i1 <= '0'; -- selector
        i2 <= '0';
        i3 <= '1';
        wait for 1 ns;
        assert x = '0' report "::: >>> Fallo caso 1 :::" severity
        failure;
        
        -- caso 2
        i1 <= '0'; -- selector
        i2 <= '1';
        i3 <= '0';
        wait for 1 ns;
        assert x = '1' report "::: >>> Fallo caso 2 :::" severity
        failure;
        
        -- caso 3
        i1 <= '0'; -- selector
        i2 <= '1';
        i3 <= '1';
        wait for 1 ns;
        assert x = '1' report "::: >>> Fallo caso 3 :::" severity
        failure;
        
        -- ###
        -- SELECTOR EN : 1
        -- caso 4
        i1 <= '1'; -- selector
        i2 <= '0';
        i3 <= '0';
        wait for 1 ns;
        assert x = '0' report "::: >>> Fallo caso 4 :::" severity
        failure;
        
        -- caso 5
        i1 <= '1'; -- selector
        i2 <= '0';
        i3 <= '1';
        wait for 1 ns;
        assert x = '1' report "::: >>> Fallo caso 5 :::" severity
        failure;
        
        -- caso 6
        i1 <= '1'; -- selector
        i2 <= '1';
        i3 <= '0';
        wait for 1 ns;
        assert x = '0' report "::: >>> Fallo caso 6 :::" severity
        failure;
        
        -- caso 7
        i1 <= '1'; -- selector
        i2 <= '1';
        i3 <= '1';
        wait for 1 ns;
        assert x = '1' report "::: >>> Fallo caso 7 :::" severity
        failure;
        -- ###
        
        -- final
        assert false report "::: >>> SIMULACION OK <<< :::" severity
        note;
        wait;
    end process;
end Behavioral;