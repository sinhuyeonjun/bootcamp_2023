module testbench;

reg in_a;
reg in_b;
wire out_a;

decoder u_decoder(
    .in_a(in_a),
    .in_b(in_b),
    .out_a(out_a)
);



initial begin
    in_a = 0;
    in_b = 0;
    #50 in_a = 0; in_b = 1;
    #20 in_a = 1; in_b = 0;
    #20 in_a = 1; in_b = 1;
    #20 $stop;

end

endmodule 