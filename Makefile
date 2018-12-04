SOURCES=pointers.c
OBJECTS=$(SOURCES:.c=.o)

all: $(SOURCES) libpointers.so

%.o: %.c $(HEADERS)
	@echo "Compiling source file $< ..."
	$(CC) -c -o $@ $<

libpointers.so: $(OBJECTS)
	@echo ""        
	@echo "Linking share library $@ ..."
	$(CC) -shared $(OBJECTS) -o $@ 
	
	@echo ""        
	@echo "The shared library $< has been created successfully."
	
	
clean:
	@echo "Removing object files *.o ..."
	@-rm -f *.o
	@echo "Removing shared library ..."
	@-rm -f *.so
