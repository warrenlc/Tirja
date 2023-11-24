CC = gcc
CFLAGS = -Wall -pedantic -g 
STD = -std=c99

lex: test.c lexer.c
	$(CC) $(CFLAGS) $(STD) -o $@ $^



.PHONY: clean
clean:
	rm -f lex *.o
	rm -rf lex.dSYM/
