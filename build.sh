
./build-contributors.sh

echo making html...

mightNeedNewToC=false;

# kludgy to look only at top level and one level down
# kludgy to rely on legacy/*.md not existing

for m in *.md */*.md; do
    # echo check $m ;

    bn=`basename $m .md`;
    if [ "${bn:0:15}" == "navigation-menu" ]
    then
       # These MD files are inserted on every call to pandoc
        # and should not on their own be converted to html
        #echo ignore $bn
       continue
    fi

    topleveloutfile=${m%.md}.html


    if [[ $m -nt $topleveloutfile ]] ; then
        
        echo "    " $m to $topleveloutfile...; 


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
            navmenu="navigation-menu0.md"
        else
            # XXX should really do this right for arbitrary nesting: count
            # the number of "/" characters, etc.  For now assume just one level.
            homePrefix="../";
            navmenu="../navigation-menu1.md"
        fi
        # echo navmenu is $navmenu

        pushd `dirname $m` > /dev/null
        # Now that we're here the input and output files will be in this directory
        # Why?  infile=${homePrefix}$m
        infile=$bn.md
        outfile=$bn.html
        # echo "    " $infile to $outfile...;         
        

        # XXX: maybe instead of reimplementing pandoc's rules for link targets, it might be smarter
        # to just call pandoc, e.g.,
        #       echo "# I am_heading 1" | pandoc -f markdown -t html | awk -F \" '{print $2}'

        # Generate the link back to this file's entry in the table of contents
        # To preserve underscores while deleting all other punctuation we kludgily convert them to vertical tabs temporarily
        linktarget=`echo $bn | \
            tr '[:upper:]' '[:lower:]' | \
            tr '_' '\v' | \
            tr '-' ' ' | \
            tr  -d '[:punct:]' | \
            tr ' ' '-' | \
            tr '\v' '_' | \
            tr -s '-'`;

        toclink="${homePrefix}toc.html#${linktarget}"

        # The new way; write a new nav menu
        mynavfile="/tmp/mynav.md"
        rm -f $mynavfile
        cat $navmenu \
            | sed "s|contents of this file|[contents of this file](${toclink})|g" \
                  > $mynavfile

        # Say when this file was updated
        datefile="/tmp/rightnow";
        rm -f $datefile;

        echo "<hr><P>This page of <a href=\"${homePrefix}README.html\">OpenSoundControl website</a> <a href=\"${homePrefix}contribute.html\">updated</a> `date` by `whoami` (<a href=\"license.html\">license</a>: CC BY).</P>" > $datefile;


        # echo infile $infile outfile $outfile nicetitle $nicetitle
        
        pandoc $mynavfile $infile \
               -o $outfile --css "${homePrefix}css/pandoc.css" \
               --metadata pagetitle="$nicetitle" \
               --metadata date="`date -u '+%Y-%m-%d'`" -A $datefile -s;
        popd > /dev/null; 

        if [[ $m -nt toc.md ]] ; then
            echo "    " \($m is newer than toc.md\)
            mightNeedNewToC=true;
        fi
    fi
done

if [ ! -f page-list.md ] ; then
    echo page-list.md does not exist.
    mightNeedNewToC=true;
fi

if [ ! -f toc.md ] ; then
    echo toc.md does not exist.
    mightNeedNewToC=true;
fi

if  $mightNeedNewToC  ; then
    if [ $# -eq 0 ] ; then
        echo -n "    " You might want to rebuild the table of contents
        echo " " \(by passing any argument to this script\).
    else 
        echo Remaking toplevel page list...
        ./build-index.sh > page-list.md
        echo Remaking table of contents...
        ./build-index.sh toc > toc.md
        echo Recursively calling build.sh to make toc.html from new toc.md
        echo and to make page-list.html from new page-list.md
        ./build.sh
    fi
fi

echo done
