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
type state is (FETCH1, FETCH2, DECODE, R_OP, STORE, BREAK, LOAD1, I_OP, LOAD2);
signal current_state : state;
signal next_state : state;
begin

control : process(clk, reset_n) is
begin
if(reset_n = '0') then
	current_state <= FETCH1;
else if(rising_edge(clk)) then 
	current_state <= next_state;
      end if;
end if;
end process control;


st : process(current_state, next_state) is
begin
case(current_state) is
	when FETCH1 => next_state <= FETCH2;
	when FETCH2 => next_state <= DECODE;
	when DECODE => case("00" & op) is
			when X"3A" => if(opx = X"0E") then 
			  next_state <= R_OP;
			else next_state <= BREAK;
			end if; --case if more than 2 cases for op = 0x3A
			when X"04" => next_state <= I_OP;
			when X"17" => next_state <= LOAD1;
			when X"15" => next_state <= STORE;
			when others => next_state <= FETCH1;
			end case;
	when BREAK => next_state <= BREAK; 
	when LOAD1 => next_state <= LOAD2;
	when OTHERS => next_state <= FETCH1; 
end case;
end process st;


opcode_alu : process(op, opx) is
begin
if(current_state = I_OP) then
  op_alu(5 downto 3) <= op(5 downto 3);
elsif (current_state = R_OP) then
  op_alu(5 downto 3) <= opx(5 downto 3);
end if;
end process opcode_alu;


pc_en <= '1' when current_state = FETCH2;
ir_en <= '1' when current_state = FETCH2;
read <= '1' when current_state = LOAD1;
write <= '1' when current_state = STORE;



end synth;





















