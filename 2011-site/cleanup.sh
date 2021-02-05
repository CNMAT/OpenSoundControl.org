#!/bin/bash

# cleanup.sh


if test $# -ne 2; then
    echo usage: $0 [in] [out]

    echo where in and out are filenames
    exit -1
fi

in="$1"
out="$2"

if [ -f "$out" ]; then
    echo error $out already exists
    exit -2
fi

if [ -d "$in" ]; then
    echo error this script is for single files, not directories
    exit -3;
fi


if [[ $out == *"."* ]]; then
    # echo output file $out already has a suffix or at least a dot somewhere

    if ! [[ $out == *.html ]] ; then
        # This file has a "." but not ".html" so assume it's a binary
        # file like .pdf or .mov.  Maybe we'll move all these kinds of
        # files to a new place in the new site...

        echo Don\'t clean up $out\; just copy it
        
        cp "$in" "$out"
        exit 0;
    fi
else
    # if no suffix then assume .html
    out=$out.html
fi



#default cleanup magic:
pupgoodness='[class="node"] :not(class="book-navigation") :not(class="clear-block") :not(class="page-links") :not(class="page-links clear-block")'

pupgoodness='[class="node"] :not(class="book-navigation")'
pupgoodness='[class="node"]'
pupgoodness='[class="node"] [class="content"] :not([class="book-navigation"],[class="clear-block"]) '
pupgoodness='[class="node"] [class="content"] :not([class="book-navigation"]) :not([class="clear-block"])'
pupgoodness='[class="node"] [class="content"] :not([class="book-navigation"])'
pupgoodness='[class="node"] [class="content"] '


if [ `basename $in` == publications ]; then
    # echo you want to clean up a list of publications
    pupgoodness='[class="biblio-entry"]'
elif [[ $in == */publications/author/* ]]; then
    # echo you want to clean up one author\'s list of publications
    pupgoodness='[class="biblio-entry"]';
elif [[ $in == */publications\?page=* ]]; then
    # echo you want to clean up a page of publications
    pupgoodness='[class="biblio-entry"]';
elif [[ $in == */publications/* ]]; then
    # echo you want to clean up one publication
    pupgoodness='[class="biblio-node"]';
fi

if [ `basename $in` == implementations ]; then
    # echo you want to clean up a list of implementations
    pupgoodness='[class="view-content view-content-implementations"]'
fi


#echo XX${pupgoodness}YY
#cat $in | pup $pupgoodness  > $out

# cat $in | pup '[class="node"] :not(class="book-navigation")' > $out
# cat $in | pup '[class="node"]' | pup ':not(class="book-navigation")' > $out
# cat $in | pup $pupgoodness | pup -p ':not([class="page-links"] clear-block"])' > $out

outTooBig="$out"-toobig
rm -f $outTooBig

# more than we want
cat $in | pup -p $pupgoodness > $outTooBig

num_lines=`cat $outTooBig | wc -l | tr -d ' '`
# echo file has $num_lines lines

# this is the bad part:
# cat $in | pup -p $pupgoodness | pup '[class="book-navigation"]' > $out

# how many lines is it?
num_badlines=`cat $outTooBig | pup '[class="book-navigation"]' | wc -l | tr -d ' '`
# echo num_badlines $num_badlines -num_badlines -$num_badlines

if (( $num_lines == $num_badlines )); then
     echo $in sucks\; output nothing
    donothing=1
else    
    cat $outTooBig | ghead -n -$num_badlines > $out
fi

# didn't work: find the part we don't want and subtract it out with diff 
# cat $outTooBig | pup '[class="book-navigation"]' | diff -b --old-line-format="%L" $outTooBig - > $out     


if [ -s $out ]; then
    # yay non-empty output!
    donothing=1
else
    echo It\'s a shame we ended up with an empty file\; deleting $out
    rm -f $out;
fi


rm $outTooBig
