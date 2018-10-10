library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity PC is
    port(
        clk     : in  std_logic;
        reset_n : in  std_logic;
        en      : in  std_logic;
        sel_a   : in  std_logic;
        sel_imm : in  std_logic;
        add_imm : in  std_logic;
        imm     : in  std_logic_vector(15 downto 0);
        a       : in  std_logic_vector(15 downto 0);
        addr    : out std_logic_vector(31 downto 0)
    );
end PC;

architecture synth of PC is
signal output : std_logic_vector(31 downto 0);
begin

pc : process (clk, reset_n) is
begin
if(reset_n = '1') then
    if(rising_edge(clk)) then
       if(en = '1') then
     	output <= std_logic_vector((unsigned(output)) + 4);
       end if;
    end if;
else output <= (others => '0');
end if;
end process pc;

addr <= output;

end synth;
