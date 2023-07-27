module full_adder32bit(
    in_a,
    in_b,
    c_in,
    sum,
    c_out
);

input [31:0] in_a;
input [31:0] in_b;
input c_in;
output [31:0] sum;
output c_out;

wire c_out1;
wire c_out2;
wire c_out3;
wire c_out4;
wire c_out5;
wire c_out6;
wire c_out7;

full_adder4bit dut1(
    .in_a(in_a[3:0]),
    .in_b(in_b[3:0]),
    .c_in(c_in),
    .sum(sum[3:0]),
    .c_out(c_out1)
);

full_adder4bit dut2(
    .in_a(in_a[7:4]),
    .in_b(in_b[7:4]),
    .c_in(c_out1),
    .sum(sum[7:4]),
    .c_out(c_out2)
);

full_adder4bit dut3(
    .in_a(in_a[11:8]),
    .in_b(in_b[11:8]),
    .c_in(c_out2),
    .sum(sum[11:8]),
    .c_out(c_out3)
);

full_adder4bit dut4(
    .in_a(in_a[15:12]),
    .in_b(in_b[15:12]),
    .c_in(c_out3),
    .sum(sum[15:12]),
    .c_out(c_out4)
);

full_adder4bit dut5(
    .in_a(in_a[19:16]),
    .in_b(in_b[19:16]),
    .c_in(c_out4),
    .sum(sum[19:16]),
    .c_out(c_out5)
);

full_adder4bit dut6(
    .in_a(in_a[23:20]),
    .in_b(in_b[23:20]),
    .c_in(c_out5),
    .sum(sum[23:20]),
    .c_out(c_out6)
);

full_adder4bit dut7(
    .in_a(in_a[27:24]),
    .in_b(in_b[27:24]),
    .c_in(c_out6),
    .sum(sum[27:24]),
    .c_out(c_out7)
);

full_adder4bit dut8(
    .in_a(in_a[31:28]),
    .in_b(in_b[31:28]),
    .c_in(c_out7),
    .sum(sum[31:28]),
    .c_out(c_out)
);

endmodule