all: ftest

ftest: ftest.cpp fadd.cpp fsub.cpp futil.cpp util.cpp 
	g++ -Wall -o ftest ftest.cpp fadd.cpp fsub.cpp futil.cpp util.cpp
	./ftest
clean:
	rm -rf ftest
