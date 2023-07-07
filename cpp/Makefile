CC = g++
CFLAGS = -Wall -pedantic -std=c++17

# List all your source files
SOURCES = main.cpp Token.cpp Tokenizer.cpp

# Derive the object file names from the source file names
OBJECTS = $(SOURCES:.cpp=.o)

# The main target (executable)
TARGET = tokenize

all: $(TARGET)

$(TARGET): $(OBJECTS)
	$(CC) $(CFLAGS) -o $@ $(OBJECTS)

%.o: %.cpp
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(OBJECTS) $(TARGET)
