# What We Mean by the "Status" of an OSC Implementation

One of the most important aspects of this website is the list of
software and hardware that can send and/or receive OSC messages: the
[list of OSC implementations](page-list.html#implementations), each
with a page on the website that lists (among many other fields) the
implementation's "status".  Here is what we mean by each possible
status:

Alpha
: The project is not (fully) released, is under active development,
  may contain major bugs or missing features, could change drastically
  from its current form, and is still intended to be used mainly by
  the developers themselves.  (See [Alpha
  testing](https://en.m.wikipedia.org/wiki/Software_testing#Alpha_testing).)

Beta
: The project is released (perhaps in a limited way) with the caveat
  that the currently-available version probably has problems and the
  creators are asking skilled users to try it out and report any
  issues.  (See [Beta
  testing](https://en.wikipedia.org/wiki/Software_testing#Beta_testing).)

Active
: The implementation fully exists and people are maintaining it.  The
  website works, is essentially accurate, and has some kind of contact
  information.  If it's a commercial product then the company is still
  selling and supporting it.  If it's an open-source software project
  there is at least one person (preferably a team) doing things like
  fixing bugs, adding new features, and porting to new operating
  systems.

Legacy
: The implementation was once *active* and is still available (e.g.,
  for download) but there is no longer a team maintaining it.  The
  website or code repository still exists but hasn't been updated in
  5+ years.  The implementation might still work (perhaps with
  caveats) but if not, you may be on your own.
  
Defunct
: The implementation "no longer works" (except perhaps under extremely
  limited contexts). The old website no longer exists except on
  [archive.org](https://web.archive.org).  Hopefully it has been
  superceded by a newer *active* implementation with similar features.


To be clear, we are using the term "implementation" to refer to the
*entire* thing that implements OSC, not just the OSC portion of that
thing. Maybe the OSC module works and hasn't been touched in years; as
long as the thing around the OSC module is Active, then for purposes
of this website, the entire "implementation" would be Active.  For
example, the [Wireshark](https://www.wireshark.org) project is Active,
so even though the [wireshark.osc](implementations/wiresharkosc.html)
OSC-specific plugin is not likely to need to change in the future, the 
implementation as a whole would be Active rather than Legacy.


## Related to Status

The implementations on this site conform to a certain field
structure. The fields are the questions of the content submission form
and the columns of the
[TSV](https://en.wikipedia.org/wiki/Tab-separated_values) file that
is the source of the implementation web pages.

In addition to **status** there are

Status Date
: The date the status was last updated

Status Notes
: Any additional notes that might add detail and/or clarity

Superseded?
: Blank if this implementation is still a good way to do something, or
  the URL (preferably on this site) of another implementation with
  largely or exactly similar functionality that is now the better way
  to accomplish that task.  This open-format text field could contain
  annotations, caveats, conditionals, URLs of multiple
  implementations, etc., but in the simplest case a lone URL means
  "don't use this; use that instead".

