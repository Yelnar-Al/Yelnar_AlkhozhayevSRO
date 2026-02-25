library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity top_circuit is
    Port ( x1 : in STD_LOGIC;
           x2 : in STD_LOGIC;
           x3 : in STD_LOGIC;
           x4 : in STD_LOGIC;
           y1 : out STD_LOGIC;
           y2 : out STD_LOGIC;
           y3 : out STD_LOGIC;
           y4 : out STD_LOGIC);
end top_circuit;

architecture Structural of top_circuit is

    signal sig_n1, sig_n2, sig_n3, sig_n4, sig_n5, sig_n6, sig_n7, sig_n8 : STD_LOGIC;
    signal sig_na2_1, sig_na2_2 : STD_LOGIC;
    signal sig_na3_1 : STD_LOGIC;
    signal sig_nao3_1, sig_nao3_2, sig_nao3_3 : STD_LOGIC;
    signal sig_naoa2_1 : STD_LOGIC;
    signal sig_noao2_1 : STD_LOGIC;
    signal sig_o2 : STD_LOGIC;

begin

    U_N4      : entity work.gate_N     port map (A => x1, Y => sig_n4);
    U_N6      : entity work.gate_N     port map (A => x2, Y => sig_n6);
    U_N7      : entity work.gate_N     port map (A => x3, Y => sig_n7);
    U_N8      : entity work.gate_N     port map (A => x4, Y => sig_n8);
    U_O2_1    : entity work.gate_O2    port map (A => x3, B => x1, Y => sig_o2);
    U_NAOA2_1 : entity work.gate_NAOA2 port map (A => sig_n8, B => x3, C => x2, D => x1, Y => sig_naoa2_1);
    U_NA3_1   : entity work.gate_NA3   port map (A => x2, B => sig_n7, C => x4, Y => sig_na3_1);

    U_NAO3_3 : entity work.gate_NAO3 port map (A => sig_na3_1, B => sig_n4, C => sig_n7, D => x4, Y => sig_nao3_3);

    U_N5 : entity work.gate_N port map (A => sig_nao3_3, Y => sig_n5);

    U_NA2_2   : entity work.gate_NA2   port map (A => x4, B => sig_n5, Y => sig_na2_2);
    
    U_NOAO2_1 : entity work.gate_NOAO2 port map (A => sig_na2_2, B => sig_n6, C => x3, D => x1, Y => sig_noao2_1);
    
    U_N1      : entity work.gate_N     port map (A => sig_noao2_1, Y => sig_n1); 
    
    U_N2      : entity work.gate_N     port map (A => sig_n1, Y => sig_n2);
    U_N3      : entity work.gate_N     port map (A => sig_n1, Y => sig_n3);
    
    U_NA2_1   : entity work.gate_NA2   port map (A => x1, B => sig_n3, Y => sig_na2_1);

    U_NAO3_1 : entity work.gate_NAO3 port map (A => sig_na2_1, B => sig_n6, C => x4, D => x1, Y => sig_nao3_1);
    
    U_NAO3_2 : entity work.gate_NAO3 port map (A => sig_naoa2_1, B => sig_o2, C => sig_nao3_1, D => sig_n2, Y => sig_nao3_2);

    y1 <= sig_nao3_3;
    y2 <= sig_noao2_1;
    y3 <= sig_nao3_1;
    y4 <= sig_nao3_2;

end Structural;