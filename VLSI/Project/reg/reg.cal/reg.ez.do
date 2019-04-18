############################################################
## EZwave - Saved Window File
## Thursday, April 18, 2019 at 3:13:43 PM EDT
##
## Note: This is an auto-generated file.
##
## In case of modification, Do not remove this comment
############################################################

onerror {resume}

# ===== Open required Database =====
dataset open /home/local/RAMS/egrvlsi07/vlsi/VLSI/Project/reg/reg.cal/reg.wdb reg

# ====== Create the expressions =====
wfc {Dig_V_reg_rs2_1=atod(wf("reg/:reg:rs2", " -show TRAN.V   -terminals  "),1.25)}
wfc {Dig_V_reg_rs1_0=atod(wf("reg/:reg:rs1", " -show TRAN.V   -terminals  "),1.25)}
wfc {Dig_V_reg_rs0_0=atod(wf("reg/:reg:rs0", " -show TRAN.V   -terminals  "),1.25)}
wave createbus Rs -show calc.V -separator / -signals calc/Dig_V_reg_rs2_1 -show calc.V -separator / -signals calc/Dig_V_reg_rs1_0 -show calc.V -separator / -signals calc/Dig_V_reg_rs0_0
wfc {Dig_V_reg_rt2_=atod(wf("reg/:reg:rt2", " -show TRAN.V   -terminals  "),1.25)}
wfc {Dig_V_reg_rt1_=atod(wf("reg/:reg:rt1", " -show TRAN.V   -terminals  "),1.25)}
wfc {Dig_V_reg_rt0_=atod(wf("reg/:reg:rt0", " -show TRAN.V   -terminals  "),1.25)}
wave createbus Rt -show calc.V -separator / -signals calc/Dig_V_reg_rt2_ -show calc.V -separator / -signals calc/Dig_V_reg_rt1_ -show calc.V -separator / -signals calc/Dig_V_reg_rt0_
wfc {Dig_V_reg_dec7_1=atod(wf("reg/:reg:dec7", " -show TRAN.V   -terminals  "),1.25)}
wfc {Dig_V_reg_dec6_0=atod(wf("reg/:reg:dec6", " -show TRAN.V   -terminals  "),1.25)}
wfc {Dig_V_reg_dec5_0=atod(wf("reg/:reg:dec5", " -show TRAN.V   -terminals  "),1.25)}
wfc {Dig_V_reg_dec4_0=atod(wf("reg/:reg:dec4", " -show TRAN.V   -terminals  "),1.25)}
wfc {Dig_V_reg_dec3_0=atod(wf("reg/:reg:dec3", " -show TRAN.V   -terminals  "),1.25)}
wfc {Dig_V_reg_dec2_0=atod(wf("reg/:reg:dec2", " -show TRAN.V   -terminals  "),1.25)}
wfc {Dig_V_reg_dec1_0=atod(wf("reg/:reg:dec1", " -show TRAN.V   -terminals  "),1.25)}
wfc {Dig_V_reg_dec0_0=atod(wf("reg/:reg:dec0", " -show TRAN.V   -terminals  "),1.25)}
wave createbus decoder -show calc.V -separator / -signals calc/Dig_V_reg_dec7_1 -show calc.V -separator / -signals calc/Dig_V_reg_dec6_0 -show calc.V -separator / -signals calc/Dig_V_reg_dec5_0 -show calc.V -separator / -signals calc/Dig_V_reg_dec4_0 -show calc.V -separator / -signals calc/Dig_V_reg_dec3_0 -show calc.V -separator / -signals calc/Dig_V_reg_dec2_0 -show calc.V -separator / -signals calc/Dig_V_reg_dec1_0 -show calc.V -separator / -signals calc/Dig_V_reg_dec0_0


# ===== Open the window =====
wave addwindow -x 0  -y 0 -width 1327  -height 794 -divider 0.91

# ===== Create row #1 =====
add wave  -show TRAN.v -color -16711936 -separator : -terminals  :reg:clk


# ===== Create row #2 =====
add wave  -show TRAN.v -color -256 -separator : -terminals  :reg:busa


# ===== Create row #3 =====
add wave  -show TRAN.v -color -16744193 -separator : -terminals  :reg:busb


# ===== Create row #4 =====
add wave  -show TRAN.v -color -32768 -separator : -terminals  :reg:busw


# ===== Create row #5 =====
add wave  -show TRAN.v -color -65281 -separator : -terminals  :reg:reg_w


# ===== Create row #6 =====
add wave  -show none.v -binary  -signals  Rs

# ===== Create row #7 =====
add wave  -show none.v -binary  -signals  Rt

# ===== Create row #8 =====
add wave  -show none.v -binary  -signals  decoder

# ====== Create the cursors, markers and measurements =====
