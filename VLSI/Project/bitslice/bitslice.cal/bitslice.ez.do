############################################################
## EZwave - Saved Window File
## Tuesday, April 23, 2019 at 9:54:04 AM EDT
##
## Note: This is an auto-generated file.
##
## In case of modification, Do not remove this comment
############################################################

onerror {resume}

# ===== Open required Database =====
dataset open /home/local/RAMS/egrvlsi07/vlsi/VLSI/Project/bitslice/bitslice.cal/bitslice.wdb bitslice

# ====== Create the expressions =====
wfc {Dig_V_bitslice_rt2_=atod(wf("bitslice/:bitslice:rt2", " -show TRAN.V   -terminals  "),1.25)}
wfc {Dig_V_bitslice_rt1_=atod(wf("bitslice/:bitslice:rt1", " -show TRAN.V   -terminals  "),1.25)}
wfc {Dig_V_bitslice_rt0_=atod(wf("bitslice/:bitslice:rt0", " -show TRAN.V   -terminals  "),1.25)}
wave createbus rt -show calc.V -separator / -signals calc/Dig_V_bitslice_rt2_ -show calc.V -separator / -signals calc/Dig_V_bitslice_rt1_ -show calc.V -separator / -signals calc/Dig_V_bitslice_rt0_
wfc {Dig_V_bitslice_rs2_=atod(wf("bitslice/:bitslice:rs2", " -show TRAN.V   -terminals  "),1.25)}
wfc {Dig_V_bitslice_rs1_=atod(wf("bitslice/:bitslice:rs1", " -show TRAN.V   -terminals  "),1.25)}
wfc {Dig_V_bitslice_rs0_=atod(wf("bitslice/:bitslice:rs0", " -show TRAN.V   -terminals  "),1.25)}
wave createbus rs -show calc.V -separator / -signals calc/Dig_V_bitslice_rs2_ -show calc.V -separator / -signals calc/Dig_V_bitslice_rs1_ -show calc.V -separator / -signals calc/Dig_V_bitslice_rs0_
wfc {Dig_V_bitslice_dec7_=atod(wf("bitslice/:bitslice:dec7", " -show TRAN.V   -terminals  "),1.25)}
wfc {Dig_V_bitslice_dec6_=atod(wf("bitslice/:bitslice:dec6", " -show TRAN.V   -terminals  "),1.25)}
wfc {Dig_V_bitslice_dec5_=atod(wf("bitslice/:bitslice:dec5", " -show TRAN.V   -terminals  "),1.25)}
wfc {Dig_V_bitslice_dec4_=atod(wf("bitslice/:bitslice:dec4", " -show TRAN.V   -terminals  "),1.25)}
wfc {Dig_V_bitslice_dec3_=atod(wf("bitslice/:bitslice:dec3", " -show TRAN.V   -terminals  "),1.25)}
wfc {Dig_V_bitslice_dec2_=atod(wf("bitslice/:bitslice:dec2", " -show TRAN.V   -terminals  "),1.25)}
wfc {Dig_V_bitslice_dec1_=atod(wf("bitslice/:bitslice:dec1", " -show TRAN.V   -terminals  "),1.25)}
wfc {Dig_V_bitslice_dec0_=atod(wf("bitslice/:bitslice:dec0", " -show TRAN.V   -terminals  "),1.25)}
wave createbus decoder -show calc.V -separator / -signals calc/Dig_V_bitslice_dec7_ -show calc.V -separator / -signals calc/Dig_V_bitslice_dec6_ -show calc.V -separator / -signals calc/Dig_V_bitslice_dec5_ -show calc.V -separator / -signals calc/Dig_V_bitslice_dec4_ -show calc.V -separator / -signals calc/Dig_V_bitslice_dec3_ -show calc.V -separator / -signals calc/Dig_V_bitslice_dec2_ -show calc.V -separator / -signals calc/Dig_V_bitslice_dec1_ -show calc.V -separator / -signals calc/Dig_V_bitslice_dec0_


# ===== Open the window =====
wave addwindow -x 0  -y 0 -width 1725  -height 822 -divider 0.91

# ===== Create row #1 =====
add wave  -show TRAN.v -color -16711936 -separator : -terminals  :bitslice:clk

# ===== Create row #2 =====
add wave  -show TRAN.v -color -2968436 -separator : -terminals  :bitslice:aluop0

# ===== Create row #3 =====
add wave  -show TRAN.v -color -16711936 -separator : -terminals  :bitslice:aluop1

# ===== Create row #4 =====
add wave  -show TRAN.v -color -256 -separator : -terminals  :bitslice:busw

# ===== Create row #5 =====
add wave  -show TRAN.v -height 84 -color -16744193 -separator : -terminals  :bitslice:regw


# ===== Create row #6 =====
add wave  -show TRAN.v -color -32768 -separator : -terminals  :bitslice:cin

# ===== Create row #7 =====
add wave  -show TRAN.v -color -65281 -separator : -terminals  :bitslice:result

# ===== Create row #8 =====
add wave  -show TRAN.v -color -16711681 -separator : -terminals  :bitslice:cout

# ===== Create row #9 =====
add wave  -show none.v -binary  -signals  rt

# ===== Create row #10 =====
add wave  -show none.v -binary  -signals  rs

# ===== Create row #11 =====
add wave  -show none.v -binary  -signals  decoder

# ====== Create the cursors, markers and measurements =====
