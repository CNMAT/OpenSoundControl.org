# wireshark.osc

**[status](../implementation-status.html)**: Legacy

**Project Type**: network analyser plugin

**Project URL**: <https://github.com/OpenMusicKontrollers/wireshark.osc>

**OSC Documentation URL**: <https://www.wireshark.org/docs/dfref/o/osc.html>

## Description

The plugin is written as a heuristic dissector, e.g. it will automatically recognize valid OSC packets on any non-assigned UDP and TCP port and bind future communication to the OSC protocol for the remaining session. (quoted from github page)

## Implementation Details

**Platform(s)**: Linux, Macintosh, Windows

**Features**: Bundle Support, Packet Parsing

**Supported OSC types**: b: blob, c: char, d: float64, f: float32, F: false, h: int64, i: int32, I: infinitum, m: MIDI message, N: null, r: RGBA color, s: string, S: symbol, t: timetag, T: true

**Bundle support**: Reads Bundles

**Transport support**: UDP, TCP

---
Submitted to [opensoundcontrol.org](https://opensoundcontrol.org) by Karl Yerkes at 5/19/2021 13:21:20
