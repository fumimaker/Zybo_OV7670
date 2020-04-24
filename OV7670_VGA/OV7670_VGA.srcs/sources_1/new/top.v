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

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=3,numReposBlks=3,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=1,da_board_cnt=5,da_clkrst_cnt=4,da_ps7_cnt=2,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
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
        IIC_0_0_scl_i,
        IIC_0_0_scl_o,
        IIC_0_0_scl_t,
        IIC_0_0_sda_i,
        IIC_0_0_sda_o,
        IIC_0_0_sda_
        );
        
        (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR ADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DDR, AXI_ARBITRATION_SCHEME TDM, BURST_LENGTH 8, CAN_DEBUG false, CAS_LATENCY 11, CAS_WRITE_LATENCY 11, CS_ENABLED true, DATA_MASK_ENABLED true, DATA_WIDTH 8, MEMORY_TYPE COMPONENTS, MEM_ADDR_MAP ROW_COLUMN_BANK, SLOT Single, TIMEPERIOD_PS 1250" *) inout [14:0]DDR_addr;
          (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR BA" *) inout [2:0]DDR_ba;
          (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CAS_N" *) inout DDR_cas_n;
          (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CK_N" *) inout DDR_ck_n;
          (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CK_P" *) inout DDR_ck_p;
          (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CKE" *) inout DDR_cke;
          (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CS_N" *) inout DDR_cs_n;
          (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DM" *) inout [3:0]DDR_dm;
          (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DQ" *) inout [31:0]DDR_dq;
          (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DQS_N" *) inout [3:0]DDR_dqs_n;
          (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DQS_P" *) inout [3:0]DDR_dqs_p;
          (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR ODT" *) inout DDR_odt;
          (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR RAS_N" *) inout DDR_ras_n;
          (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR RESET_N" *) inout DDR_reset_n;
          (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR WE_N" *) inout DDR_we_n;
          (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRN" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME FIXED_IO, CAN_DEBUG false" *) inout FIXED_IO_ddr_vrn;
          (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRP" *) inout FIXED_IO_ddr_vrp;
          (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO MIO" *) inout [53:0]FIXED_IO_mio;
          (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_CLK" *) inout FIXED_IO_ps_clk;
          (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_PORB" *) inout FIXED_IO_ps_porb;
          (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_SRSTB" *) inout FIXED_IO_ps_srstb;
          (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 IIC_0_0 SCL_I" *) input IIC_0_0_scl_i;
          (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 IIC_0_0 SCL_O" *) output IIC_0_0_scl_o;
          (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 IIC_0_0 SCL_T" *) output IIC_0_0_scl_t;
          (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 IIC_0_0 SDA_I" *) input IIC_0_0_sda_i;
          (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 IIC_0_0 SDA_O" *) output IIC_0_0_sda_o;
          (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 IIC_0_0 SDA_T" *) output IIC_0_0_sda_t;
          
        wire CLK_1;
        wire RST_1;
        wire [14:0]processing_system7_0_DDR_ADDR;
        wire [2:0]processing_system7_0_DDR_BA;
        wire processing_system7_0_DDR_CAS_N;
        wire processing_system7_0_DDR_CKE;
        wire processing_system7_0_DDR_CK_N;
        wire processing_system7_0_DDR_CK_P;
        wire processing_system7_0_DDR_CS_N;
        wire [3:0]processing_system7_0_DDR_DM;
        wire [31:0]processing_system7_0_DDR_DQ;
        wire [3:0]processing_system7_0_DDR_DQS_N;
        wire [3:0]processing_system7_0_DDR_DQS_P;
        wire processing_system7_0_DDR_ODT;
        wire processing_system7_0_DDR_RAS_N;
        wire processing_system7_0_DDR_RESET_N;
        wire processing_system7_0_DDR_WE_N;
        wire processing_system7_0_FCLK_CLK0;
        wire processing_system7_0_FIXED_IO_DDR_VRN;
        wire processing_system7_0_FIXED_IO_DDR_VRP;
        wire [53:0]processing_system7_0_FIXED_IO_MIO;
        wire processing_system7_0_FIXED_IO_PS_CLK;
        wire processing_system7_0_FIXED_IO_PS_PORB;
        wire processing_system7_0_FIXED_IO_PS_SRSTB;
        wire processing_system7_0_IIC_0_SCL_I;
        wire processing_system7_0_IIC_0_SCL_O;
        wire processing_system7_0_IIC_0_SCL_T;
        wire processing_system7_0_IIC_0_SDA_I;
        wire processing_system7_0_IIC_0_SDA_O;
        wire processing_system7_0_IIC_0_SDA_T;
      
        assign CLK_1 = CLK;
        assign IIC_0_0_scl_o = processing_system7_0_IIC_0_SCL_O;
        assign IIC_0_0_scl_t = processing_system7_0_IIC_0_SCL_T;
        assign IIC_0_0_sda_o = processing_system7_0_IIC_0_SDA_O;
        assign IIC_0_0_sda_t = processing_system7_0_IIC_0_SDA_T;
        assign RST_1 = RST;
        assign processing_system7_0_IIC_0_SCL_I = IIC_0_0_scl_i;
        assign processing_system7_0_IIC_0_SDA_I = IIC_0_0_sda_i;
            
    design_1_processing_system7_0_1 processing_system7_0
       (.DDR_Addr(DDR_addr[14:0]),
        .DDR_BankAddr(DDR_ba[2:0]),
        .DDR_CAS_n(DDR_cas_n),
        .DDR_CKE(DDR_cke),
        .DDR_CS_n(DDR_cs_n),
        .DDR_Clk(DDR_ck_p),
        .DDR_Clk_n(DDR_ck_n),
        .DDR_DM(DDR_dm[3:0]),
        .DDR_DQ(DDR_dq[31:0]),
        .DDR_DQS(DDR_dqs_p[3:0]),
        .DDR_DQS_n(DDR_dqs_n[3:0]),
        .DDR_DRSTB(DDR_reset_n),
        .DDR_ODT(DDR_odt),
        .DDR_RAS_n(DDR_ras_n),
        .DDR_VRN(FIXED_IO_ddr_vrn),
        .DDR_VRP(FIXED_IO_ddr_vrp),
        .DDR_WEB(DDR_we_n),
        .FCLK_CLK0(processing_system7_0_FCLK_CLK0),
        .I2C0_SCL_I(processing_system7_0_IIC_0_SCL_I),
        .I2C0_SCL_O(processing_system7_0_IIC_0_SCL_O),
        .I2C0_SCL_T(processing_system7_0_IIC_0_SCL_T),
        .I2C0_SDA_I(processing_system7_0_IIC_0_SDA_I),
        .I2C0_SDA_O(processing_system7_0_IIC_0_SDA_O),
        .I2C0_SDA_T(processing_system7_0_IIC_0_SDA_T),
        .MIO(FIXED_IO_mio[53:0]),
        .M_AXI_GP0_ACLK(processing_system7_0_FCLK_CLK0),
        .M_AXI_GP0_ARREADY(1'b0),
        .M_AXI_GP0_AWREADY(1'b0),
        .M_AXI_GP0_BID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .M_AXI_GP0_BRESP({1'b0,1'b0}),
        .M_AXI_GP0_BVALID(1'b0),
        .M_AXI_GP0_RDATA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .M_AXI_GP0_RID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .M_AXI_GP0_RLAST(1'b0),
        .M_AXI_GP0_RRESP({1'b0,1'b0}),
        .M_AXI_GP0_RVALID(1'b0),
        .M_AXI_GP0_WREADY(1'b0),
        .PS_CLK(FIXED_IO_ps_clk),
        .PS_PORB(FIXED_IO_ps_porb),
        .PS_SRSTB(FIXED_IO_ps_srstb),
        .USB0_VBUS_PWRFAULT(1'b0));
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
