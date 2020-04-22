-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Thu Apr 23 01:46:06 2020
-- Host        : LAPTOP-AG87OV99 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/ivr/Documents/GitHub/Zybo_OV7670/OV7670_VGA/OV7670_VGA.srcs/sources_1/bd/design_1/ip/design_1_ov7670_IF_0_0/design_1_ov7670_IF_0_0_sim_netlist.vhdl
-- Design      : design_1_ov7670_IF_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_ov7670_IF_0_0_ov7670_IF is
  port (
    DATA_OUT : out STD_LOGIC_VECTOR ( 11 downto 0 );
    ADDR : out STD_LOGIC_VECTOR ( 18 downto 0 );
    WENA : out STD_LOGIC;
    CAM_HREF : in STD_LOGIC;
    RST : in STD_LOGIC;
    CAM_VSYNC : in STD_LOGIC;
    CAM_PCLK : in STD_LOGIC;
    data : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_ov7670_IF_0_0_ov7670_IF : entity is "ov7670_IF";
end design_1_ov7670_IF_0_0_ov7670_IF;

architecture STRUCTURE of design_1_ov7670_IF_0_0_ov7670_IF is
  signal \DATA_OUT[11]_i_1_n_0\ : STD_LOGIC;
  signal \DATA_OUT__0_n_0\ : STD_LOGIC;
  signal HCNT : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \HCNT[0]__0_i_1_n_0\ : STD_LOGIC;
  signal \HCNT[1]__0_i_1_n_0\ : STD_LOGIC;
  signal \HCNT[2]__0_i_1_n_0\ : STD_LOGIC;
  signal \HCNT[3]__0_i_1_n_0\ : STD_LOGIC;
  signal \HCNT[4]__0_i_1_n_0\ : STD_LOGIC;
  signal \HCNT[5]__0_i_1_n_0\ : STD_LOGIC;
  signal \HCNT[6]__0_i_1_n_0\ : STD_LOGIC;
  signal \HCNT[7]__0_i_1_n_0\ : STD_LOGIC;
  signal \HCNT[8]__0_i_1_n_0\ : STD_LOGIC;
  signal \HCNT[9]__0_i_1_n_0\ : STD_LOGIC;
  signal \HCNT[9]__0_i_2_n_0\ : STD_LOGIC;
  signal \HCNT[9]__1_i_1_n_0\ : STD_LOGIC;
  signal \HCNT[9]_i_1_n_0\ : STD_LOGIC;
  signal \^wena\ : STD_LOGIC;
  signal WENA_i_1_n_0 : STD_LOGIC;
  signal firstByteEn : STD_LOGIC;
  signal firstByteEn_i_1_n_0 : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \NLW_ADDR__0_CARRYCASCOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_ADDR__0_MULTSIGNOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_ADDR__0_OVERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_ADDR__0_PATTERNBDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_ADDR__0_PATTERNDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_ADDR__0_UNDERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_ADDR__0_ACOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal \NLW_ADDR__0_BCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal \NLW_ADDR__0_CARRYOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ADDR__0_P_UNCONNECTED\ : STD_LOGIC_VECTOR ( 47 downto 19 );
  signal \NLW_ADDR__0_PCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 47 downto 0 );
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of \ADDR__0\ : label is "{SYNTH-13 {cell *THIS*}}";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \DATA_OUT[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \DATA_OUT[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \DATA_OUT[3]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \DATA_OUT[4]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of WENA_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of firstByteEn_i_1 : label is "soft_lutpair0";
begin
  WENA <= \^wena\;
\ADDR__0\: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 0,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 0,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 0,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 0) => B"000000000000000000000000000000",
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => \NLW_ADDR__0_ACOUT_UNCONNECTED\(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 0) => B"000000001010000000",
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => \NLW_ADDR__0_BCOUT_UNCONNECTED\(17 downto 0),
      C(47 downto 10) => B"00000000000000000000000000000000000000",
      C(9 downto 0) => HCNT(9 downto 0),
      CARRYCASCIN => '0',
      CARRYCASCOUT => \NLW_ADDR__0_CARRYCASCOUT_UNCONNECTED\,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => \NLW_ADDR__0_CARRYOUT_UNCONNECTED\(3 downto 0),
      CEA1 => '0',
      CEA2 => '0',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '0',
      CLK => '0',
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => \NLW_ADDR__0_MULTSIGNOUT_UNCONNECTED\,
      OPMODE(6 downto 0) => B"0110101",
      OVERFLOW => \NLW_ADDR__0_OVERFLOW_UNCONNECTED\,
      P(47 downto 19) => \NLW_ADDR__0_P_UNCONNECTED\(47 downto 19),
      P(18 downto 0) => ADDR(18 downto 0),
      PATTERNBDETECT => \NLW_ADDR__0_PATTERNBDETECT_UNCONNECTED\,
      PATTERNDETECT => \NLW_ADDR__0_PATTERNDETECT_UNCONNECTED\,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => \NLW_ADDR__0_PCOUT_UNCONNECTED\(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => \NLW_ADDR__0_UNDERFLOW_UNCONNECTED\
    );
\DATA_OUT[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data(1),
      I1 => firstByteEn,
      O => p_1_in(0)
    );
\DATA_OUT[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => firstByteEn,
      I1 => CAM_HREF,
      O => \DATA_OUT[11]_i_1_n_0\
    );
\DATA_OUT[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data(2),
      I1 => firstByteEn,
      O => p_1_in(1)
    );
\DATA_OUT[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data(3),
      I1 => firstByteEn,
      O => p_1_in(2)
    );
\DATA_OUT[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data(4),
      I1 => firstByteEn,
      O => p_1_in(3)
    );
\DATA_OUT[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data(7),
      I1 => firstByteEn,
      O => p_1_in(4)
    );
\DATA_OUT__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => RST,
      I1 => firstByteEn,
      I2 => CAM_HREF,
      O => \DATA_OUT__0_n_0\
    );
\DATA_OUT_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CAM_PCLK,
      CE => CAM_HREF,
      D => p_1_in(0),
      Q => DATA_OUT(0),
      R => \DATA_OUT__0_n_0\
    );
\DATA_OUT_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => CAM_PCLK,
      CE => \DATA_OUT[11]_i_1_n_0\,
      D => data(6),
      Q => DATA_OUT(10),
      R => RST
    );
\DATA_OUT_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => CAM_PCLK,
      CE => \DATA_OUT[11]_i_1_n_0\,
      D => data(7),
      Q => DATA_OUT(11),
      R => RST
    );
\DATA_OUT_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CAM_PCLK,
      CE => CAM_HREF,
      D => p_1_in(1),
      Q => DATA_OUT(1),
      R => \DATA_OUT__0_n_0\
    );
\DATA_OUT_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CAM_PCLK,
      CE => CAM_HREF,
      D => p_1_in(2),
      Q => DATA_OUT(2),
      R => \DATA_OUT__0_n_0\
    );
\DATA_OUT_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CAM_PCLK,
      CE => CAM_HREF,
      D => p_1_in(3),
      Q => DATA_OUT(3),
      R => \DATA_OUT__0_n_0\
    );
\DATA_OUT_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CAM_PCLK,
      CE => CAM_HREF,
      D => p_1_in(4),
      Q => DATA_OUT(4),
      R => \DATA_OUT__0_n_0\
    );
\DATA_OUT_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CAM_PCLK,
      CE => \DATA_OUT[11]_i_1_n_0\,
      D => data(0),
      Q => DATA_OUT(5),
      R => RST
    );
\DATA_OUT_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CAM_PCLK,
      CE => \DATA_OUT[11]_i_1_n_0\,
      D => data(1),
      Q => DATA_OUT(6),
      R => RST
    );
\DATA_OUT_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CAM_PCLK,
      CE => \DATA_OUT[11]_i_1_n_0\,
      D => data(2),
      Q => DATA_OUT(7),
      R => RST
    );
\DATA_OUT_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => CAM_PCLK,
      CE => \DATA_OUT[11]_i_1_n_0\,
      D => data(4),
      Q => DATA_OUT(8),
      R => RST
    );
\DATA_OUT_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => CAM_PCLK,
      CE => \DATA_OUT[11]_i_1_n_0\,
      D => data(5),
      Q => DATA_OUT(9),
      R => RST
    );
\HCNT[0]__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => HCNT(0),
      O => \HCNT[0]__0_i_1_n_0\
    );
\HCNT[1]__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => HCNT(0),
      I1 => HCNT(1),
      O => \HCNT[1]__0_i_1_n_0\
    );
\HCNT[2]__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => HCNT(0),
      I1 => HCNT(1),
      I2 => HCNT(2),
      O => \HCNT[2]__0_i_1_n_0\
    );
\HCNT[3]__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => HCNT(1),
      I1 => HCNT(0),
      I2 => HCNT(2),
      I3 => HCNT(3),
      O => \HCNT[3]__0_i_1_n_0\
    );
\HCNT[4]__0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => HCNT(2),
      I1 => HCNT(0),
      I2 => HCNT(1),
      I3 => HCNT(3),
      I4 => HCNT(4),
      O => \HCNT[4]__0_i_1_n_0\
    );
\HCNT[5]__0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => HCNT(3),
      I1 => HCNT(1),
      I2 => HCNT(0),
      I3 => HCNT(2),
      I4 => HCNT(4),
      I5 => HCNT(5),
      O => \HCNT[5]__0_i_1_n_0\
    );
\HCNT[6]__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \HCNT[9]__0_i_2_n_0\,
      I1 => HCNT(6),
      O => \HCNT[6]__0_i_1_n_0\
    );
\HCNT[7]__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \HCNT[9]__0_i_2_n_0\,
      I1 => HCNT(6),
      I2 => HCNT(7),
      O => \HCNT[7]__0_i_1_n_0\
    );
\HCNT[8]__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => HCNT(6),
      I1 => \HCNT[9]__0_i_2_n_0\,
      I2 => HCNT(7),
      I3 => HCNT(8),
      O => \HCNT[8]__0_i_1_n_0\
    );
\HCNT[9]__0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => HCNT(7),
      I1 => \HCNT[9]__0_i_2_n_0\,
      I2 => HCNT(6),
      I3 => HCNT(8),
      I4 => HCNT(9),
      O => \HCNT[9]__0_i_1_n_0\
    );
\HCNT[9]__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => HCNT(5),
      I1 => HCNT(3),
      I2 => HCNT(1),
      I3 => HCNT(0),
      I4 => HCNT(2),
      I5 => HCNT(4),
      O => \HCNT[9]__0_i_2_n_0\
    );
\HCNT[9]__1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => firstByteEn,
      I1 => CAM_HREF,
      I2 => RST,
      O => \HCNT[9]__1_i_1_n_0\
    );
\HCNT[9]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => RST,
      O => \HCNT[9]_i_1_n_0\
    );
\HCNT_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => CAM_VSYNC,
      CE => \HCNT[9]_i_1_n_0\,
      D => '0',
      Q => HCNT(0),
      R => '0'
    );
\HCNT_reg[0]__0\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => CAM_HREF,
      CE => '1',
      D => \HCNT[0]__0_i_1_n_0\,
      Q => HCNT(0),
      R => RST
    );
\HCNT_reg[0]__1\: unisim.vcomponents.FDRE
     port map (
      C => CAM_PCLK,
      CE => \HCNT[9]__1_i_1_n_0\,
      D => \HCNT[0]__0_i_1_n_0\,
      Q => HCNT(0),
      R => '0'
    );
\HCNT_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => CAM_VSYNC,
      CE => \HCNT[9]_i_1_n_0\,
      D => '0',
      Q => HCNT(1),
      R => '0'
    );
\HCNT_reg[1]__0\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => CAM_HREF,
      CE => '1',
      D => \HCNT[1]__0_i_1_n_0\,
      Q => HCNT(1),
      R => RST
    );
\HCNT_reg[1]__1\: unisim.vcomponents.FDRE
     port map (
      C => CAM_PCLK,
      CE => \HCNT[9]__1_i_1_n_0\,
      D => \HCNT[1]__0_i_1_n_0\,
      Q => HCNT(1),
      R => '0'
    );
\HCNT_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => CAM_VSYNC,
      CE => \HCNT[9]_i_1_n_0\,
      D => '0',
      Q => HCNT(2),
      R => '0'
    );
\HCNT_reg[2]__0\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => CAM_HREF,
      CE => '1',
      D => \HCNT[2]__0_i_1_n_0\,
      Q => HCNT(2),
      R => RST
    );
\HCNT_reg[2]__1\: unisim.vcomponents.FDRE
     port map (
      C => CAM_PCLK,
      CE => \HCNT[9]__1_i_1_n_0\,
      D => \HCNT[2]__0_i_1_n_0\,
      Q => HCNT(2),
      R => '0'
    );
\HCNT_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => CAM_VSYNC,
      CE => \HCNT[9]_i_1_n_0\,
      D => '0',
      Q => HCNT(3),
      R => '0'
    );
\HCNT_reg[3]__0\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => CAM_HREF,
      CE => '1',
      D => \HCNT[3]__0_i_1_n_0\,
      Q => HCNT(3),
      R => RST
    );
\HCNT_reg[3]__1\: unisim.vcomponents.FDRE
     port map (
      C => CAM_PCLK,
      CE => \HCNT[9]__1_i_1_n_0\,
      D => \HCNT[3]__0_i_1_n_0\,
      Q => HCNT(3),
      R => '0'
    );
\HCNT_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => CAM_VSYNC,
      CE => \HCNT[9]_i_1_n_0\,
      D => '0',
      Q => HCNT(4),
      R => '0'
    );
\HCNT_reg[4]__0\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => CAM_HREF,
      CE => '1',
      D => \HCNT[4]__0_i_1_n_0\,
      Q => HCNT(4),
      R => RST
    );
\HCNT_reg[4]__1\: unisim.vcomponents.FDRE
     port map (
      C => CAM_PCLK,
      CE => \HCNT[9]__1_i_1_n_0\,
      D => \HCNT[4]__0_i_1_n_0\,
      Q => HCNT(4),
      R => '0'
    );
\HCNT_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => CAM_VSYNC,
      CE => \HCNT[9]_i_1_n_0\,
      D => '0',
      Q => HCNT(5),
      R => '0'
    );
\HCNT_reg[5]__0\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => CAM_HREF,
      CE => '1',
      D => \HCNT[5]__0_i_1_n_0\,
      Q => HCNT(5),
      R => RST
    );
\HCNT_reg[5]__1\: unisim.vcomponents.FDRE
     port map (
      C => CAM_PCLK,
      CE => \HCNT[9]__1_i_1_n_0\,
      D => \HCNT[5]__0_i_1_n_0\,
      Q => HCNT(5),
      R => '0'
    );
\HCNT_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => CAM_VSYNC,
      CE => \HCNT[9]_i_1_n_0\,
      D => '0',
      Q => HCNT(6),
      R => '0'
    );
\HCNT_reg[6]__0\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => CAM_HREF,
      CE => '1',
      D => \HCNT[6]__0_i_1_n_0\,
      Q => HCNT(6),
      R => RST
    );
\HCNT_reg[6]__1\: unisim.vcomponents.FDRE
     port map (
      C => CAM_PCLK,
      CE => \HCNT[9]__1_i_1_n_0\,
      D => \HCNT[6]__0_i_1_n_0\,
      Q => HCNT(6),
      R => '0'
    );
\HCNT_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => CAM_VSYNC,
      CE => \HCNT[9]_i_1_n_0\,
      D => '0',
      Q => HCNT(7),
      R => '0'
    );
\HCNT_reg[7]__0\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => CAM_HREF,
      CE => '1',
      D => \HCNT[7]__0_i_1_n_0\,
      Q => HCNT(7),
      R => RST
    );
\HCNT_reg[7]__1\: unisim.vcomponents.FDRE
     port map (
      C => CAM_PCLK,
      CE => \HCNT[9]__1_i_1_n_0\,
      D => \HCNT[7]__0_i_1_n_0\,
      Q => HCNT(7),
      R => '0'
    );
\HCNT_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => CAM_VSYNC,
      CE => \HCNT[9]_i_1_n_0\,
      D => '0',
      Q => HCNT(8),
      R => '0'
    );
\HCNT_reg[8]__0\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => CAM_HREF,
      CE => '1',
      D => \HCNT[8]__0_i_1_n_0\,
      Q => HCNT(8),
      R => RST
    );
\HCNT_reg[8]__1\: unisim.vcomponents.FDRE
     port map (
      C => CAM_PCLK,
      CE => \HCNT[9]__1_i_1_n_0\,
      D => \HCNT[8]__0_i_1_n_0\,
      Q => HCNT(8),
      R => '0'
    );
\HCNT_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => CAM_VSYNC,
      CE => \HCNT[9]_i_1_n_0\,
      D => '0',
      Q => HCNT(9),
      R => '0'
    );
\HCNT_reg[9]__0\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => CAM_HREF,
      CE => '1',
      D => \HCNT[9]__0_i_1_n_0\,
      Q => HCNT(9),
      R => RST
    );
\HCNT_reg[9]__1\: unisim.vcomponents.FDRE
     port map (
      C => CAM_PCLK,
      CE => \HCNT[9]__1_i_1_n_0\,
      D => \HCNT[9]__0_i_1_n_0\,
      Q => HCNT(9),
      R => '0'
    );
WENA_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AE"
    )
        port map (
      I0 => \^wena\,
      I1 => CAM_HREF,
      I2 => firstByteEn,
      I3 => RST,
      O => WENA_i_1_n_0
    );
WENA_reg: unisim.vcomponents.FDRE
     port map (
      C => CAM_PCLK,
      CE => '1',
      D => WENA_i_1_n_0,
      Q => \^wena\,
      R => '0'
    );
firstByteEn_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F6"
    )
        port map (
      I0 => firstByteEn,
      I1 => CAM_HREF,
      I2 => RST,
      O => firstByteEn_i_1_n_0
    );
firstByteEn_reg: unisim.vcomponents.FDRE
     port map (
      C => CAM_PCLK,
      CE => '1',
      D => firstByteEn_i_1_n_0,
      Q => firstByteEn,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_ov7670_IF_0_0 is
  port (
    RST : in STD_LOGIC;
    CAM_PCLK : in STD_LOGIC;
    CAM_HREF : in STD_LOGIC;
    CAM_VSYNC : in STD_LOGIC;
    data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    DATA_OUT : out STD_LOGIC_VECTOR ( 11 downto 0 );
    ADDR : out STD_LOGIC_VECTOR ( 18 downto 0 );
    ENA : out STD_LOGIC;
    WENA : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_ov7670_IF_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_ov7670_IF_0_0 : entity is "design_1_ov7670_IF_0_0,ov7670_IF,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_ov7670_IF_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_ov7670_IF_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_ov7670_IF_0_0 : entity is "ov7670_IF,Vivado 2019.2";
end design_1_ov7670_IF_0_0;

architecture STRUCTURE of design_1_ov7670_IF_0_0 is
  signal \<const1>\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of RST : signal is "xilinx.com:signal:reset:1.0 RST RST";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of RST : signal is "XIL_INTERFACENAME RST, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
  ENA <= \<const1>\;
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
inst: entity work.design_1_ov7670_IF_0_0_ov7670_IF
     port map (
      ADDR(18 downto 0) => ADDR(18 downto 0),
      CAM_HREF => CAM_HREF,
      CAM_PCLK => CAM_PCLK,
      CAM_VSYNC => CAM_VSYNC,
      DATA_OUT(11 downto 0) => DATA_OUT(11 downto 0),
      RST => RST,
      WENA => WENA,
      data(7 downto 0) => data(7 downto 0)
    );
end STRUCTURE;
