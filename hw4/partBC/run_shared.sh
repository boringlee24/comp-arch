#!/bin/bash

dineroIV -l1-usize 16K -l1-ubsize 16 -l1-uassoc 2 -l1-uccc -informat d < trace > shared/16B_2way.txt &&
dineroIV -l1-usize 16K -l1-ubsize 64 -l1-uassoc 2 -l1-uccc -informat d < trace > shared/64B_2way.txt &&
dineroIV -l1-usize 16K -l1-ubsize 256 -l1-uassoc 2 -l1-uccc -informat d < trace > shared/256B_2way.txt &&

dineroIV -l1-usize 16K -l1-ubsize 16 -l1-uassoc 4 -l1-uccc -informat d < trace > shared/16B_4way.txt &&
dineroIV -l1-usize 16K -l1-ubsize 64 -l1-uassoc 4 -l1-uccc -informat d < trace > shared/64B_4way.txt &&
dineroIV -l1-usize 16K -l1-ubsize 256 -l1-uassoc 4 -l1-uccc -informat d < trace > shared/256B_4way.txt
