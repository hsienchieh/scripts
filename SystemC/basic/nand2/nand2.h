#ifndef _NAND2_H
#define _NAND2_H

#include <systemc.h>


SC_MODULE(nand2) {

	//input pin
	sc_in<bool> A;
	sc_in<bool> B;
	//output pin
	sc_out <bool> F;
	
	void do_nand2() {
		F = ! ( A & B);
	};

	SC_CTOR(nand2) {
		SC_METHOD(do_nand2);
		sensitive<< A << B; 

	}

};
#endif

