library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity gate_NAOA2 is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           C : in STD_LOGIC;
           D : in STD_LOGIC;
           Y : out STD_LOGIC);
end gate_NAOA2;

architecture Behavioral of gate_NAOA2 is
begin
    Y <= not (A and (B or (C and D)));
end Behavioral;