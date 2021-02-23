## OpenSoundControl for MaxMSP

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

<http://cnmat.berkeley.edu/downloads>
:::
:::
:::

::: {.field .field-type-link .field-field-osc-documentation-referen}
::: {.field-items}
::: {.field-item}
::: {.field-label-inline-first}
OSC Documentation URL:
:::

<http://cnmat.berkeley.edu/patch/4059>
:::
:::
:::

::: {.field .field-type-text .field-field-description}
::: {.field-items}
::: {.field-item}
CNMAT\'s OpenSoundControl object extends MaxMSP 4.5+ to support OSC
bundles.

Additionally, the OSC-timetag object deals with timestamp generation,
transformations and operations, and the OSC-schedule object handles
bundle scheduling from timestamps.

OSC-timetag: <http://cnmat.berkeley.edu/downloads>\
OSC-schedule: <http://cnmat.berkeley.edu/downloads>

Additionally, the OSC-route and OSC-unroute utility objects are useful
for parsing and constructing address patterns:

OSC-route: <http://cnmat.berkeley.edu/patch/4029>\
OSC-unroute: <http://cnmat.berkeley.edu/patch/4028>

Other misc stuff:

OSC-alias: <http://cnmat.berkeley.edu/patch/3000>\
The slipOSC object deals with OSC transport over a serial line with SLIP
encoding. <http://cnmat.berkeley.edu/downloads>\
OSC wrappers for various controllers:
<http://cnmat.berkeley.edu/library/max_msp_jitter_depot/modules_building_blocks_mmj_depot/controllers>
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
Serial-SLIP
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
Mac OSX
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

::: {.field-item}
High Speed (\> 100 hz packet rate)
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

::: {.field .field-type-number-integer .field-field-timetag-support}
::: {.field-label}
Timetag Support:
:::

::: {.field-items}
::: {.field-item}
Generates \"IMMEDATE\" timestamp
:::

::: {.field-item}
Generates timestamped sequenced data
:::

::: {.field-item}
Timestamps are UTC-synchronized
:::

::: {.field-item}
Performs scheduling on received timestamped data
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
