# How to Contribute to This OpenSoundControl website

The creators of this website ask OSC users and developers worldwide to
contribute various kinds of content to the site (under the site's
CC-BY [license](license.html)) and/or to help with tasks in [the
site's TO-DO list](TODO.html).

## Contributing via Web Forms

The easiest way to contribute something is to fill out one of these
web forms:

* [Implementation](https://forms.gle/fPnM82RxS1hBNPua8): hardware or
  software that sends and/or receives OSC and could be useful to
  other people.
* [Publication](https://forms.gle/LxepP12pPrFK1iZb7): a journal
  article, conference paper, technical report, etc., describing
  research related to (implementing, using, teaching, extending...)
  OSC.
* [Contribution](https://forms.gle/ZXmAjC6tySM3Wy7e6), a generic
  category (like the [OSC-blob
  type](spec-1_0.html#atomic-data-types)), e.g.,
  * Best practice
  * Project using OSC
  * Address space / schema that other people may like to copy or know about
  * Simple boilerplate template code that can be a starting point for
    OSC sending/receiving in various languages
  * Suggested edit/correction/update to an existing page on the site.
  * Another useful [perspective](perspectives.html) on OSC.
  * ...

You do not have the be the author of the publication or the creator of
the implementation to add content to the site.

Site editors will manually review form submissions and approve all
legitimate additions to the site. The result of approved submissions is
a [TSV](https://en.wikipedia.org/wiki/Tab-separated_values) file whose
rows are the various submitted items and whose columns are the fields
for that type of item; a script automatically generates site pages from
the TSV files.

## Contributing via Git

All site content (both the source data and the programs that create
the web pages) lives in [the site's git repository](site-repo.html).

If you are comfortable using git then feel free to
[fork](https://docs.github.com/en/github/collaborating-with-pull-requests/working-with-forks)
the repository and
[create](https://docs.github.com/en/github/collaborating-with-issues-and-pull-requests/creating-a-pull-request)
a [pull
request](https://docs.github.com/en/github/collaborating-with-issues-and-pull-requests/about-pull-requests)
for each proposed contribution to the site. (Don't forget to add
yourself to contributors.txt so you'll appear in the [site's list of
contributors](contributors.html).)

Please note that the script <build-implementations.sh> procedurally
generates all of the `.md` files inside the `implementations`
subdirectory; **you must change information about an implementation in
awkward `tsv` format instead of simply editing the resulting `.md`
file**.  (It [would be nice](TODO.html) to change the implementation
to use something like `.yaml` instead of `.tsv` to hold the structured
table of implementation info.)
