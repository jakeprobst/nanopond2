npx: nanopond-2.0.c
	gcc --verbose 									\
		-Wall									\
		-O3 -msse2 nanopond-2.0.c -o npx					\
		`${HOME}/local/install/SDL-1.2.15/bin/sdl-config --cflags --libs`	

test:  npx
	rm -f 100000000.dump.csv
	/usr/bin/time ./npx
	diff -u 100000000.dump.csv.baseline 100000000.dump.csv

clean:
	rm -f ./npx

test:  npx
	/usr/bin/time ./npx
		

