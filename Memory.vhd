-- Jack Ditzel
-- Section: 11610

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Memory is
    port (
        clk: in std_logic;
        baddr: in std_logic_vector(31 downto 0);
        data_in: in std_logic_vector(31 downto 0);
        mem_read: in std_logic;
        mem_write: in std_logic;
        data_out: out std_logic_vector(31 downto 0);
        in_port0_in: in std_logic_vector(31 downto 0);
        in_port0_en: in std_logic;
        in_port1_in: in std_logic_vector(31 downto 0);
        in_port1_en: in std_logic;
        out_port: out std_logic_vector(31 downto 0)
    );
end Memory;

architecture bhv of Memory is

    component RAM is
        port (
            address		: in std_logic_vector (7 downto 0);
            clock		: in std_logic  := '1';
            data		: in std_logic_vector (31 downto 0);
            rden		: in std_logic  := '1';
            wren		: in std_logic ;
            q		    : out std_logic_vector (31 downto 0)
        );
    end component;

    component Reg is
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
    end component;

    signal ram_addr : std_logic_vector(7 downto 0) := (others => '0');
    signal in_port0_temp, in_port1_temp : std_logic_vector(31 downto 0) := (others => '0');
    signal ram_out_temp := std_logic_vector(31 downto 0) := (others => '0');

begin

    ram_addr <= baddr(9 downto 2);

    RAM_inst: RAM
        port map (address => ram_addr, 
                  clock => clk,
                  data => data_in, 
                  rden => mem_read, 
                  wren => mem_write, 
                  q => ram_out_temp);

    in_port0_inst: Reg
        generic map (WIDTH => 32);
        port map (clk => clk,
                  rst => rst,
                  en => en,
                  d => in_port0_in,
                  q => in_port0_temp);
    
    in_port1_inst: Reg
        generic map (WIDTH => 32);
        port map (clk => clk,
                  rst => rst,
                  en => en,
                  d => in_port1_in,
                  q => in_port1_temp);

    out_port_inst: Reg
        generic map (WIDTH => 32);
        port map (clk => clk,
                  rst => rst,
                  en => en,
                  d => 
                  q => out_port);

    process (clk)
    begin
        if rising_edge(clk) then
            if mem_read = '1' then
                if baddr = x"0000FFF8" then
                    data_out <= in_port0_temp;
                elsif baddr = x"0000FFFC" then
                    data_out <= in_port1_temp;
                else
                    data_out <= ram_out_temp;
                end if;
            end if;
        end if;
    end process;
                  
end bhv;