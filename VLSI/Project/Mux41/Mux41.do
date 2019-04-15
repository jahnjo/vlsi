add wave \
        :IN0
add wave \
        :IN1
add wave \
        :IN2
add wave \
        :IN3
add wave \
        :S0
add wave \
        :S1
add wave \
        :OUT1

force -source :IN0 2.5v
force -source :IN1 0v
force -source :IN2 2.5v
force -source :IN3 0v
force -source :S0 0v
force -source :S1 0v
run 50 ns

force -source :S0 2.5v
force -source :S1 0v
run 50 ns

force -source :S0 0v
force -source :S1 2.5v
run 50 ns

force -source :S0 2.5v
force -source :S1 2.5v
run 50 ns




