
add wave \
        :A 
add wave \
        :B
add wave \
        :Y
add wave \
        :S


force -source :A 0v
force -source :B 0v
force -source :S 0v
run 50 ns

force -source :A 0v
force -source :B 2.5v
force -source :S 2.5v
run 50 ns

force -source :A 2.5v
force -source :B 0v
force -source :S 0v
run 50 ns

force -source :A 2.5v
force -source :B 2.5v
force -source :S 2.5v
run 50 ns

