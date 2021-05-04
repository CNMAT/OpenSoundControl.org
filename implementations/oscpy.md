# oscpy

**[status](../implementation-status.html)**: Active / maintained (as of 4/2/2021)

**Status details**: 


**Project Type**: Programming Language Library

**Project URL**: <https://pypi.org/project/oscpy/>

**OSC Documentation URL**: <https://pypi.org/project/oscpy/>

## Description

OpenSoundControl is an UDP based network protocol, that is designed for fast dispatching of time-sensitive messages, as the name suggests, it was designed as a replacement for MIDI, but applies well to other situations. The protocol is simple to use, OSC addresses look like http URLs, and accept various basic types, such as string, float, int, etc. You can think of it basically as an http POST, with less overhead.

## Implementation Details

**Platform(s)**: Platform independent

**Features**: Bundle Support, Packet Construction, Packet Parsing

**Supported OSC types**: b: blob, c: char, d: float64, f: float32, F: false, h: int64, i: int32, I: infinitum, m: MIDI message, N: null, r: RGBA color, s: string, S: symbol, t: timetag, T: true, []: array

**Bundle support**: Creates Bundles, Reads Bundles, Supports Nested Bundles

**Transport support**: None / Transport Independent

---
Submitted to [opensoundcontrol.org](https://opensoundcontrol.org) by Anonymous at 4/3/2021 20:53:09
