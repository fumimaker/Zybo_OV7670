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
input wire CLK,
    input wire RST,
    input wire CAM_PCLK,
    input wire CAM_HREF,
    input wire CAM_VSYNC,
    input wire [7:0] data,
    output reg [11:0] DATA_OUT,
    output reg [18:0] ADDR,
    output reg ENA,
    output reg WENA,
    output wire CAM_XCLK
    );
    
    reg [9:0] HCNT, VCNT;
    reg firstByteEn;


    //アイパッドに書いた波形のアルゴリズムを実装するだけ。 posedge CAM_PCLK
    always @( posedge CLK ) begin
        if (RST) begin
            DATA_OUT <= 12'b0;
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
                    firstByteEn <= 1;
                end
            end
        end
    end
    
    //HREFの立下りで列数をカウント negedge CAM_HREF
    always @(posedge CLK) begin
        if (RST) begin
                HCNT <= 10'd0;
                ADDR <= 19'b0;
        end
        else if (HCNT == 680-1) begin
                HCNT <= 10'b0;
        end
        else begin
            HCNT <= HCNT + 10'd1;
            ADDR <= HCNT + ( VCNT*640 );
        end
    end
    
         //VSYNCの立下りで行数をカウント+HCNTをリセット negedge CAM_VSYNC
    always @(posedge CLK) begin
         if (RST) begin
            VCNT <= 10'd0;
        end
        else if (VCNT==480-1) begin //最終ピクセル
            VCNT <= 10'd0;
        end
        else begin //まだ途中なのでHCNTをリセット
            VCNT <= VCNT + 10'd1;
        end
    end
endmodule
