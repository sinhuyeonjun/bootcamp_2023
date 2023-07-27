module testbench();

reg clk;
reg n_rst;
reg in_a;
wire out_a;

T u_T(
    .clk(clk),
    .n_rst(n_rst),
    .in_a(in_a),
    .out_a(out_a)
);

always #5 clk = ~clk;

initial begin
    clk = 1'b0;
    n_rst = 1'b0;
    in_a = 0;
    #10 n_rst = 1'b1;
    #20 in_a = 1;
    #20 $stop;

end

endmodule 