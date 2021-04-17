# Clock Synchronization for Interactive Music Systems

Roger Dannenberg. *Clock Synchronization for Interactive Music Systems*. 2004.  OSC Conference 2004. 

**Download**: [files/dannenberg-clocksync.pdf](../files/dannenberg-clocksync.pdf)

**Abstract**: Timestamped events allow computer networks to avoid some of the problems of network latency. Events are computed and delivered early to compensate for latency. Events are then scheduled using timestamps to compensate for variations in latency. This model assumes significant network latency, yet it relies on accurate local clocks. The problem of clock synchronization is to maintain a shared notion of global time with only local clocks and normal network communication. I will describe the typical drift properties of computer clocks (including digital audio sample clocks) and then describe several clock synchronization systems. While clock synchronization can be a low-level operating system facility, it is not difficult to build an application-layer clock synchronization facility on top of a communication mechanism such as OSC. I will describe how clock synchronization is integrated with audio synthesis and event scheduling in Aura.

**Context**: This was a featured publication on the legacy (pre-2011) opensoundcontrol.org website, ported to the new site by Matt Wright in early 2021

---
Submitted to [opensoundcontrol.org](https://opensoundcontrol.org) by [Legacy](https://web.archive.org) at 03/26/2021 17:03:29
