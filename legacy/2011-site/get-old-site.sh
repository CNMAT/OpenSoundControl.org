# Download the old site from archive.org

wget -r --accept-regex '.*/web.archive.org/.*/opensoundcontrol.org/.*' \
     --reject-regex '(.*\.(css|js|ico|png))|(.*/(user|image_captcha|filter|export)/.*)|(.*((\?sort)|/node).*)|(.*/(tracker|feed))' \
     https://web.archive.org/web/20201128050430/http://opensoundcontrol.org 


# Some bad files left behind include rss.xml, pages of publications, files named just "filter"...
