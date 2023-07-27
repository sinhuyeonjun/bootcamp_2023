module testbench();

reg [3:0] in_a;
reg [3:0] in_b;
reg c_in;
wire [3:0] sum;
wire c_out;

full_adder4bit dut1(
  .in_a(in_a),
  .in_b(in_b),
  .c_in(c_in),
  .sum(sum),
  .c_out(c_out)
);



initial begin
    in_a = 4'b1111; in_b = 4'b1001; c_in = 0;
    #20 in_a = 4'b1111; in_b = 4'b1001; c_in = 1;
    #20 $stop;

end

endmodule 