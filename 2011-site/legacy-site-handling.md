
# Add a .html suffix to every filename (that isn't a directory)

for f in `find web.archive.org  -type f`; do mv $f $f.html ; done


# Keep only the latest version of each file

# Remove the boring junk (navigation, etc.) from each file

