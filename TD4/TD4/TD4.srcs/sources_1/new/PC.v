`timescale 1ns / 100ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/06/2021 11:14:14 PM
// Design Name: 
// Module Name: PC
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


module PC(inData, reset_N, clock, ld_N, outData);
    input [3:0] inData;
    input clock, reset_N, ld_N;
    output [3:0] outData;
    
    wire [3:0] inData;
    wire clock, reset_N, ld_N;
    reg [3:0] outData;
    reg [3:0] cnt = 4'b0000;
    
    always@(posedge clock or negedge reset_N) begin
        if (!reset_N) begin
            cnt <= 4'b0000;
        end else if(!ld_N) begin
            cnt <= inData; // ~LD == L はロード
            outData <= cnt;
        end else begin
            cnt <= cnt + 1; // ~LD == H はストア
        end
        assign outData = cnt;
    end
endmodule
