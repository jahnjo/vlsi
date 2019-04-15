add wave \
        :Mux81:IN0
add wave \
        :Mux81:IN1
add wave \
        :Mux81:IN2
add wave \
        :Mux81:IN3
add wave \
        :Mux81:IN4
add wave \
        :Mux81:IN5
add wave \
        :Mux81:IN6
add wave \
        :Mux81:IN7
add wave \
        :Mux81:S0
add wave \
        :Mux81:S1
add wave \
        :Mux81:S2
add wave \
        :Mux81:OUT1

force -source :Mux81:IN0 2.5v
force -source :Mux81:IN1 0v
force -source :Mux81:IN2 2.5v
force -source :Mux81:IN3 0v
force -source :Mux81:IN4 2.5v
force -source :Mux81:IN5 0v
force -source :Mux81:IN6 2.5v
force -source :Mux81:IN7 0v
force -source :Mux81:S0 0v
force -source :Mux81:S1 0v
force -source :Mux81:S2 0v
run 50 ns

force -source :Mux81:S0 2.5v
force -source :Mux81:S1 0v
force -source :Mux81:S2 0v
run 50 ns

force -source :Mux81:S0 0v
force -source :Mux81:S1 2.5v
force -source :Mux81:S2 0v
run 50 ns

force -source :Mux81:S0 2.5v
force -source :Mux81:S1 2.5v
force -source :Mux81:S2 0v
run 50 ns

force -source :Mux81:S0 0v
force -source :Mux81:S1 0v
force -source :Mux81:S2 2.5v
run 50 ns

force -source :Mux81:S0 2.5v
force -source :Mux81:S1 0v
force -source :Mux81:S2 2.5v
run 50 ns

force -source :Mux81:S0 0v
force -source :Mux81:S1 2.5v
force -source :Mux81:S2 2.5v
run 50 ns

force -source :Mux81:S0 2.5v
force -source :Mux81:S1 2.5v
force -source :Mux81:S2 2.5v
run 50 ns


