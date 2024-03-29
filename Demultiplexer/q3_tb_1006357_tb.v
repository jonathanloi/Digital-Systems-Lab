`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.03.2024 22:59:17
// Design Name: 
// Module Name: q3_tb_1006357_tb
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


module demultiplexer_tb();

    reg[1:0]A;
    reg[1:0]SEL;
    wire[1:0]W;
    wire[1:0]X;
    wire[1:0]Y;
    wire[1:0]Z;
    

demultiplexer INST1 (

    .A(A),
    .SEL(SEL),
    .W(W),
    .X(X),
    .Y(Y),
    .Z(Z)
    
);

initial 
begin 

    A = 2'b00;SEL = 2'b00;
    #10

    A = 2'b01;SEL = 2'b01;
    #10

    A = 2'b01;SEL = 2'b10;
    #10

    A = 2'b11;SEL = 2'b11;
    #10

    $finish;

end


endmodule