# Site Implementation To Do list

## Code improvements

Factor out the rules for converting filenames and section titles into anchor names.
(put the function definition in a file that build.sh and build-index.sh will source)



## Site layout

"Finalize" navigation

directory structure of deployed site (/img, /files, /publications etc)

Do we like subheadings within each implementation page?  And how that looks in the TOC?

Decide whether to serve the legacy site at
http://opensoundcontrol.org/legacy/2011-site and if so how to make it
visibly obvious that this is legacy content (e.g., big scary red
preamble).

Home page?  Containing what?


## Publications

Figure out what fields to ask for

Do the whole Google Form / TSV / build-pubs.sh thing like for implementations



## Implementations

### Workflow Design

Factor out publications to a separate submission type

### Hacking

finish accept-new-implementations.sh
- Local Download of publications-that-are-downloads and images, then
  rewrite those URLs to be served locally


Finalize the initial format of what an "implementation" consists of for
the new site, i.e., the submission form's questions and the
columns/fields of the TSV of "all officially known implementations".

refactor everything about build


### Research

manually check up on each legacy implementation

 - for the external links, which ones still work?
 - For the ones that don't, is it relatively easy to find a new URL for the project?
 - For the ones that seem to be dead projects, can we confirm the
   death and the date, and can we find something that's superseded it?
 - are there any publications?
 
Find publications for legacy implementations.

Are we missing any super old implementations from <http://cnmat.org/OpenSoundControl/> ?

Enter other known implementations:

* MOTU AVB audio interfaces
* [x-osc](https://x-io.co.uk/x-osc)
* [wekinator](http://www.wekinator.org)


Find easily findable implementations:

* Search the iOS App Store
* Search for Android apps



## Other site contributions

What other kinds of community contributions does the new site solicit?
(List in [README](README.html))

### Publications

Should there be a publications submission?

Figure out format for source list of publications, gleaned from

## Legacy content

Browse the old site on archive.org and make sure we're not missing any important legacy files

Absorb old  “application areas” content into a new introduction to OSC?

link to the old OSC-dev archives


### Editorial 

Which of the "clean" scraped files should be kept for the new site?
What needs to be updated or discarded?

Here's what we have from the top-level folder of the legacy site:

````
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
    

## sendOSC and dumpOSC

Are these already on github?

Need binary downloads

Old web pages:

<http://cnmat.org/OpenSoundControl/dumpOSC.html>
<http://cnmat.org/OpenSoundControl/clients/sendOSC.html>


# Charm offensive

Reveal the new site and ask people to contribute fresh info

Prerequisites: 

* decently working site
* working submission mechanisms
* Editor team belief in ability to accept pull requests
* scraped email addresses from old osc-dev list
* Gather other ideas about email lists, social media etc.


## Reach out to

<https://x-io.co.uk/contact/>




# Done

put in some initial minor site content in .md

update build script

remove \" and \' from source markdown?

update buildindex script


- URL: opensoundcontrol.org/implementations/FOO.html
- publications
- license
- notes
- status (as of DATE the project was: alpha, beta, maintained, legacy, defunct)
- images (links? Does the site scrape)
- superseded by another product/implementation...
- is this submission an updated version of the information for this implementation?

Convert legacy implementation "source" to TSV tabular form
- write script for this

Scrape the descriptions of the old implementations


finish buildimplementations.sh

- Highlight defunct / superseded status



Clarify the site's CC-BY status on the site and in the forms

