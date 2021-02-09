::: {.content}
CNMAT\'s open-source [library for constructing OSC
packets](http://www.cnmat.berkeley.edu/OpenSoundControl/src/libOSC/) :
This is all you need if you want your application to be able to format
OSC packets for sending over the network.

CNMAT\'s sendOSC and dumpOSC programs: The Unix program
[sendOSC](http://www.cnmat.berkeley.edu/OpenSoundControl/clients/sendOSC.html)
allows the user to type in message addresses and arguments via a
no-frills text interface, and formats and sends these messages to the
desired IP address and port number. The Unix program
[dumpOSC](http://www.cnmat.berkeley.edu/OpenSoundControl/dumpOSC.html)
listens for OpenSoundControl messages on the given port and prints them
out in a simple ASCII format. It\'s a very useful tool for client
debugging. [Source
code](http://www.cnmat.berkeley.edu/OpenSoundControl/src) is available
for these programs. They\'re also available as [compiled binaries for
OSX](http://www.cnmat.berkeley.edu/OpenSoundControl/send%2BdumpOSC-OSX.tar.gz)
.

The [OpenSound Control
Kit](http://www.cnmat.berkeley.edu/OpenSoundControl/Kit) : consists of
an open-source library, API, documentation, and other goodies that
implement most of the features of OSC and make it fairly easy for
developers to add OSC support to their applications. This Kit was first
described in a [paper we presented at ICMC
98](http://www.cnmat.berkeley.edu/ICMC98/papers-pdf/OSC.pdf) . Here are
the relevant sections from that paper:

### 2. Introduction to the OpenSound Control Kit

The OSC Kit ( <http://www.cnmat.berkeley.edu/OpenSoundControl/Kit>
`     )    ` implements as many of the features of an OSC-addressable
application as possible. (We have also made available a library that
constructs OSC via a procedural interface that hides the OSC byte
format.) The following issues are handled internally and need not
concern users of the Kit: byte format of OSC, time tags and scheduling
of messages in the future, atomicity of messages with the same time tag,
pattern matching, memory management of OSC objects, and automatic
answering of certain queries.

The Kit is available as both C and C++ libraries. The APIs use an
object-oriented style with opaque objects; the C version represents
objects as pointers to structs. All communication between the Kit and
the rest of the application is via arguments and return values; the
interface does not use global variables.

### 3. Interface to OSC-addressable features

OSC is a tool that is useful only insofar as there are interesting
features that can be controlled by it. Therefore, the Kit\'s API for
making features controllable via OSC is designed to be as
straightforward and convenient as possible. This paper will use the term
\"user\" to refer to the OSC client, presumably a musician, who controls
some feature via OSC, and \"implementor\" to refer to the programmer who
implements that feature and makes it OSC-addressable.

The hierarchical OSC address space is modeled as an object-oriented tree
of *containers* , each of which contains subcontainers (for tree
structure) and *methods* , which can implement the actions that OSC
messages call for, e.g., updating the value of a parameter. A
container\'s methods and subcontainers share a single namespace. The
root of this tree, corresponding to the address \"/,\" is returned by
the procedure that initializes the address space. All operations on this
tree, including adding or removing a container or method, are O(1) and
can be performed dynamically with no risk of compromising reactive
real-time performance.

Each method contains a *callback procedure,* written by the implementor,
which the Kit will invoke at the time that the OSC message is to take
effect. The arguments to a callback procedure are:

-   `           void *context         ` - Supplied by the implementor
    when the method was added to the address space
-   `           int arglen         ` - Number of bytes of argument data
    that was sent by the user
-   `           void *const args         ` - The argument data itself
-   `           OSCTimeTag when         ` --- The time tag used to
    schedule this message
-   `           NetworkReturnAddressPtr returnAddr         ` - An opaque
    object that can be used to send an OSC message back to the user.

For maximum efficiency, the Kit never copies argument data in memory.
The `    args   ` pointer points to data in the buffer where the packet
was received. It is the implementor\'s job to interpret this data
according to the argument types expected by this method. Most methods
take a single number or a list of numbers of the same type (e.g., 3
floats) as arguments, so their callback procedures simply cast
`    args   ` to the appropriate pointer type and treat it as an array.
The Kit provides helper procedures for dealing with OSC-style (4-byte
aligned) ASCII strings, including one that turns `    args   ` and
`    arglen   ` into an array of `    char *   ` pointers. Callback
procedures typically copy their argument data into wherever they keep
the state of the application, or compute new values based on the
arguments to the callback. They should not store any pointer derived
from the `    args   ` pointer, because eventually the buffer holding
the packet will be reused.

When a single address pattern expands into multiple method addresses in
the hierarchy, each of their callback procedures is called with the same
`    args   ` and `    arglen   ` arguments. The `    context   `
pointer allows for an object-oriented style that can handle polyphony
and other \"multiple instances of the same functionality with different
state\" features by registering the same callback procedure with
multiple `    context   ` s.

The OSC Kit automatically detects the standard OSC queries and generates
a response. The raw data needed as the answer to queries like \"what are
the argument types for this message\" or \"give me the documentation for
this feature\" are provided by the implementor when registering
containers and methods.

### 4. Interfaces for Adding OSC to a Real-Time System

There are many ways that the OSC Kit needs to tie into the rest of a
reactive realtime system. It must interact with the network services to
send and receive packets. It interacts with the scheduler and control
flow of the overall real-time system to ensure that the Kit has enough
time to process incoming messages but that it defers processing of
messages scheduled to occur in the future until the system has some
otherwise idle time. Finally, the Kit needs memory to store the address
space hierarchy and to receive and process incoming messages; this
memory must be available dynamically in real-time, but the Kit does not
assume that the real-time system will necessarily have a real-time
memory allocator.

All of these interfaces were designed with the following goals:

-   Minimal assumptions about what the rest of the system will look like
-   Maximum real-time performance
-   Simplicity and ease of use
-   Maximum flexibility to change underlying implementations in the
    future (e.g., for performance optimization) without breaking code
    written to the API

#### 4.1 Interface to low-level networking code

Network services are usually provided by the operating system via an
API. These APIs generally expect to be given a buffer of memory in which
to place incoming data from the network. So the OSC Kit manages a pool
of PacketBuffer objects that consist mainly of a large buffer for this
purpose. (They also store an implementation-dependent network return
address.) The Kit never copies OSC data in memory; OSC data is parsed in
the PacketBuffer, and eventually a number of callback procedures are
invoked with `    args   ` values that point into the PacketBuffer.
Because an OSC packet may contain time-tagged messages to take effect in
the future, these PacketBuffers cannot be reused until the last message
in the packet takes effect.

#### 4.2 Control Flow/Scheduling Model

The Kit does not include its own scheduler; we assume that the design
and implementation of the main part of the sound processing application
will determine the overall flow of control. The OSC Kit does its work
when the main part of the application calls procedures in the Kit\'s
scheduling API. Low-latency digital sound processing requires a
scheduling model in which code to compute output samples is run
frequently, leaving many short periods of time for the processor to do
other things like process OSC input. Therefore, the Kit\'s scheduling
API is based on the assumption that its procedures will be called often
and that they should do a small amount of work and return quickly.

Here is a gross approximation of the inner loop of an OSC-addressable
sound synthesizer:

      while (1) {
        OSCTimeTag now = GetCurrentTime();
        while (WeHaveEnoughTimeToInvokeMessages()) {
            if (!OSCInvokeMessagesThatAreReady(now)) break;
        }
        SynthesizeSomeSound();
        while (NetworkPacketWaiting()) {
            OSCPacketBuffer p = OSCAllocPacketBuffer();
            if (!p) {
                Bummer();
            } else {
                NetworkReceivePacket(p);
                OSCAcceptPacket(p);
            }
        }
        while (TimeLeftBeforeWeHaveDoSomething()) {
            if (!OSCBeProductiveWhileWaiting()) break;
        }
    }
     

`    OSCAcceptPacket   ` \"accepts\" a newly received packet. When a
time tag indicates a message that needs to happen immediately (or should
already have happened), it has no choice but to process it immediately:
parse, pattern-match the address pattern against the addresses in the
current hierarchy, and invoke the necessary callback procedures. When a
bundle\'s time tag indicates a time still in the future, there is time
between receipt of the bundle and when it must be executed. In this
case, `    OSCAcceptPacket   ` defers all work, inserting the bundle
into the priority queue of messages to be invoked in the future. This
queue uses a standard heap data structure \[Bentley 86\] with O(log(n))
insertion and deletion, but it is easy for the implementor to create a
custom queue, e.g., to take advantage of knowing that the main scheduler
always operates on fixed-size time blocks \[Dannenberg 89\].

`    OSCBeProductiveWhileWaiting   ` performs a small amount of
\"background\" processing on messages in the queue. The idea is to
invoke this procedure when the processor would otherwise be idle. (In a
thread-based system, a low-priority thread would continuously call this
procedure.) This procedure\'s return value indicates whether there is
more work to do, so it can be called as many times as possible during
these idle times.

`    OSCInvokeMessagesThatAreReady   ` takes the current time as an
argument, and invokes the callbacks whose time has arrived. (This is the
Kit\'s only interface to the part of the system that knows what time it
is.) This should be called frequently to ensure low control latency.
Atomicity is guaranteed by this procedure, because it invokes all of the
callbacks with a particular time tag before returning. (In a
thread-based system, the thread invoking the callbacks must prevent the
audio-generating thread from running until
`    OSCInvokeMessagesThatAreReady   ` returns.)

We have integrated the OSC Kit into a real-time system running under
IRIX and based upon the `    select()   ` system call. An example
application using this arrangement is available for download. We have
also designed a thread-based architecture using the Kit, with separate
threads for accepting incoming packets, background processing ,
producing the list of callback procedures that are ready to be invoked ,
and invoking callback procedures. Pseudocode for the thread design is
also available for download.

#### 4.3 Memory Model

The OSC system needs dynamic memory allocation for the address space,
for PacketBuffers, for the priority queue, and for lists of methods that
match address patterns. To avoid the problems associated with real-time
memory management, the OSC Kit preallocates pools of fixed size memory
chunks for each of these objects. A very fast custom memory manager
provides O(1) allocation and freeing via these pools. Users of the Kit
pass arguments to the initialization procedures that say how many of
each kind of object to allocate.

The Kit does not expose implementation details like the contents of
these data structures, so in order for users of the Kit to decide how
many objects to preallocate we provide a procedure that takes the same
arguments as the initialization procedure and returns the number of
bytes of memory that would be allocated.

Initialization procedures also take two function pointers as arguments:
a pointer to the \"initialization-time memory allocator\" and a pointer
to the \"real-time memory allocator.\" Both of these procedures, like
`    malloc()   ` , take a number of bytes as argument and return a
pointer to that much free memory. The Kit invokes the
initialization-time allocator only from the initialization procedure. It
invokes the real-time allocator if any of the preallocated object pools
runs out. If the real-time allocator fails, the Kit has to drop a
message, refuse to add to the address space, or otherwise fail in a
graceful manner. If a system does not have real-time memory allocation,
the real-time allocator can simply be a procedure that always returns 0.
Because the memory allocator used by the kit is an argument rather than
an internal procedure, it is possible to tune the memory system without
recompiling the Kit.

Although much more sophisticated designs would be possible, this system
performs well and allows for the important case of static overall memory
limits. The ability to convert free memory for one kind of object into
needed memory for another kind of object could avoid certain \"not
enough memory\" situations, but managing pools of different-sized
objects would drastically increase the complexity of the memory
allocator.

::: {.book-navigation}
:::
:::
