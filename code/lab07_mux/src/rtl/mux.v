module mux(
  in_a,
  in_b,
  in_c,
  in_d,
  s,
  out_a
);

input in_a;
input in_b;
input in_c;
input in_d;
input [1:0] s;
output out_a;
reg out_a;

always@(*)
  if(s == 2'b00) begin
    out_a = in_a;
  end
  else if(s == 2'b01) begin
    out_a = in_b;
  end
  else if(s == 2'b10) begin
    out_a = in_c;
  end
  else if (s == 2'b11) begin
    out_a = in_d;
  end
  else begin
    out_a = 0;
  end


endmodule 