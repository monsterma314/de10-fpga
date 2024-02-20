TOP_MODULE_NAME := test0

SRC_FOLDER := source
SRC_FILENAMES := flex_counter.sv hex_display.sv ss_display.sv synchronizer.sv test0.sv
SRC_FILES := $(addprefix $(SRC_FOLDER)/, $(SRC_FILENAMES))
SRC_MODULES := $(SRC_FILENAMES:.sv=)

TB_FOLDER := tb
TB_PREFIX := tb_
TB_TOP_RTL := $(TB_FOLDER)/$(TB_PREFIX)$(TOP_MODULE_NAME).sv
TB_TOP_MODULE := $(TB_PREFIX)$(TOP_MODULE_NAME)

SIM_DIR := simulation

# DO_FILE := $(SIM_DIR)/adder1.do

# System Verilog compiler tool
VLOG := /home/ryan/Software/quartus/questa_fse/linux_x86_64/vlog
VLOG_FLAGS := +acc
VLOG_WORK_DIR := work

# Questa Intel FPGA simulation tool
VSIM := /home/ryan/Software/quartus/questa_fse/linux_x86_64/vsim
VSIM_FLAGS := 

help:
	@echo -e '\033[0;33mMake sure to set the TOP_MODULE_NAME variable in Makefile \033[0;m'
	@echo
	@echo 'make help                    Print this message'
	@echo 'make compile                 Compile the RTL code using vlog' 
	@echo 'make simulate                Simulate the RTL code using Questa Intel FPGA'

info:
	@echo $(SRC_FOLDER)
	@echo $(SRC_FILENAMES)
	@echo $(SRC_FILES)
	@echo $(TB_FOLDER)
	@echo $(TB_TOP_RTL)
	@echo $(TB_TOP_MODULE)

reference:
	echo 'See here: https://users.ece.cmu.edu/~jhoe/doku/doku.php?id=a_short_intro_to_modelsim_verilog_simulator'

compile:
	$(VLOG) $(VLOG_FLAGS) $(SRC_FILES) $(TB_TOP_RTL)

sim: compile
ifeq ($(DO_FILE), )
	export LM_LICENSE_FILE='/usr/local/share/licenses/LR-159042_License.dat'; \
	$(VSIM) $(VSIM_FLAGS) $(SRC_MODULES) $(TB_TOP_MODULE)
endif

ifneq ($(DO_FILE), )
	export LM_LICENSE_FILE='/usr/local/share/licenses/LR-159042_License.dat'; \
	$(VSIM) $(VSIM_FLAGS) $(SRC_MODULES) $(TB_TOP_MODULE) -do $(DO_FILE)
endif

clean:
	rm -rf $(VLOG_WORK_DIR)
	rm -f *.wlf
	rm -f wlf*

veryclean:
	rm -f transcript
	rm -f *.rpt
