#!/bin/bash

# keep-latest.sh
# is the first argument a subset of the second?
# Are all the files inside the first argument also in the same place relative to the second argument?


if test $# -ne 1; then
    echo usage: $0 [web]
    echo where [web] is a \"web\" folder from archive.org
    exit -1
fi
web=$1

find $web -name .DS_Store -delete

if [ ! -d latest ]; then
    mkdir latest
else
    find latest -name .DS_Store -delete
fi


# Sort from most recent to oldest
snapshots=`ls -1 $web | sort -nr`;

echo snapshots: $snapshots;


for s in $snapshots;  do
    fulls=$web/$s/http:/opensoundcontrol.org
    fullsN=${#fulls}
    echo snapshot $s aka $fulls \(length $fullsN\)

    #    find $fulls

    # First check if any subdirectories are missing

    for dir in `find $fulls -type d ! -size 0`; do
        suffix="${dir:$fullsN}";
        inlatest="latest/$suffix";
        if [ -f $inlatest ]; then
            echo error: $inlatest is a regular file but $dir is a directory
            exit
            echo
            echo
            echo
        fi

        if [ ! -d $inlatest ]; then
            echo mkdir $inlatest
            mkdir $inlatest
        fi
    done
    
    # Now copy in any files not already present
    

    # Handle spaces in filenames, per "short answer":
    # https://unix.stackexchange.com/questions/9496/looping-through-files-with-spaces-in-the-names

    OIFS="$IFS"
    IFS=$'\n'


    for f in `find $fulls -type f ! -size 0`; do
        suffix="${f:$fullsN}";
        if [ $suffix == /forum ] || [ $suffix == /publications ]; then
            echo Discard non-directory $f
            continue;
        fi
        inlatest="latest/$suffix";

        if [ ! -f $inlatest ]; then
            echo "first time seeing " $suffix
            cp $f $inlatest
        fi
    done

    IFS="$OIFS"
done


echo have a nice day\!

    
