library verilog;
use verilog.vl_types.all;
entity decoder is
    port(
        in_a            : in     vl_logic;
        in_b            : in     vl_logic;
        out_a           : out    vl_logic_vector(3 downto 0)
    );
end decoder;
