-- Jack Ditzel
-- Section: 11610

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Mux2to1 is
    port (
        a   : in std_logic;
        b   : in std_logic;
        sel : in std_logic;
        y   : out std_logic
    );
end Mux2to1;

architecture bhv of Mux2to1 is
begin
    y <= a when sel = '0' else b;
end bhv;

entity Mux3to1 is
    port (
        a   : in std_logic;
        b   : in std_logic;
        c   : in std_logic;
        sel : in std_logic_vector(1 downto 0);
        y   : out std_logic
    );
end Mux3to1;

architecture bhv of Mux3to1 is
begin
    y <= a when sel = "00" else
         b when sel = "01" else
         c;
end bhv;

entity Mux4to1 is
    port (
        a   : in std_logic;
        b   : in std_logic;
        c   : in std_logic;
        d   : in std_logic;
        sel : in std_logic_vector(1 downto 0);
        y   : out std_logic
    );
end Mux4to1;

architecture bhv of Mux4to1 is
begin
    y <= a when sel = "00" else
         b when sel = "01" else
         c when sel = "10" else
         d;
end bhv;