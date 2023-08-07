CC = gcc
CFLAGS = -Wall -Wextra -pedantic
STD = -std=c89

tirja_string: tirja_string.c
	$(CC) $(CFLAGS) $(STD) -o $@ $^

.PHONY: clean
clean:
	rm -f tirja_string *.o
	rm -rf tirja_string.dSYM/
