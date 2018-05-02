CC = gcc

default: libexamples.a

libexamples.a: examples.o
	ar rcs $@ $^
    
examples.o: examples.c examples.h
	$(CC) -c $<

clean:
	rm *.o *.a
