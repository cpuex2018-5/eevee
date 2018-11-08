all: ftest

ftest: ftest.cpp fadd.cpp util.cpp fispos.cpp fless.cpp fabs.cpp fisneg.cpp fiszero.cpp fneg.cpp
	g++ -Wall -o ftest ftest.cpp fadd.cpp util.cpp fispos.cpp fless.cpp fabs.cpp fisneg.cpp fiszero.cpp fneg.cpp
	./ftest
clean:
	rm -rf ftest
