compile:
	iverilog -g2012 -o sim.out mux_2in.v tb_2_in_mux.v

run: compile
	vvp sim.out | tee mux_2in.log

check: run

wave: run
	gtkwave dump.vcd &

clean:
	rm -f sim.out dump.vcd mux_2in.log

.PHONY: compile run check wave clean