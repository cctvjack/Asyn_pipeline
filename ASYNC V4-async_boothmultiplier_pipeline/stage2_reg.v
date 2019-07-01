`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/07/01 09:27:50
// Design Name: 
// Module Name: stage2_reg
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


module stage2_reg(
    in0,
    in1,
    out0,
    out1,
    lt
    );
    parameter DATA_WIDTH = 13;
    input lt;
    input [DATA_WIDTH-1:0] in0;
    input [DATA_WIDTH-1:0] in1;
    output [DATA_WIDTH-1:0] out0;
    output [DATA_WIDTH-1:0] out1;
    reg [DATA_WIDTH-1:0] out_reg0,out_reg1;
    assign out0 = out_reg0;
    assign out1 = out_reg1;
    always@(posedge lt)
    begin
        out_reg0 <= in0;
        out_reg1 <= in1;
    end
endmodule
