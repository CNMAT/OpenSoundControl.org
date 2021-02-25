echo Building MD for implementations

tsv=implementations.tsv

if [ ! -f $tsv ]; then
    echo $tsv not found\!
    echo Can\'t build implementations\; exiting
    exit -1
fi

# expectedFieldsFile=implementations-google-column-names.tsv
expectedFieldsFile=implementations-fields.tsv


if [ ! -f $expectedFieldsFile ]; then
    echo $expectedFieldsFile not found\!
    echo Can\'t build implementations\; exiting
    exit -2
fi


# First confirm assumptions about fields
echo Confirming assumptions about fields in $tsv

# head -1 $tsv | diff -w $expectedFieldsFile -
head -1 $tsv | diff $expectedFieldsFile -

if [ ! $? -eq 0 ] ; then
    echo Oh no\!  Field names were not as expected by $0 - diff above
    echo exiting
    exit -3
else
    echo ...confirmed
fi

impl_dir=implementations


# At this point we believe we can recreate everything inside $impl_dir
rm -f ${impl_dir}/*.{md,html}

# Now loop through the remaining rows (all but the first) making a file for each...
# tail +2 $tsv

# awk 1 is to add an extra newline at the end if necessary

tail +2 $tsv | awk 1 |
    while read line; do
        # First parse all the TSV fields into bash variables

        TIMESTAMP=`echo "$line" | cut -f1`
        SUBMITTER_NAME=$(echo "$line" | cut -f2)
        SUBMITTER_WEBSITE=$(echo "$line" | cut -f3)
        NAME=$(echo "$line" | cut -f4)
        # at this point we don't care about "Update?"
        URL=$(echo "$line" | cut -f6)
        URL_OSC_PART=$(echo "$line" | cut -f7)
        TYPE=$(echo "$line" | cut -f8)
        DESCRIPTION=$(echo "$line" | cut -f9)
        PLATFORM=$(echo "$line" | cut -f10)
        FEATURES=$(echo "$line" | cut -f11)
        TYPES=$(echo "$line" | cut -f12)
        BUNDLE=$(echo "$line" | cut -f13)
        TIMETAG=$(echo "$line" | cut -f14)
        TRANSPORT=$(echo "$line" | cut -f15)
        PUBLICATIONS=$(echo "$line" | cut -f16)
        IMAGES=$(echo "$line" | cut -f17)
        STATUS=$(echo "$line" | cut -f18)
        STATUSDATE=$(echo "$line" | cut -f19)
        SUPERSEDED=$(echo "$line" | cut -f20)
        # Also we ignore "notes"


        
        # Determine this filename based on the name, using these rules:
        
        # Omit anything in parentheses
        # Omit anything after a comma or colon that is followed by a space
        # Omit all punctuation characters 

        echo $NAME
        echo -n "    "
        echo $NAME | sed 's/(.*)//g' | sed 's/[,:] .*//g' | tr '-' ' ' | tr  -d '[:punct:]' | sed 's/[ ]*$//g' | tr ' ' '-' | tr -s '-'



done



echo have a nice day
