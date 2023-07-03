module Array_multiplier(
    in_a,
    in_b,
    c_in,
    c_out,
    sum
);

input in_a;
input in+b;
input c_in;
output c_out;
output sum;

assign b0a0 = in_b[0] & in_a[0];

assign b0a1 = in_b[0] & in_a[1];
assign b1a0 = in_b[1] & in_a[0];

assign b0a2 = in_b[0] & in_a[2];
assign b1a1 = in_b[1] & in_a[1];
assign b2a0 = in_b[2] & in_a[0];

assign b0a3 = in_b[0] & in_a[3];
assign b1a2 = in_b[1] & in_a[2];
assign b2a1 = in_b[2] & in_a[1];
assign b3a0 = in_b[3] & in_a[0];

assign b1a3 = in_b[1] & in_a[3];
assign b2a2 = in_b[2] & in_a[2];
assign b3a1 = in_b[3] & in_a[1];

assign b2a3 = in_b[2] & in_a[3];
assign b3a2 = in_b[3] & in_a[2];

assign b3a3 = in_b[3] & in_a[3];

// m1 
half_adder dut1(
    .in_a(b0a1),
    .in_b(b1a0),
    .c_out(c_out[0]),
    .sum(sum[0])
);

//m2
full_adder m2(
    .in_a(b1a1),
    .in_b(b0a2),
    .c_in(c_out[0]),
    .c_out(c_out[1]),
    .sum(sum[1])
);

half_adder dut2(
    .in_a(b2a0),
    .in_b(sum[1]),
    .c_out(c_out[0]),
    .sum(sum[2])
);

//m3x

full_adder m2(
    .in_a(b1a2),
    .in_b(b0a3),
    
    .c_in(c_in[0]),
    .c_out(c_out[1]),
    .sum(sum[3])
);

full_adder m2(
    .in_a(b2a1),
    .in_b(sum[3]),

    .c_in(c_in[1]),
    .c_out(c_out[2]),
    .sum(sum[4])
);

half_adder dut3(
    .in_a(b3a0),
    .in_b(sum[4]),

    .c_out(c_out),
    sum(sum[5])
);

// m4

full_adder m2(
    .in_a(0),
    .in_b(b1a3),

    .c_in(c_in),
    .c_out(c_out),
    .sum(sum[6])
);

full_adder m2(
    .in_a(sum[6]),
    .in_b(b2a2),

    .c_in(c_in),
    .c_out(c_out),
    .sum(sum[7])
);

full_adder m2(
    .in_a(sum[7]),
    .in_b(b3a1),

    .c_in(c_in),
    .c_out(c_out),
    .sum(sum[8])
);

//m5

full_adder m2(
    .in_a(),
    .in_b(b2a3),

    .c_in(c_in),
    .c_out(c_out),
    .sum(sum[9])
);

full_adder m2(
    .in_a(sum[9]),
    .in_b(b3a2),

    .c_in(c_in),
    .c_out(c_out),
    .sum(sum[10])
);

//m6

full_adder m2(
    .in_a(),
    .in_b(b3a3),
    .c_in(c_in),
    .c_out(c_out),
    .sum(sum[2])
);

//m7 - 대기

full_adder m2(
    .in_a(b1a1),
    .in_b(b0a2),
    .c_in(c_in),
    .c_out(c_out),
    .sum(sum[2])
);

endmodule