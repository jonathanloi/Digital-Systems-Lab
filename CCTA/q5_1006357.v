`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.03.2024 22:12:10
// Design Name: 
// Module Name: q5_1006357
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


module CCTA(
        input [3:0] A,
        input [3:0] B,
        input [3:0] C,
        input rst,
        input ctrl,
        output [4:0] q
);

reg[4:0]q_n;
reg rst_n;
assign q = q_n;

always @(rst,ctrl,A,B,C) begin
    case(ctrl)
        1'b0 : q_n <= A + B;
        1'b1 : q_n <= A - C;
    endcase
if(rst == 1'b1)begin
        q_n <= 0;
    end
end

endmodule