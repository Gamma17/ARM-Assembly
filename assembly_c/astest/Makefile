P=adder
OBJECTS=add.o add_test.o
CFLAGS=`pkg-config --cflags glib-2.0` -g -Wall -O3
LDLIBS=`pkg-config --libs glib-2.0` 
CC=c99

$(P): $(OBJECTS)
	$(CC) $(CFLAGS) ${LDLIBS} $(OBJECTS) -o $(P)

clean:
	rm -f *.o
