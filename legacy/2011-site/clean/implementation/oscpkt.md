## OscPkt

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

<http://gruntthepeon.free.fr/oscpkt/>
:::
:::
:::

::: {.field .field-type-link .field-field-osc-documentation-referen}
::: {.field-items}
::: {.field-item}
::: {.field-label-inline-first}
OSC Documentation URL:
:::

<http://gruntthepeon.free.fr/oscpkt/html/>
:::
:::
:::

::: {.field .field-type-text .field-field-description}
::: {.field-items}
::: {.field-item}
(I didn\'t write this.) This is a very minimalistic OSC 1.0 library
written completely in C++ and released under the zlib license. There is
one header file for most of the implementation, one for UDP transport,
and two supplementary files (a simple test and demo). It\'s robust with
respect to malformed packets, doesn\'t throw exceptions, and doesn\'t
rely on the outdated gethostbyname. It does not, however, take into
account timestamp values or provide a cpu-scalable message dispatching,
and it may not be suitable for use inside a realtime thread as it
allocates memory when building or reading messages.

Note: You may have to make some changes to the UDP file to be able to
use it with MinGW on Windows. Using line numbers from
http://gruntthepeon.free.fr/oscpkt/html/udp_8hh_source.html (as of Dec.
2011), add \"\#define \_WIN32_WINNT 0x501\" before line 26 and comment
out lines 243-249, 254, 306-308, 310, and the last three error checks in
lines 250-251. The modified file is also attached (change extension to
.hh).
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
Wildcard Matching Support
:::

::: {.field-item}
High Speed (\> 100 hz packet rate)
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

::: {.field-item}
Linux
:::

::: {.field-item}
Mac OSX
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
d: double precision float
:::

::: {.field-item}
T: true
:::

::: {.field-item}
F: false
:::
:::
:::

  Attachment                 Size
  -------------------------- ----------
  [udp.txt](files/udp.txt)   13.46 KB
:::
