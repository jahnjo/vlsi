add wave :bitslice:clk
add wave :bitslice:Rt0
add wave :bitslice:Rt1
add wave :bitslice:Rt2
add wave :bitslice:Rs0
add wave :bitslice:Rs1
add wave :bitslice:Rs2
add wave :bitslice:dec0
add wave :bitslice:dec1
add wave :bitslice:dec2
add wave :bitslice:dec3
add wave :bitslice:dec4
add wave :bitslice:dec5
add wave :bitslice:dec6
add wave :bitslice:dec7
add wave :bitslice:ALUop0
add wave :bitslice:ALUop1
add wave :bitslice:BusW
add wave :bitslice:RegW
add wave :bitslice:Cin

add wave :bitslice:result
add wave :bitslice:Cout

force -source :bitslice:Rt0 0V
force -source :bitslice:Rt1 0V
force -source :bitslice:Rt2 0V
force -source :bitslice:ALUop0 0V
force -source :bitslice:ALUop1 0V
force -source :bitslice:Rs0 0V
force -source :bitslice:Rs1 0V
force -source :bitslice:Rs2 0V
force -source :bitslice:RegW 2.5V
force -source :bitslice:clk 0V
force -source :bitslice:BusW 2.5V
force -source :bitslice:Cin 0V
force -source :bitslice:dec0 2.5V
force -source :bitslice:dec1 0V
force -source :bitslice:dec2 0V
force -source :bitslice:dec3 0V
force -source :bitslice:dec4 0V
force -source :bitslice:dec5 0V
force -source :bitslice:dec6 0V
force -source :bitslice:dec7 0V
run 500 ns

force -source :bitslice:clk 2.5V
run 500 ns

force -source :bitslice:Rt0 2.5V
force -source :bitslice:Rt1 0V
force -source :bitslice:Rt2 0V
force -source :bitslice:ALUop0 0V
force -source :bitslice:ALUop1 0V
force -source :bitslice:Rs0 2.5V
force -source :bitslice:Rs1 0V
force -source :bitslice:Rs2 0V
force -source :bitslice:RegW 2.5V
force -source :bitslice:clk 0V
force -source :bitslice:BusW 2.5V
force -source :bitslice:Cin 0V
force -source :bitslice:dec0 0V
force -source :bitslice:dec1 2.5V
force -source :bitslice:dec2 0V
force -source :bitslice:dec3 0V
force -source :bitslice:dec4 0V
force -source :bitslice:dec5 0V
force -source :bitslice:dec6 0V
force -source :bitslice:dec7 0V
run 500 ns

force -source :bitslice:clk 2.5V
run 500 ns

force -source :bitslice:Rt0 0V
force -source :bitslice:Rt1 2.5V
force -source :bitslice:Rt2 0V
force -source :bitslice:ALUop0 0V
force -source :bitslice:ALUop1 0V
force -source :bitslice:Rs0 0V
force -source :bitslice:Rs1 2.5V
force -source :bitslice:Rs2 0V
force -source :bitslice:RegW 2.5V
force -source :bitslice:clk 0V
force -source :bitslice:BusW 2.5V
force -source :bitslice:Cin 0V
force -source :bitslice:dec0 0V
force -source :bitslice:dec1 0V
force -source :bitslice:dec2 2.5V
force -source :bitslice:dec3 0V
force -source :bitslice:dec4 0V
force -source :bitslice:dec5 0V
force -source :bitslice:dec6 0V
force -source :bitslice:dec7 0V
run 500 ns

force -source :bitslice:clk 2.5V
run 500 ns

force -source :bitslice:Rt0 2.5V
force -source :bitslice:Rt1 2.5V
force -source :bitslice:Rt2 0V
force -source :bitslice:ALUop0 0V
force -source :bitslice:ALUop1 0V
force -source :bitslice:Rs0 2.5V
force -source :bitslice:Rs1 2.5V
force -source :bitslice:Rs2 0V
force -source :bitslice:RegW 2.5V
force -source :bitslice:clk 0V
force -source :bitslice:BusW 2.5V
force -source :bitslice:Cin 0V
force -source :bitslice:dec0 0V
force -source :bitslice:dec1 0V
force -source :bitslice:dec2 0V
force -source :bitslice:dec3 2.5V
force -source :bitslice:dec4 0V
force -source :bitslice:dec5 0V
force -source :bitslice:dec6 0V
force -source :bitslice:dec7 0V
run 500 ns

force -source :bitslice:clk 2.5V
run 500 ns

force -source :bitslice:Rt0 0V
force -source :bitslice:Rt1 0V
force -source :bitslice:Rt2 2.5V
force -source :bitslice:ALUop0 0V
force -source :bitslice:ALUop1 0V
force -source :bitslice:Rs0 0V
force -source :bitslice:Rs1 0V
force -source :bitslice:Rs2 2.5V
force -source :bitslice:RegW 2.5V
force -source :bitslice:clk 0V
force -source :bitslice:BusW 2.5V
force -source :bitslice:Cin 0V
force -source :bitslice:dec0 0V
force -source :bitslice:dec1 0V
force -source :bitslice:dec2 0V
force -source :bitslice:dec3 0V
force -source :bitslice:dec4 2.5V
force -source :bitslice:dec5 0V
force -source :bitslice:dec6 0V
force -source :bitslice:dec7 0V
run 500 ns

force -source :bitslice:clk 2.5V
run 500 ns

force -source :bitslice:Rt0 2.5V
force -source :bitslice:Rt1 0V
force -source :bitslice:Rt2 2.5V
force -source :bitslice:ALUop0 0V
force -source :bitslice:ALUop1 0V
force -source :bitslice:Rs0 2.5V
force -source :bitslice:Rs1 0V
force -source :bitslice:Rs2 2.5V
force -source :bitslice:RegW 2.5V
force -source :bitslice:clk 0V
force -source :bitslice:BusW 2.5V
force -source :bitslice:Cin 0V
force -source :bitslice:dec0 0V
force -source :bitslice:dec1 0V
force -source :bitslice:dec2 0V
force -source :bitslice:dec3 0V
force -source :bitslice:dec4 0V
force -source :bitslice:dec5 2.5V
force -source :bitslice:dec6 0V
force -source :bitslice:dec7 0V
run 500 ns

force -source :bitslice:clk 2.5V
run 500 ns

force -source :bitslice:Rt0 0V
force -source :bitslice:Rt1 2.5V
force -source :bitslice:Rt2 2.5V
force -source :bitslice:ALUop0 0V
force -source :bitslice:ALUop1 0V
force -source :bitslice:Rs0 0V
force -source :bitslice:Rs1 2.5V
force -source :bitslice:Rs2 2.5V
force -source :bitslice:RegW 2.5V
force -source :bitslice:clk 0V
force -source :bitslice:BusW 2.5V
force -source :bitslice:Cin 0V
force -source :bitslice:dec0 0V
force -source :bitslice:dec1 0V
force -source :bitslice:dec2 0V
force -source :bitslice:dec3 0V
force -source :bitslice:dec4 0V
force -source :bitslice:dec5 0V
force -source :bitslice:dec6 2.5V
force -source :bitslice:dec7 0V
run 500 ns

force -source :bitslice:clk 2.5V
run 500 ns

force -source :bitslice:Rt0 2.5V
force -source :bitslice:Rt1 2.5V
force -source :bitslice:Rt2 2.5V
force -source :bitslice:ALUop0 0V
force -source :bitslice:ALUop1 0V
force -source :bitslice:Rs0 2.5V
force -source :bitslice:Rs1 2.5V
force -source :bitslice:Rs2 2.5V
force -source :bitslice:RegW 2.5V
force -source :bitslice:clk 0V
force -source :bitslice:BusW 2.5V
force -source :bitslice:Cin 0V
force -source :bitslice:dec0 0V
force -source :bitslice:dec1 0V
force -source :bitslice:dec2 0V
force -source :bitslice:dec3 0V
force -source :bitslice:dec4 0V
force -source :bitslice:dec5 0V
force -source :bitslice:dec6 0V
force -source :bitslice:dec7 2.5V
run 500 ns

force -source :bitslice:clk 2.5V
run 500 ns

