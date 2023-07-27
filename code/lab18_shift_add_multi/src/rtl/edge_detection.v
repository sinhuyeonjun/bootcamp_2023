module edge_detection(
    clk,
    n_rst,
    data,
    result
);

input clk;
input n_rst;
input data;
output result;

reg data_1;
reg data_2;

// 1비트짜리 active low인 경우
always @ (posedge clk or negedge n_rst)
begin
    if(!n_rst)
    begin
        data_1<=1'b0;
        data_2<=1'b0;
    end
    else
    begin
        data_1 <= data;
        data_2 <= data_1;
    end
end
assign result = (data_1 ==1'b1 && data_2==1'b0)?1'b1:1'b0;

endmodule