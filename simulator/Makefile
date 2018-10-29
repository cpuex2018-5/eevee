OBJS=main.o sim.o util.o decode.o debug.o
SRCS=$(OBJS:%.o=%.cpp)
CXXFLAGS=-Wall -g -std=c++11
TARGET=eevee_sim
$(TARGET):$(OBJS)
	$(CXX) $(CFLAGS) -o $(TARGET) $(OBJS)

clean:
	rm -rf $(OBJS) eevee_sim peda-session* .gdb_history core output
runtest:
	ulimit -c unlimited
	./eevee_sim -d test/fib.bin
