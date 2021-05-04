# TJShow (show controller software)

**[status](../implementation-status.html)**: Active (as of 11-Mar-21)

**Status details**: 
Site is live, but difficult to say how active.

**Project Type**: Software Application

**Project URL**: <http://www.tjshow.com/>

## Description

TJShow is a show controller that can control a wide range of devices through protocols such as DMX512, MIDI and (in the latest development version) OSC. TJShow allows show designers to link OSC paths to cues (so timelines can be triggered from OSC) or variables (variable can be changed through OSC). Currently, it only supports UDP/IP as transport for OSC. The TJShow input system (which also handles MIDI input) internally uses OSC patterns and OSC URL's (so pattern matching with OSC will work like it should). <p> Newer versions of TJShow will also be able to send OSC messages.

## Implementation Details

**Platform(s)**: Windows

**Features**: Packet Parsing, Packet Construction, Bundle Support, Wildcard Matching Support, Stateless Interface

**Supported OSC types**: i: int32, b: blob, s: string, f: float32, h: int64, d: float64, c: char, r: RGBA color, m: MIDI message, T: true, F: false, N: null, I: infinitum

**Bundle support**: Reads Bundles

**Timetag support**: Performs scheduling on received timestamped data

**Transport support**: UDP, Bidirectional UDP (via sendto/recvfrom)

---
Submitted to [opensoundcontrol.org](https://opensoundcontrol.org) by Anonymous at 2/24/21 12:33
