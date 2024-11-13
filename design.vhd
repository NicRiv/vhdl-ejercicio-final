------------------------------
--  Electrónica Digital     --
--  Taller 2                --
--  Com 2, grupo 5          --
--  ejercicio 1             --
------------------------------

library IEEE;
use IEEE.std_logic_1164.all;

entity design is
	port (
        -- compuerta OR
    	i1	: in    std_logic;
        i2	: in    std_logic;
        -- mux_1
        i3	: in    std_logic; -- selector
        i4	: in    std_logic;
        i5	: in    std_logic;
        -- mux_2
        i6	: in    std_logic; -- selector
        i7	: in    std_logic;
        i8	: in    std_logic;
        -- salida
        f	: out   std_logic;
    );
end design;

architecture Behavior of design is
    -- signal para el mux_3
    component mi_mux is
        port (
            s	: in std_logic; -- selector
            a	: in std_logic;
            b	: in std_logic;
            y	: out std_logic;
        );
    end component;

-- señales internas
signal y_or, y_mux1, y_mux2 : std_logic;

begin
    -- u0:
    -- Compuerta OR
    y_or <= i1 or i2;

    -- MUX 1
    u1: mi_mux port map (
        s   =>  i3,
        a   =>  i4,
        b   =>  i5,
        y   =>  y_mux1
    ); 

    -- MUX 2
    u2: mi_mux port map (
        s   =>  i6,
        a   =>  i7,
        b   =>  i8,
        y   =>  y_mux2
    );

    -- MUX 3
    u3: mi_mux port map (
        s   =>  y_or,
        a   =>  y_mux1,
        b   =>  y_mux2,
        y   =>  f
    );
end Behavior;