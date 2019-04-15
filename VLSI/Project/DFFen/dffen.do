add wave \
        :En
add wave \
        :CLK
add wave \
        :D
add wave \
        :Q


force -source :En 2.5v
force -source :CLK 0v
force -source :D 0v
run 50 ns

force -source :En 2.5v
force -source :CLK 2.5v
force -source :D 0v
run 50 ns

force -source :En 2.5v
force -source :CLK 0v
force -source :D 2.5v
run 50 ns

force -source :En 2.5v
force -source :CLK 2.5v
force -source :D 2.5v
run 50 ns

force -source :En 2.5v
force -source :CLK 0v
force -source :D 2.5v
run 50 ns

force -source :En 2.5v
force -source :CLK 2.5v
force -source :D 0v
run 50 ns

force -source :En 2.5v
force -source :CLK 0v
force -source :D 0v
run 50 ns

force -source :En 2.5v
force -source :CLK 2.5v
force -source :D 0v
run 50 ns
