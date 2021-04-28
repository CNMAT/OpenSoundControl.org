if [ "$1" == "toc" ]
then
    buildtoc=true;
    # >&2 echo Building Table of Contents...
else
    buildtoc=false;
    # >&2 echo Building Page List...
fi



if $buildtoc; then
    echo "# OpenSoundControl.org Table of Contents"
    echo
    echo "OpenSoundControl.org table of contents (listing every section of every page),"
else
    echo "# OpenSoundControl.org Page List"
    echo
    echo "OpenSoundControl.org page list (listing every page on the site),"
fi
echo "generated `date` by `whoami`"

tmpfile=/tmp/osc-org-index.txt


# Find all immediate subfolders (should be recursive!) containing at least one .md file
dirs=`ls -1 */*.md | awk -F / '{print $1}' | sort -df | uniq`

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

        if [ "${base:0:15}" == "navigation-menu" ] || [ "$base" == "page-list" ] || [ "$base" == "toc" ]
        then
            # This file shouldn't be indexed
            continue;
        fi
           
        # >&2 echo file $m is html $mhtml;

        # XXX these should grep for one or more # followed by a space
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
                    # bug: this assumes sharp signs occur only at the beginning of a line
                    # sharpsigns=`echo $line | tr -Cd \#`;
                    sharpsigns=`echo $line | sed 's|\(^#*\).*$|\1|g'`
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

                # kludge to solve the "nerdy version" problem

                if [ "$d" != "implementations" ] && [ "$d" != "publications" ]
                then
                    # printf instead of echo because
                    # https://apple.stackexchange.com/questions/173836/why-echo-n-doesnt-work-in-this-script-on-mac-terminal

                    printf "${thisFileWithLink}:  "
                fi

                # But we need to see publications' year because it's in that order because the filename begins with year
                if [ "$d" == "publications" ]
                then
                    # Luckily it has to be the first 4 characters of the filename
                    YEAR=`echo $base | cut -c 1-4`
                    printf "$YEAR, "
                fi
                

                       
                while IFS= read -r line || [[ -n $line ]]; do
                    text=`echo $line | tr -d \# | cut -c2-` ;
                    link=`echo $text | \
                        tr '[:upper:]' '[:lower:]' | tr  -d '[:punct:]' | \
                        tr ' ' '-' | sed 's/--*/-/g'`
                    printf "[%s](%s)\n" "$text" "$mhtml";
                done < $tmpfile;
            fi
        fi
    done
done
