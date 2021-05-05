tsv=publications-freed.tsv


if [ -f $tsv ]; then
    echo $tsv already exists\!  Abort.
    exit -1
fi

# First the header line naming all the fields


echo -e "Timestamp\tYour Name\tYour personal website\tTitle\tAuthors\tFirst author's last name\tYear\tURL\tDownload URL\tPublication Details\tPages\tAbstract\tDOI\tContext" > $tsv


for h in *.html ; do
    echo parsing $h

    m=`basename $m html`md

    # First parse all the data for this implementation into bash variables:

    TITLE=`pup -p '[class="biblio-field-contents-title"] text{}' < $h`

    # so do it the hard way

    PUB_TYPE=`pup -p '[class="biblio-field-contents-type"] text{}' < $h`
    # echo PUB_TYPE $PUB_TYPE

    
    AUTHORSBIG=`pup -p '[class="biblio-field-contents-authors"] text{}' < $h`
    # echo AUTHORSBIG $AUTHORSBIG 

    # Each author's name is a link with "Name [1]" syntax.
    # Discard the part [in brackets]    

    AUTHORS=`echo $AUTHORSBIG | sed 's/\[[^\]]*\]//g' `

    # echo $AUTHORS

    # Grab first author's last name while it's conveniently at the beginning
    FIRST_AUTHOR_LAST_NAME=`echo "$AUTHORS" | awk -F \, '{print $1}'`

    # echo FIRST_AUTHOR_LAST_NAME $FIRST_AUTHOR_LAST_NAME AUTHORS $AUTHORS

    
    YEAR=`pup -p '[class="biblio-field-contents-year"] text{}' < $h`
    # echo $YEAR

    URL=`pup -p '[class="print-source_url"] a attr{href}' < $h`
    # echo URL $URL

    ABSTRACT=`pup -p '[class="biblio-field-contents-abst-e"] text{}' < $h | tr -d '\n'`
    # echo ABSTRACT $ABSTRACT
    
    # Apparently not present
    PAGES=''

    # Publication details is the hairy part because of the different types
    # initialize and hope we overwrite:
    PUB_DETAILS=`pup -p '[class="biblio-field-contents-secondary-title"] text{}' < $h`
    
    echo PUB_DETAILS $PUB_DETAILS
    

    # Now write all this publication's data as a row of $tsv
    
    rightnow=`date "+%m/%d/%Y %H:%M:%S"`
    # echo -e "${rightnow}\t" >> $tsv

    echo -e "${rightnow}\tAdrian Freed\thttp://adrianfreed.com\t${TITLE}\t${AUTHORS}\t${FIRST_AUTHOR_LAST_NAME}\t${YEAR}\t${URL}\t${DOWNLOAD_URL}\t${PUB_DETAILS}\t${PAGES}\t${ABSTRACT}\t\tAdrian Freed kindly provided a parseable collection of OSC-related papers from his website, ported to the new site by Matt Wright in May 2021" >> $tsv 
done

echo $tsv is now ready\!
