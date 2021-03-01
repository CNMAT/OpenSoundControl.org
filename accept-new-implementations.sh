googledownload="Implementations (Responses) - Form Responses 1.tsv"

# Make sure there's exactly one argument and that it's an integer:
if [ $# -eq 1 ] && [ "$1" -eq "$1" ] 2>/dev/null; then
    num_new=$1
    echo Accepting $num_new implementations from "$googledownload"
else
    echo Usage:
    echo $0 n
    echo where \"n\" is the number of new implementations to take from
    echo the Google TSV download into the site\'s official source list
    echo of implementations.
    exit -1
fi


# First confirm assumptions about fields
# echo Confirming assumptions about fields in $tsv

expectedFieldsFile=implementations-google-column-names.tsv

head -1 "$googledownload" | diff -w $expectedFieldsFile -

if [ ! $? -eq 0 ] ; then
    echo Oh no\!  Field names were not as expected by $0 - diff above
    echo exiting
    exit -2
fi


# Make sure the file has at least enough lines for the header row plus $num_new
numlines=`wc -l "$googledownload" | awk '{print $1}'`

if (( $numlines < 1 + $num_new )); then
    echo Downloaded TSV file \"$googledownload\"
    echo has only $numlines line\(s\) - not enough for a header row plus $num_new new implementations
    exit -3;
fi


tail $num_new "$googledownload"

# Remove fields including timestamp, email...
# Append to end of implementations
# check for duplicates - if so suggest possible git checkout

# Check if any of the submitters are new site contributors and if so add them to the list.

exit 0
