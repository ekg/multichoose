all: multichoose multichoose_recursive

multichoose_recursive: multichoose_recursive.cpp
	g++ multichoose_recursive.cpp -o multichoose_recursive

multichoose: multichoose.c
	gcc multichoose.c -o multichoose

clean:
	rm multichoose
	rm multichoose_recursive
