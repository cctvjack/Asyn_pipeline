`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/06/07 13:39:46
// Design Name: 
// Module Name: stage_tb
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


module stage_tb;
    reg rst_n,ack_in,req_in;
    reg [4-1:0] data_in;
    wire [4-1:0] data_out;
    wire ack_out,req_out;
    always@(ack_out)
    begin
        #2
        req_in = ~req_in;
        data_in = data_in +1;
    end
    always@(req_out)
    begin
        #3
        ack_in = ~ack_in;
    end
    initial begin
    rst_n = 0;
    #10;
    rst_n = 1;
    ack_in = 0;
    req_in = 1;
    data_in = 1;
    
    end
stage uut(
    .rst_n(rst_n),
    .ack_in(ack_in),
    .ack_out(ack_out),
    .req_in(req_in),
    .req_out(req_out),
    .data_in(data_in),
    .data_out(data_out)
    );
endmodule
