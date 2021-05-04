# cl-osc

**[status](../implementation-status.html)**: active (as of 12-Mar-21)

**Status details**: 
Updates from 2021 on the website.

**Project Type**: Programming Language Library

**Project URL**: <http://www.cliki.net/OSC>

**OSC Documentation URL**: <http://fo.am/darcs/osc/README.txt>

## Description

A common-lisp implementation of the Open Sound Control Protocol, which should be close to ansi standard, and does not rely on any external code/ffi/etc+ to do the basic encoding and decoding of messages and bundles. so far, it seems reasonably compatible with the packets sent to and from max-msp, pd, supercollider and liblo.

## Implementation Details

**Platform(s)**: Any / Platform Independent

**Features**: Packet Parsing, Packet Construction, Bundle Support

**Supported OSC types**: i: int32, b: blob, s: string, f: float32

**Bundle support**: Reads Bundles, Creates Bundles

---
Submitted to [opensoundcontrol.org](https://opensoundcontrol.org) by [Legacy](legacy-site.html) at 2/24/21 12:32
