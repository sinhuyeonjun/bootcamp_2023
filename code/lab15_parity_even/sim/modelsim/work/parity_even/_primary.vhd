library verilog;
use verilog.vl_types.all;
entity parity_even is
    port(
        clk             : in     vl_logic;
        n_rst           : in     vl_logic;
        in_a            : in     vl_logic_vector(2 downto 0);
        out_a           : out    vl_logic
    );
end parity_even;
