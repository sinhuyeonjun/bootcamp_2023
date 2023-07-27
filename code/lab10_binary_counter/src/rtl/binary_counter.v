module binary_counter(
  clk,
  n_rst,
  out_a
);

input clk;
input n_rst;
output [3:0] out_a;
reg [3:0] out_a;

always@(posedge clk or negedge n_rst)
  if(!n_rst) begin
    out_a <= 4'b0000;
  end
  else begin
    out_a <= out_a + 1'b1;
  end

endmodule