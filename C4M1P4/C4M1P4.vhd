library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;



entity C4M1P4 is
    Port (
        SW : in  STD_LOGIC_VECTOR (8 downto 0); -- Switches SW8-SW0
        LEDR : buffer STD_LOGIC_VECTOR (4 downto 0); -- Red LEDs LEDR4-LEDR0
        HEX1 : out STD_LOGIC_VECTOR (6 downto 0); -- 7-segment display for higher digit
        HEX0 : out STD_LOGIC_VECTOR (6 downto 0)  -- 7-segment display for lower digit
    );
end C4M1P4;

architecture Behavioral of C4M1P4 is

    -- Internal signals
    signal sum : STD_LOGIC_VECTOR (3 downto 0);
    signal carry_out : STD_LOGIC;
    signal bcd_sum : STD_LOGIC_VECTOR (3 downto 0);
    signal adjusted_sum : STD_LOGIC_VECTOR (3 downto 0);
    signal carry : STD_LOGIC;
    signal hex1_internal : STD_LOGIC_VECTOR (6 downto 0);
    signal hex0_internal : STD_LOGIC_VECTOR (6 downto 0);

    -- Component declarations
    component C4M1P2 is
        Port (
            SW : in  STD_LOGIC_VECTOR (3 downto 0);
            HEX1 : out STD_LOGIC_VECTOR (6 downto 0);
            HEX0 : out STD_LOGIC_VECTOR (6 downto 0)
        );
    end component;

    component C4M1P3 is
        Port (
            SW : in  STD_LOGIC_VECTOR (8 downto 0);
            LEDR : buffer STD_LOGIC_VECTOR (4 downto 0) 
        );
    end component;

begin

    -- Instantiate the ripple carry adder (C4M1P3)
    U1: C4M1P3 port map (
        SW => SW,
        LEDR => LEDR(4 downto 0)
    );

    -- Connect sum and carry_out from U1 to internal signals
    sum <= LEDR(3 downto 0);
    carry_out <= LEDR(4);

 -- BCD correction logic
	process(sum, carry_out)
	begin
		 if (unsigned(sum) > 9) then
			  adjusted_sum <= std_logic_vector(unsigned(sum) + 6); -- Correct BCD sum
			  carry <= '1';
		 else
			  adjusted_sum <= sum;
			  carry <= '0';
		 end if;
	end process;


    -- Prepare the 4-bit signal for BCD display (lower digit)
    bcd_sum <= adjusted_sum;

    -- Instantiate the BCD display logic (C4M1P2)
    U2: C4M1P2 port map (
        SW => bcd_sum,
        HEX1 => hex1_internal,
        HEX0 => hex0_internal
    );

    -- Assign corrected BCD sum to the output displays
    HEX0 <= hex0_internal;
    HEX1 <= (others => '0'); -- Assign this for the higher digit, modify as needed

end Behavioral;
