// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Sat May 17 12:22:08 2025
// Host        : LAPTOP-Q99NL9L5 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               C:/Users/karan/OneDrive/Desktop/project_2/project_2.sim/sim_1/impl/func/xsim/fir_filter_func_impl.v
// Design      : fir_filter
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7vx485tffg1157-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* ECO_CHECKSUM = "b1731e5c" *) 
(* NotValidForBitStream *)
(* \DesignAttr:ENABLE_NOC_NETLIST_VIEW  *) 
(* \DesignAttr:ENABLE_AIE_NETLIST_VIEW  *) 
module fir_filter
   (clk,
    noisy_signal,
    filtered_signal);
  input clk;
  input [15:0]noisy_signal;
  output [15:0]filtered_signal;

  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire \delayed_signal_reg[5][0]_srl5_n_0 ;
  wire \delayed_signal_reg[5][10]_srl5_n_0 ;
  wire \delayed_signal_reg[5][11]_srl5_n_0 ;
  wire \delayed_signal_reg[5][12]_srl5_n_0 ;
  wire \delayed_signal_reg[5][13]_srl5_n_0 ;
  wire \delayed_signal_reg[5][14]_srl5_n_0 ;
  wire \delayed_signal_reg[5][15]_srl5_n_0 ;
  wire \delayed_signal_reg[5][1]_srl5_n_0 ;
  wire \delayed_signal_reg[5][2]_srl5_n_0 ;
  wire \delayed_signal_reg[5][3]_srl5_n_0 ;
  wire \delayed_signal_reg[5][4]_srl5_n_0 ;
  wire \delayed_signal_reg[5][5]_srl5_n_0 ;
  wire \delayed_signal_reg[5][6]_srl5_n_0 ;
  wire \delayed_signal_reg[5][7]_srl5_n_0 ;
  wire \delayed_signal_reg[5][8]_srl5_n_0 ;
  wire \delayed_signal_reg[5][9]_srl5_n_0 ;
  wire [15:0]\delayed_signal_reg[6] ;
  wire \delayed_signal_reg_n_0_[0][0] ;
  wire \delayed_signal_reg_n_0_[0][10] ;
  wire \delayed_signal_reg_n_0_[0][11] ;
  wire \delayed_signal_reg_n_0_[0][12] ;
  wire \delayed_signal_reg_n_0_[0][13] ;
  wire \delayed_signal_reg_n_0_[0][14] ;
  wire \delayed_signal_reg_n_0_[0][15] ;
  wire \delayed_signal_reg_n_0_[0][1] ;
  wire \delayed_signal_reg_n_0_[0][2] ;
  wire \delayed_signal_reg_n_0_[0][3] ;
  wire \delayed_signal_reg_n_0_[0][4] ;
  wire \delayed_signal_reg_n_0_[0][5] ;
  wire \delayed_signal_reg_n_0_[0][6] ;
  wire \delayed_signal_reg_n_0_[0][7] ;
  wire \delayed_signal_reg_n_0_[0][8] ;
  wire \delayed_signal_reg_n_0_[0][9] ;
  wire [15:0]filtered_signal;
  wire [15:0]filtered_signal_OBUF;
  wire [15:0]noisy_signal;
  wire [15:0]noisy_signal_IBUF;
  wire NLW_sum_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_sum_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_sum_reg_OVERFLOW_UNCONNECTED;
  wire NLW_sum_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_sum_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_sum_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_sum_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_sum_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_sum_reg_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_sum_reg_P_UNCONNECTED;
  wire [47:0]NLW_sum_reg_PCOUT_UNCONNECTED;

  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \delayed_signal_reg[0][0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(noisy_signal_IBUF[0]),
        .Q(\delayed_signal_reg_n_0_[0][0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \delayed_signal_reg[0][10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(noisy_signal_IBUF[10]),
        .Q(\delayed_signal_reg_n_0_[0][10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \delayed_signal_reg[0][11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(noisy_signal_IBUF[11]),
        .Q(\delayed_signal_reg_n_0_[0][11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \delayed_signal_reg[0][12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(noisy_signal_IBUF[12]),
        .Q(\delayed_signal_reg_n_0_[0][12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \delayed_signal_reg[0][13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(noisy_signal_IBUF[13]),
        .Q(\delayed_signal_reg_n_0_[0][13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \delayed_signal_reg[0][14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(noisy_signal_IBUF[14]),
        .Q(\delayed_signal_reg_n_0_[0][14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \delayed_signal_reg[0][15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(noisy_signal_IBUF[15]),
        .Q(\delayed_signal_reg_n_0_[0][15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \delayed_signal_reg[0][1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(noisy_signal_IBUF[1]),
        .Q(\delayed_signal_reg_n_0_[0][1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \delayed_signal_reg[0][2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(noisy_signal_IBUF[2]),
        .Q(\delayed_signal_reg_n_0_[0][2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \delayed_signal_reg[0][3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(noisy_signal_IBUF[3]),
        .Q(\delayed_signal_reg_n_0_[0][3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \delayed_signal_reg[0][4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(noisy_signal_IBUF[4]),
        .Q(\delayed_signal_reg_n_0_[0][4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \delayed_signal_reg[0][5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(noisy_signal_IBUF[5]),
        .Q(\delayed_signal_reg_n_0_[0][5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \delayed_signal_reg[0][6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(noisy_signal_IBUF[6]),
        .Q(\delayed_signal_reg_n_0_[0][6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \delayed_signal_reg[0][7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(noisy_signal_IBUF[7]),
        .Q(\delayed_signal_reg_n_0_[0][7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \delayed_signal_reg[0][8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(noisy_signal_IBUF[8]),
        .Q(\delayed_signal_reg_n_0_[0][8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \delayed_signal_reg[0][9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(noisy_signal_IBUF[9]),
        .Q(\delayed_signal_reg_n_0_[0][9] ),
        .R(1'b0));
  (* srl_bus_name = "\\delayed_signal_reg[5] " *) 
  (* srl_name = "\\delayed_signal_reg[5][0]_srl5 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \delayed_signal_reg[5][0]_srl5 
       (.A0(1'b0),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\delayed_signal_reg_n_0_[0][0] ),
        .Q(\delayed_signal_reg[5][0]_srl5_n_0 ));
  (* srl_bus_name = "\\delayed_signal_reg[5] " *) 
  (* srl_name = "\\delayed_signal_reg[5][10]_srl5 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \delayed_signal_reg[5][10]_srl5 
       (.A0(1'b0),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\delayed_signal_reg_n_0_[0][10] ),
        .Q(\delayed_signal_reg[5][10]_srl5_n_0 ));
  (* srl_bus_name = "\\delayed_signal_reg[5] " *) 
  (* srl_name = "\\delayed_signal_reg[5][11]_srl5 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \delayed_signal_reg[5][11]_srl5 
       (.A0(1'b0),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\delayed_signal_reg_n_0_[0][11] ),
        .Q(\delayed_signal_reg[5][11]_srl5_n_0 ));
  (* srl_bus_name = "\\delayed_signal_reg[5] " *) 
  (* srl_name = "\\delayed_signal_reg[5][12]_srl5 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \delayed_signal_reg[5][12]_srl5 
       (.A0(1'b0),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\delayed_signal_reg_n_0_[0][12] ),
        .Q(\delayed_signal_reg[5][12]_srl5_n_0 ));
  (* srl_bus_name = "\\delayed_signal_reg[5] " *) 
  (* srl_name = "\\delayed_signal_reg[5][13]_srl5 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \delayed_signal_reg[5][13]_srl5 
       (.A0(1'b0),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\delayed_signal_reg_n_0_[0][13] ),
        .Q(\delayed_signal_reg[5][13]_srl5_n_0 ));
  (* srl_bus_name = "\\delayed_signal_reg[5] " *) 
  (* srl_name = "\\delayed_signal_reg[5][14]_srl5 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \delayed_signal_reg[5][14]_srl5 
       (.A0(1'b0),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\delayed_signal_reg_n_0_[0][14] ),
        .Q(\delayed_signal_reg[5][14]_srl5_n_0 ));
  (* srl_bus_name = "\\delayed_signal_reg[5] " *) 
  (* srl_name = "\\delayed_signal_reg[5][15]_srl5 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \delayed_signal_reg[5][15]_srl5 
       (.A0(1'b0),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\delayed_signal_reg_n_0_[0][15] ),
        .Q(\delayed_signal_reg[5][15]_srl5_n_0 ));
  (* srl_bus_name = "\\delayed_signal_reg[5] " *) 
  (* srl_name = "\\delayed_signal_reg[5][1]_srl5 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \delayed_signal_reg[5][1]_srl5 
       (.A0(1'b0),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\delayed_signal_reg_n_0_[0][1] ),
        .Q(\delayed_signal_reg[5][1]_srl5_n_0 ));
  (* srl_bus_name = "\\delayed_signal_reg[5] " *) 
  (* srl_name = "\\delayed_signal_reg[5][2]_srl5 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \delayed_signal_reg[5][2]_srl5 
       (.A0(1'b0),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\delayed_signal_reg_n_0_[0][2] ),
        .Q(\delayed_signal_reg[5][2]_srl5_n_0 ));
  (* srl_bus_name = "\\delayed_signal_reg[5] " *) 
  (* srl_name = "\\delayed_signal_reg[5][3]_srl5 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \delayed_signal_reg[5][3]_srl5 
       (.A0(1'b0),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\delayed_signal_reg_n_0_[0][3] ),
        .Q(\delayed_signal_reg[5][3]_srl5_n_0 ));
  (* srl_bus_name = "\\delayed_signal_reg[5] " *) 
  (* srl_name = "\\delayed_signal_reg[5][4]_srl5 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \delayed_signal_reg[5][4]_srl5 
       (.A0(1'b0),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\delayed_signal_reg_n_0_[0][4] ),
        .Q(\delayed_signal_reg[5][4]_srl5_n_0 ));
  (* srl_bus_name = "\\delayed_signal_reg[5] " *) 
  (* srl_name = "\\delayed_signal_reg[5][5]_srl5 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \delayed_signal_reg[5][5]_srl5 
       (.A0(1'b0),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\delayed_signal_reg_n_0_[0][5] ),
        .Q(\delayed_signal_reg[5][5]_srl5_n_0 ));
  (* srl_bus_name = "\\delayed_signal_reg[5] " *) 
  (* srl_name = "\\delayed_signal_reg[5][6]_srl5 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \delayed_signal_reg[5][6]_srl5 
       (.A0(1'b0),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\delayed_signal_reg_n_0_[0][6] ),
        .Q(\delayed_signal_reg[5][6]_srl5_n_0 ));
  (* srl_bus_name = "\\delayed_signal_reg[5] " *) 
  (* srl_name = "\\delayed_signal_reg[5][7]_srl5 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \delayed_signal_reg[5][7]_srl5 
       (.A0(1'b0),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\delayed_signal_reg_n_0_[0][7] ),
        .Q(\delayed_signal_reg[5][7]_srl5_n_0 ));
  (* srl_bus_name = "\\delayed_signal_reg[5] " *) 
  (* srl_name = "\\delayed_signal_reg[5][8]_srl5 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \delayed_signal_reg[5][8]_srl5 
       (.A0(1'b0),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\delayed_signal_reg_n_0_[0][8] ),
        .Q(\delayed_signal_reg[5][8]_srl5_n_0 ));
  (* srl_bus_name = "\\delayed_signal_reg[5] " *) 
  (* srl_name = "\\delayed_signal_reg[5][9]_srl5 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \delayed_signal_reg[5][9]_srl5 
       (.A0(1'b0),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\delayed_signal_reg_n_0_[0][9] ),
        .Q(\delayed_signal_reg[5][9]_srl5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \delayed_signal_reg[6][0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\delayed_signal_reg[5][0]_srl5_n_0 ),
        .Q(\delayed_signal_reg[6] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \delayed_signal_reg[6][10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\delayed_signal_reg[5][10]_srl5_n_0 ),
        .Q(\delayed_signal_reg[6] [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \delayed_signal_reg[6][11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\delayed_signal_reg[5][11]_srl5_n_0 ),
        .Q(\delayed_signal_reg[6] [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \delayed_signal_reg[6][12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\delayed_signal_reg[5][12]_srl5_n_0 ),
        .Q(\delayed_signal_reg[6] [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \delayed_signal_reg[6][13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\delayed_signal_reg[5][13]_srl5_n_0 ),
        .Q(\delayed_signal_reg[6] [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \delayed_signal_reg[6][14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\delayed_signal_reg[5][14]_srl5_n_0 ),
        .Q(\delayed_signal_reg[6] [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \delayed_signal_reg[6][15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\delayed_signal_reg[5][15]_srl5_n_0 ),
        .Q(\delayed_signal_reg[6] [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \delayed_signal_reg[6][1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\delayed_signal_reg[5][1]_srl5_n_0 ),
        .Q(\delayed_signal_reg[6] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \delayed_signal_reg[6][2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\delayed_signal_reg[5][2]_srl5_n_0 ),
        .Q(\delayed_signal_reg[6] [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \delayed_signal_reg[6][3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\delayed_signal_reg[5][3]_srl5_n_0 ),
        .Q(\delayed_signal_reg[6] [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \delayed_signal_reg[6][4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\delayed_signal_reg[5][4]_srl5_n_0 ),
        .Q(\delayed_signal_reg[6] [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \delayed_signal_reg[6][5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\delayed_signal_reg[5][5]_srl5_n_0 ),
        .Q(\delayed_signal_reg[6] [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \delayed_signal_reg[6][6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\delayed_signal_reg[5][6]_srl5_n_0 ),
        .Q(\delayed_signal_reg[6] [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \delayed_signal_reg[6][7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\delayed_signal_reg[5][7]_srl5_n_0 ),
        .Q(\delayed_signal_reg[6] [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \delayed_signal_reg[6][8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\delayed_signal_reg[5][8]_srl5_n_0 ),
        .Q(\delayed_signal_reg[6] [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \delayed_signal_reg[6][9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\delayed_signal_reg[5][9]_srl5_n_0 ),
        .Q(\delayed_signal_reg[6] [9]),
        .R(1'b0));
  OBUF \filtered_signal_OBUF[0]_inst 
       (.I(filtered_signal_OBUF[0]),
        .O(filtered_signal[0]));
  OBUF \filtered_signal_OBUF[10]_inst 
       (.I(filtered_signal_OBUF[10]),
        .O(filtered_signal[10]));
  OBUF \filtered_signal_OBUF[11]_inst 
       (.I(filtered_signal_OBUF[11]),
        .O(filtered_signal[11]));
  OBUF \filtered_signal_OBUF[12]_inst 
       (.I(filtered_signal_OBUF[12]),
        .O(filtered_signal[12]));
  OBUF \filtered_signal_OBUF[13]_inst 
       (.I(filtered_signal_OBUF[13]),
        .O(filtered_signal[13]));
  OBUF \filtered_signal_OBUF[14]_inst 
       (.I(filtered_signal_OBUF[14]),
        .O(filtered_signal[14]));
  OBUF \filtered_signal_OBUF[15]_inst 
       (.I(filtered_signal_OBUF[15]),
        .O(filtered_signal[15]));
  OBUF \filtered_signal_OBUF[1]_inst 
       (.I(filtered_signal_OBUF[1]),
        .O(filtered_signal[1]));
  OBUF \filtered_signal_OBUF[2]_inst 
       (.I(filtered_signal_OBUF[2]),
        .O(filtered_signal[2]));
  OBUF \filtered_signal_OBUF[3]_inst 
       (.I(filtered_signal_OBUF[3]),
        .O(filtered_signal[3]));
  OBUF \filtered_signal_OBUF[4]_inst 
       (.I(filtered_signal_OBUF[4]),
        .O(filtered_signal[4]));
  OBUF \filtered_signal_OBUF[5]_inst 
       (.I(filtered_signal_OBUF[5]),
        .O(filtered_signal[5]));
  OBUF \filtered_signal_OBUF[6]_inst 
       (.I(filtered_signal_OBUF[6]),
        .O(filtered_signal[6]));
  OBUF \filtered_signal_OBUF[7]_inst 
       (.I(filtered_signal_OBUF[7]),
        .O(filtered_signal[7]));
  OBUF \filtered_signal_OBUF[8]_inst 
       (.I(filtered_signal_OBUF[8]),
        .O(filtered_signal[8]));
  OBUF \filtered_signal_OBUF[9]_inst 
       (.I(filtered_signal_OBUF[9]),
        .O(filtered_signal[9]));
  IBUF \noisy_signal_IBUF[0]_inst 
       (.I(noisy_signal[0]),
        .O(noisy_signal_IBUF[0]));
  IBUF \noisy_signal_IBUF[10]_inst 
       (.I(noisy_signal[10]),
        .O(noisy_signal_IBUF[10]));
  IBUF \noisy_signal_IBUF[11]_inst 
       (.I(noisy_signal[11]),
        .O(noisy_signal_IBUF[11]));
  IBUF \noisy_signal_IBUF[12]_inst 
       (.I(noisy_signal[12]),
        .O(noisy_signal_IBUF[12]));
  IBUF \noisy_signal_IBUF[13]_inst 
       (.I(noisy_signal[13]),
        .O(noisy_signal_IBUF[13]));
  IBUF \noisy_signal_IBUF[14]_inst 
       (.I(noisy_signal[14]),
        .O(noisy_signal_IBUF[14]));
  IBUF \noisy_signal_IBUF[15]_inst 
       (.I(noisy_signal[15]),
        .O(noisy_signal_IBUF[15]));
  IBUF \noisy_signal_IBUF[1]_inst 
       (.I(noisy_signal[1]),
        .O(noisy_signal_IBUF[1]));
  IBUF \noisy_signal_IBUF[2]_inst 
       (.I(noisy_signal[2]),
        .O(noisy_signal_IBUF[2]));
  IBUF \noisy_signal_IBUF[3]_inst 
       (.I(noisy_signal[3]),
        .O(noisy_signal_IBUF[3]));
  IBUF \noisy_signal_IBUF[4]_inst 
       (.I(noisy_signal[4]),
        .O(noisy_signal_IBUF[4]));
  IBUF \noisy_signal_IBUF[5]_inst 
       (.I(noisy_signal[5]),
        .O(noisy_signal_IBUF[5]));
  IBUF \noisy_signal_IBUF[6]_inst 
       (.I(noisy_signal[6]),
        .O(noisy_signal_IBUF[6]));
  IBUF \noisy_signal_IBUF[7]_inst 
       (.I(noisy_signal[7]),
        .O(noisy_signal_IBUF[7]));
  IBUF \noisy_signal_IBUF[8]_inst 
       (.I(noisy_signal[8]),
        .O(noisy_signal_IBUF[8]));
  IBUF \noisy_signal_IBUF[9]_inst 
       (.I(noisy_signal[9]),
        .O(noisy_signal_IBUF[9]));
  DSP48E1 #(
    .ACASCREG(2),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(2),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(1),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    sum_reg
       (.A({\delayed_signal_reg[6] [15],\delayed_signal_reg[6] [15],\delayed_signal_reg[6] [15],\delayed_signal_reg[6] [15],\delayed_signal_reg[6] [15],\delayed_signal_reg[6] [15],\delayed_signal_reg[6] [15],\delayed_signal_reg[6] [15],\delayed_signal_reg[6] [15],\delayed_signal_reg[6] [15],\delayed_signal_reg[6] [15],\delayed_signal_reg[6] [15],\delayed_signal_reg[6] [15],\delayed_signal_reg[6] [15],\delayed_signal_reg[6] }),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_sum_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b0,1'b1,1'b1,1'b0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_sum_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_sum_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_sum_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b1),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b1),
        .CEP(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_sum_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b1,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_sum_reg_OVERFLOW_UNCONNECTED),
        .P({NLW_sum_reg_P_UNCONNECTED[47:36],filtered_signal_OBUF,NLW_sum_reg_P_UNCONNECTED[19:0]}),
        .PATTERNBDETECT(NLW_sum_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_sum_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_sum_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_sum_reg_UNDERFLOW_UNCONNECTED));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
