`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/06/26 10:46:08
// Design Name: 
// Module Name: rflc_decoder
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


module rflc_decoder(
    input rout,
    output rin
    );
    wire tmp1,tmp0,tmpm;
    reg r0,r1;
    delay_long dl(
        .in(rout),
        .out(tmp1)
    );
    delay_short ds(
        .in(rout),
        .out(tmp0)
    );
    mux m(
        .in1(tmp1),
        .in0(tmp0),
        .res(rin),
        .m(tmpm)
    );
    always@(posedge rout)
    begin
        r0 <= ~r0;
    end
    always@(posedge ~rout)
    begin
        r1 <= ~r1;
    end
    assign tmpm = ~(r1^r0);
endmodule
