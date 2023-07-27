module gray_counter(
  clk,
  n_rst,
  out_a
);

input clk;
input n_rst;
output [2:0] out_a;
reg [2:0] out_a;
reg [3:0] cnt;


always@(posedge clk or negedge n_rst)
  if(!n_rst) begin
    cnt <= 4'b0;
  end
  else begin
    if (cnt < 7) begin
      cnt <= cnt + 1'b1;
    end
    else if(cnt == 7) begin
      cnt <= 0;
    end
  end

always@ (posedge clk or negedge n_rst)
  if(!n_rst) begin
    out_a <= 3'b000;
  end
  else begin
      out_a[0] <= cnt[1] ^ cnt[0];
      out_a[1] <= cnt[2] ^ cnt[1];
      out_a[2] <= cnt[3] ^ cnt[2];
    
  end

endmodule

