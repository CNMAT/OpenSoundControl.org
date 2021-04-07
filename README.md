# About This OpenSoundControl website

This is the 2021 version of the OpenSoundControl
[website](opensoundcontrol.org). It combines legacy OSC website
content (especially including the 1.0 Specification) with the
bare-bones implementation of [Matt Wright's CCRMA
Documentation](https://ccrma.stanford.edu/docs/toc.html) and a way for
people to [contribute](contribute.html) content that
[editors](editors.html) will moderate/curate/organize/publish.

The auto-generated [list of pages](page-list.html) and [table of
contents](toc.html) are one of the best ways to find information on
the site.



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
[deploy](deploy-test.sh) to the webserver, and [build the overall
table of contents](build-index.sh).

Part of the simplicity of these scripts is based on limiting
assumptions about the structure of the source markdown files,
especially in the creation of the site's [page list](page-list) and
[table of contents](toc.html):

* all headings must use the markdown syntax with some number of `#` at
  the beginning of the line (not the line of `---` on the next line).
* every file must contain at least one top-level (`#` i.e., HTML `<H1>`)
* the "nesting structure" of the headings must be "well formed", e.g.,
you can't go from `#` (H1) to `###` (H3) without `##` (H2) in between.
* Can't use [pandoc metadata
  blocks](https://pandoc.org/MANUAL.html#metadata-blocks) for pages'
  title, author, and date, because that would mess up the incredibly
  simple [navigation menu](navigation-menu.md) system.
* All within-site links must be relative URLs (starting neither with
  "http" nor with "/" but rather just the name of the html file with 
  maybe a "../").
  
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
* Mechanism for the OSC community to [contribute](contribute.html)
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
* Weak preference for the [serial
  comma](https://en.wikipedia.org/wiki/Serial_comma)


### Technical Values

* Source content stored in simple files in a version control
  repository (that tracks history), not some software's internal database
* Never have email addresses on the site or in the site's back-end repo
* Simple, lightweight open-source toolchain; not tied to any "heavy"
  infrastructure such as Drupal.
* Source data (in .TSV and .md files) automatically become the site's
  html files; html is built locally and not committed to the repo
* Designed for long-term maintainability with potentially infrequent updates
* Designed to be easy to migrate site content to another platform in the future
* Imposes some limits on markdown use to make the scripts easier to
  implement 
