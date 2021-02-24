tsv=implementations-legacy.tsv


if [ -f $tsv ]; then
    echo $tsv already exists\!  Abort.
    exit -1
fi

# First the header line naming all the fields
echo -e "Your Name\tYour personal website\tName\tUpdate?\tURL\tURL of implementation's OSC documentation\tProject Type\tDescription\tPlatform\tFeatures \tType Support\tBundle Support\tTimetag Support\tTransport Type\tPublications\tImages\tStatus\tStatus Date\tSuperseded?\tNotes" > $tsv


for m in *.md ; do
    echo -n $m
    h=`basename $m md`html


    # First parse all the data for this implementation into bash variables:

    # First line of markdown will start with "## " and then the name 
    NAME=`head -1 $m | cut -c 4-99999`

    URLBIG=`cat $h | pup '[class~="field-field-project-url"]'  | pandoc -f html -t markdown | grep -v ':::' | grep -v 'Project URL:' | egrep -v '^$' | tr '\n' ' ' `

    if [[ "$URLBIG" == *"["* ]] ; then
        # Assume URL appears with [text](URL) syntax. First discard the part [in brackets]
        # then extract what's (in parentheses)
        URL=`echo "$URLBIG" | sed 's/\[.*\]//g' | awk -F '[()]' '{print $2}'`
    else
        # Let's hope it's <URL> syntax
        URL=`echo "$URLBIG" | awk -F '[<>]' '{print $2}'`
    fi
    


    # echo -n \|${URL}\
    # Not sure whether to strip out the archive.org memory from any URLs, like so:
    # echo $URL | sed 's|https://web.archive.org/web/[0-9]*/http://|http://|g'

     DOCURLBIG=`cat $h | pup '[class~="field-field-osc-documentation-referen"]'  | pandoc -f html -t markdown | grep -v ':::' | grep -v 'OSC Documentation URL:' | egrep -v '^$' | tr '\n' ' ' `
    

     if [[ "DOC$URLBIG" == *"["* ]] ; then
        # URL appears with [text](URL) syntax
        DOCURL=`echo "$DOCURLBIG" | sed 's/\[.*\]//g' | awk -F '[()]' '{print $2}'`
    else
        # Let's hope it's <URL> syntax
        DOCURL=`echo "$DOCURLBIG" | awk -F '[<>]' '{print $2}'`
    fi


     PROJECT_TYPE=`cat $h | pup '[class~="field-field-project-type"]' | pandoc -f html -t markdown | grep -v ':::' | grep -v "Project Type:" | egrep -v '^$' `



     PLATFORM=`cat $h |  pup '[class~="field-field-platform"]' | pandoc -f html -t markdown | grep -v ':::' | grep -v "Platform:" | egrep -v '^$' | sed 's/Mac OSX/Macintosh/g' | tr '\n' ','  | awk 1 | sed 's/,$//g' | sed 's/,/, /g' `
     


     FEATURES=`cat $h |  pup '[class~="field-field-features"]' | pandoc -f html -t markdown | grep -v ':::' | grep -v "Features:" | egrep -v '^$' | awk -F '(' '{print $1}' | sed 's/[ ]*$//g' | tr '\n' ','  | awk 1 | sed 's/,$//g' | sed 's/,/, /g' `


    
     TYPES=`cat $h | pup '[class~="field-field-type-support"]' | pandoc -f html -t markdown | grep -v ':::' | grep -v "Type Support:" | egrep -v '^$' | awk -F '(' '{print $1}' | sed 's/double precision float/float64/g' | sed 's/\\\\//g' | sed 's/[ ]*$//g' | tr '\n' ','  | awk 1 | sed 's/,$//g' | sed 's/,/, /g' `


     BUNDLE=`cat $h | pup '[class~="field-field-bundle-support"]' | pandoc -f html -t markdown | grep -v ':::' | grep -v "Bundle Support:" | egrep -v '^$' | tr '\n' ','  | awk 1 | sed 's/,$//g' | sed 's/,/, /g' `


     TIMETAG=`cat $h | pup '[class~="field-field-timetag-support"]' | pandoc -f html -t markdown | grep -v ':::' | grep -v "Timetag Support:" | egrep -v '^$' | sed 's/\\\\//g' | sed 's/IMMEDATE/immedate/g' | tr '\n' ','  | awk 1 | sed 's/,$//g' | sed 's/,/, /g' `


     
     TRANSPORT=`cat $h  | pup '[class~="field-field-transport-type"]' | pandoc -f html -t markdown | grep -v ':::' | grep -v "Transport Type:" | egrep -v '^$' | tr '\n' ','  | awk 1 | sed 's/,$//g' | sed 's/,/, /g' `



     # Now write all this implementation's data as a row of $tsv

     echo -e "Legacy\thttps://web.archive.org\t${NAME}\tNo\t${URL}\t${DOCURL}\t${PROJECT_TYPE}\t${DESCRIPTION}\t${PLATFORM}\t${FEATURES}\t${TYPES}\t${BUNDLE}\t${TIMETAG}\t${TRANSPORT}\t\t\tUnknown\tFeb 23, 2021\tUnknown\t"  >> $tsv

done

echo $tsv is now ready\!
