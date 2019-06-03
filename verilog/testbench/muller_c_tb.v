`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/16 20:37:34
// Design Name: 
// Module Name: muller_c_tb
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


module muller_c_tb;
reg a,b;
wire z;
initial begin
    a = 1'b0;
    b = 1'b0;
    #10;
    a = 1'b0;
    b = 1'b1;
    #10;    
    a = 1'b1;
    b = 1'b0;
    #10;    
    a = 1'b1;
    b = 1'b1;
    #10;  
    a = 1'b0;
    b = 1'b1;
    #10;    
    a = 1'b1;
    b = 1'b0;
    #10;  
    a = 1'b0;
    b = 1'b0;
end

muller_c uut(
    .a(a),
    .b(b),
    .z(z)
);
endmodule
