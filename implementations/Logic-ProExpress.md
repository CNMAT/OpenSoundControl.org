# Logic Pro/Express

**[status](../implementation-status.html)**: active at different link (as of 19-Mar-21)

**Status details**: 
the closest thing i can find to a website is the help forum for OSC from apple/logic https://support.apple.com/guide/logicpro/osc-message-paths-ctlsf67f4bdc/mac

**Project Type**: Software Application

**Project URL**: <http://www.apple.com/logicpro/>

## Description

Starting with version 9.1.2 (latest version: 9.1.6), Logic Pro and Logic Express support OSC in their control surface support. Third parties can create plug-ins which communicate with control surface hardware via OSC rather than MIDI. Plug-n-Play installation via Bonjour is supported. Logic already comes with a plug-in for TouchOSC. For further details, please contact Michael Wong (wong1@apple.com).

## Implementation Details

**Platform(s)**: Macintosh

**Features**: Packet Parsing, Packet Construction, Bundle Support

**Supported OSC types**: i: int32, s: string, f: float32, h: int64, d: float64, T: true, F: false

**Bundle support**: Reads Bundles, Creates Bundles

**Transport support**: UDP

---
Submitted to [opensoundcontrol.org](https://opensoundcontrol.org) by Anonymous at 2/24/21 12:32
