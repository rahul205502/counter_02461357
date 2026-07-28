
module TFF (
    input clk, rstn, rst_state, en, T,
    output reg Q
);

always @(posedge clk or negedge rstn) begin
    if (!rstn) Q <= rst_state;
    else if (en) Q <= (T) ? ~Q : Q;
end

endmodule
        
