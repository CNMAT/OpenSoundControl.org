# About This OpenSoundControl website

This is the 2021 version of the OpenSoundControl
[website](opensoundcontrol.org). It combines legacy OSC website
content (especially including the 1.0 Specification) with the
bare-bones implementation of [Matt Wright's CCRMA
Documentation](https://ccrma.stanford.edu/docs/toc.html).

The auto-generated [list of pages](page-list.html) and [table of
contents](toc.html) are one of the best ways to find information on
the site.


## How to Contribute

XXX To contribute, here are some forms:

* [Implementation](https://forms.gle/fPnM82RxS1hBNPua8)
* Publication
* Best practice
* Project using OSC
* Address space / schema that other people may like to copy or know about
* Knowledge base item
* Simple boilerplate template code that can be a starting point for OSC sending/receiving in various languages
* ...

Site editors will manually review form submissions and approve all
legitimate additions to the site. 

All site content lives in this git repo:
<https://github.com/CNMAT/OpenSoundControl.org>

If you are comfortable using git then feel free to
[fork](https://docs.github.com/en/github/collaborating-with-issues-and-pull-requests/creating-a-pull-request)
the repository and make [pull
requests](https://docs.github.com/en/github/collaborating-with-issues-and-pull-requests/about-pull-requests)
with your proposed contributions to the site. (Don't forget to add
yourself to contributors.txt so you'll appear in the [site's list of
contributors](contributors.html).)

## Site Implementation

The source files use the
[Markdown](https://daringfireball.net/projects/markdown/)
format. 
There
are
lots
of
great
Markdown
[guides](https://www.markdownguide.org),
tutorials,
[cheatsheets](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet)
etc.
Also 
[the Pandoc manual](https://pandoc.org/MANUAL.html) 
has lots of great info about Markdown in general and 
[Pandoc's extensions to
Markdown](https://pandoc.org/MANUAL.html#pandocs-markdown) in
specific.

Every `.html` file comes from a corresponding `.md` file that you can
also download; for example this file [README.md](README.md) generates
the output [README.html](README.html).

The site's repo contains
[bash](https://en.wikipedia.org/wiki/Bash_(Unix_shell)) scripts to
[build](build.sh) the website html with [pandoc](https://pandoc.org),
[deploy](deploy.sh) to the webserver, and [build the overall table of
contents](buildindex.sh).

Part of the simplicity of these scripts is based on limiting
assumptions about the structure of the source markdown files,
especially in the creation of the site's [index](index) and [table of
contents](toc.html):

* all headings must use the markdown syntax with some number of `#` at
  the beginning of the line (not the line of `---` on the next line).
* every file must contain at least one top-level (`#` i.e., HTML `<H1>`)
* the "nesting structure" of the headings must be "well formed", e.g.,
you can't go from `#` (H1) to `###` (H3) without `##` (H2) in between.
* Can't use [pandoc metadata
  blocks](https://pandoc.org/MANUAL.html#metadata-blocks) for pages'
  title, author, and date, because that would mess up the incredibly
  simple [navigation menu](navigation-menu.md) system.
  
## Values

Here are some of the values and goals embodied in this project:

### User Values

* Simple, clear documentation oriented towards both beginngers ("what
  is OSC? / "how do I use it?") and experts (implementors, developers, etc.)
* Simple, clean, accessible web design, not flashy / graphics-rich
* Clear and useful site navigation supporting discovery of curated
  useful information
* Central location aspiring to link to "all" the world's information
  about OpenSoundControl
* Mechanism for the OSC community to [contribute](#how-to-contribute)
  site content so it stays up do date.
* The site is for publication, not discussion. In other words, it's a
  long-term site containing curated information intended to be useful
  in the future, not a discusison forum such as slack / twitter /
  reddit /
  [stackoverflow](https://stackoverflow.com/search?q=opensoundcontrol).
  (If something like this takes off, we would link to it from this
  site.)
* Not a tech support help desk; more of an unstaffed reference library
* Slow publication cycle, easy to maintain (by volunteers hoping to
  spend ~1-2 hours/month)


### Technical Values

* Source content stored in simple files, not some software's internal
  database
* Simple, lightweight open-source toolchain; not tied to any "heavy"
  infrastructure such as Drupal.
* Designed for long-term maintainability with potentially infrequent updates
* Designed to be easy to migrate site content to another platform in the future
* Imposes some limits on markdown use to make the scripts easier to
  implement 
