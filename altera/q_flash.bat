for /r %i in (*.sof) do @quartus_pgm  -c USB-Blaster[USB-0] --mode=JTAG -o "p;%~ni.sof"  
