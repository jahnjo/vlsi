add wave \
        :decoder:Rd_2
add wave \
        :decoder:Rd_1
add wave \
        :decoder:Rd_0
add wave \
        :decoder:reg0
add wave \
        :decoder:reg1
add wave \
        :decoder:reg2
add wave \
        :decoder:reg3
add wave \
        :decoder:reg4
add wave \
        :decoder:reg5
add wave \
        :decoder:reg6
add wave \
        :decoder:reg7


force -source :decoder:Rd_2 0v
force -source :decoder:Rd_1 0v
force -source :decoder:Rd_0 0v
run 50 ns

force -source :decoder:Rd_2 0v
force -source :decoder:Rd_1 0v
force -source :decoder:Rd_0 2.5v
run 50 ns

force -source :decoder:Rd_2 0v
force -source :decoder:Rd_1 2.5v
force -source :decoder:Rd_0 0v
run 50 ns

force -source :decoder:Rd_2 0v
force -source :decoder:Rd_1 2.5v
force -source :decoder:Rd_0 2.5v
run 50 ns

force -source :decoder:Rd_2 2.5v
force -source :decoder:Rd_1 0v
force -source :decoder:Rd_0 0v
run 50 ns

force -source :decoder:Rd_2 2.5v
force -source :decoder:Rd_1 0v
force -source :decoder:Rd_0 2.5v
run 50 ns

force -source :decoder:Rd_2 2.5v
force -source :decoder:Rd_1 2.5v
force -source :decoder:Rd_0 0v
run 50 ns

force -source :decoder:Rd_2 2.5v
force -source :decoder:Rd_1 2.5v
force -source :decoder:Rd_0 2.5v
run 50 ns
