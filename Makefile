CC=clang++
CFLAGS=-c -pedantic-errors -Wall -Wextra -Werror -gdwarf-4 -std=c++20
LDFLAGS=
SOURCES=aviasales.cpp
OBJECTS=$(SOURCES:.cpp=.o)
EXECUTABLE=aviasales

all: $(SOURCES) $(EXECUTABLE)

$(EXECUTABLE): $(OBJECTS)
	$(CC) $(LDFLAGS) $(OBJECTS) -o $@

.cpp.o:
	$(CC) $(CFLAGS) $< -o $@

clean:
	rm -rf *.o $(EXECUTABLE)
