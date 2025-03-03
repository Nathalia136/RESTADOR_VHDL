library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity restador is
    Port (
        x, y : in  STD_LOGIC_VECTOR(3 downto 0);  -- Entradas de 4 bits
        M    : out STD_LOGIC_VECTOR(3 downto 0);    -- Salida: signo (1 bit) + magnitud (4 bits)
		  S    : out std_LOGIC
    );
end restador;

architecture arch_restador of restador is
    signal x_minus_y, y_minus_x : STD_LOGIC_VECTOR(3 downto 0);
    signal sign : STD_LOGIC;
    signal magnitude : STD_LOGIC_VECTOR(3 downto 0);
begin
    -- Cálculo en paralelo de x - y y y - x
    x_minus_y <= x - y;
    y_minus_x <= y - x;

    -- Proceso para determinar el signo de D
    process(x, y)
    begin
        if x < y then
            sign <= '1';  -- Negativo
        else
            sign <= '0';  -- Positivo
        end if;
    end process;

    -- Proceso para seleccionar la magnitud de D
    process(sign, x_minus_y, y_minus_x)
    begin
        if sign = '1' then
            magnitude <= y_minus_x;  -- Usar y - x si x < y
        else
            magnitude <= x_minus_y;  -- Usar x - y si x >= y
        end if;
    end process;

    -- Asignar la salida en formato de signo y magnitud
    M <= magnitude;
	 S <= sign;
end arch_restador;