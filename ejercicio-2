-------------------------------------------
-- Electrónica Digital                   --
-- Ejercicios complementarios            --
-- Com 2, grupo 5                        --
-- Ejercicio 2                           --
-------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;

entity FuncLog_tb is
end FuncLog_tb;

architecture rtl of FuncLog_tb is 
   
    constant N : integer := 1;  
    
    -- Declaro componente a probar
    component FuncLog
        PORT(
            A  : IN  std_logic_vector(N-1 downto 0);
            C  : IN  std_logic_vector(N-1 downto 0);
            Z  : OUT std_logic_vector(N-1 downto 0)
        );
    end component;

    -- Entradas
    signal test_A : std_logic_vector(N-1 downto 0) := (others => '0');
    signal test_C : std_logic_vector(N-1 downto 0) := (others => '0');

    -- Salida
    signal test_Z : std_logic_vector(N-1 downto 0);

begin
    -- Instanciación
    uut: FuncLog 
        port map(
            A => test_A,
            C => test_C,
            Z => test_Z
        );

    process
    begin
        -- caso 1: A=0, C=0 -> Z debe ser 1
        test_A <= "0";
        test_C <= "0";
        wait for 1 ns;
        assert test_Z(0) = '1' report "Fallo caso 1: A=0, C=0" severity failure;

        -- caso 2: A=1, C=0 -> Z debe ser 0
        test_A <= "1";
        test_C <= "0";
        wait for 1 ns;
        assert test_Z(0) = '0' report "Fallo caso 2: A=1, C=0" severity failure;

        -- caso 3: A=0, C=1 -> Z debe ser 1
        test_A <= "0";
        test_C <= "1";
        wait for 1 ns;
        assert test_Z(0) = '1' report "Fallo caso 3: A=0, C=1" severity failure;

        -- caso 4: A=1, C=1 -> Z debe ser 1
        test_A <= "1";
        test_C <= "1";
        wait for 1 ns;
        assert test_Z(0) = '1' report "Fallo caso 4: A=1, C=1" severity failure;

        -- Fin 
        assert false report "Simulación completada correctamente" severity note;
        wait;
    end process;
end rtl;
