`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/05/10 22:22:52
// Design Name: 
// Module Name: sim_ov7670vga
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


module sim_ov7670vga;

localparam STEP=8;
localparam CLKNUM=(800*525+12000)*5;

reg CLK;
reg RST;
wire CAM_PCLK;//カメラから来るピクセルクロック
wire CAM_HREF;
wire CAM_VSYNC;
wire CAM_XCLK; // カメラを動かすためのクロック。12~48MHz(typ.24MHz)を供給しないとだめ
wire [7:0]data;
wire [3:0]VGA_R;
wire[3:0] VGA_G;
wire [3:0]VGA_B;
wire VGA_VSYNC;
wire VGA_HSYNC;

design_1_wapper design_1_wrapper_inst(
    .DDR_addr (DDR_addr),
    .DDR_ba (DDR_ba),
    .DDR_cas_n (DDR_cas_n),
    .DDR_ck_n (DDR_ck_n ),
    .DDR_ck_p (DDR_ck_p),
    .DDR_cke (DDR_cke),
    .DDR_cs_n (DDR_cs_n),
    .DDR_dm (DDR_dm),
    .DDR_dq (DDR_dq),
    .DDR_dqs_n (DDR_dqs_n),
    .DDR_dqs_p (DDR_dqs_p),
    .DDR_odt (DDR_odt),
    .DDR_ras_n (DDR_ras_n),
    .DDR_reset_n (DDR_reset_n),
    .DDR_we_n (DDR_we_n),
    .FIXED_IO_ddr_vrn (FIXED_IO_ddr_vrn),
    .FIXED_IO_ddr_vrp (FIXED_IO_ddr_vrp),
    .FIXED_IO_mio (FIXED_IO_mio),
    .FIXED_IO_ps_clk (FIXED_IO_ps_clk),
    .FIXED_IO_ps_porb (FIXED_IO_ps_porb),
    .FIXED_IO_ps_srstb (FIXED_IO_ps_srstb),
    .IIC_0_0_scl_io (IIC_0_0_scl_io),
    .IIC_0_0_sda_io (IIC_0_0_sda_io),
   
    .CLK (CLK), //K18 に配線してる125MHzのPLクロック
    .RST (RST), //ボタン4に繋がってるやつ
    .CAM_PCLK (CAM_PCLK),//カメラから来るピクセルクロック
    .CAM_HREF (CAM_HREF),
    .CAM_VSYNC (CAM_VSYNC),
    .CAM_XCLK (CAM_XCLK), // カメラを動かすためのクロック。12~48MHz(typ.24MHz)を供給しないとだめ
    .data (data),
    .VGA_R (VGA_R),
    .VGA_G (VGA_G),
    .VGA_B (VGA_B),
    .VGA_VSYNC (VGA_VSYNC),
    .VGA_HSYNC (VGA_HSYNC)
);

always begin
    CLK = 0; #(STEP/2);
    CLK = 1; #(STEP/2);
end

initial begin
    RST=0;
    #(STEP*500) RST=1;
    #(STEP*10) RST=0;
    #(STEP*CLKNUM);
    $stop;
end

endmodule
