`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/06/26 08:26:52
// Design Name: 
// Module Name: booth_decoder
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


module booth_decoder(
    multicand, // already sign bit extended
    tobedec,
    partsum0,
    partsum1,
    partsum2,
    partsum3
    );
    parameter MULTICAND_WIDTH = 9;
    parameter PARTSUM_WIDTH = 13;
    reg s0,s1,s2,s3;
    reg multicand2;
    input [MULTICAND_WIDTH-1:0] multicand;
    input [8-1:0] tobedec;
    output reg [PARTSUM_WIDTH-1:0] partsum0,partsum1,partsum2,partsum3;
    always@(*)
    begin
        multicand2 <= 2*multicand;
        case(tobedec[1:0])  //last bit is 0
        2'b000:
        begin
           partsum0 <= {{1'b0},{3'b100},{MULTICAND_WIDTH{1'b0}}};
           s1 <= 0; 
        end 
        2'b01:
        begin
            partsum0 <= {{1'b0},{~multicand[MULTICAND_WIDTH-2]},{multicand[MULTICAND_WIDTH-2]},{multicand[MULTICAND_WIDTH-2]},multicand};
            s0 <= 0; 
        end 
        2'b10:
        begin
            partsum0 <= {{1'b0},{multicand[MULTICAND_WIDTH-2]},~{multicand[MULTICAND_WIDTH-2]},~{multicand[MULTICAND_WIDTH-2]},~multicand2};
            s0 <= 1;
        end 
        2'b11:
        begin
            partsum0 <= {{1'b0},{multicand[MULTICAND_WIDTH-2]},~{multicand[MULTICAND_WIDTH-2]},~{multicand[MULTICAND_WIDTH-2]},~multicand};
            s0 <= 1; 
        end  
        endcase
        case(tobedec[3:1])
        3'b000: //s=0 e=1
        begin
            partsum1 <= {{2'b11},{MULTICAND_WIDTH{1'b0}}}<<2+s0;
            s1 <= 0;
        end
        3'b001://
        begin
            partsum1 <= {{1'b1},{~multicand[MULTICAND_WIDTH-2]},multicand}<<2+s0;
            s1 <= 0;
        end 
        3'b010:
        begin
            partsum1 <= {{1'b1},{~multicand[MULTICAND_WIDTH-2]},multicand}<<2+s0;
            s1 <= 0;        
        end 
        3'b011:
        begin
            partsum1 <= {{1'b1},{~multicand[MULTICAND_WIDTH-2]},multicand2}<<2+s0;
            s1 <= 0;        
        end
        3'b100:
        begin
            partsum1 <= {{1'b1},{multicand[MULTICAND_WIDTH-2]},~multicand2}<<2+s0;
            s1 <= 1; 
        end 
        3'b101:
        begin
            partsum1 <= {{1'b1},{multicand[MULTICAND_WIDTH-2]},~multicand}<<2+s0;
            s1 <= 1; 
        end
        3'b110:
        begin
            partsum1 <= {{1'b1},{multicand[MULTICAND_WIDTH-2]},~multicand}<<2+s0;
            s1 <= 1; 
        end
        3'b111:
        begin
            partsum1 <= {{2'b10},~{MULTICAND_WIDTH{1'b0}}}<<2+s0;
            s1 <= 1; 
        end
        endcase
        
//        -------------------------------------------------------------
        case(tobedec[5:3])
        3'b000: //s=0 e=1
        begin
            partsum2 <= {{2'b11},{MULTICAND_WIDTH{1'b0}}}<<2+s1;
            s2 <= 0;
        end
        3'b001://
        begin
            partsum2 <= {{1'b1},{~multicand[MULTICAND_WIDTH-2]},multicand}<<2+s1;
            s2 <= 0;
        end 
        3'b010:
        begin
            partsum2 <= {{1'b1},{~multicand[MULTICAND_WIDTH-2]},multicand}<<2+s1;
            s2 <= 0;        
        end 
        3'b011:
        begin
            partsum2 <= {{1'b1},{~multicand[MULTICAND_WIDTH-2]},multicand2}<<2+s1;
            s2 <= 0;        
        end
        3'b100:
        begin
            partsum2 <= {{1'b1},{multicand[MULTICAND_WIDTH-2]},~multicand2}<<2+s1;
            s2 <= 1; 
        end 
        3'b101:
        begin
            partsum2 <= {{1'b1},{multicand[MULTICAND_WIDTH-2]},~multicand}<<2+s1;
            s2 <= 1; 
        end
        3'b110:
        begin
            partsum2 <= {{1'b1},{multicand[MULTICAND_WIDTH-2]},~multicand}<<2+s1;
            s2 <= 1; 
        end
        3'b111:
        begin
            partsum2 <= {{2'b10},~{MULTICAND_WIDTH{1'b0}}}<<2+s1;
            s2 <= 1; 
        end
        endcase
        
        
        //        -------------------------------------------------------------
        case(tobedec[7:5])
        3'b000: //s=0 e=1
        begin
            partsum3 <= {{1'b1},{MULTICAND_WIDTH{1'b0}}}<<2+s2;
            s3 <= 0;
        end
        3'b001://
        begin
            partsum3 <= {{~multicand[MULTICAND_WIDTH-2]},multicand}<<2+s2;
            s3 <= 0;
        end 
        3'b010:
        begin
            partsum3 <= {{~multicand[MULTICAND_WIDTH-2]},multicand}<<2+s2;
            s3 <= 0;        
        end 
        3'b011:
        begin
            partsum3 <= {{~multicand[MULTICAND_WIDTH-2]},multicand2}<<2+s2;
            s3 <= 0;        
        end
        3'b100:
        begin
            partsum3 <= {{multicand[MULTICAND_WIDTH-2]},~multicand2}<<2+s2;
            s3 <= 1; 
        end 
        3'b101:
        begin
            partsum3 <= {{multicand[MULTICAND_WIDTH-2]},~multicand}<<2+s2;
            s3 <= 1; 
        end
        3'b110:
        begin
            partsum3 <= {{multicand[MULTICAND_WIDTH-2]},~multicand}<<2+s2;
            s3 <= 1; 
        end
        3'b111:
        begin
            partsum3 <= {{1'b0},~{MULTICAND_WIDTH{1'b0}}}<<2+s2;
            s3 <= 1; 
        end
        endcase
        partsum3 <= partsum3+s3;
    end
endmodule
