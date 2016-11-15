CC=g++
CFLAGS=-Wall
SRC= convert.cpp genre.cpp id3v2.cpp list.cpp
ID3=/home/sasl/shared/main3/env/tools/lib
OBJ=${SRC:.c=.o}

all: id3v2

%.o: %.c
	$(CC) -I $(ID3) -c -o $@ $<

id3v2: $(OBJ)
	$(CC) -L$(ID3) $(CFLAGS)-o $@  $<

genre.cpp:genre.h

clean:
	rm -f $(OBJ)

.PHONY: all clean
