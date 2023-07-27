module testbench();

reg in_a;
reg [2:0] s;
wire [7:0] out_a;

demux u_demux(
    .in_a(in_a),
    .s(s),
    .out_a(out_a)
);

initial begin
    in_a = 1; s = 3'b000;
    #20 in_a = 1; s = 3'b001;
    #20 in_a = 1; s = 3'b010;
    #20 in_a = 1; s = 3'b011;
    #20 in_a = 1; s = 3'b100;
    #20 in_a = 1; s = 3'b101;
    #20 in_a = 1; s = 3'b110;
    #20 in_a = 1; s = 3'b111;
    #20 $stop;

end

endmodule 