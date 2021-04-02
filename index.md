# OpenSoundControl.org

Welcome to the OpenSoundControl website.  This site documents the
OpenSoundControl (OSC) specification(s), collects links to related
publications, and highights a number of hardware and software
implementations of OSC brought to us by members of our user/developer
community.  This site is for publishing, sharing, and showcasing all things 
OSC. Users are encouraged to contribute by sharing links to documentation of 
projects and artworks that make use of OSC. Please let us know how you are using OSC by creating an
[implementation](page-list.html#implementations) page for your project
[here](https://docs.google.com/forms/d/e/1FAIpQLSdnHHNzoZ2Qf_gFabpeuNDfAGOWCNMEknDKnDnexRLiUYv7bg/viewform).

## What is OSC?

OpenSoundControl (OSC) is a multi-paradigmatic data transport
specification for datagram communication among applications and
hardware. OSC was developed by researchers [Matt
Wright](https://music.stanford.edu/people/matt-wright) and [Adrian
Freed](http://www.adrianfreed.com/) during their time at the Center
for New Music & Audio Technologies
([CNMAT](https://cnmat.berkeley.edu)). OSC was originally designed as
a highly accurate, low latency, lightweight, and flexible method of
communication for use in realtime musical performance. Wright proposed
OSC in 1997 as “a new protocol for communication among computers,
sound synthesizers, and other multimedia devices that is optimized for
modern networking technology"
[[1]](files/2009-NIME-OSC-1.1.pdf).

Originally intended as a more flexible alternative MIDI, OSC clears
away many of the ideological and hardware constraints inherent to MIDI
in favor of a open-ended, user-defined address-space model that can
accommodate arbitrary parametric control over standard networking
hardware. The OSC [Specification 1.0](spec-1_0.html) was
formalized and published in 2002.  The 2009 [Specification 1.1](files/2009-NIME-OSC-1.1.pdf)
update added support for new features and data types.  In the years
since, OSC has found application in a wide variety of domains beyond
musical contexts.  Its timing accuracy and flexibility make it a ready
solution for any application that requires time-sensitive
communication between software and hardware endpoints.

**/OSC/is/Open :** "OSC's address space is entirely user-defined,
thereby allowing it to be both lightweight and endlessly customizable
and extensible to the user's specific needs.  OSC messages are
differentiated from one another by a URI-style symbolic naming scheme
allowing for hierarchical organization of the address space.  In fact,
the whole of this paragraph is a valid OSC message."

**/OSC/is/Accurate :** "Open Sound Control messages support a wide
variety of symbolic and high-resolution data types. OSC messages can
embed high resolution time tags for accurate temporal coordination and
can be assembled into 'bundles' to ensure simultaneous delivery and
execution."

**/OSC/is/Flexible :** "Open Sound Control includes a pattern matching
language to specify multiple recipients of a single message.  It is
designed for maximum interoperability and thus provides a ready
solution for communicating between applications and devices, both
locally and over a network."

## How to use this site...

* For a more detailed explanation of how OSC works, please see the
  specifications: [Spec_1.0](spec-1_0.html) &
  [Spec_1.1](spec-1_1.html)

* Browse the
  [implementations](page-list.html#implementations)
  to discover the many ways in which OSC is used in artistic and
  commercial projects.

* Keep in touch by [submitting information
  about your own
  project](https://docs.google.com/forms/d/e/1FAIpQLSdnHHNzoZ2Qf_gFabpeuNDfAGOWCNMEknDKnDnexRLiUYv7bg/viewform).

