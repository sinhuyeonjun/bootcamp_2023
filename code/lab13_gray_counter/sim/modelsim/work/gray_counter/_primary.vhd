library verilog;
use verilog.vl_types.all;
entity gray_counter is
    port(
        clk             : in     vl_logic;
        n_rst           : in     vl_logic;
        out_a           : out    vl_logic_vector(2 downto 0)
    );
end gray_counter;
