`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/06/26 09:49:14
// Design Name: 
// Module Name: fad_array
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


module fad_array(
    a,
    b,
    res
    );
    parameter DATA_WIDTH = 32;
    input [DATA_WIDTH-1:0] a;
    input [DATA_WIDTH-1:0] b;
    output [DATA_WIDTH-1:0] res;
    wire tmp01,tmp12,tmp23, tmp34, tmp45, tmp56, tmp67, tmp78, tmp89, tmp910, tmp1011, tmp1112, tmp1213, tmp1314, tmp1415, tmp1516, tmp1617, tmp1718, tmp1819, tmp1920, tmp2021, tmp2122, tmp2223, tmp2324, tmp2425, tmp2526, tmp2627, tmp2728, tmp2829, tmp2930, tmp3031,tmp3132;
    fulladder a0(
        .in1(a[0]),
        .in2(b[0]),
        .in3(1'b0),
        .carry(tmp01),
        .sum(res[0])
    );

    fulladder a1(
        .in1(a[1]),
        .in2(b[1]),
        .in3(tmp01),
        .carry(tmp12),
        .sum(res[1])
        );
    
    fulladder a2(
        .in1(a[2]),
        .in2(b[2]),
        .in3(tmp12),
        .carry(tmp23),
        .sum(res[2])
        );
    
    fulladder a3(
        .in1(a[3]),
        .in2(b[3]),
        .in3(tmp23),
        .carry(tmp34),
        .sum(res[3])
        );
    
    fulladder a4(
        .in1(a[4]),
        .in2(b[4]),
        .in3(tmp34),
        .carry(tmp45),
        .sum(res[4])
        );
    
    fulladder a5(
        .in1(a[5]),
        .in2(b[5]),
        .in3(tmp45),
        .carry(tmp56),
        .sum(res[5])
        );
    
    fulladder a6(
        .in1(a[6]),
        .in2(b[6]),
        .in3(tmp56),
        .carry(tmp67),
        .sum(res[6])
        );
    
    fulladder a7(
        .in1(a[7]),
        .in2(b[7]),
        .in3(tmp67),
        .carry(tmp78),
        .sum(res[7])
        );
    
    fulladder a8(
        .in1(a[8]),
        .in2(b[8]),
        .in3(tmp78),
        .carry(tmp89),
        .sum(res[8])
        );
    
    fulladder a9(
        .in1(a[9]),
        .in2(b[9]),
        .in3(tmp89),
        .carry(tmp910),
        .sum(res[9])
        );
    
    fulladder a10(
        .in1(a[10]),
        .in2(b[10]),
        .in3(tmp910),
        .carry(tmp1011),
        .sum(res[10])
        );
    
    fulladder a11(
        .in1(a[11]),
        .in2(b[11]),
        .in3(tmp1011),
        .carry(tmp1112),
        .sum(res[11])
        );
    
    fulladder a12(
        .in1(a[12]),
        .in2(b[12]),
        .in3(tmp1112),
        .carry(tmp1213),
        .sum(res[12])
        );
    
    fulladder a13(
        .in1(a[13]),
        .in2(b[13]),
        .in3(tmp1213),
        .carry(tmp1314),
        .sum(res[13])
        );
    
    fulladder a14(
        .in1(a[14]),
        .in2(b[14]),
        .in3(tmp1314),
        .carry(tmp1415),
        .sum(res[14])
        );
    
    fulladder a15(
        .in1(a[15]),
        .in2(b[15]),
        .in3(tmp1415),
        .carry(tmp1516),
        .sum(res[15])
        );
    
//    fulladder a16(
//        .in1(a[16]),
//        .in2(b[16]),
//        .in3(tmp1516),
//        .carry(tmp1617),
//        .sum(res[16])
//        );
    
//    fulladder a17(
//        .in1(a[17]),
//        .in2(b[17]),
//        .in3(tmp1617),
//        .carry(tmp1718),
//        .sum(res[17])
//        );
    
//    fulladder a18(
//        .in1(a[18]),
//        .in2(b[18]),
//        .in3(tmp1718),
//        .carry(tmp1819),
//        .sum(res[18])
//        );
    
//    fulladder a19(
//        .in1(a[19]),
//        .in2(b[19]),
//        .in3(tmp1819),
//        .carry(tmp1920),
//        .sum(res[19])
//        );
    
//    fulladder a20(
//        .in1(a[20]),
//        .in2(b[20]),
//        .in3(tmp1920),
//        .carry(tmp2021),
//        .sum(res[20])
//        );
    
//    fulladder a21(
//        .in1(a[21]),
//        .in2(b[21]),
//        .in3(tmp2021),
//        .carry(tmp2122),
//        .sum(res[21])
//        );
    
//    fulladder a22(
//        .in1(a[22]),
//        .in2(b[22]),
//        .in3(tmp2122),
//        .carry(tmp2223),
//        .sum(res[22])
//        );
    
//    fulladder a23(
//        .in1(a[23]),
//        .in2(b[23]),
//        .in3(tmp2223),
//        .carry(tmp2324),
//        .sum(res[23])
//        );
    
//    fulladder a24(
//        .in1(a[24]),
//        .in2(b[24]),
//        .in3(tmp2324),
//        .carry(tmp2425),
//        .sum(res[24])
//        );
    
//    fulladder a25(
//        .in1(a[25]),
//        .in2(b[25]),
//        .in3(tmp2425),
//        .carry(tmp2526),
//        .sum(res[25])
//        );
    
//    fulladder a26(
//        .in1(a[26]),
//        .in2(b[26]),
//        .in3(tmp2526),
//        .carry(tmp2627),
//        .sum(res[26])
//        );
    
//    fulladder a27(
//        .in1(a[27]),
//        .in2(b[27]),
//        .in3(tmp2627),
//        .carry(tmp2728),
//        .sum(res[27])
//        );
    
//    fulladder a28(
//        .in1(a[28]),
//        .in2(b[28]),
//        .in3(tmp2728),
//        .carry(tmp2829),
//        .sum(res[28])
//        );
    
//    fulladder a29(
//        .in1(a[29]),
//        .in2(b[29]),
//        .in3(tmp2829),
//        .carry(tmp2930),
//        .sum(res[29])
//        );
    
//    fulladder a30(
//        .in1(a[30]),
//        .in2(b[30]),
//        .in3(tmp2930),
//        .carry(tmp3031),
//        .sum(res[30])
//        );
    
//    fulladder a31(
//        .in1(a[31]),
//        .in2(b[31]),
//        .in3(tmp3031),
//        .carry(tmp3132),
//        .sum(res[31])
//        );
        
endmodule
