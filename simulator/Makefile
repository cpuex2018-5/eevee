OBJS=main.o sim.o util.o decode.o
SRCS=$(OBJS:%.o=%.c)
CFLAGS=-g -Wall
TARGET=eevee_sim
$(TARGET):$(OBJS)
	$(CC) $(CFLAGS) -o $(TARGET) $(OBJS)

clean:
	rm -rf $(OBJS) eevee_sim
