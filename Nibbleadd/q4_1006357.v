`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.03.2024 20:36:24
// Design Name: 
// Module Name: q4_1006357
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module nibbleadd(
    input [7:0]A,
    input [7:0]B,
    input ctrl,
    output reg [4:0]q
);
    

always @(*)begin
    case(ctrl)
        1'b0 : q <= A[3:0] + B[3:0];
        1'b1 : q <= A[7:4] + B[7:4];
    endcase
end
endmodule
