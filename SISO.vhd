library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SISO is
    Port ( d : in STD_LOGIC;
           clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           q : out STD_LOGIC);
end SISO;

architecture Behavioral of SISO is

signal temp_sig: std_logic_vector(15 downto 0);
constant WIDTH: integer := 16;

begin

process(clk, reset)
begin
    if reset = '1' then
        temp_sig <= (others => '0');
    elsif rising_edge(clk) then
        for i in 0 to WIDTH - 2 loop
            temp_sig(i + 1) <= temp_sig(i);
        end loop;
        temp_sig(0) <= d;
    end if;
end process;

q <= temp_sig(WIDTH - 1);

end Behavioral;
