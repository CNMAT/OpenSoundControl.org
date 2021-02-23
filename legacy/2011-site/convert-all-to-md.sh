#!/bin/bash

# convert-all-to-md.sh
# find all html files in a directory and convert each to .md

if test $# -ne 1; then
    echo usage: $0 [dir]
    exit -1
fi
dir=$1

find $dir -name .DS_Store -delete

for f in `find $dir -type f -name \*.html ! -size 0`; do
    # echo f is $f
    fmd=${f%????}md
    # echo converting $f to $fmd

    if [ -f $fmd ]; then
        echo $fmd already exists
        exit -1;
    fi

    echo pandoc $f -o $fmd  --markdown-headings=atx
    pandoc $f  -o $fmd --markdown-headings=atx

done

