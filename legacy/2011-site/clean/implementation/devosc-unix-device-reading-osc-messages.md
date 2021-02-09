::: {.content}
::: {.field .field-type-text .field-field-project-type}
::: {.field-items}
::: {.field-item}
::: {.field-label-inline-first}
Project Type:
:::

Software Application
:::
:::
:::

::: {.field .field-type-link .field-field-project-url}
::: {.field-items}
::: {.field-item}
::: {.field-label-inline-first}
Project URL:
:::

<http://www.cnmat.berkeley.edu/downloads>
:::
:::
:::

::: {.field .field-type-link .field-field-osc-documentation-referen}
::: {.field-items}
::: {.field-item}
::: {.field-label-inline-first}
OSC Documentation URL:
:::

<http://www.cnmat.berkeley.edu/downloads>
:::
:::
:::

::: {.field .field-type-text .field-field-description}
::: {.field-items}
::: {.field-item}
This experimental implementation of OSC was developed to solve a common
problem in current operating systems: TCP/IP runs at below real-time
priority making it impossible to reliably deliver OSC from UDP or TCP
packets to high priority audio threads. The first implementation for
CNMAT\'s connectivity processor has been field tested in several
concerts. Under OS/X UDP packets containing OSC payloads are transferred
in the ethernet hardware interrupt to the /dev/osc driver where they can
be directly read or polled by applications.
:::
:::
:::
:::
