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

-- Datapath structural architecture
architecture str of Datapath is

    component ZeroExtend is
        port (
            switches : in std_logic_vector(9 downto 0);
            inport : out std_logic_vector(31 downto 0)
        );
    end component;

    component SignExtend is
        port (
            input : in std_logic_vector(15 downto 0);
            is_signed : in std_logic;
            output : out std_logic_vector(31 downto 0)
        );
    end component;

    component ShiftLeft is
        port (
            input : in std_logic_vector(31 downto 0);
            output : out std_logic_vector(31 downto 0)
        );
    end component;

    component ALUControl is
        port (
            ir : in std_logic_vector(5 downto 0);
            alu_op : in std_logic;
            opsel : out std_logic_vector(4 downto 0);
            alu_lo_hi : out std_logic_vector(1 downto 0);
            hi_en : out std_logic;
            lo_en : out std_logic
        );
    end component;

    component Concat is
        port (
            input : in std_logic_vector(27 downto 0);
            pc : in std_logic_vector(3 downto 0);
            output : out std_logic_vector(31 downto 0)
        );
    end component;

    component Memory is
        port (
            clk : in std_logic;
            baddr : in std_logic_vector(31 downto 0);
            data_in : in std_logic_vector(31 downto 0);
            mem_read : in std_logic;
            mem_write : in std_logic;
            data_out : out std_logic_vector(31 downto 0);
            inport0_in : in std_logic_vector(31 downto 0);
            inport0_en : in std_logic;
            inport1_in : in std_logic_vector(31 downto 0);
            inport1_en : in std_logic;
            outport : out std_logic_vector(31 downto 0)
        );
    end component;

    component Mux2to1 is
        port (
            a : in std_logic;
            b : in std_logic;
            sel : in std_logic;
            y : out std_logic
        );
    end component;

    component Mux3to1 is
        port (
            a : in std_logic;
            b : in std_logic;
            c : in std_logic;
            sel : in std_logic_vector(1 downto 0);
            y : out std_logic
        );
    end component;

    component Mux4to1 is
        port (
            a : in std_logic;
            b : in std_logic;
            c : in std_logic;
            d : in std_logic;
            sel : in std_logic_vector(1 downto 0);
            y : out std_logic
        );
    end component;

    component Reg is
        generic (
            WIDTH : integer := 8
        );
        port (
            clk : in std_logic;
            rst : in std_logic;
            en : in std_logic;
            d : in std_logic_vector(WIDTH-1 downto 0);
            q : out std_logic_vector(WIDTH-1 downto 0)
        );
    end component;

    component ALU is
        port (
            a : in std_logic_vector(31 downto 0);
            b : in std_logic_vector(31 downto 0);
            opsel : in std_logic_vector(4 downto 0);
            shamt : in std_logic_vector(4 downto 0);
            result : out std_logic_vector(31 downto 0);
            result_hi : out std_logic_vector(31 downto 0);
            branch_taken : out std_logic
        );
    end component;
begin

end str;

















-- Zero Extend Entity
entity ZeroExtend is
    port (
        switches : in std_logic_vector(9 downto 0);
        inport : out std_logic_vector(31 downto 0);
    );
end ZeroExtend;

architecture bhv of ZeroExtend is
begin

end bhv;

-- Sign Extend Entity
entity SignExtend is
    port (
        input : in std_logic_vector(15 downto 0);
        is_signed : in std_logic;
        output : out std_logic_vector(31 downto 0);
    );
end SignExtend;

architecture bhv of SignExtend is
begin
    
end bhv;

-- Shift Left Entity
entity ShiftLeft is
    port (
        input : in std_logic_vector(31 downto 0);
        output : out std_logic_vector(31 downto 0);
    );
end ShiftLeft;

architecture bhv of ShiftLeft is
begin
        
end bhv;

-- ALU Control
entity ALUControl is
    port (
        ir : in std_logic_vector(5 downto 0);
        alu_op : in std_logic;
        opsel : out std_logic_vector(4 downto 0);
        alu_lo_hi : out std_logic_vector(1 downto 0);
        hi_en : out std_logic;
        lo_en : out std_logic;
    );
end ALUControl;

architecture bhv of ALUControl is
    begin
            
end bhv;

-- Concat Entity
entity Concat is
    port (
        input : in std_logic_vector(27 downto 0);
        pc : in std_logic_vector(3 downto 0);
        output : out std_logic_vector(31 downto 0);
    );
end Concat;

architecture bhv of Concat is
begin
            
end bhv;

