# CNMAT / OSC Arduino and Teensy implementation of OSC encoding

**[status](../implementation-status.html)**: Active / maintained (as of 12/1/2015)

**Status details**: 
Occasionally supported by Adrian Freed. Abandoned by CNMAT.

**Project Type**: Programming Language Library

**Project URL**: <https://github.com/CNMAT/OSC>

**OSC Documentation URL**: <https://github.com/CNMAT/OSC>

## Description

Arduino (C++ subset) library and examples for embedded controllers to send and receive OSC messages over ethernet or serial. Created by Yotam Mann and Adrian Freed.

## Implementation Details

**Platform(s)**: Linux, Macintosh, Windows, Arduino

**Features**: Bundle Support, High Speed, Packet Construction, Packet Parsing, Stateless Interface, Timetag Support, Wildcard Matching Support

**Supported OSC types**: b: blob, c: char, f: float32, F: false, i: int32, s: string, t: timetag, T: true

**Bundle support**: Creates Bundles, Reads Bundles, Supports Nested Bundles

**Timetag support**: Generates "immediate" timestamp, Generates timestamped sequenced data

**Transport support**: UDP, Serial-SLIP

---
Submitted to [opensoundcontrol.org](https://opensoundcontrol.org) by [Adrian Freed](http://adrianfreed.com) at 4/17/2021 12:52:12
