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
    output [18:0] ADDR,
    output reg ENA,
    output reg WENA,
    output PCLK
    );
    
    reg [9:0] HCNT, VCNT;
    reg firstByteEn;
    assign PCLK = CAM_PCLK;
    assign ADDR = VCNT + ( HCNT*640 ); 
    
    //アイパッドに書いた波形のアルゴリズムを実装するだけ。
    always @( posedge CAM_PCLK ) begin
        if (RST) begin
            VCNT <= 0;
            DATA_OUT <= 0;
            ENA <= 1;
            WENA <= 0; //まだ書き込み禁止
            firstByteEn <= 1;
        end
        else begin
            if (CAM_HREF) begin
                if (firstByteEn) begin
                    // 7bit{Red4bit + Green上位3ビット} + 00000=12bit
                    DATA_OUT <= {data[7:4], data[2:0], 5'd0}; 
                    firstByteEn <= 0;
                end
                else begin
                    // 7bit{Red4bit + Green上位3ビット} + 5bit{Green1bit + Blue4bit} = 12bit
                    DATA_OUT <= {DATA_OUT[11:5], data[7], data[4:1]}; 
                    ENA <= 1;
                    WENA <= 1; //書き込み許可、次のCAM_PCLKで書き込まれる
                    HCNT <= HCNT + 10'd1;
                    firstByteEn <= 1;
                end
            end
        end
    end
    
    
    
    always @(negedge CAM_VSYNC) begin //VSYNCの立下りで行数をカウント+HCNTをリセット
         if (RST) begin
            VCNT <= 10'd0;
        end
        else begin
            VCNT <= VCNT + 10'd1;
            HCNT <= 0;
        end
    end
endmodule
