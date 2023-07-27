module CLB(
    in_a,
    in_b,
    c_in,
    sum,
    c_out,
    p,
    g,
    pg,
    gg
);

input [3:0] in_a;
input [3:0] in_b;
input c_in;
input [3:0] p;
input [3:0] g;
output [3:0] sum;
output c_out;
output [3:0] pg;
output [3:0] gg;

wire c_out1;
wire c_out2;
wire c_out3;
wire c_out4;

assign c_out1 = g[0] ^ (p[0] & c_in);
assign c_out2 = g[1] ^ (p[1] & c_out1);
assign c_out3 = g[2] ^ (p[2] & c_out2);
assign c_out4 = g[3] ^ (p[3] & c_out3);
assign c_out = c_out4;
assign pg = p[0] & p[1] & p[2] & p[3];
assign gg = g[3] ^ (g[2] & p[3]) ^ (g[1] & p[3] & p[2]) ^ (g[0] & p[3] & p[2] & p[1]);


full_adder1bit dut1(
    .in_a(in_a[0]),
    .in_b(in_b[0]),
    .c_in(c_in),
    .sum(sum[0]),
    .p(p[0]),
    .g(g[0])
);

full_adder1bit dut2(
    .in_a(in_a[1]),
    .in_b(in_b[1]),
    .c_in(c_out1),
    .sum(sum[1]),
    .p(p[1]),
    .g(g[1])
);

full_adder1bit dut3(
    .in_a(in_a[2]),
    .in_b(in_b[2]),
    .c_in(c_out2),
    .sum(sum[2]),
    .p(p[2]),
    .g(g[2])
);

full_adder1bit dut4(
    .in_a(in_a[3]),
    .in_b(in_b[3]),
    .c_in(c_out3),
    .sum(sum[3]),
    .p(p[3]),
    .g(g[3])
);

endmodule


/*
assign p[0] = in_a[0] ^ in_b[0];
assign g[0] = in_a[0] & in_b[0]; 
assign p[1] = in_a[1] ^ in_b[1];
assign g[1] = in_a[1] & in_b[1]; 
assign p[2] = in_a[2] ^ in_b[2];
assign g[2] = in_a[2] & in_b[2]; 
assign p[3] = in_a[3] ^ in_b[3];
assign g[3] = in_a[3] & in_b[3]; 
*/