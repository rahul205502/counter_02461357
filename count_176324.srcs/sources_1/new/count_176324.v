
module count_176324 (
    input clk, rstn, en,
    output [2:0] Q
);

wire [2:0] T;
assign T[2] = ~Q[1] | ~Q[0];
assign T[1] = ~Q[2] & (~Q[1] | ~Q[0]);
assign T[0] = Q[2] | Q[1] & Q[0];

//wire clk_1Hz;

//`ifdef SIMULATION
//    clk_divider #(25_000_000) c1 (clk, rstn, clk_1Hz);
//`else 
//    clk_divider #(1) c1 (clk, rstn, clk_1Hz);
//`endif

TFF f1 (clk, rstn, 1'b0, en, T[2], Q[2]);
TFF f2 (clk, rstn, 1'b0, en, T[1], Q[1]);
TFF f3 (clk, rstn, 1'b1, en, T[0], Q[0]);

endmodule
