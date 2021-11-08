#!/bin/bash
#
# Launch a given executable and measure the energy consumption while it
# continues to run in the background.

Prog=$1
ProgArg=$2
Prefix=$3
Filename=$4
Resultname=$5

echo "running: $Resultname"
# date +"%T"
./../../rapl_read/rapl-read -v >> $Resultname
./../../rapl_read/rapl-read >> $Resultname

sh $Prog $Prefix $Filename $ProgArg & PIDPROG=$!

while test -d /proc/$PIDPROG
do
    ./../../rapl_read/rapl-read >> $Resultname
done

./../../rapl_read/rapl-read >> $Resultname
# date +"%T"
