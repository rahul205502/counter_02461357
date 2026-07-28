`timescale 1ns / 1ps

module count_13570246_tb;
reg clk, rstn, en;
wire [2:0] Q;

count_13570246 DUT (clk, rstn, en, Q);

always #5 clk = ~clk;

initial begin
    clk = 1'b0;
    rstn = 1'b0;
    en = 1'b0;
    #10; rstn = 1'b1;
    en = 1'b1;
    wait (Q==3'b110);
    en = 1'b0;
    #50;
    en = 1'b1;
    rstn = 1'b0; #10; rstn = 1'b1;
    wait (Q==3'b110);
    
    $finish;
end

endmodule
    