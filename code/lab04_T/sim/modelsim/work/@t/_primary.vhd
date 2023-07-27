library verilog;
use verilog.vl_types.all;
entity T is
    port(
        clk             : in     vl_logic;
        n_rst           : in     vl_logic;
        in_a            : in     vl_logic;
        out_a           : out    vl_logic
    );
end T;
