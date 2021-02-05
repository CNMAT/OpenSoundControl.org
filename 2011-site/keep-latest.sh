#!/bin/bash

# keep-latest.sh

# Having downloaded a massively redundant set of archive.org snapshots
# of various portions of the site, keep just the latest version of
# each individual file found on the site into a new folder "latest"


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

# echo snapshots: $snapshots;


for s in $snapshots;  do
    fulls=$web/$s/http:/opensoundcontrol.org
    fullsN=${#fulls}
    echo snapshot $s aka $fulls \(length $fullsN\)

    # find $fulls

    # First check if any new subdirectories are needed in latest:
    for dir in `find $fulls -type d ! -size 0`; do
        suffix="${dir:$fullsN}";
        inlatest="latest/$suffix";

        if [ -f $inlatest ]; then
            # we try to avoid this situation by other means
            echo error: $inlatest is a regular file but $dir is a directory
            exit
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

        # old way:
        # if [ $suffix == /forum ] || [ $suffix == /publications ]; then
        #    echo Discard non-directory $f
        #    continue;
        # fi

        # Too hard for now to clean up the forum or anything inside it
        if [[ $suffix == /forum* ]]; then
            echo skipping forum content $suffix
            continue;
        fi

        inlatest="latest/$suffix";

        # differentiate publications the single .html file from the
        # folder of the same name:
        if [ $suffix == /publications ]; then
            inlatest="${inlatest}.html"
        fi
            
        if [ ! -f $inlatest ]; then
            echo "first time seeing " $suffix

            # cleanup adds .html file suffix, breaking this algorithm:
            # ./cleanup.sh $f $inlatest
            cp $f $inlatest
        fi
    done

    IFS="$OIFS"
done


echo have a nice day\!
echo now you probably want to run cleanup-all.sh


    
