module full_adder1bit(
    in_a,
    in_b,
    c_in,
    sum,
    p,
    g,
);

input in_a;
input in_b;
input c_in;
output sum;
output p;
output g;

assign p = in_a ^ in_b;
assign g = in_a & in_b; 
assign sum = c_in ^ (in_a ^ in_b);

endmodule 