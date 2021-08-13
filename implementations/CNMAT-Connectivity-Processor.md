# CNMAT Connectivity Processor

**[status](../implementation-status.html)**: active at different link (as of 12-Mar-21)

**Status details**: 
I believe this is active on this link instead:https://www.cnmat.berkeley.edu/publications/composability-musical-gesture-signal-processing-using-new-osc-based-object-and

**Project Type**: Hardware

**Project URL**: <http://cnmat.berkeley.edu/publication/osc_and_gesture_features_cnmats_connectivity_processor>

**OSC Documentation URL**: <http://cnmat.berkeley.edu/publication/osc_and_gesture_features_cnmats_connectivity_processor>

## Description

Standard laptop computers are now capable of sizeable quantities of sound synthesis and sound processing, but low-latency, high quality, multichannel audio I/O has not been possible without a cumbersome external card cage. CNMAT has developed a solution using the ubiquitous 100BaseT Ethernet that supports up to 10 channels of 24-bit audio, 64 channels of sample-synchronous control-rate gesture data, and 4 precisely time-stamped MIDI I/O streams. Latency measurements show that we can get signals into and back out of Max/MSP in under 7 milliseconds. The central component in the device is a field programmable gate array (FPGA). In addition to providing a variety of computer interface capabilities, the device can function as a cross-coder for a variety of protocols including GMICS. This paper outlines the motivation, design, and implementation of the connectivity processor.

## Implementation Details

**Platform(s)**: Any / Platform Independent

**Features**: Bundle Support, High Speed, Stateless Interface

**Supported OSC types**: i: int32, f: float32

**Bundle support**: Creates Bundles

**Timetag support**: Generates "immedate" timestamp

**Transport support**: UDP

---
Submitted to [opensoundcontrol.org](https://opensoundcontrol.org) by [Legacy](legacy-site.html) at 2/24/21 12:32
