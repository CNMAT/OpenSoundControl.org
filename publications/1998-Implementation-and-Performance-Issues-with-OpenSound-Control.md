# Implementation and Performance Issues with OpenSound Control

Matthew Wright. *Implementation and Performance Issues with OpenSound Control*. 1998.  International Computer Music Conference (ICMC). Pages 224-227. 

**URL**: <http://hdl.handle.net/2027/spo.bbp2372.1998.281>

**Download**: [files/1998-OSC-Kit.pdf](../files/1998-OSC-Kit.pdf)

**Abstract**: OpenSound Control (OSC) is a new protocol for high-level, expressive control of sound synthesis and other multimedia applications. It includes time-tagged messages, guaranteed atomicity of messages with the same time tag, and regular expression address patterns that can match multiple messages in a receiving application. We hope OSC becomes a standard, and towards this end have made available at no cost the OpenSound Control Kit, a C or C++ library that adds OSC addressability to an application. This Kit is designed to be added to a sound processing application without degrading reactive real-time performance. This paper accompanies the Kit and provides a high- level overview of the Kit's interfaces to the rest of an application and how performance issues are addressed.

**Context**: This was the second OSC paper, based on the premise that OSC's adoption required an open-source implementation of OSC's features; it embodies Matt's then-somewhat-naive assumptions about what potential OSC users might do and how to help them. The described code (the "OSC Kit") did actually exist and did pass some of its own tests, but as far as we know was *never* incorporated into any real-time sound processing software as designed. Parts of it (such as the byte format parser and the recursive descent pattern matcher) were borrowed for other implementations. Eventually newer and better-focused OSC libraries such as [liblo](../implementations/Liblo.html) and [oscpack](../implementations/oscpack.html) replaced the idea of a need for the OSC Kit.

---
Submitted to [opensoundcontrol.org](https://opensoundcontrol.org) by [Matt Wright](https://ccrma.stanford.edu/~matt) at 4/23/2021 10:16:00
