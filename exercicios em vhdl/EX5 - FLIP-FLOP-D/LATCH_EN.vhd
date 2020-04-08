LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY LATCH_EN IS PORT (
	INP_D  : IN  STD_LOGIC;
	CLK	 : IN  STD_LOGIC;
	OUT_Q  : OUT STD_LOGIC;
	OUT_QB : OUT STD_LOGIC
);
END LATCH_EN;

ARCHITECTURE LATCH_EN_HW OF LATCH_EN IS
	SIGNAL DATA : STD_LOGIC;
BEGIN
	DATA   <= INP_D WHEN (CLK = '1') ELSE INP_D; 
	OUT_Q  <= DATA;
	OUT_QB <= NOT DATA;
END LATCH_EN_HW;