#!/bin/bash

gcc linpack.c -o O0-O1_diff/test1.out -O1 -fno-combine-stack-adjustments
gcc linpack.c -o O0-O1_diff/test2.out -O1 -fno-compare-elim
gcc linpack.c -o O0-O1_diff/test3.out -O1 -fno-cprop-registers
gcc linpack.c -o O0-O1_diff/test4.out -O1 -fno-defer-pop
gcc linpack.c -o O0-O1_diff/test5.out -O1 -fno-forward-propagate
gcc linpack.c -o O0-O1_diff/test6.out -O1 -fno-guess-branch-probability
gcc linpack.c -o O0-O1_diff/test7.out -O1 -fno-if-conversion
gcc linpack.c -o O0-O1_diff/test8.out -O1 -fno-if-conversion2
gcc linpack.c -o O0-O1_diff/test9.out -O1 -fno-inline-functions-called-once
gcc linpack.c -o O0-O1_diff/test10.out -O1 -fno-ipa-profile
gcc linpack.c -o O0-O1_diff/test11.out -O1 -fno-ipa-pure-const
gcc linpack.c -o O0-O1_diff/test12.out -O1 -fno-ipa-reference
gcc linpack.c -o O0-O1_diff/test13.out -O1 -fno-merge-constants
gcc linpack.c -o O0-O1_diff/test14.out -O1 -fno-shrink-wrap
gcc linpack.c -o O0-O1_diff/test15.out -O1 -fno-split-wide-types
gcc linpack.c -o O0-O1_diff/test16.out -O1 -fno-tree-bit-ccp
gcc linpack.c -o O0-O1_diff/test17.out -O1 -fno-tree-ccp
gcc linpack.c -o O0-O1_diff/test18.out -O1 -fno-tree-ch
gcc linpack.c -o O0-O1_diff/test19.out -O1 -fno-tree-copy-prop
gcc linpack.c -o O0-O1_diff/test20.out -O1 -fno-tree-copyrename
gcc linpack.c -o O0-O1_diff/test21.out -O1 -fno-tree-dce
gcc linpack.c -o O0-O1_diff/test22.out -O1 -fno-tree-dominator-opts
gcc linpack.c -o O0-O1_diff/test23.out -O1 -fno-tree-dse
gcc linpack.c -o O0-O1_diff/test24.out -O1 -fno-tree-fre
gcc linpack.c -o O0-O1_diff/test25.out -O1 -fno-tree-sink
gcc linpack.c -o O0-O1_diff/test26.out -O1 -fno-tree-slsr
gcc linpack.c -o O0-O1_diff/test27.out -O1 -fno-tree-sra
gcc linpack.c -o O0-O1_diff/test28.out -O1 -fno-tree-ter
