module half_adder(
  in_a,
  in_b,
  sum,
  c_out
);

input in_a;
input in_b;
output sum;
output c_out;

assign c_out = in_a & in_b;
assign sum = in_a ^ in_b;

endmodule