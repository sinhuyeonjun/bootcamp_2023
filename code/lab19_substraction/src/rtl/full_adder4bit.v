module full_adder4bit(
    in_a,
    in_b,
    c_in,
    sum,
    c_out
);

input [3:0] in_a;
input [3:0] in_b;
input c_in;
output [3:0] sum;
output c_out;

wire c_out1;
wire c_out2;
wire c_out3;
wire [3:0] out;

substraction dut0(
    .in_b(in_b),
    .out(out)
);

full_adder1bit dut1(
    .in_a(in_a[0]),
    .in_b(out[0]),
    .c_in(c_in),
    .sum(sum[0]),
    .c_out(c_out1)
);

full_adder1bit dut2(
    .in_a(in_a[1]),
    .in_b(out[1]),
    .c_in(c_out1),
    .sum(sum[1]),
    .c_out(c_out2)
);

full_adder1bit dut3(
    .in_a(in_a[2]),
    .in_b(out[2]),
    .c_in(c_out2),
    .sum(sum[2]),
    .c_out(c_out3)
);

full_adder1bit dut4(
    .in_a(in_a[3]),
    .in_b(out[3]),
    .c_in(c_out3),
    .sum(sum[3]),
    .c_out(c_out)
);



endmodule 