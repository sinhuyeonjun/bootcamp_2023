module testbench();

reg clk;
reg n_rst;
reg in_a;
reg in_b;
wire out_a;
wire out_b;

sr u_sr(
    .clk(clk),
    .n_rst(n_rst),
    .in_a(in_a),
    .in_b(in_b),
    .out_a(out_a),
    .out_b(out_b)
);

always #5 clk = ~clk;

initial begin
    clk = 1'b0;
    n_rst = 1'b0;
    in_a = 0;
    in_b = 0;
    #10 n_rst = 1'b1;
    #20  in_a = 0; in_b = 1;
    #20 in_a = 1; in_b = 0;
    #20 in_a = 1; in_b = 1;
    #20 $stop;

end

endmodule 