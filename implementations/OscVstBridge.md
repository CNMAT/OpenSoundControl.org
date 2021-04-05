# OscVstBridge

**[status](../implementation-status.html)**: Legacy?? (as of 15-Mar-21)

**Status details**: 
Site dates from 2009. 

**Project Type**: Software Application

**Project URL**: <http://oscvstbridge.sourceforge.net/>

**OSC Documentation URL**: <http://oscvstbridge.sourceforge.net/>

## Description

A VST plugin that bridges VST data to the Open Sound Control networked domain. The plugin supports OSC scheduling and parameter control. The OscVstBridge can be used as a OSC to MIDI converter as well as a MIDI to OSC converter within a VST host.

## Implementation Details

**Platform(s)**: Any / Platform Independent

**Features**: Packet Parsing, Packet Construction, Bundle Support, Timetag Support, Stateless Interface

**Supported OSC types**: i: int32, b: blob, s: string, f: float32

**Bundle support**: Reads Bundles, Creates Bundles

**Timetag support**: Generates timestamped sequenced data, Timestamps are UTC-synchronized, Performs scheduling on received timestamped data

---
Submitted to [opensoundcontrol.org](https://opensoundcontrol.org) by [Legacy](https://web.archive.org) at 2/24/21 12:33
