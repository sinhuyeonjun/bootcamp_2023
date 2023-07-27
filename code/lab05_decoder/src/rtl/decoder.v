module decoder(
  in_a,
  in_b,
  out_a,
);

input in_a;
input in_b;
output [3:0] out_a;
reg [3:0] out_a;

always@(*)
  if(in_a == 0 && in_b == 0) begin
    out_a = 4'b0001;
  end
  else if(in_a == 0 && in_b == 1) begin
    out_a = 4'b0010;
  end
  else if(in_a == 1 && in_b == 0) begin
    out_a = 4'b0100;
  end
  else if(in_a == 1 && in_b == 1) begin
    out_a = 4'b1000;
  end 
  else begin
    out_a = 4'b0000;
  end

endmodule