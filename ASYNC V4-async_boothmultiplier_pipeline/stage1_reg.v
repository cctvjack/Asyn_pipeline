`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/06/26 10:23:24
// Design Name: 
// Module Name: stage1_reg
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


module stage1_reg(
    input lt,
    input [7:0] multicand,
    input [7:0] multier,
    output  [8:0] multicand_out,
    output  [7:0] multier_out
    );
    reg [7:0] multicand_reg,multier_reg;
    assign multicand_out = {multicand_reg,{1'b0}};
    assign multier_out = multier_reg;
    always@(posedge lt)
    begin
        multicand_reg <= multicand;
        multier_reg <= multier;
    end
endmodule
