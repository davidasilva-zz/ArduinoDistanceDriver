CC = g++
CFLAGS = -Wall  -g -std=c++0x 
INCLUDES = -I./
LFLAGS =
LIBRARIES =

OBJECTS = $(SOURCES:.cpp=.o)
MAIN = monitor

.PHONY: depend clean

doc:
	

all: $(MAIN)
	@echo  Arduino Car Monitor

$(MAIN): $(OBJECTS) 
	$(CC) $(CFLAGS) $(INCLUDES) -o $(MAIN) $(OBJECTS) $(LFLAGS) $(LIBRARIES)

.cpp.o:
	$(CC) $(CFLAGS) $(INCLUDES) -c $< -o $@

clean:
	find . -type f -name "*.o" -exec $(RM) {} \;
	$(RM) $(MAIN)

depend: $(SRCS)
	makedepend $(INCLUDES) $^

# DO NOT DELETE THIS LINE -- make depend needs it
