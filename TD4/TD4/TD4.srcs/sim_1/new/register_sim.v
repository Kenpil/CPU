`timescale 1ns / 100ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/18/2021 12:43:20 AM
// Design Name: 
// Module Name: register_sim
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


module register_sim();
    reg [3:0] inData;
    reg clock, ld_N;
    wire [3:0] outData;
    
    register register(inData, clock, ld_N, outData);
    
    initial begin
        inData <= 4'b0101;
        clock <= 0;
        ld_N <= 0;
      #10
        clock <= 1;
      #10
        inData <= 4'b1010;
        clock <= 0;
      #10
        clock <= 1;
      #10
        clock <= 0;
        ld_N <= 1;
      #10
        inData <= 4'b0101;
        clock <= 1;
      #10
        clock <= 0;
      #10
        clock <= 1;
        ld_N <= 0;
      #10
        clock <= 0;
      $finish;
    end
endmodule
