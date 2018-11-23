OBJS=fadd.o fsub.o futil.o util.o fmul.o fsqrt.o finv.o fdiv.o ftest.o
SRCS=$(OBJS:%.o=%.cpp)

CXXFLAGS=-Wall -g -std=c++11
TARGET=ftest
$(TARGET):$(OBJS)
	$(CXX) $(CFLAGS) -o $(TARGET) $(OBJS)
clean:
	rm -rf $(OBJS) ftest peda-session* .gdb_history core libfsim.a
