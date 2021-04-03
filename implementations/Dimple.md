# Dimple

**This implementation has been superseded by another!**
Unknown

**[status](https://ccrma.stanford.edu/~matt/OSC/implementation-status.html)**: active (as of 19-Feb-21)

**Status details**: 
website says active 2005-present

**Project Type**: Software Application

**Project URL**: <http://idmil.org/software/dimple>

**OSC Documentation URL**: <http://idmil.org/software/dimple>

## Description

This project is an implementation of a physical dynamics environment which can be controlled via [OSC](http://www.opensoundcontrol.org/ "http://www.opensoundcontrol.org"){.urlextern} , so that audio projects such as [PureData](http://www.puredata.info/ "http://www.puredata.info"){.urlextern} can create physical objects in a virtual space, and then let them interact with each other, colliding and otherwise moving around. The environment can be used for interacting with a hand controller [haptic device](http://en.wikipedia.org/wiki/Haptic "http://en.wikipedia.org/wiki/Haptic"){.urlextern} . Data about objects' position and acceleration, for example, can be retrieved and then used to affect some sort of audio synthesis. It was first presented at [NIME 2007](http://itp.nyu.edu/nime/2007/ "http://itp.nyu.edu/nime/2007/"){.urlextern} . <p> This is all accomplished via many GPL (or similar) libraries, such as: <p> - [CHAI 3D](http://www.chai3d.org/ "http://www.chai3d.org"){.urlextern} , for haptics - [ODE](http://www.ode.org/ "http://www.ode.org"){.urlextern} , for physical dynamics - [LibLo](http://liblo.sf.net/ "http://liblo.sf.net"){.urlextern} , for OSC messaging - GLUT & [FreeGLUT](http://freeglut.sourceforge.net/ "http://freeglut.sourceforge.net/"){.urlextern} , for graphics (optional) <p> It is cross-platform, running on Linux, OS X, and Windows. Unfortunately, most haptic devices only provide drivers for Windows, though CHAI 3D does support the SensAble Phantom family of devices under Linux if you have the driver.

## Implementation Details

**Platform(s)**: Windows, Linux, Macintosh

**Features**: Packet Parsing, Packet Construction, Bundle Support, Timetag Support

**Supported OSC types**: i: int32, s: string, f: float32, d: float64

---
Submitted to [opensoundcontrol.org](https://opensoundcontrol.org) by [Legacy](https://web.archive.org) at 2/24/21 12:32
