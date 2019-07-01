`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/06/26 08:08:56
// Design Name: 
// Module Name: fourtwo_compress
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


module fourtwo_compress(
    in0,
    in1,
    in2,
    in3,
    carry,
    sum
    );
    parameter DATA_WIDTH = 13;
    input [DATA_WIDTH-1:0] in0;
    input [DATA_WIDTH-1:0] in1;
    input [DATA_WIDTH-1:0] in2;
    input [DATA_WIDTH-1:0] in3;

    output [15:0] carry;
    output [15:0] sum;
    
    wire tmpsum0,tmpsum1,tmpsum2,tmpsum3,tmpsum4,tmpsum5, tmpsum6, tmpsum7, tmpsum8, tmpsum9, tmpsum10, tmpsum11, tmpsum12, tmpsum13, tmpsum14;
    wire cout01,cout12,cout23,cout34,cout45,cout56, cout67, cout78, cout89, cout910, cout1011, cout1112, cout1213, cout1314, cout1415;
    fulladder a00(
        .in0(in1[0]),
        .in1(1'b0),
        .in2(1'b0),
        .carry(cout01),
        .sum(tmpsum0)
    );
    
    fulladder a01(
        .in0(in0[0]),
        .in1(tmpsum0),
        .in2(1'b0),
        .carry(carry[0]),
        .sum(sum[0])       
    );
    
    fulladder a10(
        .in0(in1[1]),
        .in1(1'b0),
        .in2(1'b0),
        .carry(cout12),
        .sum(tmpsum1)
    );
    
    fulladder a11(
        .in0(in0[1]),
        .in1(tmpsum1),
        .in2(cout01),
        .carry(carry[1]),
        .sum(sum[1])       
    );
    
    fulladder a20(
        .in0(in1[2]),
        .in1(in2[0]),
        .in2(1'b0),
        .carry(cout23),
        .sum(tmpsum2)
    );
    
    fulladder a21(
        .in0(in0[2]),
        .in1(tmpsum2),
        .in2(cout12),
        .carry(carry[2]),
        .sum(sum[2])       
    );
    
    fulladder a30(
        .in0(in1[3]),
        .in1(in2[1]),
        .in2(1'b0),
        .carry(cout34),
        .sum(tmpsum3)
    );
    
    fulladder a31(
        .in0(in0[3]),
        .in1(tmpsum3),
        .in2(cout23),
        .carry(carry[3]),
        .sum(sum[3])       
    );
    
    fulladder a40(
        .in0(in1[4]),
        .in1(in2[2]),
        .in2(in3[0]),
        .carry(cout45),
        .sum(tmpsum4)
    );
    
    fulladder a41(
        .in0(in0[4]),
        .in1(tmpsum4),
        .in2(cout34),
        .carry(carry[4]),
        .sum(sum[4])       
    );
    
    fulladder a50(
        .in0(in1[5]),
        .in1(in2[3]),
        .in2(in3[1]),
        .carry(cout56),
        .sum(tmpsum5)
    );
    
    fulladder a51(
        .in0(in0[5]),
        .in2(cout45),
        .carry(carry[5]),
        .sum(sum[5])
    );
    
    fulladder a60(
        .in0(in1[6]),
        .in1(in2[4]),
        .in2(in3[2]),
        .carry(cout67),
        .sum(tmpsum6)
    );
    
    fulladder a61(
        .in0(in0[6]),
        .in2(cout56),
        .carry(carry[6]),
        .sum(sum[6])
    );
    
    fulladder a70(
        .in0(in1[7]),
        .in1(in2[5]),
        .in2(in3[3]),
        .carry(cout78),
        .sum(tmpsum7)
    );
    
    fulladder a71(
        .in0(in0[7]),
        .in2(cout67),
        .carry(carry[7]),
        .sum(sum[7])
    );
    
    fulladder a80(
        .in0(in1[8]),
        .in1(in2[6]),
        .in2(in3[4]),
        .carry(cout89),
        .sum(tmpsum8)
    );
    
    fulladder a81(
        .in0(in0[8]),
        .in2(cout78),
        .carry(carry[8]),
        .sum(sum[8])
    );
    
    fulladder a90(
        .in0(in1[9]),
        .in1(in2[7]),
        .in2(in3[5]),
        .carry(cout910),
        .sum(tmpsum9)
    );
    
    fulladder a91(
        .in0(in0[9]),
        .in2(cout89),
        .carry(carry[9]),
        .sum(sum[9])
    );
    
    fulladder a100(
        .in0(in1[10]),
        .in1(in2[8]),
        .in2(in3[6]),
        .carry(cout1011),
        .sum(tmpsum10)
    );
    
    fulladder a101(
        .in0(in0[10]),
        .in2(cout910),
        .carry(carry[10]),
        .sum(sum[10])
    );
    
    fulladder a110(
        .in0(in1[11]),
        .in1(in2[9]),
        .in2(in3[7]),
        .carry(cout1112),
        .sum(tmpsum11)
    );
    
    fulladder a111(
        .in0(in0[11]),
        .in2(cout1011),
        .carry(carry[11]),
        .sum(sum[11])
    );
    
    fulladder a120(
        .in0(in1[12]),
        .in1(in2[10]),
        .in2(in3[8]),
        .carry(cout1213),
        .sum(tmpsum12)
    );
    
    fulladder a121(
        .in0(in0[12]),
        .in2(cout1112),
        .carry(carry[12]),
        .sum(sum[12])
    );
    
    fulladder a130(
        .in0(in1[13]),
        .in1(in2[11]),
        .in2(in3[9]),
        .carry(cout1314),
        .sum(tmpsum13)
    );
    
    fulladder a131(
        .in0(in0[13]),
        .in2(cout1213),
        .carry(carry[13]),
        .sum(sum[13])
    );
    
    fulladder a140(
        .in0(in1[14]),
        .in1(in2[12]),
        .in2(in3[10]),
        .carry(cout1415),
        .sum(tmpsum14)
    );
    
    fulladder a141(
        .in0(in0[14]),
        .in2(cout1314),
        .carry(carry[14]),
        .sum(sum[14])
    );

endmodule
