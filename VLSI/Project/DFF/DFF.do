add wave \
        :DFF:Q
add wave \
        :DFF:D
add wave \
        :DFF:CLK
force -source :DFF:CLK 0v
force -source :DFF:D 0v
run 5000 ns

force -source :DFF:CLK 2.5v
run 5000 ns

force -source :DFF:CLK 0v
force -source :DFF:D 2.5v
run 5000 ns

force -source :DFF:CLK 2.5v
run 5000 ns

force -source :DFF:CLK 0v
force -source :DFF:D 0v
run 5000 ns

force -source :DFF:CLK 2.5v
run 10000 ns
