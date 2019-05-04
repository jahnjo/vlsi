add wave \
        :imm_mux:input_select
add wave \
        :imm_mux:busW_result_3
add wave \
        :imm_mux:busW_result_2
add wave \
        :imm_mux:busW_result_1
add wave \
        :imm_mux:busW_result_0
add wave \
        :imm_mux:result_3
add wave \
        :imm_mux:result_2
add wave \
        :imm_mux:result_1
add wave \
        :imm_mux:result_0
add wave \
        :imm_mux:imm_3
add wave \
        :imm_mux:imm_2
add wave \
        :imm_mux:imm_1
add wave \
        :imm_mux:imm_0


force -source :imm_mux:imm_3 2.5v
force -source :imm_mux:imm_2 2.5v
force -source :imm_mux:imm_1 2.5v
force -source :imm_mux:imm_0 2.5v
force -source :imm_mux:result_3 0v
force -source :imm_mux:result_2 0v
force -source :imm_mux:result_1 0v
force -source :imm_mux:result_0 0v
run 50 ns

force -source :imm_mux:input_select 0v
run 50 ns

force -source :imm_mux:input_select 2.5v
run 50 ns

force -source :imm_mux:input_select 0v
run 50 ns

force -source :imm_mux:input_select 2.5v
run 50 ns

