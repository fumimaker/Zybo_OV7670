`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/04/21 16:12:06
// Design Name: 
// Module Name: ov7670_IF
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


module ov7670_IF(
    input RST,
    input CAM_PCLK,
    input CAM_HREF,
    input CAM_VSYNC,
    input [7:0] data,
    output reg [11:0] DATA_OUT,
    output reg [18:0] ADDR,
    output reg ENA,
    output reg WENA,
    output CAM_XCLK
    );
    
    reg [9:0] HCNT, VCNT;
    reg firstByteEn;
    assign PCLK = CAM_PCLK;


    //�A�C�p�b�h�ɏ������g�`�̃A���S���Y�����������邾���B
    always @( posedge CAM_PCLK ) begin
        if (RST) begin
            VCNT <= 0;
            DATA_OUT <= 0;
            ENA <= 1;
            WENA <= 0; //�܂��������݋֎~
            firstByteEn <= 1;
            
        end
        else begin
            if (CAM_HREF) begin
                if (firstByteEn) begin
                    // 7bit{Red4bit + Green���3�r�b�g} + 00000=12bit
                    DATA_OUT <= {data[7:4], data[2:0], 5'd0}; 
                    firstByteEn <= 0;
                end
                else begin
                    // 7bit{Red4bit + Green���3�r�b�g} + 5bit{Green1bit + Blue4bit} = 12bit
                    DATA_OUT <= {DATA_OUT[11:5], data[7], data[4:1]}; 
                    ENA <= 1;
                    WENA <= 1; //�������݋��A����CAM_PCLK�ŏ������܂��
                    firstByteEn <= 1;
                end
            end
        end
    end
    
    //HREF�̗�����ŗ񐔂��J�E���g
    always @(negedge CAM_HREF) begin
        if (RST) begin
                HCNT <= 10'd0;
                ADDR <= 0;
        end
        else if (HCNT == 680-1) begin
                HCNT <= 0;
        end
        else begin
            HCNT <= HCNT + 10'd1;
            ADDR <= HCNT + ( VCNT*640 );
        end
    end
    
         //VSYNC�̗�����ōs�����J�E���g+HCNT�����Z�b�g
    always @(negedge CAM_VSYNC) begin
         if (RST) begin
            VCNT <= 10'd0;
        end
        else if (VCNT==480-1) begin //�ŏI�s�N�Z��
            VCNT <= 0;
        end
        else begin //�܂��r���Ȃ̂�HCNT�����Z�b�g
            VCNT <= VCNT + 10'd1;
        end
    end
endmodule
