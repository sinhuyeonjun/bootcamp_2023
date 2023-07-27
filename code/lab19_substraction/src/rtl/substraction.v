module substraction(
    in_b,
    out
);

input [3:0] in_b;
output [3:0] out;

assign out = ~in_b + 1'b1;

endmodule