module segment (bcd, seg, digit);

input [3:0] bcd;
output [7:0] seg;
output digit;

reg [7:0] tmp;

always @(*) begin
    case (bcd)
      4'b0000: tmp <= 8'b0011_1111;				// display 0
      4'b0001: tmp <= 8'b0000_0110;				// display 1
      4'b0010: tmp <= 8'b0101_1011;				// display 2
      4'b0011: tmp <= 8'b0100_1111;				// display 3
      4'b0100: tmp <= 8'b0110_0110;				// display 4
      4'b0101: tmp <= 8'b0110_1101;				// display 5
      4'b0110: tmp <= 8'b0111_1101;				// display 6
      4'b0111: tmp <= 8'b0000_0111;				// display 7
      4'b1000: tmp <= 8'b0111_1111;				// display 8
      4'b1001: tmp <= 8'b0110_1111;				// display 9
    default: tmp <= 8'b0100_0000;
    endcase
end

assign digit = 1;
assign seg = tmp;

endmodule