# Copyright (C) 2023  Intel Corporation. All rights reserved.
# Your use of Intel Corporation's design tools, logic functions 
# and other software and tools, and any partner logic 
# functions, and any output files from any of the foregoing 
# (including device programming or simulation files), and any 
# associated documentation or information are expressly subject 
# to the terms and conditions of the Intel Program License 
# Subscription Agreement, the Intel Quartus Prime License Agreement,
# the Intel FPGA IP License Agreement, or other applicable license
# agreement, including, without limitation, that your use is for
# the sole purpose of programming logic devices manufactured by
# Intel and sold by Intel or its authorized distributors.  Please
# refer to the applicable agreement for further details, at
# https://fpgasoftware.intel.com/eula.

# Quartus Prime: Generate Tcl File for Project
# File: test0.tcl
# Generated on: Mon Feb 19 14:02:52 2024

# Load Quartus Prime Tcl Project package
package require ::quartus::project

set need_to_close_project 0
set make_assignments 1

# Check that the right project is open
if {[is_project_open]} {
	if {[string compare $quartus(project) "test0"]} {
		puts "Project test0 is not open"
		set make_assignments 0
	}
} else {
	# Only open if not already open
	if {[project_exists test0]} {
		project_open -revision test0 test0
	} else {
		project_new -revision test0 test0
	}
	set need_to_close_project 1
}

# Make assignments
if {$make_assignments} {
	set_global_assignment -name FAMILY "Cyclone V"
	set_global_assignment -name DEVICE 5CSXFC6D6F31C6
	set_global_assignment -name ORIGINAL_QUARTUS_VERSION 23.1STD.0
	set_global_assignment -name PROJECT_CREATION_TIME_DATE "10:58:02  FEBRUARY 17, 2024"
	set_global_assignment -name LAST_QUARTUS_VERSION "23.1std.0 Lite Edition"
	set_global_assignment -name PROJECT_OUTPUT_DIRECTORY output_files
	set_global_assignment -name MIN_CORE_JUNCTION_TEMP 0
	set_global_assignment -name MAX_CORE_JUNCTION_TEMP 85
	set_global_assignment -name ERROR_CHECK_FREQUENCY_DIVISOR 256
	set_global_assignment -name EDA_SIMULATION_TOOL "QuestaSim (SystemVerilog)"
	set_global_assignment -name EDA_TIME_SCALE "1 ns" -section_id eda_simulation
	set_global_assignment -name EDA_OUTPUT_DATA_FORMAT "SYSTEMVERILOG HDL" -section_id eda_simulation
	set_global_assignment -name EDA_BOARD_DESIGN_TIMING_TOOL "Stamp (Timing)"
	set_global_assignment -name EDA_GENERATE_FUNCTIONAL_NETLIST OFF -section_id eda_board_design_timing
	set_global_assignment -name EDA_OUTPUT_DATA_FORMAT STAMP -section_id eda_board_design_timing
	set_global_assignment -name EDA_BOARD_DESIGN_SYMBOL_TOOL "FPGA Xchange (Symbol)"
	set_global_assignment -name EDA_GENERATE_FUNCTIONAL_NETLIST OFF -section_id eda_board_design_symbol
	set_global_assignment -name EDA_OUTPUT_DATA_FORMAT "FPGA XCHANGE" -section_id eda_board_design_symbol
	set_global_assignment -name EDA_BOARD_DESIGN_SIGNAL_INTEGRITY_TOOL "IBIS (Signal Integrity)"
	set_global_assignment -name EDA_GENERATE_FUNCTIONAL_NETLIST OFF -section_id eda_board_design_signal_integrity
	set_global_assignment -name EDA_OUTPUT_DATA_FORMAT IBIS -section_id eda_board_design_signal_integrity
	set_global_assignment -name EDA_BOARD_DESIGN_BOUNDARY_SCAN_TOOL "BSDL (Boundary Scan)"
	set_global_assignment -name EDA_GENERATE_FUNCTIONAL_NETLIST OFF -section_id eda_board_design_boundary_scan
	set_global_assignment -name EDA_OUTPUT_DATA_FORMAT BSDL -section_id eda_board_design_boundary_scan
	set_global_assignment -name BOARD "Cyclone V SoC Development Kit"
	set_global_assignment -name POWER_PRESET_COOLING_SOLUTION "23 MM HEAT SINK WITH 200 LFPM AIRFLOW"
	set_global_assignment -name POWER_BOARD_THERMAL_MODEL "NONE (CONSERVATIVE)"
	set_global_assignment -name PARTITION_NETLIST_TYPE SOURCE -section_id Top
	set_global_assignment -name PARTITION_FITTER_PRESERVATION_LEVEL PLACEMENT_AND_ROUTING -section_id Top
	set_global_assignment -name PARTITION_COLOR 16764057 -section_id Top
	set_global_assignment -name VERILOG_INPUT_VERSION SYSTEMVERILOG_2005
	set_global_assignment -name VERILOG_SHOW_LMF_MAPPING_MESSAGES OFF
	set_global_assignment -name SYSTEMVERILOG_FILE source/test0.sv
	set_global_assignment -name SYSTEMVERILOG_FILE source/synchronizer.sv
	set_global_assignment -name SYSTEMVERILOG_FILE source/ss_display.sv
	set_global_assignment -name SYSTEMVERILOG_FILE source/hex_display.sv
	set_global_assignment -name SYSTEMVERILOG_FILE source/flex_counter.sv
	set_global_assignment -name EDA_DESIGN_ENTRY_SYNTHESIS_TOOL "Precision Synthesis"
	set_global_assignment -name EDA_INPUT_DATA_FORMAT VQM -section_id eda_design_synthesis
	set_global_assignment -name EDA_LMF_FILE mentor.lmf -section_id eda_design_synthesis
	set_global_assignment -name EDA_RUN_TOOL_AUTOMATICALLY OFF -section_id eda_design_synthesis
	set_location_assignment PIN_AC22 -to LEDR[9]
	set_location_assignment PIN_AB22 -to LEDR[8]
	set_location_assignment PIN_AA30 -to SW[9]
	set_location_assignment PIN_AC29 -to SW[8]
	set_location_assignment PIN_AD30 -to SW[7]
	set_location_assignment PIN_AC28 -to SW[6]
	set_location_assignment PIN_V25 -to SW[5]
	set_location_assignment PIN_W25 -to SW[4]
	set_location_assignment PIN_AC30 -to SW[3]
	set_location_assignment PIN_AB28 -to SW[2]
	set_location_assignment PIN_Y27 -to SW[1]
	set_location_assignment PIN_AB30 -to SW[0]
	set_location_assignment PIN_AJ4 -to PB[0]
	set_location_assignment PIN_AA15 -to PB[3]
	set_location_assignment PIN_AA14 -to PB[2]
	set_location_assignment PIN_AK4 -to PB[1]
	set_location_assignment PIN_AA24 -to LEDR[0]
	set_location_assignment PIN_AB23 -to LEDR[1]
	set_location_assignment PIN_AC23 -to LEDR[2]
	set_location_assignment PIN_AD24 -to LEDR[3]
	set_location_assignment PIN_AG25 -to LEDR[4]
	set_location_assignment PIN_AF25 -to LEDR[5]
	set_location_assignment PIN_AE24 -to LEDR[6]
	set_location_assignment PIN_AF24 -to LEDR[7]
	set_location_assignment PIN_W17 -to SS[0][0]
	set_location_assignment PIN_V18 -to SS[0][1]
	set_location_assignment PIN_AG17 -to SS[0][2]
	set_location_assignment PIN_AJ1 -to MSEL[4]
	set_location_assignment PIN_AK3 -to MSEL[3]
	set_location_assignment PIN_Y16 -to MSEL[2]
	set_location_assignment PIN_AK2 -to MSEL[1]
	set_location_assignment PIN_W15 -to MSEL[0]
	set_location_assignment PIN_AH2 -to SS[0]
	set_location_assignment PIN_AH3 -to SS[1]
	set_location_assignment PIN_AH4 -to SS[2]
	set_location_assignment PIN_AH5 -to SS[3]
	set_location_assignment PIN_AG1 -to SS[4]
	set_location_assignment PIN_AG2 -to SS[5]
	set_location_assignment PIN_AG16 -to SS[0][3]
	set_location_assignment PIN_AF14 -to CLK
	set_location_assignment PIN_AH17 -to SS[0][4]
	set_location_assignment PIN_AG18 -to SS[0][5]
	set_location_assignment PIN_AH18 -to SS[0][6]
	set_location_assignment PIN_AF16 -to SS[1][0]
	set_location_assignment PIN_V16 -to SS[1][1]
	set_location_assignment PIN_AE16 -to SS[1][2]
	set_location_assignment PIN_AD17 -to SS[1][3]
	set_location_assignment PIN_AE18 -to SS[1][4]
	set_location_assignment PIN_AE17 -to SS[1][5]
	set_location_assignment PIN_V17 -to SS[1][6]
	set_location_assignment PIN_AA21 -to SS[2][0]
	set_location_assignment PIN_AB17 -to SS[2][1]
	set_location_assignment PIN_AA18 -to SS[2][2]
	set_location_assignment PIN_Y17 -to SS[2][3]
	set_location_assignment PIN_Y18 -to SS[2][4]
	set_location_assignment PIN_AF18 -to SS[2][5]
	set_location_assignment PIN_W16 -to SS[2][6]
	set_location_assignment PIN_Y19 -to SS[3][0]
	set_location_assignment PIN_W19 -to SS[3][1]
	set_location_assignment PIN_AD19 -to SS[3][2]
	set_location_assignment PIN_AA20 -to SS[3][3]
	set_location_assignment PIN_AC20 -to SS[3][4]
	set_location_assignment PIN_AA19 -to SS[3][5]
	set_location_assignment PIN_AD20 -to SS[3][6]
	set_location_assignment PIN_AD21 -to SS[4][0]
	set_location_assignment PIN_AG22 -to SS[4][1]
	set_location_assignment PIN_AE22 -to SS[4][2]
	set_location_assignment PIN_AE23 -to SS[4][3]
	set_location_assignment PIN_AG23 -to SS[4][4]
	set_location_assignment PIN_AF23 -to SS[4][5]
	set_location_assignment PIN_AH22 -to SS[4][6]
	set_location_assignment PIN_AF21 -to SS[5][0]
	set_location_assignment PIN_AG21 -to SS[5][1]
	set_location_assignment PIN_AF20 -to SS[5][2]
	set_location_assignment PIN_AG20 -to SS[5][3]
	set_location_assignment PIN_AE19 -to SS[5][4]
	set_location_assignment PIN_AF19 -to SS[5][5]
	set_location_assignment PIN_AB21 -to SS[5][6]
	set_location_assignment PIN_AA12 -to nRST
	set_location_assignment PIN_AB12 -to SS[5][7]
	set_location_assignment PIN_AC12 -to SS[4][7]
	set_location_assignment PIN_AC9 -to SS[3][7]
	set_location_assignment PIN_AD12 -to SS[2][7]
	set_location_assignment PIN_AD11 -to SS[1][7]
	set_location_assignment PIN_AD10 -to SS[0][7]
	set_instance_assignment -name PARTITION_HIERARCHY root_partition -to | -section_id Top

	# Including default assignments
	set_global_assignment -name REVISION_TYPE BASE -family "Cyclone V"
	set_global_assignment -name TIMING_ANALYZER_MULTICORNER_ANALYSIS ON -family "Cyclone V"
	set_global_assignment -name TIMING_ANALYZER_REPORT_WORST_CASE_TIMING_PATHS OFF -family "Cyclone V"
	set_global_assignment -name TIMING_ANALYZER_CCPP_TRADEOFF_TOLERANCE 0 -family "Cyclone V"
	set_global_assignment -name TDC_CCPP_TRADEOFF_TOLERANCE 30 -family "Cyclone V"
	set_global_assignment -name TIMING_ANALYZER_DO_CCPP_REMOVAL ON -family "Cyclone V"
	set_global_assignment -name DISABLE_LEGACY_TIMING_ANALYZER OFF -family "Cyclone V"
	set_global_assignment -name SYNTH_TIMING_DRIVEN_SYNTHESIS ON -family "Cyclone V"
	set_global_assignment -name SYNCHRONIZATION_REGISTER_CHAIN_LENGTH 3 -family "Cyclone V"
	set_global_assignment -name SYNTH_RESOURCE_AWARE_INFERENCE_FOR_BLOCK_RAM ON -family "Cyclone V"
	set_global_assignment -name STRATIXV_CONFIGURATION_SCHEME "PASSIVE SERIAL" -family "Cyclone V"
	set_global_assignment -name OPTIMIZE_HOLD_TIMING "ALL PATHS" -family "Cyclone V"
	set_global_assignment -name OPTIMIZE_MULTI_CORNER_TIMING ON -family "Cyclone V"
	set_global_assignment -name AUTO_DELAY_CHAINS ON -family "Cyclone V"
	set_global_assignment -name CRC_ERROR_OPEN_DRAIN ON -family "Cyclone V"
	set_global_assignment -name ACTIVE_SERIAL_CLOCK FREQ_100MHZ -family "Cyclone V"
	set_global_assignment -name ADVANCED_PHYSICAL_OPTIMIZATION ON -family "Cyclone V"
	set_global_assignment -name ENABLE_OCT_DONE OFF -family "Cyclone V"

	# Commit assignments
	export_assignments

	# Close project
	if {$need_to_close_project} {
		project_close
	}
}
