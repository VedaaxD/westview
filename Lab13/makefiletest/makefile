CC=gcc
CFLAGS=-I.
DEPS = hellomake.h
OBJ = main.o hellomake.o

%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

maketestexe: $(OBJ)
	$(CC) -o $@ $^ $(CFLAGS)

clean: 
	rm -f maketestexe hellomake.o main.o
