library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity gate_NA3 is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           C : in STD_LOGIC;
           Y : out STD_LOGIC);
end gate_NA3;

architecture Behavioral of gate_NA3 is
begin
    Y <= not (A and B and C);
end Behavioral;