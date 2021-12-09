# TxOSC : OSC for Twisted in Python

**[status](../implementation-status.html)**: Defunct (as of 15-Mar-21)

**Status details**: 
Bitbucket repo is dead and not captured by Archive.org

**Project Type**: Programming Language Library

**Project URL**: <http://bitbucket.org/arjan/txosc>

**OSC Documentation URL**: <http://bitbucket.org/arjan/txosc/src>

## Description

Open Sound Control (OSC) protocol for Twisted <p> This library implements OSC version 1.1 over both UDP and TCP for the Twisted Python framework. <p> It supports listening to a multicast group. Twisted is an event-based framework for internet applications which works on Python 2.3 through 2.6. <p> Note that there could be a non-Twisted implementation derived from this code, since the main txosc/osc.py file is not Twisted-specific. (and it has less bugs and more tests and features than the OSC.py and simpleosc.py modules found everywhere on the Web) It's only the sender and receiver classes that are implemented with the tools provided by Twisted. The developers of txosc are open for some Python developer to help with the non-Twisted part. <p> **Installing**<p> <ul><li>Get it from PyPI: http://pypi.python.org/pypi/txosc <li>Use the Ubuntu package (soon in Debian unstable): https://launchpad.net/~sat-metalab/+archive/metalab/+packages <li>Get the tarball: http://bitbucket.org/arjan/txosc/downloads </li></ul> <p>  **Authors**: Arjan Scherpenisse and Alexandre Quessy.

## Implementation Details

**Platform(s)**: Any / Platform Independent

**Features**: Packet Parsing, Packet Construction, Bundle Support, Timetag Support, Wildcard Matching Support

**Supported OSC types**: i: int32, b: blob, s: string, f: float32, t: timetag, d: float64, c: char, r: RGBA color, m: MIDI message, T: true, F: false, N: null, I: infinitum

**Bundle support**: Reads Bundles, Creates Bundles, Supports Nested Bundles

**Timetag support**: Generates "immedate" timestamp

**Transport support**: UDP, TCP, None / Transport Independent

---
Submitted to [opensoundcontrol.org](https://opensoundcontrol.org) by [Legacy](legacy-site.html) at 2/24/21 12:33
