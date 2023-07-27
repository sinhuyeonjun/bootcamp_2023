module T(
    clk,
    n_rst,
    in_a,
    out_a
);

input clk;
input n_rst;
input in_a;
output out_a;
reg out_a;

always@(posedge clk or negedge n_rst)
    if(!n_rst) begin
        out_a <= 1'b0;
    end
    else begin
        if(in_a == 0) begin
            out_a <= 1'b1;
        end
        else if (in_a == 1) begin
            out_a <= 1'b0;
        end
    end

endmodule