
CC ?=	gcc
CXX ?=	g++

all: multichoose multipermute

#multichoose_recursive: multichoose_recursive.cpp
#	${CXX} $(LDFLAGS) $(CPPFLAGS) $(CXXFLAGS) multichoose_recursive.cpp -o multichoose_recursive

multichoose: multichoose.cpp multichoose.h
	${CXX} $(LDFLAGS) $(CPPFLAGS) $(CXXFLAGS) multichoose.cpp -o multichoose

multipermute: multipermute.cpp multipermute.h
	${CXX} $(LDFLAGS) $(CPPFLAGS) $(CXXFLAGS) multipermute.cpp -o multipermute

cmultichoose: multichoose.c
	${CC} $(LDFLAGS) $(CPPFLAGS) $(CXXFLAGS) multichoose.c -o cmultichoose

clean:
	rm -f cmultichoose
	rm -f multichoose
	rm -f multipermute
