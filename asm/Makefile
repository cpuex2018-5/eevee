CC = g++
CFLAGS = -std=c++0x -Wall -O2

main: bingen.o main.cpp
	$(CC) $(CFLAGS) $^ -o $@

bingen_test: bingen.o bingen_test.cpp
	$(CC) $(CFLAGS) $^ -o $@

bingen.o: bingen.cpp
	$(CC) $(CFLAGS) -c $^ -o $@

clean:
	rm -rf *.o main bingen_test
