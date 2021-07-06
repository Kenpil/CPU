`timescale 1ns / 100ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/29/2021 12:25:55 AM
// Design Name: 
// Module Name: TD4_sim
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


module TD4_sim();
    reg clock, reset_N;
    reg [3:0] in;
    wire [3:0] out;

    TD4 TD4 (clock, reset_N, in, out);

    initial begin
        clock <= 0;
        reset_N <= 0;
        in <= 4'b0101;
        #10
          reset_N <= 1;
        #3000
        $finish;
    end

    always #10 begin
        clock <= ~clock;
    end

endmodule
