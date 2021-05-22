# This Site's Rules for the Filenames of OSC Publications

This website contains a [list of OSC-related
publications](page-list.html#publications), each with a page on the
website listing that publication's title, authors, etc.
Each page's URL consists of `/publications/` followed by
the name of the specific html file. These are the rules for
how the site determines each publication's filename:

* Start with the publication **year** followed by the **title**.
* Omit anything in parentheses
* Omit all punctuation characters
* Remove trailing whitespace
* Convert spaces to `-`
* Convert repeated `--` to just one

This is the line of `build-pubs.sh` implementing this:

````bash
echo ${YEAR}-${TITLE}  | sed 's/(.*)//g' | tr '-' ' ' | tr  -d '[:punct:]' | sed 's/[ ]*$//g' | tr ' ' '-' | tr -s '-
```` 


