`timescale 1ns / 100ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/25/2021 12:35:29 AM
// Design Name: 
// Module Name: decoder_sim
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


module decoder_sim();
    reg clock;
    reg [7:0] inst;
    reg c;
    wire [1:0] sel;
    wire [3:0] ld_N;
    wire [3:0] Im;

    decoder decoder (inst, c, sel, ld_N, Im);

    initial begin
        clock <= 0;
        c <= 1;
      #10
        clock <= 1;
        inst <= 8'b10110111;
      #10
        clock <= 0;
      #10
        clock <= 1;
        inst <= 8'b00000001;
      #10
        clock <= 0;
      #10
        clock <= 1;
        inst <= 8'b11100001;
      #10
        clock <= 0;
      #10
        c <= 0;
        clock <= 1;
        inst <= 8'b00000001;
      #10
        clock <= 0;
      #10
        clock <= 1;
        inst <= 8'b11100011;
      #10
        clock <= 0;
      #10
        clock <= 1;
        inst <= 8'b10110110;
      #10
        clock <= 0;
      #10
        clock <= 1;
        inst <= 8'b00000001;
      #10
        clock <= 0;
      #10
        clock <= 1;
        inst <= 8'b11100110;
      #10
        clock <= 0;
      #10
        clock <= 1;
        inst <= 8'b00000001;
      #10
        clock <= 0;
      #10
        clock <= 1;
        inst <= 8'b11101000;
      #10
        clock <= 0;
      #10
        clock <= 1;
        inst <= 8'b10110000;
      #10
        clock <= 0;
      #10
        clock <= 1;
        inst <= 8'b10110100;
      #10
        clock <= 0;
      #10
        clock <= 1;
        inst <= 8'b00000001;
      #10
        clock <= 0;
      #10
        clock <= 1;
        inst <= 8'b11101010;
      #10
        clock <= 0;
      #10
        clock <= 1;
        inst <= 8'b10111000;
      #10
        clock <= 0;
      #10
        clock <= 1;
        inst <= 8'b11111111;
      #10
        clock <= 0;
      #10
      $finish;
    end
endmodule
