`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/16 21:59:09
// Design Name: 
// Module Name: stage_four_tb
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


module stage_four_tb;

reg valid_in,ack_in,rst_n;
wire valid_out,ack_out;
reg [2:0] data_in;
wire [2:0] data_out;
always@(valid_out)
    begin
        #3
        ack_in = ~ack_in;
    end
always@(ack_out)
begin
    #5
    data_in = data_in +1;
    valid_in = ~valid_in;
end    
initial begin
    rst_n = 0;
    #10
    rst_n = 1;
    ack_in = 0;
    data_in = 1;
    valid_in = 1;
    

end

stage_4 uut(
        .rst_n(rst_n),
        .valid_in(valid_in),
        .ack_in(ack_in),
        .data_in(data_in),
        .valid_out(valid_out),
        .ack_out(ack_out),
        .data_out(data_out) 
    );
    
endmodule
