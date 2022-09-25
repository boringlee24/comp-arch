#!/bin/bash

CURR_RUN=0
NUM_RUNS=10
SLEEP_TIME=1 # sleep 10s

while [ $CURR_RUN -lt $NUM_RUNS ]
do
	./drystone.out
        sleep $SLEEP_TIME
	((CURR_RUN++))
done



























