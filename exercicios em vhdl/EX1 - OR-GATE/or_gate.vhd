-- AUTOR: RODRIGO BARBOZA
-- DATA: 18/03/2020

-- declaração do uso das bibliotecas do IEEE
library IEEE;
-- uso da biblioteca std_logic_1164 do IEEE, todas as funções
use IEEE.std_logic_1164.all;

-- declaração da minha entidade, com as entradas e saidas.
entity or_gate is port(

	g_portA:  in  std_logic;
	g_portB:  in  std_logic;
	g_portC:  in  std_logic;
	g_portD: out  std_logic
	
);

end or_gate;

-- declaração da lógica do meu hardware
architecture or_gate_hard of or_gate is 

	signal out_g1: std_logic;
	signal out_g2: std_logic;
	signal out_g3: std_logic;

begin

	 out_g1 <= (NOT g_portB) AND (NOT g_portC);
	 out_g2 <= g_portA AND (NOT g_portC);
	 out_g3 <= (NOT g_portA) AND (NOT g_portB);
	g_portD <= out_g1 OR out_g2 OR out_g3;
	
end or_gate_hard;
