-- Jack Ditzel
-- Section: 11610

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Datapath is
    port (
        PCWriteCond : in std_logic;
        PCWrite : in std_logic; 
        IorD : in std_logic; 
        MemRead : in std_logic; 
        MemWrite : in std_logic; 
        MemToReg : in std_logic; 
        IRWrite : in std_logic; 
        JumpAndLink : in std_logic; 
        IsSigned : in std_logic; 
        PCSource : in std_logic; 
        ALUOp : in std_logic; 
        ALUSrcB : in std_logic; 
        ALUSrcA : in std_logic; 
        RegWrite : in std_logic; 
        RegDst : in std_logic;
        inport0_in: in std_logic_vector(31 downto 0);
        inport0_en: in std_logic;
        inport1_in: in std_logic_vector(31 downto 0);
        inport1_en: in std_logic;
        outport:    out std_logic_vector(31 downto 0)
    );
end Datapath;

architecture str of Datapath is

begin


end str;

-- Zero Extend Entity
entity ZeroExtend is
    port (

    );
end ZeroExtend;

architecture bhv of ZeroExtend is
begin

end bhv;

-- Sign Extend Entity
entity SignExtend is
    port (

    );
end SignExtend;

architecture bhv of SignExtend is
begin
    
end bhv;

-- Shift Left Entity
entity ShiftLeft is
    port (

    );
end ShiftLeft;

architecture bhv of ShiftLeft is
begin
        
end bhv;

-- ALU Control
entity ALUControl is
    port (

    );
end ALUControl;

architecture bhv of ALUControl is
    begin
            
end bhv;

-- Concat Entity
entity Concat is
    port (

    );
end Concat;

architecture bhv of Concat is
begin
            
end bhv;