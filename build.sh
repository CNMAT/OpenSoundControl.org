echo making html...

mightNeedNewToC=false;

# kludgy to look only at top level and one level down
# kludgy to rely on legacy/*.md not existing

for m in *.md */*.md; do
    # echo check $m ;

    bn=`basename $m .md`; 
    if [ "$bn" == "navigation-menu" ]
    then
       # This one MD file is inserted on every call to pandoc
       # and should not on its own be converted to html
       continue
    fi

    nicetitle=`echo $bn | tr '-' ' '`
     if [[ ! $nicetitle =~ "OSC" ]]; then
         nicetitle="OSC $nicetitle"
     fi

    # figure out how many subfolders down we are so we can link to
    # the top-level README.md
    thisDir=`dirname $m`;
    if [[ $thisDir == "." ]]; then
        # this is a top-level .md file like toc.md or README.md
        homePrefix="";
    else
        # XXX should really do this right for arbitrary nesting: count
        # the number of "/" characters, etc.  For now assume just one level.
        homePrefix="../";        
    fi

    pushd `dirname $m` > /dev/null
    outfile=$bn.html

    infile=${homePrefix}$m
    
    # Used to be a kludge:
    #if [ -f $m ] ; then
    #    infile=$m
    #else
    #    infile=../$m
    #fi


    # Generate the link back to this file's entry in the table of contents
    linktarget=`echo $bn | \
            tr '[:upper:]' '[:lower:]' | \
            tr '-' ' ' | \
            tr  -d '[:punct:]' | \
            tr ' ' '-' | \
            tr -s '-'`;

    toclink="${homePrefix}toc.html#${linktarget}"
    toclinkfile="/tmp/toclink.md"
    rm -f $toclinkfile
    echo "([contents of this file](${toclink}): links to each section)"  > $toclinkfile


    # Say when this file was updated
    datefile="/tmp/rightnow";
    rm -f $datefile;

    echo "<hr><P>This page of <a href=\"${homePrefix}README.html\">OpenSoundControl website</a> updated `date` by `whoami`.</P>" > $datefile;


    echo infile $infile outfile $outfile nicetitle $nicetitle
    
    if [[ $infile -nt $outfile ]] ; then
        echo "    " $infile to $outfile...; 
        pandoc "${homePrefix}navigation-menu.md" $toclinkfile $infile \
            -o $outfile --css "${homePrefix}css/pandoc.css" \
            --metadata pagetitle="$nicetitle" \
            --metadata date="`date -u '+%Y-%m-%d'`" -A $datefile -s;
    fi       
    popd > /dev/null; 

    if [[ $m -nt toc.md ]] ; then
        echo "    " \($m is newer than toc.md\)
        mightNeedNewToC=true;
    fi
done

if  $mightNeedNewToC  ; then
    if [ $# -eq 0 ] ; then
        echo -n "    " You might want to rebuild the table of contents
        echo " " \(by passing any argument to this script\).
    else 
        echo Remaking toplevel index...
        ./buildindex.sh > index.md
        echo Remaking table of contents...
        ./buildindex.sh toc > toc.md
        echo Recursively calling build.sh to make toc.html from new toc.md
        echo and to make index.html from new index.md
        ./build.sh
    fi
fi

echo done
