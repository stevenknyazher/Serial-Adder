library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity sadder_TB is
--  Port ( );
end sadder_TB;

architecture Behavioral of sadder_TB is

component sadder is
    Port ( x, y, clk, reset : in std_logic;
           s : out std_logic);
end component sadder;

signal x_TB: std_logic;
signal y_TB: std_logic;
signal clk_TB: std_logic;
signal reset_TB: std_logic;
signal s_TB: std_logic;
constant CP: time := 10 ns;

begin

uut: sadder port map (x => x_TB, y => y_TB, clk => clk_TB, reset => reset_TB, s => s_TB);

process
begin
clk_TB <= '1';
wait for CP / 2;
clk_TB <= '0';
wait for CP / 2;
end process;

process
begin
reset_TB <= '1';
wait for CP;
reset_TB <= '0';
wait;
end process;

process
begin
x_TB <= '0';
wait for CP;
x_TB <= '1';
wait for CP;
x_TB <= '1';
wait for CP;
x_TB <= '0';
wait for CP;
x_TB <= '1';
wait for CP;
x_TB <= '1';
wait for CP;
x_TB <= '1';
wait for CP;
x_TB <= '1';
wait for CP;
x_TB <= '0';
wait for CP;
x_TB <= '0';
wait for CP;
x_TB <= '0';
wait for CP;
x_TB <= '0';
wait for CP;
x_TB <= '0';
wait for CP;
x_TB <= '1';
wait for CP;
x_TB <= '0';
wait for CP;
x_TB <= '1';
wait;
end process;

process
begin
y_TB <= '1';
wait for CP;
y_TB <= '1';
wait for CP;
y_TB <= '1';
wait for CP;
y_TB <= '1';
wait for CP;
y_TB <= '1';
wait for CP;
y_TB <= '1';
wait for CP;
y_TB <= '0';
wait for CP;
y_TB <= '0';
wait for CP;
y_TB <= '0';
wait for CP;
y_TB <= '0';
wait for CP;
y_TB <= '0';
wait for CP;
y_TB <= '0';
wait for CP;
y_TB <= '0';
wait for CP;
y_TB <= '1';
wait for CP;
y_TB <= '0';
wait for CP;
y_TB <= '1';
wait;
end process;

end Behavioral;
