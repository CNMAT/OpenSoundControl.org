#!/bin/bash

# cleanup-all.sh
# clean up every file in a directory, into a new folder "clean"

if test $# -ne 1; then
    echo usage: $0 [dir]
    exit -1
fi
dir=$1

find $dir -name .DS_Store -delete

if [ ! -d clean ]; then
    mkdir clean
fi

# Handle spaces in filenames, per "short answer":
# https://unix.stackexchange.com/questions/9496/looping-through-files-with-spaces-in-the-names

OIFS="$IFS"
IFS=$'\n'

for d in `find $dir -type d`; do
    mkdir clean/$d
done

for f in `find $dir -type f ! -size 0`; do
    ./cleanup.sh  $f clean/$f
done

IFS="$OIFS"
