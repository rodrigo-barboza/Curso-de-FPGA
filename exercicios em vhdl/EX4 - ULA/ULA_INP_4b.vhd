-- AUTOR: RODRIGO BARBOZA
-- DATA: 17/03/2020

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL; 						-- PARA FAZER SOMA OU SUBTRAÇÃO

ENTITY ULA_INP_4b IS PORT (
	SEL  : IN  STD_LOGIC_VECTOR (2 DOWNTO 0);
	A,B  : IN  STD_LOGIC_VECTOR (3 DOWNTO 0);
	OUTP : OUT STD_LOGIC_VECTOR (3 DOWNTO 0)
);
END ULA_INP_4b;

ARCHITECTURE ULA_INP_4b_HW OF ULA_INP_4b IS BEGIN
	PROCESS (A,B, SEL) BEGIN								-- ABRE UM PROCESS COM OS PARAMETROS DAS ENTRADAS A E B, COM OS BITS DE SELEÇÃO
		CASE SEL IS												-- CASO SELEÇÃO SEJA:
			WHEN "000" => OUTP <= A + B;					-- QUANDO FOR "000" MINHA SAIDA VAI RECEBER O SEGUINTE COMANDO
			WHEN "001" => OUTP <= A - B;					
			WHEN "010" => OUTP <= A AND B;
			WHEN "011" => OUTP <= A OR B;
			WHEN "100" => OUTP <= A XOR B;
			WHEN "101" => OUTP <= NOT A;
			WHEN "110" => OUTP <= NOT B;
			WHEN OTHERS => OUTP <= "ZZZZ";				-- CASO NÃO SEJA NENHUMA ANTERIOR, A MINHA SAÍDA RECEBE ALTA IMPEDÂNCIA
		END CASE;
	END PROCESS;
END ULA_INP_4b_HW;
