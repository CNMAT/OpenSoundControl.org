# Use of Open Sound Control in SuperCollider Server

J McCartney. *Use of Open Sound Control in SuperCollider Server*. 2004.  OSC Conference 2004. 

**Download**: [files/OSC_in_SC_Server.pdf](../files/OSC_in_SC_Server.pdf)

**Abstract**: The SuperCollider audio synthesis environment consists of a synthesis server and a programming language client which communicate via Open Sound Control (OSC). The SuperCollider server was designed to be the simplest possible implementation of a dynamically reconfigurable synthesis engine. The design metaphor was that it would be a virtual machine for audio with OSC commands as the virtual machine instructions. Like a virtual machine, the synthesis engine is divided into a few major functional units (buses, buffers, and execution tree) and the OSC commands operate on these units. Because synthesis nodes can appear and disappear quite rapidly, the usual implementation of an OSC address space where each node in a tree is named was not practical and was not used. Instead the command space is flat and nodes are accessed by number. Some unique features, such as using OSC blobs to embed completion messages for asynchronous operations, will be discussed and some proposals for discussion for new capabilities will be put forth.

**Context**: This was a featured publication on the legacy (pre-2011) opensoundcontrol.org website, ported to the new site by Matt Wright in early 2021

---
Submitted to [opensoundcontrol.org](https://opensoundcontrol.org) by [Legacy](https://web.archive.org) at 03/26/2021 17:03:32
