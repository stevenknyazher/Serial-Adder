library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity sadder is
    Port ( x, y, clk, reset : in std_logic;
           s : out std_logic);
end sadder;

architecture Behavioral of sadder is

component SISO is
    Port ( d, clk, reset : in std_logic;
           q : out std_logic);
end component SISO;

component D_FF is
    Port ( d, clk, reset : in std_logic;
           q : out std_logic);
end component D_FF;

component FA is
    Port ( a, b, cin : in std_logic;
           s, cout : out std_logic);
end component FA;

signal start: integer := 16;
signal x_in, y_in, c_in, c_out, s_out: std_logic;

begin

s_in_x: SISO port map (d => x, q => x_in, clk => clk, reset => reset);
s_in_y: SISO port map (d => y, q => y_in, clk => clk, reset => reset);
FA_action: FA port map (a => x_in, b => y_in, cin => c_in, cout => c_out, s => s_out);
D_FF_action: D_FF port map (d => c_out, q => c_in, clk => clk, reset => reset);
s_out_s: SISO port map (d => s_out, q => s, clk => clk, reset => reset);

end Behavioral;
