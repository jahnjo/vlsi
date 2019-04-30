add wave :top:clk

add wave :top:imm3
add wave :top:imm2
add wave :top:imm1
add wave :top:imm0

add wave :top:input_select

add wave :top:op2
add wave :top:op1
add wave :top:op0

add wave :top:Rd2
add wave :top:Rd1
add wave :top:Rd0

add wave :top:Rs2
add wave :top:Rs1
add wave :top:Rs0

add wave :top:Rt2
add wave :top:Rt1
add wave :top:Rt0

add wave :top:result3
add wave :top:result2
add wave :top:result1
add wave :top:result0

add wave :top:ALUsrc
add wave :top:PCsrc


force -source :top:clk 0V

force -source :top:imm3 0V
force -source :top:imm2 0V
force -source :top:imm1 0V
force -source :top:imm0 0V

force -source :top:input_select 2.5V 

force -source :top:op2 0V
force -source :top:op1 0V
force -source :top:op0 0V

force -source :top:Rd2 0V
force -source :top:Rd1 0V
force -source :top:Rd0 0V

force -source :top:Rs2 0V
force -source :top:Rs1 0V
force -source :top:Rs0 0V

force -source :top:Rt2 0V
force -source :top:Rt1 0V
force -source :top:Rt0 0V
run 100 ns

force -source :top:clk 2.5V
run 100 ns


force -source :top:clk 0V

force -source :top:imm3 2.5V
force -source :top:imm2 0V
force -source :top:imm1 2.5V
force -source :top:imm0 0V

force -source :top:input_select 2.5V 

force -source :top:op2 0V
force -source :top:op1 0V
force -source :top:op0 0V

force -source :top:Rd2 0V
force -source :top:Rd1 0V
force -source :top:Rd0 2.5V

force -source :top:Rs2 0V
force -source :top:Rs1 0V
force -source :top:Rs0 0V

force -source :top:Rt2 0V
force -source :top:Rt1 0V
force -source :top:Rt0 0V
run 100 ns

force -source :top:clk 2.5V
run 100 ns


force -source :top:clk 0V

force -source :top:imm3 0V
force -source :top:imm2 2.5V
force -source :top:imm1 0V
force -source :top:imm0 2.5V

force -source :top:input_select 2.5V 

force -source :top:op2 0V
force -source :top:op1 0V
force -source :top:op0 0V

force -source :top:Rd2 0V
force -source :top:Rd1 2.5V
force -source :top:Rd0 0V

force -source :top:Rs2 0V
force -source :top:Rs1 0V
force -source :top:Rs0 0V

force -source :top:Rt2 0V
force -source :top:Rt1 0V
force -source :top:Rt0 0V
run 100 ns

force -source :top:clk 2.5V
run 100 ns


force -source :top:clk 0V

force -source :top:imm3 2.5V
force -source :top:imm2 0V
force -source :top:imm1 2.5V
force -source :top:imm0 0V

force -source :top:input_select 2.5V 

force -source :top:op2 0V
force -source :top:op1 0V
force -source :top:op0 0V

force -source :top:Rd2 0V
force -source :top:Rd1 2.5V
force -source :top:Rd0 2.5V

force -source :top:Rs2 0V
force -source :top:Rs1 0V
force -source :top:Rs0 0V

force -source :top:Rt2 0V
force -source :top:Rt1 0V
force -source :top:Rt0 0V
run 100 ns

force -source :top:clk 2.5V
run 100 ns


force -source :top:clk 0V

force -source :top:imm3 0V
force -source :top:imm2 0V
force -source :top:imm1 2.5V
force -source :top:imm0 0V

force -source :top:input_select 2.5V 

force -source :top:op2 0V
force -source :top:op1 0V
force -source :top:op0 0V

force -source :top:Rd2 2.5V
force -source :top:Rd1 0V
force -source :top:Rd0 0V

force -source :top:Rs2 0V
force -source :top:Rs1 0V
force -source :top:Rs0 0V

force -source :top:Rt2 0V
force -source :top:Rt1 0V
force -source :top:Rt0 0V
run 100 ns

force -source :top:clk 2.5V
run 100 ns


force -source :top:clk 0V

force -source :top:imm3 2.5V
force -source :top:imm2 2.5V
force -source :top:imm1 2.5V
force -source :top:imm0 2.5V

force -source :top:input_select 2.5V 

force -source :top:op2 0V
force -source :top:op1 0V
force -source :top:op0 0V

force -source :top:Rd2 2.5V
force -source :top:Rd1 0V
force -source :top:Rd0 2.5V

force -source :top:Rs2 0V
force -source :top:Rs1 0V
force -source :top:Rs0 0V

force -source :top:Rt2 0V
force -source :top:Rt1 0V
force -source :top:Rt0 0V
run 100 ns

force -source :top:clk 2.5V
run 100 ns

force -source :top:clk 0V

force -source :top:imm3 0V
force -source :top:imm2 0V
force -source :top:imm1 2.5V
force -source :top:imm0 2.5V

force -source :top:input_select 2.5V 

force -source :top:op2 0V
force -source :top:op1 0V
force -source :top:op0 0V

force -source :top:Rd2 2.5V
force -source :top:Rd1 2.5V
force -source :top:Rd0 0V

force -source :top:Rs2 0V
force -source :top:Rs1 0V
force -source :top:Rs0 0V

force -source :top:Rt2 0V
force -source :top:Rt1 0V
force -source :top:Rt0 0V
run 100 ns

force -source :top:clk 2.5V
run 100 ns

force -source :top:clk 0V

force -source :top:imm3 0V
force -source :top:imm2 0V
force -source :top:imm1 2.5V
force -source :top:imm0 2.5V

force -source :top:input_select 2.5V 

force -source :top:op2 0V
force -source :top:op1 0V
force -source :top:op0 0V

force -source :top:Rd2 2.5V
force -source :top:Rd1 2.5V
force -source :top:Rd0 2.5V

force -source :top:Rs2 0V
force -source :top:Rs1 0V
force -source :top:Rs0 0V

force -source :top:Rt2 0V
force -source :top:Rt1 0V
force -source :top:Rt0 0V
run 100 ns

force -source :top:clk 2.5V
run 100 ns


force -source :top:clk 0V

force -source :top:imm3 0V
force -source :top:imm2 0V
force -source :top:imm1 0V
force -source :top:imm0 0V

force -source :top:input_select 0V 

force -source :top:op2 0V
force -source :top:op1 0V
force -source :top:op0 0V

force -source :top:Rd2 0V
force -source :top:Rd1 0V
force -source :top:Rd0 0V

force -source :top:Rs2 0V
force -source :top:Rs1 0V
force -source :top:Rs0 2.5V

force -source :top:Rt2 0V
force -source :top:Rt1 2.5V
force -source :top:Rt0 0V
run 100 ns

force -source :top:clk 2.5V
run 100 ns


force -source :top:clk 0V

force -source :top:imm3 0V
force -source :top:imm2 0V
force -source :top:imm1 0V
force -source :top:imm0 0V

force -source :top:input_select 0V 

force -source :top:op2 0V
force -source :top:op1 0V
force -source :top:op0 2.5V

force -source :top:Rd2 0V
force -source :top:Rd1 0V
force -source :top:Rd0 0V

force -source :top:Rs2 0V
force -source :top:Rs1 2.5V
force -source :top:Rs0 2.5V

force -source :top:Rt2 2.5V
force -source :top:Rt1 0V
force -source :top:Rt0 0V
run 100 ns

force -source :top:clk 2.5V
run 100 ns


force -source :top:clk 0V

force -source :top:imm3 0V
force -source :top:imm2 0V
force -source :top:imm1 0V
force -source :top:imm0 0V

force -source :top:input_select 0V 

force -source :top:op2 0V
force -source :top:op1 2.5V
force -source :top:op0 0V

force -source :top:Rd2 0V
force -source :top:Rd1 0V
force -source :top:Rd0 0V

force -source :top:Rs2 2.5V
force -source :top:Rs1 0V
force -source :top:Rs0 2.5V

force -source :top:Rt2 2.5V
force -source :top:Rt1 2.5V
force -source :top:Rt0 0V
run 100 ns

force -source :top:clk 2.5V
run 100 ns


force -source :top:clk 0V

force -source :top:imm3 0V
force -source :top:imm2 0V
force -source :top:imm1 0V
force -source :top:imm0 0V

force -source :top:input_select 0V 

force -source :top:op2 2.5V
force -source :top:op1 0V
force -source :top:op0 0V

force -source :top:Rd2 0V
force -source :top:Rd1 0V
force -source :top:Rd0 0V

force -source :top:Rs2 2.5V
force -source :top:Rs1 2.5V
force -source :top:Rs0 0V

force -source :top:Rt2 2.5V
force -source :top:Rt1 2.5V
force -source :top:Rt0 2.5V
run 100 ns

force -source :top:clk 2.5V
run 100 ns



force -source :top:clk 0V

force -source :top:imm3 0V
force -source :top:imm2 0V
force -source :top:imm1 0V
force -source :top:imm0 0V

force -source :top:input_select 0V 

force -source :top:op2 0V
force -source :top:op1 0V
force -source :top:op0 2.5V

force -source :top:Rd2 0V
force -source :top:Rd1 0V
force -source :top:Rd0 2.5V

force -source :top:Rs2 0V
force -source :top:Rs1 0V
force -source :top:Rs0 0V

force -source :top:Rt2 2.5V
force -source :top:Rt1 2.5V
force -source :top:Rt0 0V
run 100 ns

force -source :top:clk 2.5V
run 100 ns


force -source :top:clk 0V

force -source :top:imm3 0V
force -source :top:imm2 0V
force -source :top:imm1 0V
force -source :top:imm0 0V

force -source :top:input_select 0V 

force -source :top:op2 0V
force -source :top:op1 0V
force -source :top:op0 0V

force -source :top:Rd2 0V
force -source :top:Rd1 2.5V
force -source :top:Rd0 0V

force -source :top:Rs2 0V
force -source :top:Rs1 0V
force -source :top:Rs0 0V

force -source :top:Rt2 2.5V
force -source :top:Rt1 2.5V
force -source :top:Rt0 0V
run 100 ns

force -source :top:clk 2.5V
run 100 ns
