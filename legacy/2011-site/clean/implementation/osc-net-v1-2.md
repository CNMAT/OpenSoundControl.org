## OSC.net (V1.4.1)

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

<http://www.ventuz.com/>
:::
:::
:::

::: {.field .field-type-link .field-field-osc-documentation-referen}
::: {.field-items}
::: {.field-item}
::: {.field-label-inline-first}
OSC Documentation URL:
:::

<http://www.ventuz.com/download/public/OSC/V1_4_1/Ventuz.OSC.chm>
:::
:::
:::

::: {.field .field-type-text .field-field-description}
::: {.field-items}
::: {.field-item}
A free OSC library for Microsoft.Net with a **full** implementation of
the OSC protocol. Extends the protocol to be able to transfer images and
Unicode encoded strings as a blob element.new supported OSC-features in
V1.2: Address Patterns, TimeStamps, OSC Type \'Infinitum\'\
Changes in V1.4.1: Multiple UdpReader instances can share the same port
number (ReuseAddress socket option) when assigning a negative port
number.\
Bugs fixed in V1.4: UDP socket is closed properly now. Large OSC
messages across multiple UDP packets could result in an unhandled error
- fixed.\
Changes in V1.3: ability to receive and send of single OSC elements,
nested bundles\
Bugs fixed in V1.2: byte order for MIDI messages, OSC-Symbol now ok

**Download Version 1.4.1:
[Ventuz.OSC.zip](http://www.ventuz.com/download/public/OSC/V1_4_1/Ventuz.OSC.zip)
including CHM documentation.**
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
Bidirectional UDP (via sendto/recvfrom)
:::
:::
:::

::: {.field .field-type-text .field-field-platform}
::: {.field-label}
Platform:
:::

::: {.field-items}
::: {.field-item}
Windows
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
h: int64
:::

::: {.field-item}
t: timetag
:::

::: {.field-item}
d: double precision float
:::

::: {.field-item}
S: symbol
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

::: {.field-item}
\[\]: array
:::
:::
:::
:::
