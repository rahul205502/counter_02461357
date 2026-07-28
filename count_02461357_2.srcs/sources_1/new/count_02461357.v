
module count_02461357 (
    input clk, rstn, en,
    output [2:0] Q
);

wire [2:0] T;
assign T[2] = Q[1];
assign T[1] = 1'b1;
assign T[0] = Q[2] & Q[1];

TFF f1 (clk, rstn, en, T[2], Q[2]);
TFF f2 (clk, rstn, en, T[1], Q[1]);
TFF f3 (clk, rstn, en, T[0], Q[0]);

endmodule