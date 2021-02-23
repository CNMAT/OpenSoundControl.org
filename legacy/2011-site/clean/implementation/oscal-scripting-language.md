## Oscal Scripting Language

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

<http://sourceforge.net/projects/oscal/>
:::
:::
:::

::: {.field .field-type-link .field-field-osc-documentation-referen}
::: {.field-items}
::: {.field-item}
::: {.field-label-inline-first}
OSC Documentation URL:
:::

<http://sourceforge.net/docman/display_doc.php?docid=80824&group_id=212002>
:::
:::
:::

::: {.field .field-type-text .field-field-description}
::: {.field-items}
::: {.field-item}
Oscal is a simple JavaScript-like language which allows users to easily
sequence Open Sound Control messages. It\'s like a very high level
programming interface to an event scheduler and OSC library. Think of it
as a highly evolved tracker ;)\
here is some example code:\
`              var puredata = host { ip = 127.0.0.1; port = 1234; };              var bd = osc(var freq=440) {   var amp= osc(var db=100){};   };              var ticksPerBar = 64;              @ (2*ticksPerBar)              {              bd.freq = 330;              puredata << bd << bd.amp;              }             `\
will result in /bd 330 and /bd/amp 100 being sent to 127.0.0.1:1234 at
time 128 (2 bars after the scripts execution).\
Oscal could use beta testers! If you find a script with strange
behaviour or an outright error please post it on the developers mailing
list.
:::
:::
:::
:::
