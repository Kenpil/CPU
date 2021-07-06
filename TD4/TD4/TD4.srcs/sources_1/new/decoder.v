`timescale 1ns / 100ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/21/2021 11:58:36 PM
// Design Name: 
// Module Name: decoder
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


    module decoder(inst, c, sel, ld_N, Im);
    input [7:0] inst;
    input c;
    output [1:0] sel; // BA
    output [3:0] ld_N; // 3210
    output [3:0] Im;

    wire [7:0] inst;
    wire clock;
    reg [1:0] sel;
    reg [3:0] ld_N;
    reg [3:0] Im;

    always@(inst) begin
        Im <= inst[3:0];

        case (inst[7:4])
            4'b0011: begin // MOV A Im
                sel <= 2'b11;
                ld_N <= 4'b1110;
                end
            4'b0111: begin // MOV B Im
                sel <= 2'b11;
                ld_N <= 4'b1101;
                end
            4'b0001: begin // MOV A B
                sel <= 2'b01;
                ld_N <= 4'b1110;
                end
            4'b0100: begin // MOV B A
                sel <= 2'b00;
                ld_N <= 4'b1101;
                end
            4'b0000: begin // ADD A Im
                sel <= 2'b00;
                ld_N <= 4'b1110;
                end
            4'b0101: begin // ADD B Im
                sel <= 2'b01;
                ld_N <= 4'b1101;
                end
            4'b0010: begin // IN A
                sel <= 2'b10;
                ld_N <= 4'b1110;
                end
            4'b0110: begin // IN B
                sel <= 2'b10;
                ld_N <= 4'b1110;
                end
            4'b1011: begin // OUT Im
                sel <= 2'b11;
                ld_N <= 4'b1011;
                end
            4'b1001: begin // OUT B
                sel <= 2'b01;
                ld_N <= 4'b1011;
                end
            4'b1111: begin // JMP Im
                sel <= 2'b11;
                ld_N <= 4'b0111;
                end
            4'b1110: begin // JNC Im
                if(!c) begin// c=0ならジャンプ
                    sel <= 2'b11;
                    ld_N <= 4'b0111;
                end else begin
                    sel <= 2'b00; // dont care
                    ld_N <= 4'b1111;
                end
                end
        endcase
    end
    
endmodule
