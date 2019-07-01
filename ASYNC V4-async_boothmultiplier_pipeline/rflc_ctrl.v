`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/06/26 10:35:34
// Design Name: 
// Module Name: rflc_ctrl
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


module rflc_ctrl(
    Rin,
    Aout,
    Ain,
    Rout,
    Lt
    );
    input Rin;
    input Ain;
    output Aout;
    output Rout;
    output Lt;
    wire tmplt,rtmplt;
    assign Aout = tmplt;
    assign Lt = tmplt;
    assign Rout = rtmplt;
    
    muller_c c1(
        .a(Rin),
        .b(~rtmplt),
        .z(tmplt)
    );
    muller_c c2(
        .a(tmplt),
        .b(~Ain),
        .z(rtmplt)
    );
    
endmodule
