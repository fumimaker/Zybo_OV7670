`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/04/23 22:52:34
// Design Name: 
// Module Name: top
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
// トップモジュールに全部配線してみる。
//////////////////////////////////////////////////////////////////////////////////


module top(
    input CLK, //K18 に配線してる125MHzのPLクロック
    input RST, //ボタン4に繋がってるやつ
    input CAM_PCLK, //カメラから来るピクセルクロック
    input CAM_HREF,
    input CAM_VSYNC,
    output CAM_XCLK, //カメラを動かすためのクロック。　12~48(typ.24)MHZを供給しないとだめ
    input [7:0] data,
    
    input [3:0] VGA_R,
    input [3:0] VGA_G,
    input [3:0] VGA_B,
    input VGA_VSYNC,
    input VGA_HSYNC
    );
    wire clk_25_175MHZ, clk_24MHZ;
    wire BRAM_DATAB, BRAM_ENB, BRAM_ADDRB;
    wire BRAM_DATAA,BRAM_ADDRA, BRAM_ENA, BRAM_WENA;
    
    
    vga_out vga_out_inst(
    .CLK(CLK),
    .RST(RST),
    .VGA_R(VGA_R),
    .VGA_G(VGA_G),
    .VGA_B(VGA_B),
    .VGA_HS(VGA_HSYNC),
    .VGA_VS(VGA_VSYNC),
    .DATAB(BRAM_DATAB),
    .ADDR(BRAM_ADDRB),
    .ENB(BRAM_ENB),
    .CLK25_175MHZ(clk_25_175MHZ)
    );
    
    ov7670_IF ov7670_IF_inst(
    .RST(RST),
    .CAM_PCLK(CAM_PCLK),
    .CAM_HREF(CAM_HREF),
    .CAM_VSYNC(CAM_VSYNC),
    .data(data),
    .DATA_OUT(BRAM_DATAA),
    .ADDR(BRAM_ADDRA),
    .ENA(BRAM_ENA),
    .WENA(BRAM_WENA),
    .CAM_XCLK(clk_24MHZ)
    );
    
    //Aはカメラ側書き込み、BはVGA側読み出し
    design_1_blk_mem_gen_0_0 blk_mem_gen_0_inst(
    .addra(BRAM_ADDRA),
    .addrb(BRAM_ADDRB),
    .clka(CAM_PCLK),
    .clkb(clk_25_175MHZ),
    .dina(BRAM_DATAA),
    .ena(BRAM_ENA),
    .enb(BRAM_ENB),
    .wea(BRAM_WENA)
    );
    
   
    design_1_clk_wiz_0_0_clk_wiz inst(
    // Clock out ports  
    .clk_out1(clk_25_175MHZ),
    .clk_out2(clk_24MHz),
    // Status and control signals               
    .reset(RST), 
   // Clock in ports
    .clk_in1(CLK)
    );
    
    
endmodule
