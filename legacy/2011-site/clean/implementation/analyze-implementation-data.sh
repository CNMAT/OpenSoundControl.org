
# echo All the HTML markup related to \"field\":
# cat *.md | grep \{\.field | sort | uniq


# What are the "fields" of the structured Drupal node type for "implementation"?
echo These are the names of all the fields:
cat *.md | awk '/.field-label/{getline; print}' | sort | uniq 


echo
echo these are the possible values for \"Bundle Support\"
cat *.html | pup '[class~="field-field-bundle-support"]' | pandoc -f html -t markdown | grep -v ':::' | sort | uniq


echo
echo these are the possible values for \"Features\"
cat *.html | pup '[class~="field-field-features"]' | pandoc -f html -t markdown | grep -v ':::' | sort | uniq

echo
echo these are the possible values for \"Platform\"
cat *.html | pup '[class~="field-field-platform"]' | pandoc -f html -t markdown | grep -v ':::' | sort | uniq


echo
echo these are the possible values for \"Project Type\"
cat *.html | pup '[class~="field-field-project-type"]' | pandoc -f html -t markdown | grep -v ':::' | sort | uniq


# echo these are all the implemetations\' OSC documentation URLs in a not very useful list:
# cat *.html | pup '[class~="field-field-osc-documentation-referen"] text{}' | pandoc -f html -t markdown 

echo
echo these are the possible values for \"Timetag Support\"
cat *.html | pup '[class~="field-field-timetag-support"]' | pandoc -f html -t markdown | grep -v ':::' | sort | uniq


echo
echo these are the possible values for \"Transport Type:\"
cat *.html | pup '[class~="field-field-transport-type"]' | pandoc -f html -t markdown | grep -v ':::' | sort | uniq

echo
echo these are the possible values for \"Type Support]\"
cat *.html | pup '[class~="field-field-type-support"]' | pandoc -f html -t markdown | grep -v ':::' | sort | uniq


echo
echo here are all the Project URLs
cat *.html | pup '[class~="field-field-project-url"]'  | pandoc -f html -t markdown | grep -v ':::' | grep -v 'Project URL:' | egrep -v '^$'

echo
echo here are all the Project OSC Documentation URLs
cat *.html | pup '[class~="field-field-osc-documentation-referen"]'  | pandoc -f html -t markdown | grep -v ':::' | grep -v 'Project URL:' | egrep -v '^$'

