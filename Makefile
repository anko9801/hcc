CC=gcc
CFLAGS=-std=c11 -g -static
SRCS=$(wildcard *.c)
OBJS=$(SRCS:.c=.o)
TEST=$(wildcard *.c)
TESTO=$(TEST:.c=.o)

hcc: $(OBJS)
	$(CC) -o hcc $(OBJS) $(LDFLAGS)

$(OBJS): hcc.h

%.hc: hcc ./test/lib.o
	gcc -c -o ./test/lib.o ./test/lib.c
	./hcc ./test/$*.c > ./test/$*.s
	gcc -c -o ./test/$*.o ./test/$*.s
	gcc -o ./test/$* ./test/lib.o ./test/$*.o

test%: hcc ./test/lib.o
	gcc -c -o ./test/lib.o ./test/lib.c
	./hcc ./test/test$*.c > ./test/test$*.s
	gcc -c -o ./test/test$*.o ./test/test$*.s
	gcc -o ./test/test$* ./test/lib.o ./test/test$*.o
	./test/test$*

clean:
	rm -f 9cc *.o *~ tmp*

.PHONY: test% clean
