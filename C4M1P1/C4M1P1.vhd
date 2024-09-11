library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- 实体定义
entity C4M1P1 is
    Port (
        SW : in  STD_LOGIC_VECTOR (7 downto 0);  -- 8个开关输入
        HEX0 : out STD_LOGIC_VECTOR (6 downto 0);  -- HEX0的7段显示输出
        HEX1 : out STD_LOGIC_VECTOR (6 downto 0)   -- HEX1的7段显示输出
    );
end C4M1P1;


architecture Behavioral of C4M1P1 is

    signal hex0_segments : STD_LOGIC_VECTOR (6 downto 0);
    signal hex1_segments : STD_LOGIC_VECTOR (6 downto 0);

begin

    -- Display logic for HEX0 (controlled by SW[3:0])
    process(SW(3 downto 0))
    begin
        case SW(3 downto 0) is
            when "0000" => hex0_segments <= "1000000"; -- 0
            when "0001" => hex0_segments <= "1111001"; -- 1
            when "0010" => hex0_segments <= "0100100"; -- 2
            when "0011" => hex0_segments <= "0110000"; -- 3
            when "0100" => hex0_segments <= "0011001"; -- 4
            when "0101" => hex0_segments <= "0010010"; -- 5
            when "0110" => hex0_segments <= "0000010"; -- 6
            when "0111" => hex0_segments <= "1111000"; -- 7
            when "1000" => hex0_segments <= "0000000"; -- 8
            when "1001" => hex0_segments <= "0010000"; -- 9
            when others => hex0_segments <= "1111111"; -- Don't care (all segments off)
        end case;
    end process;

    -- Display logic for HEX1 (controlled by SW(7:4))
    process(SW(7 downto 4))
    begin
        case SW(7 downto 4) is
            when "0000" => hex1_segments <= "1000000"; -- 0
            when "0001" => hex1_segments <= "1111001"; -- 1
            when "0010" => hex1_segments <= "0100100"; -- 2
            when "0011" => hex1_segments <= "0110000"; -- 3
            when "0100" => hex1_segments <= "0011001"; -- 4
            when "0101" => hex1_segments <= "0010010"; -- 5
            when "0110" => hex1_segments <= "0000010"; -- 6
            when "0111" => hex1_segments <= "1111000"; -- 7
            when "1000" => hex1_segments <= "0000000"; -- 8
            when "1001" => hex1_segments <= "0010000"; -- 9
            when others => hex1_segments <= "1111111"; -- Don't care (all segments off)
        end case;
    end process;

    -- Assign the segments to the outputs
    HEX0 <= hex0_segments;
    HEX1 <= hex1_segments;

end Behavioral;
