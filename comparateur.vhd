library ieee;
use ieee.std_logic_1164.all;

entity comparateur is
	port(
		touche : in std_logic_vector(3 downto 0);
		sortie : out std_logic;  
		ledR : out std_logic;
		ledV : out std_logic
	);
end comparateur;

architecture codage of comparateur is
	signal sortie_signal: std_logic := '0';
	signal code: STD_LOGIC_VECTOR(3 downto 0) := "0101";

begin
	sortie_signal <= '1' when touche = code else '0';
	sortie <= sortie_signal;

	ledR <= '1' when sortie_signal = '0' else '0';
	ledV <= '1' when sortie_signal = '1' else '0';
	
end codage;
