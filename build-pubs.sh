tsv=publications.tsv

if [ ! -f $tsv ]; then
    echo $tsv not found\!
    echo Can\'t build publications\; exiting
    exit -1
fi


if ls publications/*.md  > /dev/null  2>&1 ; then
    oldest_pub=`ls -t publications/*.md | tail -1`

    if [[  $oldest_pub  -nt $tsv ]] ; then
        echo All files in publications/\*.md are newer than $tsv
        echo So we don\'t need to build publications.
        exit 0;
    fi
fi


echo Building MD for publications...

expectedFieldsFile=publications-fields.tsv


if [ ! -f $expectedFieldsFile ]; then
    echo $expectedFieldsFile not found\!
    echo Can\'t build publications\; exiting
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

pubs_dir=publications


# At this point we believe we can recreate everything inside $pubs_dir
rm -f ${pubs_dir}/*.{md,html}

# Now loop through the remaining rows (all but the first) making a file for each...
# tail +2 $tsv

# awk 1 is to add an extra newline at the end if necessary

tail +2 $tsv | \
#    head -10 | \
    awk 1 | \
    while read line; do
        # First parse all the TSV fields into bash variables

        TIMESTAMP=$(echo "$line" | cut -f1)
        SUBMITTER_NAME=$(echo "$line" | cut -f2)
        SUBMITTER_WEBSITE=$(echo "$line" | cut -f3)
        TITLE=$(echo "$line" | cut -f4)
        AUTHORS=$(echo "$line" | cut -f5)
        FIRST_AUTHOR_LAST_NAME=$(echo "$line" | cut -f6)
        YEAR=$(echo "$line" | cut -f7)
        URL=$(echo "$line" | cut -f8)
        DOWNLOAD_URL=$(echo "$line" | cut -f9)
        PUB_DETAILS=$(echo "$line" | cut -f10)
        PAGES=$(echo "$line" | cut -f11)
        ABSTRACT=$(echo "$line" | cut -f12)
        DOI=$(echo "$line" | cut -f13)
        CONTEXT=$(echo "$line" | cut -f14)
        
        # Determine this filename based on the name, using these rules:
        
        # publication year followed by title
        # Omit anything in parentheses
        # Omit all punctuation characters
        # Remove trailing whitespace
        # Convert spaces to '-'
        # Convert repeated '--' to just one
        FILENAME=`echo ${YEAR}-${TITLE}  | sed 's/(.*)//g' | tr '-' ' ' | tr  -d '[:punct:]' | sed 's/[ ]*$//g' | tr ' ' '-' | tr -s '-'`


        FILENAME=${pubs_dir}/${FILENAME}.md

        echo $TITLE '==>' $FILENAME

        if [ -f $FILENAME ]; then
            # Not good; we deleted all markdown files at the beginning of this script,
            # so this must mean:
            echo At least two publications want to have the same filename $FILENAME
            echo Abort.
            exit -4;
        fi


        # Now we actually write the markdown file for this implementation...

        echo "# ${TITLE}" > $FILENAME
        echo "" >> $FILENAME

        if [ -z "$PAGES" ] ; then
            SAYPAGES="";
        else
            SAYPAGES="Pages ${PAGES}. ";
        fi

        echo "${AUTHORS}. *${TITLE}*. ${YEAR}.  ${PUB_DETAILS}. ${SAYPAGES}" >> $FILENAME
        echo "" >> $FILENAME

        if [ ! -z "$URL" ] ; then
            echo "**URL**: <$URL>" >> $FILENAME
            echo "" >> $FILENAME
        fi


        if [ ! -z "$DOWNLOAD_URL" ] ; then
            echo "**Download**: [$DOWNLOAD_URL](https://ccrma.stanford.edu/~matt/OSC/${DOWNLOAD_URL})" >> $FILENAME
            echo "" >> $FILENAME
        fi




        if [ ! -z "$ABSTRACT" ] ; then
            echo "**Abstract**: ${ABSTRACT}" >> $FILENAME
            echo "" >> $FILENAME
        fi

        if [ ! -z "$DOI" ] ; then
            echo "**DOI**: ${DOI}" >> $FILENAME
            echo "" >> $FILENAME
        fi

        if [ ! -z "$CONTEXT" ] ; then
            echo "**Context**: ${CONTEXT}" >> $FILENAME
            echo "" >> $FILENAME
        fi

                
        if [ -z "$SUBMITTER_WEBSITE" ] ; then
            FULLSUBMITTER="$SUBMITTER_NAME"
        else
            FULLSUBMITTER="[$SUBMITTER_NAME]($SUBMITTER_WEBSITE)"
        fi


        echo "---" >> $FILENAME
        echo "Submitted to [opensoundcontrol.org](https://opensoundcontrol.org) by $FULLSUBMITTER at $TIMESTAMP" >> $FILENAME
done

echo have a nice day
exit 0
