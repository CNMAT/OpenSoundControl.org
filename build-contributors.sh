#!/bin/bash

if [[ contributors.txt -nt contributors.md ]] ; then
    echo Updating contributors.md
    rm -f contributors.md
    cat << EOF > contributors.md
# Website Contributors

Here is a full list of all current contributors to the
OpenSoundControl.org website, alphabetically by first name, some with
personal website links:

EOF
    # Generate a sorted, no-blank-lines-containing, comma-separated list of the contributors:
    sort -df contributors.txt | uniq | sed '/^[[:space:]]*$/d' | sed '$ ! s/$/,/g' >>  contributors.md
fi

