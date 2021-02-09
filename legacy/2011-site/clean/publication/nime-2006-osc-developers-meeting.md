::: {.content}
::: {#biblio-node}
[ ]{.Z3988
title="ctx_ver=Z39.88-2004&rft_val_fmt=info%3Aofi%2Ffmt%3Akev%3Amtx%3Adc&rfr_id=info%3Asid%2Fopensoundcontrol.org&rft.title=NIME+2006+OSC+Developers+Meeting&rft.date=2006&rft.aulast=Wright&rft.aufirst=Matt&rft.au=Muller%2C+R%C3%A9my"}

  ---------------------------------------------- -- -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
         [ Publication Type ]{.biblio-row-title}    Conference Paper
      [ Year of Publication ]{.biblio-row-title}    2006
                  [ Authors ]{.biblio-row-title}    [Wright, Matt](publications/author/Wright) ; [Muller, RÃ©my](publications/author/Muller)
          [ Conference Name ]{.biblio-row-title}    NIME 2006
    [ Conference Start Date ]{.biblio-row-title}    08/06/2006
                 [ Abstract ]{.biblio-row-title}    Remy Muller (from IRCAM) and I organized an OSC Developers\' Meeting at the 2006 NIME conference (http://nime06.ircam.fr). The meeting was organized at the last minute and I profoundly apologize that nobody remembered to send out an invitation to the osc\_dev list. Nevertheless, there were about 20 OSC developers in attendance.
                          [ ]{.biblio-row-title}    
                   [ Export ]{.biblio-row-title}    [EndNote Tagged](publications/export/tagged/187) \| [XML](publications/export/xml/187) \| [BibTex](publications/export/bib/187)
  ---------------------------------------------- -- -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
:::

Full-Text

<div>

Remy Muller (from IRCAM) and I organized an OSC Developers\' Meeting at
the 2006 NIME conference (http://nime06.ircam.fr). The meeting was
organized at the last minute and I profoundly apologize that nobody
remembered to send out an invitation to the osc\_dev list. Nevertheless,
there were about 20 OSC developers in attendance.

Here are my notes and recollections from the meeting, organized by the
topic. I was too busy running the meeting to take proper notes, so I
apologize to the now-anonymous participants whose ideas I remember but
whose names I did not write down. In typing these notes I also added an
\"action items\" section that is a mixture of things that were mentioned
in the meeting and my own personal vision about concrete steps to move
forward on each topic.

I\'m sorry to begin these notes with three apologies. ;-)

Finalize agenda
---------------

Everybody seemed happy with my proposed agenda, so we went with it
as-is.

http://www.opensoundcontrol.org
-------------------------------

I showed off the new OSC web site (via video projection of my laptop). I
exhorted OSC developers to get accounts on the new web site, explaining
that it\'s the usual simple situation where you fill out a form and then
the system emails you your password. Here are some of the pages I
pointed out:

http://opensoundcontrol.org/bs (Thanks to Dan Overholt for suggesting
this topic and URL)\
http://www.opensoundcontrol.org/bs/maxmsp\
http://www.opensoundcontrol.org/implementations\
http://www.opensoundcontrol.org/queries\
http://www.opensoundcontrol.org/schemas\
http://www.opensoundcontrol.org/discovery

The current http://opensoundcontrol.org home page was universally
acknowledged to be a horrible front page. Some of the JazzMutant people
offered to join an \"OSC Lobbying\" working group with the task of
making the home page \"sexier\". It should accomplish the following:

\- Look \"professional\"\
- Answer the question \"why OSC?\"\
- Convince nontechnical end-users of the advantages of OSC (modularity,
versatility, bidirectional, high performance\...)\
- Convince developers of the advantages of OSC\
- Convince marketing people, CEOs, managers, etc., of the advantages of
OSC\
- Reflect the vibrant ongoing activity of the OSC community\
- Lead into other parts of the site.

Action items: redo the front page, update and improve the site in
general.

Standardized Address spaces and schemas
---------------------------------------

I proposed http://www.opensoundcontrol.org/schemas as a good location
for people to post descriptions of OSC schemas that they use, and
conveyed a vision of a rich repertoire of past OSC schemas and critiques
of them. This is sort of \"zeroth-order\" standardization, in the sense
that it supports compatibility between OSC implementations on a
completely decentralized, volunteer basis, with nobody making any global
decisions.

I was hoping that everybody with a laptop could actually try out the new
web site as well as post some useful OSC schemas online, by having lots
of people \"add child page\" to http://www.opensoundcontrol.org/schemas,
but it turned out that we had a problem with the wireless network and so
that plan was not possible.

I mentioned that it would be nice to have a machine-readable
representation of things like units and legal ranges of parameters, and
people suggested both XML and RDF (part of the \"semantic web\") as
possible technologies for this.

Action items: research this topic, make prototype implementations,
decide which attributes of an OSC schema can be machine-readable and
which must be specified in natural language, enable OSC developers to
write the machine-readable bits.

Somebody suggested that it would also be nice to have guidelines for
creating OSC schemas, so I later made this page:
http://www.opensoundcontrol.org/guidelines/address-spaces (as part of a
more general http://www.opensoundcontrol.org/guidelines effort). Again,
these are just suggestions, not enforceable standards of any kind.

The next level of standardization is a concept that JazzMutant calls
\"OSC Classes\" (by analogy to classes in object oriented programming
languages) and which I prefer to call \"OSC Templates\" (by analogy with
Java Templates, which in my opinion they resemble more than they
resemble classes). The idea is a standardized OSC sub-schema, i.e.,
message names and semantics for one piece of an address tree. So, for
example, we could imagine an OSC class/template for \"lowpass filter\",
which would specify a few message names, semantics, and tree structure
to represent the parameters of lowpass filters in general, i.e., cutoff
frequency, Q, gain, etc. The vision is that these would start out as the
OSC sub-schema used by some particular implementation(s), then shared on
http://www.opensoundcontrol.org/schemas, then, once widely accepted (by
the members of an ongoing working group?), adopted as a standard.
Afterwards, if my application used lowpass filters, I would have the
option of implementing the standard OSC class/template for each of them.
Then if your application has a way to control lowpass filters in
general, it will work in a \"plug and play\" fashion with mine.

Action items: Pick a satisfactory name for \"OSC Classes\" aka \"OSC
Templates\", decide about JazzMutant\'s proposed framework for naming
these, and form a working group to start the process of standardizing
specific ones.

Discovery of schemas and address spaces
---------------------------------------

I briefly reviewed the history of the desire for an address space
discovery query mechanism, and then we all read a new proposal for this
by the JazzMutant folks. I made this example to illustrate the proposed
protocol (based on the trivial made-up address space from
http://www.opensoundcontrol.org/schemas):

`              Client            Server              /             /foo/, /bar/, /global/              /foo/         /foo/, amp, freq              /foo/amp format?  /foo/amp/ ",f" ",i"             `

It was noted that the use of special keywords in place of the usual type
tag string was somewhat radical and non-backwards compatible.

Action item: The JazzMutant people volunteered to prototype their system
on the Lemur to demo address + format string discovery. We assume that
implementation experience from this project will result in a refinement
of the proposal and/or increased acceptance.

David Wessel proposed a standard description language for an OSC module
to suggest a 2D WIMP UI for controlling it, somewhat analogous to the
way that most Pd and Max/MSP objects come with a help patch showing a
sample usage. The obvious question this raises, which we did not
resolve, was the reference model for the set of widgets that would be
assumed by such a mechanism. (Using Pd patches for this was floated as a
non-serious suggestion.) The JazzMutant people showed us the XML
language that they use internally (by sending it over OSC) to describe
the layout of buttons, sliders, and other graphical elements on the
Lemur, examples of which can be downloaded from
http://www.jazzmutant.com/support\_download.php That particular XML
language, of course, is specific to their product, but the examples show
that XML can solve this type of problem. It was pointed out that it
would be nice for the UI description to be alongside parameter units,
ranges, etc

Action items: specify a particular set of widgets, decide about XML, and
design the query language.

Discovery via ZeroConf
----------------------

I began by talking through http://www.opensoundcontrol.org/discovery

My lack of a pointer to sample code for ZeroConf on Windows led people
to point out that \"mDNS responder\" for all three platforms includes
Windows source code. The Code for mDNSResponder (requires an Apple ID if
you haven\'t it yet) which uses Apple Open Source License.\
<http://developer.apple.com/opensource/internet/bonjour.html>

People shared the existence of two non-Apple-license implementations of
ZeroConf:

Howl (LGPL) (now discontinued in favor of\...)\
AVAHI (LGPL): [http://www.avahi.org](http://www.avahi.org/)

Action items: update http://www.opensoundcontrol.org/discovery to make
it easier for OSC developers to add ZeroConf to their software, add
ZeroConf to more software, consider potential security issues. Consult
with Ross Bencina about OSCgroups in this context.

Queries for current state, etc.
-------------------------------

http://www.opensoundcontrol.org/queries\
At this point we had already covered queries related to OSC Schema
discovery, so we briefly mentioned some of the other kinds of \"current
state of the OSC Server\" queries that one might want to make.

Action items: Form a query working group, implement and/or refine
JazzMutant\'s query protocol proposal, make a more formal proposal from
the working group to the OSC community, standardize queries, help
developers implement them.

\[Slightly past the 1-hour mark we took a short break. Matt poured
Glenfidditch for all who were so inclined.\]

Binary File Format
------------------

There is a desire for a standard way to put OSC messages in a file, by
analogy with MIDI files. I pointed out three obvious facts:

\- OSC is already a binary format

\- OSC already has a convention of int32 size counts preceding each data
item (both in bundles and in the recommended encoding for OSC packets
over a continuous TCP stream), so we should probably do the same for a
binary file format.

\- OSC bundles already have time tags, so we can use that mechanism
instead of adding on time tags through another mechanism (as in MIDI
files)

Then I raised two questions:

\- OSC time tags are absolute, recording (e.g.) the time that a
performance took place. So an OSC sequencer that wanted to replay a
stored OSC file would have to add an offset to all the time tags.

\- OSC performances may involve large numbers of clients and servers
sending OSC packets to each other in an anarchic peer-to-peer
architecture. Should an OSC file record all of this traffic, or just
traffic between a single pair? It was pointed out that this is somewhat
analogous to the type 0/1 MIDI file distinction.

Action item: form a working group to resolve the questions. Remy
volunteered to be a part of this.

Vision for how unsophisticated users will have as-easy-as-possible mapping interfaces
-------------------------------------------------------------------------------------

Guillaume from JazzMutant said that OSC Schema discovery combined with
Template/Class standardization would enable this.

Remy Muller showed his OSCmap software, currently a work in progress,
which is envisioned to query two OSC address schemas, display them side
by side in a Finder-style tree structure (with disclosure triangles),
and allow a user to set connections (e.g., between values sensed by
sensors and control inputs to sound synthesis algorithms). I suggested
the Jack Audio and MIDI Patchbays as click+drag UIs that might be nice
models for this. OSCmap is currently GPL, but Remy is willing to
consider a change to something like BSD if desired.

Matt proposed a strange piece of software that would support the \"MIDI
learn\" style of mapping input device parameters. The assumption is that
many sensor instrument might output lots of continuous parameters, and
so there isn\'t always an analogue to \"turn just the knob that should
control such-and-such a parameter.\" (E.g., with a 3D accelerometer,
it\'s possible to move mainly in the X axis, but not possible to move
exclusively in the X axis.) So this software would keep track of a
recent window of values received (by a collection of sensors) and output
the OSC address of the one with the largest dynamic range in that time
window. So users could choose a mapping destination, then do the thing
on their instrument (e.g., waving their accelerometer mostly in the X
axis) that mainly affects the OSC message that the user wants to have
control the given mapping destination.

The importance of allowing users to have multiple different views on a
single namespace was emphasized.

More efficient representation for type tag strings
--------------------------------------------------

JazzMutant proposed \",f\[16\]\" as an abbreviation for
\",ffffffffffffffff\", plus a representation along the lines of C\'s
\"struct\" using {} characters. It was noted that this is a radical,
non-backwards-compatible change, and the term \"OSC 2.0\" was mentioned.

Somebody asked about doing away with type tag strings entirely, once
queries were standardized and widely implemented. I replied that that
was how OSC was originally designed and it caused a lot of problems. The
issue of polymorphism was even more convincing, with Sebastian Beaulieu
(from Bidule) giving the example of a pull-down menu that can be set by
sending the index of an item (as an int or a float) or the string that
is the text of that item.

Gunter Geiger wisely questioned the extent to which type tag parsing and
representation is an actual bottleneck in practice.

Action items: carefully study the struct-like part of the proposal, try
implementing this. Since old-style format strings are still legal in the
new system, the two can coexist as long as OSC Clients never send
new-style type tag strings, so people can implement this and measure the
change in performance on real systems

Proposal for super-efficient representation and recognition of address+type tag string
--------------------------------------------------------------------------------------

We reviewed the non-backwards-compatible proposal to compute a hash
function on an OSC address and type tag string, e.g., a 32-bit or 64-bit
CRC checksum, and to send that over the network instead. This would
reduce both bandwidth and the time to dispatch to a given address. It
probably would not work with OSC\'s pattern matching features.

I made the analogy to C++ function name \"mangling\", which supports
type polymorphism by considering a particular sequence of argument types
to be a sort of suffix to a function\'s name. It was suggested that this
procedure might be used for just the address string

Gunter Geiger wisely questioned the extent to which message dispatching
and type tag parsing is an actual bottleneck in practice.

I pointed out the way that SuperCollider Server accomplishes similar
goals within the existing OSC standard (though not exactly in the spirit
of the intended use of OSC address spaces) by sending very short command
names organized in a flat list, not implementing pattern matching, and
representing particular message destinations as an integer argument
instead of as the prefix part of message addresses.

It was proposed that there be a sub-protocol (with a name such as
\"hardware OSC\" or \"OSC lite\") for this.

Action items: Prototype this suggestion; decide what to do about pattern
matching; consider how it will coexist peacefully with standard OSC,
especially how clients would discover whether servers could accept these
messages.

International Characters
------------------------

Some people expressed a desire to allow international characters (e.g.,
European vowels) as both OSC String arguments and in OSC addresses. The
former seemed to be quite straightforward. As for addresses, it was
pointed out that some characters are already forbidden. Some people
wanted to keep things to just ASCII, others wanted to be able to present
non-ASCII characters in user-visible address spaces. Nothing was
resolved on this question.

OSC working groups
------------------

I started by reviewing the call to form working groups that we made at
the 2004 OSC conference:
http://www.opensoundcontrol.org/media/wright-working-groups.pdf

We discussed the question of how proposals made by working groups would
be reviewed by the entire OSC community, agreeing that it would be good
for working groups to work on their work out details of a specific
proposal in a more private forum, then share it with the OSC community
in general. I made the analogy to a greenhouse, where tender young
seedlings are sheltered from the world until they grow up enough to be
moved to an outside garden.

We did not systematically define specific working groups, but people
indicated topics that they\'d be interested in working on:

Adrian Freed (in absentia): hardware\
Emmanuel Flety: hardware\
Whole JazzMutant team: queries, OSC lobbying (especially web design)\
Sebastian Beaulieu (Bidule): queries, namespace changes\
Remy Muller: general enthusiasm to participate

Action items: actually form working groups, specify scope of each one,
get things going on opensoundcontrol.org, etc.

</div>
:::