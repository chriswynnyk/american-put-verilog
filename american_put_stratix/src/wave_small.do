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
add wave -noupdate -format Literal -radix decimal /amer_put_tb/uut/addrgen_inst/timer2
add wave -noupdate -format Literal -radix decimal /amer_put_tb/uut/vex_inst/vexaddr
add wave -noupdate -format Literal -radix unsigned /amer_put_tb/uut/vex_inst/bank0_addr
add wave -noupdate -divider {Eval Node}
add wave -noupdate -format Literal -radix hexadecimal /amer_put_tb/uut/c0_eval_node/v_ex
add wave -noupdate -format Literal -radix hexadecimal /amer_put_tb/uut/c0_eval_node/v_hold
add wave -noupdate -format Literal -radix hexadecimal /amer_put_tb/uut/c0_eval_node/result
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {80510040000 ps} 0}
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
WaveRestoreZoom {80509777692 ps} {80510875516 ps}
