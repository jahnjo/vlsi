add wave \
        :alu:ALUop_0
add wave \
        :alu:ALUop_1
add wave \
        :alu:A
add wave \
        :alu:B
add wave \
        :alu:Cin
add wave \
        :alu:result
add wave \
        :alu:Cout


force -source :alu:ALUop_0 2.5v
force -source :alu:ALUop_1 0v
force -source :alu:A 0v
force -source :alu:B 0v
force -source :alu:Cin 2.5v
run 50 ns

force -source :alu:ALUop_0 2.5v
force -source :alu:ALUop_1 0v
force -source :alu:A 0v
force -source :alu:B 0v
force -source :alu:Cin 2.5v
run 50 ns

force -source :alu:ALUop_0 2.5v
force -source :alu:ALUop_1 0v
force -source :alu:A 0v
force -source :alu:B 2.5v
force -source :alu:Cin 2.5v
run 50 ns

force -source :alu:ALUop_0 2.5v
force -source :alu:ALUop_1 0v
force -source :alu:A 0v
force -source :alu:B 2.5v
force -source :alu:Cin 2.5v
run 50 ns

force -source :alu:ALUop_0 2.5v
force -source :alu:ALUop_1 0v
force -source :alu:A 2.5v
force -source :alu:B 0v
force -source :alu:Cin 2.5v
run 50 ns

force -source :alu:ALUop_0 2.5v
force -source :alu:ALUop_1 0v
force -source :alu:A 2.5v
force -source :alu:B 0v
force -source :alu:Cin 2.5v
run 50 ns

force -source :alu:ALUop_0 2.5v
force -source :alu:ALUop_1 0v
force -source :alu:A 2.5v
force -source :alu:B 2.5v
force -source :alu:Cin 2.5v
run 50 ns

force -source :alu:ALUop_0 2.5v
force -source :alu:ALUop_1 0v
force -source :alu:A 2.5v
force -source :alu:B 2.5v
force -source :alu:Cin 2.5v
run 50 ns
