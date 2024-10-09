module counter (
    input clk,
    input rst,
    output [3:0] Q
);

reg [3:0] tmp;

always @(posedge clk or negedge rst) begin

    if (rst == 0)
        tmp <= 0;
    else
        tmp  <= tmp + 1;

end

assign Q = tmp;

endmodule