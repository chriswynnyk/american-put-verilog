onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider {Top Level}
add wave -noupdate -format Logic -label clk /amer_put_tb/clk
add wave -noupdate -format Logic -label nrst /amer_put_tb/nrst
add wave -noupdate -format Literal -radix unsigned /amer_put_tb/uut/value_membank_inst/rdaddr
add wave -noupdate -format Literal -radix unsigned /amer_put_tb/uut/value_membank_inst/mem_wraddr
add wave -noupdate -format Literal -radix unsigned /amer_put_tb/uut/wraddr
add wave -noupdate -format Logic /amer_put_tb/uut/value_membank_inst/mem_wren
add wave -noupdate -format Literal -radix decimal /amer_put_tb/uut/addrgen_inst/counter1
add wave -noupdate -format Literal -radix decimal /amer_put_tb/uut/addrgen_inst/counter2
add wave -noupdate -format Literal -radix decimal /amer_put_tb/uut/addrgen_inst/timer1
add wave -noupdate -format Literal -radix decimal /amer_put_tb/uut/addrgen_inst/timer2
add wave -noupdate -format Logic /amer_put_tb/uut/addrgen_inst/t3_expire
add wave -noupdate -divider {Current debug}
add wave -noupdate -format Logic /amer_put_tb/uut/vex_inst/odd
add wave -noupdate -format Literal /amer_put_tb/uut/vex_inst/sel
add wave -noupdate -format Literal -radix decimal /amer_put_tb/uut/vex_inst/vexaddr
add wave -noupdate -format Literal -radix unsigned /amer_put_tb/uut/vex_inst/bank0_addr
add wave -noupdate -format Literal -radix hexadecimal /amer_put_tb/uut/vex_inst/v_ex
add wave -noupdate -format Literal -radix hexadecimal /amer_put_tb/uut/vex_inst/compute_vex_inst/index_fp
add wave -noupdate -format Literal -radix hexadecimal /amer_put_tb/uut/vex_inst/compute_vex_inst/mult_result
add wave -noupdate -format Literal -radix hexadecimal /amer_put_tb/uut/vex_inst/compute_vex_inst/exp_result
add wave -noupdate -format Literal -radix hexadecimal /amer_put_tb/uut/vex_inst/compute_vex_inst/sub_result
add wave -noupdate -format Literal -radix unsigned /amer_put_tb/uut/vex_inst/wraddr
add wave -noupdate -format Literal /amer_put_tb/uut/vex_inst/wren
add wave -noupdate -divider {Control Signals}
add wave -noupdate -format Logic -label start_s1 /amer_put_tb/uut/start_s1
add wave -noupdate -format Logic -label start_s2 /amer_put_tb/uut/start_s2
add wave -noupdate -format Logic /amer_put_tb/uut/done_s1
add wave -noupdate -divider {Eval Node}
add wave -noupdate -format Literal -radix hexadecimal /amer_put_tb/uut/c0_eval_node/p_up
add wave -noupdate -format Literal -radix hexadecimal /amer_put_tb/uut/c0_eval_node/p_down
add wave -noupdate -format Literal -radix hexadecimal /amer_put_tb/uut/c0_eval_node/v_up
add wave -noupdate -format Literal -radix hexadecimal /amer_put_tb/uut/c0_eval_node/v_down
add wave -noupdate -format Literal -radix hexadecimal /amer_put_tb/uut/c0_eval_node/v_ex
add wave -noupdate -format Literal -radix hexadecimal /amer_put_tb/uut/c0_eval_node/v_hold
add wave -noupdate -format Literal -radix hexadecimal /amer_put_tb/uut/c0_eval_node/result
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {390704375 ps} 0}
configure wave -namecolwidth 406
configure wave -valuecolwidth 109
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {562083840 ps}
