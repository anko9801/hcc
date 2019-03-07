ucc: ucc.c

test: ucc
	./test.sh

clean:
	rm -f ucc *.o *~ tmp*
