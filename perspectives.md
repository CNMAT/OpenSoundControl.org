# Perspectives on OSC

Annotated bibliography of links to helpful perspectives about the
nature and use of OSC.

(alphabetical order)

[Joe
Armstrong](https://en.wikipedia.org/wiki/Joe_Armstrong_(programmer)),
2016 "[A Badass Way to Connect Programs
Together](https://joearms.github.io/#2016-01-28%20A%20Badass%20Way%20to%20Connect%20Programs%20Together)":
"I could collaborate with him by sending him OSC messages over UDP and
didn't have to understand one iota of how his application was built
and structured. It didn't matter all I had to do was understand the
messaging protocol." "Simplicity by Design"

[Ilias Bergström](https://kth.academia.edu/IliasBergstrom) (aka [The
Wizard of OSC](https://thewizardofosc.com)), 2020, "[What is
OSC?](https://thewizardofosc.com/more-on-osc/)": "OSC gives musicians
and developers more flexibility in the kinds of data they can send
over the wire, enabling new applications that can communicate with
each other at a high level."

[Create Digital Music](https://cdm.link) has over [100 articles tagged
`opensoundcontrol`](https://cdm.link/tag/opensoundcontrol).

[Adrian Freed](http://adrianfreed.com)'s 2021 [annotated
version](http://opensoundcontrol.org/OSCGestureMapping) of the 2001
ICMC paper "[Managing Complexity with Explicit Mapping of Gestures to
Sound Control with
OSC](publications/2001-Managing-Complexity-with-Explicit-Mapping-of-Gestures-to-Sound-Control-with-OSC.html)",
"intented to provide context and readability unavailable in the
original [pdf](files/2001-ICMC-Managing-Complexity-OSC.pdf)."

James McCartney's [SuperCollider](https://supercollider.github.io)
language's fundamental architecture is based on a division between
`scsynth` the audio-processing "synthesis server" versus `sclang` the
general-purpose programming language, connected via [sending OSC to
the
server](http://doc.sccode.org/Reference/Server-Command-Reference.html).
It's also possible to control `scsynth` from [a different OSC
sender](https://en.wikipedia.org/wiki/SuperCollider#Clients).


[Dave Phillips](https://www.linuxjournal.com/users/dave-phillips),
2008, "[An Introduction To
OSC](https://www.linuxjournal.com/content/introduction-osc)": "OSC's
design addresses and resolves MIDI's most frustrating aspects,
particularly regarding transport speed and the assumptions of use. No
restriction is placed on pitch representation or any other musical
representation, as long as the data format is supported by the
protocol." Detailed example: AlgoScore drives AVSynthesis.


[Wikipedia page](https://en.wikipedia.org/wiki/Open_Sound_Control)
