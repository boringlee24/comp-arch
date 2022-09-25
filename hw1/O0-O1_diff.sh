#!/bin/bash

gcc drystone_long.c -o O0-O1_diff/test1.out -O1 -fno-combine-stack-adjustments
gcc drystone_long.c -o O0-O1_diff/test2.out -O1 -fno-compare-elim
gcc drystone_long.c -o O0-O1_diff/test3.out -O1 -fno-cprop-registers
gcc drystone_long.c -o O0-O1_diff/test4.out -O1 -fno-defer-pop
gcc drystone_long.c -o O0-O1_diff/test5.out -O1 -fno-forward-propagate
gcc drystone_long.c -o O0-O1_diff/test6.out -O1 -fno-guess-branch-probability
gcc drystone_long.c -o O0-O1_diff/test7.out -O1 -fno-if-conversion
gcc drystone_long.c -o O0-O1_diff/test8.out -O1 -fno-if-conversion2
gcc drystone_long.c -o O0-O1_diff/test9.out -O1 -fno-inline-functions-called-once
gcc drystone_long.c -o O0-O1_diff/test10.out -O1 -fno-ipa-profile
gcc drystone_long.c -o O0-O1_diff/test11.out -O1 -fno-ipa-pure-const
gcc drystone_long.c -o O0-O1_diff/test12.out -O1 -fno-ipa-reference
gcc drystone_long.c -o O0-O1_diff/test13.out -O1 -fno-merge-constants
gcc drystone_long.c -o O0-O1_diff/test14.out -O1 -fno-shrink-wrap
gcc drystone_long.c -o O0-O1_diff/test15.out -O1 -fno-split-wide-types
gcc drystone_long.c -o O0-O1_diff/test16.out -O1 -fno-tree-bit-ccp
gcc drystone_long.c -o O0-O1_diff/test17.out -O1 -fno-tree-ccp
gcc drystone_long.c -o O0-O1_diff/test18.out -O1 -fno-tree-ch
gcc drystone_long.c -o O0-O1_diff/test19.out -O1 -fno-tree-copy-prop
gcc drystone_long.c -o O0-O1_diff/test20.out -O1 -fno-tree-copyrename
gcc drystone_long.c -o O0-O1_diff/test21.out -O1 -fno-tree-dce
gcc drystone_long.c -o O0-O1_diff/test22.out -O1 -fno-tree-dominator-opts
gcc drystone_long.c -o O0-O1_diff/test23.out -O1 -fno-tree-dse
gcc drystone_long.c -o O0-O1_diff/test24.out -O1 -fno-tree-fre
gcc drystone_long.c -o O0-O1_diff/test25.out -O1 -fno-tree-sink
gcc drystone_long.c -o O0-O1_diff/test26.out -O1 -fno-tree-slsr
gcc drystone_long.c -o O0-O1_diff/test27.out -O1 -fno-tree-sra
gcc drystone_long.c -o O0-O1_diff/test28.out -O1 -fno-tree-ter