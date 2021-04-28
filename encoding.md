# OSC is an Encoding

OSC specifies the syntax of messages and their data at the level of
bits and bytes. Knowing that a given sequence of bytes is an [OSC
Packet](spec-1_0.html#osc-packets) allows you to parse those bytes
into groups of [messages](spec-1_0.html#osc-messages) (containing
human-readable address patterns plus
[type-tagged](spec-1_0.html#osc-type-tag-string) binary data) that may
have
[timestamps](https://ccrma.stanford.edu/groups/osc/spec-1_0.html#temporal-semantics-and-osc-time-tags).
hat the messages "mean" or what the receiver "should do with them" is
fully opt-in.

OSC is a [content format](publications/2010-Best-Practices-for-Open-Sound-Control.html).

OSC plus agreed semantics (for a given use case) would together
comprise a [protocol](protocol.html).
