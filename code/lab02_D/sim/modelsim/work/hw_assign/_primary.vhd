library verilog;
use verilog.vl_types.all;
entity hw_assign is
    port(
        din0            : in     vl_logic_vector(2 downto 0);
        din1            : in     vl_logic_vector(2 downto 0);
        sel             : in     vl_logic_vector(1 downto 0);
        dout            : out    vl_logic_vector(2 downto 0)
    );
end hw_assign;
