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

<http://dssi.sourceforge.net/>
:::
:::
:::

::: {.field .field-type-link .field-field-osc-documentation-referen}
::: {.field-items}
::: {.field-item}
::: {.field-label-inline-first}
OSC Documentation URL:
:::

<http://dssi.sourceforge.net/RFC.html>
:::
:::
:::

::: {.field .field-type-text .field-field-description}
::: {.field-items}
::: {.field-item}
DSSI (pronounced \"dizzy\") is an API for audio processing plugins,
particularly useful for software synthesis plugins with user interfaces.

DSSI is an open and well-documented specification developed for use in
Linux audio applications, although portable to other platforms. It may
be thought of as LADSPA-for-instruments, or something comparable to
VSTi.

DSSI consists of a C language API for use by plugins and hosts, based on
the LADSPA API, and an OSC (Open Sound Control) API for use in user
interface to host communications. The DSSI specification consists of an
RFC which describes the background for the proposal and defines the OSC
part of the specification, and a documented header file which defines
the C API.

DSSI is Free Software. The DSSI header file is provided under the GNU
Lesser General Public License.
:::
:::
:::

::: {.field .field-type-number-integer .field-field-transport-type}
::: {.field-label}
Transport Type:
:::

::: {.field-items}
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
High Speed (\> 100 hz packet rate)
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
s: string
:::

::: {.field-item}
f: float32
:::

::: {.field-item}
m: MIDI message (char\*4)
:::
:::
:::
:::
