#do file VHDL_MOORE_FSM_Sequence_Detector.vhd

quit -sim
vcom VHDL_MOORE_FSM_Sequence_Detector.vhd
vsim VHDL_MOORE_FSM_Sequence_Detector -t ns

add wave -divider "Inputs:"
add wave -color "blue" clock
add wave -color "magenta" reset sequence_in 


add wave -divider "Signals:"
add wave  current_state next_state

add wave -divider "Outputs:"
add wave  -color "Forest Green"	 detector_out

force clock 0 0, 1 {10 ns} -r 20
force reset 1
run 20 ns

force reset 0
force sequence_in 1
run 25 ns

force sequence_in 0
run 25 ns


force sequence_in 1
run 50 ns


force reset 1