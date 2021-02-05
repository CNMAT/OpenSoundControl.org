#!/bin/bash

# check-subset.sh
# is the first argument a subset of the second?
# Are all the files inside the first argument also in the same place relative to the second argument?


if test $# -ne 2; then
    echo usage: $0 [little] [big]
    echo where little and big are directories
    exit -1
fi

little="$1"
big="$2"

littleN=${#little}
bigN=${#big}

# echo $littleN characters: $little
# echo $bigN characters: $big



# Get rid of stupid Apple .DS_Store files
find $little -name .DS_Store -delete
find $big -name .DS_Store -delete


# First check if any subdirectories are missing



for f in `find $little -type d ! -size 0`; do
    suffix="${f:$littleN}";
    other=$big$suffix;

    if [ ! -d $other ]; then
        echo Directory $f exists but $other does not.
    fi
done


# Handle spaces in filenames, per "short answer":
# https://unix.stackexchange.com/questions/9496/looping-through-files-with-spaces-in-the-names

OIFS="$IFS"
IFS=$'\n'


for f in `find $little -type f ! -size 0`; do
#    echo $f
    
#    f="$0";
    suffix="${f:$littleN}";
    other=$big$suffix;

    if [ ! -f $other ]; then
        echo "Oh no!  This exists:"
        ls -l $f
        echo "but this does not:"
        echo "$other"
        echo
 #       echo f is $f suffix is $suffix
 #       echo other is $other
        echo
    fi
done

IFS="$OIFS"



echo have a nice day\!

    
