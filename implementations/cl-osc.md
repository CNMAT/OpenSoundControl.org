# cl-osc

**[status](../implementation-status.html)**: active (as of 16-Aug-22)

**Project Type**: Programming Language Library

**Project URL**: <https://github.com/zzkt/osc>

**OSC Documentation URL**: <https://github.com/zzkt/osc>

## Description

A common-lisp implementation of the Open Sound Control Protocol, which should be close to ansi standard, and does not rely on any external code/ffi/etc+ to do the basic encoding and decoding of messages and bundles. so far, it seems reasonably compatible with the packets sent to and from max-msp, pd, supercollider and liblo.

## Implementation Details

**Platform(s)**: Any / Platform Independent

**Features**: Packet Parsing, Packet Construction, Bundle Support

**Supported OSC types**: i: int32, b: blob, s: string, f: float32, h: int64

**Bundle support**: Reads Bundles, Creates Bundles

**Transport support**: None / Transport Independent

---
Submitted to [opensoundcontrol.org](https://opensoundcontrol.org) by [nik gaffney](https://github.com/zzkt) at 8/16/22 9:00
