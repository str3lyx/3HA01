module top (
    input clk,
    input rst,
    output [7:0] seg,
    output digit
);

wire [3:0] q_bcd;

counter u1(clk, rst, q_bcd);
segment u2(q_bcd, seg, digit);

endmodule