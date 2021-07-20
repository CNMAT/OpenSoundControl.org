# OSCKit

**[status](../implementation-status.html)**: Active (as of 20-Jul-21)

**Status details**: Actively maintained by Sam Smallman

**Project Type**: Programming Language Library

**Project URL**: <https://github.com/sammysmallman/OSCKit>

**OSC Documentation URL**: <https://github.com/sammysmallman/OSCKit#readme>

## Description

The OSCKit package provides the classes needed for your apps to communicate among computers, sound synthesizers, and other multimedia devices via OSC over an IP network.

Use the OSCKit package to create client or server objects. In its simplest form a client can send a packet, either a Message or Bundle to a server. A server, when listening, can receive these packets and action upon them. Depending on a client or server using either UDP or TCP as a transport, there are varying levels of functionality and delegate methods for you to take advantage of.

OSCKit implements all required argument types as specified in OSC 1.1.

## Implementation Details

**Platform(s)**: iOS, macOS, tvOS, watchOS

**Features**: UDP Multicast & Broadcast, TCP, Packet Parsing, Packet Construction, Bundle Support, Timetag Support

**Supported OSC types**: i: int32, b: blob, s: string, f: float32, t: timetag, T: true, F: false, N: null, I: infinitum

**Bundle support**: Reads Bundles, Creates Bundles

**Transport support**: UDP, TCP

---
Submitted to [opensoundcontrol.org](https://opensoundcontrol.org) by Sam Smallman at 20/07/21 16:00