# OscPkt

**[status](../implementation-status.html)**: Active/Legacy (as of 15-Mar-21)

**Status details**: 
Last site update in 2015

**Project Type**: Programming Language Library

**Project URL**: <http://gruntthepeon.free.fr/oscpkt/>

**OSC Documentation URL**: <http://gruntthepeon.free.fr/oscpkt/html/>

## Description

(I didn't write this.) This is a very minimalistic OSC 1.0 library written completely in C++ and released under the zlib license. There is one header file for most of the implementation, one for UDP transport, and two supplementary files (a simple test and demo). It's robust with respect to malformed packets, doesn't throw exceptions, and doesn't rely on the outdated gethostbyname. It does not, however, take into account timestamp values or provide a cpu-scalable message dispatching, and it may not be suitable for use inside a realtime thread as it allocates memory when building or reading messages. <p> Note: You may have to make some changes to the UDP file to be able to use it with MinGW on Windows. Using line numbers from http://gruntthepeon.free.fr/oscpkt/html/udp_8hh_source.html (as of Dec. 2011), add "#define _WIN32_WINNT 0x501" before line 26 and comment out lines 243-249, 254, 306-308, 310, and the last three error checks in lines 250-251. The modified file is also attached (change extension to .hh).

## Implementation Details

**Platform(s)**: Windows, Linux, Macintosh

**Features**: Packet Parsing, Packet Construction, Bundle Support, Wildcard Matching Support, High Speed

**Supported OSC types**: i: int32, b: blob, s: string, f: float32, h: int64, d: float64, T: true, F: false

**Bundle support**: Reads Bundles, Creates Bundles

**Transport support**: UDP

---
Submitted to [opensoundcontrol.org](https://opensoundcontrol.org) by [Legacy](legacy-site.html) at 2/24/21 12:32
