library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity decoder is
    port(
        address : in  std_logic_vector(15 downto 0);
        cs_LEDS : out std_logic;
        cs_RAM  : out std_logic;
        cs_ROM  : out std_logic;
	cs_button  : out std_logic
    );
end decoder;

architecture synth of decoder is
begin


cs : process (address) is
begin
	if(to_integer(unsigned(address)) < 4093) then
		cs_LEDS <= '0';
		cs_RAM <= '0';
		cs_ROM <= '1';
		cs_button <= '0';
	else if(to_integer(unsigned(address)) > 4095 AND to_integer(unsigned(address)) < 8189) then
			cs_LEDS <= '0';
			cs_RAM <= '1';
			cs_ROM <= '0';
			cs_button <= '0';
	     else if(to_integer(unsigned(address)) > 8191 AND to_integer(unsigned(address)) < 8205) then
				cs_LEDS <= '1';
				cs_RAM <= '0';
				cs_ROM <= '0';
				cs_button <= '0';
		  else if(to_integer(unsigned(address)) > 8239 AND to_integer(unsigned(address)) < 8245) then
				cs_LEDS <= '0';
				cs_RAM <= '0';
				cs_ROM <= '0';
				cs_button <= '1';
		       else 
				cs_LEDS <= '0';
				cs_RAM <= '0';
				cs_ROM <= '0';
				cs_button <= '0';
		       end if;   
		end if;
             end if;
          end if;
end process cs;

end synth;
