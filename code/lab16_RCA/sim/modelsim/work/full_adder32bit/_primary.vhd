library verilog;
use verilog.vl_types.all;
entity full_adder32bit is
    port(
        in_a            : in     vl_logic_vector(31 downto 0);
        in_b            : in     vl_logic_vector(31 downto 0);
        c_in            : in     vl_logic;
        sum             : out    vl_logic_vector(31 downto 0);
        c_out           : out    vl_logic
    );
end full_adder32bit;
