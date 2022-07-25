
# Site Implementation To Do list

## Jeremy

Fix the URLs in implementations.tsv that went into "Jeremy's Homepage" column 3 

Fix broken links from publications into http://cnmat.berkeley.edu/publications


## Hallie

Fix broken URLs of 2004 conference publications

## Matt

Make an implementations page for the original libOSC from
<https://github.com/CNMAT/CNMAT-OSC>


Get in some more of the known publications

More perspectives:

<https://www.music.mcgill.ca/~gary/306/week9/osc.html> / <https://www.music.mcgill.ca/~gary/306/index.html#Outline>

<https://www.researchgate.net/publication/228777611_Open_Sound_Control_Constraints_and_Limitations>

Within TouchDesigner: <https://www.lynda.com/course-tutorials/OSC-Open-Sound-Control-overview/513599/589292-4.html>


Make an actual "publications" page framing what this collection is and providing several views:

- the raw source file <publications.tsv>
- alphabetical
- chronological
- contribute link


Make an actual "implementations" page saying we aspire to point to all
known implementations.  Provide several views:

- the raw source file <implementations.tsv>
- list of active (or generally by status)
- Those that have a specific feature? Maybe some commandline examples using the TSV?
- Fancy in-browser table query / rearrangement seems beyond the scope of the site for now.

Make OSC Conference 2004 publications link back to the page

## Legacy Implementation Research

Find easily findable implementations:

* Search the iOS App Store
* Search for Android apps
* <https://en.wikipedia.org/wiki/Open_Sound_Control#Applications>

Add lighting consoles such as <https://www.fullcompass.com/prod/511232-etc-colorsource-20-av-dmx-control-console-for-40-fixtures-with-20-faders-hdmi-and-audio-output>


## sendOSC and dumpOSC

Are these already on github?  Yes! <https://github.com/CNMAT/CNMAT-OSC>


Old web pages:

<http://cnmat.org/OpenSoundControl/dumpOSC.html>
<http://cnmat.org/OpenSoundControl/clients/sendOSC.html>


binary downloads would be great

Link to the new site page from the 98 OSC Kit publication page's "context"


### Upgrades

support TCP, websockets

Might need to rewrite in C++


## Switch the Domain Name

Make sure the new site gets archived on archive.org.

- <https://archive-it.org/blog/files/2021/03/Archive-It_Basic.pdf> ?


## Charm offensive

Reveal the new site and ask people to contribute fresh info

Prerequisites: 

* decently working site
* working submission mechanisms
* Editor team belief in ability to accept pull requests
* scraped email addresses from old osc-dev list
* Gather other ideas about email lists, social media etc.


### Reach out to


CNMAT home page and email list

CCRMA announcements, facebook

Old Emails scraped from `osc_dev` list

<https://x-io.co.uk/contact/>

linux-audio-user@lists.linuxaudio.org



## Future improvements

A guide to OSC libraries, e.g., grouped by programming language and
linking to pages in `implementations/*.html`


More introductory materials


### Ongoing goals

ongoing OSC publications search

- e.g., <https://cnmat.berkeley.edu/search/node/OSC%20type%3Abiblio>


ongoing OSC implementations search

- Are we missing any super old implementations from <http://cnmat.org/OpenSoundControl> ?

Make sure we have, e.g., github links, for all the implementations.



Link to every top-level page from the prose of the home page:

- perspectives



### Site implementation improvements

- Make accept-new-implementations handle image downloads

- accept-new-publications.sh local download of publications-that-are-downloads
  - rewrite those URLs to be served locally
  - document editor's workflow for this (when to commit the downloaded files etc)

- Make the one build script build everything (calling
  build-implementations etc as needed)

- Factor out the rules for converting filenames and section titles
into anchor names.  Maybe replace all of it with calls to pandoc.
(Put the function definition in a file that build.sh and
build-index.sh will source)

- refactor everything about build?

- Let build-implementations.sh take an argument for the last N lines in the
TSV instead of always deleting and rebuilding everything

Switch to [MkDocs](https://www.mkdocs.org) or
[Hugo](https://gohugo.io/about/features/) or...?


### Other structured site contributions

What other kinds of community contributions does the new site solicit?
(List in [contribute](contribute.html))

Do we want to structure these?  If so, for each, need to:

- decide the fields
- make the Google form
- make the accept script
- make the build script
- test


### Legacy content

Absorb old  “application areas” content into a new introduction to OSC?


Decide whether to serve the legacy site at
http://opensoundcontrol.org/legacy/2011-site and if so how to make it
visibly obvious that this is legacy content (e.g., big scary red
preamble)

link to the old OSC-dev archives (again with a scary preamble)

What to do with files like legacy/2011-site/clean/files/Everything-About-OSC.mov

#### Legacy content editorial 

Which of the "clean" scraped files should be kept for the new site?
What needs to be updated or discarded?

Here's what we have from the top-level folder of the legacy site that's not yet on the new site:

````
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
references.md
resources.md
sensor-gesture-based-electronic-musical-instruments.md
virtual-reality.md
wan-performance-and-telepresence.md
web-interfaces.md
wosclib.md
wrapping-other-protocols-inside-osc.md
````

re-implement the Drupal "book" structure of the legacy "developer resources"?
    https://web.archive.org/web/20200706171742/http://opensoundcontrol.org/resources
