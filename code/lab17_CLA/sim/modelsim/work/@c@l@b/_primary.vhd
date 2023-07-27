library verilog;
use verilog.vl_types.all;
entity CLB is
    port(
        in_a            : in     vl_logic_vector(3 downto 0);
        in_b            : in     vl_logic_vector(3 downto 0);
        c_in            : in     vl_logic;
        sum             : out    vl_logic_vector(3 downto 0);
        c_out           : out    vl_logic;
        p               : in     vl_logic_vector(3 downto 0);
        g               : in     vl_logic_vector(3 downto 0);
        pg              : out    vl_logic_vector(3 downto 0);
        gg              : out    vl_logic_vector(3 downto 0)
    );
end CLB;
