echo Building MD for implementations

tsv=implementations.tsv

if [ ! -f $tsv ]; then
    echo $tsv not found\!
    echo Can\'t build implementations\; exiting
    exit -1
fi

# First confirm assumptions about fields
echo Confirming assumptions about fields in $tsv

expectedFieldsFile=/tmp/fields.txt
rm -f $expectedFieldsFile
echo -e "Timestamp Name Description Types Platform" > $expectedFieldsFile
head -1 $tsv | diff -w $expectedFieldsFile -

if [ ! $? -eq 0 ] ; then
    echo Oh no\!  Field names were not as expected by $0 - diff above
    echo exiting
    exit -2
else
    echo ...confirmed
fi



# Now loop through the remaining rows (all but the first) making a file for each...
# tail +2 $tsv

# awk 1 is to add an extra newline at the end if necessary

tail +2 $tsv | awk 1 |
    while read line; do
        # echo $line
        # echo "$line" | cut -f2
        NAME=`echo "$line" | cut -f2`
        DESCRIPTION=$(echo "$line" | cut -f3)
        TYPES=$(echo "$line" | cut -f4)
        PLATFORM=$(echo "$line" | cut -f4)
        echo
        echo NAME=$NAME
        echo DESCRIPTION=$DESCRIPTION
        echo TYPES=$TYPES
        echo PLATFORM=$PLATFORM
done



echo have a nice day
