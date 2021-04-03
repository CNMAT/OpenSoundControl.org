# ScalaOSC - OSC Library for the Scala language

**This implementation has been superseded by another!**
Unknown

**[status](https://ccrma.stanford.edu/~matt/OSC/implementation-status.html)**: Active (as of 11-Mar-21)

**Status details**: 
This is definitely active. https://github.com/Sciss/ScalaOSC is active with recent activity.

**Project Type**: Programming Language Library

**Project URL**: <https://web.archive.org/web/20200707023644/https://github.com/Sciss/ScalaOSC>

**OSC Documentation URL**: <https://web.archive.org/web/20200707023644/https://github.com/Sciss/ScalaOSC>

## Description

A library to support OSC in the [Scala programming language](http://www.scala-lang.org/) . It is licensed under the GNU LGPL. <p> It supports packet encoding and decoding with configurable codec (e.g. strict OSC 1.0, support for 64-bit types, many of the OSC 1.1 types), as well as transport via UDP and TCP. You can also provide your own codec adding new types. <p> The current version requires Scala 2.9 running on a JRE 1.6.

## Implementation Details

**Platform(s)**: Any / Platform Independent

**Features**: Packet Parsing, Packet Construction, Bundle Support, Timetag Support, High Speed

**Supported OSC types**: i: int32, b: blob, s: string, f: float32, h: int64, t: timetag, d: float64, S: symbol, T: true, F: false, N: null

**Bundle support**: Reads Bundles, Creates Bundles, Supports Nested Bundles

**Timetag support**: Generates "immedate" timestamp, Generates timestamped sequenced data

---
Submitted to [opensoundcontrol.org](https://opensoundcontrol.org) by [Legacy](https://web.archive.org) at 2/24/21 12:33
