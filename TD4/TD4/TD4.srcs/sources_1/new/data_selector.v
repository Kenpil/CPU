`timescale 1ns / 100ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/12/2021 12:27:47 AM
// Design Name: 
// Module Name: data_selector
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


module data_selector(regA, regB, IN, selA, selB, Y);
    input [3:0] regA, regB, IN;
    input selA, selB;
    output [3:0] Y;
    
    wire [3:0] regA, regB, IN;
    wire selA, selB;
    wire [3:0] Y;
    
    assign Y = select(regA, regB, IN, selA, selB);
    
    function [3:0] select;
        input [3:0] regA, regB, IN;
        input selA, selB;
        
        begin
            if (selA & selB) begin
                select = 4'b0000; // AB=HHならC3=0000
            end else if ((!selA) & selB) begin
                select = IN; // AB=LHならC2=入力ポートIN
            end else if (selA & (!selB)) begin
                select = regB; // AB=HLならregB
            end else begin
                select = regA; // AB=LLならregA
            end
        end
    endfunction 
endmodule
