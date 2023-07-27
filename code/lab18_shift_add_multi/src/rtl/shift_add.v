module shift_add(
  clk,
  n_rst,
  in_a,
  in_b,
  sum,
  cnt
);

input clk;
input n_rst;
input [3:0] in_a; //12
input [3:0] in_b; //9
output [7:0] sum;
output [1:0] cnt;
reg [7:0] sum;
reg [7:0] sum1;
reg [7:0] sum2;
reg [7:0] sum3;
reg [2:0] cnt;


always@(posedge clk or negedge n_rst)
  if(!n_rst) begin
    cnt <= 2'd0;
  end
  else begin
    if(cnt >= 0 && cnt < 5) begin
        cnt <= cnt + 1'b1; 
    end
    else if(cnt == 3)begin
      cnt <= 2'd0; 
    end
  end

always@(posedge clk or negedge n_rst)  // 첫번째
  if(!n_rst) begin
    sum1 <= 8'b0000_0000;
  end
  else begin
    if(cnt == 0) begin
      sum1 <= {sum1[3:0], {1'b0 ,in_a[3:1]}};
    end
    else begin
      if(in_a[0] == 0) begin
        sum1 <= sum1; 
      end 
      else if (in_a[0] == 1) begin
        sum1 <= {sum[7:4], in_b};
      end
    end
  end


always@(posedge clk or negedge n_rst)  //두번째
  if(!n_rst) begin
    sum2 <= 8'b0000_0000;
  end
  else begin
    if(cnt == 1) begin
      sum2 <= {1'b0, sum1[7:1]};
    end
    else begin
      if(in_a[0] == 0) begin
        sum2 <= sum2; 
      end 
      else if (in_a[0] == 1) begin
        sum2 <= {sum[7:4], in_b};
      end
    end
  end


always@(posedge clk or negedge n_rst)  //두번째
  if(!n_rst) begin
    sum3 <= 8'b0000_0000;
  end
  else begin
    if(cnt == 2) begin
      sum3 <= {1'b0, sum2[7:1]};
    end
    else begin
      if(in_a[0] == 0) begin
        sum3 <= sum3; 
      end 
      else if (in_a[0] == 1) begin
        sum3 <= {sum[7:4], in_b};
      end
    end
  end

always@(posedge clk or negedge n_rst) // 4번째
  if(!n_rst) begin
    sum <= 8'b0000_0000;
  end
  else begin
    if(cnt == 2) begin
      sum <= {1'b0, sum3[7:1]};
    end
    else begin
      if(in_a[0] == 0) begin
        sum <= sum; 
      end 
      else if (in_a[0] == 1) begin
        sum <= {sum[7:4], in_b};
      end
    end
  end

endmodule

//한번 될때마다 한번 밀고 더하고 값을 저장해야됨
//총 4번 돌아야함