-- Jack Ditzel
-- Section: 11610

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Reg is
    generic (
        WIDTH : integer := 8
    );
    port (
        clk : in std_logic;                            
        rst : in std_logic;                              
        en  : in std_logic;                             
        d   : in std_logic_vector(WIDTH-1 downto 0);  
        q   : out std_logic_vector(WIDTH-1 downto 0) 
    );
end Reg;

architecture bhv of Reg is
begin
    process (clk, rst, en)
    begin
        if rst = '1' then
            q <= (others => '0');
        elsif rising_edge(clk) and en = '1' then
            q <= d;
        end if;
    end process;
end bhv;
