-------------------------------------------
-- Electrónica Digital                   --
-- Ejercicios complementarios            --
-- Com 2, grupo 5                        --
-- Ejercicio 2                           --
-------------------------------------------

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY FuncLog IS
    PORT(
        A  : IN  std_logic_vector(0 TO 0);  
        C  : IN  std_logic_vector(0 TO 0);  
        Z  : OUT std_logic_vector(0 TO 0)   
    );
END FuncLog;

ARCHITECTURE Behavioral OF FuncLog IS
BEGIN
    
    PROCESS(A, C)
    BEGIN
        IF (A = "1" AND C = "0") THEN
            Z(0) <= '0';   -- Cuando A es 1 y C es 0, Z es 0
        ELSE
            Z(0) <= '1';   -- En cualquier otro caso, Z es 1
        END IF;
    END PROCESS;
END Behavioral;
