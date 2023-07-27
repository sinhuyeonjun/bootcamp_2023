module testbench();

reg clk;
reg n_rst;
reg [2:0] in_a;
wire out_a;

parity_even dut1(
  .clk(clk),
  .n_rst(n_rst),
  .in_a(in_a),
  .out_a(out_a)
);

always #5 clk = ~clk;

initial begin
    clk = 1'b0;
    n_rst = 1'b0;
    in_a = 3'b000;
    #10 n_rst = 1'b1;
    #20 in_a = 3'b001;
    #20 in_a = 3'b010;
    #20 in_a = 3'b011;
    #20 in_a = 3'b100;
    #20 in_a = 3'b101;
    #20 in_a = 3'b110;
    #20 in_a = 3'b111;
    #20 $stop;

end

endmodule 