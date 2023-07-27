module testbench();

reg in_a;
reg in_b;
reg in_c;
reg in_d;
wire out_a;

encoder dut1(
  .in_a(in_a),
  .in_b(in_b),
  .in_c(in_c),
  .in_d(in_d),
  .out_a(out_a)
);

initial begin
    in_a = 0; in_b = 0; in_c = 0; in_d = 1;
    #20 in_a = 0; in_b = 0; in_c = 1; in_d = 0;
    #20 in_a = 0; in_b = 1; in_c = 0; in_d = 0;
    #20 in_a = 1; in_b = 0; in_c = 0; in_d = 0;
    #20 $stop;

end

endmodule 