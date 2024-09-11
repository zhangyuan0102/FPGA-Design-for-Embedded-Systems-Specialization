library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity C4M1P2 is
    Port (
        SW : in  STD_LOGIC_VECTOR (3 downto 0);  -- 4位输入，二进制数V
        HEX1 : out STD_LOGIC_VECTOR (6 downto 0);  -- 十进制高位显示
        HEX0 : out STD_LOGIC_VECTOR (6 downto 0)   -- 十进制低位显示
    );
end C4M1P2;

architecture Behavioral of C4M1P2 is

    -- 定义信号
    signal V : STD_LOGIC_VECTOR (3 downto 0);  -- V 信号，用于考察
    signal z : STD_LOGIC;
    signal A : STD_LOGIC_VECTOR (3 downto 0);
    signal d0_segments : STD_LOGIC_VECTOR (6 downto 0);
    signal d1_segments : STD_LOGIC_VECTOR (6 downto 0);

begin

    -- 将 SW 赋值给 V
    V <= SW;

    -- 设计比较器
    z <= V(3) and (V(2) or V(1));

    -- 设计电路 A，根据 V>9 的情况
    A(3) <= '0';
    A(2) <= V(3) and not V(2);
    A(1) <= V(1);
    A(0) <= V(0) and not V(1);

    -- 设计2-to-1多路复用器，输出十进制的个位数
    d0_segments <= "1000000" when z = '0' and V = "0000" else
                   "1111001" when z = '0' and V = "0001" else
                   "0100100" when z = '0' and V = "0010" else
                   "0110000" when z = '0' and V = "0011" else
                   "0011001" when z = '0' and V = "0100" else
                   "0010010" when z = '0' and V = "0101" else
                   "0000010" when z = '0' and V = "0110" else
                   "1111000" when z = '0' and V = "0111" else
                   "0000000" when z = '0' and V = "1000" else
                   "0010000" when z = '0' and V = "1001" else
                   "1000000" when z = '1' and A = "0000" else
                   "1111001" when z = '1' and A = "0001" else
                   "0100100" when z = '1' and A = "0010" else
                   "0110000" when z = '1' and A = "0011" else
                   "0011001" when z = '1' and A = "0100" else
                   "1111111"; -- 不使用的情况

    -- 设计十进制高位显示（d1）
    d1_segments <= "1111110" when z = '0' else
                   "1111001" when z = '1';

    -- 分配输出
    HEX0 <= d0_segments;
    HEX1 <= d1_segments;

end Behavioral;



