`timescale 1ns / 100ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/12/2021 12:33:36 AM
// Design Name: 
// Module Name: register
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


module register(inData, reset_N, clock, ld_N, outData);
    input [3:0] inData;
    input clock, reset_N, ld_N;
    output [3:0] outData;
    
    wire [3:0] inData;
    wire clock, reset_N, ld_N;
    reg [3:0] outData;
    
    always@(posedge clock or negedge reset_N) begin
        if (!reset_N) begin
            outData <= 4'b0000;
        end else if(!ld_N) begin
            outData <= inData; // ~LD == L はロード
        end else begin
            outData <= outData; // ~LD == H はストア
        end
    end
endmodule
