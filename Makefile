CXX=g++
CXXFLAGS=-Os -Wall -Wextra -pedantic
ELFS=hello

all: $(ELFS)
	@echo "finished"

hello: main.o hello.o
	$(CXX) -o hello hello.o main.o

%.o: %.cpp
	$(CXX) $(CXXFLAGS) -c $<

test:
	./hello

clean:
	@rm -f *.o
	@rm -f *~

mrproper: clean
	@rm -f hello
