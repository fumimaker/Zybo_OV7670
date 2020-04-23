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
    input VGA_HSYNC,
    
    ///////////////ここからDesignWrapper関係/////////////////////
    DDR_addr,
    DDR_ba,
    DDR_cas_n,
    DDR_ck_n,
    DDR_ck_p,
    DDR_cke,
    DDR_cs_n,
    DDR_dm,
    DDR_dq,
    DDR_dqs_n,
    DDR_dqs_p,
    DDR_odt,
    DDR_ras_n,
    DDR_reset_n,
    DDR_we_n,
    FIXED_IO_ddr_vrn,
    FIXED_IO_ddr_vrp,
    FIXED_IO_mio,
    FIXED_IO_ps_clk,
    FIXED_IO_ps_porb,
    FIXED_IO_ps_srstb,
    IIC_0_0_scl_io,
    IIC_0_0_sda_io,
    led,
    rgb,
    
      inout [14:0]DDR_addr,
      inout [2:0]DDR_ba,
      inout DDR_cas_n,
      inout DDR_ck_n,
      inout DDR_ck_p,
      inout DDR_cke,
      inout DDR_cs_n,
      inout [3:0]DDR_dm,
      inout [31:0]DDR_dq,
      inout [3:0]DDR_dqs_n,
      inout [3:0]DDR_dqs_p,
      inout DDR_odt,
      inout DDR_ras_n,
      inout DDR_reset_n,
      inout DDR_we_n,
      inout FIXED_IO_ddr_vrn,
      inout FIXED_IO_ddr_vrp,
      inout [53:0]FIXED_IO_mio,
      inout FIXED_IO_ps_clk,
      inout FIXED_IO_ps_porb,
      inout FIXED_IO_ps_srstb,
      inout IIC_0_0_scl_io,
      inout IIC_0_0_sda_io,
      output [3:0]led,
      output [5:0]rgb
    );
    
    inout [14:0]DDR_addr;
    inout [2:0]DDR_ba;
    inout DDR_cas_n;
    inout DDR_ck_n;
    inout DDR_ck_p;
    inout DDR_cke;
    inout DDR_cs_n;
    inout [3:0]DDR_dm;
    inout [31:0]DDR_dq;
    inout [3:0]DDR_dqs_n;
    inout [3:0]DDR_dqs_p;
    inout DDR_odt;
    inout DDR_ras_n;
    inout DDR_reset_n;
    inout DDR_we_n;
    inout FIXED_IO_ddr_vrn;
    inout FIXED_IO_ddr_vrp;
    inout [53:0]FIXED_IO_mio;
    inout FIXED_IO_ps_clk;
    inout FIXED_IO_ps_porb;
    inout FIXED_IO_ps_srstb;
    inout IIC_0_0_scl_io;
    inout IIC_0_0_sda_io;
    output [3:0]led;
    output [5:0]rgb;
    
    wire CLK;
    wire [14:0]DDR_addr;
    wire [2:0]DDR_ba;
    wire DDR_cas_n;
    wire DDR_ck_n;
    wire DDR_ck_p;
    wire DDR_cke;
    wire DDR_cs_n;
    wire [3:0]DDR_dm;
    wire [31:0]DDR_dq;
    wire [3:0]DDR_dqs_n;
    wire [3:0]DDR_dqs_p;
    wire DDR_odt;
    wire DDR_ras_n;
    wire DDR_reset_n;
    wire DDR_we_n;
    wire FIXED_IO_ddr_vrn;
    wire FIXED_IO_ddr_vrp;
    wire [53:0]FIXED_IO_mio;
    wire FIXED_IO_ps_clk;
    wire FIXED_IO_ps_porb;
    wire FIXED_IO_ps_srstb;
    wire IIC_0_0_scl_i;
    wire IIC_0_0_scl_io;
    wire IIC_0_0_scl_o;
    wire IIC_0_0_scl_t;
    wire IIC_0_0_sda_i;
    wire IIC_0_0_sda_io;
    wire IIC_0_0_sda_o;
    wire IIC_0_0_sda_t;

    
    IOBUF IIC_0_0_scl_iobuf
       (.I(IIC_0_0_scl_o),
        .IO(IIC_0_0_scl_io),
        .O(IIC_0_0_scl_i),
        .T(IIC_0_0_scl_t));
    IOBUF IIC_0_0_sda_iobuf
       (.I(IIC_0_0_sda_o),
        .IO(IIC_0_0_sda_io),
        .O(IIC_0_0_sda_i),
        .T(IIC_0_0_sda_t));
    design_1 design_1_i
       (.CLK(CLK),
        .DDR_addr(DDR_addr),
        .DDR_ba(DDR_ba),
        .DDR_cas_n(DDR_cas_n),
        .DDR_ck_n(DDR_ck_n),
        .DDR_ck_p(DDR_ck_p),
        .DDR_cke(DDR_cke),
        .DDR_cs_n(DDR_cs_n),
        .DDR_dm(DDR_dm),
        .DDR_dq(DDR_dq),
        .DDR_dqs_n(DDR_dqs_n),
        .DDR_dqs_p(DDR_dqs_p),
        .DDR_odt(DDR_odt),
        .DDR_ras_n(DDR_ras_n),
        .DDR_reset_n(DDR_reset_n),
        .DDR_we_n(DDR_we_n),
        .FIXED_IO_ddr_vrn(FIXED_IO_ddr_vrn),
        .FIXED_IO_ddr_vrp(FIXED_IO_ddr_vrp),
        .FIXED_IO_mio(FIXED_IO_mio),
        .FIXED_IO_ps_clk(FIXED_IO_ps_clk),
        .FIXED_IO_ps_porb(FIXED_IO_ps_porb),
        .FIXED_IO_ps_srstb(FIXED_IO_ps_srstb),
        .IIC_0_0_scl_i(IIC_0_0_scl_i),
        .IIC_0_0_scl_o(IIC_0_0_scl_o),
        .IIC_0_0_scl_t(IIC_0_0_scl_t),
        .IIC_0_0_sda_i(IIC_0_0_sda_i),
        .IIC_0_0_sda_o(IIC_0_0_sda_o),
        .IIC_0_0_sda_t(IIC_0_0_sda_t),
        .RST(RST),
        .led(led),
        .rgb(rgb));
        
        
/////////////////////////////////ここまで/////////////////////////////////////////////


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
