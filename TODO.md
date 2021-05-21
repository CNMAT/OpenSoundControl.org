
# Site Implementation To Do list

## Jeremy

Fix the URLs in implementations.tsv that went into "Jeremy's Homepage" column 3 

Fix broken links from publications into http://cnmat.berkeley.edu/publications


## Hallie

Fix broken URLs of 2004 conference publications

## Matt

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


Make an actual "implementations" page saying we aspire to point to all known implementations.  Provide several views:

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



## Switch the Domain Name

Fix links from Google Docs into stanford.edu

Make sure links to old <http://opensoundcontrol.org/OSCGestureMapping> will still work.

Something something [CCRMA
sysadmin](https://ccrma.stanford.edu/docs/system/sysadmin.html)
something something.

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

<https://x-io.co.uk/contact/>

linux-audio-user@lists.linuxaudio.org



## Future improvements

### Ongoing goals

ongoing OSC publications search

ongoing OSC implementations search

- Are we missing any super old implementations from <http://cnmat.org/OpenSoundControl/> ?

Link to every top-level page from the prose of the home page:

- perspectives



### Code improvements



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
