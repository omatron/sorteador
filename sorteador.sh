#!/bin/bash
file="file.txt"
count=`cat $file | wc -l`
num=0
#pick random number between 0-100
gen_ran () {
    num=`echo $(($RANDOM % 100))`
}


while :; do
gen_ran
if (($num >= 1 && $num <= $count)); then
    echo "------Resultado------"
    sed -n "$num"p $file
    break
#  else
#    echo "Out of range! Sorteando novamente."
  fi
done
