SDCCFOLDER=/home/cyrille/src/sdcc
CC=$(SDCCFOLDER)/bin/sdcc -DSDCC3
SRCFOLDER=../
OBJFOLDER=build/
CHIP=18f4550
LKR=-Wl 18f4550.lkr
SDCCINCLUDE=$(SDCCFOLDER)/share/sdcc
INCLUDEPATH=-I$(SDCCINCLUDE)/include -I$(SDCCINCLUDE)/include/pic -I$(SDCCINCLUDE)/non-free/include/pic16
LIBRARIES=-llibio18f4550.lib -llibc18f.lib
INCLUDELIB=-L$(SDCCFOLDER)/share/sdcc/lib/pic16 -L$(SDCCFOLDER)/share/sdcc/non-free/lib/pic16
CFLAGS=-mpic16 $(INCLUDEPATH) -p$(CHIP) -Dpic$(CHIP) -D__$(CHIP)
LDFLAGS=-mpic16
OBJEXT=o
EXEC=release/chenille.hex
SRC= $(wildcard ../*.c)
OBJ= $(subst $(SRCFOLDER),$(OBJFOLDER),$(SRC:.c=.$(OBJEXT)))
DEL=rm -rf
PIKKIT=/usr/bin/pk2cmd

all: $(EXEC)

$(EXEC): $(OBJ)
	$(CC) -o $@ $< $(LDFLAGS) $(INCLUDELIB) $(LIBRARIES) $(LKR)

$(OBJFOLDER)%.$(OBJEXT): $(SRCFOLDER)%.c
	$(CC) -o $@ -c $< $(CFLAGS)

clean:
	$(DEL) build/*.*

mrproper: clean
	$(DEL) $(EXEC)

transfer: all
	$(PIKKIT) -P -M -F`pwd`/$(EXEC)
