# Rosco

**[status](../implementation-status.html)**: Defunct (as of 11-Mar-21)

**Status details**: 
Last archive.org snapshot: https://web.archive.org/web/20131123095621/http://www.sc-fa.com/blog/rosco/

**Project Type**: Software Application

**Project URL**: <http://www.sc-fa.com/blog/rosco/>

## Description

Rosco is an app that connects to an arduino over USB serial to convert analog and digital signals into OSC messages. It employs an internal quartz composer patch and broadcasts locally to an external patch or to any other OSC client. It features 6 analog and 12 digital signals. It also features a 8 x 16 button matrix that is currently only broadcasts from the app and does not have a hardware equivalent.

## Implementation Details

**Platform(s)**: Macintosh

**Features**: Packet Construction

**Supported OSC types**: i: int32, b: blob, s: string, f: float32

**Transport support**: UDP

---
Submitted to [opensoundcontrol.org](https://opensoundcontrol.org) by [Legacy](legacy-site.html) at 2/24/21 12:33
