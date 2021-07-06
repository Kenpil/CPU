`timescale 1ns / 100ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/26/2021 12:33:01 AM
// Design Name: 
// Module Name: TD4
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


module TD4(clock, reset_N, in, out);
    input clock, reset_N;
    input [3:0] in;
    output [3:0] out;

    wire clock;
    wire [3:0] in; // 外部入力
    wire [3:0] out; // 外部出力

    wire [7:0] inst; // 現在の命令
    wire [3:0] instAddr; // 命令のメモリアドレス
    wire [1:0] sel; // セレクト BA
    wire [3:0] ld_N; // ld_N 3210
    wire [3:0] Im; // 即値
    wire [3:0] Y; // データセレクタ出力
    wire [3:0] aluout; // ALU出力
    wire [3:0] regAout; // レジスタA出力
    wire [3:0] regBout; // レジスタB出力
    wire c; // cフラグ

    ALU alu (Y, Im, aluout, c);
    ROM rom (instAddr, inst);    
    decoder decoder (inst, c, sel, ld_N, Im);
    data_selector dsel (regAout, regBout, in, sel[0], sel[1], Y);
    register regA (aluout, reset_N, clock, ld_N[0], regAout);
    register regB (aluout, reset_N, clock, ld_N[1], regBout);
    register regOut (aluout, reset_N, clock, ld_N[2], out);
    PC PC (aluout, reset_N, clock, ld_N[3], instAddr);

endmodule
