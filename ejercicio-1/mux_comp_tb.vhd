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
            s : in std_logic; -- selector
            a : in std_logic;
            b : in std_logic;
            y : out std_logic;
        );
    end component;

    -- entradas
    signal s : std_logic;
    signal a : std_logic;
    signal b : std_logic;
    -- salida
    signal y : std_logic;

begin
    -- unidad bajo prueba
    uut : mi_mux
    port map(s, a, b, y);

    -- casos de prueba
    process
    begin
        -- SELECTOR EN : 0
        -- caso 0
        s <= '0'; -- selector
        a <= '0';
        b <= '0';
        wait for 1 ns;
        assert y = '0' report "::: >>> Fallo caso 0 :::" severity
        failure;

        -- caso 1
        s <= '0'; -- selector
        a <= '0';
        b <= '1';
        wait for 1 ns;
        assert y = '0' report "::: >>> Fallo caso 1 :::" severity
        failure;

        -- caso 2
        s <= '0'; -- selector
        a <= '1';
        b <= '0';
        wait for 1 ns;
        assert y = '1' report "::: >>> Fallo caso 2 :::" severity
        failure;

        -- caso 3
        s <= '0'; -- selector
        a <= '1';
        b <= '1';
        wait for 1 ns;
        assert y = '1' report "::: >>> Fallo caso 3 :::" severity
        failure;

        -- ###
        -- SELECTOR EN : 1
        -- caso 4
        s <= '1'; -- selector
        a <= '0';
        b <= '0';
        wait for 1 ns;
        assert y = '0' report "::: >>> Fallo caso 4 :::" severity
        failure;

        -- caso 5
        s <= '1'; -- selector
        a <= '0';
        b <= '1';
        wait for 1 ns;
        assert y = '1' report "::: >>> Fallo caso 5 :::" severity
        failure;

        -- caso 6
        s <= '1'; -- selector
        a <= '1';
        b <= '0';
        wait for 1 ns;
        assert y = '0' report "::: >>> Fallo caso 6 :::" severity
        failure;

        -- caso 7
        s <= '1'; -- selector
        a <= '1';
        b <= '1';
        wait for 1 ns;
        assert y = '1' report "::: >>> Fallo caso 7 :::" severity
        failure;
        -- ###

        -- final
        assert false report "::: >>> SIMULACION OK <<< :::" severity
        note;
        wait;
    end process;
end Behavioral;