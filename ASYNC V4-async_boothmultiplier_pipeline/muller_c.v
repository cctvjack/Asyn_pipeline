`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/16 20:30:57
// Design Name: 
// Module Name: muller_c
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


module muller_c(
    input a,
    input b,
    input rst_n,
    output reg z
    );
    always@(*)
    begin
        if(!rst_n)
            z <= 0;
        else
            z <= (a^b)? z:a;
    end
endmodule
