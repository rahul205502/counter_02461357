`timescale 1ns / 1ps

module count_02461357_tb;
reg clk, rstn, en;
wire [2:0] Q;

count_02461357 DUT (clk, rstn, en, Q);

always #5 clk = ~clk;

initial begin
    clk = 1'b0;
    rstn = 1'b0;
    en = 1'b0;
    #10; rstn = 1'b1;
    #10; en = 1'b1;
    wait (Q==3'b111);
    en = 1'b0;
    #50;
    en = 1'b1;
    rstn = 1'b0; #10; rstn = 1'b1;
    wait (Q==3'b111);
    #10;
    $finish;
end

endmodule
    