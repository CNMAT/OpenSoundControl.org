# Liblo: Lightweight OSC API

**[status](../implementation-status.html)**: active (as of 19-Feb-21)

**Status details**: 
latest release is from 2019. maintained by stefan sinclair.

**Project Type**: Programming Language Library

**Project URL**: <http://liblo.sourceforge.net/>

**OSC Documentation URL**: <http://liblo.sourceforge.net/docs/modules.html>

## Description

liblo is an implementation of the Open Sound Control protocol for POSIX systems, started by Steve Harris. liblo is written in C and works on many platforms including Linux, Mac OS X and Windows. It has support for all the OSC types, threaded servers, dispatching and timestamped delivery of bundles. It is released under the GNU General Public Licence.

## Implementation Details

**Platform(s)**: Windows, Linux, Macintosh

**Features**: Packet Parsing, Packet Construction, Bundle Support, Timetag Support, High Speed

**Supported OSC types**: i: int32, b: blob, s: string, f: float32, h: int64, t: timetag, d: float64, S: symbol, T: true, F: false, N: null, I: infinitum

**Bundle support**: Reads Bundles, Creates Bundles

**Transport support**: UDP, TCP

---
Submitted to [opensoundcontrol.org](https://opensoundcontrol.org) by [Legacy](legacy-site.html) at 2/24/21 12:32
