pup 'a attr{href}' < paperlist.html | fgrep http://www.adrianfreed.com/print | sort | uniq > paper-urls

for u in `cat paper-urls` ; do echo $u; curl $u > `basename $u`.html; done


