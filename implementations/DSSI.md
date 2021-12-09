# DSSI ("Disposable Soft Synth Interface")

**[status](../implementation-status.html)**: Unknown (as of 19-Mar-21)

**Status details**: 
website works, unclear on year-the screenshots on one of the tabs look like much older version of windows

**Project Type**: Programming Language Library

**Project URL**: <http://dssi.sourceforge.net/>

**OSC Documentation URL**: <http://dssi.sourceforge.net/RFC.html>

## Description

DSSI (pronounced "dizzy") is an API for audio processing plugins, particularly useful for software synthesis plugins with user interfaces. <p> DSSI is an open and well-documented specification developed for use in Linux audio applications, although portable to other platforms. It may be thought of as LADSPA-for-instruments, or something comparable to VSTi. <p> DSSI consists of a C language API for use by plugins and hosts, based on the LADSPA API, and an OSC (Open Sound Control) API for use in user interface to host communications. The DSSI specification consists of an RFC which describes the background for the proposal and defines the OSC part of the specification, and a documented header file which defines the C API. <p> DSSI is Free Software. The DSSI header file is provided under the GNU Lesser General Public License.

## Implementation Details

**Platform(s)**: Any / Platform Independent

**Features**: Packet Parsing, Packet Construction, High Speed

**Supported OSC types**: i: int32, s: string, f: float32, m: MIDI message

**Transport support**: Bidirectional UDP (via sendto/recvfrom)

---
Submitted to [opensoundcontrol.org](https://opensoundcontrol.org) by [Legacy](legacy-site.html) at 2/24/21 12:32
