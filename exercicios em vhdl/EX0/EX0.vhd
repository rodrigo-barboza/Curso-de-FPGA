LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY EX0 IS PORT (
	A: 		IN  STD_LOGIC_VECTOR (1 DOWNTO 0);
	B: 		IN  STD_LOGIC_VECTOR (1 DOWNTO 0);
	C: 		OUT STD_LOGIC_VECTOR (1 DOWNTO 0);
	OP_CODE: IN  STD_LOGIC_VECTOR (2 DOWNTO 0)
);
END EX0;

ARCHITECTURE EX0_HARDWARE OF EX0 IS BEGIN
	PROCESS (A, B, OP_CODE)BEGIN
		CASE OP_CODE IS
			WHEN "000" => C <= A + B;
			WHEN "001" => C <= A - B;
			WHEN "010" => C <= A AND B;
			WHEN "011" => C <= A OR B;
			WHEN "100" => C <= A XOR B;
			WHEN "101" => C <= NOT A;
			WHEN "111" => C <= NOT B;
			WHEN OTHERS => C <= "ZZ";
		END CASE;
	END PROCESS;
END EX0_HARDWARE;
