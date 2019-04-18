add wave \
        :clk
add wave \
        :BusA
add wave \
        :BusB
add wave \
        :BusW
add wave \
        :Reg_W
add wave \
        :dec0
add wave \
        :dec1
add wave \
        :dec2
add wave \
        :dec3
add wave \
        :dec4
add wave \
        :dec5
add wave \
        :dec6
add wave \
        :dec7
add wave \
        :Rt0
add wave \
        :Rt1
add wave \
        :Rt2
add wave \
        :Rs0
add wave \
        :Rs1
add wave \
        :Rs2


force -source :clk 0v
force -source :dec0 0v
force -source :dec1 0v
force -source :dec2 0v
force -source :dec3 0v
force -source :dec4 0v
force -source :dec5 0v
force -source :dec6 0v
force -source :dec7 0v
force -source :BusW 0v
force -source :reg_W 0v
force -source :Rt0 0v
force -source :Rt1 0v
force -source :Rt2 0v
force -source :Rs0 0v
force -source :Rs1 0v
force -source :Rs2 0v
run 500 ns

force -source :clk 0v
force -source :dec0 2.5v
force -source :dec1 0v
force -source :dec2 0v
force -source :dec3 0v
force -source :dec4 0v
force -source :dec5 0v
force -source :dec6 0v
force -source :dec7 0v
force -source :BusW 2.5v
force -source :reg_W 2.5v
force -source :Rt0 0v
force -source :Rt1 0v
force -source :Rt2 0v
force -source :Rs0 0v
force -source :Rs1 0v
force -source :Rs2 0v
run 500 ns

force -source :clk 2.5v
force -source :dec0 2.5v
force -source :dec1 0v
force -source :dec2 0v
force -source :dec3 0v
force -source :dec4 0v
force -source :dec5 0v
force -source :dec6 0v
force -source :dec7 0v
force -source :BusW 2.5v
force -source :reg_W 2.5v
force -source :Rt0 0v
force -source :Rt1 0v
force -source :Rt2 0v
force -source :Rs0 0v
force -source :Rs1 0v
force -source :Rs2 0v
run 500 ns

force -source :clk 0v
force -source :dec0 0v
force -source :dec1 2.5v
force -source :dec2 0v
force -source :dec3 0v
force -source :dec4 0v
force -source :dec5 0v
force -source :dec6 0v
force -source :dec7 0v
force -source :BusW 0v
force -source :reg_W 2.5v
force -source :Rt0 2.5v
force -source :Rt1 0v
force -source :Rt2 0v
force -source :Rs0 2.5v
force -source :Rs1 0v
force -source :Rs2 0v
run 500 ns

force -source :clk 2.5v
force -source :dec0 0v
force -source :dec1 2.5v
force -source :dec2 0v
force -source :dec3 0v
force -source :dec4 0v
force -source :dec5 0v
force -source :dec6 0v
force -source :dec7 0v
force -source :BusW 0v
force -source :reg_W 2.5v
force -source :Rt0 2.5v
force -source :Rt1 0v
force -source :Rt2 0v
force -source :Rs0 2.5v
force -source :Rs1 0v
force -source :Rs2 0v
run 500 ns

force -source :clk 0v
force -source :dec0 0v
force -source :dec1 0v
force -source :dec2 2.5v
force -source :dec3 0v
force -source :dec4 0v
force -source :dec5 0v
force -source :dec6 0v
force -source :dec7 0v
force -source :BusW 2.5v
force -source :reg_W 2.5v
force -source :Rt0 0v
force -source :Rt1 2.5v
force -source :Rt2 0v
force -source :Rs0 0v
force -source :Rs1 2.5v
force -source :Rs2 0v
run 500 ns

force -source :clk 2.5v
force -source :dec0 0v
force -source :dec1 0v
force -source :dec2 2.5v
force -source :dec3 0v
force -source :dec4 0v
force -source :dec5 0v
force -source :dec6 0v
force -source :dec7 0v
force -source :BusW 2.5v
force -source :reg_W 2.5v
force -source :Rt0 0v
force -source :Rt1 2.5v
force -source :Rt2 0v
force -source :Rs0 0v
force -source :Rs1 2.5v
force -source :Rs2 0v
run 500 ns

force -source :clk 0v
force -source :dec0 0v
force -source :dec1 0v
force -source :dec2 0v
force -source :dec3 2.5v
force -source :dec4 0v
force -source :dec5 0v
force -source :dec6 0v
force -source :dec7 0v
force -source :BusW 0v
force -source :reg_W 2.5v
force -source :Rt0 2.5v
force -source :Rt1 2.5v
force -source :Rt2 0v
force -source :Rs0 2.5v
force -source :Rs1 2.5v
force -source :Rs2 0v
run 500 ns

force -source :clk 2.5v
force -source :dec0 0v
force -source :dec1 0v
force -source :dec2 0v
force -source :dec3 2.5v
force -source :dec4 0v
force -source :dec5 0v
force -source :dec6 0v
force -source :dec7 0v
force -source :BusW 0v
force -source :reg_W 2.5v
force -source :Rt0 2.5v
force -source :Rt1 2.5v
force -source :Rt2 0v
force -source :Rs0 2.5v
force -source :Rs1 2.5v
force -source :Rs2 0v
run 500 ns

force -source :clk 0v
force -source :dec0 0v
force -source :dec1 0v
force -source :dec2 0v
force -source :dec3 0v
force -source :dec4 2.5v
force -source :dec5 0v
force -source :dec6 0v
force -source :dec7 0v
force -source :BusW 2.5v
force -source :reg_W 2.5v
force -source :Rt0 0v
force -source :Rt1 0v
force -source :Rt2 2.5v
force -source :Rs0 0v
force -source :Rs1 0v
force -source :Rs2 2.5v
run 500 ns

force -source :clk 2.5v
force -source :dec0 0v
force -source :dec1 0v
force -source :dec2 0v
force -source :dec3 0v
force -source :dec4 2.5v
force -source :dec5 0v
force -source :dec6 0v
force -source :dec7 0v
force -source :BusW 2.5v
force -source :reg_W 2.5v
force -source :Rt0 0v
force -source :Rt1 0v
force -source :Rt2 2.5v
force -source :Rs0 0v
force -source :Rs1 0v
force -source :Rs2 2.5v
run 500 ns

force -source :clk 0v
force -source :dec0 0v
force -source :dec1 0v
force -source :dec2 0v
force -source :dec3 0v
force -source :dec4 0v
force -source :dec5 2.5v
force -source :dec6 0v
force -source :dec7 0v
force -source :BusW 0v
force -source :reg_W 2.5v
force -source :Rt0 2.5v
force -source :Rt1 0v
force -source :Rt2 2.5v
force -source :Rs0 2.5v
force -source :Rs1 0v
force -source :Rs2 2.5v
run 500 ns

force -source :clk 2.5v
force -source :dec0 0v
force -source :dec1 0v
force -source :dec2 0v
force -source :dec3 0v
force -source :dec4 0v
force -source :dec5 2.5v
force -source :dec6 0v
force -source :dec7 0v
force -source :BusW 0v
force -source :reg_W 2.5v
force -source :Rt0 2.5v
force -source :Rt1 0v
force -source :Rt2 2.5v
force -source :Rs0 2.5v
force -source :Rs1 0v
force -source :Rs2 2.5v
run 500 ns

force -source :clk 0v
force -source :dec0 0v
force -source :dec1 0v
force -source :dec2 0v
force -source :dec3 0v
force -source :dec4 0v
force -source :dec5 0v
force -source :dec6 2.5v
force -source :dec7 0v
force -source :BusW 2.5v
force -source :reg_W 2.5v
force -source :Rt0 0v
force -source :Rt1 2.5v
force -source :Rt2 2.5v
force -source :Rs0 0v
force -source :Rs1 2.5v
force -source :Rs2 2.5v
run 500 ns

force -source :clk 2.5v
force -source :dec0 0v
force -source :dec1 0v
force -source :dec2 0v
force -source :dec3 0v
force -source :dec4 0v
force -source :dec5 0v
force -source :dec6 2.5v
force -source :dec7 0v
force -source :BusW 2.5v
force -source :reg_W 2.5v
force -source :Rt0 0v
force -source :Rt1 2.5v
force -source :Rt2 2.5v
force -source :Rs0 0v
force -source :Rs1 2.5v
force -source :Rs2 2.5v
run 500 ns

force -source :clk 0v
force -source :dec0 0v
force -source :dec1 0v
force -source :dec2 0v
force -source :dec3 0v
force -source :dec4 0v
force -source :dec5 0v
force -source :dec6 0v
force -source :dec7 2.5v
force -source :BusW 0v
force -source :reg_W 2.5v
force -source :Rt0 2.5v
force -source :Rt1 2.5v
force -source :Rt2 2.5v
force -source :Rs0 2.5v
force -source :Rs1 2.5v
force -source :Rs2 2.5v
run 500 ns

force -source :clk 2.5v
force -source :dec0 0v
force -source :dec1 0v
force -source :dec2 0v
force -source :dec3 0v
force -source :dec4 0v
force -source :dec5 0v
force -source :dec6 0v
force -source :dec7 2.5v
force -source :BusW 0v
force -source :reg_W 2.5v
force -source :Rt0 2.5v
force -source :Rt1 2.5v
force -source :Rt2 2.5v
force -source :Rs0 2.5v
force -source :Rs1 2.5v
force -source :Rs2 2.5v
run 500 ns
