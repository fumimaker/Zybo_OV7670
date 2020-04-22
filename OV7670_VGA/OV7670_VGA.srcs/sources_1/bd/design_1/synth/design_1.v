//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
//Date        : Thu Apr 23 01:59:00 2020
//Host        : LAPTOP-AG87OV99 running 64-bit major release  (build 9200)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=7,numReposBlks=7,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=3,numPkgbdBlks=0,bdsource=USER,da_board_cnt=2,da_clkrst_cnt=4,da_ps7_cnt=2,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (CAM_HREF,
    CAM_PCLK,
    CAM_VSYNC,
    CAM_XCLK,
    CLK,
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
    IIC_0_0_sda_t,
    RST,
    VGA_B,
    VGA_G,
    VGA_HS,
    VGA_R,
    VGA_VS,
    data,
    sys_clock);
  input CAM_HREF;
  input CAM_PCLK;
  input CAM_VSYNC;
  output CAM_XCLK;
  input CLK;
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
  input RST;
  output [3:0]VGA_B;
  output [3:0]VGA_G;
  output VGA_HS;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.VGA_R DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.VGA_R, LAYERED_METADATA undef" *) output [3:0]VGA_R;
  output VGA_VS;
  input [7:0]data;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.SYS_CLOCK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.SYS_CLOCK, CLK_DOMAIN design_1_sys_clock, FREQ_HZ 125000000, INSERT_VIP 0, PHASE 0.000" *) input sys_clock;

  wire CAM_HREF_1;
  wire CAM_PCLK_1;
  wire CAM_VSYNC_1;
  wire CLK_1;
  wire RST_1;
  wire [11:0]blk_mem_gen_0_doutb;
  wire clk_wiz_0_clk_out1;
  wire clk_wiz_0_clk_out2;
  wire [7:0]data_1;
  wire [18:0]ov7670_IF_0_ADDR;
  wire [11:0]ov7670_IF_0_DATA_OUT;
  wire ov7670_IF_0_ENA;
  wire ov7670_IF_0_WENA;
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
  wire processing_system7_0_FCLK_RESET0_N;
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
  wire sys_clock_1;
  wire [18:0]vga_out_0_ADDR;
  wire vga_out_0_ENB;
  wire [3:0]vga_out_0_VGA_B;
  wire [3:0]vga_out_0_VGA_G;
  wire vga_out_0_VGA_HS;
  wire [3:0]vga_out_0_VGA_R;
  wire vga_out_0_VGA_VS;

  assign CAM_HREF_1 = CAM_HREF;
  assign CAM_PCLK_1 = CAM_PCLK;
  assign CAM_VSYNC_1 = CAM_VSYNC;
  assign CAM_XCLK = clk_wiz_0_clk_out2;
  assign CLK_1 = CLK;
  assign IIC_0_0_scl_o = processing_system7_0_IIC_0_SCL_O;
  assign IIC_0_0_scl_t = processing_system7_0_IIC_0_SCL_T;
  assign IIC_0_0_sda_o = processing_system7_0_IIC_0_SDA_O;
  assign IIC_0_0_sda_t = processing_system7_0_IIC_0_SDA_T;
  assign RST_1 = RST;
  assign VGA_B[3:0] = vga_out_0_VGA_B;
  assign VGA_G[3:0] = vga_out_0_VGA_G;
  assign VGA_HS = vga_out_0_VGA_HS;
  assign VGA_R[3:0] = vga_out_0_VGA_R;
  assign VGA_VS = vga_out_0_VGA_VS;
  assign data_1 = data[7:0];
  assign processing_system7_0_IIC_0_SCL_I = IIC_0_0_scl_i;
  assign processing_system7_0_IIC_0_SDA_I = IIC_0_0_sda_i;
  assign sys_clock_1 = sys_clock;
  design_1_blk_mem_gen_0_0 blk_mem_gen_0
       (.addra(ov7670_IF_0_ADDR),
        .addrb(vga_out_0_ADDR),
        .clka(CAM_PCLK_1),
        .clkb(clk_wiz_0_clk_out1),
        .dina(ov7670_IF_0_DATA_OUT),
        .doutb(blk_mem_gen_0_doutb),
        .ena(ov7670_IF_0_ENA),
        .enb(vga_out_0_ENB),
        .wea(ov7670_IF_0_WENA));
  design_1_clk_wiz_0_0 clk_wiz_0
       (.clk_in1(sys_clock_1),
        .clk_out1(clk_wiz_0_clk_out1),
        .clk_out2(clk_wiz_0_clk_out2),
        .reset(RST_1));
  design_1_ov7670_IF_0_0 ov7670_IF_0
       (.ADDR(ov7670_IF_0_ADDR),
        .CAM_HREF(CAM_HREF_1),
        .CAM_PCLK(CAM_PCLK_1),
        .CAM_VSYNC(CAM_VSYNC_1),
        .DATA_OUT(ov7670_IF_0_DATA_OUT),
        .ENA(ov7670_IF_0_ENA),
        .RST(RST_1),
        .WENA(ov7670_IF_0_WENA),
        .data(data_1));
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
        .FCLK_RESET0_N(processing_system7_0_FCLK_RESET0_N),
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
  design_1_rst_ps7_0_50M_0 rst_ps7_0_50M
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(processing_system7_0_FCLK_RESET0_N),
        .mb_debug_sys_rst(1'b0),
        .slowest_sync_clk(processing_system7_0_FCLK_CLK0));
  design_1_syncgen_0_0 syncgen_0
       (.CLK(CLK_1),
        .PCK(clk_wiz_0_clk_out1),
        .RST(RST_1));
  design_1_vga_out_0_0 vga_out_0
       (.ADDR(vga_out_0_ADDR),
        .CLK(CLK_1),
        .DATAB(blk_mem_gen_0_doutb),
        .ENB(vga_out_0_ENB),
        .RST(RST_1),
        .VGA_B(vga_out_0_VGA_B),
        .VGA_G(vga_out_0_VGA_G),
        .VGA_HS(vga_out_0_VGA_HS),
        .VGA_R(vga_out_0_VGA_R),
        .VGA_VS(vga_out_0_VGA_VS));
endmodule
