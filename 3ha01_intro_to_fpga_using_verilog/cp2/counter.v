module counter (clk, rst, Q);

input clk, rst;
output [3:0] Q;

reg [3:0] tmp;
parameter limit = 9; 

always @(posedge clk or negedge rst) begin

    if (rst == 0)
        tmp <= 0;
    else begin
        tmp  <= tmp + 1;
        if(tmp >= limit)
            tmp <= 0;
    end

end

assign Q = tmp;

endmodule