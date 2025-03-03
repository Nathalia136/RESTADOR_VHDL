library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity test_restador is
    Port (
        x, y : in  STD_LOGIC_VECTOR(3 downto 0);  -- Entradas de 4 bits
        s : out std_LOGIC;
		  display0, display1, display2, display3 : out std_LOGIC_VECTOR(6 downto 0)
    );
end test_restador;

architecture arch_test_restador of test_restador is

	component restador 
		 Port (
        x, y : in  STD_LOGIC_VECTOR(3 downto 0);  -- Entradas de 4 bits
        M    : out STD_LOGIC_VECTOR(3 downto 0);    -- Salida: signo (1 bit) + magnitud (4 bits)
		  S    : out std_LOGIC
    );
	end component;
	
	component Des2 
		 Port (
			  entrada : in  STD_LOGIC_VECTOR (3 downto 0);  -- Entrada de 4 bits (0 a 15)
			  unidades : out STD_LOGIC_VECTOR (3 downto 0); -- Unidades en decimal (4 bits)
			  decenas : out STD_LOGIC_VECTOR (3 downto 0)   -- Decenas en decimal (4 bits)
		 );
	end component;
	
	component DECOD7 

		port
		(
			-- Input ports
			ABCD	: in  std_logic_vector(3 downto 0);


			-- Output ports
			DISPLAY	: out std_logic_vector(6 downto 0)
		);
	end component;

    signal x_minus_y, y_minus_x : STD_LOGIC_VECTOR(3 downto 0);
    signal m,u,d : STD_LOGIC_VECTOR(3 downto 0);
	 
begin
    
	 U0: restador port map(x,y,m,s);
	 U1: Des2 port map(m,u,d);
	 U2: DecOD7 port map(x,display0);
	 U3: DecOD7 port map(y,display1);
	 U4: DecOD7 port map(u,display2);
	 U5: DecOD7 port map(d,display3);
end arch_test_restador;