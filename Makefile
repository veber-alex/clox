SOURCES := $(wildcard *.c)
HEADERS := $(wildcard *.h)
OBJECTS := $(SOURCES:.c=.o)

default: clox


clox: $(OBJECTS) $(SOURCES) $(HEADERS)
	clang $(OBJECTS) -o $@

clean:
	rm *.o clox