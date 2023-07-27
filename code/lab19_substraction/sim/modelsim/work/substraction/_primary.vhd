library verilog;
use verilog.vl_types.all;
entity substraction is
    port(
        in_b            : in     vl_logic_vector(3 downto 0);
        \out\           : out    vl_logic_vector(3 downto 0)
    );
end substraction;
