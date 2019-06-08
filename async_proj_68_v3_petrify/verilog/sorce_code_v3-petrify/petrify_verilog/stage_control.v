`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/06/07 13:17:09
// Design Name: 
// Module Name: stage_control
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


module stage_control(
    input valid_in,
    input ack_in,
    output reg valid_out,
    output reg ack_out,
    output  c,
    output  p,
    input rst_n
    );
    reg csc0;
    assign p = rst_n?ack_in:1'b0;
    assign c = rst_n?ack_out:1'b0;
    always@(*)
    begin
        if(!rst_n)
        begin
            csc0 <= 1'b0;
          

            valid_out <= 1'b0;
            ack_out <= 1'b0;
        end
        else
        begin
            csc0 <= (ack_in*(~valid_in))+csc0*((~valid_in)+ack_in);
            ack_out <= ~csc0;
            valid_out <= ~csc0;
        end
    end
endmodule
