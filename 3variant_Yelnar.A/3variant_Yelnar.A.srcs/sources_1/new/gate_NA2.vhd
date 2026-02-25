library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity gate_NA2 is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           Y : out STD_LOGIC);
end gate_NA2;

architecture Behavioral of gate_NA2 is
begin
    Y <= not (A and B);
end Behavioral;