library ieee;
use ieee.std_logic_1164.all;

entity decode_clavier is
	port(
	col4 : in std_logic;
	col3 : in std_logic;
	col2 : in std_logic;
	col1 : in std_logic;
	
	lig4 : in std_logic;
	lig3 : in std_logic;
	lig2 : in std_logic;
	lig1 : in std_logic;
	
	touche : out std_logic_vector(3 downto 0)
	);
end decode_clavier;

architecture codage of decode_clavier is
signal temporaire: STD_LOGIC_VECTOR(7 downto 0);

begin

	temporaire <= col4 & col3 & col2 & col1 & lig4 & lig3 & lig2 & lig1;
	touche <= "0001" when temporaire = "00010001" else --1
				 "0100" when temporaire = "00010010" else --4
				 "0111" when temporaire = "00010100" else --7
				 "1010" when temporaire = "00011000" else --A
				 "0010" when temporaire = "00100001" else --2
				 "0101" when temporaire = "00100010" else --5
				 "1000" when temporaire = "00100100" else --8
				 "0000" when temporaire = "00101000" else --0
				 "0011" when temporaire = "01000001" else --3
				 "0110" when temporaire = "01000010" else --6
				 "1001" when temporaire = "01000100" else --9
				 "1011" when temporaire = "01001000" else --B
				 "1111" when temporaire = "10000001" else --F
				 "1110" when temporaire = "10000010" else --E
				 "1101" when temporaire = "10000100" else --D
				 "1100" when temporaire = "10001000" else --C
				 "0000" ;
end codage;		 