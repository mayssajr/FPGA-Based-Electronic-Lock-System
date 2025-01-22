library ieee;
use ieee.std_logic_1164.all;

entity segments is
    port(
        touche : in std_logic_vector(3 downto 0); 
        a : out std_logic; 
        b : out std_logic; 
        c : out std_logic; 
        d : out std_logic; 
        e : out std_logic; 
        f : out std_logic; 
        g : out std_logic  
    );
end segments;

architecture codage of segments is
begin
    process(touche)
    begin
        case touche is
            when "0000" => -- 0
                a <= '0'; b <= '0'; c <= '0'; d <= '0'; e <= '0'; f <= '0'; g <= '1';
            when "0001" => -- 1
                a <= '1'; b <= '0'; c <= '0'; d <= '1'; e <= '1'; f <= '1'; g <= '1';
            when "0010" => -- 2
                a <= '0'; b <= '0'; c <= '1'; d <= '0'; e <= '0'; f <= '1'; g <= '0';
            when "0011" => -- 3
                a <= '0'; b <= '0'; c <= '0'; d <= '0'; e <= '1'; f <= '1'; g <= '0';
            when "0100" => -- 4
                a <= '1'; b <= '0'; c <= '0'; d <= '1'; e <= '1'; f <= '0'; g <= '0';
            when "0101" => -- 5
                a <= '0'; b <= '1'; c <= '0'; d <= '0'; e <= '1'; f <= '0'; g <= '0';
            when "0110" => -- 6
                a <= '0'; b <= '1'; c <= '0'; d <= '0'; e <= '0'; f <= '0'; g <= '0';
            when "0111" => -- 7
                a <= '0'; b <= '0'; c <= '0'; d <= '1'; e <= '1'; f <= '1'; g <= '1';
            when "1000" => -- 8
                a <= '0'; b <= '0'; c <= '0'; d <= '0'; e <= '0'; f <= '0'; g <= '0';
            when "1001" => -- 9
                a <= '0'; b <= '0'; c <= '0'; d <= '0'; e <= '1'; f <= '0'; g <= '0';
            when "1010" => -- A
                a <= '0'; b <= '0'; c <= '0'; d <= '1'; e <= '0'; f <= '0'; g <= '0';
            when "1011" => -- B
                a <= '1'; b <= '1'; c <= '0'; d <= '0'; e <= '0'; f <= '0'; g <= '0';
            when "1100" => -- C
                a <= '0'; b <= '1'; c <= '1'; d <= '0'; e <= '0'; f <= '0'; g <= '1';
            when "1101" => -- D
                a <= '1'; b <= '0'; c <= '0'; d <= '0'; e <= '0'; f <= '1'; g <= '0';
            when "1110" => -- E
                a <= '0'; b <= '1'; c <= '1'; d <= '0'; e <= '0'; f <= '0'; g <= '0';
            when "1111" => -- F
                a <= '0'; b <= '1'; c <= '1'; d <= '1'; e <= '0'; f <= '0'; g <= '0';
            when others => -- Éteindre tous les segments en cas d'entrée invalide
                a <= '1'; b <= '1'; c <= '1'; d <= '1';
                e <= '1'; f <= '1'; g <= '1';
        end case;
    end process;
end codage;
