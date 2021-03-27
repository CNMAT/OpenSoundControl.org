tsv=publications-legacy.tsv


if [ -f $tsv ]; then
    echo $tsv already exists\!  Abort.
    exit -1
fi

# First the header line naming all the fields


echo -e "Timestamp\tYour Name\tYour personal website\tTitle\tAuthors\tFirst author's last name\tYear\tURL\tDownload URL\tPublication Details\tPages\tAbstract\tDOI\tContext" > $tsv


for m in *.md ; do
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

    PUB_TYPE=`fgrep "[ Publication Type ]{.biblio-row-title}" $m | awk -F \} '{print $2}' | sed 's/^ *//g' `
    # echo PUB_TYPE $PUB_TYPE

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

    # The old site had file "attachments" that we successfully scraped
    DOWNLOAD_URL=`fgrep  '](files/' $m | awk -F'[()]' '{print $2}'`


    ABSTRACT=`fgrep "[ Abstract ]{.biblio-row-title}" $m | awk -F \} '{print $2}' | sed 's/^ *//g'`
    # echo ABSTRACT $ABSTRACT

    # not sure why these were considered separate in the old site
    PAGES=`fgrep "[ Pages ]{.biblio-row-title}" $m | awk -F \} '{print $2}' | sed 's/^ *//g'`
    PAGINATION=`fgrep "[ Pagination ]{.biblio-row-title}" $m | awk -F \} '{print $2}' | sed 's/^ *//g'`

    if [ -z "$PAGES" ]; then
        # in this dataset it's always one or the other
        PAGES="$PAGINATION"
    fi

    # Publication details is the hairy part because of the different types
    # initialize and hope we overwrite:
    PUB_DETAILS="XXX unknown publication type"
    # catches "software", "thesis"...
    PUB_DETAILS="$PUB_TYPE PUBLICATION"
    
    JOURNAL=`fgrep "[ Journal Title ]{.biblio-row-title}" $m | awk -F \} '{print $2}' | sed 's/^ *//g'`
    if [ ! -z "$JOURNAL" ] ; then
       JOURNAL_DATE=`fgrep "[ Journal Date ]{.biblio-row-title}" $m | awk -F \} '{print $2}' | sed 's/^ *//g'`
       VOLUME=`fgrep "[ Volume ]{.biblio-row-title}" $m | awk -F \} '{print $2}' | sed 's/^ *//g'`
       ISSUE=`fgrep "[ Issue ]{.biblio-row-title}" $m | awk -F \} '{print $2}' | sed 's/^ *//g'`
       PUB_DETAILS="$JOURNAL ${VOLUME}:${ISSUE}"
    fi

    CONFERENCE=`fgrep "[ Conference Name ]{.biblio-row-title}" $m | awk -F \} '{print $2}' | sed 's/^ *//g'`
    if [ ! -z "$CONFERENCE" ] ; then
        # discard conference date, location
        PUB_DETAILS="$CONFERENCE"
    else
        # hope this prints nothing
        grep Conference $m
    fi

    if [[ "$PUB_TYPE" == "Report" ]] ; then
        PUB_DETAILS="Report"
        #egrep '(files/.*\.mov)' $m
    fi
    
    #echo ========\>   $PUB_DETAILS


    # Now write all this publication's data as a row of $tsv
    
    rightnow=`date "+%m/%d/%Y %H:%M:%S"`
    # echo -e "${rightnow}\t" >> $tsv

    echo -e "${rightnow}\tLegacy\thttps://web.archive.org\t${TITLE}\t${AUTHORS}\t${FIRST_AUTHOR_LAST_NAME}\t${YEAR}\t${URL}\t${DOWNLOAD_URL}\t${PUB_DETAILS}\t${PAGES}\t${ABSTRACT}\t\tThis was a featured publication on the legacy (pre-2011) opensoundcontrol.org website, ported to the new site by Matt Wright in early 2021" >> $tsv 
done

echo $tsv is now ready\!

echo fix PUBLICATION by hand
echo minuit needs "https://web.archive.org/web/20110122065602/http://www.plateforme-virage.org/?p=1444"

