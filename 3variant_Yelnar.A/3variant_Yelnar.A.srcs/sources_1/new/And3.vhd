library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity gate_N is
    Port ( A : in STD_LOGIC;
           Y : out STD_LOGIC);
end gate_N;

architecture Behavioral of gate_N is
begin
    Y <= A and B and C;
end Behavioral;