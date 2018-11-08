all: ftest

ftest: ftest.cpp fadd.cpp fsub.cpp futil.cpp util.cpp fmul.cpp
	g++ -Wall -o ftest ftest.cpp fadd.cpp fsub.cpp futil.cpp util.cpp fmul.cpp
	./ftest
clean:
	rm -rf ftest
