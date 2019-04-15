add wave \
        :A
add wave \
        :B
add wave \
        :C
add wave \
        :Y


force -source :A 0v
force -source :B 0v
force -source :C 0v
run 50 ns

force -source :A 2.5v
force -source :B 0v
force -source :C 0v
run 50 ns

force -source :A 0v
force -source :B 2.5v
force -source :C 0v
run 50 ns

force -source :A 2.5v
force -source :B 2.5v
force -source :C 0v
run 50 ns

force -source :A 0v
force -source :B 0v
force -source :C 2.5v
run 50 ns

force -source :A 2.5v
force -source :B 0v
force -source :C 2.5v
run 50 ns

force -source :A 0v
force -source :B 2.5v
force -source :C 2.5v
run 50 ns

force -source :A 2.5v
force -source :B 2.5v
force -source :C 2.5v
run 50 ns





