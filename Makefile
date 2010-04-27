all: cmultichoose multichoose

#multichoose_recursive: multichoose_recursive.cpp
#	g++ multichoose_recursive.cpp -o multichoose_recursive

multichoose: multichoose.cpp multichoose.h
	g++ multichoose.cpp -o multichoose

cmultichoose: multichoose.c
	gcc multichoose.c -o cmultichoose

clean:
	rm cmultichoose
	rm multichoose
