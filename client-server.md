# OpenSoundControl and Client-Server Models

<small>by Matt Wright, March 2021</small>


**tl;dr** Say "OSC sender" and "OSC receiver" instead of "OSC client"
and "OSC server"

The OSC 1.0 spec unfortunately [defines](spec-1_0.html#osc-packets)
the terms "OSC Client" and "OSC Server" in terms of sending and
receiving (respectively) OSC Packets. This somewhat ridiculously
implies that *any* receiver of OSC packets is somehow providing a
"service" simply by accepting OSC packets, no matter what, if
anything, occurs in response.

In reality, the [Client-Server
model](https://en.wikipedia.org/wiki/Client–server_model) may or may
not apply to any particular use(s) of OSC. There may indeed be one or
more actual "services" being accessed somehow via OSC.  Any
designation of "clients" and "servers" should be in terms of a
specific service (e.g., "tempo server", "joystick readings server",
"stage lighting server", etc.), not in terms of OSC communication
itself.  In 2009 Freed and Schmeder
[wrote](https://ccrma.stanford.edu/~matt/OSC/spec-1_1.html) in these
terms: "OSC is specified as a content format: OSC doesn’t specify
service content or behavior, it is just a format for clients and
servers to exchange data in to implement custom service behavior."
Fundamentally, it doesn't matter whether or not there is a service or
servers or clients; OSC is an encoding that can be used to format
messages sent from somewhere to somewhere else, regardless of context.

As of 2021, Adrian Freed and Matt Wright recommend the terminology
"OSC Sender" for anything that sends OSC packets and "OSC Receiver"
for anything that can receive OSC packets. 

The terminology "sources" (senders) and "sinks" (receivers) could
apply to OSC (e.g., by analogy to how these terms can refer to
[electrical
current](https://en.wikipedia.org/wiki/Current_sources_and_sinks)).


