library verilog;
use verilog.vl_types.all;
entity shift_add_mul is
    port(
        clk             : in     vl_logic;
        n_rst           : in     vl_logic;
        in_a            : in     vl_logic_vector(3 downto 0);
        in_b            : in     vl_logic_vector(3 downto 0);
        start           : in     vl_logic;
        done            : in     vl_logic;
        product         : out    vl_logic_vector(7 downto 0)
    );
end shift_add_mul;
