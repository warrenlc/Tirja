CC = gcc
CFLAGS = -Wall -pedantic -g
LDLIBS = -lm

whisper: whisper.o whisper.tab.o whisper.lex.o
	$(CC) $(CFLAGS) -o $@ $^ $(LDLIBS)

whisper.tab.c whisper.tab.h: whisper.y
	bison -d $<

whisper.lex.c: whisper.l whisper.tab.h
	flex -o $@ $<

whisper.o: whisper.c whisper.tab.h
	$(CC) $(CFLAGS) -c -o $@ $<

whisper.tab.o: whisper.tab.c whisper.tab.h
	$(CC) $(CFLAGS) -c -o $@ $<

whisper.lex.o: whisper.lex.c whisper.tab.h
	$(CC) $(CFLAGS) -c -o $@ $<
	
.PHONY: clean
clean:
	rm -f whisper whisper.tab.c whisper.tab.h whisper.lex.c *.o
	rm -rf whisper.dSYM/

