`timescale 1ns/1ps
`define T_CLK 10

module testbench();

reg clk;
reg n_rst;
reg [1:0]din;
wire dout;

moore dut(
    .clk(clk),
    .n_rst(n_rst),
    .din(din),
    .dout(dout)
);

always #10 clk = ~clk;

initial begin
    clk = 1'b0; n_rst = 1'b0; din = 2'b00;
    #(`T_CLK * 3.1) n_rst = 1'b1; din = 2'b01;
    #(`T_CLK * 3.1) din = 2'b11;
    #(`T_CLK * 3.1) din = 2'b00;
    #(`T_CLK * 3.1) din = 2'b00;
    #(`T_CLK * 3.1) din = 2'b10;
    #(`T_CLK * 3.1) din = 2'b11;
    #(`T_CLK * 3.1) din = 2'b01;
    #(`T_CLK * 3.1) din = 2'b10;
    #(`T_CLK * 3.1) din = 2'b01;
    #(`T_CLK * 3.1) din = 2'b01;
    #(`T_CLK * 3.1) din = 2'b00;
    #(`T_CLK * 5) $stop;
end
endmodule