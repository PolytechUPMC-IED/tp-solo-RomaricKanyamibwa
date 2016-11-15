CC=g++
CFLAGS=-Wall
LDLIBS=-lid3
CLIBS=-lz
SRC= convert.cpp genre.cpp id3v2.cpp list.cpp
ID3=/home/sasl/shared/main3/env/tools/lib
OBJ=${SRC:.c=.o}
HOME=$(shell echo $HOME)
BIN=$(HOME)/TP_solo/bin/

all: id3v2 install

%.o: %.c
	$(CC) -I $(ID3) -c -o $@ $<

id3v2: $(OBJ)
	$(CC) -L$(ID3) $(CFLAGS)-o $@  $< $(LDLIBS) $(CLIBS)

genre.cpp: genre.h

install: id3v2
	mkdir -vp $(BIN)
	cp id3v2 $(BIN)/id3v2	

clean:
	rm -f $(OBJ) id3v2

.PHONY: all clean
