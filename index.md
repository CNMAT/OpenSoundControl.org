# OpenSoundControl.org

Welcome to the OpenSoundControl website.  This site documents the
OpenSoundControl (OSC)
[specification](spec-1_0.html)([s](spec-1_1.html)), collects links to
related [publications](page-list.html#publications), and highights the
hardware and software
[implementations](page-list.html#implementations) of OSC brought to us
by members of our user/developer community.  This site is for
publishing, sharing, and showcasing all things OSC; we encourage
[contributions](contribute.html) which the [editors](editors.html)
will review and incorporate. You might start with the [list of
pages](page-list.html), site-wide [table of contents](toc.html)
(listing all the sections of every page), or more info
[about](README.html) the site.  All site content is covered by the
CC-BY [license](license.html).


## What is OSC?

OpenSoundControl (OSC) is a data transport specification (an
[encoding](encoding.html)) for realtime message communication among
applications and hardware. OSC was developed by researchers [Matt
Wright](https://ccrma.stanford.edu/matt-wright) and [Adrian
Freed](http://www.adrianfreed.com/) during their time at the Center
for New Music & Audio Technologies
([CNMAT](https://cnmat.berkeley.edu)). OSC was originally designed as
a highly accurate, low latency, lightweight, and flexible method of
communication for use in realtime musical performance.  They proposed
OSC in 1997 as "[a new protocol for communication among computers,
sound synthesizers, and other multimedia devices that is optimized for
modern networking
technology](publications/1997-Open-SoundControl-A-New-Protocol-for-Communicating-with-Sound-Synthesizers.html)".

OSC can be understood as a more flexible alternative MIDI; OSC clears
away many of the ideological and hardware constraints inherent to MIDI
in favor of a open-ended, user-defined address-space model that
provides arbitrary parametric control via standard networking
hardware. The OSC [Specification 1.0](spec-1_0.html) was formalized
and published in 2002.  The 2009 [Specification 1.1](spec-1_1.html)
update added support for new features and data types.  Over the years
OSC has been useful in a wide variety of domains beyond musical
contexts.  Its timing accuracy and flexibility make it a ready
solution for any application that requires time-sensitive
communication between software and/or hardware endpoints.

**/OSC/is/Open :** "OSC's [address
space](spec-1_0.html#osc-address-spaces-and-osc-addresses) is entirely
user-defined, thereby allowing it to be both lightweight and endlessly
customizable and extensible to the user's specific needs.  OSC
messages are differentiated from one another by a URI-style symbolic
naming scheme allowing for hierarchical organization of the address
space.  In fact, the whole of this paragraph corresponds to a valid
OSC message."

**/OSC/is/Accurate :** "Open Sound Control messages support a wide
variety of symbolic and high-resolution [data
types](spec-1_0.html#osc-type-tag-string). OSC messages can embed
high-resolution [time
tags](spec-1_0.html#temporal-semantics-and-osc-time-tags) for accurate
temporal coordination and can be assembled into
'[bundles](spec-1_0.html#osc-bundles)' to ensure simultaneous delivery
and execution."

**/OSC/is/Flexible :** "Open Sound Control includes a [pattern
matching
language](spec-1_0.html#osc-message-dispatching-and-pattern-matching)
to specify multiple recipients of a single message.  It is designed
for maximum interoperability and thus provides a ready solution for
communicating between applications and devices, both locally and over
a network."

## How to use this site...

* For a more detailed explanation of how OSC works, please see the
  specifications: [Spec_1.0](spec-1_0.html) &
  [Spec_1.1](spec-1_1.html)

* Browse the
  [implementations](page-list.html#implementations)
  to discover the many ways in which OSC is used in artistic and
  commercial projects.

* [Contribute to the site](contribute.html) by submitting information
  about your own project.
