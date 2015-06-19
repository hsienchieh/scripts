

SOURCES = hello.c
EXECUTE = hello
OBJECTS = $(SOURCES:.c=.o) 

#TYPES=$(SOURCES:.c=.asm) $(SOURCES:.c=.li) $(SOURCES:.c=.s)
TYPES= $(SOURCES:.c=.li) $(SOURCES:.c=.s)

all : $(SOURCES) $(OBJECTS)


# pattern specific variable  %  <  @
# string substitution  and Analysis )

.c.o:
	clang $<  -emit-ast -o  $(subst c,ast,$(<)) 
	clang $< -S -emit-llvm -o  $(subst c,li,$(<)) 
	clang -S -mllvm --x86-asm-syntax=intel $< -o $(subst c,s,$(<))
	clang $<	
	llvm-as $(subst c,li,$(<))  	
	llc -filetype=obj $(subst c,li,$(<))  	
run:
	./a.out

clean:
	rm -f  *.li *.s *.asm *.out *.bc *.ast *.o

test:
	make --dry-run

print-%  : ; @echo $* = $($*)

