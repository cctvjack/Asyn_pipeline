`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/31 20:49:48
// Design Name: 
// Module Name: delay
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


module delay(
    valid_in,
    ack_in,
    data_in,
    valid_out,
    ack_out,
    data_out
    );
    parameter DATA_WIDTH = 3;
    input valid_in;
    input ack_in;
    input [DATA_WIDTH-1:0] data_in;
    output reg valid_out;
    output reg ack_out;
    output reg [DATA_WIDTH-1:0] data_out;
    always@(*)
    begin
        #5;
        valid_out <= valid_in;
        ack_out <= ack_in;
        data_out <= data_in;
    end
endmodule
