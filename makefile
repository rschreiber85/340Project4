CC=gcc
CFLAGS= -std=c99 -g
DEPS = smsh.h
OBJ = smsh1.o execute.o splitline.o

%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

shell: $(OBJ)
	$(CC) -o $@ $^ $(CFLAGS)
