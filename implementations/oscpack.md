# oscpack

**This implementation has been superseded by another!**
Unknown

**[status](https://ccrma.stanford.edu/~matt/OSC/implementation-status.html)**: Active/Legacy (as of 15-Mar-21)

**Status details**: 
Last update in 2013

**Project Type**: Programming Language Library

**Project URL**: <http://www.audiomulch.com/~rossb/code/oscpack/>

**OSC Documentation URL**: <http://ross.smartelectronix.com/index.cgi/browser/oscpack/trunk/README>

## Description

Oscpack is simply a set of C++ classes for packing and unpacking OSC packets. Oscpack includes a minimal set of UDP networking classes for Windows and POSIX which are sufficient for writing many OSC applications and servers, but you are encouraged to use another networking framework if it better suits your needs. Oscpack is not an OSC application framework, it doesn't include infrastructure for constructing or routing OSC namespaces, just classes for easily constructing, sending, receiving and parsing OSC packets. The library should also be easy to use for other transport methods (eg serial).

## Implementation Details

**Platform(s)**: Windows, Linux, Macintosh

**Features**: Packet Parsing, Packet Construction

**Supported OSC types**: i: int32, s: string, f: float32, T: true, F: false

**Bundle support**: Reads Bundles, Creates Bundles

---
Submitted to [opensoundcontrol.org](https://opensoundcontrol.org) by [Legacy](https://web.archive.org) at 2/24/21 12:32
