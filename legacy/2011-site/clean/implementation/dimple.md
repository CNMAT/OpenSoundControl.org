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

[Dimple project page](http://idmil.org/software/dimple)
:::
:::
:::

::: {.field .field-type-link .field-field-osc-documentation-referen}
::: {.field-items}
::: {.field-item}
::: {.field-label-inline-first}
OSC Documentation URL:
:::

[Dimple project page](http://idmil.org/software/dimple)
:::
:::
:::

::: {.field .field-type-text .field-field-description}
::: {.field-items}
::: {.field-item}
This project is an implementation of a physical dynamics environment
which can be controlled via
[OSC](http://www.opensoundcontrol.org/ "http://www.opensoundcontrol.org"){.urlextern}
, so that audio projects such as
[PureData](http://www.puredata.info/ "http://www.puredata.info"){.urlextern}
can create physical objects in a virtual space, and then let them
interact with each other, colliding and otherwise moving around. The
environment can be used for interacting with a hand controller [haptic
device](http://en.wikipedia.org/wiki/Haptic "http://en.wikipedia.org/wiki/Haptic"){.urlextern}
.\
Data about objects\' position and acceleration, for example, can be
retrieved and then used to affect some sort of audio synthesis. It was
first presented at [NIME
2007](http://itp.nyu.edu/nime/2007/ "http://itp.nyu.edu/nime/2007/"){.urlextern}
.

This is all accomplished via many GPL (or similar) libraries, such as:

-   [CHAI
    3D](http://www.chai3d.org/ "http://www.chai3d.org"){.urlextern} ,
    for haptics
-   [ODE](http://www.ode.org/ "http://www.ode.org"){.urlextern} , for
    physical dynamics
-   [LibLo](http://liblo.sf.net/ "http://liblo.sf.net"){.urlextern} ,
    for OSC messaging
-   GLUT &
    [FreeGLUT](http://freeglut.sourceforge.net/ "http://freeglut.sourceforge.net/"){.urlextern}
    , for graphics (optional)

It is cross-platform, running on Linux, OS X, and Windows.
Unfortunately, most haptic devices only provide drivers for Windows,
though CHAI 3D does support the SensAble Phantom family of devices under
Linux if you have the driver.
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
:::
:::

This project is an implementation of a haptically-enabled physical
dynamics environment which can be controlled via OSC.

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
d: double precision float
:::
:::
:::
:::
