CC = g++
CFLAGS = -std=c++0x

main: asmgen.cpp main.cpp
	$(CC) $(CFLAGS) $^ -o $@

clean:
	rm -rf *.o main
