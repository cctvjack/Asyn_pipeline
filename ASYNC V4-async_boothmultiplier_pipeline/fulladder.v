`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/06/26 08:10:19
// Design Name: 
// Module Name: fulladder
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


module fulladder(
    in0,
    in1,
    in2,
    carry,
    sum
    );
    input in0;
    input in1;
    input in2;
    output carry;
    output sum;
    assign sum = in0^in1^in2;
    assign carry = in0&in1+in2&(in0+in1);    
endmodule
