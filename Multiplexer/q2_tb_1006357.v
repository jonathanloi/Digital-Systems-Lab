`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.03.2024 19:43:33
// Design Name: 
// Module Name: q2_tb_1006357
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


module multiplexer_tb_();

    reg [1:0] A;
    reg [1:0] B;
    reg [1:0] C;
    reg [1:0] D;
    reg [1:0] SEL;
    wire [1:0] X;
    
multiplexer multiplexer_u1(
    .A(A),
    .B(B),
    .C(C),
    .D(D),
    .SEL(SEL),
    .X(X)
);

initial begin
    A = 2'b00;
    B = 2'b01;
    C = 2'b10;
    D = 2'b11;
    SEL = 2'b00;
    #10 SEL = 2'b01;
    #10 SEL = 2'b10;
    #10 SEL = 2'b11;
    #10 $finish;
end
endmodule
