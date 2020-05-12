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


design_1_wrapper design_1_wrapper_inst(
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

localparam TP=2;
localparam TLINE=784*TP;

assign CAM_PCLK=CAM_XCLK;
reg vsync, href;
reg [7:0] outdata; 
assign CAM_VSYNC = vsync;
assign CAM_HREF = href;
assign data = outdata;
integer cnt=0;
integer pclkcounter=0;
reg ff;
initial begin
    RST=0;
    #(STEP*500) RST=1;
    #(STEP*10) RST=0;
    
    vsync <= 0;
    href <= 0;
    ff <= 0;
    repeat(100) @(posedge CAM_PCLK);
    
    vsync <= 1;
    repeat(3*TLINE) @(posedge CAM_PCLK);
    vsync <= 0;
    repeat(17*TLINE) @(posedge CAM_PCLK);
    for(cnt=0; cnt<480; cnt=cnt+1)begin
        href <= 1;
        for(pclkcounter=0; pclkcounter<640*TP; pclkcounter=pclkcounter+1)begin
            if (ff)begin
                outdata <= pclkcounter[15:8];
            end
            else begin
                outdata <= pclkcounter[7:0];
            end
            ff <= ~ff;
        end
        href <= 0;
        outdata <= 0;
        repeat(144*TP) @(posedge CAM_PCLK);
    end
    href <= 0;
    repeat((784-144)*TP+(10-1)*TLINE) @(posedge CAM_PCLK);
    $stop;
end

endmodule
