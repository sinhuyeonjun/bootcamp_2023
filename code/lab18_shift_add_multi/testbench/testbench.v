module testbench();
    reg clk;
    reg n_rst;
    reg [3:0] in_a;
    reg [3:0] in_b;
    reg start;
    reg done;
    wire [7:0] product;

shift_add_mul dut1(
    .clk(clk),
    .n_rst(n_rst),
    .in_a(in_a),
    .in_b(in_b),
    .start(start),
    .done(done),
    .product(product)
);

always #5 clk = ~clk;

initial begin
    clk = 1'b0;
    n_rst = 1'b0;
    start = 1'b0;
    done = 1'b0;
    in_a = 4'b0010; in_b = 4'b0011;
    #7 n_rst = 1'b1;
    #10 start = 1'b1;
    #10 start = 1'b0;
    #150 $stop;

end

endmodule 