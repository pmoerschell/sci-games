#!/bin/bash

if [ $# -lt 1 ]; then
    echo "Usage: $0 <year>"
    exit 1
fi

export CURYEAR=$1
export INFILE="namelist"
export IFS=$'\n'

for outline in $(sort -nk2 $INFILE | cut -f2 -d' ' | uniq -c | sort); do
    myear=$(echo $outline | awk '{print $2}')
    if [ $myear -gt $CURYEAR ]; then
        echo "alive after $CURYEAR: $outline"
    fi
done
