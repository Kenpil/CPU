`timescale 1ns / 100ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/11/2021 12:46:23 AM
// Design Name: 
// Module Name: ALU
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


module ALU(A, Im, sum, c);
    input [3:0] A;
    input [3:0] Im;
    output [3:0] sum;
    output c;
    wire [3:0] A, Im;
    wire [3:0] sum;
    wire c;
    
    assign {c,sum} = A + Im;
    
endmodule
