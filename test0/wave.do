onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -group Navigation /tb_test0/test_name
add wave -noupdate -expand -group Navigation /tb_test0/tb_num_clocks
add wave -noupdate -group Parameters /tb_test0/SW_W
add wave -noupdate -group Parameters /tb_test0/PB_W
add wave -noupdate -group Parameters /tb_test0/LED_W
add wave -noupdate -group Parameters /tb_test0/SEGMENT_W
add wave -noupdate -group Parameters /tb_test0/DISPLAY_W
add wave -noupdate -group Parameters /tb_test0/CLK_PERIOD
add wave -noupdate -group Parameters /tb_test0/DUT/NUM_PUSH_BUTTONS
add wave -noupdate -group Parameters /tb_test0/DUT/NUM_SLIDE_SWITCHES
add wave -noupdate /tb_test0/DUT/CLK
add wave -noupdate /tb_test0/DUT/nRST
add wave -noupdate /tb_test0/DUT/PB
add wave -noupdate /tb_test0/DUT/SW
add wave -noupdate /tb_test0/DUT/LEDR
add wave -noupdate /tb_test0/DUT/SS
add wave -noupdate /tb_test0/DUT/count
add wave -noupdate /tb_test0/DUT/match
add wave -noupdate /tb_test0/DUT/PB_sync
add wave -noupdate /tb_test0/DUT/SW_sync
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {10647 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
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
WaveRestoreZoom {0 ps} {31500 ps}
