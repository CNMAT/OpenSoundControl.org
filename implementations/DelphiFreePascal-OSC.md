# Delphi/FreePascal OSC

**[status](../implementation-status.html)**: Unknown (as of 19-Mar-21)

**Status details**: 
legacy from 2014. unclear if still active

**Project Type**: Programming Language Library

**Project URL**: <https://web.archive.org/web/20200707023430/https://github.com/vvvv/DelphiOSCUtils>

**OSC Documentation URL**: <https://web.archive.org/web/20200707023430/https://github.com/vvvv/DelphiOSCUtils/blob/master/OSCUtils.pas>

## Description

LGPLed utility library for Delphi/FreePascal to encode/decode osc-packets. Inspired by the original OSC reference implementation (OSC-Kit) and OSC.Net library as shipped with the TUIO-CSharp sample from [the reactable project](http://reactable.iua.upf.edu/?software) . Easily extendable with more datatypes. <p> Used in [vvvv](implementation/vvvv) .

## Implementation Details

**Platform(s)**: Windows

**Features**: Packet Parsing, Packet Construction, Bundle Support, Timetag Support, Wildcard Matching Support, High Speed

**Supported OSC types**: i: int32, s: string, f: float32

**Bundle support**: Reads Bundles, Creates Bundles, Supports Nested Bundles

**Timetag support**: Generates "immedate" timestamp

**Transport support**: None / Transport Independent

---
Submitted to [opensoundcontrol.org](https://opensoundcontrol.org) by [Legacy](legacy-site.html) at 2/24/21 12:32
