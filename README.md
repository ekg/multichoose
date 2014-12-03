# multichoose

[![NPM](https://nodei.co/npm/multichoose.png?global=true)](https://nodei.co/npm/multichoose/)

[![Build Status](https://travis-ci.org/ekg/multichoose.svg)](https://travis-ci.org/ekg/multichoose)

multiset combinations of k out of n (n multichoose k)

## Overview

This library implements an efficient loopless multiset combination generation algorithm which is (approximately) described in "Loopless algorithms for generating permutations, combinations, and other combinatorial configurations." G Ehrlich - Journal of the ACM (JACM), 1973. (Algorithm 7.)

The method generates all multisets that would be generated from taking k elements from a multiset of n. Repeated multisets are possible if the input set contains repeated elements. The number of multiset combinations equals the multinomial coefficient (n multichoose k).

## Usage

### node.js implementation

Install via

``` bash
npm install -g multichoose
```

``` js
var multichoose = require('multichoose')
multichoose(2, [1,2,3], console.log)
// [ 1, 1 ]
// [ 1, 2 ]
// [ 1, 3 ]
// [ 2, 2 ]
// [ 2, 3 ]
// [ 3, 3 ]
```

``` bash
% multichoose 3 A B C
A A A
A A B
A A C
A B B
A B C
A C C
B B B
B B C
B C C
C C C
```

### multichoose.cpp

Include is a C++ library/program which contains a generic function to generate multisets for vectors of any type of object.  You can test out the program using strings input from the command line by typing:

``` bash
% make
```

Running the bare executable prints usage information:

``` bash
% ./multichoose
usage: 
./multichoose <k> <item1> <item2> ... <itemN>  ~ n multichoose k
```

Example usage:

``` bash
% ./multichoose 2 a t g c
a a 
a t 
a g 
a c 
t t
t g 
t c 
g g 
g c 
c c 

This example lists all the possible *unordered* genotypes at a given genetic loci of which there are two copies (e.g. chromosomes).  In this case `k` (=2) could be understood as the expected ploidy of the given locus.

(Note that this is not currently built as the default binary for the npm module, which uses cli.js.)

### multichoose.py

A python library implementation is also included for those who like to indent their code consistently.

## multiset permutations

TODO: These will be factored into a separate module.
