# Copyright (C) 1991-2013 Altera Corporation
# Your use of Altera Corporation's design tools, logic functions 
# and other software and tools, and its AMPP partner logic 
# functions, and any output files from any of the foregoing 
# (including device programming or simulation files), and any 
# associated documentation or information are expressly subject 
# to the terms and conditions of the Altera Program License 
# Subscription Agreement, Altera MegaCore Function License 
# Agreement, or other applicable license agreement, including, 
# without limitation, that your use is for the sole purpose of 
# programming logic devices manufactured by Altera and sold by 
# Altera or its authorized distributors.  Please refer to the 
# applicable agreement for further details.

# Quartus II: Generate Tcl File for Project
# File: cpd_top.tcl
# Generated on: Wed Sep  9 15:12:15 2015

# Load Quartus II Tcl Project package
package require ::quartus::project

set need_to_close_project 0
set make_assignments 1

# Check that the right project is open
if {[is_project_open]} {
	if {[string compare $quartus(project) "cpd_top"]} {
		puts "Project cpd_top is not open"
		set make_assignments 0
	}
} else {
	# Only open if not already open
	if {[project_exists cpd_top]} {
		project_open -revision cpd_top cpd_top
	} else {
		project_new -revision cpd_top cpd_top
	}
	set need_to_close_project 1
}

# Make assignments
if {$make_assignments} {
	set_global_assignment -name ORIGINAL_QUARTUS_VERSION 2.2
	set_global_assignment -name PROJECT_CREATION_TIME_DATE "09:53:58  MAY 06, 2004"
	set_global_assignment -name LAST_QUARTUS_VERSION 13.0
	set_global_assignment -name VHDL_FILE vhdl/cpd_top.vhd
	set_global_assignment -name DEVICE_FILTER_PACKAGE FBGA
	set_global_assignment -name DEVICE_FILTER_PIN_COUNT 672
	set_global_assignment -name DEVICE_FILTER_SPEED_GRADE 6
	set_global_assignment -name EDA_DESIGN_ENTRY_SYNTHESIS_TOOL "<None>"
	set_global_assignment -name FAMILY "Cyclone II"
	set_global_assignment -name TOP_LEVEL_ENTITY cpd_top
	set_global_assignment -name AUTO_ENABLE_SMART_COMPILE ON
#	set_global_assignment -name USER_LIBRARIES "C:\\MegaCore\\pci_compiler-v4.0.0\\lib;C:\\MegaCore\\ddr_ddr2_sdram-v3.2.0\\lib"
	set_global_assignment -name DEVICE EP2C35F672C6
	set_global_assignment -name RESERVE_ALL_UNUSED_PINS "AS INPUT TRI-STATED"
	set_global_assignment -name RESERVE_ASDO_AFTER_CONFIGURATION "AS INPUT TRI-STATED"
	set_global_assignment -name ERROR_CHECK_FREQUENCY_DIVISOR 1
	set_global_assignment -name STRATIX_CONFIGURATION_DEVICE EPCS64
	set_global_assignment -name RESERVE_ALL_UNUSED_PINS_NO_OUTPUT_GND "AS INPUT TRI-STATED"
	set_global_assignment -name RELEASE_CLEARS_BEFORE_TRI_STATES ON
	set_global_assignment -name ENABLE_ASM_OPTIONS_FILE debug_asm.xml
	set_global_assignment -name GLITCH_INTERVAL "1 ns"
	set_global_assignment -name ENABLE_SIGNALTAP OFF
#	set_global_assignment -name USE_SIGNALTAP_FILE ../vhdl/stp_debug_p2s_lhfifos.stp
	set_global_assignment -name BASED_ON_CLOCK_SETTINGS clk -section_id clk
	set_global_assignment -name FMAX_REQUIREMENT "15 ns" -section_id clk
	set_global_assignment -name PARTITION_NETLIST_TYPE SOURCE -section_id Top
	set_global_assignment -name PARTITION_FITTER_PRESERVATION_LEVEL PLACEMENT_AND_ROUTING -section_id Top
	set_global_assignment -name PARTITION_COLOR 16764057 -section_id Top
	set_global_assignment -name STRATIX_DEVICE_IO_STANDARD "3.3-V LVTTL"
	set_location_assignment PIN_A19 -to ddr_a[0]
	set_location_assignment PIN_A20 -to ddr_a[1]
	set_location_assignment PIN_A21 -to ddr_a[2]
	set_location_assignment PIN_B19 -to ddr_a[3]
	set_location_assignment PIN_B21 -to ddr_a[4]
	set_location_assignment PIN_B22 -to ddr_a[5]
	set_location_assignment PIN_C19 -to ddr_a[6]
	set_location_assignment PIN_D18 -to ddr_a[7]
	set_location_assignment PIN_D19 -to ddr_a[8]
	set_location_assignment PIN_D20 -to ddr_a[9]
	set_location_assignment PIN_A4 -to ddr_a[10]
	set_location_assignment PIN_A5 -to ddr_a[11]
	set_location_assignment PIN_B4 -to ddr_a[12]
	set_location_assignment PIN_B5 -to ddr_a[13]
	set_location_assignment PIN_B6 -to ddr_a[14]
	set_location_assignment PIN_C4 -to ddr_a[15]
	set_location_assignment PIN_C22 -to ddr_ba[0]
	set_location_assignment PIN_C21 -to ddr_ba[1]
	set_location_assignment PIN_C11 -to ddr_ba[2]
	set_location_assignment PIN_F9 -to ddr_cas_n
	set_location_assignment PIN_A23 -to clk_to_sdram_n[0]
	set_location_assignment PIN_A8 -to clk_to_sdram_n[1]
	set_location_assignment PIN_A22 -to clk_to_sdram[0]
	set_location_assignment PIN_A9 -to clk_to_sdram[1]
	set_location_assignment PIN_D21 -to ddr_cke
	set_location_assignment PIN_C23 -to ddr_cs_n
	set_location_assignment PIN_C16 -to ddr_dm[0]
	set_location_assignment PIN_G12 -to ddr_dm[1]
	set_location_assignment PIN_D6 -to ddr_dm[2]
	set_location_assignment PIN_B9 -to ddr_dm[3]
	set_location_assignment PIN_A18 -to ddr_dq[0]
	set_location_assignment PIN_G16 -to ddr_dq[1]
	set_location_assignment PIN_F16 -to ddr_dq[2]
	set_location_assignment PIN_F15 -to ddr_dq[3]
	set_location_assignment PIN_G15 -to ddr_dq[4]
	set_location_assignment PIN_B17 -to ddr_dq[5]
	set_location_assignment PIN_A17 -to ddr_dq[6]
	set_location_assignment PIN_E15 -to ddr_dq[7]
	set_location_assignment PIN_B16 -to ddr_dq[8]
	set_location_assignment PIN_B15 -to ddr_dq[9]
	set_location_assignment PIN_C15 -to ddr_dq[10]
	set_location_assignment PIN_G13 -to ddr_dq[11]
	set_location_assignment PIN_G14 -to ddr_dq[12]
	set_location_assignment PIN_F14 -to ddr_dq[13]
	set_location_assignment PIN_D14 -to ddr_dq[14]
	set_location_assignment PIN_B11 -to ddr_dq[15]
	set_location_assignment PIN_F11 -to ddr_dq[16]
	set_location_assignment PIN_C9 -to ddr_dq[17]
	set_location_assignment PIN_D9 -to ddr_dq[18]
	set_location_assignment PIN_G10 -to ddr_dq[19]
	set_location_assignment PIN_F10 -to ddr_dq[20]
	set_location_assignment PIN_C8 -to ddr_dq[21]
	set_location_assignment PIN_D8 -to ddr_dq[22]
	set_location_assignment PIN_A7 -to ddr_dq[23]
	set_location_assignment PIN_F12 -to ddr_dq[24]
	set_location_assignment PIN_D12 -to ddr_dq[25]
	set_location_assignment PIN_E12 -to ddr_dq[26]
	set_location_assignment PIN_G11 -to ddr_dq[27]
	set_location_assignment PIN_A10 -to ddr_dq[28]
	set_location_assignment PIN_B10 -to ddr_dq[29]
	set_location_assignment PIN_D10 -to ddr_dq[30]
	set_location_assignment PIN_C10 -to ddr_dq[31]
#	set_location_assignment PIN_C17 -to ddr_dqs[0]
#	set_location_assignment PIN_B14 -to ddr_dqs[1]
#	set_location_assignment PIN_B8 -to ddr_dqs[2]
#	set_location_assignment PIN_C12 -to ddr_dqs[3]
	set_location_assignment PIN_G9 -to ddr_odt
	set_location_assignment PIN_D7 -to ddr_ras_n
	set_location_assignment PIN_AF14 -to ddr_sync_clk_in
	set_location_assignment PIN_B7 -to ddr_sync_clk_out
	set_location_assignment PIN_C7 -to ddr_we_n
	set_location_assignment PIN_G17 -to conf_safe_cs0n
	set_location_assignment PIN_G18 -to conf_user_cs0n
	set_location_assignment PIN_AA12 -to user_dipsw[0]
	set_location_assignment PIN_AB8 -to user_dipsw[1]
	set_location_assignment PIN_AC6 -to user_dipsw[2]
	set_location_assignment PIN_AD12 -to user_dipsw[3]
	set_location_assignment PIN_AD8 -to user_dipsw[4]
	set_location_assignment PIN_AF22 -to qdrii_a[0]
	set_location_assignment PIN_AF21 -to qdrii_a[1]
	set_location_assignment PIN_AD22 -to qdrii_a[2]
	set_location_assignment PIN_AD19 -to qdrii_a[3]
	set_location_assignment PIN_AC22 -to qdrii_a[4]
	set_location_assignment PIN_AC20 -to qdrii_a[5]
	set_location_assignment PIN_AC19 -to qdrii_a[6]
	set_location_assignment PIN_AC18 -to qdrii_a[7]
	set_location_assignment PIN_AB21 -to qdrii_a[8]
	set_location_assignment PIN_AB20 -to qdrii_a[9]
	set_location_assignment PIN_AB18 -to qdrii_a[10]
	set_location_assignment PIN_AC9 -to qdrii_a[11]
	set_location_assignment PIN_AC8 -to qdrii_a[12]
	set_location_assignment PIN_AA18 -to qdrii_a[13]
	set_location_assignment PIN_AE15 -to qdrii_a[14]
	set_location_assignment PIN_AC21 -to qdrii_a[15]
	set_location_assignment PIN_AD21 -to qdrii_a[16]
	set_location_assignment PIN_AA20 -to qdrii_a[17]
	set_location_assignment PIN_AE19 -to qdrii_a[18]
	set_location_assignment PIN_AC15 -to qdrii_a[19]
	set_location_assignment PIN_AE22 -to qdrii_bwsn[0]
	set_location_assignment PIN_AE21 -to qdrii_bwsn[1]
	set_location_assignment PIN_AE8 -to qdrii_cq_n0
	set_location_assignment PIN_AF19 -to qdrii_cq_p0
	set_location_assignment PIN_AF20 -to qdrii_d[0]
	set_location_assignment PIN_AB15 -to qdrii_d[1]
	set_location_assignment PIN_AD15 -to qdrii_d[2]
	set_location_assignment PIN_AC14 -to qdrii_d[3]
	set_location_assignment PIN_AA13 -to qdrii_d[4]
	set_location_assignment PIN_Y13 -to qdrii_d[5]
	set_location_assignment PIN_Y14 -to qdrii_d[6]
	set_location_assignment PIN_Y15 -to qdrii_d[7]
	set_location_assignment PIN_AA15 -to qdrii_d[8]
	set_location_assignment PIN_AE16 -to qdrii_d[9]
	set_location_assignment PIN_AD16 -to qdrii_d[10]
	set_location_assignment PIN_AF17 -to qdrii_d[11]
	set_location_assignment PIN_AE17 -to qdrii_d[12]
	set_location_assignment PIN_AC17 -to qdrii_d[13]
	set_location_assignment PIN_AD17 -to qdrii_d[14]
	set_location_assignment PIN_AA16 -to qdrii_d[15]
	set_location_assignment PIN_Y16 -to qdrii_d[16]
	set_location_assignment PIN_AF18 -to qdrii_d[17]
	set_location_assignment PIN_AE23 -to qdrii_k_n0
	set_location_assignment PIN_AF23 -to qdrii_k_p0
	set_location_assignment PIN_AE6 -to qdrii_q[0]
	set_location_assignment PIN_AF6 -to qdrii_q[1]
	set_location_assignment PIN_AA9 -to qdrii_q[2]
	set_location_assignment PIN_AA10 -to qdrii_q[3]
	set_location_assignment PIN_AB10 -to qdrii_q[4]
	set_location_assignment PIN_AA11 -to qdrii_q[5]
	set_location_assignment PIN_Y11 -to qdrii_q[6]
	set_location_assignment PIN_AE7 -to qdrii_q[7]
	set_location_assignment PIN_AF7 -to qdrii_q[8]
	set_location_assignment PIN_AE9 -to qdrii_q[9]
	set_location_assignment PIN_AF9 -to qdrii_q[10]
	set_location_assignment PIN_AD10 -to qdrii_q[11]
	set_location_assignment PIN_AC11 -to qdrii_q[12]
	set_location_assignment PIN_AE10 -to qdrii_q[13]
	set_location_assignment PIN_AF10 -to qdrii_q[14]
	set_location_assignment PIN_AB12 -to qdrii_q[15]
	set_location_assignment PIN_AD11 -to qdrii_q[16]
	set_location_assignment PIN_AE11 -to qdrii_q[17]
	set_location_assignment PIN_AD23 -to qdrii_rpsn0
	set_location_assignment PIN_AD13 -to qdrii_sync_clk_in
	set_location_assignment PIN_AE18 -to qdrii_sync_clk_out
	set_location_assignment PIN_AE20 -to qdrii_wpsn0
	set_location_assignment PIN_V25 -to ack64n
	set_location_assignment PIN_L20 -to ad[0]
	set_location_assignment PIN_L21 -to ad[1]
	set_location_assignment PIN_L24 -to ad[2]
	set_location_assignment PIN_L25 -to ad[3]
	set_location_assignment PIN_M19 -to ad[4]
	set_location_assignment PIN_M22 -to ad[5]
	set_location_assignment PIN_M23 -to ad[6]
	set_location_assignment PIN_R24 -to ad[7]
	set_location_assignment PIN_U22 -to ad[8]
	set_location_assignment PIN_U25 -to ad[9]
	set_location_assignment PIN_W21 -to ad[10]
	set_location_assignment PIN_W23 -to ad[11]
	set_location_assignment PIN_W24 -to ad[12]
	set_location_assignment PIN_W25 -to ad[13]
	set_location_assignment PIN_Y21 -to ad[14]
	set_location_assignment PIN_Y23 -to ad[15]
	set_location_assignment PIN_Y24 -to ad[16]
	set_location_assignment PIN_Y25 -to ad[17]
	set_location_assignment PIN_Y26 -to ad[18]
	set_location_assignment PIN_AA23 -to ad[19]
	set_location_assignment PIN_AA24 -to ad[20]
	set_location_assignment PIN_AA25 -to ad[21]
	set_location_assignment PIN_AA26 -to ad[22]
	set_location_assignment PIN_AB23 -to ad[23]
	set_location_assignment PIN_AB24 -to ad[24]
	set_location_assignment PIN_AB25 -to ad[25]
	set_location_assignment PIN_AB26 -to ad[26]
	set_location_assignment PIN_AC23 -to ad[27]
	set_location_assignment PIN_AC25 -to ad[28]
	set_location_assignment PIN_AC26 -to ad[29]
	set_location_assignment PIN_AD24 -to ad[30]
	set_location_assignment PIN_AD25 -to ad[31]
	set_location_assignment PIN_B24 -to ad[32]
	set_location_assignment PIN_B25 -to ad[33]
	set_location_assignment PIN_C24 -to ad[34]
	set_location_assignment PIN_C25 -to ad[35]
	set_location_assignment PIN_D23 -to ad[36]
	set_location_assignment PIN_D25 -to ad[37]
	set_location_assignment PIN_D26 -to ad[38]
	set_location_assignment PIN_E22 -to ad[39]
	set_location_assignment PIN_E23 -to ad[40]
	set_location_assignment PIN_E24 -to ad[41]
	set_location_assignment PIN_E25 -to ad[42]
	set_location_assignment PIN_E26 -to ad[43]
	set_location_assignment PIN_F23 -to ad[44]
	set_location_assignment PIN_F25 -to ad[45]
	set_location_assignment PIN_F26 -to ad[46]
	set_location_assignment PIN_G21 -to ad[47]
	set_location_assignment PIN_G22 -to ad[48]
	set_location_assignment PIN_G23 -to ad[49]
	set_location_assignment PIN_G26 -to ad[50]
	set_location_assignment PIN_H23 -to ad[51]
	set_location_assignment PIN_H25 -to ad[52]
	set_location_assignment PIN_H26 -to ad[53]
	set_location_assignment PIN_J20 -to ad[54]
	set_location_assignment PIN_J21 -to ad[55]
	set_location_assignment PIN_J23 -to ad[56]
	set_location_assignment PIN_J24 -to ad[57]
	set_location_assignment PIN_J25 -to ad[58]
	set_location_assignment PIN_J26 -to ad[59]
	set_location_assignment PIN_K22 -to ad[60]
	set_location_assignment PIN_K23 -to ad[61]
	set_location_assignment PIN_K25 -to ad[62]
	set_location_assignment PIN_K26 -to ad[63]
	set_location_assignment PIN_R20 -to cben[0]
	set_location_assignment PIN_T22 -to cben[1]
	set_location_assignment PIN_T24 -to cben[2]
	set_location_assignment PIN_T25 -to cben[3]
	set_location_assignment PIN_U20 -to cben[4]
	set_location_assignment PIN_U21 -to cben[5]
	set_location_assignment PIN_V24 -to cben[6]
	set_location_assignment PIN_V23 -to cben[7]
	set_location_assignment PIN_P26 -to clk
	set_location_assignment PIN_R25 -to devseln
	set_location_assignment PIN_N24 -to framen
	set_location_assignment PIN_M24 -to gntn
	set_location_assignment PIN_M25 -to idsel
	set_location_assignment PIN_M20 -to intan
	set_location_assignment PIN_P23 -to irdyn
	set_location_assignment PIN_V22 -to lockn
	set_location_assignment PIN_T20 -to par
	set_location_assignment PIN_U26 -to par64
	set_location_assignment PIN_U24 -to perrn
	set_location_assignment PIN_V26 -to req64n
	set_location_assignment PIN_N20 -to reqn
	set_location_assignment PIN_N25 -to rstn
	set_location_assignment PIN_U23 -to serrn
	set_location_assignment PIN_P24 -to stopn
	set_location_assignment PIN_N23 -to trdyn
	set_location_assignment PIN_G25 -to rs232_cts
	set_location_assignment PIN_H21 -to rs232_rts
	set_location_assignment PIN_G24 -to rs232_rxd
	set_location_assignment PIN_F24 -to rs232_txd
	set_location_assignment PIN_J22 -to user_led[0]
	set_location_assignment PIN_K19 -to user_led[1]
	set_location_assignment PIN_K21 -to user_led[2]
	set_location_assignment PIN_M21 -to user_led[3]
	set_location_assignment PIN_L23 -to user_led[4]
	set_location_assignment PIN_L19 -to user_led[5]
	set_location_assignment PIN_K24 -to user_led[6]
	set_location_assignment PIN_T21 -to user_led[7]
	set_location_assignment PIN_V7 -to lan_a[1]
	set_location_assignment PIN_W1 -to lan_a[2]
	set_location_assignment PIN_W3 -to lan_a[3]
	set_location_assignment PIN_W6 -to lan_a[4]
	set_location_assignment PIN_Y1 -to lan_a[5]
	set_location_assignment PIN_Y3 -to lan_a[6]
	set_location_assignment PIN_Y4 -to lan_a[7]
	set_location_assignment PIN_Y5 -to lan_a[8]
	set_location_assignment PIN_P3 -to lan_a[9]
	set_location_assignment PIN_P4 -to lan_a[10]
	set_location_assignment PIN_R3 -to lan_a[11]
	set_location_assignment PIN_B2 -to lan_a[12]
	set_location_assignment PIN_J7 -to lan_a[13]
	set_location_assignment PIN_J8 -to lan_a[14]
	set_location_assignment PIN_L6 -to lan_a[15]
	set_location_assignment PIN_W4 -to lan_adsn
	set_location_assignment PIN_V4 -to lan_aen
	set_location_assignment PIN_U5 -to lan_ben[0]
	set_location_assignment PIN_U6 -to lan_ben[1]
	set_location_assignment PIN_U7 -to lan_ben[2]
	set_location_assignment PIN_V1 -to lan_ben[3]
	set_location_assignment PIN_AA7 -to lan_clk
	set_location_assignment PIN_J5 -to lan_cyclen
	set_location_assignment PIN_AA1 -to lan_d[0]
	set_location_assignment PIN_AA2 -to lan_d[1]
	set_location_assignment PIN_AA3 -to lan_d[2]
	set_location_assignment PIN_AA4 -to lan_d[3]
	set_location_assignment PIN_AA5 -to lan_d[4]
	set_location_assignment PIN_AB1 -to lan_d[5]
	set_location_assignment PIN_AB2 -to lan_d[6]
	set_location_assignment PIN_AB3 -to lan_d[7]
	set_location_assignment PIN_AB4 -to lan_d[8]
	set_location_assignment PIN_AC1 -to lan_d[9]
	set_location_assignment PIN_AC2 -to lan_d[10]
	set_location_assignment PIN_AC3 -to lan_d[11]
	set_location_assignment PIN_AD2 -to lan_d[12]
	set_location_assignment PIN_AD3 -to lan_d[13]
	set_location_assignment PIN_AE2 -to lan_d[14]
	set_location_assignment PIN_AE3 -to lan_d[15]
	set_location_assignment PIN_P6 -to lan_d[16]
	set_location_assignment PIN_P7 -to lan_d[17]
	set_location_assignment PIN_R2 -to lan_d[18]
	set_location_assignment PIN_R4 -to lan_d[19]
	set_location_assignment PIN_R5 -to lan_d[20]
	set_location_assignment PIN_R6 -to lan_d[21]
	set_location_assignment PIN_R7 -to lan_d[22]
	set_location_assignment PIN_T2 -to lan_d[23]
	set_location_assignment PIN_T3 -to lan_d[24]
	set_location_assignment PIN_T4 -to lan_d[25]
	set_location_assignment PIN_T6 -to lan_d[26]
	set_location_assignment PIN_T7 -to lan_d[27]
	set_location_assignment PIN_U1 -to lan_d[28]
	set_location_assignment PIN_U2 -to lan_d[29]
	set_location_assignment PIN_U3 -to lan_d[30]
	set_location_assignment PIN_U4 -to lan_d[31]
	set_location_assignment PIN_H24 -to lan_datacsn
	set_location_assignment PIN_V3 -to lan_intrq0
	set_location_assignment PIN_Y22 -to lan_iochrdy
	set_location_assignment PIN_V5 -to lan_iorn
	set_location_assignment PIN_V6 -to lan_iown
	set_location_assignment PIN_P1 -to lan_ldevn
	set_location_assignment PIN_W2 -to lan_loopback
	set_location_assignment PIN_T23 -to lan_rdyrtn
	set_location_assignment PIN_V2 -to lan_reset
	set_location_assignment PIN_N26 -to lan_srdyn
	set_location_assignment PIN_E5 -to lan_vlbusn
	set_location_assignment PIN_F6 -to lan_w_rn
	set_location_assignment PIN_B12 -to user_pb1
	set_location_assignment PIN_D13 -to user_pb2
	set_location_assignment PIN_N1 -to osca_clk1
	set_location_assignment PIN_P25 -to osca_clk6
	set_location_assignment PIN_P2 -to clk_from_scruz
	set_location_assignment PIN_N2 -to clk_sma
	set_location_assignment PIN_J6 -to clk_to_scruz
	set_location_assignment PIN_W26 -to lpcix_clk
	set_location_assignment PIN_G6 -to scruz_cardseln
	set_location_assignment PIN_C2 -to scruz_io[0]
	set_location_assignment PIN_C3 -to scruz_io[1]
	set_location_assignment PIN_D1 -to scruz_io[2]
	set_location_assignment PIN_D2 -to scruz_io[3]
	set_location_assignment PIN_E1 -to scruz_io[4]
	set_location_assignment PIN_E2 -to scruz_io[5]
	set_location_assignment PIN_F1 -to scruz_io[6]
	set_location_assignment PIN_F2 -to scruz_io[7]
	set_location_assignment PIN_F3 -to scruz_io[8]
	set_location_assignment PIN_F4 -to scruz_io[9]
	set_location_assignment PIN_F7 -to scruz_io[10]
	set_location_assignment PIN_G1 -to scruz_io[11]
	set_location_assignment PIN_G2 -to scruz_io[12]
	set_location_assignment PIN_G3 -to scruz_io[13]
	set_location_assignment PIN_G5 -to scruz_io[14]
	set_location_assignment PIN_G4 -to scruz_io[15]
	set_location_assignment PIN_M5 -to scruz_io[16]
	set_location_assignment PIN_M4 -to scruz_io[17]
	set_location_assignment PIN_M3 -to scruz_io[18]
	set_location_assignment PIN_M2 -to scruz_io[19]
	set_location_assignment PIN_L7 -to scruz_io[20]
	set_location_assignment PIN_L4 -to scruz_io[21]
	set_location_assignment PIN_L3 -to scruz_io[22]
	set_location_assignment PIN_L2 -to scruz_io[23]
	set_location_assignment PIN_K4 -to scruz_io[24]
	set_location_assignment PIN_K3 -to scruz_io[25]
	set_location_assignment PIN_K2 -to scruz_io[26]
	set_location_assignment PIN_K1 -to scruz_io[27]
	set_location_assignment PIN_J4 -to scruz_io[28]
	set_location_assignment PIN_J3 -to scruz_io[29]
	set_location_assignment PIN_J2 -to scruz_io[30]
	set_location_assignment PIN_J1 -to scruz_io[31]
	set_location_assignment PIN_H4 -to scruz_io[32]
	set_location_assignment PIN_H3 -to scruz_io[33]
	set_location_assignment PIN_H2 -to scruz_io[34]
	set_location_assignment PIN_H1 -to scruz_io[35]
	set_location_assignment PIN_K8 -to scruz_io[36]
	set_location_assignment PIN_K7 -to scruz_io[37]
	set_location_assignment PIN_K6 -to scruz_io[38]
	set_location_assignment PIN_K5 -to scruz_io[39]
	set_location_assignment PIN_H6 -to scruz_io[40]
	set_location_assignment PIN_V21 -to pll_to_scruz
	set_location_assignment PIN_C5 -to mresetn
#	set_location_assignment LAB_X46_Y35 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:0:g_ddr_io|altddio_bidir:\\g_dq_io:0:dq_io|ddio_bidir_6bg:auto_generated|input_cell_h[0]"
#	set_location_assignment LAB_X46_Y35 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:0:g_ddr_io|altddio_bidir:\\g_dq_io:0:dq_io|ddio_bidir_6bg:auto_generated|input_cell_l[0]"
#	set_location_assignment LAB_X46_Y35 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:0:g_ddr_io|altddio_bidir:\\g_dq_io:0:dq_io|ddio_bidir_6bg:auto_generated|input_latch_l[0]"
#	set_location_assignment LAB_X46_Y34 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:0:g_ddr_io|altddio_bidir:\\g_dq_io:0:dq_io|ddio_bidir_6bg:auto_generated|output_cell_H[0]"
#	set_location_assignment LAB_X46_Y34 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:0:g_ddr_io|altddio_bidir:\\g_dq_io:0:dq_io|ddio_bidir_6bg:auto_generated|output_cell_L[0]"
#	set_location_assignment LAB_X46_Y34 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:0:g_ddr_io|altddio_bidir:\\g_dq_io:0:dq_io|ddio_bidir_6bg:auto_generated|oe_cell"
#	set_location_assignment LAB_X47_Y35 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:0:g_ddr_io|resynched_data[0]"
#	set_location_assignment LAB_X47_Y35 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:0:g_ddr_io|resynched_data[8]"
#	set_location_assignment LAB_X44_Y35 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:0:g_ddr_io|altddio_bidir:\\g_dq_io:1:dq_io|ddio_bidir_6bg:auto_generated|input_cell_h[0]"
#	set_location_assignment LAB_X44_Y35 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:0:g_ddr_io|altddio_bidir:\\g_dq_io:1:dq_io|ddio_bidir_6bg:auto_generated|input_cell_l[0]"
#	set_location_assignment LAB_X44_Y35 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:0:g_ddr_io|altddio_bidir:\\g_dq_io:1:dq_io|ddio_bidir_6bg:auto_generated|input_latch_l[0]"
#	set_location_assignment LAB_X44_Y34 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:0:g_ddr_io|altddio_bidir:\\g_dq_io:1:dq_io|ddio_bidir_6bg:auto_generated|output_cell_H[0]"
#	set_location_assignment LAB_X44_Y34 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:0:g_ddr_io|altddio_bidir:\\g_dq_io:1:dq_io|ddio_bidir_6bg:auto_generated|output_cell_L[0]"
#	set_location_assignment LAB_X44_Y34 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:0:g_ddr_io|altddio_bidir:\\g_dq_io:1:dq_io|ddio_bidir_6bg:auto_generated|oe_cell"
#	set_location_assignment LAB_X45_Y35 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:0:g_ddr_io|resynched_data[1]"
#	set_location_assignment LAB_X45_Y35 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:0:g_ddr_io|resynched_data[9]"
#	set_location_assignment LAB_X44_Y35 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:0:g_ddr_io|altddio_bidir:\\g_dq_io:2:dq_io|ddio_bidir_6bg:auto_generated|input_cell_h[0]"
#	set_location_assignment LAB_X44_Y35 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:0:g_ddr_io|altddio_bidir:\\g_dq_io:2:dq_io|ddio_bidir_6bg:auto_generated|input_cell_l[0]"
#	set_location_assignment LAB_X44_Y35 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:0:g_ddr_io|altddio_bidir:\\g_dq_io:2:dq_io|ddio_bidir_6bg:auto_generated|input_latch_l[0]"
#	set_location_assignment LAB_X44_Y34 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:0:g_ddr_io|altddio_bidir:\\g_dq_io:2:dq_io|ddio_bidir_6bg:auto_generated|output_cell_H[0]"
#	set_location_assignment LAB_X44_Y34 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:0:g_ddr_io|altddio_bidir:\\g_dq_io:2:dq_io|ddio_bidir_6bg:auto_generated|output_cell_L[0]"
#	set_location_assignment LAB_X44_Y34 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:0:g_ddr_io|altddio_bidir:\\g_dq_io:2:dq_io|ddio_bidir_6bg:auto_generated|oe_cell"
#	set_location_assignment LAB_X45_Y35 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:0:g_ddr_io|resynched_data[2]"
#	set_location_assignment LAB_X45_Y35 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:0:g_ddr_io|resynched_data[10]"
#	set_location_assignment LAB_X44_Y35 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:0:g_ddr_io|altddio_bidir:\\g_dq_io:3:dq_io|ddio_bidir_6bg:auto_generated|input_cell_h[0]"
#	set_location_assignment LAB_X44_Y35 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:0:g_ddr_io|altddio_bidir:\\g_dq_io:3:dq_io|ddio_bidir_6bg:auto_generated|input_cell_l[0]"
#	set_location_assignment LAB_X44_Y35 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:0:g_ddr_io|altddio_bidir:\\g_dq_io:3:dq_io|ddio_bidir_6bg:auto_generated|input_latch_l[0]"
#	set_location_assignment LAB_X44_Y34 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:0:g_ddr_io|altddio_bidir:\\g_dq_io:3:dq_io|ddio_bidir_6bg:auto_generated|output_cell_H[0]"
#	set_location_assignment LAB_X44_Y34 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:0:g_ddr_io|altddio_bidir:\\g_dq_io:3:dq_io|ddio_bidir_6bg:auto_generated|output_cell_L[0]"
#	set_location_assignment LAB_X44_Y34 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:0:g_ddr_io|altddio_bidir:\\g_dq_io:3:dq_io|ddio_bidir_6bg:auto_generated|oe_cell"
#	set_location_assignment LAB_X45_Y35 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:0:g_ddr_io|resynched_data[3]"
#	set_location_assignment LAB_X45_Y35 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:0:g_ddr_io|resynched_data[11]"
#	set_location_assignment LAB_X44_Y35 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:0:g_ddr_io|altddio_bidir:\\g_dq_io:4:dq_io|ddio_bidir_6bg:auto_generated|input_cell_h[0]"
#	set_location_assignment LAB_X44_Y35 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:0:g_ddr_io|altddio_bidir:\\g_dq_io:4:dq_io|ddio_bidir_6bg:auto_generated|input_cell_l[0]"
#	set_location_assignment LAB_X44_Y35 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:0:g_ddr_io|altddio_bidir:\\g_dq_io:4:dq_io|ddio_bidir_6bg:auto_generated|input_latch_l[0]"
#	set_location_assignment LAB_X44_Y34 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:0:g_ddr_io|altddio_bidir:\\g_dq_io:4:dq_io|ddio_bidir_6bg:auto_generated|output_cell_H[0]"
#	set_location_assignment LAB_X44_Y34 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:0:g_ddr_io|altddio_bidir:\\g_dq_io:4:dq_io|ddio_bidir_6bg:auto_generated|output_cell_L[0]"
#	set_location_assignment LAB_X44_Y34 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:0:g_ddr_io|altddio_bidir:\\g_dq_io:4:dq_io|ddio_bidir_6bg:auto_generated|oe_cell"
#	set_location_assignment LAB_X45_Y35 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:0:g_ddr_io|resynched_data[4]"
#	set_location_assignment LAB_X45_Y35 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:0:g_ddr_io|resynched_data[12]"
#	set_location_assignment LAB_X45_Y34 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:0:g_ddr_io|dq_enable[0]"
#	set_location_assignment LAB_X44_Y34 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:0:g_ddr_io|dq_enable_reset[0]"
#	set_location_assignment LAB_X42_Y35 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:0:g_ddr_io|altddio_bidir:\\g_dq_io:5:dq_io|ddio_bidir_6bg:auto_generated|input_cell_h[0]"
#	set_location_assignment LAB_X42_Y35 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:0:g_ddr_io|altddio_bidir:\\g_dq_io:5:dq_io|ddio_bidir_6bg:auto_generated|input_cell_l[0]"
#	set_location_assignment LAB_X42_Y35 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:0:g_ddr_io|altddio_bidir:\\g_dq_io:5:dq_io|ddio_bidir_6bg:auto_generated|input_latch_l[0]"
#	set_location_assignment LAB_X42_Y34 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:0:g_ddr_io|altddio_bidir:\\g_dq_io:5:dq_io|ddio_bidir_6bg:auto_generated|output_cell_H[0]"
#	set_location_assignment LAB_X42_Y34 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:0:g_ddr_io|altddio_bidir:\\g_dq_io:5:dq_io|ddio_bidir_6bg:auto_generated|output_cell_L[0]"
#	set_location_assignment LAB_X42_Y34 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:0:g_ddr_io|altddio_bidir:\\g_dq_io:5:dq_io|ddio_bidir_6bg:auto_generated|oe_cell"
#	set_location_assignment LAB_X43_Y35 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:0:g_ddr_io|resynched_data[5]"
#	set_location_assignment LAB_X43_Y35 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:0:g_ddr_io|resynched_data[13]"
#	set_location_assignment LAB_X42_Y35 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:0:g_ddr_io|altddio_bidir:\\g_dq_io:6:dq_io|ddio_bidir_6bg:auto_generated|input_cell_h[0]"
#	set_location_assignment LAB_X42_Y35 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:0:g_ddr_io|altddio_bidir:\\g_dq_io:6:dq_io|ddio_bidir_6bg:auto_generated|input_cell_l[0]"
#	set_location_assignment LAB_X42_Y35 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:0:g_ddr_io|altddio_bidir:\\g_dq_io:6:dq_io|ddio_bidir_6bg:auto_generated|input_latch_l[0]"
#	set_location_assignment LAB_X42_Y34 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:0:g_ddr_io|altddio_bidir:\\g_dq_io:6:dq_io|ddio_bidir_6bg:auto_generated|output_cell_H[0]"
#	set_location_assignment LAB_X42_Y34 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:0:g_ddr_io|altddio_bidir:\\g_dq_io:6:dq_io|ddio_bidir_6bg:auto_generated|output_cell_L[0]"
#	set_location_assignment LAB_X42_Y34 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:0:g_ddr_io|altddio_bidir:\\g_dq_io:6:dq_io|ddio_bidir_6bg:auto_generated|oe_cell"
#	set_location_assignment LAB_X43_Y35 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:0:g_ddr_io|resynched_data[6]"
#	set_location_assignment LAB_X43_Y35 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:0:g_ddr_io|resynched_data[14]"
#	set_location_assignment LAB_X40_Y35 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:0:g_ddr_io|altddio_bidir:\\g_dq_io:7:dq_io|ddio_bidir_6bg:auto_generated|input_cell_h[0]"
#	set_location_assignment LAB_X40_Y35 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:0:g_ddr_io|altddio_bidir:\\g_dq_io:7:dq_io|ddio_bidir_6bg:auto_generated|input_cell_l[0]"
#	set_location_assignment LAB_X40_Y35 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:0:g_ddr_io|altddio_bidir:\\g_dq_io:7:dq_io|ddio_bidir_6bg:auto_generated|input_latch_l[0]"
#	set_location_assignment LAB_X40_Y34 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:0:g_ddr_io|altddio_bidir:\\g_dq_io:7:dq_io|ddio_bidir_6bg:auto_generated|output_cell_H[0]"
#	set_location_assignment LAB_X40_Y34 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:0:g_ddr_io|altddio_bidir:\\g_dq_io:7:dq_io|ddio_bidir_6bg:auto_generated|output_cell_L[0]"
#	set_location_assignment LAB_X40_Y34 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:0:g_ddr_io|altddio_bidir:\\g_dq_io:7:dq_io|ddio_bidir_6bg:auto_generated|oe_cell"
#	set_location_assignment LAB_X41_Y35 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:0:g_ddr_io|resynched_data[7]"
#	set_location_assignment LAB_X41_Y35 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:0:g_ddr_io|resynched_data[15]"
#	set_location_assignment LAB_X46_Y34 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:0:g_ddr_io|altddio_bidir:dqs_io|ddio_bidir_l9h:auto_generated|output_cell_H[0]"
#	set_location_assignment LAB_X46_Y34 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:0:g_ddr_io|altddio_bidir:dqs_io|ddio_bidir_l9h:auto_generated|output_cell_L[0]"
#	set_location_assignment LAB_X46_Y34 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:0:g_ddr_io|altddio_bidir:dqs_io|ddio_bidir_l9h:auto_generated|oe_cell"
#	set_location_assignment LAB_X47_Y34 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:0:g_ddr_io|altddio_bidir:dqs_io|ddio_bidir_l9h:auto_generated|ext_oe_cell"
#	set_location_assignment LAB_X37_Y34 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:0:g_ddr_io|altddio_out:dm_pin|ddio_out_clb:auto_generated|output_cell_H[0]"
#	set_location_assignment LAB_X37_Y34 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:0:g_ddr_io|altddio_out:dm_pin|ddio_out_clb:auto_generated|output_cell_L[0]"
#	set_location_assignment LAB_X37_Y35 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:1:g_ddr_io|altddio_bidir:\\g_dq_io:0:dq_io|ddio_bidir_6bg:auto_generated|input_cell_h[0]"
#	set_location_assignment LAB_X37_Y35 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:1:g_ddr_io|altddio_bidir:\\g_dq_io:0:dq_io|ddio_bidir_6bg:auto_generated|input_cell_l[0]"
#	set_location_assignment LAB_X37_Y35 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:1:g_ddr_io|altddio_bidir:\\g_dq_io:0:dq_io|ddio_bidir_6bg:auto_generated|input_latch_l[0]"
#	set_location_assignment LAB_X37_Y34 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:1:g_ddr_io|altddio_bidir:\\g_dq_io:0:dq_io|ddio_bidir_6bg:auto_generated|output_cell_H[0]"
#	set_location_assignment LAB_X37_Y34 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:1:g_ddr_io|altddio_bidir:\\g_dq_io:0:dq_io|ddio_bidir_6bg:auto_generated|output_cell_L[0]"
#	set_location_assignment LAB_X37_Y34 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:1:g_ddr_io|altddio_bidir:\\g_dq_io:0:dq_io|ddio_bidir_6bg:auto_generated|oe_cell"
#	set_location_assignment LAB_X38_Y35 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:1:g_ddr_io|resynched_data[0]"
#	set_location_assignment LAB_X38_Y35 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:1:g_ddr_io|resynched_data[8]"
#	set_location_assignment LAB_X37_Y35 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:1:g_ddr_io|altddio_bidir:\\g_dq_io:1:dq_io|ddio_bidir_6bg:auto_generated|input_cell_h[0]"
#	set_location_assignment LAB_X37_Y35 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:1:g_ddr_io|altddio_bidir:\\g_dq_io:1:dq_io|ddio_bidir_6bg:auto_generated|input_cell_l[0]"
#	set_location_assignment LAB_X37_Y35 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:1:g_ddr_io|altddio_bidir:\\g_dq_io:1:dq_io|ddio_bidir_6bg:auto_generated|input_latch_l[0]"
#	set_location_assignment LAB_X37_Y34 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:1:g_ddr_io|altddio_bidir:\\g_dq_io:1:dq_io|ddio_bidir_6bg:auto_generated|output_cell_H[0]"
#	set_location_assignment LAB_X37_Y34 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:1:g_ddr_io|altddio_bidir:\\g_dq_io:1:dq_io|ddio_bidir_6bg:auto_generated|output_cell_L[0]"
#	set_location_assignment LAB_X37_Y34 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:1:g_ddr_io|altddio_bidir:\\g_dq_io:1:dq_io|ddio_bidir_6bg:auto_generated|oe_cell"
#	set_location_assignment LAB_X38_Y35 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:1:g_ddr_io|resynched_data[1]"
#	set_location_assignment LAB_X38_Y35 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:1:g_ddr_io|resynched_data[9]"
#	set_location_assignment LAB_X37_Y35 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:1:g_ddr_io|altddio_bidir:\\g_dq_io:2:dq_io|ddio_bidir_6bg:auto_generated|input_cell_h[0]"
#	set_location_assignment LAB_X37_Y35 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:1:g_ddr_io|altddio_bidir:\\g_dq_io:2:dq_io|ddio_bidir_6bg:auto_generated|input_cell_l[0]"
#	set_location_assignment LAB_X37_Y35 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:1:g_ddr_io|altddio_bidir:\\g_dq_io:2:dq_io|ddio_bidir_6bg:auto_generated|input_latch_l[0]"
#	set_location_assignment LAB_X37_Y34 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:1:g_ddr_io|altddio_bidir:\\g_dq_io:2:dq_io|ddio_bidir_6bg:auto_generated|output_cell_H[0]"
#	set_location_assignment LAB_X37_Y34 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:1:g_ddr_io|altddio_bidir:\\g_dq_io:2:dq_io|ddio_bidir_6bg:auto_generated|output_cell_L[0]"
#	set_location_assignment LAB_X37_Y34 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:1:g_ddr_io|altddio_bidir:\\g_dq_io:2:dq_io|ddio_bidir_6bg:auto_generated|oe_cell"
#	set_location_assignment LAB_X38_Y35 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:1:g_ddr_io|resynched_data[2]"
#	set_location_assignment LAB_X38_Y35 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:1:g_ddr_io|resynched_data[10]"
#	set_location_assignment LAB_X35_Y35 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:1:g_ddr_io|altddio_bidir:\\g_dq_io:3:dq_io|ddio_bidir_6bg:auto_generated|input_cell_h[0]"
#	set_location_assignment LAB_X35_Y35 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:1:g_ddr_io|altddio_bidir:\\g_dq_io:3:dq_io|ddio_bidir_6bg:auto_generated|input_cell_l[0]"
#	set_location_assignment LAB_X35_Y35 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:1:g_ddr_io|altddio_bidir:\\g_dq_io:3:dq_io|ddio_bidir_6bg:auto_generated|input_latch_l[0]"
#	set_location_assignment LAB_X35_Y34 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:1:g_ddr_io|altddio_bidir:\\g_dq_io:3:dq_io|ddio_bidir_6bg:auto_generated|output_cell_H[0]"
#	set_location_assignment LAB_X35_Y34 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:1:g_ddr_io|altddio_bidir:\\g_dq_io:3:dq_io|ddio_bidir_6bg:auto_generated|output_cell_L[0]"
#	set_location_assignment LAB_X35_Y34 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:1:g_ddr_io|altddio_bidir:\\g_dq_io:3:dq_io|ddio_bidir_6bg:auto_generated|oe_cell"
#	set_location_assignment LAB_X36_Y35 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:1:g_ddr_io|resynched_data[3]"
#	set_location_assignment LAB_X36_Y35 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:1:g_ddr_io|resynched_data[11]"
#	set_location_assignment LAB_X35_Y35 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:1:g_ddr_io|altddio_bidir:\\g_dq_io:4:dq_io|ddio_bidir_6bg:auto_generated|input_cell_h[0]"
#	set_location_assignment LAB_X35_Y35 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:1:g_ddr_io|altddio_bidir:\\g_dq_io:4:dq_io|ddio_bidir_6bg:auto_generated|input_cell_l[0]"
#	set_location_assignment LAB_X35_Y35 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:1:g_ddr_io|altddio_bidir:\\g_dq_io:4:dq_io|ddio_bidir_6bg:auto_generated|input_latch_l[0]"
#	set_location_assignment LAB_X35_Y34 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:1:g_ddr_io|altddio_bidir:\\g_dq_io:4:dq_io|ddio_bidir_6bg:auto_generated|output_cell_H[0]"
#	set_location_assignment LAB_X35_Y34 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:1:g_ddr_io|altddio_bidir:\\g_dq_io:4:dq_io|ddio_bidir_6bg:auto_generated|output_cell_L[0]"
#	set_location_assignment LAB_X35_Y34 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:1:g_ddr_io|altddio_bidir:\\g_dq_io:4:dq_io|ddio_bidir_6bg:auto_generated|oe_cell"
#	set_location_assignment LAB_X36_Y35 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:1:g_ddr_io|resynched_data[4]"
#	set_location_assignment LAB_X36_Y35 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:1:g_ddr_io|resynched_data[12]"
#	set_location_assignment LAB_X36_Y34 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:1:g_ddr_io|dq_enable[0]"
#	set_location_assignment LAB_X35_Y34 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:1:g_ddr_io|dq_enable_reset[0]"
#	set_location_assignment LAB_X35_Y35 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:1:g_ddr_io|altddio_bidir:\\g_dq_io:5:dq_io|ddio_bidir_6bg:auto_generated|input_cell_h[0]"
#	set_location_assignment LAB_X35_Y35 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:1:g_ddr_io|altddio_bidir:\\g_dq_io:5:dq_io|ddio_bidir_6bg:auto_generated|input_cell_l[0]"
#	set_location_assignment LAB_X35_Y35 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:1:g_ddr_io|altddio_bidir:\\g_dq_io:5:dq_io|ddio_bidir_6bg:auto_generated|input_latch_l[0]"
#	set_location_assignment LAB_X35_Y34 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:1:g_ddr_io|altddio_bidir:\\g_dq_io:5:dq_io|ddio_bidir_6bg:auto_generated|output_cell_H[0]"
#	set_location_assignment LAB_X35_Y34 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:1:g_ddr_io|altddio_bidir:\\g_dq_io:5:dq_io|ddio_bidir_6bg:auto_generated|output_cell_L[0]"
#	set_location_assignment LAB_X35_Y34 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:1:g_ddr_io|altddio_bidir:\\g_dq_io:5:dq_io|ddio_bidir_6bg:auto_generated|oe_cell"
#	set_location_assignment LAB_X36_Y35 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:1:g_ddr_io|resynched_data[5]"
#	set_location_assignment LAB_X36_Y35 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:1:g_ddr_io|resynched_data[13]"
#	set_location_assignment LAB_X33_Y35 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:1:g_ddr_io|altddio_bidir:\\g_dq_io:6:dq_io|ddio_bidir_6bg:auto_generated|input_cell_h[0]"
#	set_location_assignment LAB_X33_Y35 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:1:g_ddr_io|altddio_bidir:\\g_dq_io:6:dq_io|ddio_bidir_6bg:auto_generated|input_cell_l[0]"
#	set_location_assignment LAB_X33_Y35 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:1:g_ddr_io|altddio_bidir:\\g_dq_io:6:dq_io|ddio_bidir_6bg:auto_generated|input_latch_l[0]"
#	set_location_assignment LAB_X33_Y34 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:1:g_ddr_io|altddio_bidir:\\g_dq_io:6:dq_io|ddio_bidir_6bg:auto_generated|output_cell_H[0]"
#	set_location_assignment LAB_X33_Y34 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:1:g_ddr_io|altddio_bidir:\\g_dq_io:6:dq_io|ddio_bidir_6bg:auto_generated|output_cell_L[0]"
#	set_location_assignment LAB_X33_Y34 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:1:g_ddr_io|altddio_bidir:\\g_dq_io:6:dq_io|ddio_bidir_6bg:auto_generated|oe_cell"
#	set_location_assignment LAB_X34_Y35 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:1:g_ddr_io|resynched_data[6]"
#	set_location_assignment LAB_X34_Y35 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:1:g_ddr_io|resynched_data[14]"
#	set_location_assignment LAB_X30_Y35 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:1:g_ddr_io|altddio_bidir:\\g_dq_io:7:dq_io|ddio_bidir_6bg:auto_generated|input_cell_h[0]"
#	set_location_assignment LAB_X30_Y35 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:1:g_ddr_io|altddio_bidir:\\g_dq_io:7:dq_io|ddio_bidir_6bg:auto_generated|input_cell_l[0]"
#	set_location_assignment LAB_X30_Y35 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:1:g_ddr_io|altddio_bidir:\\g_dq_io:7:dq_io|ddio_bidir_6bg:auto_generated|input_latch_l[0]"
#	set_location_assignment LAB_X30_Y34 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:1:g_ddr_io|altddio_bidir:\\g_dq_io:7:dq_io|ddio_bidir_6bg:auto_generated|output_cell_H[0]"
#	set_location_assignment LAB_X30_Y34 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:1:g_ddr_io|altddio_bidir:\\g_dq_io:7:dq_io|ddio_bidir_6bg:auto_generated|output_cell_L[0]"
#	set_location_assignment LAB_X30_Y34 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:1:g_ddr_io|altddio_bidir:\\g_dq_io:7:dq_io|ddio_bidir_6bg:auto_generated|oe_cell"
#	set_location_assignment LAB_X29_Y35 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:1:g_ddr_io|resynched_data[7]"
#	set_location_assignment LAB_X29_Y35 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:1:g_ddr_io|resynched_data[15]"
#	set_location_assignment LAB_X33_Y34 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:1:g_ddr_io|altddio_bidir:dqs_io|ddio_bidir_l9h:auto_generated|output_cell_H[0]"
#	set_location_assignment LAB_X33_Y34 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:1:g_ddr_io|altddio_bidir:dqs_io|ddio_bidir_l9h:auto_generated|output_cell_L[0]"
#	set_location_assignment LAB_X33_Y34 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:1:g_ddr_io|altddio_bidir:dqs_io|ddio_bidir_l9h:auto_generated|oe_cell"
#	set_location_assignment LAB_X34_Y34 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:1:g_ddr_io|altddio_bidir:dqs_io|ddio_bidir_l9h:auto_generated|ext_oe_cell"
#	set_location_assignment LAB_X28_Y34 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:1:g_ddr_io|altddio_out:dm_pin|ddio_out_clb:auto_generated|output_cell_H[0]"
#	set_location_assignment LAB_X28_Y34 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:1:g_ddr_io|altddio_out:dm_pin|ddio_out_clb:auto_generated|output_cell_L[0]"
#	set_location_assignment LAB_X19_Y35 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:2:g_ddr_io|altddio_bidir:\\g_dq_io:0:dq_io|ddio_bidir_6bg:auto_generated|input_cell_h[0]"
#	set_location_assignment LAB_X19_Y35 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:2:g_ddr_io|altddio_bidir:\\g_dq_io:0:dq_io|ddio_bidir_6bg:auto_generated|input_cell_l[0]"
#	set_location_assignment LAB_X19_Y35 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:2:g_ddr_io|altddio_bidir:\\g_dq_io:0:dq_io|ddio_bidir_6bg:auto_generated|input_latch_l[0]"
#	set_location_assignment LAB_X19_Y34 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:2:g_ddr_io|altddio_bidir:\\g_dq_io:0:dq_io|ddio_bidir_6bg:auto_generated|output_cell_H[0]"
#	set_location_assignment LAB_X19_Y34 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:2:g_ddr_io|altddio_bidir:\\g_dq_io:0:dq_io|ddio_bidir_6bg:auto_generated|output_cell_L[0]"
#	set_location_assignment LAB_X19_Y34 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:2:g_ddr_io|altddio_bidir:\\g_dq_io:0:dq_io|ddio_bidir_6bg:auto_generated|oe_cell"
#	set_location_assignment LAB_X18_Y35 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:2:g_ddr_io|resynched_data[0]"
#	set_location_assignment LAB_X18_Y35 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:2:g_ddr_io|resynched_data[8]"
#	set_location_assignment LAB_X17_Y35 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:2:g_ddr_io|altddio_bidir:\\g_dq_io:1:dq_io|ddio_bidir_6bg:auto_generated|input_cell_h[0]"
#	set_location_assignment LAB_X17_Y35 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:2:g_ddr_io|altddio_bidir:\\g_dq_io:1:dq_io|ddio_bidir_6bg:auto_generated|input_cell_l[0]"
#	set_location_assignment LAB_X17_Y35 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:2:g_ddr_io|altddio_bidir:\\g_dq_io:1:dq_io|ddio_bidir_6bg:auto_generated|input_latch_l[0]"
#	set_location_assignment LAB_X17_Y34 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:2:g_ddr_io|altddio_bidir:\\g_dq_io:1:dq_io|ddio_bidir_6bg:auto_generated|output_cell_H[0]"
#	set_location_assignment LAB_X17_Y34 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:2:g_ddr_io|altddio_bidir:\\g_dq_io:1:dq_io|ddio_bidir_6bg:auto_generated|output_cell_L[0]"
#	set_location_assignment LAB_X17_Y34 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:2:g_ddr_io|altddio_bidir:\\g_dq_io:1:dq_io|ddio_bidir_6bg:auto_generated|oe_cell"
#	set_location_assignment LAB_X16_Y35 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:2:g_ddr_io|resynched_data[1]"
#	set_location_assignment LAB_X16_Y35 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:2:g_ddr_io|resynched_data[9]"
#	set_location_assignment LAB_X17_Y35 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:2:g_ddr_io|altddio_bidir:\\g_dq_io:2:dq_io|ddio_bidir_6bg:auto_generated|input_cell_h[0]"
#	set_location_assignment LAB_X17_Y35 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:2:g_ddr_io|altddio_bidir:\\g_dq_io:2:dq_io|ddio_bidir_6bg:auto_generated|input_cell_l[0]"
#	set_location_assignment LAB_X17_Y35 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:2:g_ddr_io|altddio_bidir:\\g_dq_io:2:dq_io|ddio_bidir_6bg:auto_generated|input_latch_l[0]"
#	set_location_assignment LAB_X17_Y34 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:2:g_ddr_io|altddio_bidir:\\g_dq_io:2:dq_io|ddio_bidir_6bg:auto_generated|output_cell_H[0]"
#	set_location_assignment LAB_X17_Y34 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:2:g_ddr_io|altddio_bidir:\\g_dq_io:2:dq_io|ddio_bidir_6bg:auto_generated|output_cell_L[0]"
#	set_location_assignment LAB_X17_Y34 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:2:g_ddr_io|altddio_bidir:\\g_dq_io:2:dq_io|ddio_bidir_6bg:auto_generated|oe_cell"
#	set_location_assignment LAB_X16_Y35 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:2:g_ddr_io|resynched_data[2]"
#	set_location_assignment LAB_X16_Y35 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:2:g_ddr_io|resynched_data[10]"
#	set_location_assignment LAB_X15_Y35 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:2:g_ddr_io|altddio_bidir:\\g_dq_io:3:dq_io|ddio_bidir_6bg:auto_generated|input_cell_h[0]"
#	set_location_assignment LAB_X15_Y35 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:2:g_ddr_io|altddio_bidir:\\g_dq_io:3:dq_io|ddio_bidir_6bg:auto_generated|input_cell_l[0]"
#	set_location_assignment LAB_X15_Y35 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:2:g_ddr_io|altddio_bidir:\\g_dq_io:3:dq_io|ddio_bidir_6bg:auto_generated|input_latch_l[0]"
#	set_location_assignment LAB_X15_Y34 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:2:g_ddr_io|altddio_bidir:\\g_dq_io:3:dq_io|ddio_bidir_6bg:auto_generated|output_cell_H[0]"
#	set_location_assignment LAB_X15_Y34 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:2:g_ddr_io|altddio_bidir:\\g_dq_io:3:dq_io|ddio_bidir_6bg:auto_generated|output_cell_L[0]"
#	set_location_assignment LAB_X15_Y34 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:2:g_ddr_io|altddio_bidir:\\g_dq_io:3:dq_io|ddio_bidir_6bg:auto_generated|oe_cell"
#	set_location_assignment LAB_X14_Y35 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:2:g_ddr_io|resynched_data[3]"
#	set_location_assignment LAB_X14_Y35 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:2:g_ddr_io|resynched_data[11]"
#	set_location_assignment LAB_X15_Y35 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:2:g_ddr_io|altddio_bidir:\\g_dq_io:4:dq_io|ddio_bidir_6bg:auto_generated|input_cell_h[0]"
#	set_location_assignment LAB_X15_Y35 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:2:g_ddr_io|altddio_bidir:\\g_dq_io:4:dq_io|ddio_bidir_6bg:auto_generated|input_cell_l[0]"
#	set_location_assignment LAB_X15_Y35 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:2:g_ddr_io|altddio_bidir:\\g_dq_io:4:dq_io|ddio_bidir_6bg:auto_generated|input_latch_l[0]"
#	set_location_assignment LAB_X15_Y34 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:2:g_ddr_io|altddio_bidir:\\g_dq_io:4:dq_io|ddio_bidir_6bg:auto_generated|output_cell_H[0]"
#	set_location_assignment LAB_X15_Y34 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:2:g_ddr_io|altddio_bidir:\\g_dq_io:4:dq_io|ddio_bidir_6bg:auto_generated|output_cell_L[0]"
#	set_location_assignment LAB_X15_Y34 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:2:g_ddr_io|altddio_bidir:\\g_dq_io:4:dq_io|ddio_bidir_6bg:auto_generated|oe_cell"
#	set_location_assignment LAB_X14_Y35 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:2:g_ddr_io|resynched_data[4]"
#	set_location_assignment LAB_X14_Y35 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:2:g_ddr_io|resynched_data[12]"
#	set_location_assignment LAB_X14_Y34 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:2:g_ddr_io|dq_enable[0]"
#	set_location_assignment LAB_X15_Y34 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:2:g_ddr_io|dq_enable_reset[0]"
#	set_location_assignment LAB_X15_Y35 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:2:g_ddr_io|altddio_bidir:\\g_dq_io:5:dq_io|ddio_bidir_6bg:auto_generated|input_cell_h[0]"
#	set_location_assignment LAB_X15_Y35 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:2:g_ddr_io|altddio_bidir:\\g_dq_io:5:dq_io|ddio_bidir_6bg:auto_generated|input_cell_l[0]"
#	set_location_assignment LAB_X15_Y35 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:2:g_ddr_io|altddio_bidir:\\g_dq_io:5:dq_io|ddio_bidir_6bg:auto_generated|input_latch_l[0]"
#	set_location_assignment LAB_X15_Y34 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:2:g_ddr_io|altddio_bidir:\\g_dq_io:5:dq_io|ddio_bidir_6bg:auto_generated|output_cell_H[0]"
#	set_location_assignment LAB_X15_Y34 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:2:g_ddr_io|altddio_bidir:\\g_dq_io:5:dq_io|ddio_bidir_6bg:auto_generated|output_cell_L[0]"
#	set_location_assignment LAB_X15_Y34 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:2:g_ddr_io|altddio_bidir:\\g_dq_io:5:dq_io|ddio_bidir_6bg:auto_generated|oe_cell"
#	set_location_assignment LAB_X14_Y35 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:2:g_ddr_io|resynched_data[5]"
#	set_location_assignment LAB_X14_Y35 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:2:g_ddr_io|resynched_data[13]"
#	set_location_assignment LAB_X15_Y35 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:2:g_ddr_io|altddio_bidir:\\g_dq_io:6:dq_io|ddio_bidir_6bg:auto_generated|input_cell_h[0]"
#	set_location_assignment LAB_X15_Y35 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:2:g_ddr_io|altddio_bidir:\\g_dq_io:6:dq_io|ddio_bidir_6bg:auto_generated|input_cell_l[0]"
#	set_location_assignment LAB_X15_Y35 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:2:g_ddr_io|altddio_bidir:\\g_dq_io:6:dq_io|ddio_bidir_6bg:auto_generated|input_latch_l[0]"
#	set_location_assignment LAB_X15_Y34 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:2:g_ddr_io|altddio_bidir:\\g_dq_io:6:dq_io|ddio_bidir_6bg:auto_generated|output_cell_H[0]"
#	set_location_assignment LAB_X15_Y34 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:2:g_ddr_io|altddio_bidir:\\g_dq_io:6:dq_io|ddio_bidir_6bg:auto_generated|output_cell_L[0]"
#	set_location_assignment LAB_X15_Y34 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:2:g_ddr_io|altddio_bidir:\\g_dq_io:6:dq_io|ddio_bidir_6bg:auto_generated|oe_cell"
#	set_location_assignment LAB_X14_Y35 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:2:g_ddr_io|resynched_data[6]"
#	set_location_assignment LAB_X14_Y35 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:2:g_ddr_io|resynched_data[14]"
#	set_location_assignment LAB_X12_Y35 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:2:g_ddr_io|altddio_bidir:\\g_dq_io:7:dq_io|ddio_bidir_6bg:auto_generated|input_cell_h[0]"
#	set_location_assignment LAB_X12_Y35 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:2:g_ddr_io|altddio_bidir:\\g_dq_io:7:dq_io|ddio_bidir_6bg:auto_generated|input_cell_l[0]"
#	set_location_assignment LAB_X12_Y35 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:2:g_ddr_io|altddio_bidir:\\g_dq_io:7:dq_io|ddio_bidir_6bg:auto_generated|input_latch_l[0]"
#	set_location_assignment LAB_X12_Y34 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:2:g_ddr_io|altddio_bidir:\\g_dq_io:7:dq_io|ddio_bidir_6bg:auto_generated|output_cell_H[0]"
#	set_location_assignment LAB_X12_Y34 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:2:g_ddr_io|altddio_bidir:\\g_dq_io:7:dq_io|ddio_bidir_6bg:auto_generated|output_cell_L[0]"
#	set_location_assignment LAB_X12_Y34 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:2:g_ddr_io|altddio_bidir:\\g_dq_io:7:dq_io|ddio_bidir_6bg:auto_generated|oe_cell"
#	set_location_assignment LAB_X11_Y35 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:2:g_ddr_io|resynched_data[7]"
#	set_location_assignment LAB_X11_Y35 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:2:g_ddr_io|resynched_data[15]"
#	set_location_assignment LAB_X17_Y34 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:2:g_ddr_io|altddio_bidir:dqs_io|ddio_bidir_l9h:auto_generated|output_cell_H[0]"
#	set_location_assignment LAB_X17_Y34 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:2:g_ddr_io|altddio_bidir:dqs_io|ddio_bidir_l9h:auto_generated|output_cell_L[0]"
#	set_location_assignment LAB_X17_Y34 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:2:g_ddr_io|altddio_bidir:dqs_io|ddio_bidir_l9h:auto_generated|oe_cell"
#	set_location_assignment LAB_X16_Y34 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:2:g_ddr_io|altddio_bidir:dqs_io|ddio_bidir_l9h:auto_generated|ext_oe_cell"
#	set_location_assignment LAB_X12_Y34 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:2:g_ddr_io|altddio_out:dm_pin|ddio_out_clb:auto_generated|output_cell_H[0]"
#	set_location_assignment LAB_X12_Y34 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:2:g_ddr_io|altddio_out:dm_pin|ddio_out_clb:auto_generated|output_cell_L[0]"
#	set_location_assignment LAB_X28_Y35 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:3:g_ddr_io|altddio_bidir:\\g_dq_io:0:dq_io|ddio_bidir_6bg:auto_generated|input_cell_h[0]"
#	set_location_assignment LAB_X28_Y35 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:3:g_ddr_io|altddio_bidir:\\g_dq_io:0:dq_io|ddio_bidir_6bg:auto_generated|input_cell_l[0]"
#	set_location_assignment LAB_X28_Y35 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:3:g_ddr_io|altddio_bidir:\\g_dq_io:0:dq_io|ddio_bidir_6bg:auto_generated|input_latch_l[0]"
#	set_location_assignment LAB_X28_Y34 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:3:g_ddr_io|altddio_bidir:\\g_dq_io:0:dq_io|ddio_bidir_6bg:auto_generated|output_cell_H[0]"
#	set_location_assignment LAB_X28_Y34 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:3:g_ddr_io|altddio_bidir:\\g_dq_io:0:dq_io|ddio_bidir_6bg:auto_generated|output_cell_L[0]"
#	set_location_assignment LAB_X28_Y34 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:3:g_ddr_io|altddio_bidir:\\g_dq_io:0:dq_io|ddio_bidir_6bg:auto_generated|oe_cell"
#	set_location_assignment LAB_X27_Y35 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:3:g_ddr_io|resynched_data[0]"
#	set_location_assignment LAB_X27_Y35 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:3:g_ddr_io|resynched_data[8]"
#	set_location_assignment LAB_X25_Y35 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:3:g_ddr_io|altddio_bidir:\\g_dq_io:1:dq_io|ddio_bidir_6bg:auto_generated|input_cell_h[0]"
#	set_location_assignment LAB_X25_Y35 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:3:g_ddr_io|altddio_bidir:\\g_dq_io:1:dq_io|ddio_bidir_6bg:auto_generated|input_cell_l[0]"
#	set_location_assignment LAB_X25_Y35 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:3:g_ddr_io|altddio_bidir:\\g_dq_io:1:dq_io|ddio_bidir_6bg:auto_generated|input_latch_l[0]"
#	set_location_assignment LAB_X25_Y34 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:3:g_ddr_io|altddio_bidir:\\g_dq_io:1:dq_io|ddio_bidir_6bg:auto_generated|output_cell_H[0]"
#	set_location_assignment LAB_X25_Y34 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:3:g_ddr_io|altddio_bidir:\\g_dq_io:1:dq_io|ddio_bidir_6bg:auto_generated|output_cell_L[0]"
#	set_location_assignment LAB_X25_Y34 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:3:g_ddr_io|altddio_bidir:\\g_dq_io:1:dq_io|ddio_bidir_6bg:auto_generated|oe_cell"
#	set_location_assignment LAB_X24_Y35 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:3:g_ddr_io|resynched_data[1]"
#	set_location_assignment LAB_X24_Y35 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:3:g_ddr_io|resynched_data[9]"
#	set_location_assignment LAB_X25_Y35 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:3:g_ddr_io|altddio_bidir:\\g_dq_io:2:dq_io|ddio_bidir_6bg:auto_generated|input_cell_h[0]"
#	set_location_assignment LAB_X25_Y35 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:3:g_ddr_io|altddio_bidir:\\g_dq_io:2:dq_io|ddio_bidir_6bg:auto_generated|input_cell_l[0]"
#	set_location_assignment LAB_X25_Y35 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:3:g_ddr_io|altddio_bidir:\\g_dq_io:2:dq_io|ddio_bidir_6bg:auto_generated|input_latch_l[0]"
#	set_location_assignment LAB_X25_Y34 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:3:g_ddr_io|altddio_bidir:\\g_dq_io:2:dq_io|ddio_bidir_6bg:auto_generated|output_cell_H[0]"
#	set_location_assignment LAB_X25_Y34 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:3:g_ddr_io|altddio_bidir:\\g_dq_io:2:dq_io|ddio_bidir_6bg:auto_generated|output_cell_L[0]"
#	set_location_assignment LAB_X25_Y34 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:3:g_ddr_io|altddio_bidir:\\g_dq_io:2:dq_io|ddio_bidir_6bg:auto_generated|oe_cell"
#	set_location_assignment LAB_X24_Y35 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:3:g_ddr_io|resynched_data[2]"
#	set_location_assignment LAB_X24_Y35 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:3:g_ddr_io|resynched_data[10]"
#	set_location_assignment LAB_X23_Y35 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:3:g_ddr_io|altddio_bidir:\\g_dq_io:3:dq_io|ddio_bidir_6bg:auto_generated|input_cell_h[0]"
#	set_location_assignment LAB_X23_Y35 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:3:g_ddr_io|altddio_bidir:\\g_dq_io:3:dq_io|ddio_bidir_6bg:auto_generated|input_cell_l[0]"
#	set_location_assignment LAB_X23_Y35 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:3:g_ddr_io|altddio_bidir:\\g_dq_io:3:dq_io|ddio_bidir_6bg:auto_generated|input_latch_l[0]"
#	set_location_assignment LAB_X23_Y34 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:3:g_ddr_io|altddio_bidir:\\g_dq_io:3:dq_io|ddio_bidir_6bg:auto_generated|output_cell_H[0]"
#	set_location_assignment LAB_X23_Y34 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:3:g_ddr_io|altddio_bidir:\\g_dq_io:3:dq_io|ddio_bidir_6bg:auto_generated|output_cell_L[0]"
#	set_location_assignment LAB_X23_Y34 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:3:g_ddr_io|altddio_bidir:\\g_dq_io:3:dq_io|ddio_bidir_6bg:auto_generated|oe_cell"
#	set_location_assignment LAB_X22_Y35 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:3:g_ddr_io|resynched_data[3]"
#	set_location_assignment LAB_X22_Y35 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:3:g_ddr_io|resynched_data[11]"
#	set_location_assignment LAB_X23_Y35 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:3:g_ddr_io|altddio_bidir:\\g_dq_io:4:dq_io|ddio_bidir_6bg:auto_generated|input_cell_h[0]"
#	set_location_assignment LAB_X23_Y35 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:3:g_ddr_io|altddio_bidir:\\g_dq_io:4:dq_io|ddio_bidir_6bg:auto_generated|input_cell_l[0]"
#	set_location_assignment LAB_X23_Y35 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:3:g_ddr_io|altddio_bidir:\\g_dq_io:4:dq_io|ddio_bidir_6bg:auto_generated|input_latch_l[0]"
#	set_location_assignment LAB_X23_Y34 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:3:g_ddr_io|altddio_bidir:\\g_dq_io:4:dq_io|ddio_bidir_6bg:auto_generated|output_cell_H[0]"
#	set_location_assignment LAB_X23_Y34 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:3:g_ddr_io|altddio_bidir:\\g_dq_io:4:dq_io|ddio_bidir_6bg:auto_generated|output_cell_L[0]"
#	set_location_assignment LAB_X23_Y34 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:3:g_ddr_io|altddio_bidir:\\g_dq_io:4:dq_io|ddio_bidir_6bg:auto_generated|oe_cell"
#	set_location_assignment LAB_X22_Y35 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:3:g_ddr_io|resynched_data[4]"
#	set_location_assignment LAB_X22_Y35 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:3:g_ddr_io|resynched_data[12]"
#	set_location_assignment LAB_X22_Y34 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:3:g_ddr_io|dq_enable[0]"
#	set_location_assignment LAB_X23_Y34 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:3:g_ddr_io|dq_enable_reset[0]"
#	set_location_assignment LAB_X23_Y35 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:3:g_ddr_io|altddio_bidir:\\g_dq_io:5:dq_io|ddio_bidir_6bg:auto_generated|input_cell_h[0]"
#	set_location_assignment LAB_X23_Y35 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:3:g_ddr_io|altddio_bidir:\\g_dq_io:5:dq_io|ddio_bidir_6bg:auto_generated|input_cell_l[0]"
#	set_location_assignment LAB_X23_Y35 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:3:g_ddr_io|altddio_bidir:\\g_dq_io:5:dq_io|ddio_bidir_6bg:auto_generated|input_latch_l[0]"
#	set_location_assignment LAB_X23_Y34 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:3:g_ddr_io|altddio_bidir:\\g_dq_io:5:dq_io|ddio_bidir_6bg:auto_generated|output_cell_H[0]"
#	set_location_assignment LAB_X23_Y34 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:3:g_ddr_io|altddio_bidir:\\g_dq_io:5:dq_io|ddio_bidir_6bg:auto_generated|output_cell_L[0]"
#	set_location_assignment LAB_X23_Y34 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:3:g_ddr_io|altddio_bidir:\\g_dq_io:5:dq_io|ddio_bidir_6bg:auto_generated|oe_cell"
#	set_location_assignment LAB_X22_Y35 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:3:g_ddr_io|resynched_data[5]"
#	set_location_assignment LAB_X22_Y35 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:3:g_ddr_io|resynched_data[13]"
#	set_location_assignment LAB_X21_Y35 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:3:g_ddr_io|altddio_bidir:\\g_dq_io:6:dq_io|ddio_bidir_6bg:auto_generated|input_cell_h[0]"
#	set_location_assignment LAB_X21_Y35 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:3:g_ddr_io|altddio_bidir:\\g_dq_io:6:dq_io|ddio_bidir_6bg:auto_generated|input_cell_l[0]"
#	set_location_assignment LAB_X21_Y35 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:3:g_ddr_io|altddio_bidir:\\g_dq_io:6:dq_io|ddio_bidir_6bg:auto_generated|input_latch_l[0]"
#	set_location_assignment LAB_X21_Y34 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:3:g_ddr_io|altddio_bidir:\\g_dq_io:6:dq_io|ddio_bidir_6bg:auto_generated|output_cell_H[0]"
#	set_location_assignment LAB_X21_Y34 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:3:g_ddr_io|altddio_bidir:\\g_dq_io:6:dq_io|ddio_bidir_6bg:auto_generated|output_cell_L[0]"
#	set_location_assignment LAB_X21_Y34 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:3:g_ddr_io|altddio_bidir:\\g_dq_io:6:dq_io|ddio_bidir_6bg:auto_generated|oe_cell"
#	set_location_assignment LAB_X20_Y35 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:3:g_ddr_io|resynched_data[6]"
#	set_location_assignment LAB_X20_Y35 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:3:g_ddr_io|resynched_data[14]"
#	set_location_assignment LAB_X21_Y35 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:3:g_ddr_io|altddio_bidir:\\g_dq_io:7:dq_io|ddio_bidir_6bg:auto_generated|input_cell_h[0]"
#	set_location_assignment LAB_X21_Y35 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:3:g_ddr_io|altddio_bidir:\\g_dq_io:7:dq_io|ddio_bidir_6bg:auto_generated|input_cell_l[0]"
#	set_location_assignment LAB_X21_Y35 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:3:g_ddr_io|altddio_bidir:\\g_dq_io:7:dq_io|ddio_bidir_6bg:auto_generated|input_latch_l[0]"
#	set_location_assignment LAB_X21_Y34 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:3:g_ddr_io|altddio_bidir:\\g_dq_io:7:dq_io|ddio_bidir_6bg:auto_generated|output_cell_H[0]"
#	set_location_assignment LAB_X21_Y34 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:3:g_ddr_io|altddio_bidir:\\g_dq_io:7:dq_io|ddio_bidir_6bg:auto_generated|output_cell_L[0]"
#	set_location_assignment LAB_X21_Y34 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:3:g_ddr_io|altddio_bidir:\\g_dq_io:7:dq_io|ddio_bidir_6bg:auto_generated|oe_cell"
#	set_location_assignment LAB_X20_Y35 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:3:g_ddr_io|resynched_data[7]"
#	set_location_assignment LAB_X20_Y35 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:3:g_ddr_io|resynched_data[15]"
#	set_location_assignment LAB_X30_Y34 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:3:g_ddr_io|altddio_bidir:dqs_io|ddio_bidir_l9h:auto_generated|output_cell_H[0]"
#	set_location_assignment LAB_X30_Y34 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:3:g_ddr_io|altddio_bidir:dqs_io|ddio_bidir_l9h:auto_generated|output_cell_L[0]"
#	set_location_assignment LAB_X30_Y34 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:3:g_ddr_io|altddio_bidir:dqs_io|ddio_bidir_l9h:auto_generated|oe_cell"
#	set_location_assignment LAB_X29_Y34 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:3:g_ddr_io|altddio_bidir:dqs_io|ddio_bidir_l9h:auto_generated|ext_oe_cell"
#	set_location_assignment LAB_X21_Y34 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:3:g_ddr_io|altddio_out:dm_pin|ddio_out_clb:auto_generated|output_cell_H[0]"
#	set_location_assignment LAB_X21_Y34 -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:3:g_ddr_io|altddio_out:dm_pin|ddio_out_clb:auto_generated|output_cell_L[0]"
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to clk_to_sdram_n[0]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to clk_to_sdram_n[1]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to clk_to_sdram[0]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to clk_to_sdram[1]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to ddr_dm[0]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to ddr_dm[1]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to ddr_dm[2]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to ddr_dm[3]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to ddr_cke
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to ddr_cs_n
	set_instance_assignment -name IO_STANDARD "3.3-V PCI" -to clk
	set_instance_assignment -name IO_STANDARD "3.3-V PCI" -to rstn
	set_instance_assignment -name IO_STANDARD "3.3-V PCI" -to devseln
	set_instance_assignment -name IO_STANDARD "3.3-V PCI" -to framen
	set_instance_assignment -name IO_STANDARD "3.3-V PCI" -to idsel
	set_instance_assignment -name IO_STANDARD "3.3-V PCI" -to intan
	set_instance_assignment -name IO_STANDARD "3.3-V PCI" -to irdyn
	set_instance_assignment -name IO_STANDARD "3.3-V PCI" -to par
	set_instance_assignment -name IO_STANDARD "3.3-V PCI" -to perrn
	set_instance_assignment -name IO_STANDARD "3.3-V PCI" -to serrn
	set_instance_assignment -name IO_STANDARD "3.3-V PCI" -to stopn
	set_instance_assignment -name IO_STANDARD "3.3-V PCI" -to trdyn
	set_instance_assignment -name IO_STANDARD "3.3-V PCI" -to ad[0]
	set_instance_assignment -name IO_STANDARD "3.3-V PCI" -to ad[1]
	set_instance_assignment -name IO_STANDARD "3.3-V PCI" -to ad[2]
	set_instance_assignment -name IO_STANDARD "3.3-V PCI" -to ad[3]
	set_instance_assignment -name IO_STANDARD "3.3-V PCI" -to ad[4]
	set_instance_assignment -name IO_STANDARD "3.3-V PCI" -to ad[5]
	set_instance_assignment -name IO_STANDARD "3.3-V PCI" -to ad[6]
	set_instance_assignment -name IO_STANDARD "3.3-V PCI" -to ad[7]
	set_instance_assignment -name IO_STANDARD "3.3-V PCI" -to ad[8]
	set_instance_assignment -name IO_STANDARD "3.3-V PCI" -to ad[9]
	set_instance_assignment -name IO_STANDARD "3.3-V PCI" -to ad[10]
	set_instance_assignment -name IO_STANDARD "3.3-V PCI" -to ad[11]
	set_instance_assignment -name IO_STANDARD "3.3-V PCI" -to ad[12]
	set_instance_assignment -name IO_STANDARD "3.3-V PCI" -to ad[13]
	set_instance_assignment -name IO_STANDARD "3.3-V PCI" -to ad[14]
	set_instance_assignment -name IO_STANDARD "3.3-V PCI" -to ad[15]
	set_instance_assignment -name IO_STANDARD "3.3-V PCI" -to ad[16]
	set_instance_assignment -name IO_STANDARD "3.3-V PCI" -to ad[17]
	set_instance_assignment -name IO_STANDARD "3.3-V PCI" -to ad[18]
	set_instance_assignment -name IO_STANDARD "3.3-V PCI" -to ad[19]
	set_instance_assignment -name IO_STANDARD "3.3-V PCI" -to ad[20]
	set_instance_assignment -name IO_STANDARD "3.3-V PCI" -to ad[21]
	set_instance_assignment -name IO_STANDARD "3.3-V PCI" -to ad[22]
	set_instance_assignment -name IO_STANDARD "3.3-V PCI" -to ad[23]
	set_instance_assignment -name IO_STANDARD "3.3-V PCI" -to ad[24]
	set_instance_assignment -name IO_STANDARD "3.3-V PCI" -to ad[25]
	set_instance_assignment -name IO_STANDARD "3.3-V PCI" -to ad[26]
	set_instance_assignment -name IO_STANDARD "3.3-V PCI" -to ad[27]
	set_instance_assignment -name IO_STANDARD "3.3-V PCI" -to ad[28]
	set_instance_assignment -name IO_STANDARD "3.3-V PCI" -to ad[29]
	set_instance_assignment -name IO_STANDARD "3.3-V PCI" -to ad[30]
	set_instance_assignment -name IO_STANDARD "3.3-V PCI" -to ad[31]
	set_instance_assignment -name IO_STANDARD "3.3-V PCI" -to cben[0]
	set_instance_assignment -name IO_STANDARD "3.3-V PCI" -to cben[1]
	set_instance_assignment -name IO_STANDARD "3.3-V PCI" -to cben[2]
	set_instance_assignment -name IO_STANDARD "3.3-V PCI" -to cben[3]
	set_instance_assignment -name IO_STANDARD "3.3-V PCI" -to ad[32]
	set_instance_assignment -name IO_STANDARD "3.3-V PCI" -to ad[33]
	set_instance_assignment -name IO_STANDARD "3.3-V PCI" -to ad[34]
	set_instance_assignment -name IO_STANDARD "3.3-V PCI" -to ad[35]
	set_instance_assignment -name IO_STANDARD "3.3-V PCI" -to ad[36]
	set_instance_assignment -name IO_STANDARD "3.3-V PCI" -to ad[37]
	set_instance_assignment -name IO_STANDARD "3.3-V PCI" -to ad[38]
	set_instance_assignment -name IO_STANDARD "3.3-V PCI" -to ad[39]
	set_instance_assignment -name IO_STANDARD "3.3-V PCI" -to ad[40]
	set_instance_assignment -name IO_STANDARD "3.3-V PCI" -to ad[41]
	set_instance_assignment -name IO_STANDARD "3.3-V PCI" -to ad[42]
	set_instance_assignment -name IO_STANDARD "3.3-V PCI" -to ad[43]
	set_instance_assignment -name IO_STANDARD "3.3-V PCI" -to ad[44]
	set_instance_assignment -name IO_STANDARD "3.3-V PCI" -to ad[45]
	set_instance_assignment -name IO_STANDARD "3.3-V PCI" -to ad[46]
	set_instance_assignment -name IO_STANDARD "3.3-V PCI" -to ad[47]
	set_instance_assignment -name IO_STANDARD "3.3-V PCI" -to ad[48]
	set_instance_assignment -name IO_STANDARD "3.3-V PCI" -to ad[49]
	set_instance_assignment -name IO_STANDARD "3.3-V PCI" -to ad[50]
	set_instance_assignment -name IO_STANDARD "3.3-V PCI" -to ad[51]
	set_instance_assignment -name IO_STANDARD "3.3-V PCI" -to ad[52]
	set_instance_assignment -name IO_STANDARD "3.3-V PCI" -to ad[53]
	set_instance_assignment -name IO_STANDARD "3.3-V PCI" -to ad[54]
	set_instance_assignment -name IO_STANDARD "3.3-V PCI" -to ad[55]
	set_instance_assignment -name IO_STANDARD "3.3-V PCI" -to ad[56]
	set_instance_assignment -name IO_STANDARD "3.3-V PCI" -to ad[57]
	set_instance_assignment -name IO_STANDARD "3.3-V PCI" -to ad[58]
	set_instance_assignment -name IO_STANDARD "3.3-V PCI" -to ad[59]
	set_instance_assignment -name IO_STANDARD "3.3-V PCI" -to ad[60]
	set_instance_assignment -name IO_STANDARD "3.3-V PCI" -to ad[61]
	set_instance_assignment -name IO_STANDARD "3.3-V PCI" -to ad[62]
	set_instance_assignment -name IO_STANDARD "3.3-V PCI" -to ad[63]
	set_instance_assignment -name IO_STANDARD "3.3-V PCI" -to cben[4]
	set_instance_assignment -name IO_STANDARD "3.3-V PCI" -to cben[5]
	set_instance_assignment -name IO_STANDARD "3.3-V PCI" -to cben[6]
	set_instance_assignment -name IO_STANDARD "3.3-V PCI" -to cben[7]
	set_instance_assignment -name IO_STANDARD "3.3-V PCI" -to ack64n
	set_instance_assignment -name IO_STANDARD "3.3-V PCI" -to par64
	set_instance_assignment -name IO_STANDARD "3.3-V PCI" -to req64n
	set_instance_assignment -name IO_STANDARD "3.3-V PCI" -to reqn
	set_instance_assignment -name IO_STANDARD "3.3-V PCI" -to gntn
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS II" -to ddr_a[0]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS II" -to ddr_a[1]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS II" -to ddr_a[2]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS II" -to ddr_a[3]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS II" -to ddr_a[4]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS II" -to ddr_a[5]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS II" -to ddr_a[6]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS II" -to ddr_a[7]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS II" -to ddr_a[8]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS II" -to ddr_a[9]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS II" -to ddr_a[10]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS II" -to ddr_a[11]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS II" -to ddr_a[12]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to ddr_a[13]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to ddr_a[14]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to ddr_a[15]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS II" -to ddr_ba[0]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS II" -to ddr_ba[1]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to ddr_ba[2]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS II" -to ddr_cas_n
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS II" -to ddr_dq[0]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS II" -to ddr_dq[1]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS II" -to ddr_dq[2]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS II" -to ddr_dq[3]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS II" -to ddr_dq[4]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS II" -to ddr_dq[5]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS II" -to ddr_dq[6]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS II" -to ddr_dq[7]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS II" -to ddr_dq[8]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS II" -to ddr_dq[9]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS II" -to ddr_dq[10]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS II" -to ddr_dq[11]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS II" -to ddr_dq[12]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS II" -to ddr_dq[13]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS II" -to ddr_dq[14]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS II" -to ddr_dq[15]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS II" -to ddr_dq[16]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS II" -to ddr_dq[17]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS II" -to ddr_dq[18]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS II" -to ddr_dq[19]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS II" -to ddr_dq[20]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS II" -to ddr_dq[21]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS II" -to ddr_dq[22]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS II" -to ddr_dq[23]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS II" -to ddr_dq[24]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS II" -to ddr_dq[25]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS II" -to ddr_dq[26]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS II" -to ddr_dq[27]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS II" -to ddr_dq[28]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS II" -to ddr_dq[29]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS II" -to ddr_dq[30]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS II" -to ddr_dq[31]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS II" -to ddr_dqs[0]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS II" -to ddr_dqs[1]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS II" -to ddr_dqs[2]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS II" -to ddr_dqs[3]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS II" -to ddr_ras_n
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to ddr_sync_clk_in
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to ddr_sync_clk_out
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS II" -to ddr_we_n
	set_instance_assignment -name IO_STANDARD "1.8 V" -to conf_safe_cs0n
	set_instance_assignment -name IO_STANDARD "1.8 V" -to conf_user_cs0n
	set_instance_assignment -name IO_STANDARD "1.8 V" -to user_dipsw[0]
	set_instance_assignment -name IO_STANDARD "1.8 V" -to user_dipsw[1]
	set_instance_assignment -name IO_STANDARD "1.8 V" -to user_dipsw[2]
	set_instance_assignment -name IO_STANDARD "1.8 V" -to user_dipsw[3]
	set_instance_assignment -name IO_STANDARD "1.8 V" -to user_dipsw[4]
	set_instance_assignment -name IO_STANDARD "1.8-V HSTL CLASS II" -to qdrii_a[0]
	set_instance_assignment -name IO_STANDARD "1.8-V HSTL CLASS II" -to qdrii_a[1]
	set_instance_assignment -name IO_STANDARD "1.8-V HSTL CLASS II" -to qdrii_a[2]
	set_instance_assignment -name IO_STANDARD "1.8-V HSTL CLASS II" -to qdrii_a[3]
	set_instance_assignment -name IO_STANDARD "1.8-V HSTL CLASS II" -to qdrii_a[4]
	set_instance_assignment -name IO_STANDARD "1.8-V HSTL CLASS II" -to qdrii_a[5]
	set_instance_assignment -name IO_STANDARD "1.8-V HSTL CLASS II" -to qdrii_a[6]
	set_instance_assignment -name IO_STANDARD "1.8-V HSTL CLASS II" -to qdrii_a[7]
	set_instance_assignment -name IO_STANDARD "1.8-V HSTL CLASS II" -to qdrii_a[8]
	set_instance_assignment -name IO_STANDARD "1.8-V HSTL CLASS II" -to qdrii_a[9]
	set_instance_assignment -name IO_STANDARD "1.8-V HSTL CLASS II" -to qdrii_a[10]
	set_instance_assignment -name IO_STANDARD "1.8-V HSTL CLASS II" -to qdrii_a[11]
	set_instance_assignment -name IO_STANDARD "1.8-V HSTL CLASS II" -to qdrii_a[12]
	set_instance_assignment -name IO_STANDARD "1.8-V HSTL CLASS II" -to qdrii_a[13]
	set_instance_assignment -name IO_STANDARD "1.8-V HSTL CLASS II" -to qdrii_a[14]
	set_instance_assignment -name IO_STANDARD "1.8-V HSTL CLASS II" -to qdrii_a[15]
	set_instance_assignment -name IO_STANDARD "1.8-V HSTL CLASS II" -to qdrii_a[16]
	set_instance_assignment -name IO_STANDARD "1.8-V HSTL CLASS II" -to qdrii_a[17]
	set_instance_assignment -name IO_STANDARD "1.8-V HSTL CLASS II" -to qdrii_a[18]
	set_instance_assignment -name IO_STANDARD "1.8-V HSTL CLASS II" -to qdrii_a[19]
	set_instance_assignment -name IO_STANDARD "1.8-V HSTL CLASS II" -to qdrii_bwsn[0]
	set_instance_assignment -name IO_STANDARD "1.8-V HSTL CLASS II" -to qdrii_bwsn[1]
	set_instance_assignment -name IO_STANDARD "1.8-V HSTL CLASS II" -to qdrii_cq_n0
	set_instance_assignment -name IO_STANDARD "1.8-V HSTL CLASS II" -to qdrii_cq_p0
	set_instance_assignment -name IO_STANDARD "1.8-V HSTL CLASS II" -to qdrii_d[0]
	set_instance_assignment -name IO_STANDARD "1.8-V HSTL CLASS II" -to qdrii_d[1]
	set_instance_assignment -name IO_STANDARD "1.8-V HSTL CLASS II" -to qdrii_d[2]
	set_instance_assignment -name IO_STANDARD "1.8-V HSTL CLASS II" -to qdrii_d[3]
	set_instance_assignment -name IO_STANDARD "1.8-V HSTL CLASS II" -to qdrii_d[4]
	set_instance_assignment -name IO_STANDARD "1.8-V HSTL CLASS II" -to qdrii_d[5]
	set_instance_assignment -name IO_STANDARD "1.8-V HSTL CLASS II" -to qdrii_d[6]
	set_instance_assignment -name IO_STANDARD "1.8-V HSTL CLASS II" -to qdrii_d[7]
	set_instance_assignment -name IO_STANDARD "1.8-V HSTL CLASS II" -to qdrii_d[8]
	set_instance_assignment -name IO_STANDARD "1.8-V HSTL CLASS II" -to qdrii_d[9]
	set_instance_assignment -name IO_STANDARD "1.8-V HSTL CLASS II" -to qdrii_d[10]
	set_instance_assignment -name IO_STANDARD "1.8-V HSTL CLASS II" -to qdrii_d[11]
	set_instance_assignment -name IO_STANDARD "1.8-V HSTL CLASS II" -to qdrii_d[12]
	set_instance_assignment -name IO_STANDARD "1.8-V HSTL CLASS II" -to qdrii_d[13]
	set_instance_assignment -name IO_STANDARD "1.8-V HSTL CLASS II" -to qdrii_d[14]
	set_instance_assignment -name IO_STANDARD "1.8-V HSTL CLASS II" -to qdrii_d[15]
	set_instance_assignment -name IO_STANDARD "1.8-V HSTL CLASS II" -to qdrii_d[16]
	set_instance_assignment -name IO_STANDARD "1.8-V HSTL CLASS II" -to qdrii_d[17]
	set_instance_assignment -name IO_STANDARD "1.8-V HSTL CLASS II" -to qdrii_k_n0
	set_instance_assignment -name IO_STANDARD "1.8-V HSTL CLASS II" -to qdrii_k_p0
	set_instance_assignment -name IO_STANDARD "1.8-V HSTL CLASS II" -to qdrii_q[0]
	set_instance_assignment -name IO_STANDARD "1.8-V HSTL CLASS II" -to qdrii_q[1]
	set_instance_assignment -name IO_STANDARD "1.8-V HSTL CLASS II" -to qdrii_q[2]
	set_instance_assignment -name IO_STANDARD "1.8-V HSTL CLASS II" -to qdrii_q[3]
	set_instance_assignment -name IO_STANDARD "1.8-V HSTL CLASS II" -to qdrii_q[4]
	set_instance_assignment -name IO_STANDARD "1.8-V HSTL CLASS II" -to qdrii_q[5]
	set_instance_assignment -name IO_STANDARD "1.8-V HSTL CLASS II" -to qdrii_q[6]
	set_instance_assignment -name IO_STANDARD "1.8-V HSTL CLASS II" -to qdrii_q[7]
	set_instance_assignment -name IO_STANDARD "1.8-V HSTL CLASS II" -to qdrii_q[8]
	set_instance_assignment -name IO_STANDARD "1.8-V HSTL CLASS II" -to qdrii_q[9]
	set_instance_assignment -name IO_STANDARD "1.8-V HSTL CLASS II" -to qdrii_q[10]
	set_instance_assignment -name IO_STANDARD "1.8-V HSTL CLASS II" -to qdrii_q[11]
	set_instance_assignment -name IO_STANDARD "1.8-V HSTL CLASS II" -to qdrii_q[12]
	set_instance_assignment -name IO_STANDARD "1.8-V HSTL CLASS II" -to qdrii_q[13]
	set_instance_assignment -name IO_STANDARD "1.8-V HSTL CLASS II" -to qdrii_q[14]
	set_instance_assignment -name IO_STANDARD "1.8-V HSTL CLASS II" -to qdrii_q[15]
	set_instance_assignment -name IO_STANDARD "1.8-V HSTL CLASS II" -to qdrii_q[16]
	set_instance_assignment -name IO_STANDARD "1.8-V HSTL CLASS II" -to qdrii_q[17]
	set_instance_assignment -name IO_STANDARD "1.8-V HSTL CLASS II" -to qdrii_rpsn0
	set_instance_assignment -name IO_STANDARD "1.8-V HSTL CLASS II" -to qdrii_sync_clk_in
	set_instance_assignment -name IO_STANDARD "1.8-V HSTL CLASS II" -to qdrii_sync_clk_out
	set_instance_assignment -name IO_STANDARD "1.8-V HSTL CLASS II" -to qdrii_wpsn0
	set_instance_assignment -name IO_STANDARD "3.3-V PCI" -to lockn
	set_instance_assignment -name IO_STANDARD LVTTL -to rs232_cts
	set_instance_assignment -name IO_STANDARD LVTTL -to rs232_rts
	set_instance_assignment -name IO_STANDARD LVTTL -to rs232_rxd
	set_instance_assignment -name IO_STANDARD LVTTL -to rs232_txd
	set_instance_assignment -name IO_STANDARD LVTTL -to user_led[0]
	set_instance_assignment -name IO_STANDARD LVTTL -to user_led[1]
	set_instance_assignment -name IO_STANDARD LVTTL -to user_led[2]
	set_instance_assignment -name IO_STANDARD LVTTL -to user_led[3]
	set_instance_assignment -name IO_STANDARD LVTTL -to user_led[4]
	set_instance_assignment -name IO_STANDARD LVTTL -to user_led[5]
	set_instance_assignment -name IO_STANDARD LVTTL -to user_led[6]
	set_instance_assignment -name IO_STANDARD LVTTL -to user_led[7]
	set_instance_assignment -name IO_STANDARD LVTTL -to lan_a[1]
	set_instance_assignment -name IO_STANDARD LVTTL -to lan_a[2]
	set_instance_assignment -name IO_STANDARD LVTTL -to lan_a[3]
	set_instance_assignment -name IO_STANDARD LVTTL -to lan_a[4]
	set_instance_assignment -name IO_STANDARD LVTTL -to lan_a[5]
	set_instance_assignment -name IO_STANDARD LVTTL -to lan_a[6]
	set_instance_assignment -name IO_STANDARD LVTTL -to lan_a[7]
	set_instance_assignment -name IO_STANDARD LVTTL -to lan_a[8]
	set_instance_assignment -name IO_STANDARD LVTTL -to lan_a[9]
	set_instance_assignment -name IO_STANDARD LVTTL -to lan_a[10]
	set_instance_assignment -name IO_STANDARD LVTTL -to lan_a[11]
	set_instance_assignment -name IO_STANDARD LVTTL -to lan_a[12]
	set_instance_assignment -name IO_STANDARD LVTTL -to lan_a[13]
	set_instance_assignment -name IO_STANDARD LVTTL -to lan_a[14]
	set_instance_assignment -name IO_STANDARD LVTTL -to lan_a[15]
	set_instance_assignment -name IO_STANDARD LVTTL -to lan_adsn
	set_instance_assignment -name IO_STANDARD LVTTL -to lan_aen
	set_instance_assignment -name IO_STANDARD LVTTL -to lan_ben[0]
	set_instance_assignment -name IO_STANDARD LVTTL -to lan_ben[1]
	set_instance_assignment -name IO_STANDARD LVTTL -to lan_ben[2]
	set_instance_assignment -name IO_STANDARD LVTTL -to lan_ben[3]
	set_instance_assignment -name IO_STANDARD LVTTL -to lan_clk
	set_instance_assignment -name IO_STANDARD LVTTL -to lan_cyclen
	set_instance_assignment -name IO_STANDARD LVTTL -to lan_d[0]
	set_instance_assignment -name IO_STANDARD LVTTL -to lan_d[1]
	set_instance_assignment -name IO_STANDARD LVTTL -to lan_d[2]
	set_instance_assignment -name IO_STANDARD LVTTL -to lan_d[3]
	set_instance_assignment -name IO_STANDARD LVTTL -to lan_d[4]
	set_instance_assignment -name IO_STANDARD LVTTL -to lan_d[5]
	set_instance_assignment -name IO_STANDARD LVTTL -to lan_d[6]
	set_instance_assignment -name IO_STANDARD LVTTL -to lan_d[7]
	set_instance_assignment -name IO_STANDARD LVTTL -to lan_d[8]
	set_instance_assignment -name IO_STANDARD LVTTL -to lan_d[9]
	set_instance_assignment -name IO_STANDARD LVTTL -to lan_d[10]
	set_instance_assignment -name IO_STANDARD LVTTL -to lan_d[11]
	set_instance_assignment -name IO_STANDARD LVTTL -to lan_d[12]
	set_instance_assignment -name IO_STANDARD LVTTL -to lan_d[13]
	set_instance_assignment -name IO_STANDARD LVTTL -to lan_d[14]
	set_instance_assignment -name IO_STANDARD LVTTL -to lan_d[15]
	set_instance_assignment -name IO_STANDARD LVTTL -to lan_d[16]
	set_instance_assignment -name IO_STANDARD LVTTL -to lan_d[17]
	set_instance_assignment -name IO_STANDARD LVTTL -to lan_d[18]
	set_instance_assignment -name IO_STANDARD LVTTL -to lan_d[19]
	set_instance_assignment -name IO_STANDARD LVTTL -to lan_d[20]
	set_instance_assignment -name IO_STANDARD LVTTL -to lan_d[21]
	set_instance_assignment -name IO_STANDARD LVTTL -to lan_d[22]
	set_instance_assignment -name IO_STANDARD LVTTL -to lan_d[23]
	set_instance_assignment -name IO_STANDARD LVTTL -to lan_d[24]
	set_instance_assignment -name IO_STANDARD LVTTL -to lan_d[25]
	set_instance_assignment -name IO_STANDARD LVTTL -to lan_d[26]
	set_instance_assignment -name IO_STANDARD LVTTL -to lan_d[27]
	set_instance_assignment -name IO_STANDARD LVTTL -to lan_d[28]
	set_instance_assignment -name IO_STANDARD LVTTL -to lan_d[29]
	set_instance_assignment -name IO_STANDARD LVTTL -to lan_d[30]
	set_instance_assignment -name IO_STANDARD LVTTL -to lan_d[31]
	set_instance_assignment -name IO_STANDARD LVTTL -to lan_datacsn
	set_instance_assignment -name IO_STANDARD LVTTL -to lan_intrq0
	set_instance_assignment -name IO_STANDARD LVTTL -to lan_iochrdy
	set_instance_assignment -name IO_STANDARD LVTTL -to lan_iorn
	set_instance_assignment -name IO_STANDARD LVTTL -to lan_iown
	set_instance_assignment -name IO_STANDARD LVTTL -to lan_ldevn
	set_instance_assignment -name IO_STANDARD LVTTL -to lan_loopback
	set_instance_assignment -name IO_STANDARD LVTTL -to lan_rdyrtn
	set_instance_assignment -name IO_STANDARD LVTTL -to lan_reset
	set_instance_assignment -name IO_STANDARD LVTTL -to lan_srdyn
	set_instance_assignment -name IO_STANDARD LVTTL -to lan_vlbusn
	set_instance_assignment -name IO_STANDARD LVTTL -to lan_w_rn
	set_instance_assignment -name IO_STANDARD "1.8 V" -to user_pb1
	set_instance_assignment -name IO_STANDARD "1.8 V" -to user_pb2
	set_instance_assignment -name IO_STANDARD LVTTL -to osca_clk1
	set_instance_assignment -name IO_STANDARD LVTTL -to osca_clk6
	set_instance_assignment -name IO_STANDARD LVTTL -to clk_from_scruz
	set_instance_assignment -name IO_STANDARD LVTTL -to clk_sma
	set_instance_assignment -name IO_STANDARD LVTTL -to clk_to_scruz
	set_instance_assignment -name IO_STANDARD LVTTL -to scruz_cardseln
	set_instance_assignment -name IO_STANDARD LVTTL -to scruz_io[0]
	set_instance_assignment -name IO_STANDARD LVTTL -to scruz_io[1]
	set_instance_assignment -name IO_STANDARD LVTTL -to scruz_io[2]
	set_instance_assignment -name IO_STANDARD LVTTL -to scruz_io[3]
	set_instance_assignment -name IO_STANDARD LVTTL -to scruz_io[4]
	set_instance_assignment -name IO_STANDARD LVTTL -to scruz_io[5]
	set_instance_assignment -name IO_STANDARD LVTTL -to scruz_io[6]
	set_instance_assignment -name IO_STANDARD LVTTL -to scruz_io[7]
	set_instance_assignment -name IO_STANDARD LVTTL -to scruz_io[8]
	set_instance_assignment -name IO_STANDARD LVTTL -to scruz_io[9]
	set_instance_assignment -name IO_STANDARD LVTTL -to scruz_io[10]
	set_instance_assignment -name IO_STANDARD LVTTL -to scruz_io[11]
	set_instance_assignment -name IO_STANDARD LVTTL -to scruz_io[12]
	set_instance_assignment -name IO_STANDARD LVTTL -to scruz_io[13]
	set_instance_assignment -name IO_STANDARD LVTTL -to scruz_io[14]
	set_instance_assignment -name IO_STANDARD LVTTL -to scruz_io[15]
	set_instance_assignment -name IO_STANDARD LVTTL -to scruz_io[16]
	set_instance_assignment -name IO_STANDARD LVTTL -to scruz_io[17]
	set_instance_assignment -name IO_STANDARD LVTTL -to scruz_io[18]
	set_instance_assignment -name IO_STANDARD LVTTL -to scruz_io[19]
	set_instance_assignment -name IO_STANDARD LVTTL -to scruz_io[20]
	set_instance_assignment -name IO_STANDARD LVTTL -to scruz_io[21]
	set_instance_assignment -name IO_STANDARD LVTTL -to scruz_io[22]
	set_instance_assignment -name IO_STANDARD LVTTL -to scruz_io[23]
	set_instance_assignment -name IO_STANDARD LVTTL -to scruz_io[24]
	set_instance_assignment -name IO_STANDARD LVTTL -to scruz_io[25]
	set_instance_assignment -name IO_STANDARD LVTTL -to scruz_io[26]
	set_instance_assignment -name IO_STANDARD LVTTL -to scruz_io[27]
	set_instance_assignment -name IO_STANDARD LVTTL -to scruz_io[28]
	set_instance_assignment -name IO_STANDARD LVTTL -to scruz_io[29]
	set_instance_assignment -name IO_STANDARD LVTTL -to scruz_io[30]
	set_instance_assignment -name IO_STANDARD LVTTL -to scruz_io[31]
	set_instance_assignment -name IO_STANDARD LVTTL -to scruz_io[32]
	set_instance_assignment -name IO_STANDARD LVTTL -to scruz_io[33]
	set_instance_assignment -name IO_STANDARD LVTTL -to scruz_io[34]
	set_instance_assignment -name IO_STANDARD LVTTL -to scruz_io[35]
	set_instance_assignment -name IO_STANDARD LVTTL -to scruz_io[36]
	set_instance_assignment -name IO_STANDARD LVTTL -to scruz_io[37]
	set_instance_assignment -name IO_STANDARD LVTTL -to scruz_io[38]
	set_instance_assignment -name IO_STANDARD LVTTL -to scruz_io[39]
	set_instance_assignment -name IO_STANDARD LVTTL -to scruz_io[40]
	set_instance_assignment -name IO_STANDARD LVTTL -to pll_to_scruz
	set_instance_assignment -name IO_STANDARD "1.8 V" -to mresetn
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS II" -to ddr_odt
	set_instance_assignment -name FAST_OUTPUT_REGISTER ON -to ddr_cke
	set_instance_assignment -name FAST_OUTPUT_REGISTER ON -to ddr_cs_n
	set_instance_assignment -name FAST_OUTPUT_REGISTER ON -to ddr_odt
	set_instance_assignment -name FAST_OUTPUT_REGISTER ON -to ddr_ras_n
	set_instance_assignment -name FAST_OUTPUT_REGISTER ON -to ddr_cas_n
	set_instance_assignment -name FAST_OUTPUT_REGISTER ON -to ddr_we_n
	set_instance_assignment -name FAST_OUTPUT_REGISTER ON -to ddr_a[0]
	set_instance_assignment -name FAST_OUTPUT_REGISTER ON -to ddr_a[1]
	set_instance_assignment -name FAST_OUTPUT_REGISTER ON -to ddr_a[2]
	set_instance_assignment -name FAST_OUTPUT_REGISTER ON -to ddr_a[3]
	set_instance_assignment -name FAST_OUTPUT_REGISTER ON -to ddr_a[4]
	set_instance_assignment -name FAST_OUTPUT_REGISTER ON -to ddr_a[5]
	set_instance_assignment -name FAST_OUTPUT_REGISTER ON -to ddr_a[6]
	set_instance_assignment -name FAST_OUTPUT_REGISTER ON -to ddr_a[7]
	set_instance_assignment -name FAST_OUTPUT_REGISTER ON -to ddr_a[8]
	set_instance_assignment -name FAST_OUTPUT_REGISTER ON -to ddr_a[9]
	set_instance_assignment -name FAST_OUTPUT_REGISTER ON -to ddr_a[10]
	set_instance_assignment -name FAST_OUTPUT_REGISTER ON -to ddr_a[11]
	set_instance_assignment -name FAST_OUTPUT_REGISTER ON -to ddr_a[12]
	set_instance_assignment -name FAST_OUTPUT_REGISTER ON -to ddr_ba[0]
	set_instance_assignment -name FAST_OUTPUT_REGISTER ON -to ddr_ba[1]
	set_instance_assignment -name CLOCK_SETTINGS clk -to clk
	set_instance_assignment -name TSU_REQUIREMENT "3 ns" -to devseln
	set_instance_assignment -name TH_REQUIREMENT "0 ns" -to devseln
	set_instance_assignment -name TCO_REQUIREMENT "6 ns" -to devseln
	set_instance_assignment -name TSU_REQUIREMENT "3 ns" -to framen
	set_instance_assignment -name TH_REQUIREMENT "0 ns" -to framen
	set_instance_assignment -name TCO_REQUIREMENT "6 ns" -to framen
	set_instance_assignment -name TSU_REQUIREMENT "3 ns" -to idsel
	set_instance_assignment -name TH_REQUIREMENT "0 ns" -to idsel
	set_instance_assignment -name TCO_REQUIREMENT "6 ns" -to intan
	set_instance_assignment -name TSU_REQUIREMENT "3 ns" -to irdyn
	set_instance_assignment -name TH_REQUIREMENT "0 ns" -to irdyn
	set_instance_assignment -name TCO_REQUIREMENT "6 ns" -to irdyn
	set_instance_assignment -name TSU_REQUIREMENT "3 ns" -to par
	set_instance_assignment -name TH_REQUIREMENT "0 ns" -to par
	set_instance_assignment -name TCO_REQUIREMENT "6 ns" -to par
	set_instance_assignment -name TSU_REQUIREMENT "3 ns" -to perrn
	set_instance_assignment -name TH_REQUIREMENT "0 ns" -to perrn
	set_instance_assignment -name TCO_REQUIREMENT "6 ns" -to perrn
	set_instance_assignment -name TCO_REQUIREMENT "6 ns" -to serrn
	set_instance_assignment -name TSU_REQUIREMENT "3 ns" -to stopn
	set_instance_assignment -name TH_REQUIREMENT "0 ns" -to stopn
	set_instance_assignment -name TCO_REQUIREMENT "6 ns" -to stopn
	set_instance_assignment -name TSU_REQUIREMENT "3 ns" -to trdyn
	set_instance_assignment -name TH_REQUIREMENT "0 ns" -to trdyn
	set_instance_assignment -name TCO_REQUIREMENT "6 ns" -to trdyn
	set_instance_assignment -name TSU_REQUIREMENT "3 ns" -to ad[0]
	set_instance_assignment -name TH_REQUIREMENT "0 ns" -to ad[0]
	set_instance_assignment -name TCO_REQUIREMENT "6 ns" -to ad[0]
	set_instance_assignment -name TSU_REQUIREMENT "3 ns" -to ad[1]
	set_instance_assignment -name TH_REQUIREMENT "0 ns" -to ad[1]
	set_instance_assignment -name TCO_REQUIREMENT "6 ns" -to ad[1]
	set_instance_assignment -name TSU_REQUIREMENT "3 ns" -to ad[2]
	set_instance_assignment -name TH_REQUIREMENT "0 ns" -to ad[2]
	set_instance_assignment -name TCO_REQUIREMENT "6 ns" -to ad[2]
	set_instance_assignment -name TSU_REQUIREMENT "3 ns" -to ad[3]
	set_instance_assignment -name TH_REQUIREMENT "0 ns" -to ad[3]
	set_instance_assignment -name TCO_REQUIREMENT "6 ns" -to ad[3]
	set_instance_assignment -name TSU_REQUIREMENT "3 ns" -to ad[4]
	set_instance_assignment -name TH_REQUIREMENT "0 ns" -to ad[4]
	set_instance_assignment -name TCO_REQUIREMENT "6 ns" -to ad[4]
	set_instance_assignment -name TSU_REQUIREMENT "3 ns" -to ad[5]
	set_instance_assignment -name TH_REQUIREMENT "0 ns" -to ad[5]
	set_instance_assignment -name TCO_REQUIREMENT "6 ns" -to ad[5]
	set_instance_assignment -name TSU_REQUIREMENT "3 ns" -to ad[6]
	set_instance_assignment -name TH_REQUIREMENT "0 ns" -to ad[6]
	set_instance_assignment -name TCO_REQUIREMENT "6 ns" -to ad[6]
	set_instance_assignment -name TSU_REQUIREMENT "3 ns" -to ad[7]
	set_instance_assignment -name TH_REQUIREMENT "0 ns" -to ad[7]
	set_instance_assignment -name TCO_REQUIREMENT "6 ns" -to ad[7]
	set_instance_assignment -name TSU_REQUIREMENT "3 ns" -to ad[8]
	set_instance_assignment -name TH_REQUIREMENT "0 ns" -to ad[8]
	set_instance_assignment -name TCO_REQUIREMENT "6 ns" -to ad[8]
	set_instance_assignment -name TSU_REQUIREMENT "3 ns" -to ad[9]
	set_instance_assignment -name TH_REQUIREMENT "0 ns" -to ad[9]
	set_instance_assignment -name TCO_REQUIREMENT "6 ns" -to ad[9]
	set_instance_assignment -name TSU_REQUIREMENT "3 ns" -to ad[10]
	set_instance_assignment -name TH_REQUIREMENT "0 ns" -to ad[10]
	set_instance_assignment -name TCO_REQUIREMENT "6 ns" -to ad[10]
	set_instance_assignment -name TSU_REQUIREMENT "3 ns" -to ad[11]
	set_instance_assignment -name TH_REQUIREMENT "0 ns" -to ad[11]
	set_instance_assignment -name TCO_REQUIREMENT "6 ns" -to ad[11]
	set_instance_assignment -name TSU_REQUIREMENT "3 ns" -to ad[12]
	set_instance_assignment -name TH_REQUIREMENT "0 ns" -to ad[12]
	set_instance_assignment -name TCO_REQUIREMENT "6 ns" -to ad[12]
	set_instance_assignment -name TSU_REQUIREMENT "3 ns" -to ad[13]
	set_instance_assignment -name TH_REQUIREMENT "0 ns" -to ad[13]
	set_instance_assignment -name TCO_REQUIREMENT "6 ns" -to ad[13]
	set_instance_assignment -name TSU_REQUIREMENT "3 ns" -to ad[14]
	set_instance_assignment -name TH_REQUIREMENT "0 ns" -to ad[14]
	set_instance_assignment -name TCO_REQUIREMENT "6 ns" -to ad[14]
	set_instance_assignment -name TSU_REQUIREMENT "3 ns" -to ad[15]
	set_instance_assignment -name TH_REQUIREMENT "0 ns" -to ad[15]
	set_instance_assignment -name TCO_REQUIREMENT "6 ns" -to ad[15]
	set_instance_assignment -name TSU_REQUIREMENT "3 ns" -to ad[16]
	set_instance_assignment -name TH_REQUIREMENT "0 ns" -to ad[16]
	set_instance_assignment -name TCO_REQUIREMENT "6 ns" -to ad[16]
	set_instance_assignment -name TSU_REQUIREMENT "3 ns" -to ad[17]
	set_instance_assignment -name TH_REQUIREMENT "0 ns" -to ad[17]
	set_instance_assignment -name TCO_REQUIREMENT "6 ns" -to ad[17]
	set_instance_assignment -name TSU_REQUIREMENT "3 ns" -to ad[18]
	set_instance_assignment -name TH_REQUIREMENT "0 ns" -to ad[18]
	set_instance_assignment -name TCO_REQUIREMENT "6 ns" -to ad[18]
	set_instance_assignment -name TSU_REQUIREMENT "3 ns" -to ad[19]
	set_instance_assignment -name TH_REQUIREMENT "0 ns" -to ad[19]
	set_instance_assignment -name TCO_REQUIREMENT "6 ns" -to ad[19]
	set_instance_assignment -name TSU_REQUIREMENT "3 ns" -to ad[20]
	set_instance_assignment -name TH_REQUIREMENT "0 ns" -to ad[20]
	set_instance_assignment -name TCO_REQUIREMENT "6 ns" -to ad[20]
	set_instance_assignment -name TSU_REQUIREMENT "3 ns" -to ad[21]
	set_instance_assignment -name TH_REQUIREMENT "0 ns" -to ad[21]
	set_instance_assignment -name TCO_REQUIREMENT "6 ns" -to ad[21]
	set_instance_assignment -name TSU_REQUIREMENT "3 ns" -to ad[22]
	set_instance_assignment -name TH_REQUIREMENT "0 ns" -to ad[22]
	set_instance_assignment -name TCO_REQUIREMENT "6 ns" -to ad[22]
	set_instance_assignment -name TSU_REQUIREMENT "3 ns" -to ad[23]
	set_instance_assignment -name TH_REQUIREMENT "0 ns" -to ad[23]
	set_instance_assignment -name TCO_REQUIREMENT "6 ns" -to ad[23]
	set_instance_assignment -name TSU_REQUIREMENT "3 ns" -to ad[24]
	set_instance_assignment -name TH_REQUIREMENT "0 ns" -to ad[24]
	set_instance_assignment -name TCO_REQUIREMENT "6 ns" -to ad[24]
	set_instance_assignment -name TSU_REQUIREMENT "3 ns" -to ad[25]
	set_instance_assignment -name TH_REQUIREMENT "0 ns" -to ad[25]
	set_instance_assignment -name TCO_REQUIREMENT "6 ns" -to ad[25]
	set_instance_assignment -name TSU_REQUIREMENT "3 ns" -to ad[26]
	set_instance_assignment -name TH_REQUIREMENT "0 ns" -to ad[26]
	set_instance_assignment -name TCO_REQUIREMENT "6 ns" -to ad[26]
	set_instance_assignment -name TSU_REQUIREMENT "3 ns" -to ad[27]
	set_instance_assignment -name TH_REQUIREMENT "0 ns" -to ad[27]
	set_instance_assignment -name TCO_REQUIREMENT "6 ns" -to ad[27]
	set_instance_assignment -name TSU_REQUIREMENT "3 ns" -to ad[28]
	set_instance_assignment -name TH_REQUIREMENT "0 ns" -to ad[28]
	set_instance_assignment -name TCO_REQUIREMENT "6 ns" -to ad[28]
	set_instance_assignment -name TSU_REQUIREMENT "3 ns" -to ad[29]
	set_instance_assignment -name TH_REQUIREMENT "0 ns" -to ad[29]
	set_instance_assignment -name TCO_REQUIREMENT "6 ns" -to ad[29]
	set_instance_assignment -name TSU_REQUIREMENT "3 ns" -to ad[30]
	set_instance_assignment -name TH_REQUIREMENT "0 ns" -to ad[30]
	set_instance_assignment -name TCO_REQUIREMENT "6 ns" -to ad[30]
	set_instance_assignment -name TSU_REQUIREMENT "3 ns" -to ad[31]
	set_instance_assignment -name TH_REQUIREMENT "0 ns" -to ad[31]
	set_instance_assignment -name TCO_REQUIREMENT "6 ns" -to ad[31]
	set_instance_assignment -name TSU_REQUIREMENT "3 ns" -to cben[0]
	set_instance_assignment -name TH_REQUIREMENT "0 ns" -to cben[0]
	set_instance_assignment -name TCO_REQUIREMENT "6 ns" -to cben[0]
	set_instance_assignment -name TSU_REQUIREMENT "3 ns" -to cben[1]
	set_instance_assignment -name TH_REQUIREMENT "0 ns" -to cben[1]
	set_instance_assignment -name TCO_REQUIREMENT "6 ns" -to cben[1]
	set_instance_assignment -name TSU_REQUIREMENT "3 ns" -to cben[2]
	set_instance_assignment -name TH_REQUIREMENT "0 ns" -to cben[2]
	set_instance_assignment -name TCO_REQUIREMENT "6 ns" -to cben[2]
	set_instance_assignment -name TSU_REQUIREMENT "3 ns" -to cben[3]
	set_instance_assignment -name TH_REQUIREMENT "0 ns" -to cben[3]
	set_instance_assignment -name TCO_REQUIREMENT "6 ns" -to cben[3]
	set_instance_assignment -name TSU_REQUIREMENT "3 ns" -to ad[32]
	set_instance_assignment -name TH_REQUIREMENT "0 ns" -to ad[32]
	set_instance_assignment -name TCO_REQUIREMENT "6 ns" -to ad[32]
	set_instance_assignment -name TSU_REQUIREMENT "3 ns" -to ad[33]
	set_instance_assignment -name TH_REQUIREMENT "0 ns" -to ad[33]
	set_instance_assignment -name TCO_REQUIREMENT "6 ns" -to ad[33]
	set_instance_assignment -name TSU_REQUIREMENT "3 ns" -to ad[34]
	set_instance_assignment -name TH_REQUIREMENT "0 ns" -to ad[34]
	set_instance_assignment -name TCO_REQUIREMENT "6 ns" -to ad[34]
	set_instance_assignment -name TSU_REQUIREMENT "3 ns" -to ad[35]
	set_instance_assignment -name TH_REQUIREMENT "0 ns" -to ad[35]
	set_instance_assignment -name TCO_REQUIREMENT "6 ns" -to ad[35]
	set_instance_assignment -name TSU_REQUIREMENT "3 ns" -to ad[36]
	set_instance_assignment -name TH_REQUIREMENT "0 ns" -to ad[36]
	set_instance_assignment -name TCO_REQUIREMENT "6 ns" -to ad[36]
	set_instance_assignment -name TSU_REQUIREMENT "3 ns" -to ad[37]
	set_instance_assignment -name TH_REQUIREMENT "0 ns" -to ad[37]
	set_instance_assignment -name TCO_REQUIREMENT "6 ns" -to ad[37]
	set_instance_assignment -name TSU_REQUIREMENT "3 ns" -to ad[38]
	set_instance_assignment -name TH_REQUIREMENT "0 ns" -to ad[38]
	set_instance_assignment -name TCO_REQUIREMENT "6 ns" -to ad[38]
	set_instance_assignment -name TSU_REQUIREMENT "3 ns" -to ad[39]
	set_instance_assignment -name TH_REQUIREMENT "0 ns" -to ad[39]
	set_instance_assignment -name TCO_REQUIREMENT "6 ns" -to ad[39]
	set_instance_assignment -name TSU_REQUIREMENT "3 ns" -to ad[40]
	set_instance_assignment -name TH_REQUIREMENT "0 ns" -to ad[40]
	set_instance_assignment -name TCO_REQUIREMENT "6 ns" -to ad[40]
	set_instance_assignment -name TSU_REQUIREMENT "3 ns" -to ad[41]
	set_instance_assignment -name TH_REQUIREMENT "0 ns" -to ad[41]
	set_instance_assignment -name TCO_REQUIREMENT "6 ns" -to ad[41]
	set_instance_assignment -name TSU_REQUIREMENT "3 ns" -to ad[42]
	set_instance_assignment -name TH_REQUIREMENT "0 ns" -to ad[42]
	set_instance_assignment -name TCO_REQUIREMENT "6 ns" -to ad[42]
	set_instance_assignment -name TSU_REQUIREMENT "3 ns" -to ad[43]
	set_instance_assignment -name TH_REQUIREMENT "0 ns" -to ad[43]
	set_instance_assignment -name TCO_REQUIREMENT "6 ns" -to ad[43]
	set_instance_assignment -name TSU_REQUIREMENT "3 ns" -to ad[44]
	set_instance_assignment -name TH_REQUIREMENT "0 ns" -to ad[44]
	set_instance_assignment -name TCO_REQUIREMENT "6 ns" -to ad[44]
	set_instance_assignment -name TSU_REQUIREMENT "3 ns" -to ad[45]
	set_instance_assignment -name TH_REQUIREMENT "0 ns" -to ad[45]
	set_instance_assignment -name TCO_REQUIREMENT "6 ns" -to ad[45]
	set_instance_assignment -name TSU_REQUIREMENT "3 ns" -to ad[46]
	set_instance_assignment -name TH_REQUIREMENT "0 ns" -to ad[46]
	set_instance_assignment -name TCO_REQUIREMENT "6 ns" -to ad[46]
	set_instance_assignment -name TSU_REQUIREMENT "3 ns" -to ad[47]
	set_instance_assignment -name TH_REQUIREMENT "0 ns" -to ad[47]
	set_instance_assignment -name TCO_REQUIREMENT "6 ns" -to ad[47]
	set_instance_assignment -name TSU_REQUIREMENT "3 ns" -to ad[48]
	set_instance_assignment -name TH_REQUIREMENT "0 ns" -to ad[48]
	set_instance_assignment -name TCO_REQUIREMENT "6 ns" -to ad[48]
	set_instance_assignment -name TSU_REQUIREMENT "3 ns" -to ad[49]
	set_instance_assignment -name TH_REQUIREMENT "0 ns" -to ad[49]
	set_instance_assignment -name TCO_REQUIREMENT "6 ns" -to ad[49]
	set_instance_assignment -name TSU_REQUIREMENT "3 ns" -to ad[50]
	set_instance_assignment -name TH_REQUIREMENT "0 ns" -to ad[50]
	set_instance_assignment -name TCO_REQUIREMENT "6 ns" -to ad[50]
	set_instance_assignment -name TSU_REQUIREMENT "3 ns" -to ad[51]
	set_instance_assignment -name TH_REQUIREMENT "0 ns" -to ad[51]
	set_instance_assignment -name TCO_REQUIREMENT "6 ns" -to ad[51]
	set_instance_assignment -name TSU_REQUIREMENT "3 ns" -to ad[52]
	set_instance_assignment -name TH_REQUIREMENT "0 ns" -to ad[52]
	set_instance_assignment -name TCO_REQUIREMENT "6 ns" -to ad[52]
	set_instance_assignment -name TSU_REQUIREMENT "3 ns" -to ad[53]
	set_instance_assignment -name TH_REQUIREMENT "0 ns" -to ad[53]
	set_instance_assignment -name TCO_REQUIREMENT "6 ns" -to ad[53]
	set_instance_assignment -name TSU_REQUIREMENT "3 ns" -to ad[54]
	set_instance_assignment -name TH_REQUIREMENT "0 ns" -to ad[54]
	set_instance_assignment -name TCO_REQUIREMENT "6 ns" -to ad[54]
	set_instance_assignment -name TSU_REQUIREMENT "3 ns" -to ad[55]
	set_instance_assignment -name TH_REQUIREMENT "0 ns" -to ad[55]
	set_instance_assignment -name TCO_REQUIREMENT "6 ns" -to ad[55]
	set_instance_assignment -name TSU_REQUIREMENT "3 ns" -to ad[56]
	set_instance_assignment -name TH_REQUIREMENT "0 ns" -to ad[56]
	set_instance_assignment -name TCO_REQUIREMENT "6 ns" -to ad[56]
	set_instance_assignment -name TSU_REQUIREMENT "3 ns" -to ad[57]
	set_instance_assignment -name TH_REQUIREMENT "0 ns" -to ad[57]
	set_instance_assignment -name TCO_REQUIREMENT "6 ns" -to ad[57]
	set_instance_assignment -name TSU_REQUIREMENT "3 ns" -to ad[58]
	set_instance_assignment -name TH_REQUIREMENT "0 ns" -to ad[58]
	set_instance_assignment -name TCO_REQUIREMENT "6 ns" -to ad[58]
	set_instance_assignment -name TSU_REQUIREMENT "3 ns" -to ad[59]
	set_instance_assignment -name TH_REQUIREMENT "0 ns" -to ad[59]
	set_instance_assignment -name TCO_REQUIREMENT "6 ns" -to ad[59]
	set_instance_assignment -name TSU_REQUIREMENT "3 ns" -to ad[60]
	set_instance_assignment -name TH_REQUIREMENT "0 ns" -to ad[60]
	set_instance_assignment -name TCO_REQUIREMENT "6 ns" -to ad[60]
	set_instance_assignment -name TSU_REQUIREMENT "3 ns" -to ad[61]
	set_instance_assignment -name TH_REQUIREMENT "0 ns" -to ad[61]
	set_instance_assignment -name TCO_REQUIREMENT "6 ns" -to ad[61]
	set_instance_assignment -name TSU_REQUIREMENT "3 ns" -to ad[62]
	set_instance_assignment -name TH_REQUIREMENT "0 ns" -to ad[62]
	set_instance_assignment -name TCO_REQUIREMENT "6 ns" -to ad[62]
	set_instance_assignment -name TSU_REQUIREMENT "3 ns" -to ad[63]
	set_instance_assignment -name TH_REQUIREMENT "0 ns" -to ad[63]
	set_instance_assignment -name TCO_REQUIREMENT "6 ns" -to ad[63]
	set_instance_assignment -name TSU_REQUIREMENT "3 ns" -to cben[4]
	set_instance_assignment -name TH_REQUIREMENT "0 ns" -to cben[4]
	set_instance_assignment -name TCO_REQUIREMENT "6 ns" -to cben[4]
	set_instance_assignment -name TSU_REQUIREMENT "3 ns" -to cben[5]
	set_instance_assignment -name TH_REQUIREMENT "0 ns" -to cben[5]
	set_instance_assignment -name TCO_REQUIREMENT "6 ns" -to cben[5]
	set_instance_assignment -name TSU_REQUIREMENT "3 ns" -to cben[6]
	set_instance_assignment -name TH_REQUIREMENT "0 ns" -to cben[6]
	set_instance_assignment -name TCO_REQUIREMENT "6 ns" -to cben[6]
	set_instance_assignment -name TSU_REQUIREMENT "3 ns" -to cben[7]
	set_instance_assignment -name TH_REQUIREMENT "0 ns" -to cben[7]
	set_instance_assignment -name TCO_REQUIREMENT "6 ns" -to cben[7]
	set_instance_assignment -name TSU_REQUIREMENT "3 ns" -to ack64n
	set_instance_assignment -name TH_REQUIREMENT "0 ns" -to ack64n
	set_instance_assignment -name TCO_REQUIREMENT "6 ns" -to ack64n
	set_instance_assignment -name TSU_REQUIREMENT "3 ns" -to par64
	set_instance_assignment -name TH_REQUIREMENT "0 ns" -to par64
	set_instance_assignment -name TCO_REQUIREMENT "6 ns" -to par64
	set_instance_assignment -name TSU_REQUIREMENT "3 ns" -to req64n
	set_instance_assignment -name TH_REQUIREMENT "0 ns" -to req64n
	set_instance_assignment -name TCO_REQUIREMENT "6 ns" -to req64n
	set_instance_assignment -name TCO_REQUIREMENT "6 ns" -to reqn
	set_instance_assignment -name TH_REQUIREMENT "0 ns" -to gntn
	set_instance_assignment -name TSU_REQUIREMENT "5 ns" -to gntn
#	set_instance_assignment -name TCO_REQUIREMENT "14 ns" -from "pci_top:pci_mt64|pci_mt64:pci_mt64_inst|pcimt64_t:trg|adoe" -to ad[0]
#	set_instance_assignment -name TCO_REQUIREMENT "14 ns" -from "pci_top:pci_mt64|pci_mt64:pci_mt64_inst|pcimt64_t:trg|adoe" -to ad[1]
#	set_instance_assignment -name TCO_REQUIREMENT "14 ns" -from "pci_top:pci_mt64|pci_mt64:pci_mt64_inst|pcimt64_t:trg|adoe" -to ad[2]
#	set_instance_assignment -name TCO_REQUIREMENT "14 ns" -from "pci_top:pci_mt64|pci_mt64:pci_mt64_inst|pcimt64_t:trg|adoe" -to ad[3]
#	set_instance_assignment -name TCO_REQUIREMENT "14 ns" -from "pci_top:pci_mt64|pci_mt64:pci_mt64_inst|pcimt64_t:trg|adoe" -to ad[4]
#	set_instance_assignment -name TCO_REQUIREMENT "14 ns" -from "pci_top:pci_mt64|pci_mt64:pci_mt64_inst|pcimt64_t:trg|adoe" -to ad[5]
#	set_instance_assignment -name TCO_REQUIREMENT "14 ns" -from "pci_top:pci_mt64|pci_mt64:pci_mt64_inst|pcimt64_t:trg|adoe" -to ad[6]
#	set_instance_assignment -name TCO_REQUIREMENT "14 ns" -from "pci_top:pci_mt64|pci_mt64:pci_mt64_inst|pcimt64_t:trg|adoe" -to ad[7]
#	set_instance_assignment -name TCO_REQUIREMENT "14 ns" -from "pci_top:pci_mt64|pci_mt64:pci_mt64_inst|pcimt64_t:trg|adoe" -to ad[8]
#	set_instance_assignment -name TCO_REQUIREMENT "14 ns" -from "pci_top:pci_mt64|pci_mt64:pci_mt64_inst|pcimt64_t:trg|adoe" -to ad[9]
#	set_instance_assignment -name TCO_REQUIREMENT "14 ns" -from "pci_top:pci_mt64|pci_mt64:pci_mt64_inst|pcimt64_t:trg|adoe" -to ad[10]
#	set_instance_assignment -name TCO_REQUIREMENT "14 ns" -from "pci_top:pci_mt64|pci_mt64:pci_mt64_inst|pcimt64_t:trg|adoe" -to ad[11]
#	set_instance_assignment -name TCO_REQUIREMENT "14 ns" -from "pci_top:pci_mt64|pci_mt64:pci_mt64_inst|pcimt64_t:trg|adoe" -to ad[12]
#	set_instance_assignment -name TCO_REQUIREMENT "14 ns" -from "pci_top:pci_mt64|pci_mt64:pci_mt64_inst|pcimt64_t:trg|adoe" -to ad[13]
#	set_instance_assignment -name TCO_REQUIREMENT "14 ns" -from "pci_top:pci_mt64|pci_mt64:pci_mt64_inst|pcimt64_t:trg|adoe" -to ad[14]
#	set_instance_assignment -name TCO_REQUIREMENT "14 ns" -from "pci_top:pci_mt64|pci_mt64:pci_mt64_inst|pcimt64_t:trg|adoe" -to ad[15]
#	set_instance_assignment -name TCO_REQUIREMENT "14 ns" -from "pci_top:pci_mt64|pci_mt64:pci_mt64_inst|pcimt64_t:trg|adoe" -to ad[16]
#	set_instance_assignment -name TCO_REQUIREMENT "14 ns" -from "pci_top:pci_mt64|pci_mt64:pci_mt64_inst|pcimt64_t:trg|adoe" -to ad[17]
#	set_instance_assignment -name TCO_REQUIREMENT "14 ns" -from "pci_top:pci_mt64|pci_mt64:pci_mt64_inst|pcimt64_t:trg|adoe" -to ad[18]
#	set_instance_assignment -name TCO_REQUIREMENT "14 ns" -from "pci_top:pci_mt64|pci_mt64:pci_mt64_inst|pcimt64_t:trg|adoe" -to ad[19]
#	set_instance_assignment -name TCO_REQUIREMENT "14 ns" -from "pci_top:pci_mt64|pci_mt64:pci_mt64_inst|pcimt64_t:trg|adoe" -to ad[20]
#	set_instance_assignment -name TCO_REQUIREMENT "14 ns" -from "pci_top:pci_mt64|pci_mt64:pci_mt64_inst|pcimt64_t:trg|adoe" -to ad[21]
#	set_instance_assignment -name TCO_REQUIREMENT "14 ns" -from "pci_top:pci_mt64|pci_mt64:pci_mt64_inst|pcimt64_t:trg|adoe" -to ad[22]
#	set_instance_assignment -name TCO_REQUIREMENT "14 ns" -from "pci_top:pci_mt64|pci_mt64:pci_mt64_inst|pcimt64_t:trg|adoe" -to ad[23]
#	set_instance_assignment -name TCO_REQUIREMENT "14 ns" -from "pci_top:pci_mt64|pci_mt64:pci_mt64_inst|pcimt64_t:trg|adoe" -to ad[24]
#	set_instance_assignment -name TCO_REQUIREMENT "14 ns" -from "pci_top:pci_mt64|pci_mt64:pci_mt64_inst|pcimt64_t:trg|adoe" -to ad[25]
#	set_instance_assignment -name TCO_REQUIREMENT "14 ns" -from "pci_top:pci_mt64|pci_mt64:pci_mt64_inst|pcimt64_t:trg|adoe" -to ad[26]
#	set_instance_assignment -name TCO_REQUIREMENT "14 ns" -from "pci_top:pci_mt64|pci_mt64:pci_mt64_inst|pcimt64_t:trg|adoe" -to ad[27]
#	set_instance_assignment -name TCO_REQUIREMENT "14 ns" -from "pci_top:pci_mt64|pci_mt64:pci_mt64_inst|pcimt64_t:trg|adoe" -to ad[28]
#	set_instance_assignment -name TCO_REQUIREMENT "14 ns" -from "pci_top:pci_mt64|pci_mt64:pci_mt64_inst|pcimt64_t:trg|adoe" -to ad[29]
#	set_instance_assignment -name TCO_REQUIREMENT "14 ns" -from "pci_top:pci_mt64|pci_mt64:pci_mt64_inst|pcimt64_t:trg|adoe" -to ad[30]
#	set_instance_assignment -name TCO_REQUIREMENT "14 ns" -from "pci_top:pci_mt64|pci_mt64:pci_mt64_inst|pcimt64_t:trg|adoe" -to ad[31]
#	set_instance_assignment -name TCO_REQUIREMENT "14 ns" -from "pci_top:pci_mt64|pci_mt64:pci_mt64_inst|par_oeR" -to par
#	set_instance_assignment -name TCO_REQUIREMENT "14 ns" -from "pci_top:pci_mt64|pci_mt64:pci_mt64_inst|pcimt64_t:trg|targ_oeR_reg" -to devseln
#	set_instance_assignment -name TCO_REQUIREMENT "14 ns" -from "pci_top:pci_mt64|pci_mt64:pci_mt64_inst|pcimt64_t:trg|targ_oeR_reg" -to stopn
#	set_instance_assignment -name TCO_REQUIREMENT "14 ns" -from "pci_top:pci_mt64|pci_mt64:pci_mt64_inst|pcimt64_t:trg|targ_oeR_reg" -to trdyn
#	set_instance_assignment -name TCO_REQUIREMENT "14 ns" -from "pci_top:pci_mt64|pci_mt64:pci_mt64_inst|perr_oe_r" -to perrn
#	set_instance_assignment -name TCO_REQUIREMENT "14 ns" -from "pci_top:pci_mt64|pci_mt64:pci_mt64_inst|par_oeR" -to par64
#	set_instance_assignment -name TCO_REQUIREMENT "14 ns" -from "pci_top:pci_mt64|pci_mt64:pci_mt64_inst|pcimt64_t:trg|targ_oeR_reg" -to ack64n
#	set_instance_assignment -name TCO_REQUIREMENT "14 ns" -from "pci_top:pci_mt64|pci_mt64:pci_mt64_inst|pcimt64_t:trg|adoe" -to ad[32]
#	set_instance_assignment -name TCO_REQUIREMENT "14 ns" -from "pci_top:pci_mt64|pci_mt64:pci_mt64_inst|pcimt64_t:trg|adoe" -to ad[33]
#	set_instance_assignment -name TCO_REQUIREMENT "14 ns" -from "pci_top:pci_mt64|pci_mt64:pci_mt64_inst|pcimt64_t:trg|adoe" -to ad[34]
#	set_instance_assignment -name TCO_REQUIREMENT "14 ns" -from "pci_top:pci_mt64|pci_mt64:pci_mt64_inst|pcimt64_t:trg|adoe" -to ad[35]
#	set_instance_assignment -name TCO_REQUIREMENT "14 ns" -from "pci_top:pci_mt64|pci_mt64:pci_mt64_inst|pcimt64_t:trg|adoe" -to ad[36]
#	set_instance_assignment -name TCO_REQUIREMENT "14 ns" -from "pci_top:pci_mt64|pci_mt64:pci_mt64_inst|pcimt64_t:trg|adoe" -to ad[37]
#	set_instance_assignment -name TCO_REQUIREMENT "14 ns" -from "pci_top:pci_mt64|pci_mt64:pci_mt64_inst|pcimt64_t:trg|adoe" -to ad[38]
#	set_instance_assignment -name TCO_REQUIREMENT "14 ns" -from "pci_top:pci_mt64|pci_mt64:pci_mt64_inst|pcimt64_t:trg|adoe" -to ad[39]
#	set_instance_assignment -name TCO_REQUIREMENT "14 ns" -from "pci_top:pci_mt64|pci_mt64:pci_mt64_inst|pcimt64_t:trg|adoe" -to ad[40]
#	set_instance_assignment -name TCO_REQUIREMENT "14 ns" -from "pci_top:pci_mt64|pci_mt64:pci_mt64_inst|pcimt64_t:trg|adoe" -to ad[41]
#	set_instance_assignment -name TCO_REQUIREMENT "14 ns" -from "pci_top:pci_mt64|pci_mt64:pci_mt64_inst|pcimt64_t:trg|adoe" -to ad[42]
#	set_instance_assignment -name TCO_REQUIREMENT "14 ns" -from "pci_top:pci_mt64|pci_mt64:pci_mt64_inst|pcimt64_t:trg|adoe" -to ad[43]
#	set_instance_assignment -name TCO_REQUIREMENT "14 ns" -from "pci_top:pci_mt64|pci_mt64:pci_mt64_inst|pcimt64_t:trg|adoe" -to ad[44]
#	set_instance_assignment -name TCO_REQUIREMENT "14 ns" -from "pci_top:pci_mt64|pci_mt64:pci_mt64_inst|pcimt64_t:trg|adoe" -to ad[45]
#	set_instance_assignment -name TCO_REQUIREMENT "14 ns" -from "pci_top:pci_mt64|pci_mt64:pci_mt64_inst|pcimt64_t:trg|adoe" -to ad[46]
#	set_instance_assignment -name TCO_REQUIREMENT "14 ns" -from "pci_top:pci_mt64|pci_mt64:pci_mt64_inst|pcimt64_t:trg|adoe" -to ad[47]
#	set_instance_assignment -name TCO_REQUIREMENT "14 ns" -from "pci_top:pci_mt64|pci_mt64:pci_mt64_inst|pcimt64_t:trg|adoe" -to ad[48]
#	set_instance_assignment -name TCO_REQUIREMENT "14 ns" -from "pci_top:pci_mt64|pci_mt64:pci_mt64_inst|pcimt64_t:trg|adoe" -to ad[49]
#	set_instance_assignment -name TCO_REQUIREMENT "14 ns" -from "pci_top:pci_mt64|pci_mt64:pci_mt64_inst|pcimt64_t:trg|adoe" -to ad[50]
#	set_instance_assignment -name TCO_REQUIREMENT "14 ns" -from "pci_top:pci_mt64|pci_mt64:pci_mt64_inst|pcimt64_t:trg|adoe" -to ad[51]
#	set_instance_assignment -name TCO_REQUIREMENT "14 ns" -from "pci_top:pci_mt64|pci_mt64:pci_mt64_inst|pcimt64_t:trg|adoe" -to ad[52]
#	set_instance_assignment -name TCO_REQUIREMENT "14 ns" -from "pci_top:pci_mt64|pci_mt64:pci_mt64_inst|pcimt64_t:trg|adoe" -to ad[53]
#	set_instance_assignment -name TCO_REQUIREMENT "14 ns" -from "pci_top:pci_mt64|pci_mt64:pci_mt64_inst|pcimt64_t:trg|adoe" -to ad[54]
#	set_instance_assignment -name TCO_REQUIREMENT "14 ns" -from "pci_top:pci_mt64|pci_mt64:pci_mt64_inst|pcimt64_t:trg|adoe" -to ad[55]
#	set_instance_assignment -name TCO_REQUIREMENT "14 ns" -from "pci_top:pci_mt64|pci_mt64:pci_mt64_inst|pcimt64_t:trg|adoe" -to ad[56]
#	set_instance_assignment -name TCO_REQUIREMENT "14 ns" -from "pci_top:pci_mt64|pci_mt64:pci_mt64_inst|pcimt64_t:trg|adoe" -to ad[57]
#	set_instance_assignment -name TCO_REQUIREMENT "14 ns" -from "pci_top:pci_mt64|pci_mt64:pci_mt64_inst|pcimt64_t:trg|adoe" -to ad[58]
#	set_instance_assignment -name TCO_REQUIREMENT "14 ns" -from "pci_top:pci_mt64|pci_mt64:pci_mt64_inst|pcimt64_t:trg|adoe" -to ad[59]
#	set_instance_assignment -name TCO_REQUIREMENT "14 ns" -from "pci_top:pci_mt64|pci_mt64:pci_mt64_inst|pcimt64_t:trg|adoe" -to ad[60]
#	set_instance_assignment -name TCO_REQUIREMENT "14 ns" -from "pci_top:pci_mt64|pci_mt64:pci_mt64_inst|pcimt64_t:trg|adoe" -to ad[61]
#	set_instance_assignment -name TCO_REQUIREMENT "14 ns" -from "pci_top:pci_mt64|pci_mt64:pci_mt64_inst|pcimt64_t:trg|adoe" -to ad[62]
#	set_instance_assignment -name TCO_REQUIREMENT "14 ns" -from "pci_top:pci_mt64|pci_mt64:pci_mt64_inst|pcimt64_t:trg|adoe" -to ad[63]
#	set_instance_assignment -name TCO_REQUIREMENT "14 ns" -from "pci_top:pci_mt64|pci_mt64:pci_mt64_inst|pcimt64_m:mstr|ad_oer" -to ad[0]
#	set_instance_assignment -name TCO_REQUIREMENT "14 ns" -from "pci_top:pci_mt64|pci_mt64:pci_mt64_inst|pcimt64_m:mstr|ad_oer" -to ad[1]
#	set_instance_assignment -name TCO_REQUIREMENT "14 ns" -from "pci_top:pci_mt64|pci_mt64:pci_mt64_inst|pcimt64_m:mstr|ad_oer" -to ad[2]
#	set_instance_assignment -name TCO_REQUIREMENT "14 ns" -from "pci_top:pci_mt64|pci_mt64:pci_mt64_inst|pcimt64_m:mstr|ad_oer" -to ad[3]
#	set_instance_assignment -name TCO_REQUIREMENT "14 ns" -from "pci_top:pci_mt64|pci_mt64:pci_mt64_inst|pcimt64_m:mstr|ad_oer" -to ad[4]
#	set_instance_assignment -name TCO_REQUIREMENT "14 ns" -from "pci_top:pci_mt64|pci_mt64:pci_mt64_inst|pcimt64_m:mstr|ad_oer" -to ad[5]
#	set_instance_assignment -name TCO_REQUIREMENT "14 ns" -from "pci_top:pci_mt64|pci_mt64:pci_mt64_inst|pcimt64_m:mstr|ad_oer" -to ad[6]
#	set_instance_assignment -name TCO_REQUIREMENT "14 ns" -from "pci_top:pci_mt64|pci_mt64:pci_mt64_inst|pcimt64_m:mstr|ad_oer" -to ad[7]
#	set_instance_assignment -name TCO_REQUIREMENT "14 ns" -from "pci_top:pci_mt64|pci_mt64:pci_mt64_inst|pcimt64_m:mstr|ad_oer" -to ad[8]
#	set_instance_assignment -name TCO_REQUIREMENT "14 ns" -from "pci_top:pci_mt64|pci_mt64:pci_mt64_inst|pcimt64_m:mstr|ad_oer" -to ad[9]
#	set_instance_assignment -name TCO_REQUIREMENT "14 ns" -from "pci_top:pci_mt64|pci_mt64:pci_mt64_inst|pcimt64_m:mstr|ad_oer" -to ad[10]
#	set_instance_assignment -name TCO_REQUIREMENT "14 ns" -from "pci_top:pci_mt64|pci_mt64:pci_mt64_inst|pcimt64_m:mstr|ad_oer" -to ad[11]
#	set_instance_assignment -name TCO_REQUIREMENT "14 ns" -from "pci_top:pci_mt64|pci_mt64:pci_mt64_inst|pcimt64_m:mstr|ad_oer" -to ad[12]
#	set_instance_assignment -name TCO_REQUIREMENT "14 ns" -from "pci_top:pci_mt64|pci_mt64:pci_mt64_inst|pcimt64_m:mstr|ad_oer" -to ad[13]
#	set_instance_assignment -name TCO_REQUIREMENT "14 ns" -from "pci_top:pci_mt64|pci_mt64:pci_mt64_inst|pcimt64_m:mstr|ad_oer" -to ad[14]
#	set_instance_assignment -name TCO_REQUIREMENT "14 ns" -from "pci_top:pci_mt64|pci_mt64:pci_mt64_inst|pcimt64_m:mstr|ad_oer" -to ad[15]
#	set_instance_assignment -name TCO_REQUIREMENT "14 ns" -from "pci_top:pci_mt64|pci_mt64:pci_mt64_inst|pcimt64_m:mstr|ad_oer" -to ad[16]
#	set_instance_assignment -name TCO_REQUIREMENT "14 ns" -from "pci_top:pci_mt64|pci_mt64:pci_mt64_inst|pcimt64_m:mstr|ad_oer" -to ad[17]
#	set_instance_assignment -name TCO_REQUIREMENT "14 ns" -from "pci_top:pci_mt64|pci_mt64:pci_mt64_inst|pcimt64_m:mstr|ad_oer" -to ad[18]
#	set_instance_assignment -name TCO_REQUIREMENT "14 ns" -from "pci_top:pci_mt64|pci_mt64:pci_mt64_inst|pcimt64_m:mstr|ad_oer" -to ad[19]
#	set_instance_assignment -name TCO_REQUIREMENT "14 ns" -from "pci_top:pci_mt64|pci_mt64:pci_mt64_inst|pcimt64_m:mstr|ad_oer" -to ad[20]
#	set_instance_assignment -name TCO_REQUIREMENT "14 ns" -from "pci_top:pci_mt64|pci_mt64:pci_mt64_inst|pcimt64_m:mstr|ad_oer" -to ad[21]
#	set_instance_assignment -name TCO_REQUIREMENT "14 ns" -from "pci_top:pci_mt64|pci_mt64:pci_mt64_inst|pcimt64_m:mstr|ad_oer" -to ad[22]
#	set_instance_assignment -name TCO_REQUIREMENT "14 ns" -from "pci_top:pci_mt64|pci_mt64:pci_mt64_inst|pcimt64_m:mstr|ad_oer" -to ad[23]
#	set_instance_assignment -name TCO_REQUIREMENT "14 ns" -from "pci_top:pci_mt64|pci_mt64:pci_mt64_inst|pcimt64_m:mstr|ad_oer" -to ad[24]
#	set_instance_assignment -name TCO_REQUIREMENT "14 ns" -from "pci_top:pci_mt64|pci_mt64:pci_mt64_inst|pcimt64_m:mstr|ad_oer" -to ad[25]
#	set_instance_assignment -name TCO_REQUIREMENT "14 ns" -from "pci_top:pci_mt64|pci_mt64:pci_mt64_inst|pcimt64_m:mstr|ad_oer" -to ad[26]
#	set_instance_assignment -name TCO_REQUIREMENT "14 ns" -from "pci_top:pci_mt64|pci_mt64:pci_mt64_inst|pcimt64_m:mstr|ad_oer" -to ad[27]
#	set_instance_assignment -name TCO_REQUIREMENT "14 ns" -from "pci_top:pci_mt64|pci_mt64:pci_mt64_inst|pcimt64_m:mstr|ad_oer" -to ad[28]
#	set_instance_assignment -name TCO_REQUIREMENT "14 ns" -from "pci_top:pci_mt64|pci_mt64:pci_mt64_inst|pcimt64_m:mstr|ad_oer" -to ad[29]
#	set_instance_assignment -name TCO_REQUIREMENT "14 ns" -from "pci_top:pci_mt64|pci_mt64:pci_mt64_inst|pcimt64_m:mstr|ad_oer" -to ad[30]
#	set_instance_assignment -name TCO_REQUIREMENT "14 ns" -from "pci_top:pci_mt64|pci_mt64:pci_mt64_inst|pcimt64_m:mstr|ad_oer" -to ad[31]
#	set_instance_assignment -name TCO_REQUIREMENT "14 ns" -from "pci_top:pci_mt64|pci_mt64:pci_mt64_inst|pcimt64_m:mstr|cbe_oer_not" -to cben[0]
#	set_instance_assignment -name TCO_REQUIREMENT "14 ns" -from "pci_top:pci_mt64|pci_mt64:pci_mt64_inst|pcimt64_m:mstr|cbe_oer_not" -to cben[1]
#	set_instance_assignment -name TCO_REQUIREMENT "14 ns" -from "pci_top:pci_mt64|pci_mt64:pci_mt64_inst|pcimt64_m:mstr|cbe_oer_not" -to cben[2]
#	set_instance_assignment -name TCO_REQUIREMENT "14 ns" -from "pci_top:pci_mt64|pci_mt64:pci_mt64_inst|pcimt64_m:mstr|cbe_oer_not" -to cben[3]
#	set_instance_assignment -name TCO_REQUIREMENT "14 ns" -from "pci_top:pci_mt64|pci_mt64:pci_mt64_inst|pcimt64_m:mstr|cbe_oer_not" -to framen
#	set_instance_assignment -name TCO_REQUIREMENT "14 ns" -from "pci_top:pci_mt64|pci_mt64:pci_mt64_inst|pcimt64_m:mstr|irdy_oer" -to irdyn
#	set_instance_assignment -name TCO_REQUIREMENT "14 ns" -from "pci_top:pci_mt64|pci_mt64:pci_mt64_inst|pcimt64_m:mstr|ad_oer" -to ad[32]
#	set_instance_assignment -name TCO_REQUIREMENT "14 ns" -from "pci_top:pci_mt64|pci_mt64:pci_mt64_inst|pcimt64_m:mstr|ad_oer" -to ad[33]
#	set_instance_assignment -name TCO_REQUIREMENT "14 ns" -from "pci_top:pci_mt64|pci_mt64:pci_mt64_inst|pcimt64_m:mstr|ad_oer" -to ad[34]
#	set_instance_assignment -name TCO_REQUIREMENT "14 ns" -from "pci_top:pci_mt64|pci_mt64:pci_mt64_inst|pcimt64_m:mstr|ad_oer" -to ad[35]
#	set_instance_assignment -name TCO_REQUIREMENT "14 ns" -from "pci_top:pci_mt64|pci_mt64:pci_mt64_inst|pcimt64_m:mstr|ad_oer" -to ad[36]
#	set_instance_assignment -name TCO_REQUIREMENT "14 ns" -from "pci_top:pci_mt64|pci_mt64:pci_mt64_inst|pcimt64_m:mstr|ad_oer" -to ad[37]
#	set_instance_assignment -name TCO_REQUIREMENT "14 ns" -from "pci_top:pci_mt64|pci_mt64:pci_mt64_inst|pcimt64_m:mstr|ad_oer" -to ad[38]
#	set_instance_assignment -name TCO_REQUIREMENT "14 ns" -from "pci_top:pci_mt64|pci_mt64:pci_mt64_inst|pcimt64_m:mstr|ad_oer" -to ad[39]
#	set_instance_assignment -name TCO_REQUIREMENT "14 ns" -from "pci_top:pci_mt64|pci_mt64:pci_mt64_inst|pcimt64_m:mstr|ad_oer" -to ad[40]
#	set_instance_assignment -name TCO_REQUIREMENT "14 ns" -from "pci_top:pci_mt64|pci_mt64:pci_mt64_inst|pcimt64_m:mstr|ad_oer" -to ad[41]
#	set_instance_assignment -name TCO_REQUIREMENT "14 ns" -from "pci_top:pci_mt64|pci_mt64:pci_mt64_inst|pcimt64_m:mstr|ad_oer" -to ad[42]
#	set_instance_assignment -name TCO_REQUIREMENT "14 ns" -from "pci_top:pci_mt64|pci_mt64:pci_mt64_inst|pcimt64_m:mstr|ad_oer" -to ad[43]
#	set_instance_assignment -name TCO_REQUIREMENT "14 ns" -from "pci_top:pci_mt64|pci_mt64:pci_mt64_inst|pcimt64_m:mstr|ad_oer" -to ad[44]
#	set_instance_assignment -name TCO_REQUIREMENT "14 ns" -from "pci_top:pci_mt64|pci_mt64:pci_mt64_inst|pcimt64_m:mstr|ad_oer" -to ad[45]
#	set_instance_assignment -name TCO_REQUIREMENT "14 ns" -from "pci_top:pci_mt64|pci_mt64:pci_mt64_inst|pcimt64_m:mstr|ad_oer" -to ad[46]
#	set_instance_assignment -name TCO_REQUIREMENT "14 ns" -from "pci_top:pci_mt64|pci_mt64:pci_mt64_inst|pcimt64_m:mstr|ad_oer" -to ad[47]
#	set_instance_assignment -name TCO_REQUIREMENT "14 ns" -from "pci_top:pci_mt64|pci_mt64:pci_mt64_inst|pcimt64_m:mstr|ad_oer" -to ad[48]
#	set_instance_assignment -name TCO_REQUIREMENT "14 ns" -from "pci_top:pci_mt64|pci_mt64:pci_mt64_inst|pcimt64_m:mstr|ad_oer" -to ad[49]
#	set_instance_assignment -name TCO_REQUIREMENT "14 ns" -from "pci_top:pci_mt64|pci_mt64:pci_mt64_inst|pcimt64_m:mstr|ad_oer" -to ad[50]
#	set_instance_assignment -name TCO_REQUIREMENT "14 ns" -from "pci_top:pci_mt64|pci_mt64:pci_mt64_inst|pcimt64_m:mstr|ad_oer" -to ad[51]
#	set_instance_assignment -name TCO_REQUIREMENT "14 ns" -from "pci_top:pci_mt64|pci_mt64:pci_mt64_inst|pcimt64_m:mstr|ad_oer" -to ad[52]
#	set_instance_assignment -name TCO_REQUIREMENT "14 ns" -from "pci_top:pci_mt64|pci_mt64:pci_mt64_inst|pcimt64_m:mstr|ad_oer" -to ad[53]
#	set_instance_assignment -name TCO_REQUIREMENT "14 ns" -from "pci_top:pci_mt64|pci_mt64:pci_mt64_inst|pcimt64_m:mstr|ad_oer" -to ad[54]
#	set_instance_assignment -name TCO_REQUIREMENT "14 ns" -from "pci_top:pci_mt64|pci_mt64:pci_mt64_inst|pcimt64_m:mstr|ad_oer" -to ad[55]
#	set_instance_assignment -name TCO_REQUIREMENT "14 ns" -from "pci_top:pci_mt64|pci_mt64:pci_mt64_inst|pcimt64_m:mstr|ad_oer" -to ad[56]
#	set_instance_assignment -name TCO_REQUIREMENT "14 ns" -from "pci_top:pci_mt64|pci_mt64:pci_mt64_inst|pcimt64_m:mstr|ad_oer" -to ad[57]
#	set_instance_assignment -name TCO_REQUIREMENT "14 ns" -from "pci_top:pci_mt64|pci_mt64:pci_mt64_inst|pcimt64_m:mstr|ad_oer" -to ad[58]
#	set_instance_assignment -name TCO_REQUIREMENT "14 ns" -from "pci_top:pci_mt64|pci_mt64:pci_mt64_inst|pcimt64_m:mstr|ad_oer" -to ad[59]
#	set_instance_assignment -name TCO_REQUIREMENT "14 ns" -from "pci_top:pci_mt64|pci_mt64:pci_mt64_inst|pcimt64_m:mstr|ad_oer" -to ad[60]
#	set_instance_assignment -name TCO_REQUIREMENT "14 ns" -from "pci_top:pci_mt64|pci_mt64:pci_mt64_inst|pcimt64_m:mstr|ad_oer" -to ad[61]
#	set_instance_assignment -name TCO_REQUIREMENT "14 ns" -from "pci_top:pci_mt64|pci_mt64:pci_mt64_inst|pcimt64_m:mstr|ad_oer" -to ad[62]
#	set_instance_assignment -name TCO_REQUIREMENT "14 ns" -from "pci_top:pci_mt64|pci_mt64:pci_mt64_inst|pcimt64_m:mstr|ad_oer" -to ad[63]
#	set_instance_assignment -name TCO_REQUIREMENT "14 ns" -from "pci_top:pci_mt64|pci_mt64:pci_mt64_inst|pcimt64_m:mstr|cbe_oer_not" -to cben[4]
#	set_instance_assignment -name TCO_REQUIREMENT "14 ns" -from "pci_top:pci_mt64|pci_mt64:pci_mt64_inst|pcimt64_m:mstr|cbe_oer_not" -to cben[5]
#	set_instance_assignment -name TCO_REQUIREMENT "14 ns" -from "pci_top:pci_mt64|pci_mt64:pci_mt64_inst|pcimt64_m:mstr|cbe_oer_not" -to cben[6]
#	set_instance_assignment -name TCO_REQUIREMENT "14 ns" -from "pci_top:pci_mt64|pci_mt64:pci_mt64_inst|pcimt64_m:mstr|cbe_oer_not" -to cben[7]
#	set_instance_assignment -name TCO_REQUIREMENT "14 ns" -from "pci_top:pci_mt64|pci_mt64:pci_mt64_inst|pcimt64_m:mstr|cbe_oer_not" -to req64n
	set_instance_assignment -name TCO_REQUIREMENT "6 ns" -to clk_to_sdram
	set_instance_assignment -name TCO_REQUIREMENT "6 ns" -to clk_to_sdram_n
#	set_instance_assignment -name CUT ON -from ddr_dqs[0] -to *
#	set_instance_assignment -name CUT ON -from ddr_dqs[1] -to *
#	set_instance_assignment -name CUT ON -from ddr_dqs[2] -to *
#	set_instance_assignment -name CUT ON -from ddr_dqs[3] -to *
#	set_instance_assignment -name DQS_FREQUENCY "167 MHz" -to ddr_dqs
#	set_instance_assignment -name DQS_DELAY "1116 ps" -to ddr_dqs
#	set_instance_assignment -name ADV_NETLIST_OPT_ALLOWED "NEVER ALLOW" -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:0:g_ddr_io"
#	set_instance_assignment -name REMOVE_DUPLICATE_REGISTERS OFF -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:0:g_ddr_io"
#	set_instance_assignment -name ADV_NETLIST_OPT_ALLOWED "NEVER ALLOW" -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:1:g_ddr_io"
#	set_instance_assignment -name REMOVE_DUPLICATE_REGISTERS OFF -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:1:g_ddr_io"
#	set_instance_assignment -name ADV_NETLIST_OPT_ALLOWED "NEVER ALLOW" -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:2:g_ddr_io"
#	set_instance_assignment -name REMOVE_DUPLICATE_REGISTERS OFF -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:2:g_ddr_io"
#	set_instance_assignment -name ADV_NETLIST_OPT_ALLOWED "NEVER ALLOW" -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:3:g_ddr_io"
#	set_instance_assignment -name REMOVE_DUPLICATE_REGISTERS OFF -to "ddr_top:ddr_top_inst|ddr_top_auk_ddr_sdram:ddr_top_auk_ddr_sdram_inst|ddr_top_auk_ddr_datapath:ddr_io|ddr_top_auk_ddr_dqs_group:\\g_datapath:3:g_ddr_io"
#	set_instance_assignment -name IGNORE_LCELL_BUFFERS OFF -to "pci_top:pci_mt64|pci_mt64:pci_mt64_inst"
#	set_instance_assignment -name REMOVE_DUPLICATE_REGISTERS OFF -to "pci_top:pci_mt64|pci_mt64:pci_mt64_inst"
#	set_instance_assignment -name REMOVE_DUPLICATE_LOGIC OFF -to "pci_top:pci_mt64|pci_mt64:pci_mt64_inst"
	set_instance_assignment -name OUTPUT_PIN_LOAD 4 -to ddr_cke
	set_instance_assignment -name OUTPUT_PIN_LOAD 4 -to ddr_cs_n
	set_instance_assignment -name OUTPUT_PIN_LOAD 4 -to ddr_odt
	set_instance_assignment -name PCI_IO ON -to clk
	set_instance_assignment -name PCI_IO ON -to rstn
	set_instance_assignment -name PCI_IO ON -to devseln
	set_instance_assignment -name PCI_IO ON -to framen
	set_instance_assignment -name PCI_IO ON -to idsel
	set_instance_assignment -name PCI_IO ON -to intan
	set_instance_assignment -name PCI_IO ON -to irdyn
	set_instance_assignment -name PCI_IO ON -to par
	set_instance_assignment -name PCI_IO ON -to perrn
	set_instance_assignment -name PCI_IO ON -to serrn
	set_instance_assignment -name PCI_IO ON -to stopn
	set_instance_assignment -name PCI_IO ON -to trdyn
	set_instance_assignment -name PCI_IO ON -to ad[0]
	set_instance_assignment -name PCI_IO ON -to ad[1]
	set_instance_assignment -name PCI_IO ON -to ad[2]
	set_instance_assignment -name PCI_IO ON -to ad[3]
	set_instance_assignment -name PCI_IO ON -to ad[4]
	set_instance_assignment -name PCI_IO ON -to ad[5]
	set_instance_assignment -name PCI_IO ON -to ad[6]
	set_instance_assignment -name PCI_IO ON -to ad[7]
	set_instance_assignment -name PCI_IO ON -to ad[8]
	set_instance_assignment -name PCI_IO ON -to ad[9]
	set_instance_assignment -name PCI_IO ON -to ad[10]
	set_instance_assignment -name PCI_IO ON -to ad[11]
	set_instance_assignment -name PCI_IO ON -to ad[12]
	set_instance_assignment -name PCI_IO ON -to ad[13]
	set_instance_assignment -name PCI_IO ON -to ad[14]
	set_instance_assignment -name PCI_IO ON -to ad[15]
	set_instance_assignment -name PCI_IO ON -to ad[16]
	set_instance_assignment -name PCI_IO ON -to ad[17]
	set_instance_assignment -name PCI_IO ON -to ad[18]
	set_instance_assignment -name PCI_IO ON -to ad[19]
	set_instance_assignment -name PCI_IO ON -to ad[20]
	set_instance_assignment -name PCI_IO ON -to ad[21]
	set_instance_assignment -name PCI_IO ON -to ad[22]
	set_instance_assignment -name PCI_IO ON -to ad[23]
	set_instance_assignment -name PCI_IO ON -to ad[24]
	set_instance_assignment -name PCI_IO ON -to ad[25]
	set_instance_assignment -name PCI_IO ON -to ad[26]
	set_instance_assignment -name PCI_IO ON -to ad[27]
	set_instance_assignment -name PCI_IO ON -to ad[28]
	set_instance_assignment -name PCI_IO ON -to ad[29]
	set_instance_assignment -name PCI_IO ON -to ad[30]
	set_instance_assignment -name PCI_IO ON -to ad[31]
	set_instance_assignment -name PCI_IO ON -to cben[0]
	set_instance_assignment -name PCI_IO ON -to cben[1]
	set_instance_assignment -name PCI_IO ON -to cben[2]
	set_instance_assignment -name PCI_IO ON -to cben[3]
	set_instance_assignment -name PCI_IO ON -to ad[32]
	set_instance_assignment -name PCI_IO ON -to ad[33]
	set_instance_assignment -name PCI_IO ON -to ad[34]
	set_instance_assignment -name PCI_IO ON -to ad[35]
	set_instance_assignment -name PCI_IO ON -to ad[36]
	set_instance_assignment -name PCI_IO ON -to ad[37]
	set_instance_assignment -name PCI_IO ON -to ad[38]
	set_instance_assignment -name PCI_IO ON -to ad[39]
	set_instance_assignment -name PCI_IO ON -to ad[40]
	set_instance_assignment -name PCI_IO ON -to ad[41]
	set_instance_assignment -name PCI_IO ON -to ad[42]
	set_instance_assignment -name PCI_IO ON -to ad[43]
	set_instance_assignment -name PCI_IO ON -to ad[44]
	set_instance_assignment -name PCI_IO ON -to ad[45]
	set_instance_assignment -name PCI_IO ON -to ad[46]
	set_instance_assignment -name PCI_IO ON -to ad[47]
	set_instance_assignment -name PCI_IO ON -to ad[48]
	set_instance_assignment -name PCI_IO ON -to ad[49]
	set_instance_assignment -name PCI_IO ON -to ad[50]
	set_instance_assignment -name PCI_IO ON -to ad[51]
	set_instance_assignment -name PCI_IO ON -to ad[52]
	set_instance_assignment -name PCI_IO ON -to ad[53]
	set_instance_assignment -name PCI_IO ON -to ad[54]
	set_instance_assignment -name PCI_IO ON -to ad[55]
	set_instance_assignment -name PCI_IO ON -to ad[56]
	set_instance_assignment -name PCI_IO ON -to ad[57]
	set_instance_assignment -name PCI_IO ON -to ad[58]
	set_instance_assignment -name PCI_IO ON -to ad[59]
	set_instance_assignment -name PCI_IO ON -to ad[60]
	set_instance_assignment -name PCI_IO ON -to ad[61]
	set_instance_assignment -name PCI_IO ON -to ad[62]
	set_instance_assignment -name PCI_IO ON -to ad[63]
	set_instance_assignment -name PCI_IO ON -to cben[4]
	set_instance_assignment -name PCI_IO ON -to cben[5]
	set_instance_assignment -name PCI_IO ON -to cben[6]
	set_instance_assignment -name PCI_IO ON -to cben[7]
	set_instance_assignment -name PCI_IO ON -to ack64n
	set_instance_assignment -name PCI_IO ON -to par64
	set_instance_assignment -name PCI_IO ON -to req64n
	set_instance_assignment -name PCI_IO ON -to reqn
	set_instance_assignment -name PCI_IO ON -to gntn
	set_instance_assignment -name GLOBAL_SIGNAL ON -to rstn
	set_instance_assignment -name GLOBAL_SIGNAL ON -to clk
	set_instance_assignment -name GLOBAL_SIGNAL ON -to irdyn
	set_instance_assignment -name GLOBAL_SIGNAL ON -to trdyn
	set_instance_assignment -name DUAL_PURPOSE_CLOCK_PIN_DELAY 10 -to clk
	set_instance_assignment -name OUTPUT_PIN_LOAD 10 -to clk
	set_instance_assignment -name OUTPUT_PIN_LOAD 10 -to rstn
	set_instance_assignment -name OUTPUT_PIN_LOAD 10 -to devseln
	set_instance_assignment -name OUTPUT_PIN_LOAD 10 -to framen
	set_instance_assignment -name OUTPUT_PIN_LOAD 10 -to idsel
	set_instance_assignment -name OUTPUT_PIN_LOAD 10 -to intan
	set_instance_assignment -name OUTPUT_PIN_LOAD 10 -to irdyn
	set_instance_assignment -name OUTPUT_PIN_LOAD 10 -to par
	set_instance_assignment -name OUTPUT_PIN_LOAD 10 -to perrn
	set_instance_assignment -name OUTPUT_PIN_LOAD 10 -to serrn
	set_instance_assignment -name OUTPUT_PIN_LOAD 10 -to stopn
	set_instance_assignment -name OUTPUT_PIN_LOAD 10 -to trdyn
	set_instance_assignment -name OUTPUT_PIN_LOAD 10 -to ad[0]
	set_instance_assignment -name OUTPUT_PIN_LOAD 10 -to ad[1]
	set_instance_assignment -name OUTPUT_PIN_LOAD 10 -to ad[2]
	set_instance_assignment -name OUTPUT_PIN_LOAD 10 -to ad[3]
	set_instance_assignment -name OUTPUT_PIN_LOAD 10 -to ad[4]
	set_instance_assignment -name OUTPUT_PIN_LOAD 10 -to ad[5]
	set_instance_assignment -name OUTPUT_PIN_LOAD 10 -to ad[6]
	set_instance_assignment -name OUTPUT_PIN_LOAD 10 -to ad[7]
	set_instance_assignment -name OUTPUT_PIN_LOAD 10 -to ad[8]
	set_instance_assignment -name OUTPUT_PIN_LOAD 10 -to ad[9]
	set_instance_assignment -name OUTPUT_PIN_LOAD 10 -to ad[10]
	set_instance_assignment -name OUTPUT_PIN_LOAD 10 -to ad[11]
	set_instance_assignment -name OUTPUT_PIN_LOAD 10 -to ad[12]
	set_instance_assignment -name OUTPUT_PIN_LOAD 10 -to ad[13]
	set_instance_assignment -name OUTPUT_PIN_LOAD 10 -to ad[14]
	set_instance_assignment -name OUTPUT_PIN_LOAD 10 -to ad[15]
	set_instance_assignment -name OUTPUT_PIN_LOAD 10 -to ad[16]
	set_instance_assignment -name OUTPUT_PIN_LOAD 10 -to ad[17]
	set_instance_assignment -name OUTPUT_PIN_LOAD 10 -to ad[18]
	set_instance_assignment -name OUTPUT_PIN_LOAD 10 -to ad[19]
	set_instance_assignment -name OUTPUT_PIN_LOAD 10 -to ad[20]
	set_instance_assignment -name OUTPUT_PIN_LOAD 10 -to ad[21]
	set_instance_assignment -name OUTPUT_PIN_LOAD 10 -to ad[22]
	set_instance_assignment -name OUTPUT_PIN_LOAD 10 -to ad[23]
	set_instance_assignment -name OUTPUT_PIN_LOAD 10 -to ad[24]
	set_instance_assignment -name OUTPUT_PIN_LOAD 10 -to ad[25]
	set_instance_assignment -name OUTPUT_PIN_LOAD 10 -to ad[26]
	set_instance_assignment -name OUTPUT_PIN_LOAD 10 -to ad[27]
	set_instance_assignment -name OUTPUT_PIN_LOAD 10 -to ad[28]
	set_instance_assignment -name OUTPUT_PIN_LOAD 10 -to ad[29]
	set_instance_assignment -name OUTPUT_PIN_LOAD 10 -to ad[30]
	set_instance_assignment -name OUTPUT_PIN_LOAD 10 -to ad[31]
	set_instance_assignment -name OUTPUT_PIN_LOAD 10 -to cben[0]
	set_instance_assignment -name OUTPUT_PIN_LOAD 10 -to cben[1]
	set_instance_assignment -name OUTPUT_PIN_LOAD 10 -to cben[2]
	set_instance_assignment -name OUTPUT_PIN_LOAD 10 -to cben[3]
	set_instance_assignment -name OUTPUT_PIN_LOAD 10 -to ad[32]
	set_instance_assignment -name OUTPUT_PIN_LOAD 10 -to ad[33]
	set_instance_assignment -name OUTPUT_PIN_LOAD 10 -to ad[34]
	set_instance_assignment -name OUTPUT_PIN_LOAD 10 -to ad[35]
	set_instance_assignment -name OUTPUT_PIN_LOAD 10 -to ad[36]
	set_instance_assignment -name OUTPUT_PIN_LOAD 10 -to ad[37]
	set_instance_assignment -name OUTPUT_PIN_LOAD 10 -to ad[38]
	set_instance_assignment -name OUTPUT_PIN_LOAD 10 -to ad[39]
	set_instance_assignment -name OUTPUT_PIN_LOAD 10 -to ad[40]
	set_instance_assignment -name OUTPUT_PIN_LOAD 10 -to ad[41]
	set_instance_assignment -name OUTPUT_PIN_LOAD 10 -to ad[42]
	set_instance_assignment -name OUTPUT_PIN_LOAD 10 -to ad[43]
	set_instance_assignment -name OUTPUT_PIN_LOAD 10 -to ad[44]
	set_instance_assignment -name OUTPUT_PIN_LOAD 10 -to ad[45]
	set_instance_assignment -name OUTPUT_PIN_LOAD 10 -to ad[46]
	set_instance_assignment -name OUTPUT_PIN_LOAD 10 -to ad[47]
	set_instance_assignment -name OUTPUT_PIN_LOAD 10 -to ad[48]
	set_instance_assignment -name OUTPUT_PIN_LOAD 10 -to ad[49]
	set_instance_assignment -name OUTPUT_PIN_LOAD 10 -to ad[50]
	set_instance_assignment -name OUTPUT_PIN_LOAD 10 -to ad[51]
	set_instance_assignment -name OUTPUT_PIN_LOAD 10 -to ad[52]
	set_instance_assignment -name OUTPUT_PIN_LOAD 10 -to ad[53]
	set_instance_assignment -name OUTPUT_PIN_LOAD 10 -to ad[54]
	set_instance_assignment -name OUTPUT_PIN_LOAD 10 -to ad[55]
	set_instance_assignment -name OUTPUT_PIN_LOAD 10 -to ad[56]
	set_instance_assignment -name OUTPUT_PIN_LOAD 10 -to ad[57]
	set_instance_assignment -name OUTPUT_PIN_LOAD 10 -to ad[58]
	set_instance_assignment -name OUTPUT_PIN_LOAD 10 -to ad[59]
	set_instance_assignment -name OUTPUT_PIN_LOAD 10 -to ad[60]
	set_instance_assignment -name OUTPUT_PIN_LOAD 10 -to ad[61]
	set_instance_assignment -name OUTPUT_PIN_LOAD 10 -to ad[62]
	set_instance_assignment -name OUTPUT_PIN_LOAD 10 -to ad[63]
	set_instance_assignment -name OUTPUT_PIN_LOAD 10 -to cben[4]
	set_instance_assignment -name OUTPUT_PIN_LOAD 10 -to cben[5]
	set_instance_assignment -name OUTPUT_PIN_LOAD 10 -to cben[6]
	set_instance_assignment -name OUTPUT_PIN_LOAD 10 -to cben[7]
	set_instance_assignment -name OUTPUT_PIN_LOAD 10 -to ack64n
	set_instance_assignment -name OUTPUT_PIN_LOAD 10 -to par64
	set_instance_assignment -name OUTPUT_PIN_LOAD 10 -to req64n
	set_instance_assignment -name OUTPUT_PIN_LOAD 10 -to reqn
	set_instance_assignment -name OUTPUT_PIN_LOAD 10 -to gntn
#	set_instance_assignment -name AUTO_PACKED_REGISTERS_STRATIXII OFF -to "pci_top:pci_mt64|pci_mt64:pci_mt64_inst|low_ad_or_fb"
#	set_instance_assignment -name AUTO_PACKED_REGISTERS_STRATIXII OFF -to "pci_top:pci_mt64|pci_mt64:pci_mt64_inst|high_ad_or_fb"
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 1 -to ddr_dm
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 1 -to ddr_dqs
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 1 -to ddr_dq
	set_instance_assignment -name STRATIX_DECREASE_INPUT_DELAY_TO_INTERNAL_CELLS ON -to ddr_dq
	set_instance_assignment -name OUTPUT_PIN_LOAD 4 -to ddr_dm[0]
	set_instance_assignment -name OUTPUT_PIN_LOAD 4 -to ddr_dm[1]
	set_instance_assignment -name OUTPUT_PIN_LOAD 4 -to ddr_dm[2]
	set_instance_assignment -name OUTPUT_PIN_LOAD 4 -to ddr_dm[3]
	set_instance_assignment -name OUTPUT_PIN_LOAD 4 -to ddr_dq[0]
	set_instance_assignment -name OUTPUT_PIN_LOAD 4 -to ddr_dq[1]
	set_instance_assignment -name OUTPUT_PIN_LOAD 4 -to ddr_dq[2]
	set_instance_assignment -name OUTPUT_PIN_LOAD 4 -to ddr_dq[3]
	set_instance_assignment -name OUTPUT_PIN_LOAD 4 -to ddr_dq[4]
	set_instance_assignment -name OUTPUT_PIN_LOAD 4 -to ddr_dq[5]
	set_instance_assignment -name OUTPUT_PIN_LOAD 4 -to ddr_dq[6]
	set_instance_assignment -name OUTPUT_PIN_LOAD 4 -to ddr_dq[7]
	set_instance_assignment -name OUTPUT_PIN_LOAD 4 -to ddr_dq[8]
	set_instance_assignment -name OUTPUT_PIN_LOAD 4 -to ddr_dq[9]
	set_instance_assignment -name OUTPUT_PIN_LOAD 4 -to ddr_dq[10]
	set_instance_assignment -name OUTPUT_PIN_LOAD 4 -to ddr_dq[11]
	set_instance_assignment -name OUTPUT_PIN_LOAD 4 -to ddr_dq[12]
	set_instance_assignment -name OUTPUT_PIN_LOAD 4 -to ddr_dq[13]
	set_instance_assignment -name OUTPUT_PIN_LOAD 4 -to ddr_dq[14]
	set_instance_assignment -name OUTPUT_PIN_LOAD 4 -to ddr_dq[15]
	set_instance_assignment -name OUTPUT_PIN_LOAD 4 -to ddr_dq[16]
	set_instance_assignment -name OUTPUT_PIN_LOAD 4 -to ddr_dq[17]
	set_instance_assignment -name OUTPUT_PIN_LOAD 4 -to ddr_dq[18]
	set_instance_assignment -name OUTPUT_PIN_LOAD 4 -to ddr_dq[19]
	set_instance_assignment -name OUTPUT_PIN_LOAD 4 -to ddr_dq[20]
	set_instance_assignment -name OUTPUT_PIN_LOAD 4 -to ddr_dq[21]
	set_instance_assignment -name OUTPUT_PIN_LOAD 4 -to ddr_dq[22]
	set_instance_assignment -name OUTPUT_PIN_LOAD 4 -to ddr_dq[23]
	set_instance_assignment -name OUTPUT_PIN_LOAD 4 -to ddr_dq[24]
	set_instance_assignment -name OUTPUT_PIN_LOAD 4 -to ddr_dq[25]
	set_instance_assignment -name OUTPUT_PIN_LOAD 4 -to ddr_dq[26]
	set_instance_assignment -name OUTPUT_PIN_LOAD 4 -to ddr_dq[27]
	set_instance_assignment -name OUTPUT_PIN_LOAD 4 -to ddr_dq[28]
	set_instance_assignment -name OUTPUT_PIN_LOAD 4 -to ddr_dq[29]
	set_instance_assignment -name OUTPUT_PIN_LOAD 4 -to ddr_dq[30]
	set_instance_assignment -name OUTPUT_PIN_LOAD 4 -to ddr_dq[31]
#	set_instance_assignment -name OUTPUT_PIN_LOAD 4 -to ddr_dqs[0]
#	set_instance_assignment -name OUTPUT_PIN_LOAD 4 -to ddr_dqs[1]
#	set_instance_assignment -name OUTPUT_PIN_LOAD 4 -to ddr_dqs[2]
#	set_instance_assignment -name OUTPUT_PIN_LOAD 4 -to ddr_dqs[3]
	set_instance_assignment -name OUTPUT_PIN_LOAD 4 -to ddr_ras_n
	set_instance_assignment -name OUTPUT_PIN_LOAD 4 -to ddr_cas_n
	set_instance_assignment -name OUTPUT_PIN_LOAD 4 -to ddr_we_n
	set_instance_assignment -name OUTPUT_PIN_LOAD 4 -to ddr_a[0]
	set_instance_assignment -name OUTPUT_PIN_LOAD 4 -to ddr_a[1]
	set_instance_assignment -name OUTPUT_PIN_LOAD 4 -to ddr_a[2]
	set_instance_assignment -name OUTPUT_PIN_LOAD 4 -to ddr_a[3]
	set_instance_assignment -name OUTPUT_PIN_LOAD 4 -to ddr_a[4]
	set_instance_assignment -name OUTPUT_PIN_LOAD 4 -to ddr_a[5]
	set_instance_assignment -name OUTPUT_PIN_LOAD 4 -to ddr_a[6]
	set_instance_assignment -name OUTPUT_PIN_LOAD 4 -to ddr_a[7]
	set_instance_assignment -name OUTPUT_PIN_LOAD 4 -to ddr_a[8]
	set_instance_assignment -name OUTPUT_PIN_LOAD 4 -to ddr_a[9]
	set_instance_assignment -name OUTPUT_PIN_LOAD 4 -to ddr_a[10]
	set_instance_assignment -name OUTPUT_PIN_LOAD 4 -to ddr_a[11]
	set_instance_assignment -name OUTPUT_PIN_LOAD 4 -to ddr_a[12]
	set_instance_assignment -name OUTPUT_PIN_LOAD 4 -to ddr_ba[0]
	set_instance_assignment -name OUTPUT_PIN_LOAD 4 -to ddr_ba[1]
	set_instance_assignment -name OUTPUT_PIN_LOAD 2 -to clk_to_sdram[0]
	set_instance_assignment -name OUTPUT_PIN_LOAD 2 -to clk_to_sdram[1]
	set_instance_assignment -name OUTPUT_PIN_LOAD 2 -to clk_to_sdram_n[0]
	set_instance_assignment -name OUTPUT_PIN_LOAD 2 -to clk_to_sdram_n[1]
	set_instance_assignment -name PARTITION_HIERARCHY root_partition -to | -section_id Top

	# Commit assignments
	export_assignments

	# Close project
	if {$need_to_close_project} {
		project_close
	}
}
