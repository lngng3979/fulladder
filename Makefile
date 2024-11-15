tb.exe:	*.v
	iverilog tb.v fulladder.v -o tb.exe

fulladder.vcd: tb.exe
	./tb.exe

debug: fulladder.vcd
	gtkwave fulladder.vcd
