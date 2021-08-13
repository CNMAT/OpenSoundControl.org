# Open Sound Control for PHP

**[status](../implementation-status.html)**: Unknown (as of 23-Feb-21)

**Status details**: 


**Project Type**: Programming Language Library

**Project URL**: <implementation/open-sound-control-php>

**OSC Documentation URL**: <implementation/open-sound-control-php>

## Description

A small PHP class which can format and send OSC messages. It has no parsing capability, so it can only be used for uni-directional communication (i.e. sending of messages). <p> Changelog: Version 0.2: March 22, 2007. Fixes a bug in timetag encoding for bundles. Version 0.1: 2004 Initial release. <p> (To download save the attached file OSC.phps)

## Implementation Details

**Platform(s)**: Any / Platform Independent

**Features**: Packet Construction, Bundle Support, Timetag Support

**Supported OSC types**: i: int32, b: blob, s: string, f: float32, t: timetag, d: float64, T: true, F: false, N: null, I: infinitum, []: array

**Bundle support**: Creates Bundles, Supports Nested Bundles

**Timetag support**: Generates "immedate" timestamp

**Transport support**: None / Transport Independent

---
Submitted to [opensoundcontrol.org](https://opensoundcontrol.org) by [Legacy](legacy-site.html) at 2/24/21 12:32
