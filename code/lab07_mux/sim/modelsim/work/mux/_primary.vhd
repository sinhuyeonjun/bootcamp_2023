library verilog;
use verilog.vl_types.all;
entity mux is
    port(
        in_a            : in     vl_logic;
        in_b            : in     vl_logic;
        in_c            : in     vl_logic;
        in_d            : in     vl_logic;
        s               : in     vl_logic_vector(1 downto 0);
        out_a           : out    vl_logic
    );
end mux;
