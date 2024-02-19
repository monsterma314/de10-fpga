###############################################################################
# Copyright (C) 1991-2024 Altera Corporation. All rights reserved.
# Any  megafunction  design,  and related netlist (encrypted  or  decrypted),
# support information,  device programming or simulation file,  and any other
# associated  documentation or information  provided by  Intel  or a partner
# under  Intel's   Megafunction   Partnership   Program  may  be  used  only
# to program  PLD  devices (but not masked  PLD  devices) from  Intel.   Any
# other  use  of such  megafunction  design,  netlist,  support  information,
# device programming or simulation file,  or any other  related documentation
# or information  is prohibited  for  any  other purpose,  including, but not
# limited to  modification,  reverse engineering,  de-compiling, or use  with
# any other  silicon devices,  unless such use is  explicitly  licensed under
# a separate agreement with  Intel  or a megafunction partner.  Title to the
# intellectual property,  including patents,  copyrights,  trademarks,  trade
# secrets,  or maskworks,  embodied in any such megafunction design, netlist,
# support  information,  device programming or simulation file,  or any other
# related documentation or information provided by  Intel  or a megafunction
# partner, remains with Intel, the megafunction partner, or their respective
# licensors. No other licenses, including any licenses needed under any third
# party's intellectual property, are provided herein.
#
###############################################################################


# FPGA Xchange file generated using Quartus Prime Version 23.1std.0 Build 991 11/28/2023 SC Lite Edition

# DESIGN=test0
# REVISION=test0
# DEVICE=5CSXFC6
# PACKAGE=FBGA
# SPEEDGRADE=6_H6

Signal Name,Pin Number,Direction,IO Standard,Drive (mA),Termination,Slew Rate,Swap Group,Diff Type

CLK,AF14,input,2.5 V,,Off,--,swap_0,--
nRST,AA12,input,2.5 V,,Off,--,swap_0,--
PB[0],AJ4,input,2.5 V,,Off,--,swap_0,--
PB[1],AK4,input,2.5 V,,Off,--,swap_0,--
PB[2],AA14,input,2.5 V,,Off,--,swap_0,--
PB[3],AA15,input,2.5 V,,Off,--,swap_0,--
SW[0],AB30,input,2.5 V,,Off,--,swap_0,--
SW[1],Y27,input,2.5 V,,Off,--,swap_0,--
SW[2],AB28,input,2.5 V,,Off,--,swap_0,--
SW[3],AC30,input,2.5 V,,Off,--,swap_0,--
SW[4],W25,input,2.5 V,,Off,--,swap_0,--
SW[5],V25,input,2.5 V,,Off,--,swap_0,--
SW[6],AC28,input,2.5 V,,Off,--,swap_0,--
SW[7],AD30,input,2.5 V,,Off,--,swap_0,--
SW[8],AC29,input,2.5 V,,Off,--,swap_0,--
SW[9],AA30,input,2.5 V,,Off,--,swap_0,--
MSEL[0],W15,input,2.5 V,,Off,--,swap_0,--
MSEL[1],AK2,input,2.5 V,,Off,--,swap_0,--
MSEL[2],Y16,input,2.5 V,,Off,--,swap_0,--
MSEL[3],AK3,input,2.5 V,,Off,--,swap_0,--
MSEL[4],AJ1,input,2.5 V,,Off,--,swap_0,--
LEDR[0],AA24,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_1,--
LEDR[1],AB23,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_1,--
LEDR[2],AC23,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_1,--
LEDR[3],AD24,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_1,--
LEDR[4],AG25,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_1,--
LEDR[5],AF25,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_1,--
LEDR[6],AE24,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_1,--
LEDR[7],AF24,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_1,--
LEDR[8],AB22,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_1,--
LEDR[9],AC22,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_1,--
SS[0][0],W17,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_1,--
SS[0][1],V18,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_1,--
SS[0][2],AG17,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_1,--
SS[0][3],AG16,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_1,--
SS[0][4],AH17,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_1,--
SS[0][5],AG18,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_1,--
SS[0][6],AH18,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_1,--
SS[0][7],AD10,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_1,--
SS[1][0],AF16,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_1,--
SS[1][1],V16,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_1,--
SS[1][2],AE16,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_1,--
SS[1][3],AD17,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_1,--
SS[1][4],AE18,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_1,--
SS[1][5],AE17,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_1,--
SS[1][6],V17,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_1,--
SS[1][7],AD11,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_1,--
SS[2][0],AA21,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_1,--
SS[2][1],AB17,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_1,--
SS[2][2],AA18,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_1,--
SS[2][3],Y17,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_1,--
SS[2][4],Y18,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_1,--
SS[2][5],AF18,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_1,--
SS[2][6],W16,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_1,--
SS[2][7],AD12,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_1,--
SS[3][0],Y19,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_1,--
SS[3][1],W19,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_1,--
SS[3][2],AD19,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_1,--
SS[3][3],AA20,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_1,--
SS[3][4],AC20,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_1,--
SS[3][5],AA19,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_1,--
SS[3][6],AD20,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_1,--
SS[3][7],AC9,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_1,--
SS[4][0],AD21,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_1,--
SS[4][1],AG22,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_1,--
SS[4][2],AE22,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_1,--
SS[4][3],AE23,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_1,--
SS[4][4],AG23,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_1,--
SS[4][5],AF23,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_1,--
SS[4][6],AH22,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_1,--
SS[4][7],AC12,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_1,--
SS[5][0],AF21,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_1,--
SS[5][1],AG21,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_1,--
SS[5][2],AF20,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_1,--
SS[5][3],AG20,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_1,--
SS[5][4],AE19,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_1,--
SS[5][5],AF19,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_1,--
SS[5][6],AB21,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_1,--
SS[5][7],AB12,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_1,--
