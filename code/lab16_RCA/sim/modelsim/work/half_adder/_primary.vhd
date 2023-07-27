library verilog;
use verilog.vl_types.all;
entity half_adder is
    port(
        in_a            : in     vl_logic;
        in_b            : in     vl_logic;
        sum             : out    vl_logic;
        c_out           : out    vl_logic
    );
end half_adder;
