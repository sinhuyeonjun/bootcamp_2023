module testbench();

reg [31:0] in_a;
reg [31:0] in_b;
reg c_in;
wire [31:0] sum;
wire c_out;

full_adder32bit dut1(
  .in_a(in_a),
  .in_b(in_b),
  .c_in(c_in),
  .sum(sum),
  .c_out(c_out)
);



initial begin
    in_a = 32'b1010_1010_1010_1010_1010_1010_1010_1010; in_b = 32'b1111_1111_1111_1111_1111_1111_1111_1111; c_in = 0;
    #20 in_a = 32'b1010_1010_1010_1010_1010_1010_1010_1010; in_b = 32'b1111_1111_1111_1111_1111_1111_1111_1111; c_in = 1;
    #20 $stop;

end

endmodule 