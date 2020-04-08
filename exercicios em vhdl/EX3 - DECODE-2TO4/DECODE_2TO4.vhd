-- AUTOR: RODRIGO BARBOZA
-- DATA: 17/03/2020

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY DECODE_2TO4 IS PORT (
	INPUT  :	IN  STD_LOGIC_VECTOR (1 DOWNTO 0);
	ENABLE :	IN  STD_LOGIC;
	OUTPUT :	OUT STD_LOGIC_VECTOR (3 DOWNTO 0)
);
END DECODE_2TO4;

ARCHITECTURE DECODE_2TO4_HW OF DECODE_2TO4 IS BEGIN
	PROCESS (INPUT, ENABLE) BEGIN						-- ABRE PROCESSO E COLOCA 2 PARÂMETROS (OBS: O QUE OCORRE DENTRO DO PROCESSO OCORRE DE FORMA SEQUENCIAL)
		OUTPUT <= "ZZZZ"; 								-- ALTA IMPEDÂNCIA
		IF (ENABLE = '1') THEN 							-- SE EN = 1
			CASE INPUT IS									-- CASO A ENTRADA (SEL) 
				WHEN   "00" => OUTPUT <= "0001";		-- FOR ESSA SEQUENCIA DE 2b
				WHEN   "01" => OUTPUT <= "0010";		-- A SAIDA VAI RECEBER A SEQUENCIA DE 4b
				WHEN   "10" => OUTPUT <= "0100";
				WHEN   "11" => OUTPUT <= "1000";
				WHEN OTHERS => OUTPUT <= "0000";		-- PARA OUTROS CASOS NÃO TABELADOS, A SAIDA RECEBE "0000"
			END CASE;										-- FECHAR CASE
		END IF;												-- FECHAR IF
	END PROCESS;											-- FECHAR PROCESSO
END DECODE_2TO4_HW;										-- FECHAR ARCHITECTURE
