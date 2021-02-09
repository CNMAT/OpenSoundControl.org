::: {.content}
::: {.field .field-type-text .field-field-project-type}
::: {.field-items}
::: {.field-item}
::: {.field-label-inline-first}
Project Type:
:::

Programming Language Library
:::
:::
:::

::: {.field .field-type-link .field-field-project-url}
::: {.field-items}
::: {.field-item}
::: {.field-label-inline-first}
Project URL:
:::

[TxOSC: OSC protocol for Twisted](http://bitbucket.org/arjan/txosc)
:::
:::
:::

::: {.field .field-type-link .field-field-osc-documentation-referen}
::: {.field-items}
::: {.field-item}
::: {.field-label-inline-first}
OSC Documentation URL:
:::

[README File](http://bitbucket.org/arjan/txosc/src)
:::
:::
:::

::: {.field .field-type-text .field-field-description}
::: {.field-items}
::: {.field-item}
Open Sound Control (OSC) protocol for Twisted
=============================================

This library implements OSC version 1.1 over both UDP and TCP for the
Twisted Python framework.

It supports listening to a multicast group. Twisted is an event-based
framework for internet applications which works on Python 2.3 through
2.6.

Note that there could be a non-Twisted implementation derived from this
code, since the main txosc/osc.py file is not Twisted-specific. (and it
has less bugs and more tests and features than the OSC.py and
simpleosc.py modules found everywhere on the Web) It\'s only the sender
and receiver classes that are implemented with the tools provided by
Twisted. The developers of txosc are open for some Python developer to
help with the non-Twisted part.

Installing
==========

-   Get it from PyPI: http://pypi.python.org/pypi/txosc
-   Use the Ubuntu package (soon in Debian unstable):
    https://launchpad.net/\~sat-metalab/+archive/metalab/+packages
-   Get the tarball: http://bitbucket.org/arjan/txosc/downloads

Authors
=======

Arjan Scherpenisse and Alexandre Quessy.
:::
:::
:::

::: {.field .field-type-number-integer .field-field-transport-type}
::: {.field-label}
Transport Type:
:::

::: {.field-items}
::: {.field-item}
UDP
:::

::: {.field-item}
TCP
:::

::: {.field-item}
None / Transport Independent
:::
:::
:::

::: {.field .field-type-text .field-field-platform}
::: {.field-label}
Platform:
:::

::: {.field-items}
::: {.field-item}
Any / Platform Independent
:::
:::
:::

::: {.field .field-type-number-integer .field-field-features}
::: {.field-label}
Features:
:::

::: {.field-items}
::: {.field-item}
Packet Parsing (Client)
:::

::: {.field-item}
Packet Construction (Server)
:::

::: {.field-item}
Bundle Support
:::

::: {.field-item}
Timetag Support
:::

::: {.field-item}
Wildcard Matching Support
:::
:::
:::

::: {.field .field-type-number-integer .field-field-bundle-support}
::: {.field-label}
Bundle Support:
:::

::: {.field-items}
::: {.field-item}
Reads Bundles
:::

::: {.field-item}
Creates Bundles
:::

::: {.field-item}
Supports Nested Bundles
:::
:::
:::

::: {.field .field-type-number-integer .field-field-timetag-support}
::: {.field-label}
Timetag Support:
:::

::: {.field-items}
::: {.field-item}
Generates \"IMMEDATE\" timestamp
:::
:::
:::

::: {.field .field-type-text .field-field-type-support}
::: {.field-label}
Type Support:
:::

::: {.field-items}
::: {.field-item}
i: int32
:::

::: {.field-item}
b: blob
:::

::: {.field-item}
s: string
:::

::: {.field-item}
f: float32
:::

::: {.field-item}
t: timetag
:::

::: {.field-item}
d: double precision float
:::

::: {.field-item}
c: char
:::

::: {.field-item}
r: RGBA color (char\*4)
:::

::: {.field-item}
m: MIDI message (char\*4)
:::

::: {.field-item}
T: true
:::

::: {.field-item}
F: false
:::

::: {.field-item}
N: null
:::

::: {.field-item}
I: infinitum
:::
:::
:::
:::
