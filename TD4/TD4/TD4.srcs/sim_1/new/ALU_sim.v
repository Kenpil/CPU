`timescale 1ns / 100ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/02/2021 12:36:51 AM
// Design Name: 
// Module Name: ALU_sim
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


module ALU_sim();
    reg [3:0] A, Im;
    wire c;
    wire [3:0] sum;
    reg clock;
    
    ALU ALU (A, Im, sum, c);
    
    initial begin
        clock <= 0;
        A <= 4'b0000;
        Im <= 4'b0000;
      #10
        clock <= 1;
        A <= 4'b0101;
        Im <= 4'b1010;
      #10
        clock <= 0;
      #10
        clock <= 1;
        A <= 4'b1101;
        Im <= 4'b1010;
      #10
        clock <= 0;
      #10
        clock <= 1;
        A <= 4'b0001;
        Im <= 4'b0010;
      #10
        clock <= 0;
      #10
        clock <= 1;
        A <= 4'b1111;
        Im <= 4'b1111;
      #10
      $finish;
    end
endmodule
