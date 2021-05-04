# OpenSoundControl for MaxMSP

**This implementation has been superseded by another!**
Yes. Superseded by odot: https://github.com/CNMAT/CNMAT-odot

**[status](../implementation-status.html)**: Defunct/Legacy (as of 15-Mar-21)

**Status details**: 


**Project Type**: Programming Language Library

**Project URL**: <http://cnmat.berkeley.edu/downloads>

**OSC Documentation URL**: <http://cnmat.berkeley.edu/patch/4059>

## Description

CNMAT's OpenSoundControl object extends MaxMSP 4.5+ to support OSC bundles. <p> Additionally, the OSC-timetag object deals with timestamp generation, transformations and operations, and the OSC-schedule object handles bundle scheduling from timestamps. <p> OSC-timetag: <http://cnmat.berkeley.edu/downloads> OSC-schedule: <http://cnmat.berkeley.edu/downloads> <p> Additionally, the OSC-route and OSC-unroute utility objects are useful for parsing and constructing address patterns: <p> OSC-route: <http://cnmat.berkeley.edu/patch/4029> OSC-unroute: <http://cnmat.berkeley.edu/patch/4028> <p> Other misc stuff: <p> OSC-alias: <http://cnmat.berkeley.edu/patch/3000> The slipOSC object deals with OSC transport over a serial line with SLIP encoding. <http://cnmat.berkeley.edu/downloads> OSC wrappers for various controllers: <http://cnmat.berkeley.edu/library/max_msp_jitter_depot/modules_building_blocks_mmj_depot/controllers>

## Implementation Details

**Platform(s)**: Windows, Macintosh

**Features**: Packet Parsing, Packet Construction, Bundle Support, Timetag Support, Wildcard Matching Support, High Speed

**Supported OSC types**: i: int32, b: blob, s: string, f: float32, t: timetag, d: float64, T: true, F: false, N: null, I: infinitum

**Bundle support**: Reads Bundles, Creates Bundles

**Timetag support**: Generates "immedate" timestamp, Generates timestamped sequenced data, Timestamps are UTC-synchronized, Performs scheduling on received timestamped data

**Transport support**: UDP, Serial-SLIP

---
Submitted to [opensoundcontrol.org](https://opensoundcontrol.org) by Anonymous at 2/24/21 12:32
