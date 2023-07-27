library verilog;
use verilog.vl_types.all;
entity demux is
    port(
        in_a            : in     vl_logic;
        s               : in     vl_logic_vector(2 downto 0);
        out_a           : out    vl_logic_vector(7 downto 0)
    );
end demux;
