library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity D_FF_TB is
--  Port ( );
end D_FF_TB;

architecture Behavioral of D_FF_TB is

component D_FF is
    Port ( d : in STD_LOGIC;
           clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           q : out STD_LOGIC);
end component D_FF;

signal d_TB : std_logic;
signal clk_TB : std_logic;
signal reset_TB : std_logic;
signal q_TB : std_logic;
constant CP: time := 10 ns;

begin

uut: D_FF port map (d => d_TB, clk => clk_TB, reset => reset_TB, q => q_TB);

process
begin
clk_TB <= '1';
wait for CP / 2;
clk_TB <= '0';
wait for CP / 2;
end process;

process
begin
reset_TB <= '0';
wait for CP;
reset_TB <= '1';
wait;
end process;

process
begin
d_TB <= '1';
wait for CP;
d_TB <= '0';
wait for CP;
d_TB <= '1';
wait for CP;
d_TB <= '0';
wait for CP;
d_TB <= '1';
wait for CP;
d_TB <= '0';
wait for CP;
d_TB <= '1';
wait;
end process;

end Behavioral;
