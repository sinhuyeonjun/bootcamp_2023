module parity_odd(
  clk,
  n_rst,
  in_a,
  out_a
);

input clk;
input n_rst;
input [2:0] in_a;
output out_a;
reg out_a;

always@(posedge clk or negedge n_rst)
  if(!n_rst) begin
    out_a <= 1'b0;
  end
  else begin
    if(in_a == 3'b001) begin
      out_a <= 1'b1;
    end
    else if (in_a == 3'b010) begin
      out_a <= 1'b1;
    end
    else if (in_a == 3'b100) begin
      out_a <= 1'b1;
    end
    else if (in_a == 3'b111) begin
      out_a <= 1'b1;
    end
    else begin
      out_a <= 1'b0;
    end
  end

endmodule