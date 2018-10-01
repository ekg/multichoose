
CC ?=	gcc
CXX ?=	g++

all: multichoose multipermute

#multichoose_recursive: multichoose_recursive.cpp
#	${CXX} multichoose_recursive.cpp -o multichoose_recursive

multichoose: multichoose.cpp multichoose.h
	${CXX} multichoose.cpp -o multichoose

multipermute: multipermute.cpp multipermute.h
	${CXX} multipermute.cpp -o multipermute

cmultichoose: multichoose.c
	${CC} multichoose.c -o cmultichoose

clean:
	rm -f cmultichoose
	rm -f multichoose
