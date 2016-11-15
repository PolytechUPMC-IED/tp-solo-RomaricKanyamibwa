CC=g++
CFLAGS=-Wall
LDLIBS=-lid3
CLIBS=-lz
SRC= convert.cpp genre.cpp id3v2.cpp list.cpp
ID3=/home/sasl/shared/main3/env/tools/
OBJ=${SRC:.cpp=.o}
BIN=~/TP_solo/bin/
MAN=~/TP_solo/man/

all: id3v2 install

%.o: %.cpp
	$(CC) -I $(ID3)include -DVERSION="\"${VERSION}\"" -c -o $@ $<

id3v2: $(OBJ)
	$(CC) -L$(ID3)lib $(CFLAGS) -o $@  $(OBJ) $(LDLIBS) $(CLIBS)

genre.cpp: genre.h

install: id3v2
	mkdir -vp $(BIN)
	mkdir -vp $(MAN)/man1
	cp id3v2 $(BIN)id3v2	
	nroff -man ../id3v2.1 > $(MAN)man1/id3v2.1

clean:
	rm -f $(OBJ) id3v2

distclean:clean
	rm -rf ~/TP_solo/

.PHONY: all clean

#Question  8: avec la commande suivante nous pouvons modifier la variable :"make LD_LIBRARY_PATH=new_directory"  où new_directory est le nouveau repertoire
#Question 9: avec export PATH=$PATH:</chemin/du/fichier> ou on peut l'ajouter dans .bashrc 
