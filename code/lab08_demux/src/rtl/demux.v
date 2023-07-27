module demux(

    in_a,
    s,
    out_a
);

input in_a;
input [2:0] s;
output [7:0] out_a;
reg [7:0] out_a;

always @(*)
    if(s == 3'b000) begin
        out_a = 8'b0000_00000;
        out_a[0] = in_a;
    end
    else if(s == 3'b001) begin
        out_a = 8'b0000_00000;
        out_a[1] = in_a;
    end
    else if(s == 3'b010) begin
        out_a = 8'b0000_00000;
        out_a[2] = in_a;
    end
    else if(s == 3'b011) begin
        out_a = 8'b0000_00000;
        out_a[3] = in_a;
    end
    else if(s == 3'b100) begin
        out_a = 8'b0000_00000;
        out_a[4] = in_a;
    end
    else if(s == 3'b101) begin
        out_a = 8'b0000_00000;
        out_a[5] = in_a;
    end
    else if(s == 3'b110) begin
        out_a = 8'b0000_00000;
        out_a[6] = in_a;
    end
    else if(s == 3'b111) begin
        out_a = 8'b0000_00000;
        out_a[7] = in_a;
    end
endmodule