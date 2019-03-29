add wave \
        :mirror:A
add wave \
        :mirror:B
add wave \
        :mirror:Cin
add wave \
	:mirror:S
add wave \
	:mirror:Cout
force -source :mirror:A 2.5v
force -source :mirror:B 2.5v
force -source :mirror:Cin 0v
run 5000 ns

force -source :mirror:A 2.5v
force -source :mirror:B 0v
force -source :mirror:Cin 2.5v
run 5000 ns

force -source :mirror:A 0v
force -source :mirror:B 0v
force -source :mirror:Cin 2.5v
run 5000 ns

force -source :mirror:A 2.5v
force -source :mirror:B 2.5v
force -source :mirror:Cin 2.5v
run 5000 ns



