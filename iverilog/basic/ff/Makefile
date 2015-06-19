
compile:
	iverilog -o d_ff.vvp tb_d_ff.v d_ff.v

run:
	vvp d_ff.vvp
    
help:
	man iveriog

clean:
	rm -f d_ff
	rm -f d_ff.vvp
	rm -f *.vcd
wave:
	gtkwave dump.vcd


