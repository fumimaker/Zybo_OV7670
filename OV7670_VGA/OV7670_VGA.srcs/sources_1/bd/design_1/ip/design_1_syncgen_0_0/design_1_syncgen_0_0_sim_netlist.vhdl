-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Thu Apr 23 01:48:11 2020
-- Host        : LAPTOP-AG87OV99 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/ivr/Documents/GitHub/Zybo_OV7670/OV7670_VGA/OV7670_VGA.srcs/sources_1/bd/design_1/ip/design_1_syncgen_0_0/design_1_syncgen_0_0_sim_netlist.vhdl
-- Design      : design_1_syncgen_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_syncgen_0_0_syncgen is
  port (
    Q : out STD_LOGIC_VECTOR ( 9 downto 0 );
    HCNT : out STD_LOGIC_VECTOR ( 9 downto 0 );
    VGA_HS : out STD_LOGIC;
    VGA_VS : out STD_LOGIC;
    RST : in STD_LOGIC;
    PCK : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_syncgen_0_0_syncgen : entity is "syncgen";
end design_1_syncgen_0_0_syncgen;

architecture STRUCTURE of design_1_syncgen_0_0_syncgen is
  signal \^hcnt\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \HCNT[9]_i_1_n_0\ : STD_LOGIC;
  signal \HCNT[9]_i_3_n_0\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal VCNT : STD_LOGIC_VECTOR ( 9 downto 1 );
  signal \VCNT[0]_i_1_n_0\ : STD_LOGIC;
  signal \VCNT[8]_i_2_n_0\ : STD_LOGIC;
  signal \VCNT[9]_i_3_n_0\ : STD_LOGIC;
  signal \VCNT[9]_i_4_n_0\ : STD_LOGIC;
  signal \VCNT[9]_i_5_n_0\ : STD_LOGIC;
  signal \^vga_hs\ : STD_LOGIC;
  signal VGA_HS_i_1_n_0 : STD_LOGIC;
  signal VGA_HS_i_2_n_0 : STD_LOGIC;
  signal VGA_HS_i_3_n_0 : STD_LOGIC;
  signal \^vga_vs\ : STD_LOGIC;
  signal VGA_VS_i_1_n_0 : STD_LOGIC;
  signal VGA_VS_i_2_n_0 : STD_LOGIC;
  signal VGA_VS_i_3_n_0 : STD_LOGIC;
  signal VGA_VS_i_4_n_0 : STD_LOGIC;
  signal hcntend : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 9 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \HCNT[1]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \HCNT[2]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \HCNT[3]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \HCNT[4]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \HCNT[7]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \HCNT[8]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \HCNT[9]_i_3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \VCNT[4]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \VCNT[6]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \VCNT[7]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \VCNT[8]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \VCNT[9]_i_3\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \VCNT[9]_i_4\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \VCNT[9]_i_5\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of VGA_HS_i_3 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of VGA_VS_i_2 : label is "soft_lutpair0";
begin
  HCNT(9 downto 0) <= \^hcnt\(9 downto 0);
  Q(9 downto 0) <= \^q\(9 downto 0);
  VGA_HS <= \^vga_hs\;
  VGA_VS <= \^vga_vs\;
\HCNT[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^hcnt\(0),
      O => p_0_in(0)
    );
\HCNT[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^hcnt\(0),
      I1 => \^hcnt\(1),
      O => p_0_in(1)
    );
\HCNT[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^hcnt\(1),
      I1 => \^hcnt\(0),
      I2 => \^hcnt\(2),
      O => p_0_in(2)
    );
\HCNT[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^hcnt\(2),
      I1 => \^hcnt\(0),
      I2 => \^hcnt\(1),
      I3 => \^hcnt\(3),
      O => p_0_in(3)
    );
\HCNT[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \^hcnt\(4),
      I1 => \^hcnt\(2),
      I2 => \^hcnt\(0),
      I3 => \^hcnt\(1),
      I4 => \^hcnt\(3),
      O => p_0_in(4)
    );
\HCNT[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^hcnt\(4),
      I1 => \^hcnt\(2),
      I2 => \^hcnt\(0),
      I3 => \^hcnt\(1),
      I4 => \^hcnt\(3),
      I5 => \^hcnt\(5),
      O => p_0_in(5)
    );
\HCNT[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D2"
    )
        port map (
      I0 => \^hcnt\(5),
      I1 => \HCNT[9]_i_3_n_0\,
      I2 => \^hcnt\(6),
      O => p_0_in(6)
    );
\HCNT[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DF20"
    )
        port map (
      I0 => \^hcnt\(6),
      I1 => \HCNT[9]_i_3_n_0\,
      I2 => \^hcnt\(5),
      I3 => \^hcnt\(7),
      O => p_0_in(7)
    );
\HCNT[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7FF0800"
    )
        port map (
      I0 => \^hcnt\(7),
      I1 => \^hcnt\(5),
      I2 => \HCNT[9]_i_3_n_0\,
      I3 => \^hcnt\(6),
      I4 => \^hcnt\(8),
      O => p_0_in(8)
    );
\HCNT[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => hcntend,
      I1 => RST,
      O => \HCNT[9]_i_1_n_0\
    );
\HCNT[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFFFFF08000000"
    )
        port map (
      I0 => \^hcnt\(8),
      I1 => \^hcnt\(6),
      I2 => \HCNT[9]_i_3_n_0\,
      I3 => \^hcnt\(5),
      I4 => \^hcnt\(7),
      I5 => \^hcnt\(9),
      O => p_0_in(9)
    );
\HCNT[9]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => \^hcnt\(3),
      I1 => \^hcnt\(1),
      I2 => \^hcnt\(0),
      I3 => \^hcnt\(2),
      I4 => \^hcnt\(4),
      O => \HCNT[9]_i_3_n_0\
    );
\HCNT_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => PCK,
      CE => '1',
      D => p_0_in(0),
      Q => \^hcnt\(0),
      R => \HCNT[9]_i_1_n_0\
    );
\HCNT_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => PCK,
      CE => '1',
      D => p_0_in(1),
      Q => \^hcnt\(1),
      R => \HCNT[9]_i_1_n_0\
    );
\HCNT_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => PCK,
      CE => '1',
      D => p_0_in(2),
      Q => \^hcnt\(2),
      R => \HCNT[9]_i_1_n_0\
    );
\HCNT_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => PCK,
      CE => '1',
      D => p_0_in(3),
      Q => \^hcnt\(3),
      R => \HCNT[9]_i_1_n_0\
    );
\HCNT_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => PCK,
      CE => '1',
      D => p_0_in(4),
      Q => \^hcnt\(4),
      R => \HCNT[9]_i_1_n_0\
    );
\HCNT_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => PCK,
      CE => '1',
      D => p_0_in(5),
      Q => \^hcnt\(5),
      R => \HCNT[9]_i_1_n_0\
    );
\HCNT_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => PCK,
      CE => '1',
      D => p_0_in(6),
      Q => \^hcnt\(6),
      R => \HCNT[9]_i_1_n_0\
    );
\HCNT_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => PCK,
      CE => '1',
      D => p_0_in(7),
      Q => \^hcnt\(7),
      R => \HCNT[9]_i_1_n_0\
    );
\HCNT_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => PCK,
      CE => '1',
      D => p_0_in(8),
      Q => \^hcnt\(8),
      R => \HCNT[9]_i_1_n_0\
    );
\HCNT_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => PCK,
      CE => '1',
      D => p_0_in(9),
      Q => \^hcnt\(9),
      R => \HCNT[9]_i_1_n_0\
    );
\VCNT[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFDFFF"
    )
        port map (
      I0 => \^q\(9),
      I1 => \VCNT[9]_i_5_n_0\,
      I2 => \^q\(3),
      I3 => \^q\(2),
      I4 => \^q\(1),
      I5 => \^q\(0),
      O => \VCNT[0]_i_1_n_0\
    );
\VCNT[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => VCNT(1)
    );
\VCNT[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3333CCCCCCCCC4CC"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(2),
      I2 => \VCNT[9]_i_5_n_0\,
      I3 => \^q\(9),
      I4 => \^q\(1),
      I5 => \^q\(0),
      O => VCNT(2)
    );
\VCNT[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6666CCCCCCCCC4CC"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(3),
      I2 => \VCNT[9]_i_5_n_0\,
      I3 => \^q\(9),
      I4 => \^q\(1),
      I5 => \^q\(0),
      O => VCNT(3)
    );
\VCNT[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(3),
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => \^q\(4),
      O => VCNT(4)
    );
\VCNT[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \^q\(3),
      I4 => \^q\(2),
      I5 => \^q\(5),
      O => VCNT(5)
    );
\VCNT[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF40"
    )
        port map (
      I0 => \VCNT[8]_i_2_n_0\,
      I1 => \^q\(4),
      I2 => \^q\(5),
      I3 => \^q\(6),
      O => VCNT(6)
    );
\VCNT[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF4000"
    )
        port map (
      I0 => \VCNT[8]_i_2_n_0\,
      I1 => \^q\(5),
      I2 => \^q\(4),
      I3 => \^q\(6),
      I4 => \^q\(7),
      O => VCNT(7)
    );
\VCNT[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF40000000"
    )
        port map (
      I0 => \VCNT[8]_i_2_n_0\,
      I1 => \^q\(6),
      I2 => \^q\(4),
      I3 => \^q\(5),
      I4 => \^q\(7),
      I5 => \^q\(8),
      O => VCNT(8)
    );
\VCNT[8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(3),
      I3 => \^q\(2),
      O => \VCNT[8]_i_2_n_0\
    );
\VCNT[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000001000000"
    )
        port map (
      I0 => \^hcnt\(7),
      I1 => \^hcnt\(6),
      I2 => \^hcnt\(5),
      I3 => \^hcnt\(8),
      I4 => \^hcnt\(9),
      I5 => \HCNT[9]_i_3_n_0\,
      O => hcntend
    );
\VCNT[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFF1000EFFC1000"
    )
        port map (
      I0 => \VCNT[9]_i_3_n_0\,
      I1 => \VCNT[9]_i_4_n_0\,
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => \^q\(9),
      I5 => \VCNT[9]_i_5_n_0\,
      O => VCNT(9)
    );
\VCNT[9]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => \^q\(7),
      I1 => \^q\(5),
      I2 => \^q\(4),
      I3 => \^q\(6),
      I4 => \^q\(8),
      O => \VCNT[9]_i_3_n_0\
    );
\VCNT[9]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(3),
      O => \VCNT[9]_i_4_n_0\
    );
\VCNT[9]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(7),
      I2 => \^q\(8),
      I3 => \^q\(6),
      I4 => \^q\(5),
      O => \VCNT[9]_i_5_n_0\
    );
\VCNT_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => PCK,
      CE => hcntend,
      D => \VCNT[0]_i_1_n_0\,
      Q => \^q\(0),
      R => RST
    );
\VCNT_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => PCK,
      CE => hcntend,
      D => VCNT(1),
      Q => \^q\(1),
      R => RST
    );
\VCNT_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => PCK,
      CE => hcntend,
      D => VCNT(2),
      Q => \^q\(2),
      R => RST
    );
\VCNT_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => PCK,
      CE => hcntend,
      D => VCNT(3),
      Q => \^q\(3),
      R => RST
    );
\VCNT_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => PCK,
      CE => hcntend,
      D => VCNT(4),
      Q => \^q\(4),
      R => RST
    );
\VCNT_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => PCK,
      CE => hcntend,
      D => VCNT(5),
      Q => \^q\(5),
      R => RST
    );
\VCNT_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => PCK,
      CE => hcntend,
      D => VCNT(6),
      Q => \^q\(6),
      R => RST
    );
\VCNT_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => PCK,
      CE => hcntend,
      D => VCNT(7),
      Q => \^q\(7),
      R => RST
    );
\VCNT_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => PCK,
      CE => hcntend,
      D => VCNT(8),
      Q => \^q\(8),
      R => RST
    );
\VCNT_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => PCK,
      CE => hcntend,
      D => VCNT(9),
      Q => \^q\(9),
      R => RST
    );
VGA_HS_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAAAABAA8"
    )
        port map (
      I0 => \^vga_hs\,
      I1 => VGA_HS_i_2_n_0,
      I2 => \^hcnt\(6),
      I3 => \^hcnt\(5),
      I4 => \^hcnt\(7),
      I5 => RST,
      O => VGA_HS_i_1_n_0
    );
VGA_HS_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^hcnt\(9),
      I1 => \^hcnt\(8),
      I2 => \^hcnt\(4),
      I3 => VGA_HS_i_3_n_0,
      O => VGA_HS_i_2_n_0
    );
VGA_HS_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \^hcnt\(2),
      I1 => \^hcnt\(0),
      I2 => \^hcnt\(1),
      I3 => \^hcnt\(3),
      O => VGA_HS_i_3_n_0
    );
VGA_HS_reg: unisim.vcomponents.FDRE
     port map (
      C => PCK,
      CE => '1',
      D => VGA_HS_i_1_n_0,
      Q => \^vga_hs\,
      R => '0'
    );
VGA_VS_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFBA8A"
    )
        port map (
      I0 => \^vga_vs\,
      I1 => VGA_HS_i_2_n_0,
      I2 => VGA_VS_i_2_n_0,
      I3 => VGA_VS_i_3_n_0,
      I4 => RST,
      O => VGA_VS_i_1_n_0
    );
VGA_VS_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00404000"
    )
        port map (
      I0 => \VCNT[9]_i_5_n_0\,
      I1 => VGA_VS_i_4_n_0,
      I2 => \^q\(3),
      I3 => \^q\(2),
      I4 => \^q\(1),
      O => VGA_VS_i_2_n_0
    );
VGA_VS_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFBFF"
    )
        port map (
      I0 => \^q\(9),
      I1 => \^q\(3),
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => \VCNT[9]_i_5_n_0\,
      I5 => \^q\(2),
      O => VGA_VS_i_3_n_0
    );
VGA_VS_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \^q\(9),
      I1 => \^q\(0),
      I2 => \^hcnt\(5),
      I3 => \^hcnt\(6),
      I4 => \^hcnt\(7),
      O => VGA_VS_i_4_n_0
    );
VGA_VS_reg: unisim.vcomponents.FDRE
     port map (
      C => PCK,
      CE => '1',
      D => VGA_VS_i_1_n_0,
      Q => \^vga_vs\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_syncgen_0_0 is
  port (
    CLK : in STD_LOGIC;
    RST : in STD_LOGIC;
    PCK : in STD_LOGIC;
    VGA_HS : out STD_LOGIC;
    VGA_VS : out STD_LOGIC;
    HCNT : out STD_LOGIC_VECTOR ( 9 downto 0 );
    VCNT : out STD_LOGIC_VECTOR ( 9 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_syncgen_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_syncgen_0_0 : entity is "design_1_syncgen_0_0,syncgen,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_syncgen_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_syncgen_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_syncgen_0_0 : entity is "syncgen,Vivado 2019.2";
end design_1_syncgen_0_0;

architecture STRUCTURE of design_1_syncgen_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of CLK : signal is "xilinx.com:signal:clock:1.0 CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of CLK : signal is "XIL_INTERFACENAME CLK, ASSOCIATED_RESET RST, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_1_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of RST : signal is "xilinx.com:signal:reset:1.0 RST RST";
  attribute X_INTERFACE_PARAMETER of RST : signal is "XIL_INTERFACENAME RST, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.design_1_syncgen_0_0_syncgen
     port map (
      HCNT(9 downto 0) => HCNT(9 downto 0),
      PCK => PCK,
      Q(9 downto 0) => VCNT(9 downto 0),
      RST => RST,
      VGA_HS => VGA_HS,
      VGA_VS => VGA_VS
    );
end STRUCTURE;
