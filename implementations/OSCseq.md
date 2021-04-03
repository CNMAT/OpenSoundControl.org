# OSCseq

**This implementation has been superseded by another!**
Unknown

**[status](https://ccrma.stanford.edu/~matt/OSC/implementation-status.html)**: Active/Legacy (as of 15-Mar-21)

**Status details**: 
Last update in 2010

**Project Type**: Software Application

**Project URL**: <http://oscseq.com/>

**OSC Documentation URL**: <http://oscseq.com/manual/>

## Description

OSCseq is a basic Open Sound Control sequencer. It's a timeline tool that can record and play back OSC and has basic editing functionality, supports automatic OSC device discovery (Bonjour), has an unrestricted address and argument space and fully supports NTP time tags.

## Implementation Details

**Platform(s)**: Windows, Macintosh

**Features**: Packet Parsing, Packet Construction, Bundle Support, Timetag Support, High Speed

**Supported OSC types**: i: int32, s: string, f: float32, r: RGBA color

**Bundle support**: Reads Bundles, Creates Bundles

**Timetag support**: Generates "immedate" timestamp, Generates timestamped sequenced data, Timestamps are UTC-synchronized, Performs scheduling on received timestamped data

---
Submitted to [opensoundcontrol.org](https://opensoundcontrol.org) by [Legacy](https://web.archive.org) at 2/24/21 12:33
