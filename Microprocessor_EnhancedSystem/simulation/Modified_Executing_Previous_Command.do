onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /microprocessor/cpu_clk
add wave -noupdate /microprocessor/cpu_rst
add wave -noupdate -radix hexadecimal /microprocessor/cpu_output
add wave -noupdate -radix hexadecimal /microprocessor/D_addr_bus
add wave -noupdate -radix hexadecimal /microprocessor/D_mdin_bus
add wave -noupdate -radix hexadecimal /microprocessor/D_mdout_bus
add wave -noupdate -radix hexadecimal /microprocessor/D_mem_addr
add wave -noupdate -radix hexadecimal /microprocessor/D_Mre_s
add wave -noupdate -radix hexadecimal /microprocessor/D_Mwe_s
add wave -noupdate -height 30 -radix hexadecimal /microprocessor/D_cur_state
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {561791 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 207
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 100000
configure wave -griddelta 10
configure wave -timeline 1
configure wave -timelineunits ns
update
WaveRestoreZoom {936454 ps} {1136454 ps}
