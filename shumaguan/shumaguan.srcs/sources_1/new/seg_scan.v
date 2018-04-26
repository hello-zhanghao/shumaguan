`timescale 1ns / 1ps
`include "Macro.v"
module scan_seg(
input  CLK,
//input  sign,
//input  `bit4 Wans,
//input  `bit4 Thousands,
//input  `bit4 Hundreds,
//input  `bit4 Tens,
//input  `bit4 Ones,
output  reg `bit8 choose,
output  reg `bit8 data
);
reg CLK_10000;
reg  `bit4 Wans=1;
reg  `bit4 Thousands=2;
reg  `bit4 Hundreds=3;
reg  `bit4 Tens=4;
reg  `bit4 Ones=5;
reg  `bit8 choose= 8'b11011111;
reg  `bit4 data_in;

integer count10000=10000;
always @ (posedge CLK)
    begin
        if(count10000>=5000)CLK_10000<=1;
        if(count10000<5000)CLK_10000<=0;
        count10000<=count10000+1;
        if(count10000>=10000)count10000<=0;
    end      

always @ (posedge CLK_10000) begin
    case(choose)
    8'b11011111:
        begin
            choose<=8'b11101111;
            data_in=Ones;
        end
    8'b11101111:
        begin
            choose<=8'b11110111;
            data_in<=Tens;
        end
    8'b11110111:
        begin
            choose<=8'b11111011;
            data_in<=Hundreds;
        end
    8'b11111011:
        begin
            choose<=8'b11111101;
            data_in<=Thousands;
        end
    8'b11111101:
        begin
            choose<=8'b11111110;
            data_in<=Wans;
        end
    8'b11111110:
        begin
            choose<=8'b11011111;
        end
    default:choose<=8'b11111111;
    endcase
end

always @ (*) begin
    if(choose==8'b11011111)
        begin
        if(sign==1)data<=8'b011111111;
        else data<=8'b11111111;
        end
    else
        case(data_in)
            0:data<=8'b11000000; //0
            1:data<=8'b10011111; // 1
            2:data<=8'b00100101; // 2
            3:data<=8'b00001101; // 3
            4:data<=8'b10011001; // 4
            5:data<=8'b01001001; // 5
            6:data<=8'b01000001; // 6
            7:data<=8'b00011111; // 7
            8:data<=8'b00000000; // 8
            9:data<=8'b00011001; // 9
            default:data<=~8'b11111111;//È«Ãð
        endcase
end
      
endmodule
