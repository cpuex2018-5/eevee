OBJS=main.o sim.o util.o decode.o debug.o fsim/fadd.o fsim/fdiv.o fsim/finv.o fsim/fmul.o fsim/fsqrt.o fsim/fsub.o fsim/futil.o
SRCS=$(OBJS:%.o=%.cpp)
CXXFLAGS=-Wall -mtune=native -march=native -O3 -std=c++11
TARGET=eevee_sim
$(TARGET):$(OBJS)
	$(CXX) $(CFLAGS)  -o $(TARGET) $(OBJS)
clean:
	rm -rf $(OBJS) eevee_sim peda-session* .gdb_history core output
runtest:
	ulimit -c unlimited
	./eevee_sim -d test/fib3.bin
