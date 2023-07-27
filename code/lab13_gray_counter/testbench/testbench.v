module testbench();

reg clk;
reg n_rst;
wire [2:0] out_a;


gray_counter dut1(
    .clk(clk),
    .n_rst(n_rst),
    .out_a(out_a)
);

always #5 clk = ~clk;

initial begin
    clk = 1'b0;
    n_rst = 1'b0;
    #7 n_rst = 1'b1;
    #100 $stop;

end

endmodule 