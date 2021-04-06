
# Site Implementation To Do list

## Matt Urgent

- Make a general "blob" / "other" form for site contributions

Why doesn't build script re-build missing page-list.md

what happened to the posters in legacy/2011-site/clean/files/wright-posters.pdf



## Legacy Implementation Research

manually check up on each legacy implementation

 - for the external links, which ones still work?
 - For the ones that don't, is it relatively easy to find a new URL for the project?
 - For the ones that seem to be dead projects, can we confirm the
   death and the date, and can we find something that's superseded it?
 - are there any publications?
 
Find publications for legacy implementations.

Are we missing any super old implementations from <http://cnmat.org/OpenSoundControl/> ?

Enter other known implementations:

* [MOTU AVB audio interfaces](https://motu.com/en-us/)
* [QLab](https://qlab.app/)
* [ETC Lighting](https://www.etcconnect.com/Products/Consoles/Eos-Family/Eos-Ti/Features.aspx)
* [Meyer Sound D-Mitri](https://meyersound.com/product/d-mitri/)
* [osc-node](https://githu]b.com/marsvaardig/osc-node)
* [x-osc](https://x-io.co.uk/x-osc)
* [wekinator](http://www.wekinator.org)
* [python-Osc](https://pypi.org/project/python-osc/)
* [oscPy](https://pypi.org/project/oscpy/)
* [sensors2osc](https://sensors2.org/osc/)
* [atemOSC - OSC bridge fro Blackmagic Design video switchers](https://github.com/SteffeyDev/atemOSC)
* [qualisys](https://www.qualisys.com/software/open-sound-control/)
* [lightform](https://lightform.com/blog/lightform-osc-interactivity)
* 


Find easily findable implementations:

* Search the iOS App Store
* Search for Android apps

## sendOSC and dumpOSC

Are these already on github?

Need binary downloads

Old web pages:

<http://cnmat.org/OpenSoundControl/dumpOSC.html>
<http://cnmat.org/OpenSoundControl/clients/sendOSC.html>



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



## Future improvements


### Code improvements

- leave out "status details" label if contents are empty

- Make accept-new-implementations handle image downloads

- still need accept-new-publications.sh

- Local download of publications-that-are-downloasd
  - rewrite those URLs to be served locally
  - document editor's workflow for this (when to commit the downloaded files etc)


- Make the one build script build everything (calling
  build-implementations etc as needed)

- Factor out the rules for converting filenames and section titles
into anchor names.  Maybe replace all of it with calls to pandoc.
(Put the function definition in a file that build.sh and
build-index.sh will source)

- refactor everything about build?


### Other site contributions

What other kinds of community contributions does the new site solicit?
(List in [contribute](contribute.html))

For each, need to:

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



## Done

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

make a site page defining “status”


finish accept-new-implementations.sh

fix build-implementations.sh now that we have two new columns

Initial home page

Factor out publications to a separate submission type

Finalize the initial format of what an "implementation" consists of for
the new site, i.e., the submission form's questions and the
columns/fields of the TSV of "all officially known implementations".

How do we know the URL of a submitted publication so that the implementation, etc., can link to it?
- Simple rule to turn title into markdown file? 


make a site [page explaining the rule for publication filenames](publication-filename-rules.html).
