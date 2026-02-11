all:
		gcc -Wall -g -O3 vc3000.c debug.c 

clang:
		clang -O3 -pg -mtune=znver2 -march=znver2 vc4000.c debug.c

fast:
		gcc -O3 -Ofast -ftree-vectorize -msse4.2 -mtune=native -march=native vc3000.c debug.c chash.c 

clean:
	rm -f a.out

