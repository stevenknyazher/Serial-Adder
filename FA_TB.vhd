library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FA_TB is
--  Port ( );
end FA_TB;

architecture Behavioral of FA_TB is

component FA is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           cin : in STD_LOGIC;
           s : out STD_LOGIC;
           cout : out STD_LOGIC);
end component FA;

signal a_TB : std_logic;
signal b_TB : std_logic;
signal cin_TB : std_logic;
signal s_TB : std_logic;
signal cout_TB : std_logic;

begin

uut: FA port map (a => a_TB, b => b_TB, cin => cin_TB, s => s_TB, cout => cout_TB);

process
begin
a_TB <= '0';
wait for 20 ns;
a_TB <= '1';
wait for 30 ns;
a_TB <= '0';
wait for 50 ns;
a_TB <= '1';
wait for 40 ns;
a_TB <= '0';
wait;
end process;

process
begin
b_TB <= '0';
wait for 30 ns;
b_TB <= '1';
wait for 50 ns;
b_TB <= '0';
wait for 20 ns;
b_TB <= '1';
wait for 40 ns;
b_TB <= '0';
wait;
end process;

process
begin
cin_TB <= '0';
wait for 10 ns;
cin_TB <= '1';
wait for 60 ns;
cin_TB <= '0';
wait for 30 ns;
cin_TB <= '1';
wait for 40 ns;
cin_TB <= '0';
wait;
end process;

end Behavioral;
