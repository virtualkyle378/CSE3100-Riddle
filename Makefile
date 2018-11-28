CC=gcc
CFLAGS=-O3 -s -Wall -std=c99
TARGETS= decoder

all: $(TARGETS)

decoder: decoder.c
	$(CC) -shared -fPIC -Wall -std=c99 -o $@.so $@.c

clean:
	rm -rf *.o *~ $(TARGETS).so
