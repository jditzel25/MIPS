library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb is
end tb;

architecture behavior of tb is

    -- Signal declarations for inputs and output of Concat component
    signal input : std_logic_vector(27 downto 0);
    signal pc : std_logic_vector(3 downto 0);
    signal output : std_logic_vector(31 downto 0);

    -- Component declaration for Concat
    component Concat is
        port (
            input : in std_logic_vector(27 downto 0);
            pc : in std_logic_vector(3 downto 0);
            output : out std_logic_vector(31 downto 0)
        );
    end component;

begin

    -- Instantiate the Concat component
    uut: Concat
        port map (
            input => input,
            pc => pc,
            output => output
        );

    -- Test process
    process
    begin
        -- Test Case 1: input = "0000000000000000000000000000", pc = "0000"
        input <= (others => '0');
        pc <= "0000";
        wait for 10 ns;
        assert (output = "00000000000000000000000000000000") 
            report "Test Case 1 Failed" severity error;

        -- Test Case 2: input = "1111111111111111111111111111", pc = "1111"
        input <= (others => '1');
        pc <= "1111";
        wait for 10 ns;
        assert (output = "11111111111111111111111111111111") 
            report "Test Case 2 Failed" severity error;

        -- Test Case 3: input = "1010101010101010101010101010", pc = "0101"
        input <= "1010101010101010101010101010";
        pc <= "0101";
        wait for 10 ns;
        assert (output = "10101010101010101010101010100101") 
            report "Test Case 3 Failed" severity error;

        -- Test Case 4: input = "0000000000000000000000000001", pc = "1000"
        input <= "0000000000000000000000000001";
        pc <= "1000";
        wait for 10 ns;
        assert (output = "00000000000000000000000000011000") 
            report "Test Case 4 Failed" severity error;

        -- Test Case 5: input = "1111111111111111111111111110", pc = "0011"
        input <= "1111111111111111111111111110";
        pc <= "0011";
        wait for 10 ns;
        assert (output = "11111111111111111111111111100011") 
            report "Test Case 5 Failed" severity error;

        -- End of simulation
        wait;
    end process;

end behavior;
