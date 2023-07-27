module shift_add_mul(
    clk,
    n_rst,
    in_a,
    in_b,
    start,
    done,
    product
);

input clk;
input n_rst;
input [3:0] in_a;
input [3:0] in_b;
input start;
input done;
output [7:0] product;
reg [7:0] product;
reg [2:0] cnt;
reg [7:0] in_a1; // in_a 저장소
reg [3:0] in_b1; // in_b 저장소

wire edge_start; // start신호는 무조건 한번만 체크한다.

always@(posedge clk or negedge n_rst) // cnt
    if(!n_rst) begin
        cnt <= 3'h0;
    end
    else if(edge_start == 1 &&cnt==0) 
    begin
        cnt <= 3'h4;
    end
    else if(cnt!=0)
    begin
        cnt <=cnt-1;
    end


always@(posedge clk or negedge n_rst)
    if(!n_rst) begin
        in_a1 <= 8'b0000_0000;
    end
    else begin
        if(cnt == 4) begin
            in_a1 <= in_a;
        end
        else if(cnt <5 && cnt > 0) begin
            in_a1 <= {in_a1, 1'b0}; 
        end
        else begin
            in_a1 <= in_a1;
        end
    end

always@(posedge clk or negedge n_rst)
    if(!n_rst) begin
        in_b1 <= 4'b0;
    end
    else begin
        if(cnt == 4) begin
            in_b1 <= in_b;
        end
        else if(cnt <5 && cnt > 0) begin
            in_b1 <= {1'b0, in_b1[3:1]};
        end
        else begin
            in_b1 <= in_b1;
        end
    end

always@(posedge clk or negedge n_rst) // product 계산값 
    if(!n_rst) begin
        product <= 8'b0;
    end
    else begin
        if(cnt <5 && cnt > 0) begin
            if(in_b1[0] == 1) begin
                product <= product + in_a1;
            end    
            else if(in_b1[0] == 0) begin
                product <= product;
            end
        end
    end

edge_detection dut0(
    .clk(clk),
    .n_rst(n_rst),
    .data(start),
    .result(edge_start)
);
endmodule