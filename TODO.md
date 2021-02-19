# To Do

## Admin

Copyright structure?  CC-BY?

What if people want to help maintain the site?

When do we do the reveal of the new site and the charm offensive to
get people to contribute fresh info?


## Site layout

Graphical elements?

"Finalize" navigation

directory structure of deployed site (/img, /files etc)

Decide whether to serve the legacy site at http://opensoundcontrol.org/legacy/2011-site 

Home page?  Containing what?



## Implementations

Define the initial format of what an "implementation" consists of for
the new site, i.e., the submission form's questions and the
columns/fields of the TSV of "all officially known implementations".

- URL: opensoundcontrol.org/implementations/FOO.html
- publications
- license
- notes
- status (as of DATE the project was: alpha, beta, maintained, legacy, defunct)
- images (links? Does the site scrape)
- superseded by another product/implementation...
- is this submission an updated version of the information for this implementation?

Convert legacy implementation "source" to TSV tabular form

- will somebody manually check up on each of these?
- write script for this

finish buildimplementations.sh

Do we need a separate index of implementations?

Find publications for legacy implementations.



## Other site contributions

What other kinds of community contributions does the new site solicit?
(List in [README](README.html))



## Legacy content

 - for the internal links (within the old opensoundcontrol.org site), are there any legacy files not yet captured by this process that we need to add?

 - for the external links, which ones still work?  For the ones that don't, is it relatively easy to find a new URL for the project?  For the ones that seem to be dead projects, can we confirm the death and do we want to document the past existence of the thing (in a way that clearly indicates it’s currently defunct)?


Top-level:

````
MUS-C02SX1BYGTF1:clean matt$ ls -1 *.md
2004-osc-conference.md
cnmat-software-library-downloads.md
guide-osc-libraries.md
implementations.md
introduction-osc.md
liblo.md
mailing-list-archives.md
mapping-nonmusical-data-sound.md
multiple-user-shared-musical-control.md
networked-lan-musical-performance.md
osc-application-areas.md
osc-kit-0.md
osc.md
oscpack.md
publications?page=1.md
references.md
resources.md
sensor-gesture-based-electronic-musical-instruments.md
spec-1_0-examples.md
spec-1_0.md
spec-1_1.md
virtual-reality.md
wan-performance-and-telepresence.md
web-interfaces.md
wosclib.md
wrapping-other-protocols-inside-osc.md
````




re-implement the Drupal "book" structure of the legacy "developer resources"?
    https://web.archive.org/web/20200706171742/http://opensoundcontrol.org/resources
    


# Done

put in some initial minor site content in .md

update build script

remove \" and \' from source markdown?

update buildindex script

