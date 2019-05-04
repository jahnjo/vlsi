############################################################
## EZwave - Saved Window File
## Saturday, May 4, 2019 at 12:14:53 PM EDT
##
## Note: This is an auto-generated file.
##
## In case of modification, Do not remove this comment
############################################################

onerror {resume}

# ===== Open required Database =====
dataset open /home/local/RAMS/egrvlsi07/vlsi/VLSI/Project/imm_mux/imm_mux.cal/imm_mux.wdb imm_mux

# ====== Create the expressions =====
wfc {Dig_V_imm_mux_result_3_1=atod(wf("imm_mux/:imm_mux:result_3", " -show TRAN.V   -terminals  "),0.0)}
wfc {Dig_V_imm_mux_result_2_0=atod(wf("imm_mux/:imm_mux:result_2", " -show TRAN.V   -terminals  "),0.0)}
wfc {Dig_V_imm_mux_result_1_0=atod(wf("imm_mux/:imm_mux:result_1", " -show TRAN.V   -terminals  "),0.0)}
wfc {Dig_V_imm_mux_result_0_0=atod(wf("imm_mux/:imm_mux:result_0", " -show TRAN.V   -terminals  "),0.0)}
wave createbus inputResult -show calc.V -separator / -signals calc/Dig_V_imm_mux_result_3_1 -show calc.V -separator / -signals calc/Dig_V_imm_mux_result_2_0 -show calc.V -separator / -signals calc/Dig_V_imm_mux_result_1_0 -show calc.V -separator / -signals calc/Dig_V_imm_mux_result_0_0
wfc {Dig_V_imm_mux_imm_3_=atod(wf("imm_mux/:imm_mux:imm_3", " -show TRAN.V   -terminals  "),1.25)}
wfc {Dig_V_imm_mux_imm_2_=atod(wf("imm_mux/:imm_mux:imm_2", " -show TRAN.V   -terminals  "),1.25)}
wfc {Dig_V_imm_mux_imm_1_=atod(wf("imm_mux/:imm_mux:imm_1", " -show TRAN.V   -terminals  "),1.25)}
wfc {Dig_V_imm_mux_imm_0_=atod(wf("imm_mux/:imm_mux:imm_0", " -show TRAN.V   -terminals  "),1.25)}
wave createbus inputImmediate -show calc.V -separator / -signals calc/Dig_V_imm_mux_imm_3_ -show calc.V -separator / -signals calc/Dig_V_imm_mux_imm_2_ -show calc.V -separator / -signals calc/Dig_V_imm_mux_imm_1_ -show calc.V -separator / -signals calc/Dig_V_imm_mux_imm_0_
wfc {Dig_V_imm_mux_busw_result_3_=atod(wf("imm_mux/:imm_mux:busw_result_3", " -show TRAN.V   -terminals  "),1.25022)}
wfc {Dig_V_imm_mux_busw_result_2_=atod(wf("imm_mux/:imm_mux:busw_result_2", " -show TRAN.V   -terminals  "),1.25022)}
wfc {Dig_V_imm_mux_busw_result_1_=atod(wf("imm_mux/:imm_mux:busw_result_1", " -show TRAN.V   -terminals  "),1.25022)}
wfc {Dig_V_imm_mux_busw_result_0_=atod(wf("imm_mux/:imm_mux:busw_result_0", " -show TRAN.V   -terminals  "),1.25022)}
wave createbus outputBusW -show calc.V -separator / -signals calc/Dig_V_imm_mux_busw_result_3_ -show calc.V -separator / -signals calc/Dig_V_imm_mux_busw_result_2_ -show calc.V -separator / -signals calc/Dig_V_imm_mux_busw_result_1_ -show calc.V -separator / -signals calc/Dig_V_imm_mux_busw_result_0_


# ===== Open the window =====
wave addwindow -x 0  -y 0 -width 1584  -height 822 -divider 0.86

# ===== Create row #1 =====
add wave  -show TRAN.v -height 80 -color -16711936 -separator : -terminals  :imm_mux:input_select

# ===== Create row #2 =====
add wave  -show none.v -binary  -signals  inputResult

# ===== Create row #3 =====
add wave  -show none.v -binary  -signals  inputImmediate

# ===== Create row #4 =====
add wave  -show none.v -binary  -signals  outputBusW

# ====== Create the cursors, markers and measurements =====
