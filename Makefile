hcc: hcc.c
	gcc -o hcc hcc.c -g

test: hcc
	./hcc -test
	./test.sh

clean:
	rm -f hcc *.o *~ tmp*
