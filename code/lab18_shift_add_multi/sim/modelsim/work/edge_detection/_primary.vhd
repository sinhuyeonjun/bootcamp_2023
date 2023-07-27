library verilog;
use verilog.vl_types.all;
entity edge_detection is
    port(
        clk             : in     vl_logic;
        n_rst           : in     vl_logic;
        data            : in     vl_logic;
        result          : out    vl_logic
    );
end edge_detection;
