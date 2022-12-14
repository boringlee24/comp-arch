#!/bin/bash

gcc drystone_long.c -o O0/test1.out -fcombine-stack-adjustments
gcc drystone_long.c -o O0/test2.out -fcompare-elim
gcc drystone_long.c -o O0/test3.out -fcprop-registers
gcc drystone_long.c -o O0/test4.out -fdefer-pop
gcc drystone_long.c -o O0/test5.out -fforward-propagate
gcc drystone_long.c -o O0/test6.out -fguess-branch-probability
gcc drystone_long.c -o O0/test7.out -fif-conversion
gcc drystone_long.c -o O0/test8.out -fif-conversion2
gcc drystone_long.c -o O0/test9.out -finline-functions-called-once
gcc drystone_long.c -o O0/test10.out -fipa-profile
gcc drystone_long.c -o O0/test11.out -fipa-pure-const
gcc drystone_long.c -o O0/test12.out -fipa-reference
gcc drystone_long.c -o O0/test13.out -fmerge-constants
gcc drystone_long.c -o O0/test14.out -fshrink-wrap
gcc drystone_long.c -o O0/test15.out -fsplit-wide-types
gcc drystone_long.c -o O0/test16.out -ftree-bit-ccp
gcc drystone_long.c -o O0/test17.out -ftree-ccp
gcc drystone_long.c -o O0/test18.out -ftree-ch
gcc drystone_long.c -o O0/test19.out -ftree-copy-prop
gcc drystone_long.c -o O0/test20.out -ftree-copyrename
gcc drystone_long.c -o O0/test21.out -ftree-dce
gcc drystone_long.c -o O0/test22.out -ftree-dominator-opts
gcc drystone_long.c -o O0/test23.out -ftree-dse
gcc drystone_long.c -o O0/test24.out -ftree-fre
gcc drystone_long.c -o O0/test25.out -ftree-sink
gcc drystone_long.c -o O0/test26.out -ftree-slsr
gcc drystone_long.c -o O0/test27.out -ftree-sra
gcc drystone_long.c -o O0/test28.out -ftree-ter
