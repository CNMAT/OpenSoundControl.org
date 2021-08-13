# q3osc

**[status](../implementation-status.html)**: Defunct (as of 15-Mar-21)

**Status details**: 
This is a CCRMA project but its site died in 2014 https://web.archive.org/web/20140209134709/http://www.q3osc.org/

**Project Type**: Software Application

**Project URL**: <http://www.q3osc.org/>

**OSC Documentation URL**: <http://cm-wiki.stanford.edu/wiki/Q3osc>

## Description

q3osc is a heavily modified version of the ioquake3 gaming engine featuring an integrated oscpack implementation of Open Sound Control for bi-directional communication between a game server and a multi-channel ChucK audio server. By leveraging ioquake3√É¬¢√¢‚Äö¬¨√¢‚Äû¬¢s robust physics engine and multiplayer network code with oscpack√É¬¢√¢‚Äö¬¨√¢‚Äû¬¢s fully-featured OSC specification, game clients and previously unintelligent in-game weapon projectiles can be repurposed as behavior-driven independent OSC-emitting virtual sound-sources spatialized within a multi-channel audio environment for real-time networked performance.

## Implementation Details

**Platform(s)**: Linux, Macintosh

**Features**: Packet Parsing, Packet Construction, Bundle Support

**Supported OSC types**: i: int32, s: string, f: float32

**Bundle support**: Reads Bundles, Creates Bundles

**Transport support**: Bidirectional UDP (via sendto/recvfrom)

---
Submitted to [opensoundcontrol.org](https://opensoundcontrol.org) by [Legacy](legacy-site.html) at 2/24/21 12:33
