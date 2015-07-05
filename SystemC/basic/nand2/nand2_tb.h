#ifndef _TB_H
#define _TB_H

SC_MODULE(nand2_tb) {
	//input 
	sc_in <bool>  f;	
	
	// output
	sc_out <bool>  a,b ;	
	sc_in_clk clk;
	void gen_input(){
		wait ();
		a = 0;
		b = 0;
  
		wait ();
		a = 1;
		b = 0;

		wait ();
		a = 0;
		b = 1;

		wait ();
		a = 1;
		b = 1;
	
		wait(100);
	}	

	void display_variable() {
		cout << "a=" << a <<endl;
		cout << "b=" << b <<endl;
		cout << "f=" << f <<endl;
	}

	SC_CTOR(nand2_tb) {
		SC_CTHREAD(gen_input,clk.pos());
		SC_METHOD( display_variable);
		sensitive << f << a << b;
		dont_initialize();
	}

};

#endif

