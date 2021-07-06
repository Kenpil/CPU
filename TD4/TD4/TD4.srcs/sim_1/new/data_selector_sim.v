`timescale 1ns / 100ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/16/2021 12:20:58 AM
// Design Name: 
// Module Name: data_selector_sim
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


module data_selector_sim();
    reg [3:0] regA, regB, IN;
    wire [3:0] Y;
    reg selA, selB;
    
    data_selector data_selector (regA, regB, IN, selA, selB, Y);
    
    initial begin
        regA <= 4'b0101;
        regB <= 4'b1010;
        IN <= 4'b1001;
        selA <= 0;
        selB <= 0;
      #10
        selA <= 0;
        selB <= 0;
      #10
        selA <= 1;
        selB <= 0;
      #10
        selA <= 0;
        selB <= 1;
      #10
        selA <= 1;
        selB <= 1;
      #10  
      $finish;
    end
endmodule
