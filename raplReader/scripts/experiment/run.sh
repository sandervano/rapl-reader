#!/bin/bash
#
# Exectues a given program 50 times and measures the energy consumption of the
# computer during that time, waiting 60 seconds in between runs. Before and
# before and after each run, also measures the energy consumption of the
# computer while only the framework is running for 60 seconds.
# Results of the experiment are stored in the results folder.

ProgScript=$1
Prefix=$2
Suffix=$3
num=$4

Path="../../../codebase/$Prefix"
for File in ${Path}/*$Suffix
do
  Filename=${File#"${Path}/"}
  i=$(date -Iseconds)
  i=${i%"+"*}
  i=${i/'T'/'_'}
  Dir="../../../results/${Prefix}_${i}"
  mkdir -p $Dir

  if [[ $Filename == *'$'* ]]; then
     continue
  fi
  arg="$Dir/$Filename"

  ./experiment.sh run_prog_wait.sh $num $Path ${Filename%$Suffix}  "${arg}_wait_0.csv"
  for j in $(seq -w 0 49)
  do
    ./experiment.sh $ProgScript $num $Path ${Filename%$Suffix}  "${arg}_${j}.csv"
    sleep 60
  done
  ./experiment.sh run_prog_wait.sh $num $Path ${Filename%$Suffix}  "${arg}_wait_1.csv"
done
