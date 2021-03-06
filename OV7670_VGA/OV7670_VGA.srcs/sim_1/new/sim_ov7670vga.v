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
localparam PCLK=STEP*5;
localparam CLKNUM=(800*525+12000)*5;



reg CLK;
reg sys_reset;
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

//debug wire
wire [11:0]BRAM_DATAB;
wire [18:0]BRAM_ADDRB;
wire BRAM_ENB;
wire [11:0]BRAM_DATAA;
wire [18:0]BRAM_ADDRA;
wire BRAM_ENA;
wire BRAM_WENA;
wire clk_25_175MHZ;
wire clk_24MHZ;
wire locked;

design_1_wrapper design_1_wrapper_inst(
    .CLK (CLK), //K18 に配線してる125MHzのPLクロック
    .RST (sys_reset), //ボタン4に繋がってるやつ
    .CAM_PCLK (CAM_PCLK),//カメラから来るピクセルクロック
    .CAM_HREF (CAM_HREF),
    .CAM_VSYNC (CAM_VSYNC),
    .CAM_XCLK (CAM_XCLK), // カメラを動かすためのクロック。12~48MHz(typ.24MHz)を供給しないとだめ
    .data (data),
    .VGA_R (VGA_R),
    .VGA_G (VGA_G),
    .VGA_B (VGA_B),
    //debug signal
    .VGA_VSYNC (VGA_VSYNC),
    .VGA_HSYNC (VGA_HSYNC),
    .BRAM_ADDRA (BRAM_ADDRA),
    .BRAM_DATAA (BRAM_DATAA),
    .BRAM_ENA (BRAM_ENA),
    .BRAM_WENA (BRAM_WENA),
    .BRAM_ADDRB (BRAM_ADDRB),
    .BRAM_DATAB (BRAM_DATAB),
    .BRAM_ENB (BRAM_ENB),
    .clk_25_175MHZ (clk_25_175MHZ),
    .clk_24MHZ (clk_24MHZ),
    .locked(locked)
);

always begin
    CLK = 0; #(STEP/2);
    CLK = 1; #(STEP/2);
end


localparam TP=2;
localparam TLINE=784*TP;

assign CAM_PCLK=CAM_XCLK;
reg vsync, href;
reg [7:0] outdata; 
assign CAM_VSYNC = vsync;
assign CAM_HREF = href;
integer fd;
integer cnt=0;
integer counter=0;
initial begin

    #(PCLK*TP*TLINE) sys_reset <= 0; 
    #(PCLK*TP*TLINE) sys_reset <= 1;
    fd = $fopen("imagedata.raw", "wb");
    #(PCLK*10) sys_reset<=0;
    
    vsync <= 0;
    href <= 0;
    for (counter=0; counter<1; counter=counter+1) begin
        repeat(100) @(posedge CAM_PCLK);
        vsync <= 1;
        repeat(3*TLINE) @(posedge CAM_PCLK);
        vsync <= 0;
        repeat(17*TLINE) @(posedge CAM_PCLK);
        for(cnt=0; cnt<480; cnt=cnt+1)begin
            href <= 1;
            repeat(640*TP) @(posedge CAM_PCLK);
            href <= 0;
            repeat(144*TP) @(posedge CAM_PCLK);
        end
        href <= 0;
        repeat((784-144)*TP+(10-1)*TLINE) @(posedge CAM_PCLK);
    end
    $fclose(fd);
    $stop;
end

reg ff;
reg [15:0]bytecnt;
reg [15:0]color;
assign data = outdata;

always @(posedge CAM_PCLK)begin
    if(sys_reset)begin
        ff <= 0;
        bytecnt <= 0;
        outdata <= 0;
        color <= 0;
    end
    if(CAM_HREF)begin
        if (bytecnt<210)begin
            color <= 16'b1111100000000000;
        end else if (bytecnt<420)begin
            color <= 16'b0000011111100000;
        end else begin
            color <= 16'b0000000000011111;
        end
        
        if (ff==1) begin
            outdata <= color[15:8];
        end else if(ff==0)begin
            outdata <= color[7:0];
            bytecnt <= bytecnt + 1;
        end
        ff <= ~ff;
    end else begin
        ff <= 0;
        bytecnt <= 0;
        outdata <= 0;
    end
end

    
always @(posedge clk_25_175MHZ)begin
    if( BRAM_ENB && counter==0) begin
        $fwrite(fd, "%c", {VGA_R, 4'h0});
        $fwrite(fd, "%c", {VGA_G, 4'h0});
        $fwrite(fd, "%c", {VGA_B, 4'h0});
    end
    
end

endmodule
