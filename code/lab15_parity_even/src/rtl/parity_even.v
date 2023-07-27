module parity_even(
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
    if(in_a == 3'b011) begin
      out_a <= 1'b1;
    end
    else if (in_a == 3'b101) begin
      out_a <= 1'b1;
    end
    else if (in_a == 3'b110) begin
      out_a <= 1'b1;
    end
    else begin
      out_a <= 1'b0;
    end
  end

endmodule