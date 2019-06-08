`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/06/07 13:26:18
// Design Name: 
// Module Name: stage_data
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


module stage_data(
    data_in,
    data_out,
    c,
    p,
    rst_n
    );
    parameter DATA_WIDTH = 4;
    input [DATA_WIDTH-1:0] data_in;
    input c;
    input p;
    input rst_n;
    output reg [DATA_WIDTH-1:0] data_out;
    always@(*)
    begin
        if(!rst_n)
        begin
            data_out <= {DATA_WIDTH{1'b0}};
        end
        else
        begin
            data_out <= (c^p)?data_out:data_in;
        end
    end
endmodule
