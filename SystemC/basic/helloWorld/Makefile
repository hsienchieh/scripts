# source setenv.sh                    
# before run this 


all:
	g++ -I. -I$(SYSTEMC_HOME)/include -L. -L$(SYSTEMC_HOME)/lib-linux64 -o sim hello.cpp -lsystemc -lm

run:
	echo $(LD_LIBRARY_PATH)
	./sim

clean:
	rm -f sim
