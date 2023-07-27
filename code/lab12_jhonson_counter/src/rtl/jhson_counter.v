module jhson_counter(
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
    case(out_a)
      4'b0000 : out_a = 4'b1000;
      4'b1000 : out_a = 4'b1100;
      4'b1100 : out_a = 4'b1110;
      4'b1110 : out_a = 4'b1111;
      4'b1111 : out_a = 4'b0111;
      4'b0111 : out_a = 4'b0011;
      4'b0011 : out_a = 4'b0001;
      4'b0001 : out_a = 4'b0000;

      default : out_a = 4'b0000;

    endcase
  end 



endmodule