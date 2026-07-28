
module TFF (
    input clk, rstn, en, T,
    output reg Q
);

always @(posedge clk or negedge rstn) begin
    if (!rstn) Q <= 1'b0;
    else if (en) Q <= (T) ? ~Q : Q;
end

endmodule
        
