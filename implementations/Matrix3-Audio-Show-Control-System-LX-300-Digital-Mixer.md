# Matrix3 Audio Show Control System LX-300 Digital Mixer

**This implementation has been superseded by another!**
Yes. Superseded by D-Mitri: https://meyersound.com/product/d-mitri/

**[status](../implementation-status.html)**: Legacy/Superseded (as of 10-Mar-21)

**Status details**: 
This product is no longer made, but MeyerSound has a current product with substantially identical functionality, that still supports OSC.

**Project Type**: Hardware

**Project URL**: <http://www.meyersound.com/lcs/matrix3/>

**OSC Documentation URL**: <http://www.meyersound.com/pdf/products/lcs_series/CmdRef_20070905.pdf>

## Description

Versions 4.3.0 and higher of our LX-ELC firmware support the sending and receiving of OSC packets (over UDP or TCP) to set, get, or subscribe to the state of any control point in our system.

## Implementation Details

**Platform(s)**: Any / Platform Independent

**Features**: Packet Parsing, Packet Construction

**Supported OSC types**: i: int32, s: string, f: float32, h: int64, T: true, F: false

**Transport support**: UDP

---
Submitted to [opensoundcontrol.org](https://opensoundcontrol.org) by Anonymous at 2/24/21 12:32
