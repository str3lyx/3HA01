module clock_divider_to_1Hz (clk, f_out);

input clk;
output f_out;

parameter max_count2 = 25_000_000;
reg [21:0] counter;

always @(posedge clk) begin
    if (counter == 0)
        counter <= max_count2 - 1;
    else
        counter <= counter - 1;
end

reg f_out;

always @(posedge clk) begin
    if (counter == 0)
        f_out <= ~f_out;
end

endmodule