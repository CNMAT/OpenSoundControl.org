tsv=publications-legacy.tsv


if [ -f $tsv ]; then
    echo $tsv already exists\!  Abort.
    exit -1
fi

# First the header line naming all the fields


echo -e "Timestamp\tYour Name\tYour personal website\tTitle\tAuthors\tFirst author's last name\tYear\tURL\tDownload URL\tPublication Details\tPages\tAbstract\tDOI\tContext\tNotes" > $tsv


for m in [abc]*.md ; do
    echo parsing $m

    h=`basename $m md`html

    # First parse all the data for this implementation into bash variables:

    # First line of markdown will start with "## " and then the name 
    TITLE=`head -1 $m | cut -c 4-99999`
    # echo TITLE="$TITLE"

    # This is almost a slick way to extract all the other fields
    # automatically, but unfortunately it creates the variables in a
    # subshell and then they go away
    # (https://stackoverflow.com/questions/23564995/how-to-modify-a-global-variable-within-a-function-in-bash):

    #cat pubs-fields |
    #    while read field; do
    #        BASHVARNAME=`echo $field | tr ' ' '_' | tr '[:lower:]' '[:upper:]'`
    #        GREPME="[ "$field" ]{.biblio-row-title}"
    #        VALUE=`fgrep "$GREPME" $m | awk -F \} '{print $2}' | sed 's/^ *//g'`
    #        if [ ! -z "$VALUE" ]
    #        then
    #            eval "${BASHVARNAME}=\"${VALUE}\""
    #            #echo $BASHVARNAME=${!BASHVARNAME}
    #            echo ${BASHVARNAME}=\"${VALUE}\" \;
    #        fi
    #    done 


    # so do it the hard way

    AUTHORSBIG=`fgrep "[ Authors ]{.biblio-row-title}" $m | awk -F \} '{print $2}' | sed 's/^ *//g'`

    # Each author's name is a link with [name](URL) syntax.  First
    # discard the part (in parentheses) then extract what's [in
    # brackets]
    AUTHORS_NO_URLS=`echo "$AUTHORSBIG" | sed 's/([^)]*)//g' | tr -d "[]"`

    # Grab first author's last name while it's conveniently at the beginning
    FIRST_AUTHOR_LAST_NAME=`echo "$AUTHORS_NO_URLS" | awk -F \, '{print $1}'`

    # Now turn "LAST1, FIRST1 ; LAST2, FIRST2" into "FIRST1 LAST1, FIRST2 LAST2"
    AUTHORS=`echo "$AUTHORS_NO_URLS" | sed 's/[ ]*\([^ ,;][^ ,;]*\)[ ]*,[ ]*\([^ ,;][^ ,;]*\)[ ]*/\2 \1/g' | tr ';' ',' | sed 's/,/, /g'`

    # echo FIRST_AUTHOR_LAST_NAME $FIRST_AUTHOR_LAST_NAME AUTHORS $AUTHORS

    YEAR=`fgrep "[ Year of Publication ]{.biblio-row-title}" $m | awk -F \} '{print $2}' | sed 's/^ *//g'`


    URLBIG=`fgrep "[ URL ]{.biblio-row-title}" $m | awk -F \} '{print $2}' | sed 's/^ *//g'`

    if [ ! -z "$URLBIG" ]
    then
        if [[ "$URLBIG" == *"["* ]] ; then
            # Assume URL appears with [text](URL) syntax. First discard the part [in brackets]
            # then extract what's (in parentheses)
            URL=`echo "$URLBIG" | sed 's/\[.*\]//g' | awk -F '[()]' '{print $2}'`
        else
            # Let's hope it's <URL> syntax
            URL=`echo "$URLBIG" | awk -F '[<>]' '{print $2}'`
        fi
        # echo URLBIG: $URLBIG URL: $URL
    fi

    ABSTRACT=`fgrep "[ Abstract ]{.biblio-row-title}" $m | awk -F \} '{print $2}' | sed 's/^ *//g'`
    echo ABSTRACT $ABSTRACT


    # Publication details is the hairy part because of the different types

    JOURNAL=`fgrep "[ Journal Title ]{.biblio-row-title}" $m | awk -F \} '{print $2}' | sed 's/^ *//g'`

    # if [ ! -z "$JOURNAL" ] then
       
    PUB_DETAILS="XXX"


    echo -e "${rightnow}\t" >> $tsv
    
    # Implementations:
    #      echo -e "${rightnow}\tLegacy\thttps://web.archive.org\t${NAME}\tNo\t${URL}\t${DOCURL}\t${PROJECT_TYPE}\t${DESCRIPTION}\t${PLATFORM}\t${FEATURES}\t${TYPES}\t${BUNDLE}\t${TIMETAG}\t${TRANSPORT}\t\t\tUnknown\tFeb 23, 2021\tUnknown\t"  >> $tsv
    
done

echo $tsv is now ready\!


exit 0


    
    # We want the possibly multi-paragraph description all on one
    # line, so insert <p> for paragraph breaks then convert all
    # newlines to spaces.
    DESCRIPTION=`cat $h | pup '[class~="field-field-description"]' | pandoc -f html -t markdown | grep -v ':::' | sed 's/^[[:blank:]]*$/ <p> /g' | tr '\n' ' ' `
    

    URLBIG=`cat $h | pup '[class~="field-field-project-url"]'  | pandoc -f html -t markdown | grep -v ':::' | grep -v 'Project URL:' | egrep -v '^$' | tr '\n' ' ' `

    if [[ "$URLBIG" == *"["* ]] ; then
        # Assume URL appears with [text](URL) syntax. First discard the part [in brackets]
        # then extract what's (in parentheses)
        URL=`echo "$URLBIG" | sed 's/\[.*\]//g' | awk -F '[()]' '{print $2}'`
    else
        # Let's hope it's <URL> syntax
        URL=`echo "$URLBIG" | awk -F '[<>]' '{print $2}'`
    fi
    
    # echo -n \|${URL}\|

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

     rightnow=`date "+%m/%d/%Y %H:%M:%S"`

     echo -e "${rightnow}\tLegacy\thttps://web.archive.org\t${NAME}\tNo\t${URL}\t${DOCURL}\t${PROJECT_TYPE}\t${DESCRIPTION}\t${PLATFORM}\t${FEATURES}\t${TYPES}\t${BUNDLE}\t${TIMETAG}\t${TRANSPORT}\t\t\tUnknown\tFeb 23, 2021\tUnknown\t"  >> $tsv

done

echo $tsv is now ready\!
