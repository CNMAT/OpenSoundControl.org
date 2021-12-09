# OSCKit

**[status](../implementation-status.html)**: Active / Maintained (as of 22/07/2021)

**Project Type**: Programming Language Library

**Project URL**: <https://github.com/sammysmallman/OSCKit/tree/main>

**OSC Documentation URL**: <https://github.com/sammysmallman/OSCKit/blob/main/README.md>

## Description

The OSCKit Swift framework provides the classes needed for your apps to communicate among computers, sound synthesizers, and other multimedia devices via OSC over an IP network. Use the OSCKit package to create client or server objects. In its simplest form a client can send a packet, either a Message or Bundle to a server. A server, when listening, can receive these packets and action upon them. Depending on a client or server using either UDP or TCP as a transport, there are varying levels of functionality and delegate methods for you to take advantage of. OSCKit implements all required argument types as specified in OSC 1.1. (Despite the near-identical name this has no relationship to the deprecated 1998 [OSC-Kit](OSC-Kit.html).)

## Implementation Details

**Platform(s)**: iOS, macOS, tvOS, watchOS

**Features**: UDP Multicast & Broadcast, TCP, Packet Parsing, Packet Construction, Bundle Support, Timetag Support

**Supported OSC types**: i: int32, b: blob, s: string, f: float32, t: timetag, T: true, F: false, N: null, I: infinitum

**Bundle support**: Reads Bundles, Creates Bundles

**Timetag support**: Generates "immediate" timestamp, Generates timestamp from "Date""

**Transport support**: UDP, TCP

## Images 

<https://github.com/sammysmallman/OSCKit/blob/main/osckit-icon.svg>

---
Submitted to [opensoundcontrol.org](https://opensoundcontrol.org) by [Sam Smallman](https://artificers.co.uk/) at 22/07/2021 08:45
