
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity BCD_Adder is
    Port (
        SW    : in  STD_LOGIC_VECTOR (8 downto 0); -- Switches SW8-SW0
        LEDR  : out STD_LOGIC_VECTOR (9 downto 0); -- Red LEDs LEDR9-LEDR0
        HEX5  : out STD_LOGIC_VECTOR (6 downto 0); -- 7-segment display for X
        HEX3  : out STD_LOGIC_VECTOR (6 downto 0); -- 7-segment display for Y
        HEX1  : out STD_LOGIC_VECTOR (6 downto 0); -- 7-segment display for S1
        HEX0  : out STD_LOGIC_VECTOR (6 downto 0)  -- 7-segment display for S0
    );
end BCD_Adder;

architecture Behavioral of BCD_Adder is

    signal X, Y : STD_LOGIC_VECTOR (3 downto 0);
    signal cin  : STD_LOGIC;
    signal Sum  : STD_LOGIC_VECTOR (4 downto 0); -- 4-bit sum + carry-out
    signal S1, S0 : STD_LOGIC_VECTOR (3 downto 0);
    signal adjust : STD_LOGIC;

begin

    -- Assign inputs
    X   <= SW(7 downto 4);
    Y   <= SW(3 downto 0);
    cin <= SW(8);

    -- Perform addition
    Sum <= ('0' & X) + ('0' & Y) + (cin & "0000");

    -- Check for sum > 9 and set the adjustment signal
    adjust <= '1' when (Sum > "01001") else '0';

    -- Adjust sum for BCD
    S0 <= Sum(3 downto 0) + "0110" when adjust = '1' else Sum(3 downto 0);
    S1 <= "0000" when adjust = '0' else "0001"; -- Carry into S1 if adjusted

    -- Error checking for invalid BCD inputs
    LEDR(9) <= '1' when (X > "1001") or (Y > "1001") else '0';

    -- Display results on HEX displays
    LEDR(3 downto 0) <= S0;
    LEDR(4) <= Sum(4);
    
    -- Assign 7-segment display outputs for X (on HEX5)
    HEX5 <= "1000000" when X = "0000" else -- Display 0
            "1111001" when X = "0001" else -- Display 1
            "0100100" when X = "0010" else -- Display 2
            "0110000" when X = "0011" else -- Display 3
            "0011001" when X = "0100" else -- Display 4
            "0010010" when X = "0101" else -- Display 5
            "0000010" when X = "0110" else -- Display 6
            "1111000" when X = "0111" else -- Display 7
            "0000000" when X = "1000" else -- Display 8
            "0010000" when X = "1001" else -- Display 9
            "1111111"; -- Default blank display

    -- Assign 7-segment display outputs for Y (on HEX3)
    HEX3 <= "1000000" when Y = "0000" else -- Display 0
            "1111001" when Y = "0001" else -- Display 1
            "0100100" when Y = "0010" else -- Display 2
            "0110000" when Y = "0011" else -- Display 3
            "0011001" when Y = "0100" else -- Display 4
            "0010010" when Y = "0101" else -- Display 5
            "0000010" when Y = "0110" else -- Display 6
            "1111000" when Y = "0111" else -- Display 7
            "0000000" when Y = "1000" else -- Display 8
            "0010000" when Y = "1001" else -- Display 9
            "1111111"; -- Default blank display

    -- Assign 7-segment display outputs for S1 (on HEX1)
    HEX1 <= "1000000" when S1 = "0000" else -- Display 0
            "1111001" when S1 = "0001" else -- Display 1
            "0100100" when S1 = "0010" else -- Display 2
            "0110000" when S1 = "0011" else -- Display 3
            "0011001" when S1 = "0100" else -- Display 4
            "0010010" when S1 = "0101" else -- Display 5
            "0000010" when S1 = "0110" else -- Display 6
            "1111000" when S1 = "0111" else -- Display 7
            "0000000" when S1 = "1000" else -- Display 8
            "0010000" when S1 = "1001" else -- Display 9
            "1111111"; -- Default blank display

    -- Assign 7-segment display outputs for S0 (on HEX0)
    HEX0 <= "1000000" when S0 = "0000" else -- Display 0
            "1111001" when S0 = "0001" else -- Display 1
            "0100100" when S0 = "0010" else -- Display 2
            "0110000" when S0 = "0011" else -- Display 3
            "0011001" when S0 = "0100" else -- Display 4
            "0010010" when S0 = "0101" else -- Display 5
            "0000010" when S0 = "0110" else -- Display 6
            "1111000" when S0 = "0111" else -- Display 7
            "0000000" when S0 = "1000" else -- Display 8
            "0010000" when S0 = "1001" else -- Display 9
            "1111111"; -- Default blank display

end Behavioral;



