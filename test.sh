#!/bin/bash

try() {
	expected="$1"
	input="$2"

	#./hcc "$input" > tmp.s
	#gcc -o tmp tmp.s
	./tmp
	actual="$?"

	if [ "$actual" = "$expected" ]; then
		echo "$input => $actual"
	else
		echo "$input expected, but got $actual"
		exit 1
	fi
}

try 12 "test"

echo OK
