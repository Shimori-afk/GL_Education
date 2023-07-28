CFLAGS = -Wno-implicit-function-declaration

all:final

final: main.o searchDirectory.o
	echo "Linking and producing the final application"
	g++ -o main.exe main.o -L. -l searchDirectory
	g++ -c solution/main.cpp -o main.o

main.o: solution/main.cpp
	echo "Compiling the main file"
	g++ $(CFLAGS) -c solution/main.cpp


clean:
	echo "Removing everything but the source files"
	del *.o