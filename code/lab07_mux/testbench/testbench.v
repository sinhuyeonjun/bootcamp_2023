module testbench();

reg in_a;
reg in_b;
reg in_c;
reg in_d;
reg [1:0] s;
wire out_a;

mux u_mux(
    .in_a(in_a),
    .in_b(in_b),
    .in_c(in_c),
    .in_d(in_d),
    .s(s),
    .out_a(out_a)
);

initial begin
    in_a = 0; in_b = 1; in_c = 0; in_d = 1; s = 2'b00;
    #20 in_a = 0; in_b = 1; in_c = 0; in_d = 1; s = 2'b01;
    #20 in_a = 0; in_b = 1; in_c = 0; in_d = 1; s = 2'b10;
    #20 in_a = 0; in_b = 1; in_c = 0; in_d = 1; s = 2'b11;
    #20 $stop;

end

endmodule 