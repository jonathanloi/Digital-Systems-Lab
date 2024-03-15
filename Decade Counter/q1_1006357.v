`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.03.2024 14:07:32
// Design Name: 
// Module Name: q1_1006357
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


module decade_counter(   
    input clk,
    input rst,
    output reg [3:0] count,
    output reg ten
);


always @ (posedge clk, negedge rst)
    begin
        if(rst)
        begin
            count <= 4'b0000;
            ten <= 1'b0;
        end
        else begin
            if(count ==  4'b1001)
                begin 
                ten <= 1'b1;
                count <= 4'b0000;
                end
            else begin
                ten <= 1'b0;
                count <= count + 1'b1;
            end
        end
    end
endmodule
