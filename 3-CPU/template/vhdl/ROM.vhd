library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ROM is
    port(
        clk     : in  std_logic;
        cs      : in  std_logic;
        read    : in  std_logic;
        address : in  std_logic_vector(9 downto 0);
        rddata  : out std_logic_vector(31 downto 0)
    );
end ROM;

architecture synth of ROM is
signal read_cs : std_logic;
signal ad : std_logic_vector(9 downto 0);
signal output : std_logic_vector(31 downto 0);

component ROM_block 
    port (address : IN STD_LOGIC_VECTOR (9 DOWNTO 0);
	  clock		: IN STD_LOGIC;
          q		: OUT STD_LOGIC_VECTOR (31 DOWNTO 0));
end component;

begin

memory : ROM_block
port map(
  clock => clk,
  address => address,
  q => output);



read_process : process (read_cs) is
  begin
  if(rising_edge(clk)) then
     rddata <= (others => 'Z');
     if(read_cs = '1') then
        rddata <= output;
     end if;
  end if;
  end process read_process;

  pre_read : process (clk, address) is
  begin
  if(rising_edge(clk)) then
     ad <= address;
     read_cs <= read AND cs;
  end if;
  end process pre_read;


end synth;
