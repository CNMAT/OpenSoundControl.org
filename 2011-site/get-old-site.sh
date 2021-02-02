# Download the old site from archive.org

wget -r --accept-regex '.*/web.archive.org/.*/opensoundcontrol.org/.*' \
     --reject-regex '(.*\.(css|js|ico|png))|(.*/user/login.*)' \
     https://web.archive.org/web/20201128050430/http://opensoundcontrol.org 

exit



# Add a .html suffix to every filename (that isn't a directory)

for f in `find web.archive.org  -type f`; do mv $f $f.html ; done
