add wave \
        :control:op_2
add wave \
        :control:op_1
add wave \
        :control:op_0
add wave \
        :control:ALU_OP_1
add wave \
        :control:ALU_OP_0
add wave \
        :control:ALU_SRC
add wave \
        :control:PC_SRC
add wave \
        :control:REG_WRITE



force -source :control:op_2 0v
force -source :control:op_1 0v
force -source :control:op_0 0v
run 50 ns

force -source :control:op_2 0v
force -source :control:op_1 0v
force -source :control:op_0 2.5v
run 50 ns

force -source :control:op_2 0v
force -source :control:op_1 2.5v
force -source :control:op_0 0v
run 50 ns

force -source :control:op_2 0v
force -source :control:op_1 2.5v
force -source :control:op_0 2.5v
run 50 ns

force -source :control:op_2 2.5v
force -source :control:op_1 0v
force -source :control:op_0 0v
run 50 ns

force -source :control:op_2 2.5v
force -source :control:op_1 0v
force -source :control:op_0 2.5v
run 50 ns

force -source :control:op_2 2.5v
force -source :control:op_1 2.5v
force -source :control:op_0 0v
run 50 ns

force -source :control:op_2 2.5v
force -source :control:op_1 2.5v
force -source :control:op_0 2.5v
run 50 ns
