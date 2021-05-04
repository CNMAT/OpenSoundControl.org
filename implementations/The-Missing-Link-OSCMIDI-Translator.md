# The Missing Link OSC/MIDI Translator

**[status](../implementation-status.html)**: defunct (as of 15-Mar-21)

**Status details**: 
Snapshot from 2011: https://web.archive.org/web/20120203143655/http://wifimidi.com/

**Project Type**: Hardware

**Project URL**: <http://wifimidi.com/>

**OSC Documentation URL**: <http://wifimidi.com/phpBB3/viewtopic.php?f=4&t=5&p=5#p5>

## Description

The Missing Link OSC/MIDI Translator is a standalone hardware device which contains its own WiFi radio, and translates specially-coded OSC messages sent from your mobile device or computer into standard MIDI messages to control synthesizers, drum machines, mixers, digital audio workstations, or anything which responds to MIDI commands. It does this with low latency, high flexibility and configurability, and without the need for a computer anywhere in the control chain. Multiple wireless OSC devices may connect simultaneously to The Missing Link, making collaboration easy.

## Implementation Details

**Platform(s)**: Any / Platform Independent

**Features**: Bundle Support, High Speed

**Supported OSC types**: i: int32, f: float32

**Bundle support**: Reads Bundles, Supports Nested Bundles

**Transport support**: UDP, Bidirectional UDP (via sendto/recvfrom)

---
Submitted to [opensoundcontrol.org](https://opensoundcontrol.org) by Anonymous at 2/24/21 12:32
