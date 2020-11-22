CC		= clang
CFLAGS	= 
LDFLAGS =
OBJFILES= driver.o file1.o file2.o
TARGET  = makefileAssignment


all : $(TARGET)
	
$(TARGET) : driver.o file1.o file2.o
	$(CC) -o $(TARGET) $(OBJFILES)

driver.o : driver.c headers.h
	$(CC) -c -o driver.o driver.c
	
file1.o : file1.c headers.h
	$(CC) -c -o file1.o file1.c
	
file2.o : file2.c headers.h
	$(CC) -c -o file2.o file2.c
	
.PHONY: clean
clean : 
	-rm -f $(OBJFILES) $(TARGET) *~
	

	