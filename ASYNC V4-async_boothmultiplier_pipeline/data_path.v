`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/07/01 09:56:44
// Design Name: 
// Module Name: data_path
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


module data_path(
    multicand,
    multier,
    lt1,
    lt2,
    lt3,
    product
    );
    input [7:0] multicand;
    input [7:0] multier;
    input lt1;
    input lt2;
    input lt3;
    output [15:0] product;
    
    wire [8:0] multicand_wire;
    wire [7:0] multier_wire;
    
    stage1_reg sreg1(
        .lt(lt1),
        .multicand(multicand),
        .multier(multier),
        .multicand_out(multicand_wire),
        .multier_out(multier_wire)
    );
    
    wire [12:0] ps0,ps1,ps2,ps3;
    
    booth_decoder(
        .multicand(multicand_wire), 
        .tobedec(multier_wire),
        .partsum0(ps0),
        .partsum1(ps1),
        .partsum2(ps2),
        .partsum3(ps3)
    );
    

endmodule
