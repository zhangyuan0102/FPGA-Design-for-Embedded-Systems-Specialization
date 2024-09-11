library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity C4M1P2 is
    Port (
        SW : in  STD_LOGIC_VECTOR (3 downto 0);  -- 4位输入
        HEX1 : out STD_LOGIC_VECTOR (6 downto 0);  -- 十位
        HEX0 : out STD_LOGIC_VECTOR (6 downto 0)   -- 个位
    );
end C4M1P2;

architecture Behavioral of C4M1P2 is

    signal z : STD_LOGIC;
    signal A, d0 : STD_LOGIC_VECTOR (3 downto 0);

    signal d0_segments : STD_LOGIC_VECTOR (6 downto 0);
    signal d1_segments : STD_LOGIC_VECTOR (6 downto 0);

begin

    -- 实例化比较器
    comparator_inst: entity work.Comparator
        port map (
            V => SW,
            z => z
        );

    -- 实例化电路 A
    circuitA_inst: entity work.CircuitA
        port map (
            V => SW,
            A => A
        );

    -- 实例化多路复用器
    mux_inst: entity work.Multiplexer
        port map (
            V => SW,
            A => A,
            z => z,
            d0 => d0
        );

    -- 使用 d0 和 z 生成 7 段显示器的输出
    d0_segments <= "1000000" when d0 = "0000" else
                   "1111001" when d0 = "0001" else
                   "0100100" when d0 = "0010" else
                   "0110000" when d0 = "0011" else
                   "0011001" when d0 = "0100" else
                   "0010010" when d0 = "0101" else
                   "0000010" when d0 = "0110" else
                   "1111000" when d0 = "0111" else
                   "0000000" when d0 = "1000" else
                   "0010000" when d0 = "1001" else
                   "1111111"; -- 不使用的情况

    d1_segments <= "1111110" when z = '0' else
                   "1111001" when z = '1';

    -- 分配输出
    HEX0 <= d0_segments;
    HEX1 <= d1_segments;

end Behavioral;

