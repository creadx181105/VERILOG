DUT ?= not_gate

compile:
	mkdir -p sim docs waves
	iverilog -g2012 -o sim/sim.out rtl/$(DUT).v tb/tb_$(DUT).v

run: compile
	vvp sim/sim.out | tee docs/$(DUT).log

check: run

wave: run
	gtkwave waves/dump.vcd &

clean:
	rm -f sim/sim.out waves/dump.vcd docs/$(DUT).log

.PHONY: compile run check wave clean