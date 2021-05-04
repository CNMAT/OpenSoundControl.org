# OSC.net (V1.4.1)

**[status](../implementation-status.html)**: Active/Legacy (as of 15-Mar-21)

**Status details**: 
Legacy?  Link no longer points to project, contact provided.

**Project Type**: Programming Language Library

**Project URL**: <http://www.ventuz.com/>

**OSC Documentation URL**: <http://www.ventuz.com/download/public/OSC/V1_4_1/Ventuz.OSC.chm>

## Description

A free OSC library for Microsoft.Net with a **full** implementation of the OSC protocol. Extends the protocol to be able to transfer images and Unicode encoded strings as a blob element.new supported OSC-features in V1.2: Address Patterns, TimeStamps, OSC Type 'Infinitum' Changes in V1.4.1: Multiple UdpReader instances can share the same port number (ReuseAddress socket option) when assigning a negative port number. Bugs fixed in V1.4: UDP socket is closed properly now. Large OSC messages across multiple UDP packets could result in an unhandled error - fixed. Changes in V1.3: ability to receive and send of single OSC elements, nested bundles Bugs fixed in V1.2: byte order for MIDI messages, OSC-Symbol now ok <p> **Download Version 1.4.1: [Ventuz.OSC.zip](http://www.ventuz.com/download/public/OSC/V1_4_1/Ventuz.OSC.zip) including CHM documentation.**

## Implementation Details

**Platform(s)**: Windows

**Features**: Packet Parsing, Packet Construction, Bundle Support, Timetag Support, Wildcard Matching Support

**Supported OSC types**: i: int32, b: blob, s: string, f: float32, h: int64, t: timetag, d: float64, S: symbol, c: char, r: RGBA color, m: MIDI message, T: true, F: false, N: null, I: infinitum, []: array

**Bundle support**: Reads Bundles, Creates Bundles, Supports Nested Bundles

**Timetag support**: Generates "immedate" timestamp

**Transport support**: UDP, Bidirectional UDP (via sendto/recvfrom)

---
Submitted to [opensoundcontrol.org](https://opensoundcontrol.org) by Anonymous at 2/24/21 12:32
