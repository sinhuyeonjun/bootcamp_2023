module testbench();

reg [3:0] in_a;
reg [3:0] in_b;
reg c_in;
wire [3:0] sum;
wire c_out;
wire [3:0] p;
wire [3:0] g;
wire [3:0] pg;
wire [3:0] gg;


CLB dut1(
    .in_a(in_a),
    .in_b(in_b),
    .c_in(c_in),
    .sum(sum),
    .c_out(c_out),
    .p(p),
    .g(g),
    .pg(pg),
    .gg(gg)
);

initial begin
    in_a = 4'b1010; in_b = 4'b1111; c_in = 1'b0;
    #20 in_a = 4'b1010; in_b = 4'b1111; c_in = 1'b1;
    
    #20 $stop;

end

endmodule 