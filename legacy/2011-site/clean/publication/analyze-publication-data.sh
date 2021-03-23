
# echo All the md markup related to \"biblio\":
# cat *.md | grep \{\.biblio-row-title | sort | uniq

# echo yes there are blank names:
# fgrep "[ ]{.biblio-row-title}" *.md

# What are the "fields" of the structured Drupal "biblio" node type?

# echo These are the names of all the fields \(\"biblio-row-title\"\)
cat *.html | pup '[class~="biblio-row-title"]' | sed 's|</span>||g' | sed 's|<span class="biblio-row-title">||g' | sort | uniq | sed 's/^ //g' | sed '/^$/d' > pubs-fields

echo These are all the possible values of Publication Type:
grep "Publication Type" *.md | awk -F \} '{print $2}' | sort | uniq



echo How many publications contain a value for each field\?
cat pubs-fields | 
while read field; do
    echo -n $field '==>'
    Fgrep "$field" *.md | wc -l
done

exit 0

# Example of extracting the values for one field
echo
echo Here are the abstracts:
for m in *.md; do echo -n $m '==>' ; fgrep "[ Abstract ]{.biblio-row-title}" $m; done


# Example of extracting the values for each field
cat pubs-fields | 
while read field; do
    echo
    echo
    echo field $field
    grepme="[ "$field" ]{.biblio-row-title}"
    echo fgrep $grepme
    echo
    for m in [b]*.md; do echo $m; echo -n '   ' ; fgrep "$grepme" $m | awk -F \} '{print $2}' ; done    
done

exit 0
