#デバッグようにかえてます
CC = g++
CFLAGS = -std=c++0x -Wall -O2 -g

main: utils.o bingen.o main.cpp
	$(CC) $(CFLAGS) $^ -o $@

bingen_test: utils.o bingen.o bingen_test.cpp
	$(CC) $(CFLAGS) $^ -o $@

bingen.o: bingen.cpp
	$(CC) $(CFLAGS) -c $^ -o $@

utils.o: utils.cpp
	$(CC) $(CFLAGS) -c $^ -o $@

clean:
	rm -rf *.o main bingen_test core peda-session* .gdb_history *.dSYM **/*.asm
