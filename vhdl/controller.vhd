library ieee;
use ieee.std_logic_1164.all;

entity controller is
    port(
        clk        : in  std_logic;
        reset_n    : in  std_logic;
        -- instruction opcode
        op         : in  std_logic_vector(5 downto 0);
        opx        : in  std_logic_vector(5 downto 0);
        -- activates branch condition
        branch_op  : out std_logic;
        -- immediate value sign extention
        imm_signed : out std_logic;
        -- instruction register enable
        ir_en      : out std_logic;
        -- PC control signals
        pc_add_imm : out std_logic;
        pc_en      : out std_logic;
        pc_sel_a   : out std_logic;
        pc_sel_imm : out std_logic;
        -- register file enable
        rf_wren    : out std_logic;
        -- multiplexers selections
        sel_addr   : out std_logic;
        sel_b      : out std_logic;
        sel_mem    : out std_logic;
        sel_pc     : out std_logic;
        sel_ra     : out std_logic;
        sel_rC     : out std_logic;
        -- write memory output
        read       : out std_logic;
        write      : out std_logic;
        -- alu op
        op_alu     : out std_logic_vector(5 downto 0)
    );
end controller;

architecture synth of controller is
type state is (FETCH1, FETCH2, DECODE, R_OP, STORE, BREAK, LOAD1, I_OP, LOAD2, BRANCH, CALL, JMP, I_OP2, R_OP2);
signal current_state : state;
signal next_state : state;
signal alu : std_logic_vector(5 downto 0);
begin

---------CONTROL
control : process(clk, reset_n) is
begin
if(reset_n = '0') then
	current_state <= FETCH1;
else if(rising_edge(clk)) then 
	current_state <= next_state;
      end if;
end if;
end process control;

---------STATE SELECTION
st : process(current_state, op, opx) is
begin
write <= '0';
read <= '0';

sel_b <= '0';
sel_rC <= '0';
sel_addr <= '0';
sel_mem <= '0';
sel_pc <= '0';
sel_ra <= '0';

branch_op <= '0';
rf_wren <= '0';
imm_signed <= '0';
ir_en <= '0';

pc_add_imm <= '0';
pc_en      <= '0';
pc_sel_a   <= '0';
pc_sel_imm <= '0';

case(current_state) is
	when FETCH1 => next_state <= FETCH2;
		       read <= '1';
	when FETCH2 => next_state <= DECODE;
		       ir_en <= '1';
		       pc_en <= '1';
	when R_OP => next_state <= FETCH1;
		     sel_b <= '1';
		     sel_rC <= '1';
		     rf_wren <= '1';
	when I_OP => next_state <= FETCH1;
		     imm_signed <= '1';
		     rf_wren <= '1';
	when R_OP2 => next_state <= FETCH1;
		     sel_rC <= '1';
		     rf_wren <= '1';
	when I_OP2 => next_state <= FETCH1;
		     rf_wren <= '1';
	when DECODE => case("00" & op) is------TODO
			when X"3A" => case("00" & opx) is
					when X"34" => next_state <= BREAK;
					when X"12"|X"1A"|X"3A"|X"02" => next_state <= R_OP2;
					when X"05"|X"0D" => next_state <= JMP;
					when X"1D" => next_state <= CALL;
					when others => next_state <= R_OP;
			  	      end case;
			when X"04"|X"08"|X"10"|X"18"|X"20" => next_state <= I_OP;
			when X"0C"|X"14"|X"1C"|X"28"|X"30" => next_state <= I_OP2;
			when X"17" => next_state <= LOAD1;
			when X"15" => next_state <= STORE;
			when X"06"|X"0E"|X"16"|X"1E"|X"26"|X"2E"|X"36" => next_state <= BRANCH;
			when X"01" => next_state <= JMP;
			when X"00" => next_state <= CALL;
			when others => next_state <= FETCH1;
			end case;
	when BREAK => next_state <= BREAK;
	when LOAD1 => next_state <= LOAD2;
		      read <= '1';
		      sel_addr <= '1';
		      imm_signed <= '1';
	when LOAD2 => next_state <= FETCH1;
		      sel_mem <= '1';
		      rf_wren <= '1';
	when STORE => next_state <= FETCH1;
		      sel_addr <= '1';
		      imm_signed <= '1';
	   	      write <= '1';	
	when BRANCH => next_state <= FETCH1;
		       pc_add_imm <= '1';
		       branch_op <= '1';
		       sel_b <= '1';
	when CALL => next_state <= FETCH1;
		     pc_sel_imm <= '1';
		     pc_en <= '1';
		     rf_wren <= '1';
		     sel_pc <= '1';
		     sel_ra <= '1';
		     if(("00" & opx) = X"1D") then pc_sel_a <= '1'; pc_sel_imm <= '0'; sel_rC <= '1';
		     end if;
	when JMP => next_state <= FETCH1;
		     pc_sel_a <= '1';
		    pc_en <= '1';
		    if("00" & op = X"01") then pc_sel_imm <= '1'; pc_sel_a <= '0';
		    end if; 
	when OTHERS => next_state <= FETCH1; 
end case;
end process st;

---------OP_ALU
opcode_alu : process(op, opx, current_state) is
begin	

case (current_state) is
	when R_OP =>  case("00" & opx) is
			when X"31" => alu <= "000" & opx(5 downto 3);
			when X"39" => alu <= "001" & opx(5 downto 3);
			when X"08" => alu <= "011" & opx(5 downto 3);
			when X"10" => alu <= "011" & opx(5 downto 3);
			when X"06" => alu <= "100" & opx(5 downto 3);
			when X"0E" => alu <= "100" & opx(5 downto 3);
			when X"16" => alu <= "100" & opx(5 downto 3);
			when X"1E" => alu <= "100" & opx(5 downto 3);
			when X"13" => alu <= "110" & opx(5 downto 3);
			when X"1B" => alu <= "110" & opx(5 downto 3);
			when X"3B" => alu <= "110" & opx(5 downto 3);
			when X"18" => alu <= "011" & opx(5 downto 3);
			when X"20" => alu <= "011" & opx(5 downto 3);
			when X"28" => alu <= "011" & opx(5 downto 3);
			when X"30" => alu <= "011" & opx(5 downto 3);
			when X"03" => alu <= "110" & opx(5 downto 3);
			when X"0B" => alu <= "110" & opx(5 downto 3);
			when others => alu <= "000000";
			end case;
	when I_OP => case("00" & op) is
			when X"04" => alu <= "000" & op(5 downto 3);
			when X"08" => alu <= "011" & op(5 downto 3);
			when X"10" => alu <= "011" & op(5 downto 3);
			when X"18" => alu <= "011" & op(5 downto 3);
			when X"20" => alu <= "011" & op(5 downto 3);
			when others => alu <= "000000";
			end case;
	when LOAD1 => if(op = "010111") then alu <= "000" & op(5 downto 3);
			end if;
	when STORE => if(op = "010101") then alu <= "000" & op(5 downto 3);
			end if;
	when BRANCH => case("00" & op) is
			when X"06" => alu <= "011100";
			when X"0E" => alu <= "011" & op(5 downto 3);
			when X"16" => alu <= "011" & op(5 downto 3);
			when X"1E" => alu <= "011" & op(5 downto 3);
			when X"26" => alu <= "011" & op(5 downto 3);
			when X"2E" => alu <= "011" & op(5 downto 3);
			when X"36" => alu <= "011" & op(5 downto 3);
			when others => alu <= "000000";
			end case;
	when I_OP2 => case("00" & op) is
			when X"0C" => alu <= "100" & op(5 downto 3);
			when X"14" => alu <= "100" & op(5 downto 3);
			when X"1C" => alu <= "100" & op(5 downto 3);
			when X"28" => alu <= "011" & op(5 downto 3);
			when X"30" => alu <= "011" & op(5 downto 3);
			when others => alu <= "000000";
			end case;
	when R_OP2 => case("00" & opx) is
			when X"12" => alu <= "110" & opx(5 downto 3);
			when X"1A" => alu <= "110" & opx(5 downto 3);
			when X"3A" => alu <= "110" & opx(5 downto 3);
			when X"02" => alu <= "110" & opx(5 downto 3);
			when others => alu <= "000000";
			end case;
	when OTHERS => alu <= "000000";
end case;
end process opcode_alu;

op_alu <= alu;

end synth;





















