############################################################
## EZwave - Saved Window File
## Saturday, May 4, 2019 at 10:30:32 AM EDT
##
## Note: This is an auto-generated file.
##
## In case of modification, Do not remove this comment
############################################################

onerror {resume}

# ===== Open required Database =====
dataset open /home/local/RAMS/egrvlsi07/vlsi/VLSI/Project/control/control.cal/control.wdb control

# ====== Create the expressions =====
wfc {Dig_V_control_op_2_=atod(wf("control/:control:op_2", " -show TRAN.V   -terminals  "),1.25)}
wfc {Dig_V_control_op_1_=atod(wf("control/:control:op_1", " -show TRAN.V   -terminals  "),1.25)}
wfc {Dig_V_control_op_0_=atod(wf("control/:control:op_0", " -show TRAN.V   -terminals  "),1.25)}
wave createbus opCode -show calc.V -separator / -signals calc/Dig_V_control_op_2_ -show calc.V -separator / -signals calc/Dig_V_control_op_1_ -show calc.V -separator / -signals calc/Dig_V_control_op_0_
wfc {Dig_V_control_alu_op_1_=atod(wf("control/:control:alu_op_1", " -show TRAN.V   -terminals  "),1.27259)}
wfc {Dig_V_control_alu_op_0_=atod(wf("control/:control:alu_op_0", " -show TRAN.V   -terminals  "),1.27259)}
wave createbus ALUop -show calc.V -separator / -signals calc/Dig_V_control_alu_op_1_ -show calc.V -separator / -signals calc/Dig_V_control_alu_op_0_


# ===== Open the window =====
wave addwindow -x 0  -y 0 -width 1662  -height 822 -divider 0.87

# ===== Create row #1 =====
add wave  -show none.v -binary  -signals  opCode

# ===== Create row #2 =====
add wave  -show none.v -binary  -signals  ALUop

# ===== Create row #3 =====
add wave  -show TRAN.v -height 80 -color -16711681 -separator : -terminals  :control:alu_src

# ===== Create row #4 =====
add wave  -show TRAN.v -height 80 -color -3650716 -separator : -terminals  :control:pc_src

# ===== Create row #5 =====
add wave  -show TRAN.v -height 80 -color -2968436 -separator : -terminals  :control:reg_write

# ====== Create the cursors, markers and measurements =====
