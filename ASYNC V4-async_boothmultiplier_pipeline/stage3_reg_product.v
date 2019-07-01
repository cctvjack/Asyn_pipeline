`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/07/01 09:38:45
// Design Name: 
// Module Name: stage3_reg_product
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


module stage3_reg_product(
    lt,
    in,
    out
    );
    parameter DATA_WIDTH = 16;
    input lt;
    input [DATA_WIDTH-1:0] in;
    output [DATA_WIDTH-1:0] out;
    reg [DATA_WIDTH-1:0] out_reg;
    assign out = out_reg;
    always@(posedge lt)
    begin
        out_reg  <= in;
    end
endmodule
