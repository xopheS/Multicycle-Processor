library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity add_sub is
    port(
        a        : in  std_logic_vector(31 downto 0);
        b        : in  std_logic_vector(31 downto 0);
        sub_mode : in  std_logic;
        carry    : out std_logic;
        zero     : out std_logic;
        r        : out std_logic_vector(31 downto 0)
    );
end add_sub;

architecture synth of add_sub is
signal full : std_logic_vector(32 downto 0);
signal b_sub : std_logic_vector(32 downto 0);
signal a_sub : std_logic_vector(32 downto 0);
signal sub_mask : std_logic_vector(31 downto 0);
signal add : std_logic_vector(31 downto 0);
signal plus1 : std_logic_vector(32 downto 0);
begin
	sub_mask <= (others => sub_mode);
	b_sub <= '0' & (b xor sub_mask);
	a_sub <= '0' & a;
        plus1 <= (32 downto 1 => '0') & sub_mode; 
	full <= std_logic_vector(unsigned(a_sub) + unsigned(b_sub) + unsigned(plus1));	
	add <= full(31 downto 0) ;
	carry <= full(32);
	zero <= '1' when add = (add'range => '0') else 
	        '0';
	r <= add;
end synth;
