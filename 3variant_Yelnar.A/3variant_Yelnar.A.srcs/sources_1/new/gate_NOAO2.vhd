library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity gate_NOAO2 is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           C : in STD_LOGIC;
           D : in STD_LOGIC;
           Y : out STD_LOGIC);
end gate_NOAO2;

architecture Behavioral of gate_NOAO2 is
begin
    Y <= not (A or (B and (C or D)));
end Behavioral;