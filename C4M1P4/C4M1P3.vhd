
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


-- Full Adder entity and architecture
entity full_adder is
    Port ( 
           a  : in  STD_LOGIC;
           b  : in  STD_LOGIC;
           ci : in  STD_LOGIC;
           s  : out STD_LOGIC;
           co : out STD_LOGIC
    );
end full_adder;

architecture Behavioral of full_adder is
begin
    s  <= a XOR b XOR ci;
    co <= (a AND b) OR (b AND ci) OR (ci AND a);
end Behavioral;



library ieee;
use ieee.std_logic_1164.all;

-- Ripple Carry Adder entity
entity C4M1P3 is
    Port ( 
           SW   : in  STD_LOGIC_VECTOR (8 downto 0); -- Switches SW8-SW0
           LEDR : buffer STD_LOGIC_VECTOR (4 downto 0)  -- Red LEDs LEDR4-LEDR0
    );
end C4M1P3;

-- Ripple Carry Adder architecture
architecture Behavioral of C4M1P3 is

    -- Full Adder component declaration
    component full_adder is
        Port ( 
               a  : in  STD_LOGIC;
               b  : in  STD_LOGIC;
               ci : in  STD_LOGIC;
               s  : out STD_LOGIC;
               co : out STD_LOGIC
        );
    end component;

    -- Internal signals for ripple_carry_adder
    signal A, B : STD_LOGIC_VECTOR (3 downto 0); 
    signal cin  : STD_LOGIC;
    signal S    : STD_LOGIC_VECTOR (3 downto 0); 
    signal cout : STD_LOGIC;
    signal C    : STD_LOGIC_VECTOR (4 downto 0); 

begin
    -- Assign the inputs
    A   <= SW(7 downto 4); 
    B   <= SW(3 downto 0); 
    cin <= SW(8);          

    -- Assign the input carry to the first carry bit
    C(0) <= cin;

    -- Instantiate four full adders
    FA0: full_adder port map (a => A(0), b => B(0), ci => C(0), s => S(0), co => C(1));
    FA1: full_adder port map (a => A(1), b => B(1), ci => C(1), s => S(1), co => C(2));
    FA2: full_adder port map (a => A(2), b => B(2), ci => C(2), s => S(2), co => C(3));
    FA3: full_adder port map (a => A(3), b => B(3), ci => C(3), s => S(3), co => C(4));

    -- Assign the outputs
    LEDR(3 downto 0) <= S;   
    LEDR(4) <= C(4);         

end Behavioral;


