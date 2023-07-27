module encoder(
  in_a,
  in_b,
  in_c,
  in_d,
  out_a
);

input in_a;
input in_b;
input in_c;
input in_d;
output [1:0] out_a;
reg [1:0] out_a;

always@(*)
  if(in_a == 0 && in_b == 0 && in_c == 0 && in_d == 1) begin
    out_a = 2'b00;
  end 
  else if(in_a == 0 && in_b == 0 && in_c == 1 && in_d == 0) begin
    out_a = 2'b01;
  end
  else if(in_a == 0 && in_b == 1 && in_c == 0 && in_d == 0) begin
    out_a = 2'b10;
  end
  else if(in_a == 1 && in_b == 0 && in_c == 0 && in_d == 0) begin
    out_a = 2'b11;
  end
  else begin
    out_a = 2'b00;
  end

endmodule