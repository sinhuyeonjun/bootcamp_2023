module moore(
  clk,
  n_rst,
  din,
  dout
);

input clk;
input n_rst;
input [1:0]din;
output reg dout;

parameter s0 = 2'h0,
          s1 = 2'h1,
          s2 = 2'h2,
          s3 = 2'h3;
reg [3:0] c_state;
reg [3:0] n_state;

always@(posedge clk or negedge n_rst)
begin
  if(!n_rst)
    c_state <= s0;
  else
    c_state <= n_state;
end

always@(c_state or din)
case(c_state)
  s0 : begin
    n_state = (din == 2'b00)? s0 :
              (din == 2'b01)? s1 :
              (din == 2'b10)? s2 :
              (din == 2'b11)? s0 : s0;
    dout = 1'b0;
  end 
  s1 : begin 
    n_state = (din == 2'b00)? s0 :
              (din == 2'b01)? s1 :
              (din == 2'b10)? s2 :
              (din == 2'b11)? s3 : s3;
    dout = 1'b0;
  end
  s2 : begin 
    n_state = (din == 2'b00)? s0 :
              (din == 2'b01)? s1 :
              (din == 2'b10)? s2 :
              (din == 2'b11)? s3 : s3;
    dout = 1'b0;
  end
  s3 : begin 
    n_state = (din == 2'b00)? s0 :
              (din == 2'b01)? s1 :
              (din == 2'b10)? s2 :
              (din == 2'b11)? s0 : s0;
    dout = 1'b1;
  end
  default begin 
    n_state = s0;
    dout = 1'b0;
  end
endcase 
endmodule