module full_adder1bit(
    in_a,
    in_b,
    c_in,
    sum,
    c_out
);

input in_a;
input in_b;
input c_in;
output sum;
output c_out;

wire sum1;
wire c_out1;
wire c_out2;

half_adder dut1(
    .in_a(in_a),
    .in_b(in_b),
    .sum(sum1),
    .c_out(c_out1)
);

half_adder dut2(
    .in_a(sum1),
    .in_b(c_in),
    .sum(sum),
    .c_out(c_out2)
);

assign c_out = c_out1 | c_out2;


endmodule