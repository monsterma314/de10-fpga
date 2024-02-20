onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tb_test_adder/CLK_PERIOD
add wave -noupdate /tb_test_adder/GATE_DELAY
add wave -noupdate /tb_test_adder/tb_clk
add wave -noupdate /tb_test_adder/tb_nrst
add wave -noupdate /tb_test_adder/tb_num_clocks
add wave -noupdate /tb_test_adder/test_num
add wave -noupdate -expand -group {Adder Inputs} -color Magenta /tb_test_adder/tb_cin
add wave -noupdate -expand -group {Adder Inputs} -color Magenta /tb_test_adder/tb_b
add wave -noupdate -expand -group {Adder Inputs} -color Magenta /tb_test_adder/tb_a
add wave -noupdate -expand -group {Adder Outputs} -color {Medium Spring Green} /tb_test_adder/tb_cout
add wave -noupdate -expand -group {Adder Outputs} -color {Medium Spring Green} /tb_test_adder/tb_sum
add wave -noupdate -expand -group {Expected Outputs} -color Orange -subitemconfig {{/tb_test_adder/tb_adder[1]} {-color Orange -height 17} {/tb_test_adder/tb_adder[0]} {-color Orange -height 17}} /tb_test_adder/tb_adder
add wave -noupdate -expand -group {Expected Outputs} -color Orange {/tb_test_adder/tb_adder[1]}
add wave -noupdate -expand -group {Expected Outputs} -color Orange {/tb_test_adder/tb_adder[0]}
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {62000 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 209
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ps} {94100 ps}
