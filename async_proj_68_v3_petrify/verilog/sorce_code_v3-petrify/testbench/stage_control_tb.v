`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/06/08 01:16:48
// Design Name: 
// Module Name: stage_control_tb
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


module stage_control_tb;
reg rst_n,ack_in,req_in;
wire c,p,req_out,ack_out;
initial begin
    rst_n = 0;
    #10;
    rst_n = 1;
    ack_in = 0;
    req_in = 1;
    #10
    ack_in = 1;
    #10;
    req_in = 0;
    #10;
    ack_in = 0;
end    
    
    
stage_control uut(
    .rst_n(rst_n),
    .ack_in(ack_in),
    .ack_out(ack_out),
    .req_in(req_in),
    .req_out(req_out),
    .c(c),
    .p(p)
);
endmodule
