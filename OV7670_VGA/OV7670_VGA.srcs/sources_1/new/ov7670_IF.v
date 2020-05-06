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
    output wire [18:0] ADDR,
    output reg [11:0] DATA_OUT,
    output reg ENA,
    output reg WENA,
    output wire CAM_XCLK
    );
    
    reg [18:0] address;
    reg [18:0] address_next;
    reg [1:0] wr_hold;
    reg [15:0] data_in;
    reg [7:0] buff;
    assign ADDR = address;

    //アイパッドに書いた波形のアルゴリズムを実装するだけ。 posedge CAM_PCLK
    always @( posedge CAM_PCLK ) begin
        if(RST) begin
            address <= 19'd0;
            address_next <= 19'd0;
            wr_hold <= 2'd0;
            WENA <= 0;
            ENA <= 1;
        end else begin
            if(CAM_VSYNC) begin
                address <= 19'd0;
                address_next <= 19'd0;
                wr_hold <= 2'd0;
            end else begin
                DATA_OUT <= {data_in[15:12], data_in[10:7], data_in[4:1]};
                address <= address_next;
                WENA <= wr_hold[1];
                wr_hold <= {wr_hold[0], (CAM_HREF & ~wr_hold[0])};
                data_in <= {data_in[7:0], data};
                if (wr_hold) begin
                    address_next <= address_next + 1;
                end
            end
        end
    end 
        
        /*else begin
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
                    if (HCNT == 680-1) begin
                        HCNT <= 10'b0;
                    end
                    else begin
                        HCNT <= HCNT + 10'd1;
                        ADDR <= HCNT + ( VCNT*640 );
                    end
                end
            end
        end
        if (CAM_VSYNC) begin
            if (VCNT==480-1) begin //最終ピクセル
                VCNT <= 10'd0;
                ADDR <= 19'd0;
            end
            else begin //まだ途中なのでHCNTをリセット
                VCNT <= VCNT + 10'd1;
            end
        end
    end*/
    
/*
    //HREFの立下りで列数をカウント negedge CAM_HREF
    always @(posedge PCLK) begin
        if (RST) begin
                HCNT <= 10'd0;
                ADDR <= 19'b0;

        end
        else if( CAM_HREF ) begin
            if (HCNT == 680-1) begin
                HCNT <= 10'b0;
            end
            else begin
                HCNT <= HCNT + 10'd1;
                ADDR <= HCNT + ( VCNT*640 );

            end
        end
    end
    
         //VSYNCの立下りで行数をカウント+HCNTをリセット negedge CAM_VSYNC
    always @(posedge PCLK) begin
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
    */
endmodule
