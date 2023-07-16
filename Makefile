CC = gcc
CFLAGS = -Wall -pedantic -g
STD = -std=c99

tirja: tirja.c lexer/lexer.c parser/parser.c
	$(CC) $(CFLAGS) $(STD) -o $@ $^



.PHONY: clean
clean:
	rm -f tirja *.o
	rm -rf tirja.dSYM/
