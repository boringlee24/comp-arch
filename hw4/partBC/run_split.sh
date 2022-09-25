#!/bin/bash

dineroIV -l1-isize 8K -l1-ibsize 16 -l1-iassoc 2 -l1-dsize 8K -l1-iccc -l1-dbsize 16 -l1-dassoc 2 -l1-dccc -informat d < trace > split/16B_2way.txt &&
dineroIV -l1-isize 8K -l1-ibsize 64 -l1-iassoc 2 -l1-dsize 8K -l1-iccc -l1-dbsize 64 -l1-dassoc 2 -l1-dccc -informat d < trace > split/64B_2way.txt &&
dineroIV -l1-isize 8K -l1-ibsize 256 -l1-iassoc 2 -l1-dsize 8K -l1-iccc -l1-dbsize 256 -l1-dassoc 2 -l1-dccc -informat d < trace > split/256B_2way.txt

dineroIV -l1-isize 8K -l1-ibsize 16 -l1-iassoc 4 -l1-dsize 8K -l1-iccc -l1-dbsize 16 -l1-dassoc 4 -l1-dccc -informat d < trace > split/16B_4way.txt &&
dineroIV -l1-isize 8K -l1-ibsize 64 -l1-iassoc 4 -l1-dsize 8K -l1-iccc -l1-dbsize 64 -l1-dassoc 4 -l1-dccc -informat d < trace > split/64B_4way.txt &&
dineroIV -l1-isize 8K -l1-ibsize 256 -l1-iassoc 4 -l1-dsize 8K -l1-iccc -l1-dbsize 256 -l1-dassoc 4 -l1-dccc -informat d < trace > split/256B_4way.txt
