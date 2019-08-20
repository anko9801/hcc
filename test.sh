#!/bin/bash

make hcc
for file in $( ls ./test | grep ^test | grep "\.c$"); do
	noex=${file%.*}
	gcc -c -o ./test/lib.o ./test/lib.c
	./hcc ./test/$noex.c > ./test/$noex.s
	gcc -c -o ./test/$noex.o ./test/$noex.s
	gcc -o ./test/$noex ./test/lib.o ./test/$noex.o
	rm ./test/$noex.o
	./test/$noex
	echo "$noex"
done
