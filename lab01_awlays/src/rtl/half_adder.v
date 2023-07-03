module half_adder(
    in_a,
    in_b,
    c_out,
    sum    
);

input in_a;
input in_b;
output c_out;
output sum;

assign c_out = in_a & in_b;
assign sum = in_a ^ in_b;

endmodule