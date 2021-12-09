# TouchDesigner

**[status](../implementation-status.html)**: Active (as of 11-Mar-21)

**Status details**: 
I have reached out through their webform for appropriate contact info.

**Project Type**: Software Application

**Project URL**: <http://www.derivative.ca/>

**OSC Documentation URL**: <https://docs.derivative.ca/OSC>

## Description

TouchDesigner is a gpu accelerated realtime visual programming interface, incorporating 2D+3D graphics, motion and audio processing, full scripting and multiple hardware communication interfaces to create systems for interactive art production, live character puppeteering, 3d animation and special effects, visualization, application building and much more. <p> The OSC support is implemented through procedural nodes, consistent with the overall visual programming paradigm, so that any message may influence any aspect of the system. All standard types are supported, and scripting extensions for non-recognized data is also available.

## Implementation Details

**Platform(s)**: Windows

**Features**: Packet Parsing, Packet Construction, Bundle Support, Timetag Support, Wildcard Matching Support, High Speed, Stateless Interface

**Supported OSC types**: i: int32, b: blob, s: string, f: float32, h: int64, t: timetag, d: float64, S: symbol, c: char, r: RGBA color, m: MIDI message, T: true, F: false, N: null, I: infinitum, []: array

**Bundle support**: Reads Bundles, Creates Bundles, Supports Nested Bundles

**Timetag support**: Generates timestamped sequenced data, Performs scheduling on received timestamped data

**Transport support**: UDP, TCP, Bidirectional UDP (via sendto/recvfrom), HTTP, Other

---
Submitted to [opensoundcontrol.org](https://opensoundcontrol.org) by [Legacy](legacy-site.html) at 2/24/21 12:33
