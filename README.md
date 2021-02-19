# About This OpenSoundControl website

This is the 2021 version of the OpenSoundControl
[website](opensoundcontrol.org). It combines legacy OSC website
content (especially including the 1.0 Specification) with the
bare-bones implementation of [Matt Wright's CCRMA
Documentation](https://ccrma.stanford.edu/docs/toc.html).


The auto-generated [index](index.html) and [table of
contents](toc.html) are one of the best ways to find information on
the site.


XXX To contribute, here are some forms:

* Implementation
* Best practice
* Project using OSC
* Address space / schema that other people may like to copy or know about
* ...

Everything lives in this git repo:
<https://github.com/CNMAT/OpenSoundControl.org>


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

This repo contains
[bash](https://en.wikipedia.org/wiki/Bash_(Unix_shell)) scripts to
[build](build.sh) the website html with [pandoc](https://pandoc.org),
[deploy](deploy.sh) to the webserver, and [build the overall table of
contents](buildindex.sh).

## Values

Here are some of the values and goals embodied in this project:

User-facing:

* Simple, clear documentation oriented towards both beginngers ("what
  is OSC? / "how do I use it?") and experts (implementors, developers, etc.)
* Simple, clean, accessible web design, not flashy / graphics-rich
* Clear and useful site navigation supporting discovery
* Central location aspiring to link to "all" the world's information
  about OpenSoundControl
* Mechanism for the OSC community to contribute site content so it stays
  up do date.
* The site is for publication, not discussion. In other words, it's a
  long-term site containing curated information intended to be useful
  in the future, not a discusison forum such as slack / twitter /
  reddit /
  [stackoverflow](https://stackoverflow.com/search?q=opensoundcontrol).
  (If something like this takes off, we would link to it from this
  site.)
* Slow publication cycle, easy to maintain (by volunteers hoping to
  spend ~1-2 hours/month)


Technical:

* Source content stored in simple files not some software's internal
  database
* Simple, lightweight open-source toolchain; not tied to any "heavy"
  infrastructure such as Drupal.
* Designed for long-term maintainability with potentially infrequent updates
* Imposes some limits on markdown use to make the scripts easier to implement.
