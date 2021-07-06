`timescale 1ns / 100ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/26/2021 12:00:05 AM
// Design Name: 
// Module Name: ROM
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


module ROM(addr, inst);
    input [3:0] addr;
    output [7:0] inst;

    wire [3:0] addr;
    reg [7:0] inst;

    always @ (addr) begin
        case (addr)
            4'b0000: inst <= 8'b10110111; // OUT 0111
            4'b0001: inst <= 8'b00000001; // ADD A, 0001
            4'b0010: inst <= 8'b11100001; // JNC 0001
            4'b0011: inst <= 8'b00000001; // ADD A, 0001
            4'b0100: inst <= 8'b11100011; // JNC 0011
            4'b0101: inst <= 8'b10110110; // OUT 0110
            4'b0110: inst <= 8'b00000001; // ADD A, 0001
            4'b0111: inst <= 8'b11100110; // JNC 0110
            4'b1000: inst <= 8'b00000001; // ADD A, 0001
            4'b1001: inst <= 8'b11101000; // JNC 1000
            4'b1010: inst <= 8'b10110000; // OUT 0000
            4'b1011: inst <= 8'b10110100; // OUT 0100
            4'b1100: inst <= 8'b00000001; // ADD 0001
            4'b1101: inst <= 8'b11101010; // JNC 1010
            4'b1110: inst <= 8'b10111000; // OUT 1000
            4'b1111: inst <= 8'b11111111; // JMP 1111
        endcase
    end
endmodule
