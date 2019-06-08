`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/06/07 13:29:55
// Design Name: 
// Module Name: stage
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


module stage(
    rst_n,
    ack_in,
    ack_out,
    valid_in,
    valid_out,
    data_in,
    data_out
    );
    input rst_n;
    parameter DATA_WIDTH = 4;
    input ack_in;
    input valid_in;
    output valid_out;
    output ack_out;
    input [DATA_WIDTH-1:0] data_in;
    output [DATA_WIDTH-1:0] data_out;
    wire c,p;
    stage_control co(
        .rst_n(rst_n),
        .ack_in(ack_in),
        .ack_out(ack_out),
        .valid_in(valid_in),
        .valid_out(valid_out),
        .c(c),
        .p(p)
    );
    
    stage_data da(
        .rst_n(rst_n),
        .data_in(data_in),
        .data_out(data_out),
        .c(c),
        .p(p)
        );
endmodule
