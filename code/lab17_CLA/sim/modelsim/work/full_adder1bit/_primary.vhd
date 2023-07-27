library verilog;
use verilog.vl_types.all;
entity full_adder1bit is
    port(
        in_a            : in     vl_logic;
        in_b            : in     vl_logic;
        c_in            : in     vl_logic;
        sum             : out    vl_logic;
        p               : out    vl_logic;
        g               : out    vl_logic
    );
end full_adder1bit;
