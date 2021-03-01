if [ "$1" == "toc" ]
then
    buildtoc=true;
    # >&2 echo Building Table of Contents...
else
    buildtoc=false;
    # >&2 echo Building Index...
fi



if $buildtoc; then
    echo "# OpenSoundControl.org Table of Contents"
    echo
    echo "OpenSoundControl.org table of contents (listing every section of every page),"
else
    echo "# OpenSoundControl.org Toplevel Index"
    echo
    echo "OpenSoundControl.org index (listing each file),"
fi
echo "generated `date` by `whoami`"

tmpfile=/tmp/osc-org-index.txt


# Find all immediate subfolders (should be recursive!) containing at least one .md file
# Exclude "historical" from the index
dirs=`ls -1 */*.md | awk -F / '{print $1}' | sort | grep -v historical | uniq`

# Better way, to recursively find every dir that contains any .md file:
# dirs=`find . -name '*.md' -exec dirname {} \; | sort -u`
# but then we'd need to deal with multiple depths, which we don't yet.

# Start with the toplevel then all the subdirs (alphabetically)
for d in . $dirs; do
    echo
    echo
    if [ "$d" != "." ]
    then
        # link to folder isn't useful yet
        # echo "## [$d]($d)";
        echo "## $d";
    fi

   for m in `ls -1 $d/*.md | sort -f` ; do

       mhtml=`echo "$m" | rev | cut -c 3- | rev`html;
        if [ "$d" == "." ]; then
            mhtml=`echo $mhtml | cut -c 3-`;
        fi
        base=`basename $m .md`;

        if [ "$base" == "navigation-menu" ] || [ "$base" == "index" ] || [ "$base" == "toc" ]
        then
            # This file shouldn't be indexed
            continue;
        fi
           
        # >&2 echo file $m is html $mhtml;

        if $buildtoc; then
            # All headings; strip out any legacy HTML anchors
            egrep ^\# $m | sed 's/\[\]{.*}//g' > $tmpfile;
        else
            # The "index" = only H1 toplevel headings
            # XXX this is a kludge!  This requires each file to have exactly one H1
            egrep ^\# $m | grep -v "##" | head -1 > $tmpfile;
        fi

        # Make index or toc able to be output as rawtext
        if [ "$1" == "rawtext" ]
        then
            # Raw text mode: Just the filenames and section titles
            echo $m;
            cat $tmpfile;
        else
            # Output Markdown with everything as links too:

            echo
            # thisFileWithLink=`echo "[$base]($mhtml): "`;
            thisFileWithLink=`echo "[$base]($mhtml)"`;
            if $buildtoc; then
                # Full ToC has a bullet list for each .md file corresponding to heading structure
                # echo "[$mhtml]($mhtml)" contents:
                echo "### ${thisFileWithLink}"
                echo

                # XXX these two different while loops could be refactored a bit
                while IFS= read -r line || [[ -n $line ]]; do
                    sharpsigns=`echo $line | tr -Cd \#`;
                    mdListIndentation=`echo $sharpsigns | cut -c2- | sed 's/#/    /g'`;
                    text=`echo $line | tr -d \# | cut -c2-` ;

                    # Unix version of Markdown's rules for making header lines
                    # automatically be HTML link targets: convert to lowercase,
                    # remove all punctuation (except minus signs), convert spaces
                    # to minus signs, and consolidate repeated minus signs to a single one:
                    link=`echo $text | \
                        tr '[:upper:]' '[:lower:]' | \
                        tr '-' ' ' | \
                        tr  -d '[:punct:]' | \
                        tr ' ' '-' | \
                        tr -s '-'`;
                        # was  sed 's/--*/-/g'` ;
                    printf "%s* [%s](%s#%s)\n" "$mdListIndentation" "$text" "$mhtml" "$link";
                done < $tmpfile;
            else
                # Index has one line per .md file
                echo -n "${thisFileWithLink}:  "
            
                while IFS= read -r line || [[ -n $line ]]; do
                    text=`echo $line | tr -d \# | cut -c2-` ;
                    link=`echo $text | \
                        tr '[:upper:]' '[:lower:]' | tr  -d '[:punct:]' | \
                        tr ' ' '-' | sed 's/--*/-/g'`
                    printf "%s\n" "$text";
                done < $tmpfile;
            fi
        fi
    done
done
