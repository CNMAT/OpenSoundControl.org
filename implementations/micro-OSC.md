# micro-OSC

**This implementation has been superseded by another!**
Unknown

**[status](https://ccrma.stanford.edu/~matt/OSC/implementation-status.html)**: Unknown (as of 23-Feb-21)

**Status details**: 


**Project Type**: Hardware

**Project URL**: <http://cnmat.berkeley.edu/research/uosc>

**OSC Documentation URL**: <http://cnmat.berkeley.edu/library/uosc_project_documentation>

## Description

micro-OSC (uOSC) is a firmware runtime system for embedded platforms designed to remain as small as possible while also supporting evolving trends in sensor interfaces such as regulated 3.3 Volt high-resolution sensors, mixed analog and digital multi-rate sensor interfacing, n > 8-bit data formats. <p> uOSC supports the Open Sound Control protocol directly on the microprocessor, and the completeness of this implementation serves as a functional reference platform for research and development of the OSC protocol. <p> The design philosophy of micro-OSC is √É¬¢√¢‚Äö¬¨√Ö"by musicians, for musicians√É¬¢√¢‚Äö¬¨√Ø¬ø¬Ω√É¬¢√¢‚Äö¬¨√¢‚Ç¨ÔøΩit is used at CNMAT as a component in prototypes of new sensor-based musical instruments as well as a research platform for the study of realtime protocols and signal-quality issues related to musical gestures.

## Implementation Details

**Platform(s)**: Any / Platform Independent

**Features**: Packet Parsing, Packet Construction, Bundle Support, Timetag Support, Wildcard Matching Support, High Speed, Bounded Latency, Stateless Interface

**Supported OSC types**: i: int32, b: blob, s: string, f: float32, t: timetag, T: true, F: false, N: null

**Bundle support**: Reads Bundles, Creates Bundles

**Timetag support**: Generates "immedate" timestamp, Generates timestamped sequenced data, Timestamps are UTC-synchronized, Performs scheduling on received timestamped data

---
Submitted to [opensoundcontrol.org](https://opensoundcontrol.org) by [Legacy](https://web.archive.org) at 2/24/21 12:32
