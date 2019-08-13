CC=gcc
CFLAGS=-std=c11 -g -static
SRCS=main.c parse.c codegen.c container.c
OBJS=$(SRCS:.c=.o)
TEST=$(wildcard *.hc)
TESTO=$(TEST:.hc=.o)

hcc: $(OBJS)
	$(CC) -o hcc $(OBJS) $(LDFLAGS)

$(OBJS): hcc.h

test%: hcc
	./hcc ./test/test$*.hc > ./test/test$*.s
	gcc -c -o ./test/lib.o ./test/lib.c
	gcc -c -o ./test/test$*.o ./test/test$*.s
	gcc -o ./test/test$* ./test/lib.o ./test/test$*.o
	./test/test$*

clean:
	rm -f 9cc *.o *~ tmp*

.PHONY: test% clean
