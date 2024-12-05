-- Jack Ditzel
-- Section: 11610

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ALUControl is 
    port (
        ALUOp : in std_logic_vector(1 downto 0);
        ir : in std_logic_vector(5 downto 0);
        opsel : out std_logic_vector(4 downto 0);
        hi_en : out std_logic;
        lo_en : out std_logic;
        alu_lo_hi : out std_logic_vector(1 downto 0)
    );
end ALUControl;

architecture bhv of ALUControl is
begin


end bhv;