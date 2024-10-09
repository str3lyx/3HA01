module top (clk, rst, seg, digit);

input clk, rst;
output [7:0] seg;
output digit;

wire [3:0] q_bcd;
wire clk_1Hz;

counter u1(clk_1Hz, rst, q_bcd);
segment u2(q_bcd, seg, digit);
clock_divider_to_1Hz u3(clk, clk_1Hz);

endmodule