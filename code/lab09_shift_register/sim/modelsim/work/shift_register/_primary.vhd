library verilog;
use verilog.vl_types.all;
entity shift_register is
    port(
        clk             : in     vl_logic;
        n_rst           : in     vl_logic;
        in_a            : in     vl_logic;
        out_a           : out    vl_logic_vector(3 downto 0)
    );
end shift_register;
