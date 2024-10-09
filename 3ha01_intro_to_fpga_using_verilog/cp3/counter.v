module counter (clk, rst, neg, Q);

input clk, rst, neg;
output [3:0] Q;

reg [3:0] tmp;
parameter limit = 9; 

always @(posedge clk or negedge rst) begin

    if (rst == 0)
        tmp <= 0;
    else begin
        
        if (neg == 0) begin
            // DOWN counter
            tmp  <= tmp - 1;
            if(tmp > limit || tmp == 0)
                tmp <= limit;
        end else begin
            // UP counter
            tmp  <= tmp + 1;
            if(tmp >= limit)
                tmp <= 0;
        end

    end

end

assign Q = tmp;

endmodule