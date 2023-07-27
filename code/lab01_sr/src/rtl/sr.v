module sr(
  clk,
  n_rst,
  in_a,
  in_b,
  out_a,
  out_b
);

input clk;
input n_rst;
input in_a;
input in_b;
output out_a;
reg out_a;
output out_b;

assign out_b = ~(out_a);

always@(posedge clk or negedge n_rst)
  if(!n_rst) begin
    out_a <= 1'b0;    
  end
  else begin
    if(in_a == 0 && in_b == 1) begin
      out_a <= 1'b1;
    end
    else if(in_a == 1 && in_b == 0)begin
      out_a <= 1'b0;
    end
    else if(in_a == 1 && in_b == 1) begin
      out_a <= 1'bx;
    end
  end

endmodule