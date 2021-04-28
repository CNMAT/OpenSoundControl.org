#!/bin/bash

googledownload="Publications (Responses) - Form Responses 1.tsv"
tsv=publications.tsv

# Make sure there's exactly one argument and that it's an integer:
if [ $# -eq 1 ] && [ "$1" -eq "$1" ] 2>/dev/null; then
    num_new=$1
    echo Accepting $num_new publications from "$googledownload"
else
    echo Usage:
    echo $0 n
    echo where \"n\" is the number of new publications to take from
    echo the Google TSV download into the site\'s official source list
    echo of publications.
    exit -1
fi


# First confirm assumptions about fields
# echo Confirming assumptions about fields in $tsv

expectedFieldsFile=publications-google-column-names.tsv

head -1 "$googledownload" | diff -w $expectedFieldsFile -

if [ ! $? -eq 0 ] ; then
    echo Oh no\!  Field names were not as expected by $0 - diff above
    echo exiting
    exit -2
fi


# Make sure the file has at least enough lines for the header row plus $num_new
numlines=`wc -l "$googledownload" | awk '{print $1}'`

if (( $numlines < 1 + $num_new )); then
    echo Downloaded TSV file \"$googledownload\"
    echo has only $numlines line\(s\) - not enough for a header row plus $num_new new publications
    exit -3;
fi

# Remove fields including  email and "Notes"
# Append to end of implementations
tail -$num_new "$googledownload" | cut -f 1-3,5-15 >> $tsv


# echo check for duplicates.  Field 4 is \"Name\" and 7 is "Year"
duplicates=`cut -f 7,4 $tsv | sort | uniq -d`

if [ ! -z "$duplicates" ] ; then
    echo Uh oh - there now appear to be multiple rows with the same name:
    echo "$duplicates"
    echo For each you probably want to choose the better one or merge the two.
    echo If you regret having accepted these new implementations you could undo with:
    echo "      " git checkout implementations.tsv
fi


# Check if any of the submitters are new site contributors and if so add them to the list.

contributors=contributors.txt
new=/tmp/newcontribs

tail +2 $tsv | cut -f 2,3 |\
    awk  -F'\t' '{if (length($2)==0) print $1; else printf("[%s](%s)\n",$1,$2);}' | \
    sort | uniq > $new

newbies=`comm -13 $contributors $new`

if [ ! -z "$newbies" ] ; then
    echo Adding new contributors to $contributors
    echo "$newbies" >> $contributors
    echo "$newbies"
fi
rm $new 


echo XXX Need to download the local copy of the publication download

exit 0
