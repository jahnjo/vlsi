############################################################
## EZwave - Saved Window File
## Tuesday, April 30, 2019 at 1:32:56 PM EDT
##
## Note: This is an auto-generated file.
##
## In case of modification, Do not remove this comment
############################################################

onerror {resume}

# ===== Open required Database =====
dataset open /home/local/RAMS/egrvlsi07/vlsi/VLSI/Project/top/top.cal/top.wdb top

# ====== Create the expressions =====
wfc {Dig_V_top_imm3_1=atod(wf("top/:top:imm3", " -show TRAN.V   -terminals  "),1.25)}
wfc {Dig_V_top_imm2_0=atod(wf("top/:top:imm2", " -show TRAN.V   -terminals  "),1.25)}
wfc {Dig_V_top_imm1_0=atod(wf("top/:top:imm1", " -show TRAN.V   -terminals  "),1.25)}
wfc {Dig_V_top_imm0_0=atod(wf("top/:top:imm0", " -show TRAN.V   -terminals  "),1.25)}
wave createbus immediate -show calc.V -separator / -signals calc/Dig_V_top_imm3_1 -show calc.V -separator / -signals calc/Dig_V_top_imm2_0 -show calc.V -separator / -signals calc/Dig_V_top_imm1_0 -show calc.V -separator / -signals calc/Dig_V_top_imm0_0
wfc {Dig_V_top_op2_=atod(wf("top/:top:op2", " -show TRAN.V   -terminals  "),1.25)}
wfc {Dig_V_top_op1_=atod(wf("top/:top:op1", " -show TRAN.V   -terminals  "),1.25)}
wfc {Dig_V_top_op0_=atod(wf("top/:top:op0", " -show TRAN.V   -terminals  "),1.25)}
wave createbus op -show calc.V -separator / -signals calc/Dig_V_top_op2_ -show calc.V -separator / -signals calc/Dig_V_top_op1_ -show calc.V -separator / -signals calc/Dig_V_top_op0_
wfc {Dig_V_top_rd2_=atod(wf("top/:top:rd2", " -show TRAN.V   -terminals  "),1.25)}
wfc {Dig_V_top_rd1_=atod(wf("top/:top:rd1", " -show TRAN.V   -terminals  "),1.25)}
wfc {Dig_V_top_rd0_=atod(wf("top/:top:rd0", " -show TRAN.V   -terminals  "),1.25)}
wave createbus Rd -show calc.V -separator / -signals calc/Dig_V_top_rd2_ -show calc.V -separator / -signals calc/Dig_V_top_rd1_ -show calc.V -separator / -signals calc/Dig_V_top_rd0_
wfc {Dig_V_top_rs2_=atod(wf("top/:top:rs2", " -show TRAN.V   -terminals  "),1.25)}
wfc {Dig_V_top_rs1_=atod(wf("top/:top:rs1", " -show TRAN.V   -terminals  "),1.25)}
wfc {Dig_V_top_rs0_=atod(wf("top/:top:rs0", " -show TRAN.V   -terminals  "),1.25)}
wave createbus Rs -show calc.V -separator / -signals calc/Dig_V_top_rs2_ -show calc.V -separator / -signals calc/Dig_V_top_rs1_ -show calc.V -separator / -signals calc/Dig_V_top_rs0_
wfc {Dig_V_top_rt2_=atod(wf("top/:top:rt2", " -show TRAN.V   -terminals  "),1.25)}
wfc {Dig_V_top_rt1_=atod(wf("top/:top:rt1", " -show TRAN.V   -terminals  "),1.25)}
wfc {Dig_V_top_rt0_=atod(wf("top/:top:rt0", " -show TRAN.V   -terminals  "),1.25)}
wave createbus Rt -show calc.V -separator / -signals calc/Dig_V_top_rt2_ -show calc.V -separator / -signals calc/Dig_V_top_rt1_ -show calc.V -separator / -signals calc/Dig_V_top_rt0_
wfc {Dig_V_top_result3_=atod(wf("top/:top:result3", " -show TRAN.V   -terminals  "),1.25665)}
wfc {Dig_V_top_result2_=atod(wf("top/:top:result2", " -show TRAN.V   -terminals  "),1.25665)}
wfc {Dig_V_top_result1_=atod(wf("top/:top:result1", " -show TRAN.V   -terminals  "),1.25665)}
wfc {Dig_V_top_result0_=atod(wf("top/:top:result0", " -show TRAN.V   -terminals  "),1.25665)}
wave createbus result -show calc.V -separator / -signals calc/Dig_V_top_result3_ -show calc.V -separator / -signals calc/Dig_V_top_result2_ -show calc.V -separator / -signals calc/Dig_V_top_result1_ -show calc.V -separator / -signals calc/Dig_V_top_result0_


# ===== Open the window =====
wave addwindow -x 0  -y 0 -width 1662  -height 822 -divider 0.93

# ===== Create row #1 =====
add wave  -show TRAN.v -height 80 -color -16711936 -separator : -terminals  :top:clk

# ===== Create row #2 =====
add wave  -show none.v -binary  -signals  immediate

# ===== Create row #3 =====
add wave  -show TRAN.v -height 80 -color -16711681 -separator : -terminals  :top:input_select

# ===== Create row #4 =====
add wave  -show none.v -binary  -signals  op

# ===== Create row #5 =====
add wave  -show none.v -binary  -signals  Rd

# ===== Create row #6 =====
add wave  -show none.v -binary  -signals  Rs

# ===== Create row #7 =====
add wave  -show none.v -binary  -signals  Rt

# ===== Create row #8 =====
add wave  -show none.v -binary  -signals  result

# ====== Create the cursors, markers and measurements =====
