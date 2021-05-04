# Ventuz Realtime 3D Rendering (.net)

**[status](../implementation-status.html)**: Active (as of 11-Mar-21)

**Status details**: 


**Project Type**: Software Application

**Project URL**: <http://www.ventuz.com/>

**OSC Documentation URL**: <http://www.ventuz.com/download/public/OSC/Ventuz.OSC.chm>

## Description

![](https://web.archive.org/web/20200929194025im_/http://www.ventuz.com/download/public/OSC/ventuz.jpg) The **Ventuz** Products have been developed by industry leading real time experts combining years of tv broadcast and presentation experience to bring you a tool that suits your everyday production needs. From trade show presentations to VJ events, from product presentations to interactive stage lighting, Ventuz succeeds with usability, scalability, and reliability. Combine music, images, videos, live videos and 3dimensional objects into jaw dropping interactive presentations and installations. Realtime remote protocols, like DMX, MIDI, **OSC** , .Net Remoting enables you to run your visualisation on a sophisticated approach! Ventuz offers a free .net implementation of Open Sound Control [Ventuz.OSC.zip](http://www.ventuz.com/download/public/OSC/Ventuz.OSC.zip) , extended to handle unicode strings.

## Implementation Details

**Platform(s)**: Windows

**Features**: Packet Parsing, Packet Construction, Bundle Support, Wildcard Matching Support, High Speed

**Supported OSC types**: i: int32, b: blob, s: string, f: float32, h: int64, d: float64, S: symbol, c: char, r: RGBA color, m: MIDI message, T: true, F: false, N: null, I: infinitum, []: array

**Bundle support**: Reads Bundles, Creates Bundles

**Timetag support**: Generates "immedate" timestamp

**Transport support**: UDP, Bidirectional UDP (via sendto/recvfrom)

---
Submitted to [opensoundcontrol.org](https://opensoundcontrol.org) by Anonymous at 2/24/21 12:33
