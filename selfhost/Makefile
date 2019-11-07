CC=gcc
CFLAGS=-std=c11 -g -static
OBJS=analyse.o codegen.o container.o error.o main.o parse.o preprocessor.o token.o

hcc: $(OBJS)
	$(CC) -o hcc $(OBJS) $(LDFLAGS)

link:
	gcc -o ./hcc_self $(OBJS)

.PHONY: test% clean
