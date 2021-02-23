## CNMAT Connectivity Processor

::: {.content}
::: {.field .field-type-text .field-field-project-type}
::: {.field-items}
::: {.field-item}
::: {.field-label-inline-first}
Project Type:
:::

Hardware
:::
:::
:::

::: {.field .field-type-link .field-field-project-url}
::: {.field-items}
::: {.field-item}
::: {.field-label-inline-first}
Project URL:
:::

[http://cnmat.berkeley.edu/publication/osc_and_gesture_features_cnmats_connectivi\...](http://cnmat.berkeley.edu/publication/osc_and_gesture_features_cnmats_connectivity_processor)
:::
:::
:::

::: {.field .field-type-link .field-field-osc-documentation-referen}
::: {.field-items}
::: {.field-item}
::: {.field-label-inline-first}
OSC Documentation URL:
:::

[http://cnmat.berkeley.edu/publication/osc_and_gesture_features_cnmats_connectivi\...](http://cnmat.berkeley.edu/publication/osc_and_gesture_features_cnmats_connectivity_processor)
:::
:::
:::

::: {.field .field-type-text .field-field-description}
::: {.field-items}
::: {.field-item}
Standard laptop computers are now capable of sizeable quantities of
sound synthesis and sound processing, but low-latency, high quality,
multichannel audio I/O has not been possible without a cumbersome
external card cage. CNMAT has developed a solution using the ubiquitous
100BaseT Ethernet that supports up to 10 channels of 24-bit audio, 64
channels of sample-synchronous control-rate gesture data, and 4
precisely time-stamped MIDI I/O streams. Latency measurements show that
we can get signals into and back out of Max/MSP in under 7 milliseconds.
The central component in the device is a field programmable gate array
(FPGA). In addition to providing a variety of computer interface
capabilities, the device can function as a cross-coder for a variety of
protocols including GMICS. This paper outlines the motivation, design,
and implementation of the connectivity processor.
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
Bundle Support
:::

::: {.field-item}
High Speed (\> 100 hz packet rate)
:::

::: {.field-item}
Stateless Interface (full state reported in every packet)
:::
:::
:::

::: {.field .field-type-number-integer .field-field-bundle-support}
::: {.field-label}
Bundle Support:
:::

::: {.field-items}
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
f: float32
:::
:::
:::
:::
