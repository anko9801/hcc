CC=gcc
CFLAGS=-std=c11 -g -static
SRCS=main.c parse.c codegen.c container.c
OBJS=$(SRCS:.c=.o)

hcc: $(OBJS)
	$(CC) -o hcc $(OBJS) $(LDFLAGS)

$(OBJS): hcc.h

test: hcc test
	./hcc test > tmp.s
	gcc -S -o lib.s lib.c -masm=intel
	gcc -c -o lib.o lib.s
	gcc -c -o tmp.o tmp.s
	gcc -o tmp lib.o tmp.o
	./tmp

clean:
	rm -f 9cc *.o *~ tmp*

.PHONY: test clean
