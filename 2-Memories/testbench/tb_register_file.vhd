library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_register_file is
end;

architecture bench of tb_register_file is

    -- declaration of register_file interface
    -- INSERT COMPONENT DECLARATION HERE
    component register_file
 	port(aa, ab, aw : in std_logic_vector(4 downto 0);
	     wrdata : in std_logic_vector(31 downto 0);
	     wren, clk : in std_logic;
	     a, b : out std_logic_vector(31 downto 0));
    end component;

    signal aa, ab, aw   : std_logic_vector(4 downto 0);
    signal a, b, wrdata : std_logic_vector(31 downto 0);
    signal wren         : std_logic := '0';
    -- clk initialization
    signal clk, stop    : std_logic := '0';
    -- clk period definition
    constant CLK_PERIOD : time      := 40 ns;

begin

    -- register_file instance
    -- INSERT REGISTER FILE INSTANCE HERE
    reg : register_file
      port map(
	aa => aa,
	ab => ab,
	aw => aw,
	a => a,
	b => b,
	clk => clk,
	wren => wren,
	wrdata => wrdata
	);


    clock_gen : process
    begin
        -- it only works if clk has been initialized
        if stop = '0' then
            clk <= not clk;
            wait for (CLK_PERIOD / 2);
        else
            wait;
        end if;
    end process;

    process
    begin
        -- init
        wren   <= '0';
        aa     <= "00000";
        ab     <= "00001";
        aw     <= "00000";
        wrdata <= (others => '0');
        wait for 5 ns;

        -- write in the register file
        wren <= '1';
        for i in 0 to 31 loop
            -- std_logic_vector(to_unsigned(number, bitwidth))
            aw     <= std_logic_vector(to_unsigned(i, 5));
            wrdata <= std_logic_vector(to_unsigned(i + 1, 32));
            wait for CLK_PERIOD;
        end loop;

        -- read in the register file
        -- INSERT CODE THAT READS THE REGISTER FILE HERE
	for i in 0 to 31 loop
            -- std_logic_vector(to_unsigned(number, bitwidth))
            aa     <= std_logic_vector(to_unsigned(i, 5));
	    ab     <= std_logic_vector(to_unsigned(i, 5));
            wait for 5 ns;
		--ASSERT HERE
	    if(i = 0) then
		assert a = std_logic_vector(to_unsigned(0, 32));
		assert b = std_logic_vector(to_unsigned(0, 32));
	    else
	    assert std_logic_vector(to_unsigned(i + 1, 32)) = a
   		report "Unexpected result in reading aa" 
		severity error;
	    assert std_logic_vector(to_unsigned(i + 1, 32)) = b
   		report "Unexpected result in reading bb" 
		severity error;
	    end if;
        end loop;

        stop <= '1';
        wait;
    end process;
end bench;
