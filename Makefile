all: main filesO filesS

CC = gcc
override CFLAGS += -g -Wno-everything -pthread -lm -Wimplicit-function-declaration

SRCS = $(shell find . -name '.ccls-cache' -type d -prune -o -type f -name '*.c' -print)
HEADERS = $(shell find . -name '.ccls-cache' -type d -prune -o -type f -name '*.h' -print)

main: $(SRCS) $(HEADERS)
	$(CC) $(CFLAGS) $(SRCS) -o "$@"

main-debug: $(SRCS) $(HEADERS)
	$(CC) $(CFLAGS) -O0 $(SRCS) -o "$@"


filesO: $(SRCS) $(HEADERS)
	$(CC) -c -Wno-everything -pthread -lm -Wimplicit-function-declaration $(SRCS)
	
filesS: $(SRCS) $(HEADERS)
	$(CC) -S -Wno-everything -pthread -lm -Wimplicit-function-declaration $(SRCS)
	
clean:
	rm -f main main-debug *.o *.s