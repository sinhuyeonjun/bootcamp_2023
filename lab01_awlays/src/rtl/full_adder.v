module full_adder(
    in_a,
    in_b,
    c_in,
    c_out,
    sum
);

input in_a;
input in_b;
input c_in;
output c_out;
output sum;

assign sum = (in_a ^ in_b) ^ c_in;
assign c_out = (in_a & in_b) || (c_in &(in_a ^ in_a_b));


endmodule